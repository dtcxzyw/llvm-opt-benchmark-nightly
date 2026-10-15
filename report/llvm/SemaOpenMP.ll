Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOpenMP?download=true
inline.NumInlined: 65082
inline.NumDeleted: 21278
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5clang10SemaOpenMP20ActOnOpenMPRegionEndENS_12ActionResultIPNS_4StmtELb1EEEN4llvm8ArrayRefIPNS_9OMPClauseEEE:bb.a
  br i1 %.not.i.i.i.i.i244, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i245, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit251

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i245: ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 -6960
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !154 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 28616
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i246 = icmp ugt i32 %i.ce, %i.cg
  br i1 %.not.i.i.i.i246, label %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i247, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit251

_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i247: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i245
  %narrow.i.i.i.i248 = sub nuw i32 %i.ce, %i.cg
  %i.ch = zext i32 %narrow.i.i.i.i248 to i64
  %i.ci = getelementptr inbounds i8, ptr %i.bz, i64 -6968
  %.val5.i.i.i249 = load ptr, ptr %i.ci, align 8, !tbaa !153
  %i.cj = getelementptr [1736 x i8], ptr %.val5.i.i.i249, i64 %i.ch ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -1736
  %.not.i250 = icmp eq ptr %i.ck, null
  br i1 %.not.i250, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit251, label %bb.j

bb.j:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i247
  %i.cl = getelementptr i8, ptr %i.cj, i64 -712
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !249
  br label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit251

_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit251: ; preds = %.thread, %bb.i, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i245, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i247, %bb.j
  %i.cn = phi ptr [ %i.bx, %bb.j ], [ %i.bx, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i247 ], [ %i.bu, %.thread ], [ %i.bx, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i245 ], [ %i.bx, %bb.i ] ; 3 uses
  %i.co = phi ptr [ %i.bw, %bb.j ], [ %i.bw, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i247 ], [ %i.bt, %.thread ], [ %i.bw, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i245 ], [ %i.bw, %bb.i ]
  %i.cp = phi i32 [ %i.bs, %bb.j ], [ %i.bs, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i247 ], [ 105, %.thread ], [ %i.bs, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i245 ], [ %i.bs, %bb.i ]
  %i.cq = phi i32 [ %i.cm, %bb.j ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i247 ], [ 105, %.thread ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i245 ], [ 105, %bb.i ]
  call void @_ZN5clang23getOpenMPCaptureRegionsERN4llvm15SmallVectorImplINS0_3omp9DirectiveEEES3_(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.cq) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.cr, ptr %14, align 8, !tbaa !153
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  store i32 0, ptr %i.cs, align 8, !tbaa !154
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  store i32 4, ptr %i.ct, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.cu, ptr %15, align 8, !tbaa !153
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  store i32 0, ptr %i.cv, align 8, !tbaa !154
  %i.cw = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i32 4, ptr %i.cw, align 4, !tbaa !155
  %.idx = shl nuw nsw i64 %3, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %.not193415 = icmp eq i64 %3, 0                 ; 4 uses
  br i1 %.not193415, label %._crit_edge420, label %.lr.ph419

.lr.ph419:                                        ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit251
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 24
  %.sroa.4367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  br label %bb.k

._crit_edge420:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE9push_backES4_.exit, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit251
  %.0172.lcssa = phi ptr [ null, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit251 ], [ %.1173, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE9push_backES4_.exit ] ; 4 uses
  %.0165.lcssa = phi ptr [ null, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit251 ], [ %.1166, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE9push_backES4_.exit ] ; 8 uses
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !181 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 688
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i32 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 680
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.dd, align 8, !tbaa !153
  %i.de = zext i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i.i, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -6960
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !154 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 28616
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i253 = icmp ugt i32 %i.dh, %i.dj
  call void @llvm.assume(i1 %.not.i.i.i.i.i253)
  %narrow.i.i.i.i.i = sub nuw i32 %i.dh, %i.dj
  %i.dk = zext i32 %narrow.i.i.i.i.i to i64
  %i.dl = getelementptr inbounds i8, ptr %i.df, i64 -6968
  %.val5.i.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !153
  %i.dm = getelementptr [1736 x i8], ptr %.val5.i.i.i.i, i64 %i.dk ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -528
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !153 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dm, i64 -520
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !154 ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %.idx466 = shl nuw nsw i64 %i.dr, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx466
  %.not194422 = icmp eq i32 %i.dq, 0
  br i1 %.not194422, label %._crit_edge426, label %.lr.ph425

bb.k:                                             ; preds = %.lr.ph419, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE9push_backES4_.exit
  %.0165418 = phi ptr [ null, %.lr.ph419 ], [ %.1166, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE9push_backES4_.exit ] ; 4 uses
  %.0172417 = phi ptr [ null, %.lr.ph419 ], [ %.1173, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE9push_backES4_.exit ] ; 4 uses
  %.0177416 = phi ptr [ %2, %.lr.ph419 ], [ %i.iu, %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE9push_backES4_.exit ] ; 2 uses
  %i.dt = load ptr, ptr %.0177416, align 8, !tbaa !1638 ; 11 uses
  %i.du = call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang8SemaBase11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = and i64 %i.dw, 8589934592
  %.not213 = icmp eq i64 %i.dx, 0
  br i1 %.not213, label %bb.l, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread

bb.l:                                             ; preds = %bb.k
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !181 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 688
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i.i254 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i.i.i.i254, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit263, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 680
  %.val2.i.i.i.i.i255 = load ptr, ptr %i.eb, align 8, !tbaa !153
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i255, i64 %i.ec ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !190
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 672
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !152
  %.not.i.i.i.i.i256 = icmp eq ptr %i.ef, %i.eh
  br i1 %.not.i.i.i.i.i256, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i257, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit263

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i257: ; preds = %bb.m
  %i.ei = getelementptr inbounds i8, ptr %i.ed, i64 -6960
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !154 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 28616
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i258 = icmp ugt i32 %i.ej, %i.el
  br i1 %.not.i.i.i.i258, label %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i259, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit263

_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i259: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i257
  %narrow.i.i.i.i260 = sub nuw i32 %i.ej, %i.el
  %i.em = zext i32 %narrow.i.i.i.i260 to i64
  %i.en = getelementptr inbounds i8, ptr %i.ed, i64 -6968
  %.val5.i.i.i261 = load ptr, ptr %i.en, align 8, !tbaa !153
  %i.eo = getelementptr [1736 x i8], ptr %.val5.i.i.i261, i64 %i.em ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 -1736
  %.not.i262 = icmp eq ptr %i.ep, null
  br i1 %.not.i262, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit263, label %bb.n

bb.n:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i259
  %i.eq = getelementptr i8, ptr %i.eo, i64 -712
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !249
  br label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit263

_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit263: ; preds = %bb.l, %bb.m, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i257, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i259, %bb.n
  %i.es = phi i32 [ %i.er, %bb.n ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i259 ], [ 105, %bb.l ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i257 ], [ 105, %bb.m ]
  %i.et = call noundef zeroext i1 @_ZN5clang24isOpenMPTaskingDirectiveEN4llvm3omp9DirectiveE(i32 noundef %i.es) #36
  br i1 %i.et, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit263
  %i.eu = load ptr, ptr %i.f, align 8, !tbaa !181 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 688
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i.i264 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i.i.i.i.i264, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 680
  %.val2.i.i.i.i.i265 = load ptr, ptr %i.ex, align 8, !tbaa !153
  %i.ey = zext i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i265, i64 %i.ey ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !190
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 672
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !152
  %.not.i.i.i.i.i266 = icmp eq ptr %i.fb, %i.fd
  br i1 %.not.i.i.i.i.i266, label %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i267, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread

_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i267: ; preds = %bb.p
  %i.fe = getelementptr inbounds i8, ptr %i.ez, i64 -6960
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !154 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 28616
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i268 = icmp ugt i32 %i.ff, %i.fh
  br i1 %.not.i.i.i.i268, label %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i269, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread

_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i269: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i267
  %narrow.i.i.i.i270 = sub nuw i32 %i.ff, %i.fh
  %i.fi = zext i32 %narrow.i.i.i.i270 to i64
  %i.fj = getelementptr inbounds i8, ptr %i.ez, i64 -6968
  %.val5.i.i.i271 = load ptr, ptr %i.fj, align 8, !tbaa !153
  %i.fk = getelementptr [1736 x i8], ptr %.val5.i.i.i271, i64 %i.fi ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 -1736
  %.not.i272 = icmp eq ptr %i.fl, null
  br i1 %.not.i272, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273

_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273: ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i269
  %i.fm = getelementptr i8, ptr %i.fk, i64 -712
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !249
  %i.fo = icmp eq i32 %i.fn, 69
  br i1 %i.fo, label %bb.q, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread

bb.q:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit263
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !1640
  %i.fr = icmp eq i32 %i.fq, 55
  br i1 %i.fr, label %bb.r, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread

bb.r:                                             ; preds = %bb.q
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !1794 ; 2 uses
  %i.fu = zext i32 %i.ft to i64                   ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %.idx465.a = shl nuw nsw i64 %i.fu, 3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx465.a
  %25 = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fu
  %26 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %i.fu
  %27 = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %i.fu
  %28 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %28, i64 %i.fu
  %.not214411 = icmp eq i32 %i.ft, 0
  br i1 %.not214411, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %.0178412 = phi ptr [ %i.ga, %bb.t ], [ %28, %bb.r ] ; 2 uses
  %i.fy = load ptr, ptr %.0178412, align 8, !tbaa !1046 ; 2 uses
  %.not215 = icmp eq ptr %i.fy, null
  br i1 %.not215, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.fz = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  call void @_ZN5clang4Sema32MarkDeclarationsReferencedInExprEPNS_4ExprEbN4llvm8ArrayRefIPKS1_EE(ptr noundef nonnull align 8 dereferenceable(18640) %i.fz, ptr noundef nonnull %i.fy, i1 noundef zeroext false, ptr null, i64 0) #36
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph
  %i.ga = getelementptr inbounds nuw i8, ptr %.0178412, i64 8 ; 2 uses
  %.not214 = icmp eq ptr %i.ga, %i.fx
  br i1 %.not214, label %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread, label %.lr.ph

_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread: ; preds = %bb.t, %bb.r, %bb.p, %_ZNK12_GLOBAL__N_110DSAStackTy12isStackEmptyEv.exit.i.i.i.i267, %bb.o, %_ZNK12_GLOBAL__N_110DSAStackTy19getTopOfStackOrNullEv.exit.i269, %bb.q, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273, %bb.k
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !1640
  %i.gd = call noundef zeroext i1 @_ZN5clang15isOpenMPPrivateEN4llvm3omp6ClauseE(i32 noundef %i.gc) #36
  %.pre = load i32, ptr %i.gb, align 4, !tbaa !1640 ; 2 uses
  br i1 %i.gd, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread
  %i.ge = icmp eq i32 %.pre, 21
  br i1 %i.ge, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gf = call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang8SemaBase11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = and i64 %i.gh, 17179869184
  %.not216 = icmp eq i64 %i.gi, 0
  br i1 %.not216, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gj = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 17712
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !1414
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 274
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !1442, !range !258, !noundef !116
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.gp = load i32, ptr %i.gb, align 4, !tbaa !1640
  %i.gq = icmp eq i32 %i.gp, 22
  br i1 %i.gq, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x, %bb.u, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread
  %i.gr = phi i32 [ 22, %bb.x ], [ 21, %bb.u ], [ %.pre, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit273.thread ]
  %i.gs = load ptr, ptr %i.f, align 8, !tbaa !181
  %i.gt = icmp eq i32 %i.gr, 22
  %i.gu = zext i1 %i.gt to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 28584
  store i8 %i.gu, ptr %i.gv, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  call void @_ZN5clang9OMPClause8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.1348") align 8 %16, ptr noundef nonnull align 4 dereferenceable(12) %i.dt) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(48) %16, i64 24, i1 false)
  %.sroa.0366.0.copyload = load ptr, ptr %i.cy, align 8 ; 2 uses
  %.sroa.4367.0.copyload = load i64, ptr %.sroa.4367.0..sroa_idx, align 8 ; 2 uses
  %i.gw = load ptr, ptr %17, align 8, !tbaa !196  ; 2 uses
  %i.gx = icmp ne ptr %i.gw, %.sroa.0366.0.copyload
  %i.gy = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.gz = icmp ne i64 %i.gy, %.sroa.4367.0.copyload
  %.not3.i413 = select i1 %i.gx, i1 true, i1 %i.gz
  br i1 %.not3.i413, label %.lr.ph414, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  %i.ha = load ptr, ptr %i.f, align 8, !tbaa !181
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 28584
  store i8 0, ptr %i.hb, align 8, !tbaa !158
  br label %bb.ao

.lr.ph414:                                        ; preds = %bb.y, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.hc = phi i64 [ %i.hr, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.gy, %bb.y ]
  %i.hd = phi ptr [ %i.hp, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.gw, %bb.y ]
  %i.he = and i64 %i.hc, 3
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph414
  %i.hg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #36
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph414, %bb.z
  %i.hh = phi ptr [ %i.hg, %bb.z ], [ %i.hd, %.lr.ph414 ]
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !1724 ; 2 uses
  %.not221 = icmp eq ptr %i.hi, null
  br i1 %.not221, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.hj = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  call void @_ZN5clang4Sema32MarkDeclarationsReferencedInExprEPNS_4ExprEbN4llvm8ArrayRefIPKS1_EE(ptr noundef nonnull align 8 dereferenceable(18640) %i.hj, ptr noundef nonnull %i.hi, i1 noundef zeroext false, ptr null, i64 0) #36
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.hk = load i64, ptr %i.cz, align 8, !tbaa !1796 ; 2 uses
  %i.hl = and i64 %i.hk, 3
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hn = load ptr, ptr %17, align 8, !tbaa !196
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr %i.ho, ptr %17, align 8, !tbaa !196
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.ad:                                            ; preds = %bb.ab
  %.not.i276 = icmp ult i64 %i.hk, 4
  br i1 %.not.i276, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #36
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.af:                                            ; preds = %bb.ad
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %17, i1 noundef zeroext true) #36
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit: ; preds = %bb.ac, %bb.ae, %bb.af
  %i.hp = load ptr, ptr %17, align 8, !tbaa !196  ; 2 uses
  %i.hq = icmp ne ptr %i.hp, %.sroa.0366.0.copyload
  %i.hr = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.hs = icmp ne i64 %i.hr, %.sroa.4367.0.copyload
  %.not3.i = select i1 %i.hq, i1 true, i1 %i.hs
  br i1 %.not3.i, label %.lr.ph414, label %._crit_edge

bb.ag:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.ht = load i32, ptr %i.cn, align 8, !tbaa !154 ; 2 uses
  %i.hu = icmp ugt i32 %i.ht, 1
  br i1 %i.hu, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hv = zext nneg i32 %i.ht to i64
  %i.hw = load ptr, ptr %13, align 8, !tbaa !153
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !279
  %.not217 = icmp eq i32 %i.hz, 105
  br i1 %.not217, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ia = call noundef ptr @_ZN5clang20OMPClauseWithPreInit3getEPNS_9OMPClauseE(ptr noundef nonnull %i.dt) #36 ; 3 uses
  %.not218 = icmp eq ptr %i.ia, null
  br i1 %.not218, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang20OMPClauseWithPreInitELb1EE9push_backES4_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ib = load i32, ptr %i.cv, align 8, !tbaa !154 ; 2 uses
  %i.ic = load i32, ptr %i.cw, align 4, !tbaa !155
  %.not.i277 = icmp ult i32 %i.ib, %i.ic
  br i1 %.not.i277, label %bb.al, label %bb.ak, !prof !271

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang20OMPClauseWithPreInitELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.ia)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang20OMPClauseWithPreInitELb1EE9push_backES4_.exit

bb.al:                                            ; preds = %bb.aj
  %i.id = zext i32 %i.ib to i64
  %i.ie = load ptr, ptr %15, align 8, !tbaa !153
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.id
  store ptr %i.ia, ptr %i.if, align 1
  %i.ig = load i32, ptr %i.cv, align 8, !tbaa !154
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.cv, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang20OMPClauseWithPreInitELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKN5clang20OMPClauseWithPreInitELb1EE9push_backES4_.exit: ; preds = %bb.al, %bb.ak, %bb.ai
  %i.ii = call noundef ptr @_ZN5clang23OMPClauseWithPostUpdate3getEPNS_9OMPClauseE(ptr noundef nonnull %i.dt) #36 ; 2 uses
  %.not219 = icmp eq ptr %i.ii, null
  br i1 %.not219, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang20OMPClauseWithPreInitELb1EE9push_backES4_.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !3904 ; 2 uses
  %.not220 = icmp eq ptr %i.ik, null
  br i1 %.not220, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.il = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  call void @_ZN5clang4Sema32MarkDeclarationsReferencedInExprEPNS_4ExprEbN4llvm8ArrayRefIPKS1_EE(ptr noundef nonnull align 8 dereferenceable(18640) %i.il, ptr noundef nonnull %i.ik, i1 noundef zeroext false, ptr null, i64 0) #36
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang20OMPClauseWithPreInitELb1EE9push_backES4_.exit, %bb.an, %bb.am, %bb.ah, %._crit_edge
  %i.im = load i32, ptr %i.gb, align 4, !tbaa !1640
  switch i32 %i.im, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE9push_backES4_.exit.fold.split402 [
    i32 109, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE9push_backES4_.exit
    i32 94, label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE9push_backES4_.exit.fold.split
    i32 67, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.in = load i32, ptr %i.cs, align 8, !tbaa !154 ; 2 uses
  %i.io = load i32, ptr %i.ct, align 4, !tbaa !155
  %.not.i278 = icmp ult i32 %i.in, %i.io
  br i1 %.not.i278, label %bb.ar, label %bb.aq, !prof !271

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang15OMPLinearClauseELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull %i.dt)
end_hunk_0
begin_hunk_1_@_ZN5clang10SemaOpenMP20ActOnOpenMPRegionEndENS_12ActionResultIPNS_4StmtELb1EEEN4llvm8ArrayRefIPNS_9OMPClauseEEE:bb.a
  %i.ri = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %23) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.rj = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !1597 ; 3 uses
  %.not.i.i319 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i319, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i320, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !195
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rn = load ptr, ptr %i.rm, align 8
  %i.ro = call noundef ptr %i.rn(ptr noundef nonnull align 8 dereferenceable(168) %i.rk) #36, !inline_history !21
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i320

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i320: ; preds = %bb.cg, %bb.cf
  %i.rp = phi ptr [ %i.ro, %bb.cg ], [ null, %bb.cf ]
  store ptr %i.rp, ptr %5, align 8, !tbaa !1599
  %i.rq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ri, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.fca.0.extract.i.i321 = extractvalue { ptr, i8 } %i.rq, 0
  %i.rr = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i321, i64 8
  %i.rs = load i32, ptr %i.re, align 8, !tbaa !268
  %i.rt = zext i32 %i.rs to i64
  %i.ru = load ptr, ptr %i.rr, align 8, !tbaa !1602
  %i.rv = getelementptr inbounds nuw [32 x i8], ptr %i.ru, i64 %i.rt
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %i.rw, ptr %i.qy, i64 %i.qz)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %.thread393

.thread393:                                       ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit.i320, %bb.ce, %bb.cd
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %23) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  br label %.loopexit409

bb.ch:                                            ; preds = %bb.bz, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit307, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit297
  br i1 %.2, label %.loopexit409, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rx = load ptr, ptr %13, align 8, !tbaa !153, !noalias !3913 ; 2 uses
  %i.ry = load i32, ptr %i.cn, align 8, !tbaa !154, !noalias !3913 ; 2 uses
  %.not458 = icmp eq i32 %i.ry, 0
  br i1 %.not458, label %.loopexit409, label %.lr.ph463

.lr.ph463:                                        ; preds = %bb.ci
  %i.rz = zext i32 %i.ry to i64
  %.idx468 = shl nuw nsw i64 %i.rz, 2
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 %.idx468
  %i.sb = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph463, %bb.cz
  %.0176461 = phi i32 [ 0, %.lr.ph463 ], [ %i.uq, %bb.cz ]
  %.sroa.0388.0460 = phi i64 [ %1, %.lr.ph463 ], [ %i.vk, %bb.cz ]
  %.sroa.0350.0459 = phi ptr [ %i.sa, %.lr.ph463 ], [ %i.sc, %bb.cz ]
  %i.sc = getelementptr inbounds i8, ptr %.sroa.0350.0459, i64 -4 ; 3 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !279 ; 3 uses
  %cond = icmp eq i32 %i.sd, 105
  br i1 %cond, label %._crit_edge445, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.se = load ptr, ptr %15, align 8, !tbaa !153  ; 2 uses
  %i.sf = load i32, ptr %i.cv, align 8, !tbaa !154 ; 2 uses
  %i.sg = zext i32 %i.sf to i64
  %.idx469 = shl nuw nsw i64 %i.sg, 3
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 %.idx469
  %.not200434 = icmp eq i32 %i.sf, 0
  br i1 %.not200434, label %._crit_edge438, label %.lr.ph437

.lr.ph437:                                        ; preds = %bb.ck, %.loopexit407
  %.0175435 = phi ptr [ %i.tg, %.loopexit407 ], [ %i.se, %bb.ck ] ; 2 uses
  %i.si = load ptr, ptr %.0175435, align 8, !tbaa !3915 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !1805 ; 2 uses
  %i.sl = icmp eq i32 %i.sk, %i.sd
  %i.sm = icmp eq i32 %i.sk, 105
  %or.cond11 = or i1 %i.sl, %i.sm
  br i1 %or.cond11, label %bb.cl, label %.loopexit407

bb.cl:                                            ; preds = %.lr.ph437
  %i.sn = load ptr, ptr %i.si, align 8, !tbaa !1806 ; 3 uses
  %.not211 = icmp eq ptr %i.sn, null
  br i1 %.not211, label %.loopexit407, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !1808 ; 2 uses
  %i.sq = ptrtoint ptr %i.sp to i64               ; 2 uses
  %i.sr = and i64 %i.sq, 1
  %i.ss = icmp eq i64 %i.sr, 0
  br i1 %i.ss, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %.not.i.i.i325 = icmp eq ptr %i.sp, null        ; 2 uses
  %i.st = select i1 %.not.i.i.i325, ptr null, ptr %i.so
  %i.su = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.sv = select i1 %.not.i.i.i325, ptr null, ptr %i.su
  br label %_ZNK5clang8DeclStmt5declsEv.exit

