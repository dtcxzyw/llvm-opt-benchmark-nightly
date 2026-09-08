Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OMPIRBuilder?download=true
inline.NumInlined: 20937
inline.NumDeleted: 6687
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 104
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointE:bb.a
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !133
  store i64 %i.bx, ptr %i.y, align 8, !tbaa !133
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit: ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit.sink.split, %bb.k, %bb.h
  br i1 %.not243, label %._crit_edge249, label %.lr.ph248

.lr.ph248:                                        ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 600
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  br label %bb.n

._crit_edge249:                                   ; preds = %bb.s, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit
  %.084.lcssa = phi ptr [ null, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit ], [ %.1, %bb.s ]
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !173
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !174 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.cf
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -24
  %spec.select.i.i = select i1 %i.ci, ptr null, ptr %i.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.cl, align 1, !tbaa !152
  store ptr @.str.338, ptr %12, align 8, !tbaa !153
  store i8 3, ptr %i.ck, align 8, !tbaa !151
  %i.cm = call noundef ptr @_ZN4llvm15OpenMPIRBuilder18createLoopSkeletonENS_8DebugLocEPNS_5ValueEPNS_8FunctionEPNS_10BasicBlockES7_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(1864) %0, ptr %1, ptr noundef %.084.lcssa, ptr noundef %i.s, ptr noundef %spec.select.i.i, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(34) %12) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !727, !noalias !2543
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !130, !noalias !2543
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -88
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !527, !noalias !2543 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !131, !noalias !2543 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !146
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  store ptr %i.cu, ptr %i.cw, align 8
  %.sroa.45.0..sroa_idx.i.i112 = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  store i16 1, ptr %.sroa.45.0..sroa_idx.i.i112, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %.not.i.i114 = icmp eq ptr %i.cu, %i.cx
  br i1 %.not.i.i114, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit115, label %bb.l

bb.l:                                             ; preds = %._crit_edge249
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 -24
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cy) #26
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !133
  store i64 %i.da, ptr %i.y, align 8, !tbaa !133
  br label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit115

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit115: ; preds = %._crit_edge249, %bb.l
  %i.db = load ptr, ptr %i.cm, align 8, !tbaa !724
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !131
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.df, ptr %13, align 8, !tbaa !122
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i32 0, ptr %i.dg, align 8, !tbaa !211
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 6, ptr %i.dh, align 4, !tbaa !212
  %i.di = icmp eq i64 %3, 0                       ; 2 uses
  br i1 %i.di, label %.lr.ph259, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit115
  %i.dj = icmp ugt i64 %3, 6
  br i1 %i.dj, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i, label %.lr.ph.preheader.i.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i: ; preds = %bb.m
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.df, i64 noundef %3, i64 noundef 8) #26
  %.pre.i.i = load i32, ptr %i.dg, align 8, !tbaa !211
  %.pre13.i.i = zext i32 %.pre.i.i to i64         ; 2 uses
  %.not11.i.i = icmp samesign eq i64 %3, %.pre13.i.i
  br i1 %.not11.i.i, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge

_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i
  %.pre291 = load ptr, ptr %13, align 8, !tbaa !122
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge, %bb.m
  %i.dk = phi ptr [ %.pre291, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ %i.df, %bb.m ]
  %.pre-phi.i.i237 = phi i64 [ %.pre13.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ 0, %bb.m ] ; 2 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %.pre-phi.i.i237
  %i.dm = sub i64 %3, %.pre-phi.i.i237
  %i.dn = shl i64 %i.dm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dl, i8 0, i64 %i.dn, i1 false), !tbaa !249
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit

_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE7reserveEm.exit.i.i, %.lr.ph.preheader.i.i
  %i.do = trunc i64 %3 to i32
  store i32 %i.do, ptr %i.dg, align 8, !tbaa !211
  %i.dp = add i64 %3, -1                          ; 4 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph252, label %.lr.ph259

.lr.ph252:                                        ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dy = and i64 %i.dp, 2147483647
  br label %bb.t