bb.co:                                            ; preds = %bb.cm
  %i.sw = and i64 %i.sq, -2
  %i.sx = inttoptr i64 %i.sw to ptr               ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8 ; 2 uses
  %i.sz = load i32, ptr %i.sx, align 8, !tbaa !1810
  %i.ta = zext i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.ta
  br label %_ZNK5clang8DeclStmt5declsEv.exit

_ZNK5clang8DeclStmt5declsEv.exit:                 ; preds = %bb.cn, %bb.co
  %.0.i.i.i = phi ptr [ %i.st, %bb.cn ], [ %i.sy, %bb.co ] ; 2 uses
  %.0.i.i1.i = phi ptr [ %i.sv, %bb.cn ], [ %i.tb, %bb.co ] ; 2 uses
  %.not212431 = icmp eq ptr %.0.i.i.i, %.0.i.i1.i
  br i1 %.not212431, label %.loopexit407, label %.lr.ph433

.lr.ph433:                                        ; preds = %_ZNK5clang8DeclStmt5declsEv.exit, %.lr.ph433
  %.0174432 = phi ptr [ %i.tf, %.lr.ph433 ], [ %.0.i.i.i, %_ZNK5clang8DeclStmt5declsEv.exit ] ; 2 uses
  %i.tc = load ptr, ptr %.0174432, align 8, !tbaa !1665 ; 2 uses
  %i.td = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 24
  %.sroa.0.0.copyload.i326 = load i32, ptr %i.te, align 8, !tbaa !268
  call void @_ZN5clang4Sema22MarkVariableReferencedENS_14SourceLocationEPNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %i.td, i32 %.sroa.0.0.copyload.i326, ptr noundef %i.tc) #36
  %i.tf = getelementptr inbounds nuw i8, ptr %.0174432, i64 8 ; 2 uses
  %.not212 = icmp eq ptr %i.tf, %.0.i.i1.i
  br i1 %.not212, label %.loopexit407, label %.lr.ph433

.loopexit407:                                     ; preds = %.lr.ph433, %_ZNK5clang8DeclStmt5declsEv.exit, %bb.cl, %.lr.ph437
  %i.tg = getelementptr inbounds nuw i8, ptr %.0175435, i64 8 ; 2 uses
  %.not200 = icmp eq ptr %i.tg, %i.sh
  br i1 %.not200, label %._crit_edge438, label %.lr.ph437

._crit_edge438:                                   ; preds = %.loopexit407, %bb.ck
  switch i32 %i.sd, label %._crit_edge445 [
    i32 69, label %.preheader
    i32 46, label %bb.cs
  ]

.preheader:                                       ; preds = %._crit_edge438
  br i1 %.not193415, label %._crit_edge445, label %.lr.ph444

.lr.ph444:                                        ; preds = %.preheader, %.loopexit406
  %.0171443 = phi ptr [ %i.tq, %.loopexit406 ], [ %2, %.preheader ] ; 2 uses
  %i.th = load ptr, ptr %.0171443, align 8, !tbaa !1638 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !1640
  %i.tk = icmp ne i32 %i.tj, 133
  %.not209403 = icmp eq ptr %i.th, null
  %.not209 = or i1 %.not209403, %i.tk
  br i1 %.not209, label %.loopexit406, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph444
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !1651 ; 2 uses
  %.not472 = icmp eq i32 %i.tm, 0
  br i1 %.not472, label %.loopexit406, label %.lr.ph441

.lr.ph441:                                        ; preds = %bb.cp, %bb.cr
  %.0170439 = phi i32 [ %i.tp, %bb.cr ], [ 0, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36
  call void @_ZNK5clang23OMPUsesAllocatorsClause16getAllocatorDataEj(ptr dead_on_unwind nonnull writable sret(%"struct.clang::OMPUsesAllocatorsClause::Data") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %i.th, i32 noundef %.0170439) #36
  %i.tn = load ptr, ptr %i.sb, align 8, !tbaa !1811 ; 2 uses
  %.not210 = icmp eq ptr %i.tn, null
  br i1 %.not210, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph441
  %i.to = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  call void @_ZN5clang4Sema32MarkDeclarationsReferencedInExprEPNS_4ExprEbN4llvm8ArrayRefIPKS1_EE(ptr noundef nonnull align 8 dereferenceable(18640) %i.to, ptr noundef nonnull %i.tn, i1 noundef zeroext false, ptr null, i64 0) #36
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph441
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36
  %i.tp = add nuw i32 %.0170439, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.tp, %i.tm
  br i1 %exitcond.not, label %.loopexit406, label %.lr.ph441, !llvm.loop !3902

.loopexit406:                                     ; preds = %bb.cr, %bb.cp, %.lr.ph444
  %i.tq = getelementptr inbounds nuw i8, ptr %.0171443, i64 8 ; 2 uses
  %.not201 = icmp eq ptr %i.tq, %i.cx
  br i1 %.not201, label %._crit_edge445, label %.lr.ph444

bb.cs:                                            ; preds = %._crit_edge438
  br i1 %.not193415, label %._crit_edge445, label %.lr.ph457

.lr.ph457:                                        ; preds = %bb.cs, %.critedge
  %.0169455 = phi ptr [ %i.up, %.critedge ], [ %2, %bb.cs ] ; 2 uses
  %i.tr = load ptr, ptr %.0169455, align 8, !tbaa !1638 ; 7 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !1640 ; 2 uses
  %i.tu = icmp ne i32 %i.tt, 102
  %.not203404 = icmp eq ptr %i.tr, null           ; 2 uses
  %.not203 = or i1 %.not203404, %i.tu
  br i1 %.not203, label %.loopexit, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph457
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 48
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !1683
  %.not204 = icmp eq i32 %i.tw, 1
  br i1 %.not204, label %bb.cu, label %.critedge

bb.cu:                                            ; preds = %bb.ct
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !1684 ; 2 uses
  %i.tz = zext i32 %i.ty to i64                   ; 7 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tr, i64 104
  %.idx470.a = shl nuw nsw i64 %i.tz, 3
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 %.idx470.a
  %29 = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %i.tz
  %30 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %i.tz
  %31 = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %i.tz
  %32 = getelementptr inbounds nuw [8 x i8], ptr %31, i64 %i.tz
  %33 = getelementptr inbounds nuw [8 x i8], ptr %32, i64 %i.tz ; 2 uses
  %34 = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %i.tz
  %.not205446 = icmp eq i32 %i.ty, 0
  br i1 %.not205446, label %.critedge, label %.lr.ph449

.lr.ph449:                                        ; preds = %bb.cu, %bb.cw
  %.0168447 = phi ptr [ %i.ue, %bb.cw ], [ %33, %bb.cu ] ; 2 uses
  %i.uc = load ptr, ptr %.0168447, align 8, !tbaa !1046 ; 2 uses
  %.not206 = icmp eq ptr %i.uc, null
  br i1 %.not206, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph449
  %i.ud = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  call void @_ZN5clang4Sema32MarkDeclarationsReferencedInExprEPNS_4ExprEbN4llvm8ArrayRefIPKS1_EE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ud, ptr noundef nonnull %i.uc, i1 noundef zeroext false, ptr null, i64 0) #36
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.lr.ph449
  %i.ue = getelementptr inbounds nuw i8, ptr %.0168447, i64 8 ; 2 uses
  %.not205 = icmp eq ptr %i.ue, %34
  br i1 %.not205, label %.loopexit.loopexit, label %.lr.ph449

.loopexit.loopexit:                               ; preds = %bb.cw
  %.pre474 = load i32, ptr %i.ts, align 8, !tbaa !1640
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph457
  %i.uf = phi i32 [ %.pre474, %.loopexit.loopexit ], [ %i.tt, %.lr.ph457 ]
  %i.ug = icmp ne i32 %i.uf, 6
  %.not207 = or i1 %.not203404, %i.ug
  br i1 %.not207, label %.critedge, label %bb.cx

bb.cx:                                            ; preds = %.loopexit
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !1813 ; 2 uses
  %i.uj = zext i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tr, i64 24 ; 2 uses
  %.idx471 = shl nuw nsw i64 %i.uj, 3
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 %.idx471
  %.not208450 = icmp eq i32 %i.ui, 0
  br i1 %.not208450, label %.critedge, label %.lr.ph453

.lr.ph453:                                        ; preds = %bb.cx, %.lr.ph453
  %.0167451 = phi ptr [ %i.uo, %.lr.ph453 ], [ %i.uk, %bb.cx ] ; 2 uses
  %i.um = load ptr, ptr %.0167451, align 8, !tbaa !1046
  %i.un = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  call void @_ZN5clang4Sema32MarkDeclarationsReferencedInExprEPNS_4ExprEbN4llvm8ArrayRefIPKS1_EE(ptr noundef nonnull align 8 dereferenceable(18640) %i.un, ptr noundef %i.um, i1 noundef zeroext false, ptr null, i64 0) #36
  %i.uo = getelementptr inbounds nuw i8, ptr %.0167451, i64 8 ; 2 uses
  %.not208 = icmp eq ptr %i.uo, %i.ul
  br i1 %.not208, label %.critedge, label %.lr.ph453

.critedge:                                        ; preds = %.lr.ph453, %bb.cu, %bb.cx, %bb.ct, %.loopexit
  %i.up = getelementptr inbounds nuw i8, ptr %.0169455, i64 8 ; 2 uses
  %.not202 = icmp eq ptr %i.up, %i.cx
  br i1 %.not202, label %._crit_edge445, label %.lr.ph457

._crit_edge445:                                   ; preds = %.critedge, %.loopexit406, %bb.cs, %.preheader, %bb.cj, %._crit_edge438
  %i.uq = add nuw i32 %.0176461, 1                ; 2 uses
  %i.ur = load i32, ptr %i.cn, align 8, !tbaa !154
  %i.us = icmp eq i32 %i.ur, %i.uq
  br i1 %i.us, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %._crit_edge445
  %i.ut = load ptr, ptr %i.f, align 8, !tbaa !181 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 688
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i.i333 = icmp ne i32 %i.uv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i333)
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 680
  %.val2.i.i.i.i.i334 = load ptr, ptr %i.uw, align 8, !tbaa !153
  %i.ux = zext i32 %i.uv to i64
  %i.uy = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i334, i64 %i.ux ; 2 uses
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -6960
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !154 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ut, i64 28616
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i336 = icmp ugt i32 %i.va, %i.vc
  call void @llvm.assume(i1 %.not.i.i.i.i336)
  %narrow.i.i.i.i337 = sub nuw i32 %i.va, %i.vc
  %i.vd = zext i32 %narrow.i.i.i.i337 to i64
  %i.ve = getelementptr inbounds i8, ptr %i.uy, i64 -6968
  %.val5.i.i.i338 = load ptr, ptr %i.ve, align 8, !tbaa !153
  %i.vf = getelementptr [1736 x i8], ptr %.val5.i.i.i338, i64 %i.vd
  %i.vg = getelementptr i8, ptr %i.vf, i64 -580
  store i8 1, ptr %i.vg, align 4, !tbaa !307
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge445
  %i.vh = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.vi = and i64 %.sroa.0388.0460, -2
  %i.vj = inttoptr i64 %i.vi to ptr
  %i.vk = call i64 @_ZN5clang4Sema22ActOnCapturedRegionEndEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(18640) %i.vh, ptr noundef %i.vj) #36 ; 2 uses
  %.not = icmp eq ptr %i.sc, %i.rx
  br i1 %.not, label %.loopexit409, label %bb.cj

.loopexit409:                                     ; preds = %bb.cz, %bb.ci, %bb.ch, %.thread393
  %.3395 = phi i1 [ true, %bb.ch ], [ true, %.thread393 ], [ false, %bb.ci ], [ false, %bb.cz ]
  %.sroa.0388.1 = phi i64 [ 1, %bb.ch ], [ 1, %.thread393 ], [ %1, %bb.ci ], [ %i.vk, %bb.cz ] ; 2 uses
  %i.vl = load ptr, ptr %15, align 8, !tbaa !153  ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.cu
  br i1 %i.vm, label %_ZN4llvm11SmallVectorIPKN5clang20OMPClauseWithPreInitELj4EED2Ev.exit, label %bb.da

bb.da:                                            ; preds = %.loopexit409
  call void @free(ptr noundef %i.vl) #36
  br label %_ZN4llvm11SmallVectorIPKN5clang20OMPClauseWithPreInitELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPKN5clang20OMPClauseWithPreInitELj4EED2Ev.exit: ; preds = %.loopexit409, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  %i.vn = load ptr, ptr %14, align 8, !tbaa !153  ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.cr
  br i1 %i.vo, label %_ZN4llvm11SmallVectorIPKN5clang15OMPLinearClauseELj4EED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZN4llvm11SmallVectorIPKN5clang20OMPClauseWithPreInitELj4EED2Ev.exit
  call void @free(ptr noundef %i.vn) #36
  br label %_ZN4llvm11SmallVectorIPKN5clang15OMPLinearClauseELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPKN5clang15OMPLinearClauseELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPKN5clang20OMPClauseWithPreInitELj4EED2Ev.exit, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %i.vp = load ptr, ptr %13, align 8, !tbaa !153  ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.co
  br i1 %i.vq, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZN4llvm11SmallVectorIPKN5clang15OMPLinearClauseELj4EED2Ev.exit
  call void @free(ptr noundef %i.vp) #36
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %_ZN4llvm11SmallVectorIPKN5clang15OMPLinearClauseELj4EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br i1 %.3395, label %.thread397, label %_ZN12_GLOBAL__N_125CaptureRegionUnwinderRAIID2Ev.exit

.thread397:                                       ; preds = %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit241.thread, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit241, %bb.dd
  %.sroa.0388.2401 = phi i64 [ %.sroa.0388.1, %bb.dd ], [ 1, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit241 ], [ 1, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit241.thread ] ; 2 uses
  %i.vr = phi i32 [ %i.cp, %bb.dd ], [ %i.bs, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit241 ], [ 105, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit241.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.vs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.vs, ptr %4, align 8, !tbaa !153
  %i.vt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.vt, align 8, !tbaa !154
  %i.vu = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.vu, align 4, !tbaa !155
  call void @_ZN5clang23getOpenMPCaptureRegionsERN4llvm15SmallVectorImplINS0_3omp9DirectiveEEES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.vr) #36
  %i.vv = load i32, ptr %i.vt, align 8, !tbaa !154 ; 2 uses
  %i.vw = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.vs
  br i1 %i.vx, label %_ZN5clang10SemaOpenMP22getOpenMPCaptureLevelsEN4llvm3omp9DirectiveE.exit.i, label %bb.de

bb.de:                                            ; preds = %.thread397
  call void @free(ptr noundef %i.vw) #36
  br label %_ZN5clang10SemaOpenMP22getOpenMPCaptureLevelsEN4llvm3omp9DirectiveE.exit.i

_ZN5clang10SemaOpenMP22getOpenMPCaptureLevelsEN4llvm3omp9DirectiveE.exit.i: ; preds = %bb.de, %.thread397
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.vy = icmp sgt i32 %i.vv, 0
  br i1 %i.vy, label %.lr.ph.i339, label %_ZN12_GLOBAL__N_125CaptureRegionUnwinderRAIID2Ev.exit

.lr.ph.i339:                                      ; preds = %_ZN5clang10SemaOpenMP22getOpenMPCaptureLevelsEN4llvm3omp9DirectiveE.exit.i, %.lr.ph.i339
  %.02.i = phi i32 [ %i.vz, %.lr.ph.i339 ], [ %i.vv, %_ZN5clang10SemaOpenMP22getOpenMPCaptureLevelsEN4llvm3omp9DirectiveE.exit.i ] ; 2 uses
  %i.vz = add nsw i32 %.02.i, -1
  call void @_ZN5clang4Sema24ActOnCapturedRegionErrorEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.ax) #36
  %i.wa = icmp samesign ugt i32 %.02.i, 1
  br i1 %i.wa, label %.lr.ph.i339, label %_ZN12_GLOBAL__N_125CaptureRegionUnwinderRAIID2Ev.exit, !llvm.loop !3903

_ZN12_GLOBAL__N_125CaptureRegionUnwinderRAIID2Ev.exit: ; preds = %.lr.ph.i339, %_ZN5clang10SemaOpenMP22getOpenMPCaptureLevelsEN4llvm3omp9DirectiveE.exit.i, %bb.dd, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit231
  %.sroa.0388.3 = phi i64 [ %1, %_ZNK12_GLOBAL__N_110DSAStackTy19getCurrentDirectiveEv.exit231 ], [ %.sroa.0388.1, %bb.dd ], [ %.sroa.0388.2401, %_ZN5clang10SemaOpenMP22getOpenMPCaptureLevelsEN4llvm3omp9DirectiveE.exit.i ], [ %.sroa.0388.2401, %.lr.ph.i339 ]
  ret i64 %.sroa.0388.3
}

declare noundef zeroext i1 @_ZN5clang26isOpenMPCapturingDirectiveEN4llvm3omp9DirectiveE(i32 noundef) local_unnamed_addr #4

declare void @_ZN5clang4Sema32MarkDeclarationsReferencedInExprEPNS_4ExprEbN4llvm8ArrayRefIPKS1_EE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i1 noundef zeroext, ptr, i64) local_unnamed_addr #4

declare void @_ZN5clang9OMPClause8childrenEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.1348") align 8, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #4

declare noundef ptr @_ZN5clang20OMPClauseWithPreInit3getEPNS_9OMPClauseE(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN5clang23OMPClauseWithPostUpdate3getEPNS_9OMPClauseE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKcvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr.3101", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1590, !range !258, !noundef !116
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1462
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1606 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPKcvEERKS1_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1607
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !1606
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPKcvEERKS1_OT_.exit

_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPKcvEERKS1_OT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.j, align 8, !tbaa !1619
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 1, ptr %i.o, align 1, !tbaa !196
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !1606 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.p, align 8, !tbaa !1619  ; 2 uses
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 8, !tbaa !1619
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !1042
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
end_hunk_1
begin_hunk_2_@_ZN5clang10SemaOpenMP30ActOnOpenMPExecutableDirectiveEN4llvm3omp9DirectiveERKNS_19DeclarationNameInfoES3_NS1_8ArrayRefIPNS_9OMPClauseEEEPNS_4StmtENS_14SourceLocationESD_:bb.a
.lr.ph.i.i.i:                                     ; preds = %.preheader1125
  %i.acu = zext i32 %i.acg to i64
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %57, align 16, !tbaa !268 ; 2 uses
  br label %bb.el

bb.el:                                            ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i, %.lr.ph.i.i.i
  %.03.i.i.i = phi i64 [ %i.acu, %.lr.ph.i.i.i ], [ %i.adc, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i ]
  %i.acv = load i32, ptr %i.abs, align 8, !tbaa !154 ; 2 uses
  %i.acw = load i32, ptr %i.abt, align 4, !tbaa !155
  %.not.i.i.i.i.i735 = icmp ult i32 %i.acv, %i.acw
  br i1 %.not.i.i.i.i.i735, label %bb.en, label %bb.em, !prof !271

bb.em:                                            ; preds = %bb.el
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %56, i32 %.sroa.0.0.copyload.i.i.i.i)
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i

bb.en:                                            ; preds = %bb.el
  %i.acx = zext i32 %i.acv to i64
  %i.acy = load ptr, ptr %56, align 16, !tbaa !153
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %i.acx
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %i.acz, align 1
  %i.ada = load i32, ptr %i.abs, align 8, !tbaa !154
  %i.adb = add i32 %i.ada, 1
  store i32 %i.adb, ptr %i.abs, align 8, !tbaa !154
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i

_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i: ; preds = %bb.en, %bb.em
  %i.adc = add nsw i64 %.03.i.i.i, -1             ; 2 uses
  %.not.i.i.i736 = icmp eq i64 %i.adc, 0
  br i1 %.not.i.i.i736, label %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit, label %bb.el, !llvm.loop !3926

_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit: ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i, %.preheader1125
  %i.add = load i32, ptr %i.zu, align 8, !tbaa !154 ; 2 uses
  %.not2.i.i.i.1 = icmp eq i32 %i.add, 0
  br i1 %.not2.i.i.i.1, label %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit
  %i.ade = getelementptr inbounds nuw i8, ptr %57, i64 4
  %i.adf = zext i32 %i.add to i64
  %.sroa.0.0.copyload.i.i.i.i.1 = load i32, ptr %i.ade, align 4, !tbaa !268 ; 2 uses
  br label %bb.eo

bb.eo:                                            ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.1, %.lr.ph.i.i.i.1
  %.03.i.i.i.1 = phi i64 [ %i.adf, %.lr.ph.i.i.i.1 ], [ %i.adn, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.1 ]
  %i.adg = load i32, ptr %i.abv, align 8, !tbaa !154 ; 2 uses
  %i.adh = load i32, ptr %i.abw, align 4, !tbaa !155
  %.not.i.i.i.i.i735.1 = icmp ult i32 %i.adg, %i.adh
  br i1 %.not.i.i.i.i.i735.1, label %bb.eq, label %bb.ep, !prof !271

bb.ep:                                            ; preds = %bb.eo
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %.ptr.1, i32 %.sroa.0.0.copyload.i.i.i.i.1)
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.1

bb.eq:                                            ; preds = %bb.eo
  %i.adi = zext i32 %i.adg to i64
  %i.adj = load ptr, ptr %.ptr.1, align 16, !tbaa !153
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %i.adi
  store i32 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.adk, align 1
  %i.adl = load i32, ptr %i.abv, align 8, !tbaa !154
  %i.adm = add i32 %i.adl, 1
  store i32 %i.adm, ptr %i.abv, align 8, !tbaa !154
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.1

_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.1: ; preds = %bb.eq, %bb.ep
  %i.adn = add nsw i64 %.03.i.i.i.1, -1           ; 2 uses
  %.not.i.i.i736.1 = icmp eq i64 %i.adn, 0
  br i1 %.not.i.i.i736.1, label %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.1, label %bb.eo, !llvm.loop !3926

_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.1: ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.1, %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit
  %i.ado = load i32, ptr %i.aah, align 8, !tbaa !154 ; 2 uses
  %.not2.i.i.i.2 = icmp eq i32 %i.ado, 0
  br i1 %.not2.i.i.i.2, label %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.2, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.1
  %i.adp = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.adq = zext i32 %i.ado to i64
  %.sroa.0.0.copyload.i.i.i.i.2 = load i32, ptr %i.adp, align 8, !tbaa !268 ; 2 uses
  br label %bb.er

bb.er:                                            ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.2, %.lr.ph.i.i.i.2
  %.03.i.i.i.2 = phi i64 [ %i.adq, %.lr.ph.i.i.i.2 ], [ %i.ady, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.2 ]
  %i.adr = load i32, ptr %i.aby, align 8, !tbaa !154 ; 2 uses
  %i.ads = load i32, ptr %i.abz, align 4, !tbaa !155
  %.not.i.i.i.i.i735.2 = icmp ult i32 %i.adr, %i.ads
  br i1 %.not.i.i.i.i.i735.2, label %bb.et, label %bb.es, !prof !271

bb.es:                                            ; preds = %bb.er
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %.ptr.2, i32 %.sroa.0.0.copyload.i.i.i.i.2)
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.2

bb.et:                                            ; preds = %bb.er
  %i.adt = zext i32 %i.adr to i64
  %i.adu = load ptr, ptr %.ptr.2, align 16, !tbaa !153
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.adu, i64 %i.adt
  store i32 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.adv, align 1
  %i.adw = load i32, ptr %i.aby, align 8, !tbaa !154
  %i.adx = add i32 %i.adw, 1
  store i32 %i.adx, ptr %i.aby, align 8, !tbaa !154
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.2

_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.2: ; preds = %bb.et, %bb.es
  %i.ady = add nsw i64 %.03.i.i.i.2, -1           ; 2 uses
  %.not.i.i.i736.2 = icmp eq i64 %i.ady, 0
  br i1 %.not.i.i.i736.2, label %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.2, label %bb.er, !llvm.loop !3926

_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.2: ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.2, %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.1
  %i.adz = load i32, ptr %i.aau, align 8, !tbaa !154 ; 2 uses
  %.not2.i.i.i.3 = icmp eq i32 %i.adz, 0
  br i1 %.not2.i.i.i.3, label %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.3, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.2
  %i.aea = getelementptr inbounds nuw i8, ptr %57, i64 12
  %i.aeb = zext i32 %i.adz to i64
  %.sroa.0.0.copyload.i.i.i.i.3 = load i32, ptr %i.aea, align 4, !tbaa !268 ; 2 uses
  br label %bb.eu

bb.eu:                                            ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.3, %.lr.ph.i.i.i.3
  %.03.i.i.i.3 = phi i64 [ %i.aeb, %.lr.ph.i.i.i.3 ], [ %i.aej, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.3 ]
  %i.aec = load i32, ptr %i.acb, align 8, !tbaa !154 ; 2 uses
  %i.aed = load i32, ptr %i.acc, align 4, !tbaa !155
  %.not.i.i.i.i.i735.3 = icmp ult i32 %i.aec, %i.aed
  br i1 %.not.i.i.i.i.i735.3, label %bb.ew, label %bb.ev, !prof !271

bb.ev:                                            ; preds = %bb.eu
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %.ptr.3, i32 %.sroa.0.0.copyload.i.i.i.i.3)
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.3

bb.ew:                                            ; preds = %bb.eu
  %i.aee = zext i32 %i.aec to i64
  %i.aef = load ptr, ptr %.ptr.3, align 16, !tbaa !153
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %i.aee
  store i32 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.aeg, align 1
  %i.aeh = load i32, ptr %i.acb, align 8, !tbaa !154
  %i.aei = add i32 %i.aeh, 1
  store i32 %i.aei, ptr %i.acb, align 8, !tbaa !154
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.3

_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.3: ; preds = %bb.ew, %bb.ev
  %i.aej = add nsw i64 %.03.i.i.i.3, -1           ; 2 uses
  %.not.i.i.i736.3 = icmp eq i64 %i.aej, 0
  br i1 %.not.i.i.i736.3, label %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.3, label %bb.eu, !llvm.loop !3926

_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.3: ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.3, %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.2
  %i.aek = load i32, ptr %i.abh, align 8, !tbaa !154 ; 2 uses
  %.not2.i.i.i.4 = icmp eq i32 %i.aek, 0
  br i1 %.not2.i.i.i.4, label %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.4, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.3
  %i.ael = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.aem = zext i32 %i.aek to i64
  %.sroa.0.0.copyload.i.i.i.i.4 = load i32, ptr %i.ael, align 16, !tbaa !268 ; 2 uses
  br label %bb.ex

bb.ex:                                            ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.4, %.lr.ph.i.i.i.4
  %.03.i.i.i.4 = phi i64 [ %i.aem, %.lr.ph.i.i.i.4 ], [ %i.aeu, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.4 ]
  %i.aen = load i32, ptr %i.ace, align 8, !tbaa !154 ; 2 uses
  %i.aeo = load i32, ptr %i.acf, align 4, !tbaa !155
  %.not.i.i.i.i.i735.4 = icmp ult i32 %i.aen, %i.aeo
  br i1 %.not.i.i.i.i.i735.4, label %bb.ez, label %bb.ey, !prof !271

bb.ey:                                            ; preds = %bb.ex
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %.ptr.4, i32 %.sroa.0.0.copyload.i.i.i.i.4)
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.4

bb.ez:                                            ; preds = %bb.ex
  %i.aep = zext i32 %i.aen to i64
  %i.aeq = load ptr, ptr %.ptr.4, align 16, !tbaa !153
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %i.aep
  store i32 %.sroa.0.0.copyload.i.i.i.i.4, ptr %i.aer, align 1
  %i.aes = load i32, ptr %i.ace, align 8, !tbaa !154
  %i.aet = add i32 %i.aes, 1
  store i32 %i.aet, ptr %i.ace, align 8, !tbaa !154
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.4

_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.4: ; preds = %bb.ez, %bb.ey
  %i.aeu = add nsw i64 %.03.i.i.i.4, -1           ; 2 uses
  %.not.i.i.i736.4 = icmp eq i64 %i.aeu, 0
  br i1 %.not.i.i.i736.4, label %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.4, label %bb.ex, !llvm.loop !3926

_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.4: ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEaSERKS3_.exit.i.i.i.4, %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.3
  br i1 %.not1.i.i.i.i, label %.lr.ph1152, label %._crit_edge1153

._crit_edge1153:                                  ; preds = %.loopexit1123.thread, %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.4
  %i.aev = load i32, ptr %i.vq, align 8, !tbaa !154 ; 2 uses
  %.not.i.i737 = icmp eq i32 %i.aev, 0
  br i1 %.not.i.i737, label %bb.fn, label %bb.fj

.lr.ph1152:                                       ; preds = %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.4, %.loopexit1123.thread
  %.06481151 = phi ptr [ %i.agg, %.loopexit1123.thread ], [ %4, %_ZSt6fill_nISt20back_insert_iteratorIN4llvm11SmallVectorIN5clang14SourceLocationELj7EEEEmS4_ET_S7_T0_RKT1_.exit.4 ] ; 2 uses
  %i.aew = load ptr, ptr %.06481151, align 8, !tbaa !1638 ; 5 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 8 ; 2 uses
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !1640 ; 2 uses
  %i.aez = icmp ne i32 %i.aey, 55
  %.not6841116 = icmp eq ptr %i.aew, null         ; 2 uses
  %.not684 = or i1 %.not6841116, %i.aez
  br i1 %.not684, label %.loopexit1123, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph1152
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !1794 ; 2 uses
  %i.afc = zext i32 %i.afb to i64                 ; 6 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aew, i64 96
  %.idx1201.a = shl nuw nsw i64 %i.afc, 3
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 %.idx1201.a
  %82 = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %i.afc
  %83 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 %i.afc
  %84 = getelementptr inbounds nuw [8 x i8], ptr %83, i64 %i.afc
  %85 = getelementptr inbounds nuw [8 x i8], ptr %84, i64 %i.afc ; 2 uses
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %85, i64 %i.afc
  %.not6851146 = icmp eq i32 %i.afb, 0
  br i1 %.not6851146, label %.loopexit1123.thread, label %.lr.ph1149

.lr.ph1149:                                       ; preds = %bb.fa, %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit
  %.06491147 = phi ptr [ %i.afr, %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit ], [ %85, %bb.fa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  %i.afg = load ptr, ptr %.06491147, align 8, !tbaa !1046 ; 2 uses
  store ptr %i.afg, ptr %i.i, align 8, !tbaa !1046
  %.not687 = icmp eq ptr %i.afg, null
  br i1 %.not687, label %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph1149
  %i.afh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.vc, ptr noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !3964
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.afh, 1
  %i.afi = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.afi, label %bb.fc, label %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit

bb.fc:                                            ; preds = %bb.fb
  %i.afj = load ptr, ptr %i.i, align 8, !tbaa !1046 ; 2 uses
  %i.afk = load i32, ptr %i.vq, align 8, !tbaa !154 ; 2 uses
  %i.afl = load i32, ptr %i.vr, align 4, !tbaa !155
  %.not.i.i739 = icmp ult i32 %i.afk, %i.afl
  br i1 %.not.i.i739, label %bb.fe, label %bb.fd, !prof !271

bb.fd:                                            ; preds = %bb.fc
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.vn, ptr noundef %i.afj)
  br label %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit

bb.fe:                                            ; preds = %bb.fc
  %i.afm = zext i32 %i.afk to i64
  %i.afn = load ptr, ptr %i.vn, align 8, !tbaa !153
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.afn, i64 %i.afm
  store ptr %i.afj, ptr %i.afo, align 1
  %i.afp = load i32, ptr %i.vq, align 8, !tbaa !154
  %i.afq = add i32 %i.afp, 1
  store i32 %i.afq, ptr %i.vq, align 8, !tbaa !154
  br label %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit

_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit: ; preds = %bb.fe, %bb.fd, %bb.fb, %.lr.ph1149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  %i.afr = getelementptr inbounds nuw i8, ptr %.06491147, i64 8 ; 2 uses
  %.not685 = icmp eq ptr %i.afr, %i.aff
  br i1 %.not685, label %.loopexit1123.loopexit, label %.lr.ph1149

.loopexit1123.loopexit:                           ; preds = %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit
  %.pre = load i32, ptr %i.aex, align 4, !tbaa !1640
  br label %.loopexit1123

.loopexit1123:                                    ; preds = %.loopexit1123.loopexit, %.lr.ph1152
  %i.afs = phi i32 [ %.pre, %.loopexit1123.loopexit ], [ %i.aey, %.lr.ph1152 ]
  %i.aft = icmp ne i32 %i.afs, 30
  %.not686 = or i1 %.not6841116, %i.aft
  br i1 %.not686, label %.loopexit1123.thread, label %bb.ff

bb.ff:                                            ; preds = %.loopexit1123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !1843
  store ptr %i.afv, ptr %i.j, align 8, !tbaa !1046
  %i.afw = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.vc, ptr noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !3965
  %.fca.1.extract.i.i.i.i741 = extractvalue { ptr, i8 } %i.afw, 1
  %i.afx = trunc nuw i8 %.fca.1.extract.i.i.i.i741 to i1
  br i1 %i.afx, label %bb.fg, label %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit743

bb.fg:                                            ; preds = %bb.ff
  %i.afy = load ptr, ptr %i.j, align 8, !tbaa !1046 ; 2 uses
  %i.afz = load i32, ptr %i.vq, align 8, !tbaa !154 ; 2 uses
  %i.aga = load i32, ptr %i.vr, align 4, !tbaa !155
  %.not.i.i742 = icmp ult i32 %i.afz, %i.aga
  br i1 %.not.i.i742, label %bb.fi, label %bb.fh, !prof !271

bb.fh:                                            ; preds = %bb.fg
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.vn, ptr noundef %i.afy)
  br label %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit743

bb.fi:                                            ; preds = %bb.fg
  %i.agb = zext i32 %i.afz to i64
  %i.agc = load ptr, ptr %i.vn, align 8, !tbaa !153
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.agc, i64 %i.agb
  store ptr %i.afy, ptr %i.agd, align 1
  %i.age = load i32, ptr %i.vq, align 8, !tbaa !154
  %i.agf = add i32 %i.age, 1
  store i32 %i.agf, ptr %i.vq, align 8, !tbaa !154
  br label %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit743

_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit743: ; preds = %bb.ff, %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  br label %.loopexit1123.thread

.loopexit1123.thread:                             ; preds = %bb.fa, %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit743, %.loopexit1123
  %i.agg = getelementptr inbounds nuw i8, ptr %.06481151, i64 8 ; 2 uses
  %.not676 = icmp eq ptr %i.agg, %i.s
  br i1 %.not676, label %._crit_edge1153, label %.lr.ph1152

bb.fj:                                            ; preds = %._crit_edge1153
  %i.agh = load ptr, ptr %i.vn, align 8, !tbaa !153
  %i.agi = zext i32 %i.aev to i64
  %i.agj = call noundef ptr @_ZN5clang10SemaOpenMP29ActOnOpenMPFirstprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr %i.agh, i64 %i.agi, i32 0, i32 0, i32 0) ; 4 uses
  %.not677 = icmp eq ptr %i.agj, null
  br i1 %.not677, label %bb.fn, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.agk = load i32, ptr %i.q, align 8, !tbaa !154 ; 2 uses
  %i.agl = load i32, ptr %i.r, align 4, !tbaa !155
  %.not.i1426 = icmp ult i32 %i.agk, %i.agl
  br i1 %.not.i1426, label %bb.fm, label %bb.fl, !prof !271

bb.fl:                                            ; preds = %bb.fk
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull %i.agj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit1427

bb.fm:                                            ; preds = %bb.fk
  %i.agm = zext i32 %i.agk to i64
  %i.agn = load ptr, ptr %48, align 8, !tbaa !153
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.agn, i64 %i.agm
  store ptr %i.agj, ptr %i.ago, align 1
  %i.agp = load i32, ptr %i.q, align 8, !tbaa !154
  %i.agq = add i32 %i.agp, 1
  store i32 %i.agq, ptr %i.q, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit1427

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit1427: ; preds = %bb.fl, %bb.fm
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agj, i64 16
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !1845
  %i.agt = load i32, ptr %i.vq, align 8, !tbaa !154
  %i.agu = icmp ne i32 %i.agt, %i.ags
  br label %bb.fn

bb.fn:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit1427, %bb.fj, %._crit_edge1153
  %.1642 = phi i1 [ false, %._crit_edge1153 ], [ %i.agu, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit1427 ], [ true, %bb.fj ]
  %i.agv = load i32, ptr %i.vd, align 8, !tbaa !154 ; 2 uses
  %.not.i.i746 = icmp eq i32 %i.agv, 0
  br i1 %.not.i.i746, label %bb.fs, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.agw = load ptr, ptr %i.va, align 8, !tbaa !153
  %i.agx = zext i32 %i.agv to i64
  %i.agy = call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPPrivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr %i.agw, i64 %i.agx, i32 0, i32 0, i32 0) ; 4 uses
  %.not678 = icmp eq ptr %i.agy, null
  br i1 %.not678, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.agz = load i32, ptr %i.q, align 8, !tbaa !154 ; 2 uses
  %i.aha = load i32, ptr %i.r, align 4, !tbaa !155
  %.not.i1428 = icmp ult i32 %i.agz, %i.aha
  br i1 %.not.i1428, label %bb.fr, label %bb.fq, !prof !271

bb.fq:                                            ; preds = %bb.fp
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull %i.agy)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit1429

bb.fr:                                            ; preds = %bb.fp
  %i.ahb = zext i32 %i.agz to i64
  %i.ahc = load ptr, ptr %48, align 8, !tbaa !153
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %i.ahb
  store ptr %i.agy, ptr %i.ahd, align 1
  %i.ahe = load i32, ptr %i.q, align 8, !tbaa !154
  %i.ahf = add i32 %i.ahe, 1
  store i32 %i.ahf, ptr %i.q, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit1429

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit1429: ; preds = %bb.fq, %bb.fr
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agy, i64 16
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !1847
  %i.ahi = load i32, ptr %i.vd, align 8, !tbaa !154
  %i.ahj = icmp ne i32 %i.ahi, %i.ahh
  br label %bb.fs

bb.fs:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit1429, %bb.fo, %bb.fn
  %.3 = phi i1 [ %.1642, %bb.fn ], [ %i.ahj, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit1429 ], [ true, %bb.fo ]
  %i.ahk = call noundef nonnull align 8 dereferenceable(1136) ptr @_ZNK5clang8SemaBase11getLangOptsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #36
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 64
  %i.ahm = load i64, ptr %i.ahl, align 8
  %i.ahn = trunc i64 %i.ahm to i32
  %i.aho = icmp ugt i32 %i.ahn, 49
  %i.ahp = icmp ne i32 %1, 69
  %or.cond5 = and i1 %i.ahp, %i.aho
  br i1 %or.cond5, label %bb.ft, label %bb.gf

bb.ft:                                            ; preds = %bb.fs
  %i.ahq = call noundef zeroext i1 @_ZN5clang32isOpenMPTargetExecutionDirectiveEN4llvm3omp9DirectiveE(i32 noundef %1) #36
  br i1 %i.ahq, label %bb.fu, label %bb.gf

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #36
  %i.ahr = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  store ptr %i.ahr, ptr %58, align 8, !tbaa !153
  %i.ahs = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 4 uses
  store i32 0, ptr %i.ahs, align 8, !tbaa !154
  %i.aht = getelementptr inbounds nuw i8, ptr %58, i64 12 ; 2 uses
  store i32 4, ptr %i.aht, align 4, !tbaa !155
  br i1 %.not1.i.i.i.i, label %.lr.ph1161, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

._crit_edge1162:                                  ; preds = %.loopexit
  %.pre1220 = load i32, ptr %i.ahs, align 8, !tbaa !154 ; 2 uses
  %.pre1222.pre = load ptr, ptr %58, align 8, !tbaa !153 ; 2 uses
  %.not.i749 = icmp eq i32 %.pre1220, 0
  br i1 %.not.i749, label %bb.gd, label %bb.fz

.lr.ph1161:                                       ; preds = %bb.fu, %.loopexit
  %.06501159 = phi ptr [ %i.aiq, %.loopexit ], [ %4, %bb.fu ] ; 2 uses
  %i.ahu = load ptr, ptr %.06501159, align 8, !tbaa !1638 ; 4 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !1640
  %i.ahx = icmp ne i32 %i.ahw, 102
end_hunk_2
begin_hunk_3_@_ZL15checkOpenMPLoopN4llvm3omp9DirectiveEPN5clang4ExprES4_PNS2_4StmtERNS2_4SemaERN12_GLOBAL__N_110DSAStackTyERNS_13SmallDenseMapIPKNS2_9ValueDeclEPKS3_Lj4ENS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_SH_EEEERNS2_21OMPLoopBasedDirective11HelperExprsE:bb.a
  %i.yw = and i64 %.sroa.0885.0, -2
  %i.yx = inttoptr i64 %i.yw to ptr
  %i.yy = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.yx, ptr %i.yy, align 8, !tbaa !4755
  %i.yz = and i64 %.sroa.0879.0, -2
  %i.za = inttoptr i64 %i.yz to ptr
  %i.zb = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.za, ptr %i.zb, align 8, !tbaa !4756
  %i.zc = and i64 %.sroa.0877.0, -2
  %i.zd = inttoptr i64 %i.zc to ptr
  %i.ze = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr %i.zd, ptr %i.ze, align 8, !tbaa !4757
  %i.zf = and i64 %.sroa.0793.0, -2
  %i.zg = inttoptr i64 %i.zf to ptr
  %i.zh = getelementptr inbounds nuw i8, ptr %7, i64 104
  store ptr %i.zg, ptr %i.zh, align 8, !tbaa !4758
  %i.zi = and i64 %.sroa.0788.0, -2
  %i.zj = inttoptr i64 %i.zi to ptr
  %i.zk = getelementptr inbounds nuw i8, ptr %7, i64 112
  store ptr %i.zj, ptr %i.zk, align 8, !tbaa !4759
  %i.zl = getelementptr inbounds nuw i8, ptr %7, i64 120
  store ptr %.sroa.0865.1, ptr %i.zl, align 8, !tbaa !4760
  %i.zm = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr %.sroa.0861.1, ptr %i.zm, align 8, !tbaa !4761
  %i.zn = getelementptr inbounds nuw i8, ptr %7, i64 136
  store ptr %.sroa.0775.0, ptr %i.zn, align 8, !tbaa !4762
  %i.zo = getelementptr inbounds nuw i8, ptr %7, i64 144
  store ptr %.sroa.0773.1, ptr %i.zo, align 8, !tbaa !4763
  %i.zp = getelementptr inbounds nuw i8, ptr %7, i64 544
  store ptr %.sroa.0873.1, ptr %i.zp, align 8, !tbaa !4764
  %i.zq = getelementptr inbounds nuw i8, ptr %7, i64 552
  store ptr %.sroa.0866.1, ptr %i.zq, align 8, !tbaa !4765
  %i.zr = getelementptr inbounds nuw i8, ptr %7, i64 560
  store ptr %.sroa.0859.1, ptr %i.zr, align 8, !tbaa !4766
  %i.zs = getelementptr inbounds nuw i8, ptr %7, i64 568
  store ptr %.sroa.0821.0, ptr %i.zs, align 8, !tbaa !4767
  %i.zt = getelementptr inbounds nuw i8, ptr %7, i64 576
  store ptr %.sroa.0809.0, ptr %i.zt, align 8, !tbaa !4768
  %i.zu = and i64 %.sroa.0784.0, -2
  %i.zv = inttoptr i64 %i.zu to ptr
  %i.zw = getelementptr inbounds nuw i8, ptr %7, i64 584
  store ptr %i.zv, ptr %i.zw, align 8, !tbaa !4769
  %i.zx = and i64 %.sroa.0779.0, -2
  %i.zy = inttoptr i64 %i.zx to ptr
  %i.zz = getelementptr inbounds nuw i8, ptr %7, i64 592
  store ptr %i.zy, ptr %i.zz, align 8, !tbaa !4770
  %i.aaa = getelementptr inbounds nuw i8, ptr %7, i64 600
  store ptr %.sroa.0810.0, ptr %i.aaa, align 8, !tbaa !4771
  %i.aab = getelementptr inbounds nuw i8, ptr %7, i64 608
  store ptr %.sroa.0772.1, ptr %i.aab, align 8, !tbaa !4772
  br label %.thread