bb.n:                                             ; preds = %.lr.ph248, %bb.s
  %.083247 = phi ptr [ %2, %.lr.ph248 ], [ %i.fb, %bb.s ] ; 2 uses
  %.084246 = phi ptr [ null, %.lr.ph248 ], [ %.1, %bb.s ] ; 3 uses
  %i.dz = load ptr, ptr %.083247, align 8, !tbaa !663
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !727
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !131 ; 3 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -20
  %i.ef = load i32, ptr %i.ee, align 4            ; 2 uses
  %i.eg = and i32 %i.ef, 1073741824
  %.not.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 -32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !640
  br label %_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit

bb.p:                                             ; preds = %bb.n
  %i.ej = getelementptr inbounds i8, ptr %i.ed, i64 -24
  %i.ek = and i32 %i.ef, 268435455
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [32 x i8], ptr %i.ej, i64 %i.em
  br label %_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit

_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit: ; preds = %bb.o, %bb.p
  %i.eo = phi ptr [ %i.ei, %bb.o ], [ %i.en, %bb.p ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !527 ; 3 uses
  %.not91 = icmp eq ptr %.084246, null
  br i1 %.not91, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store i16 257, ptr %i.by, align 8
  %i.er = load ptr, ptr %i.bz, align 8, !tbaa !214, !nonnull !119, !align !176 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !110
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef ptr %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.er, i32 noundef 18, ptr noundef nonnull %.084246, ptr noundef %i.eq, i1 noundef zeroext true, i1 noundef zeroext false) #26, !inline_history !63 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.not.i.i, label %bb.r, label %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i8 1, ptr %i.ca, align 8, !tbaa !151
  store i8 1, ptr %i.cb, align 1, !tbaa !152
  %i.ew = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 18, ptr noundef nonnull %.084246, ptr noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr null, i64 0) #26 ; 4 uses
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !210, !nonnull !119, !align !176 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.cd, align 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !110
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #26, !inline_history !64
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef %i.ew) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN4llvm11Instruction20setHasNoUnsignedWrapEb(ptr noundef nonnull align 8 dereferenceable(72) %i.ew, i1 noundef zeroext true) #26
  br label %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit: ; preds = %bb.q, %bb.r
  %.1.i.i = phi ptr [ %i.ev, %bb.q ], [ %i.ew, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit, %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit
  %.1 = phi ptr [ %.1.i.i, %_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE.exit ], [ %i.eq, %_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.083247, i64 8 ; 2 uses
  %.not88 = icmp eq ptr %i.fb, %i.c
  br i1 %.not88, label %._crit_edge249, label %bb.n

.lr.ph259:                                        ; preds = %_ZN4llvm13IRBuilderBase10CreateUDivEPNS_5ValueES2_RKNS_5TwineEb.exit, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit115, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit
  %i.fc = phi i64 [ %i.dp, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit ], [ -1, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit115 ], [ %i.dp, %_ZN4llvm13IRBuilderBase10CreateUDivEPNS_5ValueES2_RKNS_5TwineEb.exit ] ; 2 uses
  %.082.lcssa = phi ptr [ %i.de, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6resizeEm.exit ], [ %i.de, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit115 ], [ %.1.i122, %_ZN4llvm13IRBuilderBase10CreateUDivEPNS_5ValueES2_RKNS_5TwineEb.exit ]
  %i.fd = load ptr, ptr %13, align 8, !tbaa !122
  store ptr %.082.lcssa, ptr %i.fd, align 8, !tbaa !249
  %i.fe = load ptr, ptr %i.cn, align 8, !tbaa !727
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !130
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -88
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !527
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  br label %bb.z

bb.t:                                             ; preds = %.lr.ph252, %_ZN4llvm13IRBuilderBase10CreateUDivEPNS_5ValueES2_RKNS_5TwineEb.exit
  %indvars.iv = phi i64 [ %i.dy, %.lr.ph252 ], [ %indvars.iv.next, %_ZN4llvm13IRBuilderBase10CreateUDivEPNS_5ValueES2_RKNS_5TwineEb.exit ] ; 4 uses
  %.082250 = phi ptr [ %i.de, %.lr.ph252 ], [ %.1.i122, %_ZN4llvm13IRBuilderBase10CreateUDivEPNS_5ValueES2_RKNS_5TwineEb.exit ] ; 4 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !663
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !727
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !131 ; 3 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -20
  %i.fr = load i32, ptr %i.fq, align 4            ; 2 uses
  %i.fs = and i32 %i.fr, 1073741824
  %.not.i.i.i116 = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i.i116, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ft = getelementptr inbounds i8, ptr %i.fp, i64 -32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !640
  br label %_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit117

bb.v:                                             ; preds = %bb.t
  %i.fv = getelementptr inbounds i8, ptr %i.fp, i64 -24
  %i.fw = and i32 %i.fr, 268435455
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = getelementptr inbounds [32 x i8], ptr %i.fv, i64 %i.fy
  br label %_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit117

_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit117: ; preds = %bb.u, %bb.v
  %i.ga = phi ptr [ %i.fu, %bb.u ], [ %i.fz, %bb.v ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !527 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store i16 257, ptr %i.ds, align 8
  %i.gd = load ptr, ptr %i.dt, align 8, !tbaa !214, !nonnull !119, !align !176 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !110
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = call noundef ptr %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, i32 noundef 23, ptr noundef %.082250, ptr noundef %i.gc) #26, !inline_history !65 ; 2 uses
  %.not.not.i = icmp eq ptr %i.gh, null
  br i1 %.not.not.i, label %bb.w, label %_ZN4llvm13IRBuilderBase10CreateURemEPNS_5ValueES2_RKNS_5TwineE.exit

bb.w:                                             ; preds = %_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i16 257, ptr %i.du, align 8
  %i.gi = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 23, ptr noundef %.082250, ptr noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr null, i64 0) #26 ; 3 uses
  %i.gj = load ptr, ptr %i.dv, align 8, !tbaa !210, !nonnull !119, !align !176 ; 2 uses
  %.sroa.0.0.copyload.i.i118 = load ptr, ptr %i.cw, align 8
  %.sroa.2.0.copyload.i.i120 = load i64, ptr %.sroa.45.0..sroa_idx.i.i112, align 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !110
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef %i.gi, ptr noundef nonnull align 8 dereferenceable(34) %14, ptr %.sroa.0.0.copyload.i.i118, i64 %.sroa.2.0.copyload.i.i120) #26, !inline_history !66
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef %i.gi) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN4llvm13IRBuilderBase10CreateURemEPNS_5ValueES2_RKNS_5TwineE.exit