.thread:                                          ; preds = %.thread993, %._crit_edge1024.thread, %.thread997, %bb.db, %bb.dc, %_ZL19widenIterationCountjPN5clang4ExprERNS_4SemaE.exit, %_ZL19widenIterationCountjPN5clang4ExprERNS_4SemaE.exit680, %bb.ar, %bb.ce, %bb.cf, %._crit_edge1030, %bb.cv, %bb.cs, %bb.cr, %bb.cq, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.at, %bb.aq, %bb.y, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_118LoopIterationSpaceELj4EEC2Em.exit
  %.15 = phi i32 [ %.0, %bb.y ], [ 0, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_118LoopIterationSpaceELj4EEC2Em.exit ], [ %.0, %_ZL19widenIterationCountjPN5clang4ExprERNS_4SemaE.exit680 ], [ 0, %bb.cv ], [ %.0, %._crit_edge1030 ], [ %.0, %_ZL19widenIterationCountjPN5clang4ExprERNS_4SemaE.exit ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.at ], [ 0, %bb.cf ], [ 0, %bb.ce ], [ 0, %bb.cl ], [ 0, %bb.cr ], [ 0, %bb.cq ], [ 0, %bb.cs ], [ 0, %bb.co ], [ 0, %bb.cn ], [ 0, %bb.cm ], [ 0, %bb.dc ], [ 0, %bb.db ], [ 0, %.thread997 ], [ 0, %._crit_edge1024.thread ], [ 0, %.thread993 ]
  %i.aac = load ptr, ptr %19, align 8, !tbaa !153 ; 2 uses
  %i.aad = icmp eq ptr %i.aac, %i.db
  br i1 %i.aad, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_118LoopIterationSpaceELj4EED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %.thread
  call void @free(ptr noundef %i.aac) #36
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_118LoopIterationSpaceELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN12_GLOBAL__N_118LoopIterationSpaceELj4EED2Ev.exit: ; preds = %.thread, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  %i.aae = load ptr, ptr %i.cw, align 8, !tbaa !153 ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.cx
  br i1 %i.aaf, label %_ZN4llvm11SmallVectorISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELj0EED2Ev.exit.i, label %bb.di

bb.di:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_118LoopIterationSpaceELj4EED2Ev.exit
  call void @free(ptr noundef %i.aae) #36
  br label %_ZN4llvm11SmallVectorISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELj0EED2Ev.exit.i: ; preds = %bb.di, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_118LoopIterationSpaceELj4EED2Ev.exit
  %i.aag = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !2227 ; 2 uses
  %i.aai = icmp eq i32 %i.aah, 0
  br i1 %i.aai, label %_ZN4llvm9MapVectorIPKN5clang4ExprEPNS1_11DeclRefExprENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEENS_11SmallVectorISt4pairIS4_S6_ELj0EEELj0EED2Ev.exit, label %bb.dj

bb.dj:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELj0EED2Ev.exit.i
  %i.aaj = load ptr, ptr %18, align 8, !tbaa !2228
  %i.aak = zext i32 %i.aah to i64                 ; 2 uses
  %i.aal = shl nuw nsw i64 %i.aak, 4
  %i.aam = add nuw nsw i64 %i.aak, 31
  %i.aan = lshr i64 %i.aam, 3
  %i.aao = and i64 %i.aan, 1073741820
  %i.aap = add nuw nsw i64 %i.aao, %i.aal
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aaj, i64 noundef %i.aap, i64 noundef 8) #36
  br label %_ZN4llvm9MapVectorIPKN5clang4ExprEPNS1_11DeclRefExprENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEENS_11SmallVectorISt4pairIS4_S6_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIPKN5clang4ExprEPNS1_11DeclRefExprENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEENS_11SmallVectorISt4pairIS4_S6_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPKN5clang4ExprEPNS2_11DeclRefExprEELj0EED2Ev.exit.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN4llvm9MapVectorIPKN5clang4ExprEPNS1_11DeclRefExprENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEENS_11SmallVectorISt4pairIS4_S6_ELj0EEELj0EED2Ev.exit, %_ZN5clang4Expr10EvalResultD2Ev.exit675, %_ZN5clang4Expr10EvalResultD2Ev.exit661
  %.17 = phi i32 [ 1, %_ZN5clang4Expr10EvalResultD2Ev.exit661 ], [ %.15, %_ZN4llvm9MapVectorIPKN5clang4ExprEPNS1_11DeclRefExprENS_8DenseMapIS4_jNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEENS_11SmallVectorISt4pairIS4_S6_ELj0EEELj0EED2Ev.exit ], [ 1, %_ZN5clang4Expr10EvalResultD2Ev.exit675 ]
  %i.aaq = load i8, ptr %i.u, align 8, !tbaa !2077, !range !258, !noundef !116
  %i.aar = trunc nuw i8 %i.aaq to i1
  br i1 %i.aar, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aas = load ptr, ptr %9, align 8, !tbaa !2074
  call void @free(ptr noundef %i.aas) #36
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %bb.dk, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.aat = load i8, ptr %i.q, align 8, !tbaa !2077, !range !258, !noundef !116
  %i.aau = trunc nuw i8 %i.aat to i1
  br i1 %i.aau, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit730, label %bb.dm

bb.dm:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.aav = load ptr, ptr %8, align 8, !tbaa !2074
  call void @free(ptr noundef %i.aav) #36
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit730

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit730:        ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.dn

bb.dn:                                            ; preds = %bb.b, %bb.d, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit730
  %.18 = phi i32 [ %.17, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit730 ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.18
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL19finishLinearClausesRN5clang4SemaEN4llvm8ArrayRefIPNS_9OMPClauseEEERNS_21OMPLoopBasedDirective11HelperExprsEPN12_GLOBAL__N_110DSAStackTyE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.clang::NestedNameSpecifierLoc", align 8 ; 5 uses
  %6 = alloca %"class.clang::NestedNameSpecifierLoc", align 8 ; 5 uses
  %7 = alloca %"class.llvm::SmallVector.1290", align 8 ; 16 uses
  %8 = alloca %"class.llvm::SmallVector.1290", align 8 ; 16 uses
  %9 = alloca %"class.llvm::SmallVector.1290", align 8 ; 16 uses
  %10 = alloca %"class.clang::SourceLocation", align 4 ; 5 uses
  %11 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1039
  %i.d = tail call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #36
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %2, 3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not36 = icmp eq i64 %2, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 688 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 680 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 28616 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.bs
  %.01837 = phi ptr [ %1, %.lr.ph ], [ %i.lv, %bb.bs ] ; 2 uses
  %i.z = load ptr, ptr %.01837, align 8, !tbaa !1638 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1640
  %i.ac = icmp ne i32 %i.ab, 67
  %.not2231 = icmp eq ptr %i.z, null
  %.not22 = or i1 %.not2231, %i.ac
  br i1 %.not22, label %bb.bs, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %3, align 8, !tbaa !1935
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !1816 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store ptr %i.g, ptr %7, align 8, !tbaa !153
  store i32 0, ptr %i.h, align 8, !tbaa !154
  store i32 8, ptr %i.i, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %i.j, ptr %8, align 8, !tbaa !153
  store i32 0, ptr %i.k, align 8, !tbaa !154
  store i32 8, ptr %i.l, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store ptr %i.m, ptr %9, align 8, !tbaa !153
  store i32 0, ptr %i.n, align 8, !tbaa !154
  store i32 8, ptr %i.o, align 4, !tbaa !155
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !2230 ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 4 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %15 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %i.ah
  %16 = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %i.ah
  %17 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %17, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1046 ; 2 uses
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ah
  %19 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %i.ah
  %20 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %i.ah
  %21 = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %i.ah
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1046 ; 2 uses
  %.not95.i = icmp eq ptr %i.ak, null
  br i1 %.not95.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = call i64 @_ZN5clang4Sema20ActOnIntegerConstantENS_14SourceLocationEl(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 0, i64 noundef 1) #36
  %i.ap = and i64 %i.ao, -2
  %i.aq = inttoptr i64 %i.ap to ptr
  %.pre.i = load i32, ptr %i.af, align 4, !tbaa !2230 ; 2 uses
  %.pre35.i = zext i32 %.pre.i to i64
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not96.i = icmp eq ptr %i.an, null
  br i1 %.not96.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1724
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.pre-phi.i = phi i64 [ %i.ah, %bb.f ], [ %i.ah, %bb.g ], [ %.pre35.i, %bb.e ] ; 2 uses
  %i.at = phi i32 [ %i.ag, %bb.f ], [ %i.ag, %bb.g ], [ %.pre.i, %bb.e ]
  %.0.i = phi ptr [ %i.ak, %bb.f ], [ %i.as, %bb.g ], [ %i.aq, %bb.e ]
  %.idx.i = shl nuw nsw i64 %.pre-phi.i, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i ; 3 uses
  %.not9726.i = icmp eq i32 %i.at, 0
  br i1 %.not9726.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !2233
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.pre-phi.i
  %i.ax = icmp eq i32 %i.aw, 2
  %i.ay = ptrtoint ptr %i.ad to i64
  %i.az = ptrtoint ptr %.0.i to i64
  br label %bb.i

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit106.i
  %.pre32.i = load i32, ptr %i.af, align 8, !tbaa !2230
  %i.ba = zext i32 %.pre32.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.h
  %i.bb = phi i64 [ 0, %bb.h ], [ %i.ba, %._crit_edge.loopexit.i ] ; 5 uses
  %.077.lcssa.i = phi i1 [ false, %bb.h ], [ %.3.i, %._crit_edge.loopexit.i ]
  %23 = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bb
  %24 = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %i.bb
  %25 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %i.bb
  %26 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %i.bb
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1046 ; 3 uses
  %.not98.i = icmp eq ptr %i.bd, null
  %.pre34.i = load i32, ptr %i.n, align 8, !tbaa !154 ; 3 uses
  br i1 %.not98.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit153.i, label %bb.bl

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit106.i, %.lr.ph.i
  %.07730.i = phi i1 [ false, %.lr.ph.i ], [ %.3.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit106.i ] ; 3 uses
  %.07829.i = phi ptr [ %22, %.lr.ph.i ], [ %.280.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit106.i ] ; 6 uses
  %.08128.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.283.i, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit106.i ] ; 9 uses
  %.08427.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.kl, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit106.i ] ; 2 uses
  %i.be = load ptr, ptr %.08427.i, align 8, !tbaa !1046 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store i32 0, ptr %10, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  store i32 0, ptr %11, align 4, !tbaa !161
  store i32 0, ptr %i.p, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store ptr %i.be, ptr %i.a, align 8, !tbaa !1046
  store ptr @.str.39, ptr %12, align 8, !tbaa !1648
  store i64 0, ptr %i.q, align 8, !tbaa !1649
  %i.bf = call fastcc { ptr, i8 } @_ZL14getPrivateItemRN5clang4SemaERPNS_4ExprERNS_14SourceLocationERNS_11SourceRangeEbbN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %12) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.bf, 0 ; 5 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.bf, 1
  %i.bg = trunc i8 %.fca.1.extract.i to i1
  %i.bh = icmp eq ptr %.fca.0.extract.i, null
  %or.cond.not.i = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond.not.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bi = load i32, ptr %i.h, align 8, !tbaa !154 ; 2 uses
  %i.bj = load i32, ptr %i.i, align 4, !tbaa !155
  %.not.i.i = icmp ult i32 %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.l, label %bb.k, !prof !271

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bk = zext i32 %i.bi to i64
  %i.bl = load ptr, ptr %7, align 8, !tbaa !153
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  store ptr null, ptr %i.bm, align 1
  %i.bn = load i32, ptr %i.h, align 8, !tbaa !154
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.h, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit.i: ; preds = %bb.l, %bb.k
  %i.bp = load i32, ptr %i.k, align 8, !tbaa !154 ; 2 uses
  %i.bq = load i32, ptr %i.l, align 4, !tbaa !155
  %.not.i105.i = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i105.i, label %bb.n, label %bb.m, !prof !271

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit106.i

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit.i
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr %8, align 8, !tbaa !153
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  store ptr null, ptr %i.bt, align 1
  %i.bu = load i32, ptr %i.k, align 8, !tbaa !154
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.k, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit106.i

bb.o:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 28
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, 127
  %.not32 = icmp eq i32 %i.by, 45
  br i1 %.not32, label %bb.p, label %_ZL16getCanonicalDeclPKN5clang9ValueDeclE.exit

bb.p:                                             ; preds = %bb.o
  %i.bz = call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %.fca.0.extract.i) #36 ; 3 uses
  %i.ca = load i16, ptr %i.bz, align 8            ; 2 uses
  %i.cb = and i16 %i.ca, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i16 %i.cb, 62
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1547 ; 2 uses
  %.pre.i.i26 = load i16, ptr %i.cd, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ce = phi i16 [ %.pre.i.i26, %bb.q ], [ %i.ca, %bb.p ]
  %.013.i.i = phi ptr [ %i.cd, %bb.q ], [ %i.bz, %bb.p ] ; 2 uses
  %i.cf = and i16 %i.ce, 511
  %.not.i.i24 = icmp eq i16 %i.cf, 50
  br i1 %.not.i.i24, label %bb.s, label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8 ; 3 uses
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.ck = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1550
  br label %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i

_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i: ; preds = %bb.u, %bb.t, %bb.r
  %.1.i.i = phi ptr [ %.013.i.i, %bb.r ], [ %i.cj, %bb.t ], [ %i.cn, %bb.u ] ; 3 uses
  %i.co = load i16, ptr %.1.i.i, align 8          ; 2 uses
  %i.cp = and i16 %i.co, 511
  %.not3033.i.i = icmp eq i16 %i.cp, 120
  br i1 %.not3033.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i, %.lr.ph.i.i
  %.234.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %.1.i.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.234.i.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1553 ; 3 uses
  %i.cs = load i16, ptr %i.cr, align 8            ; 2 uses
  %i.ct = and i16 %i.cs, 511
  %.not30.i.i = icmp eq i16 %i.ct, 120
  br i1 %.not30.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i
  %i.cu = phi i16 [ %i.co, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i ], [ %i.cs, %.lr.ph.i.i ]
  %.2.lcssa.i.i = phi ptr [ %.1.i.i, %_ZNK5clang24MaterializeTemporaryExpr10getSubExprEv.exit.i.i ], [ %i.cr, %.lr.ph.i.i ] ; 2 uses
  %i.cv = and i16 %i.cu, 511
  %.not32.i.i = icmp eq i16 %i.cv, 81
  br i1 %.not32.i.i, label %bb.v, label %_ZL16getExprAsWrittenPKN5clang4ExprE.exit.i

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.cw = call noundef ptr @_ZN5clang8CastExpr19getSubExprAsWrittenEv(ptr noundef nonnull align 8 dereferenceable(24) %.2.lcssa.i.i) #36
  br label %_ZL16getExprAsWrittenPKN5clang4ExprE.exit.i

_ZL16getExprAsWrittenPKN5clang4ExprE.exit.i:      ; preds = %bb.v, %._crit_edge.i.i
  %.4.i.i = phi ptr [ %i.cw, %bb.v ], [ %.2.lcssa.i.i, %._crit_edge.i.i ]
  %i.cx = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.4.i.i) #37 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 8
  %i.cz = and i16 %i.cy, 511
  %.not13.i = icmp eq i16 %i.cz, 46
  br i1 %.not13.i, label %bb.w, label %_ZL16getCanonicalDeclPKN5clang9ValueDeclE.exit

bb.w:                                             ; preds = %_ZL16getExprAsWrittenPKN5clang4ExprE.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1555
  br label %_ZL16getCanonicalDeclPKN5clang9ValueDeclE.exit

_ZL16getCanonicalDeclPKN5clang9ValueDeclE.exit:   ; preds = %bb.o, %_ZL16getExprAsWrittenPKN5clang4ExprE.exit.i, %bb.w
  %.1.i25 = phi ptr [ %.fca.0.extract.i, %bb.o ], [ %i.db, %bb.w ], [ %.fca.0.extract.i, %_ZL16getExprAsWrittenPKN5clang4ExprE.exit.i ] ; 2 uses
  %i.dc = load ptr, ptr %.1.i25, align 8, !tbaa !195
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef ptr %i.de(ptr noundef nonnull align 8 dereferenceable(33) %.1.i25) #36, !inline_history !46 ; 2 uses
  %i.dg = load i32, ptr %i.r, align 8, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i32 %i.dg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !153
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i.i.i, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -6960
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !154 ; 2 uses
  %i.dl = load i32, ptr %i.u, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i32 %i.dk, %i.dl
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %narrow.i.i.i.i.i.i = sub nuw i32 %i.dk, %i.dl
  %i.dm = zext i32 %narrow.i.i.i.i.i.i to i64
  %i.dn = getelementptr inbounds i8, ptr %i.di, i64 -6968
  %.val5.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !153
  %i.do = getelementptr [1736 x i8], ptr %.val5.i.i.i.i.i, i64 %i.dm ; 7 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 -976
  %i.dq = load i32, ptr %i.dp, align 8, !noalias !4781
  %i.dr = and i32 %i.dq, 1
  %.not.i.i.i.i.i5.i.i = icmp eq i32 %i.dr, 0     ; 3 uses
  %i.ds = getelementptr i8, ptr %i.do, i64 -968   ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !4781
  %i.du = getelementptr i8, ptr %i.do, i64 -960
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !4781
  %i.dw = getelementptr i8, ptr %i.do, i64 -952
  %i.dx = load i32, ptr %i.dw, align 8, !noalias !4781
  %i.dy = getelementptr i8, ptr %i.do, i64 -776
  %.sink2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i5.i.i, ptr %i.dt, ptr %i.ds ; 3 uses
  %.sink1.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i5.i.i, ptr %i.dv, ptr %i.dy ; 2 uses
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i5.i.i, i32 %i.dx, i32 8 ; 4 uses
  %i.dz = icmp eq i32 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.dz, label %.loopexit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZL16getCanonicalDeclPKN5clang9ValueDeclE.exit
  %i.ea = add i32 %.sink.i.i.i.i.i.i.i, -1        ; 2 uses
  %i.eb = ptrtoint ptr %i.df to i64
  %i.ec = mul i64 %i.eb, -4658895280553007687     ; 2 uses
  %i.ed = lshr i64 %i.ec, 31
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = and i32 %i.ea, %i.ef                    ; 3 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = lshr i64 %i.eh, 5
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !268, !noalias !4782
  %i.el = and i32 %i.eg, 31
  %i.em = lshr i32 %i.ek, %i.el
  %i.en = trunc i32 %i.em to i1
  br i1 %i.en, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !269
end_hunk_3
begin_hunk_4_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE30TransformOMPFirstprivateClauseEPNS_21OMPFirstprivateClauseE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !153
  %i.z = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !193
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP29ActOnOpenMPFirstprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23TransformOMPFlushClauseEPNS_14OMPFlushClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3248 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3248
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge24
  %i.aa = zext i32 %i.y to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ab = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ab, align 8, !tbaa !193
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !268
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ad, align 4, !tbaa !268
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.ae = load ptr, ptr %2, align 8, !tbaa !153
  %i.af = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36
  %i.ag = call noundef ptr @_ZN5clang14OMPFlushClause6CreateERKNS_10ASTContextENS_14SourceLocationES4_S4_N4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(23904) %i.af, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26, ptr %i.ae, i64 %i.aa) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge24
  %.3 = phi ptr [ null, %.critedge24 ], [ %i.ag, %bb.f ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformOMPFromClauseEPNS_13OMPFromClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !268
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2073 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1046 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !2073
  %.pre96 = load i32, ptr %i.g, align 4, !tbaa !155
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre96, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store i64 0, ptr %9, align 8, !tbaa !387
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !155
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #36
  %.pre97 = load i32, ptr %i.i, align 4, !tbaa !2073
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre97, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i82 = icmp eq i32 %i.ab, 0
  br i1 %.not.i82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49
  %.058.i83 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i83, align 8, !tbaa !1046
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !6545 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !154 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !155
  %.not.i48 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i48, label %bb.h, label %bb.g, !prof !271

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !153
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !154
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i83, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ar, align 8, !tbaa !1042 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.0.0.copyload.i43, 0
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !1814
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, i64 0, ptr noundef null), !inline_history !6545 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not77 = icmp eq i64 %i.at, 0
  br i1 %.not77, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.068.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.068.0, ptr %.sroa.6.0) #36, !inline_history !6545
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !1042
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !6545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !1042
  %.not79 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not79, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !2073 ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx93 = shl nuw nsw i64 %i.ax, 3
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx93 ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ax
  %.not63.i89 = icmp eq i32 %i.aw, 0
  br i1 %.not63.i89, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i90 = phi ptr [ %11, %.lr.ph92 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i90, align 8, !tbaa !1046 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.ay, ptr %5, align 8, !tbaa !153
  store i32 0, ptr %i.az, align 8, !tbaa !154
  store i32 8, ptr %i.ba, align 4, !tbaa !155
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !196 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx94 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx94
  %.not8084 = icmp eq i32 %i.bj, 0
  br i1 %.not8084, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #36, !inline_history !6545 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !154
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #36, !inline_history !6545 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i32 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i32, label %bb.p, label %bb.o, !prof !271

bb.o:                                             ; preds = %._crit_edge88
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

bb.p:                                             ; preds = %._crit_edge88
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %10, align 8, !tbaa !153
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !154
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33
  call void @free(ptr noundef %i.cf) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph87:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.057.085 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.057.085, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.057.085, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2497, !noalias !6554 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2498, !noalias !6554 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !1817, !noalias !6554 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph87
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !268, !noalias !6555
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1665, !noalias !6555
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !271

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !268, !noalias !6555
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph87
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i31 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i31, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !154 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !155
  %.not.i.i30 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i30, label %bb.v, label %bb.u, !prof !271

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %5, align 8, !tbaa !153
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !154
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.057.085, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not80, label %._crit_edge88, label %.lr.ph87

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i29 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i29, label %bb.y, label %bb.x, !prof !271

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %10, align 8, !tbaa !153
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !154
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i90, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %12
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.er = load ptr, ptr %7, align 8, !tbaa !153
  %i.es = load i32, ptr %i.f, align 8, !tbaa !154
  %i.et = zext i32 %i.es to i64
  %i.eu = load ptr, ptr %10, align 8, !tbaa !153
  %i.ev = load i32, ptr %i.x, align 8, !tbaa !154
  %i.ew = zext i32 %i.ev to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ex = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ex, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.eu, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ew, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.er, ptr %3, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.et, ptr %.sroa.253.0..sroa_idx, align 8
  %i.ey = call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFromClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull readonly %i.ep, i64 3, ptr nonnull readonly %i.eq, i64 poison, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i32 poison, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.ey, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.ez = load ptr, ptr %10, align 8, !tbaa !153  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.w
  br i1 %i.fa, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread
  call void @free(ptr noundef %i.ez) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !1852
  %.not.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1853
  call void @free(ptr noundef %i.fe) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.ff = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.e
  br i1 %i.fg, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.ff) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformOMPFullClauseEPNS_13OMPFullClauseE(ptr nonnull %.0.val.832.val, i32 %.0.val1, i32 %.4.val) unnamed_addr #22 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val) #36
  %i.b = tail call noundef ptr @_ZN5clang13OMPFullClause6CreateERKNS_10ASTContextENS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(23904) %i.a, i32 %.0.val1, i32 %.4.val) #36
  ret ptr %i.b
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE27TransformOMPGrainsizeClauseEPNS_18OMPGrainsizeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2317
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2316
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.i, align 4, !tbaa !268
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.j, align 4, !tbaa !268
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.k, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !193
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPGrainsizeClauseENS_29OpenMPGrainsizeClauseModifierEPNS_4ExprENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12, i32 %.sroa.0.0.copyload.i13)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3250 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3250
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.y, align 4, !tbaa !268
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.z, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i, ptr %3, align 4, !tbaa !268
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.0.0.copyload.i25, ptr %i.aa, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ab, align 4, !tbaa !268
  %i.ac = load ptr, ptr %2, align 8, !tbaa !153
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ae = zext i32 %i.ad to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.af = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !193
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPHasDeviceAddrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
end_hunk_4
begin_hunk_5_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformOMPHintClauseEPNS_13OMPHintClauseE:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store ptr %i.w, ptr %i.z, align 8, !tbaa !2002
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE20RebuildOMPHintClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE20RebuildOMPHintClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit: ; preds = %_ZnwmRKN5clang10ASTContextEm.exit.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i.i.i.i.i.i, %_ZnwmRKN5clang10ASTContextEm.exit.i.i ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23TransformOMPHoldsClauseEPNS_14OMPHoldsClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2253
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !268
  %i.h = load <2 x i32>, ptr %1, align 8, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.j = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1580 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, 24                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1581
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d, !prof !271

bb.c:                                             ; preds = %bb.b
  %i.r = inttoptr i64 %i.n to ptr
  store ptr %i.r, ptr %i.k, align 8, !tbaa !1580
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE21RebuildOMPHoldsClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE21RebuildOMPHoldsClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE21RebuildOMPHoldsClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.s, %bb.d ] ; 5 uses
  store <2 x i32> %i.h, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !268
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  store i32 53, ptr %i.t, align 4, !tbaa !1640
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 12
  store i32 %.sroa.0.0.copyload.i8, ptr %i.u, align 4, !tbaa !268
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store ptr %i.f, ptr %i.v, align 8, !tbaa !2253
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE21RebuildOMPHoldsClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit
  %.0 = phi ptr [ %.0.i.i.i.i.i.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE21RebuildOMPHoldsClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE20TransformOMPIfClauseEPNS_11OMPIfClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1860
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1857
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.i, align 4, !tbaa !268
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.j, align 8, !tbaa !268
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.k, align 8, !tbaa !268
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.l, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.m = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.n = tail call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPIfClauseEN4llvm3omp9DirectiveEPNS_4ExprENS_14SourceLocationES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i14, i32 %.sroa.0.0.copyload.i15, i32 %.sroa.0.0.copyload.i16)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE29TransformOMPInReductionClauseEPNS_20OMPInReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1794 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1794
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not94 = icmp eq i32 %i.h, 0
  br i1 %.not94, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04695 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04695, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04695, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !1042
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1814
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !1042
  %.not90 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !1042
  %.not91 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not91, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !155
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !1794 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 5 uses
  %.idx104.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx104.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ae
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ae ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ae
  %.not5199 = icmp eq i32 %i.ad, 0
  br i1 %.not5199, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge103.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre107 = load ptr, ptr %7, align 8, !tbaa !153
  %.pre108 = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.am = zext i32 %.pre108 to i64
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge103.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre107, %._crit_edge103.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !153
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !268
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !268
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 832
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !193
  store ptr %i.ao, ptr %2, align 8, !tbaa !1850
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.489.0..sroa_idx, align 8, !tbaa !1042
  %i.ax = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPInReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %i.aw, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2), !inline_history !6556
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ay = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.aa
  br i1 %i.az, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge103
  call void @free(ptr noundef %i.ay) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge103, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph102, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.049100 = phi ptr [ %11, %.lr.ph102 ], [ %i.el, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.ba = load ptr, ptr %.049100, align 8, !tbaa !1046 ; 4 uses
  %.not52 = icmp eq ptr %i.ba, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %i.ag, ptr %8, align 8, !tbaa !153
  store i32 0, ptr %i.ah, align 8, !tbaa !154
  store i32 8, ptr %i.ai, align 4, !tbaa !155
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = and i16 %i.bb, 511
  %i.bd = icmp eq i16 %i.bc, 24
  %.1.v.i.i.i.i = select i1 %i.bd, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.1.v.i.i.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !196 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %.idx105 = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx105
  %.not9296 = icmp eq i32 %i.bf, 0
  br i1 %.not9296, label %._crit_edge, label %.lr.ph98

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bi = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bl = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bk) #36 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.bp = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bk, ptr noundef null, i64 %i.bm, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bs, i64 %i.bt, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 2 uses
  %i.bv = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.bw = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i67 = icmp ult i32 %i.bv, %i.bw
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !271

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bx = zext i32 %i.bv to i64
  %i.by = load ptr, ptr %7, align 8, !tbaa !153
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store ptr %i.bu, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cc = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ag
  br i1 %i.cd, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cc) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph98:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.097 = phi ptr [ %i.ed, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.097, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.097, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !2497, !noalias !6565 ; 3 uses
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !2498, !noalias !6565 ; 2 uses
  %i.ci = load i32, ptr %i.al, align 4, !tbaa !1817, !noalias !6565 ; 4 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph98
  %i.ck = add i32 %i.ci, -1                       ; 2 uses
  %i.cl = mul i64 %i.ce, -4658895280553007687     ; 2 uses
  %i.cm = lshr i64 %i.cl, 31
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = trunc i64 %i.cn to i32
  %i.cp = and i32 %i.ck, %i.co                    ; 3 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 5
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !268, !noalias !6566
  %i.cu = and i32 %i.cp, 31
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cx = phi i64 [ %i.dd, %bb.o ], [ %i.cq, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.dc, %bb.o ], [ %i.cp, %bb.n ]
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cx ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1665, !noalias !6566
  %i.da = icmp eq ptr %i.cz, %i.cf
  br i1 %i.da, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !271

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.db = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dc = and i32 %i.db, %i.ck                    ; 3 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = lshr i64 %i.dd, 5
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !268, !noalias !6566
  %i.dh = and i32 %i.dc, 31
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = trunc i32 %i.di to i1
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph98
  %i.dk = zext i32 %i.ci to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.dk
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ci to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cy, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dl, %.loopexit.i.i.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dm
  br i1 %.not.i69, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.do, %bb.p ], [ %i.cf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = lshr i32 %i.dq, 13
  %i.ds = and i32 %i.dr, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = ptrtoint ptr %.0.i to i64
  %i.dv = or i64 %i.dt, %i.du                     ; 2 uses
  %i.dw = load i32, ptr %i.ah, align 8, !tbaa !154 ; 2 uses
  %i.dx = load i32, ptr %i.ai, align 4, !tbaa !155
  %.not.i.i = icmp ult i32 %i.dw, %i.dx
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !271

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dv)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dy = zext i32 %i.dw to i64
  %i.dz = load ptr, ptr %8, align 8, !tbaa !153
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  store i64 %i.dv, ptr %i.ea, align 1
  %i.eb = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ah, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.077.097, i64 8 ; 2 uses
  %.not92 = icmp eq ptr %i.ed, %i.bh
  br i1 %.not92, label %._crit_edge, label %.lr.ph98

bb.s:                                             ; preds = %bb.i
  %i.ee = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.ef = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i70 = icmp ult i32 %i.ee, %i.ef
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !271

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.eg = zext i32 %i.ee to i64
  %i.eh = load ptr, ptr %7, align 8, !tbaa !153
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg
  store ptr null, ptr %i.ei, align 1
  %i.ej = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.el = getelementptr inbounds nuw i8, ptr %.049100, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.el, %12
  br i1 %.not51, label %._crit_edge103.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.ax, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1852
  %.not.i.i72 = icmp eq i32 %i.en, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1853
  call void @free(ptr noundef %i.ep) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.eq = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.a
  br i1 %i.er, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.eq) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE27TransformOMPInclusiveClauseEPNS_18OMPInclusiveClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3252 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3252
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !153
  %i.z = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !193
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPInclusiveClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22TransformOMPInitClauseEPNS_13OMPInitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"struct.clang::OMPInteropInfo", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"class.llvm::SmallVector.2018", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1046
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3253, !range !258, !noundef !116
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !2080, !range !258, !noundef !116
  store i8 %i.g, ptr %2, align 8, !tbaa !3260
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !3261
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.k, align 2, !tbaa !3262
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !153
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !154
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.o, align 4, !tbaa !155
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !3263, !noalias !6581 ; 2 uses
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3264, !noalias !6581
  %i.v = add i32 %i.u, %i.q
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %.not7982 = icmp eq i32 %i.r, 0
  br i1 %.not7982, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph84, %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit
  %.sroa.067.083 = phi i64 [ 0, %.lr.ph84 ], [ %i.ah, %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit ] ; 4 uses
  %i.ab = icmp eq i64 %.sroa.067.083, 0
  br i1 %i.ab, label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add nuw nsw i64 %.sroa.067.083, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !268, !noalias !6582
  br label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit

_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit: ; preds = %bb.c, %bb.d
  %i.ag = phi i32 [ %i.af, %bb.d ], [ 0, %bb.c ]  ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.067.083, 1       ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1046, !noalias !6582 ; 2 uses
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !3263, !noalias !6582
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.an = zext i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE29TransformOMPIsDevicePtrClauseEPNS_20OMPIsDevicePtrClauseE:bb.a
  store i32 %.sroa.0.0.copyload.i25, ptr %i.aa, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ab, align 4, !tbaa !268
  %i.ac = load ptr, ptr %2, align 8, !tbaa !153
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ae = zext i32 %i.ad to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.af = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !193
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPIsDevicePtrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ag, %.critedge24 ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE29TransformOMPLastprivateClauseEPNS_20OMPLastprivateClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1642 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1642
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %.critedge29, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02538 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02538, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge29, label %.lr.ph

.critedge29:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !153
  %i.z = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !3270
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ad, align 4, !tbaa !268
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ae, align 8, !tbaa !268
  %.sroa.0.0.copyload.i31 = load i32, ptr %1, align 8, !tbaa !268
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.af, align 4, !tbaa !268
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.ag, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ah = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ah, align 8, !tbaa !193
  %i.ai = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPLastprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_25OpenMPLastprivateModifierENS_14SourceLocationES7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.y, i64 %i.aa, i32 noundef %i.ac, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i30, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, i32 %.sroa.0.0.copyload.i33)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge29
  %.3 = phi ptr [ %i.ai, %.critedge29 ], [ null, %.lr.ph ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.aj) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE24TransformOMPLinearClauseEPNS_15OMPLinearClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2230 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2230
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %.critedge32, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02844 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02844, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02844, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge32.loopexit, label %.lr.ph

.critedge32.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.pre45 = load i32, ptr %i.d, align 4, !tbaa !2230
  %i.y = zext i32 %.pre45 to i64
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge32.loopexit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.z = phi i64 [ %i.y, %.critedge32.loopexit ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 5 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.z
  %4 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.z
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.z
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1046
  %i.ac = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ab) ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge32
  %i.ae = load ptr, ptr %2, align 8, !tbaa !153
  %i.af = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ag = zext i32 %i.af to i64
  %i.ah = and i64 %i.ac, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2233
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i34 = load i32, ptr %i.am, align 4, !tbaa !268
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i35 = load i32, ptr %i.an, align 8, !tbaa !268
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.ao, align 4, !tbaa !268
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ap, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.aq = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.aq, align 8, !tbaa !193
  %i.ar = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPLinearClauseEN4llvm8ArrayRefIPNS_4ExprEEES4_NS_14SourceLocationES6_NS_22OpenMPLinearClauseKindES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.ae, i64 %i.ag, ptr noundef %i.ai, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i33, i32 noundef %i.al, i32 %.sroa.0.0.copyload.i34, i32 %.sroa.0.0.copyload.i35, i32 %.sroa.0.0.copyload.i36, i32 %.sroa.0.0.copyload.i37)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge32
  %.4 = phi ptr [ null, %.critedge32 ], [ %i.ar, %bb.f ], [ null, %.lr.ph ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.as) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE27TransformOMPLoopRangeClauseEPNS_18OMPLoopRangeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1724
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1724
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = and i64 %i.g, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.m, align 4, !tbaa !268
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.n, align 8, !tbaa !268
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.o, align 4, !tbaa !268
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.p, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.q = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.q, align 8, !tbaa !193 ; 3 uses
  %i.r = tail call i64 @_ZN5clang10SemaOpenMP37VerifyPositiveIntegerConstantInClauseEPNS_4ExprEN4llvm3omp6ClauseEbb(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.j, i32 noundef 70, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.s = icmp eq i64 %i.r, 1
  %spec.select.i.i = select i1 %i.s, ptr null, ptr %i.j
  %i.t = tail call i64 @_ZN5clang10SemaOpenMP37VerifyPositiveIntegerConstantInClauseEPNS_4ExprEN4llvm3omp6ClauseEbb(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.l, i32 noundef 70, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.u = icmp eq i64 %i.t, 1
  %.014.i.i = select i1 %i.u, ptr null, ptr %i.l
  %i.v = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36
  %i.w = tail call noundef ptr @_ZN5clang18OMPLoopRangeClause6CreateERKNS_10ASTContextENS_14SourceLocationES4_S4_S4_S4_PNS_4ExprES6_(ptr noundef nonnull align 8 dereferenceable(23904) %i.v, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, ptr noundef %spec.select.i.i, ptr noundef %.014.i.i) #36
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.w, %.critedge ], [ null, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE21TransformOMPMapClauseEPNS_12OMPMapClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %6 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %7 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %9 = alloca %"class.clang::CXXScopeSpec", align 8 ; 10 uses
  %10 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %11 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  %12 = alloca %"class.clang::CXXScopeSpec", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.a, align 4, !tbaa !268
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.b, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i, ptr %7, align 4, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0.0.copyload.i27, ptr %i.c, align 4, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.0.0.copyload.i28, ptr %i.d, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1855 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1046 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !1855
  %.pre103 = load i32, ptr %i.g, align 4, !tbaa !155
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre103, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.124 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store i64 0, ptr %10, align 8, !tbaa !387
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.w, ptr %11, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !155
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #36
  %.pre104 = load i32, ptr %i.i, align 4, !tbaa !1855
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre104, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i89 = icmp eq i32 %i.ab, 0
  br i1 %.not.i89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56
  %.058.i90 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i90, align 8, !tbaa !1046
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !6583 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !154 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !155
  %.not.i55 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i55, label %bb.h, label %bb.g, !prof !271

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %8, align 8, !tbaa !153
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !154
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i90, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i50 = load i64, ptr %i.ar, align 8, !tbaa !1042 ; 2 uses
  %.not83 = icmp eq i64 %.sroa.0.0.copyload.i50, 0
  br i1 %.not83, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i52 = load ptr, ptr %.sroa.2.0..sroa_idx.i51, align 8, !tbaa !1814
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i50, ptr %.sroa.2.0.copyload.i52, i64 0, ptr noundef null), !inline_history !6583 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not84 = icmp eq i64 %i.at, 0
  br i1 %.not84, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.075.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 %.sroa.075.0, ptr %.sroa.6.0) #36, !inline_history !6583
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i46 = load i64, ptr %10, align 8, !tbaa !1042
  %.not85 = icmp eq i64 %.sroa.0.0.copyload.i46, 0
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !6583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.sroa.0.0.copyload.i45 = load i64, ptr %10, align 8, !tbaa !1042
  %.not86 = icmp eq i64 %.sroa.0.0.copyload.i45, 0
  br i1 %.not86, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !1855 ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx100 = shl nuw nsw i64 %i.ax, 3
  %13 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx100 ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.ax
  %.not63.i96 = icmp eq i32 %i.aw, 0
  br i1 %.not63.i96, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph99, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i97 = phi ptr [ %13, %.lr.ph99 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i97, align 8, !tbaa !1046 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.ay, ptr %6, align 8, !tbaa !153
  store i32 0, ptr %i.az, align 8, !tbaa !154
  store i32 8, ptr %i.ba, align 4, !tbaa !155
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !196 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx101 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx101
  %.not8791 = icmp eq i32 %i.bj, 0
  br i1 %.not8791, label %._crit_edge95, label %.lr.ph94

._crit_edge95:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #36, !inline_history !6583 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !154
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #36, !inline_history !6583 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i39 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i39, label %bb.p, label %bb.o, !prof !271

bb.o:                                             ; preds = %._crit_edge95
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40

bb.p:                                             ; preds = %._crit_edge95
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %11, align 8, !tbaa !153
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !154
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40
  call void @free(ptr noundef %i.cf) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph94:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.064.092 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.064.092, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.064.092, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2497, !noalias !6592 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2498, !noalias !6592 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !1817, !noalias !6592 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph94
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !268, !noalias !6593
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1665, !noalias !6593
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !271

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !268, !noalias !6593
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph94
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i38 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i38, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !154 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !155
  %.not.i.i37 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i37, label %bb.v, label %bb.u, !prof !271

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %6, align 8, !tbaa !153
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !154
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.064.092, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not87, label %._crit_edge95, label %.lr.ph94

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i36 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i36, label %bb.y, label %bb.x, !prof !271

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %11, align 8, !tbaa !153
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !154
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i97, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %14
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.er = load i64, ptr %9, align 8, !tbaa !268
  store i64 %i.er, ptr %12, align 8, !tbaa !268
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.et) #36
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !tbaa.struct !3272
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !1911
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ez = load i8, ptr %i.ey, align 4, !tbaa !3273, !range !258, !noundef !116
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.fb, align 8, !tbaa !268
  %i.fc = load ptr, ptr %8, align 8, !tbaa !153
  %i.fd = load i32, ptr %i.f, align 8, !tbaa !154
  %i.fe = zext i32 %i.fd to i64
  %i.ff = load ptr, ptr %11, align 8, !tbaa !153
  %i.fg = load i32, ptr %i.x, align 8, !tbaa !154
  %i.fh = zext i32 %i.fg to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.fi = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.fi, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ff, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fh, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.fc, ptr %3, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fe, ptr %.sroa.260.0..sroa_idx, align 8
  %i.fj = call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %.124, ptr nonnull readonly %i.ep, i64 7, ptr nonnull readonly %i.eq, i64 poison, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i32 noundef %i.ex, i1 noundef zeroext %i.fa, i32 %.sroa.0.0.copyload.i31, i32 poison, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %7, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !1852
  %.not.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1853
  call void @free(ptr noundef %i.fn) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %.lr.ph, %bb.k, %bb.i, %bb.z, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.fj, %bb.z ], [ %i.fj, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fo = load ptr, ptr %11, align 8, !tbaa !153  ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.w
  br i1 %i.fp, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit
  call void @free(ptr noundef %i.fo) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !1852
  %.not.i.i33 = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i33, label %_ZN5clang12CXXScopeSpecD2Ev.exit34, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1853
  call void @free(ptr noundef %i.ft) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit34

_ZN5clang12CXXScopeSpecD2Ev.exit34:               ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit34
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit34 ], [ null, %bb.b ]
  %i.fu = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.e
  br i1 %i.fv, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fu) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35: ; preds = %.critedge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformOMPMessageClauseEPNS_16OMPMessageClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2011
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !268
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPMessageClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE24TransformOMPNowaitClauseEPNS_15OMPNowaitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2251 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22RebuildOMPNowaitClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.e = and i64 %.sroa.0.0, -2                   ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.g, align 4, !tbaa !268 ; 2 uses
  %i.h = load <2 x i32>, ptr %1, align 8, !tbaa !268
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !193 ; 3 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not28.i.i = icmp eq i32 %.sroa.0.0.copyload.i12, 0
  br i1 %.not28.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i24, ptr %i.f, align 8
  %i.k = and i24 %i.j, 245760
  %or.cond27.not.i.i = icmp eq i24 %i.k, 0
  br i1 %or.cond27.not.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %.val.val, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.m = tail call i64 @_ZN5clang4Sema21CheckBooleanConditionENS_14SourceLocationEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.l, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.f, i1 noundef zeroext false) #36 ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE22RebuildOMPNowaitClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c, %.critedge
  %.117.i.i = phi ptr [ %i.f, %bb.d ], [ null, %.critedge ], [ %i.f, %bb.c ], [ %i.p, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !181  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 688
  %i.t = load i32, ptr %i.s, align 8, !tbaa !154  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 680
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !153
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i.i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -6960
  %i.y = load i32, ptr %i.x, align 8, !tbaa !154  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 28616
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i32 %i.y, %i.aa
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %narrow.i.i.i.i.i.i = sub nuw i32 %i.y, %i.aa
  %i.ab = zext i32 %narrow.i.i.i.i.i.i to i64
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -6968
  %.val5.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !153
  %i.ad = getelementptr [1736 x i8], ptr %.val5.i.i.i.i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 -584
  store i8 1, ptr %i.ae, align 8, !tbaa !2069
  %i.af = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformOMPPrivateClauseEPNS_16OMPPrivateClauseE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1847
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !153
  %i.z = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !193
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPPrivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformOMPProcBindClauseEPNS_17OMPProcBindClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2294
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !268
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !268
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !268
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPProcBindClauseEN4llvm3omp12ProcBindKindENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11)
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE27TransformOMPReductionClauseEPNS_18OMPReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1684 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1684
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not101 = icmp eq i32 %i.h, 0
  br i1 %.not101, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.050102 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.050102, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.050102, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge58, label %.lr.ph