_ZN4llvm13IRBuilderBase10CreateURemEPNS_5ValueES2_RKNS_5TwineE.exit: ; preds = %_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit117, %bb.w
  %.1.i = phi ptr [ %i.gi, %bb.w ], [ %i.gh, %_ZNK4llvm17CanonicalLoopInfo12getTripCountEv.exit117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.gn = load ptr, ptr %13, align 8, !tbaa !122
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv
  store ptr %.1.i, ptr %i.go, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i16 257, ptr %i.dw, align 8
  %i.gp = load ptr, ptr %i.dt, align 8, !tbaa !214, !nonnull !119, !align !176 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !110
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = call noundef ptr %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, i32 noundef 20, ptr noundef %.082250, ptr noundef %i.gc, i1 noundef zeroext false) #26, !inline_history !51 ; 2 uses
  %.not.not.i121 = icmp eq ptr %i.gt, null
  br i1 %.not.not.i121, label %bb.x, label %_ZN4llvm13IRBuilderBase10CreateUDivEPNS_5ValueES2_RKNS_5TwineEb.exit

bb.x:                                             ; preds = %_ZN4llvm13IRBuilderBase10CreateURemEPNS_5ValueES2_RKNS_5TwineE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i16 257, ptr %i.dx, align 8
  %i.gu = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 20, ptr noundef %.082250, ptr noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr null, i64 0) #26 ; 3 uses
  %i.gv = load ptr, ptr %i.dv, align 8, !tbaa !210, !nonnull !119, !align !176 ; 2 uses
  %.sroa.0.0.copyload.i.i123 = load ptr, ptr %i.cw, align 8
  %.sroa.2.0.copyload.i.i125 = load i64, ptr %.sroa.45.0..sroa_idx.i.i112, align 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !110
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef %i.gu, ptr noundef nonnull align 8 dereferenceable(34) %15, ptr %.sroa.0.0.copyload.i.i123, i64 %.sroa.2.0.copyload.i.i125) #26, !inline_history !52
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef %i.gu) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN4llvm13IRBuilderBase10CreateUDivEPNS_5ValueES2_RKNS_5TwineEb.exit