.critedge58:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !1042
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1814
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i61 = load i64, ptr %5, align 8, !tbaa !1042
  %.not97 = icmp eq i64 %.sroa.0.0.copyload.i61, 0
  br i1 %.not97, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.sroa.0.0.copyload.i62 = load i64, ptr %5, align 8, !tbaa !1042
  %.not98 = icmp eq i64 %.sroa.0.0.copyload.i62, 0
  br i1 %.not98, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !155
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !1684 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 5 uses
  %.idx111.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx111.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ae
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ae ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ae
  %.not55106 = icmp eq i32 %i.ad, 0
  br i1 %.not55106, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge110.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.pre114 = load ptr, ptr %7, align 8, !tbaa !153
  %.pre115 = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.am = zext i32 %.pre115 to i64
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge110.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge110.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre114, %._crit_edge110.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !153
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i64, ptr %i.as, align 8
  %.sroa.0.0.copyload.i65 = load i32, ptr %1, align 8, !tbaa !268
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.au, align 4, !tbaa !268
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.av, align 8, !tbaa !268
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i68 = load i32, ptr %i.aw, align 4, !tbaa !268
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i69 = load i32, ptr %i.ax, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 832
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !193
  store ptr %i.ao, ptr %2, align 8, !tbaa !1850
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !1042
  %i.ba = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS0_19OpenMPVarListDataTy30OpenMPReductionClauseModifiersENS_14SourceLocationES8_S8_S8_S8_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %i.az, ptr %i.ap, i64 %i.ar, i64 %i.at, i32 %.sroa.0.0.copyload.i65, i32 %.sroa.0.0.copyload.i66, i32 %.sroa.0.0.copyload.i67, i32 %.sroa.0.0.copyload.i68, i32 %.sroa.0.0.copyload.i69, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2), !inline_history !6594
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bb = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aa
  br i1 %i.bc, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge110
  call void @free(ptr noundef %i.bb) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge110, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph109, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.053107 = phi ptr [ %11, %.lr.ph109 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76 ] ; 2 uses
  %i.bd = load ptr, ptr %.053107, align 8, !tbaa !1046 ; 4 uses
  %.not56 = icmp eq ptr %i.bd, null
  br i1 %.not56, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %i.ag, ptr %8, align 8, !tbaa !153
  store i32 0, ptr %i.ah, align 8, !tbaa !154
  store i32 8, ptr %i.ai, align 4, !tbaa !155
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = and i16 %i.be, 511
  %i.bg = icmp eq i16 %i.bf, 24
  %.1.v.i.i.i.i = select i1 %i.bg, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !196 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %.idx112 = shl nuw nsw i64 %i.bj, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx112
  %.not99103 = icmp eq i32 %i.bi, 0
  br i1 %.not99103, label %._crit_edge, label %.lr.ph105

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bl = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #36 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.bs = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 2 uses
  %i.by = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.bz = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i72 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i72, label %bb.l, label %bb.k, !prof !271

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

bb.l:                                             ; preds = %._crit_edge
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %7, align 8, !tbaa !153
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73: ; preds = %bb.k, %bb.l
  %i.cf = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ag
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73
  call void @free(ptr noundef %i.cf) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

.lr.ph105:                                        ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.082.0104 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.082.0104, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.082.0104, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.aj, align 8, !tbaa !2497, !noalias !6603 ; 3 uses
  %i.ck = load ptr, ptr %i.ak, align 8, !tbaa !2498, !noalias !6603 ; 2 uses
  %i.cl = load i32, ptr %i.al, align 4, !tbaa !1817, !noalias !6603 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph105
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !268, !noalias !6604
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.da = phi i64 [ %i.dg, %bb.o ], [ %i.ct, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.o ], [ %i.cs, %bb.n ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1665, !noalias !6604
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !271

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !268, !noalias !6604
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph105
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i74 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i74, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dr, %bb.p ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.ah, align 8, !tbaa !154 ; 2 uses
  %i.ea = load i32, ptr %i.ai, align 4, !tbaa !155
  %.not.i.i = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !271

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %8, align 8, !tbaa !153
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ah, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.082.0104, i64 8 ; 2 uses
  %.not99 = icmp eq ptr %i.eg, %i.bk
  br i1 %.not99, label %._crit_edge, label %.lr.ph105

bb.s:                                             ; preds = %bb.i
  %i.eh = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.ei = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i75 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i75, label %bb.u, label %bb.t, !prof !271

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

bb.u:                                             ; preds = %bb.s
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %7, align 8, !tbaa !153
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.053107, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.eo, %12
  br i1 %.not55, label %._crit_edge110.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.ba, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !1852
  %.not.i.i77 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i77, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1853
  call void @free(ptr noundef %i.es) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.et = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.a
  br i1 %i.eu, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.et) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE25TransformOMPSafelenClauseEPNS_16OMPSafelenClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2237
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23RebuildOMPSafelenClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !268
  %i.h = load <2 x i32>, ptr %1, align 8, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !193 ; 2 uses
  %i.j = tail call i64 @_ZN5clang10SemaOpenMP37VerifyPositiveIntegerConstantInClauseEPNS_4ExprEN4llvm3omp6ClauseEbb(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 noundef 107, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23RebuildOMPSafelenClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1580 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1581
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !271

bb.d:                                             ; preds = %bb.c
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1580
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i.i

_ZnwmRKN5clang10ASTContextEm.exit.i.i:            ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.u, %bb.e ] ; 5 uses
  %i.v = and i64 %i.j, -2
  %i.w = inttoptr i64 %i.v to ptr
  store <2 x i32> %i.h, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !268
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  store i32 107, ptr %i.x, align 4, !tbaa !1640
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 12
  store i32 %.sroa.0.0.copyload.i8, ptr %i.y, align 4, !tbaa !268
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store ptr %i.w, ptr %i.z, align 8, !tbaa !2237
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23RebuildOMPSafelenClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23RebuildOMPSafelenClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit: ; preds = %_ZnwmRKN5clang10ASTContextEm.exit.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i.i.i.i.i.i, %_ZnwmRKN5clang10ASTContextEm.exit.i.i ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformOMPScheduleClauseEPNS_17OMPScheduleClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2305
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1798
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1798
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !2304
  %i.k = and i64 %i.c, -2
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.m, align 4, !tbaa !268
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.n, align 4, !tbaa !268
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.o, align 8, !tbaa !268
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.p, align 4, !tbaa !268
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.q, align 8, !tbaa !268
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.r, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.s = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.s, align 8, !tbaa !193
  %i.t = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPScheduleClauseENS_28OpenMPScheduleClauseModifierES1_NS_24OpenMPScheduleClauseKindEPNS_4ExprENS_14SourceLocationES5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i19, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE26TransformOMPSeverityClauseEPNS_17OMPSeverityClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2016
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !268
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !268
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !268
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPSeverityClauseENS_24OpenMPSeverityClauseKindENS_14SourceLocationES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11)
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE24TransformOMPSharedClauseEPNS_15OMPSharedClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3278 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3278
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
end_hunk_7
begin_hunk_8_@_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE23TransformOMPSizesClauseEPNS_14OMPSizesClauseE:bb.a
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.j
  %.03151 = phi ptr [ %i.ae, %bb.j ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.03151, align 8, !tbaa !1046 ; 2 uses
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %2, align 8, !tbaa !153
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store ptr null, ptr %i.q, align 1
  %i.r = load i32, ptr %i.b, align 8, !tbaa !154
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !154
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.t = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l) ; 2 uses
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.t, -2
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i35 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i35, label %bb.i, label %bb.h, !prof !271

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.w)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %2, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.w, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !154
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.03151, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.af = load ptr, ptr %2, align 8, !tbaa !153
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ah = zext i32 %i.ag to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ai, align 4, !tbaa !268
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.aj, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ak = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ak, align 8, !tbaa !193
  %i.al = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPSizesClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.af, i64 %i.ah, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i37, i32 %.sroa.0.0.copyload.i38)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %._crit_edge
  %.4 = phi ptr [ %i.al, %._crit_edge ], [ null, %bb.f ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.am) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformOMPTaskReductionClauseEPNS_22OMPTaskReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3280 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3280
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not94 = icmp eq i32 %i.h, 0
  br i1 %.not94, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04695 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04695, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04695, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !1042
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1814
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !1042
  %.not90 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !1042
  %.not91 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not91, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !155
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3280 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 5 uses
  %.idx104.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx104.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ae
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ae ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ae
  %.not5199 = icmp eq i32 %i.ad, 0
  br i1 %.not5199, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge103.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre107 = load ptr, ptr %7, align 8, !tbaa !153
  %.pre108 = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.am = zext i32 %.pre108 to i64
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge103.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre107, %._crit_edge103.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !153
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !268
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !268
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.val.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 832
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !193
  store ptr %i.ao, ptr %2, align 8, !tbaa !1850
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.489.0..sroa_idx, align 8, !tbaa !1042
  %i.ax = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPTaskReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %i.aw, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2), !inline_history !6605
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ay = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.aa
  br i1 %i.az, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge103
  call void @free(ptr noundef %i.ay) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge103, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph102, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.049100 = phi ptr [ %11, %.lr.ph102 ], [ %i.el, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.ba = load ptr, ptr %.049100, align 8, !tbaa !1046 ; 4 uses
  %.not52 = icmp eq ptr %i.ba, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %i.ag, ptr %8, align 8, !tbaa !153
  store i32 0, ptr %i.ah, align 8, !tbaa !154
  store i32 8, ptr %i.ai, align 4, !tbaa !155
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = and i16 %i.bb, 511
  %i.bd = icmp eq i16 %i.bc, 24
  %.1.v.i.i.i.i = select i1 %i.bd, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.1.v.i.i.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !196 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %.idx105 = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx105
  %.not9296 = icmp eq i32 %i.bf, 0
  br i1 %.not9296, label %._crit_edge, label %.lr.ph98

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bi = load ptr, ptr %0, align 8, !tbaa !2475, !nonnull !116, !align !117
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bl = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bk) #36 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.bp = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bk, ptr noundef null, i64 %i.bm, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bs, i64 %i.bt, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 2 uses
  %i.bv = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.bw = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i67 = icmp ult i32 %i.bv, %i.bw
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !271

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bx = zext i32 %i.bv to i64
  %i.by = load ptr, ptr %7, align 8, !tbaa !153
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store ptr %i.bu, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cc = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ag
  br i1 %i.cd, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cc) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph98:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.097 = phi ptr [ %i.ed, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.097, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.097, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !2497, !noalias !6614 ; 3 uses
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !2498, !noalias !6614 ; 2 uses
  %i.ci = load i32, ptr %i.al, align 4, !tbaa !1817, !noalias !6614 ; 4 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph98
  %i.ck = add i32 %i.ci, -1                       ; 2 uses
  %i.cl = mul i64 %i.ce, -4658895280553007687     ; 2 uses
  %i.cm = lshr i64 %i.cl, 31
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = trunc i64 %i.cn to i32
  %i.cp = and i32 %i.ck, %i.co                    ; 3 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 5
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !268, !noalias !6615
  %i.cu = and i32 %i.cp, 31
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cx = phi i64 [ %i.dd, %bb.o ], [ %i.cq, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.dc, %bb.o ], [ %i.cp, %bb.n ]
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cx ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1665, !noalias !6615
  %i.da = icmp eq ptr %i.cz, %i.cf
  br i1 %i.da, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !271

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.db = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dc = and i32 %i.db, %i.ck                    ; 3 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = lshr i64 %i.dd, 5
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !268, !noalias !6615
  %i.dh = and i32 %i.dc, 31
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = trunc i32 %i.di to i1
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph98
  %i.dk = zext i32 %i.ci to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.dk
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ci to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cy, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dl, %.loopexit.i.i.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dm
  br i1 %.not.i69, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.do, %bb.p ], [ %i.cf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = lshr i32 %i.dq, 13
  %i.ds = and i32 %i.dr, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = ptrtoint ptr %.0.i to i64
  %i.dv = or i64 %i.dt, %i.du                     ; 2 uses
  %i.dw = load i32, ptr %i.ah, align 8, !tbaa !154 ; 2 uses
  %i.dx = load i32, ptr %i.ai, align 4, !tbaa !155
  %.not.i.i = icmp ult i32 %i.dw, %i.dx
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !271

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dv)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dy = zext i32 %i.dw to i64
  %i.dz = load ptr, ptr %8, align 8, !tbaa !153
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  store i64 %i.dv, ptr %i.ea, align 1
  %i.eb = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ah, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.077.097, i64 8 ; 2 uses
  %.not92 = icmp eq ptr %i.ed, %i.bh
  br i1 %.not92, label %._crit_edge, label %.lr.ph98

bb.s:                                             ; preds = %bb.i
  %i.ee = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.ef = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i70 = icmp ult i32 %i.ee, %i.ef
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !271

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.eg = zext i32 %i.ee to i64
  %i.eh = load ptr, ptr %7, align 8, !tbaa !153
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg
  store ptr null, ptr %i.ei, align 1
  %i.ej = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.el = getelementptr inbounds nuw i8, ptr %.049100, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.el, %12
  br i1 %.not51, label %._crit_edge103.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.ax, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1852
  %.not.i.i72 = icmp eq i32 %i.en, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1853
  call void @free(ptr noundef %i.ep) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.eq = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.a
  br i1 %i.er, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.eq) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE29TransformOMPThreadLimitClauseEPNS_20OMPThreadLimitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2176", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 3, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3282 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3282
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !153
  %i.z = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !193
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPThreadLimitClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE20TransformOMPToClauseEPNS_11OMPToClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !268
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2071 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1046 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !2071
  %.pre96 = load i32, ptr %i.g, align 4, !tbaa !155
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre96, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store i64 0, ptr %9, align 8, !tbaa !387
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !155
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #36
  %.pre97 = load i32, ptr %i.i, align 4, !tbaa !2071
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre97, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i82 = icmp eq i32 %i.ab, 0
  br i1 %.not.i82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49
  %.058.i83 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i83, align 8, !tbaa !1046
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !6616 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !154 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !155
  %.not.i48 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i48, label %bb.h, label %bb.g, !prof !271

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !153
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !154
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i83, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ar, align 8, !tbaa !1042 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.0.0.copyload.i43, 0
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !1814
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, i64 0, ptr noundef null), !inline_history !6616 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not77 = icmp eq i64 %i.at, 0
  br i1 %.not77, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.068.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.068.0, ptr %.sroa.6.0) #36, !inline_history !6616
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !1042
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !6616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !1042
  %.not79 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not79, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !2071 ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx93 = shl nuw nsw i64 %i.ax, 3
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx93 ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ax
  %.not63.i89 = icmp eq i32 %i.aw, 0
  br i1 %.not63.i89, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i90 = phi ptr [ %11, %.lr.ph92 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i90, align 8, !tbaa !1046 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.ay, ptr %5, align 8, !tbaa !153
  store i32 0, ptr %i.az, align 8, !tbaa !154
  store i32 8, ptr %i.ba, align 4, !tbaa !155
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !196 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx94 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx94
  %.not8084 = icmp eq i32 %i.bj, 0
  br i1 %.not8084, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !2475
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #36, !inline_history !6616 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !154
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #36, !inline_history !6616 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i32 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i32, label %bb.p, label %bb.o, !prof !271

bb.o:                                             ; preds = %._crit_edge88
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

bb.p:                                             ; preds = %._crit_edge88
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %10, align 8, !tbaa !153
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !154
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33
  call void @free(ptr noundef %i.cf) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph87:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.057.085 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.057.085, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.057.085, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2497, !noalias !6625 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2498, !noalias !6625 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !1817, !noalias !6625 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph87
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !268, !noalias !6626
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1665, !noalias !6626
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !271

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !268, !noalias !6626
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph87
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i31 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i31, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !154 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !155
  %.not.i.i30 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i30, label %bb.v, label %bb.u, !prof !271

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %5, align 8, !tbaa !153
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !154
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.057.085, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not80, label %._crit_edge88, label %.lr.ph87

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i29 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i29, label %bb.y, label %bb.x, !prof !271

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %10, align 8, !tbaa !153
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !154
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i90, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %12
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.er = load ptr, ptr %7, align 8, !tbaa !153
  %i.es = load i32, ptr %i.f, align 8, !tbaa !154
  %i.et = zext i32 %i.es to i64
  %i.eu = load ptr, ptr %10, align 8, !tbaa !153
  %i.ev = load i32, ptr %i.x, align 8, !tbaa !154
  %i.ew = zext i32 %i.ev to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.ex = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ex, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.eu, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ew, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.er, ptr %3, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.et, ptr %.sroa.253.0..sroa_idx, align 8
  %i.ey = call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPToClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull readonly %i.ep, i64 3, ptr nonnull readonly %i.eq, i64 poison, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i32 poison, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.ey, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.ez = load ptr, ptr %10, align 8, !tbaa !153  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.w
  br i1 %i.fa, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread
  call void @free(ptr noundef %i.ez) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_111CaptureVarsENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !1852
  %.not.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1853
  call void @free(ptr noundef %i.fe) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.ff = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.e
  br i1 %i.fg, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.ff) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE29TransformOMPTransparentClauseEPNS_20OMPTransparentClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2274
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.g, align 4, !tbaa !268
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.h, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPTransparentClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE21TransformOMPUseClauseEPNS_12OMPUseClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2082
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE19RebuildOMPUseClauseEPNS_4ExprENS_14SourceLocationES6_S6_S6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.h, align 8, !tbaa !268
  %i.i = load <2 x i32>, ptr %i.g, align 4, !tbaa !268
  %i.j = load <2 x i32>, ptr %1, align 8, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !2475
  %i.k = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.k, align 8, !tbaa !193 ; 2 uses
  %i.l = load ptr, ptr %.val.val, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.m = tail call fastcc noundef zeroext i1 @_ZL22isValidInteropVariableRN5clang4SemaEPNS_4ExprENS_14SourceLocationEN4llvm3omp6ClauseE(ptr noundef nonnull align 8 dereferenceable(18640) %i.l, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i11, i32 noundef 130)
  br i1 %i.m, label %bb.c, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE19RebuildOMPUseClauseEPNS_4ExprENS_14SourceLocationES6_S6_S6_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2632 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1580 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 32                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 2640
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1581
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e, !prof !271

bb.d:                                             ; preds = %bb.c
  %i.v = inttoptr i64 %i.r to ptr
  store ptr %i.v, ptr %i.o, align 8, !tbaa !1580
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i.i

_ZnwmRKN5clang10ASTContextEm.exit.i.i:            ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.w, %bb.e ] ; 5 uses
  store <2 x i32> %i.j, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !268
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  store i32 130, ptr %i.x, align 4, !tbaa !1640
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 12
  store <2 x i32> %i.i, ptr %i.y, align 4, !tbaa !268
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  store ptr %i.f, ptr %i.z, align 8, !tbaa !2082
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE19RebuildOMPUseClauseEPNS_4ExprENS_14SourceLocationES6_S6_S6_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE19RebuildOMPUseClauseEPNS_4ExprENS_14SourceLocationES6_S6_S6_.exit: ; preds = %_ZnwmRKN5clang10ASTContextEm.exit.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i.i.i.i.i.i, %_ZnwmRKN5clang10ASTContextEm.exit.i.i ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE31TransformOMPUseDeviceAddrClauseEPNS_22OMPUseDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3284 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3284
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_111CaptureVarsEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
end_hunk_8
begin_hunk_9_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE30TransformOMPFirstprivateClauseEPNS_21OMPFirstprivateClauseE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !153
  %i.z = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !193
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP29ActOnOpenMPFirstprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23TransformOMPFlushClauseEPNS_14OMPFlushClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3248 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3248
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge24
  %i.aa = zext i32 %i.y to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ab = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ab, align 8, !tbaa !193
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !268
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ad, align 4, !tbaa !268
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.ae = load ptr, ptr %2, align 8, !tbaa !153
  %i.af = call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36
  %i.ag = call noundef ptr @_ZN5clang14OMPFlushClause6CreateERKNS_10ASTContextENS_14SourceLocationES4_S4_N4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(23904) %i.af, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26, ptr %i.ae, i64 %i.aa) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge24
  %.3 = phi ptr [ null, %.critedge24 ], [ %i.ag, %bb.f ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformOMPFromClauseEPNS_13OMPFromClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !268
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2073 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1046 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !2073
  %.pre96 = load i32, ptr %i.g, align 4, !tbaa !155
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre96, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store i64 0, ptr %9, align 8, !tbaa !387
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !155
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #36
  %.pre97 = load i32, ptr %i.i, align 4, !tbaa !2073
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre97, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i82 = icmp eq i32 %i.ab, 0
  br i1 %.not.i82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49
  %.058.i83 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i83, align 8, !tbaa !1046
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !7596 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !154 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !155
  %.not.i48 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i48, label %bb.h, label %bb.g, !prof !271

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !153
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !154
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i83, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ar, align 8, !tbaa !1042 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.0.0.copyload.i43, 0
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !1814
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, i64 0, ptr noundef null), !inline_history !7596 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not77 = icmp eq i64 %i.at, 0
  br i1 %.not77, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.068.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.068.0, ptr %.sroa.6.0) #36, !inline_history !7596
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !1042
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !7596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !1042
  %.not79 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not79, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !2073 ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx93 = shl nuw nsw i64 %i.ax, 3
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx93 ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ax
  %.not63.i89 = icmp eq i32 %i.aw, 0
  br i1 %.not63.i89, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i90 = phi ptr [ %11, %.lr.ph92 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i90, align 8, !tbaa !1046 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.ay, ptr %5, align 8, !tbaa !153
  store i32 0, ptr %i.az, align 8, !tbaa !154
  store i32 8, ptr %i.ba, align 4, !tbaa !155
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !196 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx94 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx94
  %.not8084 = icmp eq i32 %i.bj, 0
  br i1 %.not8084, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !3339
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #36, !inline_history !7596 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !154
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #36, !inline_history !7596 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i32 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i32, label %bb.p, label %bb.o, !prof !271

bb.o:                                             ; preds = %._crit_edge88
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

bb.p:                                             ; preds = %._crit_edge88
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %10, align 8, !tbaa !153
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !154
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33
  call void @free(ptr noundef %i.cf) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph87:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.057.085 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.057.085, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.057.085, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2497, !noalias !7605 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2498, !noalias !7605 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !1817, !noalias !7605 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph87
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !268, !noalias !7606
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1665, !noalias !7606
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !271

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !268, !noalias !7606
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph87
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i31 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i31, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !154 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !155
  %.not.i.i30 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i30, label %bb.v, label %bb.u, !prof !271

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %5, align 8, !tbaa !153
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !154
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.057.085, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not80, label %._crit_edge88, label %.lr.ph87

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i29 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i29, label %bb.y, label %bb.x, !prof !271

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %10, align 8, !tbaa !153
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !154
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i90, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %12
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.er = load ptr, ptr %7, align 8, !tbaa !153
  %i.es = load i32, ptr %i.f, align 8, !tbaa !154
  %i.et = zext i32 %i.es to i64
  %i.eu = load ptr, ptr %10, align 8, !tbaa !153
  %i.ev = load i32, ptr %i.x, align 8, !tbaa !154
  %i.ew = zext i32 %i.ev to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ex = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ex, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.eu, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ew, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.er, ptr %3, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.et, ptr %.sroa.253.0..sroa_idx, align 8
  %i.ey = call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFromClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull readonly %i.ep, i64 3, ptr nonnull readonly %i.eq, i64 poison, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i32 poison, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.ey, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.ez = load ptr, ptr %10, align 8, !tbaa !153  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.w
  br i1 %i.fa, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread
  call void @free(ptr noundef %i.ez) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !1852
  %.not.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1853
  call void @free(ptr noundef %i.fe) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.ff = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.e
  br i1 %i.fg, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.ff) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformOMPFullClauseEPNS_13OMPFullClauseE(ptr nofree readonly captures(none) %.0.val, ptr nofree noundef readonly captures(ret: address, provenance) %0) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %.0.val, i64 13800
  %.val.val = load i32, ptr %i.a, align 4, !tbaa !2489
  %.not = icmp eq i32 %.val.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4, !tbaa !268
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i7 = load i32, ptr %i.b, align 4, !tbaa !268
  %i.c = getelementptr i8, ptr %.0.val, i64 832
  %.val6.val = load ptr, ptr %i.c, align 8, !tbaa !193
  %i.d = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val6.val) #36
  %i.e = tail call noundef ptr @_ZN5clang13OMPFullClause6CreateERKNS_10ASTContextENS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i7) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE27TransformOMPGrainsizeClauseEPNS_18OMPGrainsizeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2317
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2316
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.i, align 4, !tbaa !268
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.j, align 4, !tbaa !268
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.k, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !193
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPGrainsizeClauseENS_29OpenMPGrainsizeClauseModifierEPNS_4ExprENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12, i32 %.sroa.0.0.copyload.i13)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3250 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3250
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.y, align 4, !tbaa !268
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.z, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i, ptr %3, align 4, !tbaa !268
end_hunk_9
begin_hunk_10_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformOMPHintClauseEPNS_13OMPHintClauseE:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store ptr %i.w, ptr %i.z, align 8, !tbaa !2002
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20RebuildOMPHintClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20RebuildOMPHintClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit: ; preds = %_ZnwmRKN5clang10ASTContextEm.exit.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i.i.i.i.i.i, %_ZnwmRKN5clang10ASTContextEm.exit.i.i ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23TransformOMPHoldsClauseEPNS_14OMPHoldsClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2253
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !268
  %i.h = load <2 x i32>, ptr %1, align 8, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.j = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2632 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1580 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = add i64 %i.m, 24                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 2640
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1581
  %i.q = icmp ult i64 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d, !prof !271

bb.c:                                             ; preds = %bb.b
  %i.r = inttoptr i64 %i.n to ptr
  store ptr %i.r, ptr %i.k, align 8, !tbaa !1580
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE21RebuildOMPHoldsClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE21RebuildOMPHoldsClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE21RebuildOMPHoldsClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.s, %bb.d ] ; 5 uses
  store <2 x i32> %i.h, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !268
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  store i32 53, ptr %i.t, align 4, !tbaa !1640
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 12
  store i32 %.sroa.0.0.copyload.i8, ptr %i.u, align 4, !tbaa !268
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store ptr %i.f, ptr %i.v, align 8, !tbaa !2253
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE21RebuildOMPHoldsClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit
  %.0 = phi ptr [ %.0.i.i.i.i.i.i, %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE21RebuildOMPHoldsClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20TransformOMPIfClauseEPNS_11OMPIfClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1860
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1857
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.i, align 4, !tbaa !268
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.j, align 8, !tbaa !268
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.k, align 8, !tbaa !268
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.l, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.m = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.n = tail call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPIfClauseEN4llvm3omp9DirectiveEPNS_4ExprENS_14SourceLocationES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i14, i32 %.sroa.0.0.copyload.i15, i32 %.sroa.0.0.copyload.i16)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE29TransformOMPInReductionClauseEPNS_20OMPInReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1794 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1794
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not94 = icmp eq i32 %i.h, 0
  br i1 %.not94, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04695 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04695, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04695, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !1042
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1814
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !1042
  %.not90 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !1042
  %.not91 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not91, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !155
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !1794 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 5 uses
  %.idx104.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx104.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ae
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ae ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ae
  %.not5199 = icmp eq i32 %i.ad, 0
  br i1 %.not5199, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge103.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre107 = load ptr, ptr %7, align 8, !tbaa !153
  %.pre108 = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.am = zext i32 %.pre108 to i64
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge103.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre107, %._crit_edge103.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !153
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !268
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !268
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.val.i = load ptr, ptr %0, align 8, !tbaa !3339
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 832
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !193
  store ptr %i.ao, ptr %2, align 8, !tbaa !1850
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.489.0..sroa_idx, align 8, !tbaa !1042
  %i.ax = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPInReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %i.aw, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2), !inline_history !7607
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ay = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.aa
  br i1 %i.az, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge103
  call void @free(ptr noundef %i.ay) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge103, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph102, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.049100 = phi ptr [ %11, %.lr.ph102 ], [ %i.el, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.ba = load ptr, ptr %.049100, align 8, !tbaa !1046 ; 4 uses
  %.not52 = icmp eq ptr %i.ba, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %i.ag, ptr %8, align 8, !tbaa !153
  store i32 0, ptr %i.ah, align 8, !tbaa !154
  store i32 8, ptr %i.ai, align 4, !tbaa !155
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = and i16 %i.bb, 511
  %i.bd = icmp eq i16 %i.bc, 24
  %.1.v.i.i.i.i = select i1 %i.bd, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.1.v.i.i.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !196 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %.idx105 = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx105
  %.not9296 = icmp eq i32 %i.bf, 0
  br i1 %.not9296, label %._crit_edge, label %.lr.ph98

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bi = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bl = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bk) #36 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.bp = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bk, ptr noundef null, i64 %i.bm, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bs, i64 %i.bt, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 2 uses
  %i.bv = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.bw = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i67 = icmp ult i32 %i.bv, %i.bw
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !271

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bx = zext i32 %i.bv to i64
  %i.by = load ptr, ptr %7, align 8, !tbaa !153
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store ptr %i.bu, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cc = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ag
  br i1 %i.cd, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cc) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph98:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.097 = phi ptr [ %i.ed, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.097, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.097, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !2497, !noalias !7616 ; 3 uses
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !2498, !noalias !7616 ; 2 uses
  %i.ci = load i32, ptr %i.al, align 4, !tbaa !1817, !noalias !7616 ; 4 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph98
  %i.ck = add i32 %i.ci, -1                       ; 2 uses
  %i.cl = mul i64 %i.ce, -4658895280553007687     ; 2 uses
  %i.cm = lshr i64 %i.cl, 31
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = trunc i64 %i.cn to i32
  %i.cp = and i32 %i.ck, %i.co                    ; 3 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 5
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !268, !noalias !7617
  %i.cu = and i32 %i.cp, 31
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cx = phi i64 [ %i.dd, %bb.o ], [ %i.cq, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.dc, %bb.o ], [ %i.cp, %bb.n ]
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cx ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1665, !noalias !7617
  %i.da = icmp eq ptr %i.cz, %i.cf
  br i1 %i.da, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !271

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.db = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dc = and i32 %i.db, %i.ck                    ; 3 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = lshr i64 %i.dd, 5
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !268, !noalias !7617
  %i.dh = and i32 %i.dc, 31
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = trunc i32 %i.di to i1
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph98
  %i.dk = zext i32 %i.ci to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.dk
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ci to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cy, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dl, %.loopexit.i.i.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dm
  br i1 %.not.i69, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.do, %bb.p ], [ %i.cf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = lshr i32 %i.dq, 13
  %i.ds = and i32 %i.dr, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = ptrtoint ptr %.0.i to i64
  %i.dv = or i64 %i.dt, %i.du                     ; 2 uses
  %i.dw = load i32, ptr %i.ah, align 8, !tbaa !154 ; 2 uses
  %i.dx = load i32, ptr %i.ai, align 4, !tbaa !155
  %.not.i.i = icmp ult i32 %i.dw, %i.dx
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !271

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dv)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dy = zext i32 %i.dw to i64
  %i.dz = load ptr, ptr %8, align 8, !tbaa !153
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  store i64 %i.dv, ptr %i.ea, align 1
  %i.eb = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ah, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.077.097, i64 8 ; 2 uses
  %.not92 = icmp eq ptr %i.ed, %i.bh
  br i1 %.not92, label %._crit_edge, label %.lr.ph98

bb.s:                                             ; preds = %bb.i
  %i.ee = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.ef = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i70 = icmp ult i32 %i.ee, %i.ef
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !271

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.eg = zext i32 %i.ee to i64
  %i.eh = load ptr, ptr %7, align 8, !tbaa !153
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg
  store ptr null, ptr %i.ei, align 1
  %i.ej = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.el = getelementptr inbounds nuw i8, ptr %.049100, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.el, %12
  br i1 %.not51, label %._crit_edge103.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.ax, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1852
  %.not.i.i72 = icmp eq i32 %i.en, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1853
  call void @free(ptr noundef %i.ep) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.eq = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.a
  br i1 %i.er, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.eq) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE27TransformOMPInclusiveClauseEPNS_18OMPInclusiveClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3252 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3252
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !153
  %i.z = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !193
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPInclusiveClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22TransformOMPInitClauseEPNS_13OMPInitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"struct.clang::OMPInteropInfo", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"class.llvm::SmallVector.2018", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1046
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3253, !range !258, !noundef !116
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !2080, !range !258, !noundef !116
  store i8 %i.g, ptr %2, align 8, !tbaa !3260
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !3261
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.k, align 2, !tbaa !3262
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !153
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !154
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.o, align 4, !tbaa !155
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !3263, !noalias !7632 ; 2 uses
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3264, !noalias !7632
  %i.v = add i32 %i.u, %i.q
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %.not7982 = icmp eq i32 %i.r, 0
  br i1 %.not7982, label %._crit_edge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph84, %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit
  %.sroa.067.083 = phi i64 [ 0, %.lr.ph84 ], [ %i.ah, %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit ] ; 4 uses
  %i.ab = icmp eq i64 %.sroa.067.083, 0
  br i1 %i.ab, label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add nuw nsw i64 %.sroa.067.083, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !268, !noalias !7633
  br label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit

_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit: ; preds = %bb.c, %bb.d
  %i.ag = phi i32 [ %i.af, %bb.d ], [ 0, %bb.c ]  ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.067.083, 1       ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1046, !noalias !7633 ; 2 uses
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !3263, !noalias !7633
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.an = zext i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE29TransformOMPIsDevicePtrClauseEPNS_20OMPIsDevicePtrClauseE:bb.a
  store i32 %.sroa.0.0.copyload.i25, ptr %i.aa, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ab, align 4, !tbaa !268
  %i.ac = load ptr, ptr %2, align 8, !tbaa !153
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ae = zext i32 %i.ad to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.af = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !193
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPIsDevicePtrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ag, %.critedge24 ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE29TransformOMPLastprivateClauseEPNS_20OMPLastprivateClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1642 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1642
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %.critedge29, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02538 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02538, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge29, label %.lr.ph

.critedge29:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !153
  %i.z = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !3270
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ad, align 4, !tbaa !268
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ae, align 8, !tbaa !268
  %.sroa.0.0.copyload.i31 = load i32, ptr %1, align 8, !tbaa !268
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.af, align 4, !tbaa !268
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.ag, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ah = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ah, align 8, !tbaa !193
  %i.ai = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPLastprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_25OpenMPLastprivateModifierENS_14SourceLocationES7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.y, i64 %i.aa, i32 noundef %i.ac, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i30, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, i32 %.sroa.0.0.copyload.i33)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge29
  %.3 = phi ptr [ %i.ai, %.critedge29 ], [ null, %.lr.ph ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.aj) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE24TransformOMPLinearClauseEPNS_15OMPLinearClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2230 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2230
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %.critedge32, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02844 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02844, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02844, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge32.loopexit, label %.lr.ph

.critedge32.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.pre45 = load i32, ptr %i.d, align 4, !tbaa !2230
  %i.y = zext i32 %.pre45 to i64
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge32.loopexit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.z = phi i64 [ %i.y, %.critedge32.loopexit ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 5 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.z
  %4 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.z
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.z
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1046
  %i.ac = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ab) ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge32
  %i.ae = load ptr, ptr %2, align 8, !tbaa !153
  %i.af = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ag = zext i32 %i.af to i64
  %i.ah = and i64 %i.ac, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2233
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i34 = load i32, ptr %i.am, align 4, !tbaa !268
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i35 = load i32, ptr %i.an, align 8, !tbaa !268
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.ao, align 4, !tbaa !268
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ap, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.aq = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.aq, align 8, !tbaa !193
  %i.ar = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPLinearClauseEN4llvm8ArrayRefIPNS_4ExprEEES4_NS_14SourceLocationES6_NS_22OpenMPLinearClauseKindES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.ae, i64 %i.ag, ptr noundef %i.ai, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i33, i32 noundef %i.al, i32 %.sroa.0.0.copyload.i34, i32 %.sroa.0.0.copyload.i35, i32 %.sroa.0.0.copyload.i36, i32 %.sroa.0.0.copyload.i37)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge32
  %.4 = phi ptr [ null, %.critedge32 ], [ %i.ar, %bb.f ], [ null, %.lr.ph ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.as) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE27TransformOMPLoopRangeClauseEPNS_18OMPLoopRangeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1724
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1724
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = and i64 %i.g, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1724
  %.not = icmp eq ptr %i.m, %i.j
  br i1 %.not, label %bb.d, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.c
  %.val20.pre = load ptr, ptr %0, align 8, !tbaa !3339
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1724
  %.not28 = icmp eq ptr %i.n, %i.l
  %.val20.pre30 = load ptr, ptr %0, align 8, !tbaa !3339 ; 3 uses
  br i1 %.not28, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val20.pre30, i64 13800
  %.val.val = load i32, ptr %i.o, align 4, !tbaa !2489
  %.not29 = icmp eq i32 %.val.val, 0
  br i1 %.not29, label %bb.f, label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.e, %bb.d
  %.val20 = phi ptr [ %.val20.pre, %..critedge_crit_edge ], [ %.val20.pre30, %bb.e ], [ %.val20.pre30, %bb.d ]
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.p, align 4, !tbaa !268
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.q, align 8, !tbaa !268
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.r, align 4, !tbaa !268
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.s, align 4, !tbaa !268
  %i.t = getelementptr i8, ptr %.val20, i64 832
  %.val20.val = load ptr, ptr %i.t, align 8, !tbaa !193 ; 3 uses
  %i.u = tail call i64 @_ZN5clang10SemaOpenMP37VerifyPositiveIntegerConstantInClauseEPNS_4ExprEN4llvm3omp6ClauseEbb(ptr noundef nonnull align 8 dereferenceable(552) %.val20.val, ptr noundef %i.j, i32 noundef 70, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.v = icmp eq i64 %i.u, 1
  %spec.select.i.i = select i1 %i.v, ptr null, ptr %i.j
  %i.w = tail call i64 @_ZN5clang10SemaOpenMP37VerifyPositiveIntegerConstantInClauseEPNS_4ExprEN4llvm3omp6ClauseEbb(ptr noundef nonnull align 8 dereferenceable(552) %.val20.val, ptr noundef %i.l, i32 noundef 70, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.x = icmp eq i64 %i.w, 1
  %.014.i.i = select i1 %i.x, ptr null, ptr %i.l
  %i.y = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val20.val) #36
  %i.z = tail call noundef ptr @_ZN5clang18OMPLoopRangeClause6CreateERKNS_10ASTContextENS_14SourceLocationES4_S4_S4_S4_PNS_4ExprES6_(ptr noundef nonnull align 8 dereferenceable(23904) %i.y, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24, ptr noundef %spec.select.i.i, ptr noundef %.014.i.i) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %.critedge, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.z, %.critedge ], [ %1, %bb.e ]
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE21TransformOMPMapClauseEPNS_12OMPMapClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %6 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %7 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %9 = alloca %"class.clang::CXXScopeSpec", align 8 ; 10 uses
  %10 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %11 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  %12 = alloca %"class.clang::CXXScopeSpec", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.a, align 4, !tbaa !268
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.b, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i, ptr %7, align 4, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0.0.copyload.i27, ptr %i.c, align 4, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.0.0.copyload.i28, ptr %i.d, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1855 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1046 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !1855
  %.pre103 = load i32, ptr %i.g, align 4, !tbaa !155
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre103, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.124 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store i64 0, ptr %10, align 8, !tbaa !387
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.w, ptr %11, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !155
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #36
  %.pre104 = load i32, ptr %i.i, align 4, !tbaa !1855
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre104, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i89 = icmp eq i32 %i.ab, 0
  br i1 %.not.i89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56
  %.058.i90 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i90, align 8, !tbaa !1046
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !7634 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !154 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !155
  %.not.i55 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i55, label %bb.h, label %bb.g, !prof !271

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %8, align 8, !tbaa !153
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !154
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i90, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i50 = load i64, ptr %i.ar, align 8, !tbaa !1042 ; 2 uses
  %.not83 = icmp eq i64 %.sroa.0.0.copyload.i50, 0
  br i1 %.not83, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i52 = load ptr, ptr %.sroa.2.0..sroa_idx.i51, align 8, !tbaa !1814
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i50, ptr %.sroa.2.0.copyload.i52, i64 0, ptr noundef null), !inline_history !7634 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not84 = icmp eq i64 %i.at, 0
  br i1 %.not84, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.075.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 %.sroa.075.0, ptr %.sroa.6.0) #36, !inline_history !7634
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i46 = load i64, ptr %10, align 8, !tbaa !1042
  %.not85 = icmp eq i64 %.sroa.0.0.copyload.i46, 0
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !7634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.sroa.0.0.copyload.i45 = load i64, ptr %10, align 8, !tbaa !1042
  %.not86 = icmp eq i64 %.sroa.0.0.copyload.i45, 0
  br i1 %.not86, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !1855 ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx100 = shl nuw nsw i64 %i.ax, 3
  %13 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx100 ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.ax
  %.not63.i96 = icmp eq i32 %i.aw, 0
  br i1 %.not63.i96, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph99, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i97 = phi ptr [ %13, %.lr.ph99 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i97, align 8, !tbaa !1046 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store ptr %i.ay, ptr %6, align 8, !tbaa !153
  store i32 0, ptr %i.az, align 8, !tbaa !154
  store i32 8, ptr %i.ba, align 4, !tbaa !155
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !196 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx101 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx101
  %.not8791 = icmp eq i32 %i.bj, 0
  br i1 %.not8791, label %._crit_edge95, label %.lr.ph94

._crit_edge95:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !3339
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #36, !inline_history !7634 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !154
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #36, !inline_history !7634 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i39 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i39, label %bb.p, label %bb.o, !prof !271

bb.o:                                             ; preds = %._crit_edge95
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40

bb.p:                                             ; preds = %._crit_edge95
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %11, align 8, !tbaa !153
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !154
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %6, align 8, !tbaa !153   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40
  call void @free(ptr noundef %i.cf) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph94:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.064.092 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.064.092, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.064.092, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2497, !noalias !7643 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2498, !noalias !7643 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !1817, !noalias !7643 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph94
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !268, !noalias !7644
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1665, !noalias !7644
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !271

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !268, !noalias !7644
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph94
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i38 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i38, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !154 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !155
  %.not.i.i37 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i37, label %bb.v, label %bb.u, !prof !271

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %6, align 8, !tbaa !153
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !154
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.064.092, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not87, label %._crit_edge95, label %.lr.ph94

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i36 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i36, label %bb.y, label %bb.x, !prof !271

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %11, align 8, !tbaa !153
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !154
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i97, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %14
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.er = load i64, ptr %9, align 8, !tbaa !268
  store i64 %i.er, ptr %12, align 8, !tbaa !268
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.et) #36
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !tbaa.struct !3272
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !1911
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ez = load i8, ptr %i.ey, align 4, !tbaa !3273, !range !258, !noundef !116
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.fb, align 8, !tbaa !268
  %i.fc = load ptr, ptr %8, align 8, !tbaa !153
  %i.fd = load i32, ptr %i.f, align 8, !tbaa !154
  %i.fe = zext i32 %i.fd to i64
  %i.ff = load ptr, ptr %11, align 8, !tbaa !153
  %i.fg = load i32, ptr %i.x, align 8, !tbaa !154
  %i.fh = zext i32 %i.fg to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.fi = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.fi, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ff, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fh, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.fc, ptr %3, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.fe, ptr %.sroa.260.0..sroa_idx, align 8
  %i.fj = call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %.124, ptr nonnull readonly %i.ep, i64 7, ptr nonnull readonly %i.eq, i64 poison, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i32 noundef %i.ex, i1 noundef zeroext %i.fa, i32 %.sroa.0.0.copyload.i31, i32 poison, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %7, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !1852
  %.not.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1853
  call void @free(ptr noundef %i.fn) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %.lr.ph, %bb.k, %bb.i, %bb.z, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.fj, %bb.z ], [ %i.fj, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fo = load ptr, ptr %11, align 8, !tbaa !153  ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.w
  br i1 %i.fp, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit
  call void @free(ptr noundef %i.fo) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !1852
  %.not.i.i33 = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i33, label %_ZN5clang12CXXScopeSpecD2Ev.exit34, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1853
  call void @free(ptr noundef %i.ft) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit34

_ZN5clang12CXXScopeSpecD2Ev.exit34:               ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit34
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit34 ], [ null, %bb.b ]
  %i.fu = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.e
  br i1 %i.fv, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fu) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35: ; preds = %.critedge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE25TransformOMPMessageClauseEPNS_16OMPMessageClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2011
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !268
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPMessageClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE24TransformOMPNowaitClauseEPNS_15OMPNowaitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2251 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22RebuildOMPNowaitClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.e = and i64 %.sroa.0.0, -2                   ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.g, align 4, !tbaa !268 ; 2 uses
  %i.h = load <2 x i32>, ptr %1, align 8, !tbaa !268
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !193 ; 3 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not28.i.i = icmp eq i32 %.sroa.0.0.copyload.i12, 0
  br i1 %.not28.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i24, ptr %i.f, align 8
  %i.k = and i24 %i.j, 245760
  %or.cond27.not.i.i = icmp eq i24 %i.k, 0
  br i1 %or.cond27.not.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %.val.val, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.m = tail call i64 @_ZN5clang4Sema21CheckBooleanConditionENS_14SourceLocationEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.l, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.f, i1 noundef zeroext false) #36 ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE22RebuildOMPNowaitClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c, %.critedge
  %.117.i.i = phi ptr [ %i.f, %bb.d ], [ null, %.critedge ], [ %i.f, %bb.c ], [ %i.p, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !181  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 688
  %i.t = load i32, ptr %i.s, align 8, !tbaa !154  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 680
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !153
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [6968 x i8], ptr %.val2.i.i.i.i.i.i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -6960
  %i.y = load i32, ptr %i.x, align 8, !tbaa !154  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 28616
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i32 %i.y, %i.aa
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %narrow.i.i.i.i.i.i = sub nuw i32 %i.y, %i.aa
  %i.ab = zext i32 %narrow.i.i.i.i.i.i to i64
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 -6968
  %.val5.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !153
  %i.ad = getelementptr [1736 x i8], ptr %.val5.i.i.i.i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 -584
  store i8 1, ptr %i.ae, align 8, !tbaa !2069
  %i.af = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE25TransformOMPPrivateClauseEPNS_16OMPPrivateClauseE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1847
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !153
  %i.z = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !193
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPPrivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr readonly %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformOMPProcBindClauseEPNS_17OMPProcBindClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2294
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !268
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !268
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !268
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPProcBindClauseEN4llvm3omp12ProcBindKindENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11)
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE27TransformOMPReductionClauseEPNS_18OMPReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1684 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1684
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not101 = icmp eq i32 %i.h, 0
  br i1 %.not101, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.050102 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.050102, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.050102, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge58, label %.lr.ph