_ZN4llvm13IRBuilderBase10CreateUDivEPNS_5ValueES2_RKNS_5TwineEb.exit: ; preds = %_ZN4llvm13IRBuilderBase10CreateURemEPNS_5ValueES2_RKNS_5TwineE.exit, %bb.x
  %.1.i122 = phi ptr [ %i.gt, %_ZN4llvm13IRBuilderBase10CreateURemEPNS_5ValueES2_RKNS_5TwineE.exit ], [ %i.gu, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gz = icmp sgt i64 %indvars.iv, 1
  br i1 %i.gz, label %bb.t, label %.lr.ph259, !llvm.loop !2537

bb.y:                                             ; preds = %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit136"
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !727
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !130
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -88
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !527
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !725
  %i.hi = getelementptr i8, ptr %i.ib, i64 16
  %.val.i = load ptr, ptr %i.hi, align 8, !tbaa !604 ; 2 uses
  %.not5.i.i = icmp eq ptr %.val.i, null
  br i1 %.not5.i.i, label %.lr.ph266, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %.sroa.01.06.i.i = phi ptr [ %i.hk, %.lr.ph.i.i ], [ %.val.i, %bb.y ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !650 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !641
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !148
  call fastcc void @_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE(ptr noundef %i.ho, ptr noundef %i.hf, ptr %1)
  %.not.i.i127 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i127, label %.lr.ph266, label %.lr.ph.i.i

.lr.ph266:                                        ; preds = %.lr.ph.i.i, %bb.y
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.am

bb.z:                                             ; preds = %.lr.ph259, %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit136"
  %.080257 = phi i64 [ 0, %.lr.ph259 ], [ %i.hy, %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit136" ] ; 2 uses
  %.0231256 = phi ptr [ null, %.lr.ph259 ], [ %i.ib, %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit136" ]
  %.0233255 = phi ptr [ %i.fi, %.lr.ph259 ], [ null, %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit136" ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.080257
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !663
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !727
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !130
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 -88
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !527
  %.fr = freeze ptr %i.hx                         ; 6 uses
  %i.hy = add nuw i64 %.080257, 1                 ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !663
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !724 ; 2 uses
  %.not.i128 = icmp eq ptr %.0233255, null
  br i1 %.not.i128, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call fastcc void @_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE(ptr noundef nonnull %.0233255, ptr noundef %.fr, ptr %1)
  br label %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit136"

bb.ab:                                            ; preds = %bb.z
  %i.ic = getelementptr i8, ptr %.0231256, i64 16
  %.val.i131 = load ptr, ptr %i.ic, align 8, !tbaa !604 ; 3 uses
  %.not5.i.i132 = icmp eq ptr %.val.i131, null
  br i1 %.not5.i.i132, label %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit136", label %.lr.ph.i.i133.preheader

.lr.ph.i.i133.preheader:                          ; preds = %bb.ab
  %.not.i.i.i.i = icmp eq ptr %.fr, null
  %i.id = getelementptr inbounds nuw i8, ptr %.fr, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i133.us, label %.lr.ph.i.i133

.lr.ph.i.i133.us:                                 ; preds = %.lr.ph.i.i133.preheader, %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit.us
  %.sroa.01.06.i.i134.us = phi ptr [ %i.if, %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit.us ], [ %.val.i131, %.lr.ph.i.i133.preheader ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i134.us, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !650 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i134.us, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !641
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !148 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 48 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !130 ; 5 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i.us, label %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i.us

_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i.us: ; preds = %.lr.ph.i.i133.us
  %i.in = getelementptr inbounds i8, ptr %i.il, i64 -24
  %i.io = load i8, ptr %i.in, align 8, !tbaa !411
  %i.ip = add i8 %i.io, -31
  %i.iq = icmp ult i8 %i.ip, 12
  br i1 %i.iq, label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i.us, label %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i.us

_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i.us: ; preds = %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i.us
  %i.ir = getelementptr inbounds i8, ptr %i.il, i64 -56 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !527
  call void @_ZN4llvm10BasicBlock17removePredecessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(80) %i.is, ptr noundef nonnull %i.ij, i1 noundef zeroext true) #26
  %i.it = getelementptr inbounds i8, ptr %i.il, i64 -40 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !649 ; 3 uses
  %.not.i.i.i.i.i.us = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i.i.us, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.us, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i.us
  %i.iv = getelementptr inbounds i8, ptr %i.il, i64 -48 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !650 ; 3 uses
  store ptr %i.iw, ptr %i.iu, align 8, !tbaa !640
  %.not2.i.i.i.i.i.us = icmp eq ptr %i.iw, null
  br i1 %.not2.i.i.i.i.i.us, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store ptr %i.iu, ptr %i.ix, align 8, !tbaa !649
  store ptr null, ptr %i.iv, align 8, !tbaa !650
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store ptr null, ptr %i.it, align 8, !tbaa !649
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.us

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.us:   ; preds = %bb.ae, %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i.us
  store ptr null, ptr %i.ir, align 8, !tbaa !527
  br label %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit.us

_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i.us: ; preds = %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i.us, %.lr.ph.i.i133.us
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.ij) #26
  %i.iy = load ptr, ptr %6, align 8
  %i.iz = load i64, ptr %i.fj, align 8
  %i.ja = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #26 ; 2 uses
  call void @_ZN4llvm12UncondBrInstC1EPNS_10BasicBlockENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ja, ptr noundef null, ptr %i.iy, i64 %i.iz) #26
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  store ptr %1, ptr %i.jb, align 8, !tbaa !133
  br label %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit.us

_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit.us: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.us, %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not.i.i135.us = icmp eq ptr %i.if, null
  br i1 %.not.i.i135.us, label %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit136", label %.lr.ph.i.i133.us

.lr.ph.i.i133:                                    ; preds = %.lr.ph.i.i133.preheader, %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit
  %.sroa.01.06.i.i134 = phi ptr [ %i.jd, %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit ], [ %.val.i131, %.lr.ph.i.i133.preheader ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i134, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !650 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i134, i64 24
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !641
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !148 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 48 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !130 ; 6 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i, label %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i

_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i:  ; preds = %.lr.ph.i.i133
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 -24
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !411
  %i.jn = add i8 %i.jm, -31
  %i.jo = icmp ult i8 %i.jn, 12
  br i1 %i.jo, label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i, label %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i

_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i: ; preds = %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i
  %i.jp = getelementptr inbounds i8, ptr %i.jj, i64 -56 ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !527
  call void @_ZN4llvm10BasicBlock17removePredecessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(80) %i.jq, ptr noundef nonnull %i.jh, i1 noundef zeroext true) #26
  %i.jr = getelementptr inbounds i8, ptr %i.jj, i64 -40 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !649 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i
  %i.jt = getelementptr inbounds i8, ptr %i.jj, i64 -48 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !650 ; 3 uses
  store ptr %i.ju, ptr %i.js, align 8, !tbaa !640
  %.not2.i.i.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not2.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store ptr %i.js, ptr %i.jv, align 8, !tbaa !649
  store ptr null, ptr %i.jt, align 8, !tbaa !650
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  store ptr null, ptr %i.jr, align 8, !tbaa !649
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i:      ; preds = %bb.ah, %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i
  store ptr %.fr, ptr %i.jp, align 8, !tbaa !527
  %i.jw = load i8, ptr %.fr, align 8, !tbaa !411
  %i.jx = icmp ugt i8 %i.jw, 10
  br i1 %i.jx, label %bb.ai, label %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit

bb.ai:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i
  %i.jy = load ptr, ptr %i.id, align 8, !tbaa !640 ; 3 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jj, i64 -48 ; 2 uses
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !650
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !649
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i:      ; preds = %bb.aj, %bb.ai
  store ptr %i.id, ptr %i.jr, align 8, !tbaa !649
  store ptr %i.jp, ptr %i.id, align 8, !tbaa !640
  br label %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit

_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i: ; preds = %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i, %.lr.ph.i.i133
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.jh) #26
  %i.kb = load ptr, ptr %6, align 8
  %i.kc = load i64, ptr %i.fj, align 8
  %i.kd = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #26 ; 2 uses
  call void @_ZN4llvm12UncondBrInstC1EPNS_10BasicBlockENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.kd, ptr noundef nonnull %.fr, ptr %i.kb, i64 %i.kc) #26
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 48
  store ptr %1, ptr %i.ke, align 8, !tbaa !133
  br label %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit

_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not.i.i135 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i135, label %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit136", label %.lr.ph.i.i133

"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit136": ; preds = %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit, %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit.us, %bb.aa, %bb.ab
  %exitcond.not = icmp eq i64 %i.hy, %umax
  br i1 %exitcond.not, label %bb.y, label %bb.z, !llvm.loop !2538

._crit_edge267:                                   ; preds = %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit162"
  %i.kf = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !725
  %i.kh = getelementptr i8, ptr %i.lv, i64 16
  %.val.i140 = load ptr, ptr %i.kh, align 8, !tbaa !604 ; 2 uses
  %.not5.i.i141 = icmp eq ptr %.val.i140, null
  br i1 %.not5.i.i141, label %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit145", label %.lr.ph.i.i142

.lr.ph.i.i142:                                    ; preds = %._crit_edge267, %.lr.ph.i.i142
  %.sroa.01.06.i.i143 = phi ptr [ %i.kj, %.lr.ph.i.i142 ], [ %.val.i140, %._crit_edge267 ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i143, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !650 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i143, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !641
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !148
  call fastcc void @_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE(ptr noundef %i.kn, ptr noundef %i.kg, ptr %1)
  %.not.i.i144 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i144, label %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit145", label %.lr.ph.i.i142

"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit145": ; preds = %.lr.ph.i.i142, %._crit_edge267
  %i.ko = load ptr, ptr %i.b, align 8, !tbaa !724
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.h, align 8, !tbaa !725
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit145"
  %.sroa.09.0.in.i146 = phi ptr [ %i.kp, %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit145" ], [ %i.kv, %bb.ak ]
  %.sroa.09.0.i147 = load ptr, ptr %.sroa.09.0.in.i146, align 8, !tbaa !640, !nonnull !119, !noundef !119 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i147, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !641
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !148 ; 2 uses
  %.not.i148 = icmp eq ptr %i.ku, %i.kq
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i147, i64 8
  br i1 %.not.i148, label %bb.ak, label %_ZNK4llvm17CanonicalLoopInfo12getPreheaderEv.exit149

_ZNK4llvm17CanonicalLoopInfo12getPreheaderEv.exit149: ; preds = %bb.ak
  %i.kw = load ptr, ptr %i.cm, align 8, !tbaa !724
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ky = load ptr, ptr %i.kf, align 8, !tbaa !725
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %_ZNK4llvm17CanonicalLoopInfo12getPreheaderEv.exit149
  %.sroa.09.0.in.i150 = phi ptr [ %i.kx, %_ZNK4llvm17CanonicalLoopInfo12getPreheaderEv.exit149 ], [ %i.ld, %bb.al ]
  %.sroa.09.0.i151 = load ptr, ptr %.sroa.09.0.in.i150, align 8, !tbaa !640, !nonnull !119, !noundef !119 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i151, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !641
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !148 ; 2 uses
  %.not.i152 = icmp eq ptr %i.lc, %i.ky
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i151, i64 8
  br i1 %.not.i152, label %bb.al, label %_ZNK4llvm17CanonicalLoopInfo12getPreheaderEv.exit153

_ZNK4llvm17CanonicalLoopInfo12getPreheaderEv.exit153: ; preds = %bb.al
  call fastcc void @_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE(ptr noundef %i.ku, ptr noundef %i.lc, ptr %1)
  %i.le = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !743
  %i.lg = call noundef ptr @_ZNK4llvm10BasicBlock18getSingleSuccessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.lf) #26
  %i.lh = load ptr, ptr %i.o, align 8, !tbaa !743
  %i.li = call noundef ptr @_ZNK4llvm10BasicBlock18getSingleSuccessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.lh) #26
  call fastcc void @_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE(ptr noundef %i.lg, ptr noundef %i.li, ptr %1)
  br i1 %i.di, label %._crit_edge271.thread, label %.lr.ph270

._crit_edge271.thread:                            ; preds = %_ZNK4llvm17CanonicalLoopInfo12getPreheaderEv.exit153
  %i.lj = load ptr, ptr %10, align 8, !tbaa !122
  %i.lk = load i32, ptr %i.u, align 8, !tbaa !211
  %i.ll = zext i32 %i.lk to i64
  call fastcc void @_ZL28removeUnusedBlocksFromParentN4llvm8ArrayRefIPNS_10BasicBlockEEE(ptr %i.lj, i64 %i.ll)
  br label %._crit_edge276

bb.am:                                            ; preds = %.lr.ph266, %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit162"
  %.079265 = phi i64 [ %i.fc, %.lr.ph266 ], [ %i.lr, %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit162" ] ; 2 uses
  %.1232264 = phi ptr [ %i.hh, %.lr.ph266 ], [ %i.lv, %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit162" ]
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.079265
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !663
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !743
  %i.lq = call noundef ptr @_ZNK4llvm10BasicBlock18getSingleSuccessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.lp) #26 ; 5 uses
  %i.lr = add i64 %.079265, -1                    ; 3 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !663
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !725 ; 2 uses
  %i.lw = getelementptr i8, ptr %.1232264, i64 16
  %.val.i157 = load ptr, ptr %i.lw, align 8, !tbaa !604 ; 3 uses
  %.not5.i.i158 = icmp eq ptr %.val.i157, null
  br i1 %.not5.i.i158, label %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit162", label %.lr.ph.i.i159.preheader

.lr.ph.i.i159.preheader:                          ; preds = %bb.am
  %.not.i.i.i.i169 = icmp eq ptr %i.lq, null
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i169, label %.lr.ph.i.i159.us, label %.lr.ph.i.i159

.lr.ph.i.i159.us:                                 ; preds = %.lr.ph.i.i159.preheader, %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit172.us
  %.sroa.01.06.i.i160.us = phi ptr [ %i.lz, %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit172.us ], [ %.val.i157, %.lr.ph.i.i159.preheader ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i160.us, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !650 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i160.us, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !641
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 40
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !148 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 48 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !130 ; 5 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i164.us, label %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i163.us

_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i163.us: ; preds = %.lr.ph.i.i159.us
  %i.mh = getelementptr inbounds i8, ptr %i.mf, i64 -24
  %i.mi = load i8, ptr %i.mh, align 8, !tbaa !411
  %i.mj = add i8 %i.mi, -31
  %i.mk = icmp ult i8 %i.mj, 12
  br i1 %i.mk, label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i165.us, label %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i164.us

_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i165.us: ; preds = %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i163.us
  %i.ml = getelementptr inbounds i8, ptr %i.mf, i64 -56 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !527
  call void @_ZN4llvm10BasicBlock17removePredecessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(80) %i.mm, ptr noundef nonnull %i.md, i1 noundef zeroext true) #26
  %i.mn = getelementptr inbounds i8, ptr %i.mf, i64 -40 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !649 ; 3 uses
  %.not.i.i.i.i.i166.us = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i.i.i166.us, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i168.us, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i165.us
  %i.mp = getelementptr inbounds i8, ptr %i.mf, i64 -48 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !650 ; 3 uses
  store ptr %i.mq, ptr %i.mo, align 8, !tbaa !640
  %.not2.i.i.i.i.i167.us = icmp eq ptr %i.mq, null
  br i1 %.not2.i.i.i.i.i167.us, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store ptr %i.mo, ptr %i.mr, align 8, !tbaa !649
  store ptr null, ptr %i.mp, align 8, !tbaa !650
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store ptr null, ptr %i.mn, align 8, !tbaa !649
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i168.us

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i168.us: ; preds = %bb.ap, %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i165.us
  store ptr null, ptr %i.ml, align 8, !tbaa !527
  br label %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit172.us

_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i164.us: ; preds = %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i163.us, %.lr.ph.i.i159.us
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.md) #26
  %i.ms = load ptr, ptr %5, align 8
  %i.mt = load i64, ptr %i.hp, align 8
  %i.mu = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #26 ; 2 uses
  call void @_ZN4llvm12UncondBrInstC1EPNS_10BasicBlockENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.mu, ptr noundef null, ptr %i.ms, i64 %i.mt) #26
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 48
  store ptr %1, ptr %i.mv, align 8, !tbaa !133
  br label %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit172.us

_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit172.us: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i168.us, %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i164.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i.i161.us = icmp eq ptr %i.lz, null
  br i1 %.not.i.i161.us, label %"_ZZN4llvm15OpenMPIRBuilder13collapseLoopsENS_8DebugLocENS_8ArrayRefIPNS_17CanonicalLoopInfoEEENS_13IRBuilderBase11InsertPointEENK3$_0clEPNS_10BasicBlockESA_.exit162", label %.lr.ph.i.i159.us

.lr.ph.i.i159:                                    ; preds = %.lr.ph.i.i159.preheader, %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit172
  %.sroa.01.06.i.i160 = phi ptr [ %i.mx, %_ZL10redirectToPN4llvm10BasicBlockES1_NS_8DebugLocE.exit172 ], [ %.val.i157, %.lr.ph.i.i159.preheader ] ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i160, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !650 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i160, i64 24
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !641
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 40
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !148 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 48 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !130 ; 6 uses
  %i.ne = icmp eq ptr %i.nc, %i.nd
  br i1 %i.ne, label %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i164, label %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i163

_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i163: ; preds = %.lr.ph.i.i159
  %i.nf = getelementptr inbounds i8, ptr %i.nd, i64 -24
  %i.ng = load i8, ptr %i.nf, align 8, !tbaa !411
  %i.nh = add i8 %i.ng, -31
  %i.ni = icmp ult i8 %i.nh, 12
  br i1 %i.ni, label %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i165, label %_ZN4llvm12UncondBrInst12setSuccessorEPNS_10BasicBlockE.exit.i164

_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i165: ; preds = %_ZNK4llvm10BasicBlock13hasTerminatorEv.exit.i.i163
  %i.nj = getelementptr inbounds i8, ptr %i.nd, i64 -56 ; 3 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !527
  call void @_ZN4llvm10BasicBlock17removePredecessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(80) %i.nk, ptr noundef nonnull %i.nb, i1 noundef zeroext true) #26
  %i.nl = getelementptr inbounds i8, ptr %i.nd, i64 -40 ; 3 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !649 ; 3 uses
  %.not.i.i.i.i.i166 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i166, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i168, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm10BasicBlock19getTerminatorOrNullEv.exit.i165
  %i.nn = getelementptr inbounds i8, ptr %i.nd, i64 -48 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !650 ; 3 uses
  store ptr %i.no, ptr %i.nm, align 8, !tbaa !640
  %.not2.i.i.i.i.i167 = icmp eq ptr %i.no, null
  br i1 %.not2.i.i.i.i.i167, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
end_hunk_0