.critedge58:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !1042
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1814
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i61 = load i64, ptr %5, align 8, !tbaa !1042
  %.not97 = icmp eq i64 %.sroa.0.0.copyload.i61, 0
  br i1 %.not97, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.sroa.0.0.copyload.i62 = load i64, ptr %5, align 8, !tbaa !1042
  %.not98 = icmp eq i64 %.sroa.0.0.copyload.i62, 0
  br i1 %.not98, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !155
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !1684 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 5 uses
  %.idx111.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx111.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ae
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ae ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ae
  %.not55106 = icmp eq i32 %i.ad, 0
  br i1 %.not55106, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge110.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.pre114 = load ptr, ptr %7, align 8, !tbaa !153
  %.pre115 = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.am = zext i32 %.pre115 to i64
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge110.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge110.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre114, %._crit_edge110.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !153
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i64, ptr %i.as, align 8
  %.sroa.0.0.copyload.i65 = load i32, ptr %1, align 8, !tbaa !268
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.au, align 4, !tbaa !268
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.av, align 8, !tbaa !268
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i68 = load i32, ptr %i.aw, align 4, !tbaa !268
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i69 = load i32, ptr %i.ax, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.val.i = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 832
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !193
  store ptr %i.ao, ptr %2, align 8, !tbaa !1850
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.494.0..sroa_idx, align 8, !tbaa !1042
  %i.ba = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS0_19OpenMPVarListDataTy30OpenMPReductionClauseModifiersENS_14SourceLocationES8_S8_S8_S8_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %i.az, ptr %i.ap, i64 %i.ar, i64 %i.at, i32 %.sroa.0.0.copyload.i65, i32 %.sroa.0.0.copyload.i66, i32 %.sroa.0.0.copyload.i67, i32 %.sroa.0.0.copyload.i68, i32 %.sroa.0.0.copyload.i69, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2), !inline_history !7645
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bb = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aa
  br i1 %i.bc, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge110
  call void @free(ptr noundef %i.bb) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge110, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph109, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.053107 = phi ptr [ %11, %.lr.ph109 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76 ] ; 2 uses
  %i.bd = load ptr, ptr %.053107, align 8, !tbaa !1046 ; 4 uses
  %.not56 = icmp eq ptr %i.bd, null
  br i1 %.not56, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %i.ag, ptr %8, align 8, !tbaa !153
  store i32 0, ptr %i.ah, align 8, !tbaa !154
  store i32 8, ptr %i.ai, align 4, !tbaa !155
  %i.be = load i16, ptr %i.bd, align 8
  %i.bf = and i16 %i.be, 511
  %i.bg = icmp eq i16 %i.bf, 24
  %.1.v.i.i.i.i = select i1 %i.bg, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !196 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %.idx112 = shl nuw nsw i64 %i.bj, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx112
  %.not99103 = icmp eq i32 %i.bi, 0
  br i1 %.not99103, label %._crit_edge, label %.lr.ph105

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bl = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #36 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.bs = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 2 uses
  %i.by = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.bz = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i72 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i72, label %bb.l, label %bb.k, !prof !271

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

bb.l:                                             ; preds = %._crit_edge
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %7, align 8, !tbaa !153
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73: ; preds = %bb.k, %bb.l
  %i.cf = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ag
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73
  call void @free(ptr noundef %i.cf) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

.lr.ph105:                                        ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.082.0104 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.082.0104, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.082.0104, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.aj, align 8, !tbaa !2497, !noalias !7654 ; 3 uses
  %i.ck = load ptr, ptr %i.ak, align 8, !tbaa !2498, !noalias !7654 ; 2 uses
  %i.cl = load i32, ptr %i.al, align 4, !tbaa !1817, !noalias !7654 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph105
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !268, !noalias !7655
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.da = phi i64 [ %i.dg, %bb.o ], [ %i.ct, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.o ], [ %i.cs, %bb.n ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1665, !noalias !7655
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !271

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !268, !noalias !7655
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph105
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i74 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i74, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dr, %bb.p ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.ah, align 8, !tbaa !154 ; 2 uses
  %i.ea = load i32, ptr %i.ai, align 4, !tbaa !155
  %.not.i.i = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !271

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %8, align 8, !tbaa !153
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ah, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.082.0104, i64 8 ; 2 uses
  %.not99 = icmp eq ptr %i.eg, %i.bk
  br i1 %.not99, label %._crit_edge, label %.lr.ph105

bb.s:                                             ; preds = %bb.i
  %i.eh = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.ei = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i75 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i75, label %bb.u, label %bb.t, !prof !271

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

bb.u:                                             ; preds = %bb.s
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %7, align 8, !tbaa !153
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.053107, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.eo, %12
  br i1 %.not55, label %._crit_edge110.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.ba, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !1852
  %.not.i.i77 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i77, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !1853
  call void @free(ptr noundef %i.es) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.et = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.a
  br i1 %i.eu, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.et) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE25TransformOMPSafelenClauseEPNS_16OMPSafelenClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2237
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23RebuildOMPSafelenClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !268
  %i.h = load <2 x i32>, ptr %1, align 8, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !193 ; 2 uses
  %i.j = tail call i64 @_ZN5clang10SemaOpenMP37VerifyPositiveIntegerConstantInClauseEPNS_4ExprEN4llvm3omp6ClauseEbb(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 noundef 107, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23RebuildOMPSafelenClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2632 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1580 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, 24                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 2640
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1581
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !271

bb.d:                                             ; preds = %bb.c
  %i.t = inttoptr i64 %i.p to ptr
  store ptr %i.t, ptr %i.m, align 8, !tbaa !1580
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i.i

_ZnwmRKN5clang10ASTContextEm.exit.i.i:            ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.u, %bb.e ] ; 5 uses
  %i.v = and i64 %i.j, -2
  %i.w = inttoptr i64 %i.v to ptr
  store <2 x i32> %i.h, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !268
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  store i32 107, ptr %i.x, align 4, !tbaa !1640
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 12
  store i32 %.sroa.0.0.copyload.i8, ptr %i.y, align 4, !tbaa !268
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store ptr %i.w, ptr %i.z, align 8, !tbaa !2237
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23RebuildOMPSafelenClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23RebuildOMPSafelenClauseEPNS_4ExprENS_14SourceLocationES6_S6_.exit: ; preds = %_ZnwmRKN5clang10ASTContextEm.exit.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i.i.i.i.i.i, %_ZnwmRKN5clang10ASTContextEm.exit.i.i ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformOMPScheduleClauseEPNS_17OMPScheduleClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2305
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1798
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1798
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !2304
  %i.k = and i64 %i.c, -2
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.m, align 4, !tbaa !268
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.n, align 4, !tbaa !268
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.o, align 8, !tbaa !268
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.p, align 4, !tbaa !268
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.q, align 8, !tbaa !268
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.r, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.s = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.s, align 8, !tbaa !193
  %i.t = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPScheduleClauseENS_28OpenMPScheduleClauseModifierES1_NS_24OpenMPScheduleClauseKindEPNS_4ExprENS_14SourceLocationES5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i19, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE26TransformOMPSeverityClauseEPNS_17OMPSeverityClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2016
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !268
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !268
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !268
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPSeverityClauseENS_24OpenMPSeverityClauseKindENS_14SourceLocationES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11)
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE24TransformOMPSharedClauseEPNS_15OMPSharedClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3278 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3278
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
end_hunk_12
begin_hunk_13_@_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE23TransformOMPSizesClauseEPNS_14OMPSizesClauseE:bb.a
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %2, align 8, !tbaa !153
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store ptr null, ptr %i.q, align 1
  %i.r = load i32, ptr %i.b, align 8, !tbaa !154
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !154
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.t = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l) ; 2 uses
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.t, -2
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %.not34 = icmp ne ptr %i.l, %i.w
  %spec.select = select i1 %.not34, i1 true, i1 %.02355 ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i36 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i36, label %bb.i, label %bb.h, !prof !271

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.w)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %2, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.w, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !154
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.i
  %.326.ph = phi i1 [ %spec.select, %bb.i ], [ %spec.select, %bb.h ], [ %.02355, %bb.d ], [ %.02355, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03154, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j
  br i1 %.326.ph, label %._crit_edge._crit_edge, label %.critedge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.val35.pre = load ptr, ptr %0, align 8, !tbaa !3339
  br label %bb.k

.critedge:                                        ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %._crit_edge
  %.val = load ptr, ptr %0, align 8, !tbaa !3339  ; 2 uses
  %i.af = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.af, align 4, !tbaa !2489
  %.not51 = icmp eq i32 %.val.val, 0
  br i1 %.not51, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge, %.critedge
  %.val35 = phi ptr [ %.val35.pre, %._crit_edge._crit_edge ], [ %.val, %.critedge ]
  %i.ag = load ptr, ptr %2, align 8, !tbaa !153
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ai = zext i32 %i.ah to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.aj, align 4, !tbaa !268
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i39 = load i32, ptr %i.ak, align 4, !tbaa !268
  %i.al = getelementptr i8, ptr %.val35, i64 832
  %.val35.val = load ptr, ptr %i.al, align 8, !tbaa !193
  %i.am = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPSizesClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val35.val, ptr readonly %i.ag, i64 %i.ai, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i38, i32 %.sroa.0.0.copyload.i39)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %.critedge, %bb.k
  %.4 = phi ptr [ %i.am, %bb.k ], [ %1, %.critedge ], [ null, %bb.f ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.an) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE31TransformOMPTaskReductionClauseEPNS_22OMPTaskReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3280 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3280
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not94 = icmp eq i32 %i.h, 0
  br i1 %.not94, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04695 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04695, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04695, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !1042
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1814
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !1042
  %.not90 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !1042
  %.not91 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not91, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !155
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3280 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 5 uses
  %.idx104.a = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx104.a
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ae
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ae ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ae
  %.not5199 = icmp eq i32 %i.ad, 0
  br i1 %.not5199, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge103.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre107 = load ptr, ptr %7, align 8, !tbaa !153
  %.pre108 = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.am = zext i32 %.pre108 to i64
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge103.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre107, %._crit_edge103.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !153
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !154
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !268
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !268
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.val.i = load ptr, ptr %0, align 8, !tbaa !3339
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 832
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !193
  store ptr %i.ao, ptr %2, align 8, !tbaa !1850
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.489.0..sroa_idx, align 8, !tbaa !1042
  %i.ax = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPTaskReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %i.aw, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2), !inline_history !7656
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ay = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.aa
  br i1 %i.az, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge103
  call void @free(ptr noundef %i.ay) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge103, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph102, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.049100 = phi ptr [ %11, %.lr.ph102 ], [ %i.el, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.ba = load ptr, ptr %.049100, align 8, !tbaa !1046 ; 4 uses
  %.not52 = icmp eq ptr %i.ba, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store ptr %i.ag, ptr %8, align 8, !tbaa !153
  store i32 0, ptr %i.ah, align 8, !tbaa !154
  store i32 8, ptr %i.ai, align 4, !tbaa !155
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = and i16 %i.bb, 511
  %i.bd = icmp eq i16 %i.bc, 24
  %.1.v.i.i.i.i = select i1 %i.bd, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.1.v.i.i.i.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !196 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %.idx105 = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx105
  %.not9296 = icmp eq i32 %i.bf, 0
  br i1 %.not9296, label %._crit_edge, label %.lr.ph98

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bi = load ptr, ptr %0, align 8, !tbaa !3339, !nonnull !116, !align !117
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bl = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bk) #36 ; 2 uses
  %i.bm = extractvalue { i64, ptr } %i.bl, 0
  %i.bn = extractvalue { i64, ptr } %i.bl, 1
  %i.bo = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.bp = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bk, ptr noundef null, i64 %i.bm, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bs, i64 %i.bt, i1 noundef zeroext false, i1 noundef zeroext false) #36 ; 2 uses
  %i.bv = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.bw = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i67 = icmp ult i32 %i.bv, %i.bw
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !271

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bx = zext i32 %i.bv to i64
  %i.by = load ptr, ptr %7, align 8, !tbaa !153
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store ptr %i.bu, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cc = load ptr, ptr %8, align 8, !tbaa !153   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ag
  br i1 %i.cd, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cc) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph98:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.097 = phi ptr [ %i.ed, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.097, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.097, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !2497, !noalias !7665 ; 3 uses
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !2498, !noalias !7665 ; 2 uses
  %i.ci = load i32, ptr %i.al, align 4, !tbaa !1817, !noalias !7665 ; 4 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph98
  %i.ck = add i32 %i.ci, -1                       ; 2 uses
  %i.cl = mul i64 %i.ce, -4658895280553007687     ; 2 uses
  %i.cm = lshr i64 %i.cl, 31
  %i.cn = xor i64 %i.cm, %i.cl
  %i.co = trunc i64 %i.cn to i32
  %i.cp = and i32 %i.ck, %i.co                    ; 3 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 5
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !268, !noalias !7666
  %i.cu = and i32 %i.cp, 31
  %i.cv = lshr i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cx = phi i64 [ %i.dd, %bb.o ], [ %i.cq, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.dc, %bb.o ], [ %i.cp, %bb.n ]
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cx ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1665, !noalias !7666
  %i.da = icmp eq ptr %i.cz, %i.cf
  br i1 %i.da, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !271

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.db = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dc = and i32 %i.db, %i.ck                    ; 3 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = lshr i64 %i.dd, 5
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !268, !noalias !7666
  %i.dh = and i32 %i.dc, 31
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = trunc i32 %i.di to i1
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph98
  %i.dk = zext i32 %i.ci to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.dk
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ci to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cy, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dl, %.loopexit.i.i.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dm
  br i1 %.not.i69, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.do, %bb.p ], [ %i.cf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = lshr i32 %i.dq, 13
  %i.ds = and i32 %i.dr, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = ptrtoint ptr %.0.i to i64
  %i.dv = or i64 %i.dt, %i.du                     ; 2 uses
  %i.dw = load i32, ptr %i.ah, align 8, !tbaa !154 ; 2 uses
  %i.dx = load i32, ptr %i.ai, align 4, !tbaa !155
  %.not.i.i = icmp ult i32 %i.dw, %i.dx
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !271

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dv)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dy = zext i32 %i.dw to i64
  %i.dz = load ptr, ptr %8, align 8, !tbaa !153
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  store i64 %i.dv, ptr %i.ea, align 1
  %i.eb = load i32, ptr %i.ah, align 8, !tbaa !154
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ah, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.077.097, i64 8 ; 2 uses
  %.not92 = icmp eq ptr %i.ed, %i.bh
  br i1 %.not92, label %._crit_edge, label %.lr.ph98

bb.s:                                             ; preds = %bb.i
  %i.ee = load i32, ptr %i.ab, align 8, !tbaa !154 ; 2 uses
  %i.ef = load i32, ptr %i.ac, align 4, !tbaa !155
  %.not.i70 = icmp ult i32 %i.ee, %i.ef
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !271

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.eg = zext i32 %i.ee to i64
  %i.eh = load ptr, ptr %7, align 8, !tbaa !153
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg
  store ptr null, ptr %i.ei, align 1
  %i.ej = load i32, ptr %i.ab, align 8, !tbaa !154
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ab, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.el = getelementptr inbounds nuw i8, ptr %.049100, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.el, %12
  br i1 %.not51, label %._crit_edge103.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.ax, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1852
  %.not.i.i72 = icmp eq i32 %i.en, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1853
  call void @free(ptr noundef %i.ep) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.eq = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.a
  br i1 %i.er, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.eq) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE29TransformOMPThreadLimitClauseEPNS_20OMPThreadLimitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2176", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 3, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3282 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3282
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !155
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !271

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !153
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !154
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !153
  %i.z = load i32, ptr %i.b, align 8, !tbaa !154
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !193
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPThreadLimitClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !153   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE20TransformOMPToClauseEPNS_11OMPToClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1289", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.2113", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !268
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !268
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !268
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2071 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1046 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !2071
  %.pre96 = load i32, ptr %i.g, align 4, !tbaa !155
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre96, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store i64 0, ptr %9, align 8, !tbaa !387
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !161
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !155
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #36
  %.pre97 = load i32, ptr %i.i, align 4, !tbaa !2071
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre97, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i82 = icmp eq i32 %i.ab, 0
  br i1 %.not.i82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49
  %.058.i83 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i83, align 8, !tbaa !1046
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !7667 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !154 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !155
  %.not.i48 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i48, label %bb.h, label %bb.g, !prof !271

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !153
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !154
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i83, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ar, align 8, !tbaa !1042 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.0.0.copyload.i43, 0
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !1814
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, i64 0, ptr noundef null), !inline_history !7667 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not77 = icmp eq i64 %i.at, 0
  br i1 %.not77, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.068.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.068.0, ptr %.sroa.6.0) #36, !inline_history !7667
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1625
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !1042
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !7667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1625
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !1042
  %.not79 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not79, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !2071 ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx93 = shl nuw nsw i64 %i.ax, 3
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx93 ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ax
  %.not63.i89 = icmp eq i32 %i.aw, 0
  br i1 %.not63.i89, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i90 = phi ptr [ %11, %.lr.ph92 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i90, align 8, !tbaa !1046 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %i.ay, ptr %5, align 8, !tbaa !153
  store i32 0, ptr %i.az, align 8, !tbaa !154
  store i32 8, ptr %i.ba, align 4, !tbaa !155
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !196 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx94 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx94
  %.not8084 = icmp eq i32 %i.bj, 0
  br i1 %.not8084, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !3339
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1048, !nonnull !116, !align !117 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #36, !inline_history !7667 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !154
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #36, !inline_history !7667 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i32 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i32, label %bb.p, label %bb.o, !prof !271

bb.o:                                             ; preds = %._crit_edge88
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

bb.p:                                             ; preds = %._crit_edge88
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %10, align 8, !tbaa !153
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !154
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %5, align 8, !tbaa !153   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33
  call void @free(ptr noundef %i.cf) #36
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph87:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.057.085 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.057.085, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.057.085, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2497, !noalias !7676 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2498, !noalias !7676 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !1817, !noalias !7676 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph87
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !268, !noalias !7677
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !269

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1665, !noalias !7677
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !271

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !268, !noalias !7677
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !272

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph87
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i31 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i31, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2500
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !154 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !155
  %.not.i.i30 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i30, label %bb.v, label %bb.u, !prof !271

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %5, align 8, !tbaa !153
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !154
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !154
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.057.085, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not80, label %._crit_edge88, label %.lr.ph87

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !154 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !155
  %.not.i29 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i29, label %bb.y, label %bb.x, !prof !271

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %10, align 8, !tbaa !153
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !154
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !154
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i90, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %12
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.er = load ptr, ptr %7, align 8, !tbaa !153
  %i.es = load i32, ptr %i.f, align 8, !tbaa !154
  %i.et = zext i32 %i.es to i64
  %i.eu = load ptr, ptr %10, align 8, !tbaa !153
  %i.ev = load i32, ptr %i.x, align 8, !tbaa !154
  %i.ew = zext i32 %i.ev to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ex = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ex, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.eu, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ew, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.er, ptr %3, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.et, ptr %.sroa.253.0..sroa_idx, align 8
  %i.ey = call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPToClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull readonly %i.ep, i64 3, ptr nonnull readonly %i.eq, i64 poison, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, i32 poison, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1289") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.ey, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.ez = load ptr, ptr %10, align 8, !tbaa !153  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.w
  br i1 %i.fa, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread
  call void @free(ptr noundef %i.ez) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_123TransformExprToCapturesENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !1852
  %.not.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1853
  call void @free(ptr noundef %i.fe) #36
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.ff = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.e
  br i1 %i.fg, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.ff) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE29TransformOMPTransparentClauseEPNS_20OMPTransparentClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2274
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !268
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.g, align 4, !tbaa !268
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.h, align 4, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPTransparentClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE21TransformOMPUseClauseEPNS_12OMPUseClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2082
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19RebuildOMPUseClauseEPNS_4ExprENS_14SourceLocationES6_S6_S6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.h, align 8, !tbaa !268
  %i.i = load <2 x i32>, ptr %i.g, align 4, !tbaa !268
  %i.j = load <2 x i32>, ptr %1, align 8, !tbaa !268
  %.val = load ptr, ptr %0, align 8, !tbaa !3339
  %i.k = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.k, align 8, !tbaa !193 ; 2 uses
  %i.l = load ptr, ptr %.val.val, align 8, !tbaa !115, !nonnull !116, !align !117
  %i.m = tail call fastcc noundef zeroext i1 @_ZL22isValidInteropVariableRN5clang4SemaEPNS_4ExprENS_14SourceLocationEN4llvm3omp6ClauseE(ptr noundef nonnull align 8 dereferenceable(18640) %i.l, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i11, i32 noundef 130)
  br i1 %i.m, label %bb.c, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19RebuildOMPUseClauseEPNS_4ExprENS_14SourceLocationES6_S6_S6_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang8SemaBase13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(552) %.val.val) #36 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2632 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1580 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 32                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 2640
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1581
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e, !prof !271

bb.d:                                             ; preds = %bb.c
  %i.v = inttoptr i64 %i.r to ptr
  store ptr %i.v, ptr %i.o, align 8, !tbaa !1580
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZnwmRKN5clang10ASTContextEm.exit.i.i

_ZnwmRKN5clang10ASTContextEm.exit.i.i:            ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.w, %bb.e ] ; 5 uses
  store <2 x i32> %i.j, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !268
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  store i32 130, ptr %i.x, align 4, !tbaa !1640
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 12
  store <2 x i32> %i.i, ptr %i.y, align 4, !tbaa !268
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  store ptr %i.f, ptr %i.z, align 8, !tbaa !2082
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19RebuildOMPUseClauseEPNS_4ExprENS_14SourceLocationES6_S6_S6_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE19RebuildOMPUseClauseEPNS_4ExprENS_14SourceLocationES6_S6_S6_.exit: ; preds = %_ZnwmRKN5clang10ASTContextEm.exit.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i.i.i.i.i.i, %_ZnwmRKN5clang10ASTContextEm.exit.i.i ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE31TransformOMPUseDeviceAddrClauseEPNS_22OMPUseDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #22 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2113", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3284 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #36
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3284
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1046
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_123TransformExprToCapturesEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
end_hunk_13
