Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGISelMatcherOpt?download=true
inline.NumInlined: 1479
inline.NumDeleted: 679
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZL13ContractNodesRN4llvm11MatcherListERKNS_18CodeGenDAGPatternsE:.lr.ph.i
  store ptr %.0.i.i7.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !61
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre.pre968, i64 64
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !57 ; 2 uses
  store i64 %i.cm, ptr %i.k, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  store ptr %i.cg, ptr %i.h, align 8, !tbaa !61
  br label %_ZN4llvm17ValueTypeByHwModeC2ERKS0_.exit

_ZN4llvm17ValueTypeByHwModeC2ERKS0_.exit:         ; preds = %bb.j, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i
  %i.cn = phi i64 [ 0, %bb.j ], [ %i.cm, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i ]
  %i.co = phi ptr [ %i.g, %bb.j ], [ %.0.i.i7.i.i.i.i.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i ]
  %i.cp = phi ptr [ %i.g, %bb.j ], [ %.0.i.i.i.i.i.i.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i ]
  %i.cq = phi ptr [ null, %bb.j ], [ %i.cg, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre.pre968, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !63 ; 2 uses
  store ptr %i.cs, ptr %i.l, align 8, !tbaa !63
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre.pre968, i64 80
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !64 ; 2 uses
  store i32 %i.cu, ptr %i.m, align 8, !tbaa !64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr null, ptr %i.cv, align 8, !tbaa !27
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i32 16, ptr %i.cw, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm21CheckChildTypeMatcherE, i64 16), ptr %i.cc, align 8, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  store i32 %i.cd, ptr %i.cx, align 4, !tbaa !66
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm17ValueTypeByHwModeC2ERKS0_.exit
  %i.cz = load i32, ptr %i.g, align 8, !tbaa !53
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store ptr %i.cq, ptr %i.da, align 8, !tbaa !54
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !67
  store ptr null, ptr %i.h, align 8, !tbaa !54
  store ptr %i.g, ptr %i.i, align 8, !tbaa !55
  store ptr %i.g, ptr %i.j, align 8, !tbaa !56
  store i64 0, ptr %i.k, align 8, !tbaa !57
  br label %_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit

bb.o:                                             ; preds = %_ZN4llvm17ValueTypeByHwModeC2ERKS0_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store ptr null, ptr %i.dc, align 8, !tbaa !54
  br label %_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit

_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit: ; preds = %bb.n, %bb.o
  %.sink950 = phi ptr [ %i.cy, %bb.o ], [ %i.cp, %bb.n ]
  %.sink949 = phi ptr [ %i.cy, %bb.o ], [ %i.co, %bb.n ]
  %.sink = phi i64 [ 0, %bb.o ], [ %i.cn, %bb.n ]
  %.sink.i.i.i.i.i.i.i = phi i32 [ 0, %bb.o ], [ %i.cz, %bb.n ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  store ptr %.sink950, ptr %i.dd, align 8, !tbaa !55
  %i.de = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store ptr %.sink949, ptr %i.de, align 8, !tbaa !56
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  store i64 %.sink, ptr %i.df, align 8, !tbaa !57
  store i32 %.sink.i.i.i.i.i.i.i, ptr %i.cy, align 8, !tbaa !53
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  store ptr %i.cs, ptr %i.dg, align 8, !tbaa !63
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  store i32 %i.cu, ptr %i.dh, align 8, !tbaa !64
  call void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef null)
  %.pre957 = load i32, ptr %i.ar, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit, %bb.g
  %i.di = phi i32 [ %.pre957, %_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit ], [ %i.bu, %bb.g ] ; 2 uses
  %.1311 = phi ptr [ %i.cc, %_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit ], [ %.0310, %bb.g ] ; 2 uses
  %i.dj = icmp ne i32 %i.di, 8
  %.not343 = or i1 %i.ao, %i.dj
  br i1 %.not343, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !102
  %i.dm = icmp ult i32 %i.dl, 4
  br i1 %i.dm, label %bb.r, label %.thread1022

bb.r:                                             ; preds = %bb.q
  %i.dn = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 6 uses
  %i.do = load i32, ptr %i.dk, align 4, !tbaa !102
  %i.dp = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre.pre968, i64 20
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !116
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr null, ptr %i.dr, align 8, !tbaa !27
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i32 9, ptr %i.ds, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm21CheckChildSameMatcherE, i64 16), ptr %i.dn, align 8, !tbaa !37
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  store i32 %i.do, ptr %i.dt, align 4, !tbaa !118
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i32 %i.dq, ptr %i.du, align 8, !tbaa !119
  %.pre958 = load i32, ptr %i.ar, align 8, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.dv = phi i32 [ %.pre958, %bb.r ], [ %i.di, %bb.p ] ; 2 uses
  %.2312 = phi ptr [ %i.dn, %bb.r ], [ %.1311, %bb.p ] ; 2 uses
  %i.dw = icmp ne i32 %i.dv, 17
  %.not344 = or i1 %i.ao, %i.dw
  br i1 %.not344, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 12 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !102
  %i.dz = icmp ult i32 %i.dy, 5
  br i1 %i.dz, label %bb.u, label %.thread1022

bb.u:                                             ; preds = %bb.t
  %i.ea = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 6 uses
  %i.eb = load i32, ptr %i.dx, align 4, !tbaa !102
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre.pre968, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !121
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr null, ptr %i.ee, align 8, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i32 18, ptr %i.ef, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm24CheckChildIntegerMatcherE, i64 16), ptr %i.ea, align 8, !tbaa !37
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store i32 %i.eb, ptr %i.eg, align 4, !tbaa !123
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i64 %i.ed, ptr %i.eh, align 8, !tbaa !124
  %.pre959 = load i32, ptr %i.ar, align 8, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.ei = phi i32 [ %.pre959, %bb.u ], [ %i.dv, %bb.s ]
  %.3313 = phi ptr [ %i.ea, %bb.u ], [ %.2312, %bb.s ] ; 2 uses
  %i.ej = icmp ne i32 %i.ei, 19
  %.not345 = or i1 %i.ao, %i.ej
  br i1 %.not345, label %.thread1022, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !102
  %i.em = icmp eq i32 %i.el, 2
  br i1 %i.em, label %.thread, label %.thread1022

.thread:                                          ; preds = %bb.w
  %i.en = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #14 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre.pre968, i64 24
  %.sroa.0.0.copyload.i403 = load ptr, ptr %i.eo, align 8, !tbaa !125
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre.pre968, i64 32
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr null, ptr %i.ep, align 8, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i32 20, ptr %i.eq, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm26CheckChild2CondCodeMatcherE, i64 16), ptr %i.en, align 8, !tbaa !37
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store ptr %.sroa.0.0.copyload.i403, ptr %i.er, align 8, !tbaa !125
  %.sroa.2.0..sroa_idx.i404 = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i404, align 8, !tbaa !38
  %.pre970 = load ptr, ptr %.sroa.0697.08941079, align 8, !tbaa !27
  br label %bb.x

.thread1022:                                      ; preds = %bb.h, %bb.i, %bb.q, %bb.t, %bb.w, %bb.v
  %.33131025 = phi ptr [ %.3313, %bb.v ], [ %.3313, %bb.w ], [ %.2312, %bb.t ], [ %.1311, %bb.q ], [ %.0310, %bb.i ], [ %.0310, %bb.h ] ; 2 uses
  %.not346 = icmp eq ptr %.33131025, null
  %.pre971 = load ptr, ptr %.sroa.0697.08941079, align 8, !tbaa !27 ; 2 uses
  br i1 %.not346, label %.thread724, label %bb.x

.thread724:                                       ; preds = %.thread1022.thread, %.thread1022
  %.pre9711053 = phi ptr [ %.pre9711052, %.thread1022.thread ], [ %.pre971, %.thread1022 ]
  %.pr = load i32, ptr %i.am, align 8, !tbaa !30
  br label %bb.y

bb.x:                                             ; preds = %.thread, %.thread1022
  %i.es = phi ptr [ %.pre970, %.thread ], [ %.pre971, %.thread1022 ] ; 3 uses
  %.4314721 = phi ptr [ %i.en, %.thread ], [ %.33131025, %.thread1022 ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !27
  store ptr %i.eu, ptr %.sroa.0697.08941079, align 8, !tbaa !27
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !37
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(20) %i.es) #15, !inline_history !2
  %i.ey = load ptr, ptr %.sroa.0277.08961077, align 8, !tbaa !27
  %i.ez = getelementptr inbounds nuw i8, ptr %.4314721, i64 8 ; 2 uses
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !27
  store ptr %.4314721, ptr %.sroa.0277.08961077, align 8, !tbaa !27
  br label %select.unfold

bb.y:                                             ; preds = %.thread724, %.critedge362
  %.pre963.pre965.pre.pre.pre = phi ptr [ %.pre9711053, %.thread724 ], [ %.pre963.pre965.pre.pre.pre.pre968, %.critedge362 ] ; 57 uses
  %i.fa = phi i32 [ %.pr, %.thread724 ], [ %i.al, %.critedge362 ] ; 2 uses
  switch i32 %i.fa, label %.critedge368 [
    i32 7, label %.lr.ph.i406.preheader
    i32 6, label %.lr.ph.i424.preheader
    i32 5, label %.lr.ph.i598.preheader
    i32 33, label %.lr.ph.i619.preheader
  ]

.lr.ph.i406.preheader:                            ; preds = %bb.y
  %i.fb = icmp eq ptr %.pre963.pre965.pre.pre.pre, null
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 16
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !30
  %i.fe = icmp ne i32 %i.fd, 5
  %.not833 = or i1 %i.fe, %i.fb
  br i1 %.not833, label %.critedge.thread, label %.lr.ph.i414

.lr.ph.i414:                                      ; preds = %.lr.ph.i406.preheader
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 8
  %i.fg = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 20
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !102
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 8 uses
  store ptr null, ptr %i.fj, align 8, !tbaa !27
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i32 6, ptr %i.fk, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm18MoveSiblingMatcherE, i64 16), ptr %i.fg, align 8, !tbaa !37
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  store i32 %i.fi, ptr %i.fl, align 4, !tbaa !127
  %i.fm = load ptr, ptr %.sroa.0277.08961077, align 8, !tbaa !27
  store ptr %i.fm, ptr %i.fj, align 8, !tbaa !27
  store ptr %i.fg, ptr %.sroa.0277.08961077, align 8, !tbaa !27
  %i.fn = load ptr, ptr %i.ff, align 8, !tbaa !27 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = icmp eq ptr %i.fn, null                 ; 2 uses
  %spec.select.i.i418 = select i1 %i.fp, ptr null, ptr %i.fo ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %spec.select.i.i418, i64 -8
  %i.fr = select i1 %i.fp, ptr null, ptr %i.fq    ; 3 uses
  %.not16.i = icmp eq ptr %i.fj, %spec.select.i.i418
  br i1 %.not16.i, label %select.unfold, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i414
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !27 ; 2 uses
  %.not.i420 = icmp eq ptr %i.fs, %i.fr
  br i1 %.not.i420, label %select.unfold, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.fr, ptr %i.fj, align 8, !tbaa !27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0.i = phi ptr [ %i.fs, %bb.aa ], [ %i.fu, %bb.ab ] ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !27 ; 2 uses
  %i.fv = load ptr, ptr %.0.i, align 8, !tbaa !37
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(20) %.0.i) #15, !inline_history !96
  %.not12.i = icmp eq ptr %i.fu, %i.fr
  br i1 %.not12.i, label %select.unfold, label %bb.ab, !llvm.loop !97

.lr.ph.i424.preheader:                            ; preds = %bb.y
  %i.fy = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 8 ; 7 uses
  %i.fz = icmp eq ptr %.pre963.pre965.pre.pre.pre, null ; 6 uses
  %spec.select.i.i428 = select i1 %i.fz, ptr null, ptr %i.fy ; 4 uses
  %i.ga = getelementptr inbounds i8, ptr %spec.select.i.i428, i64 -8 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 16
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !30 ; 6 uses
  %i.gd = icmp ne i32 %i.gc, 1
  %.not349 = or i1 %i.fz, %i.gd
  br i1 %.not349, label %.thread742, label %.lr.ph.i432.preheader

.lr.ph.i432.preheader:                            ; preds = %.lr.ph.i424.preheader
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !27 ; 8 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 5 uses
  %i.gg = icmp eq ptr %i.ge, null                 ; 2 uses
  %spec.select.i.i436 = select i1 %i.gg, ptr null, ptr %i.gf ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %spec.select.i.i436, i64 -8 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !30 ; 2 uses
  %i.gk = icmp eq i32 %i.gj, 7
  br i1 %i.gk, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %.lr.ph.i432.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 12 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !127
  %i.gn = icmp ult i32 %i.gm, 8
  br i1 %i.gn, label %bb.ad, label %.critedge.thread

bb.ad:                                            ; preds = %bb.ac
  %i.go = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14 ; 9 uses
  %i.gp = load i32, ptr %i.gl, align 4, !tbaa !127
  %i.gq = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 24
  %i.gr = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 56
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !107
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  store ptr null, ptr %i.gt, align 8, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store i32 2, ptr %i.gu, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm18RecordChildMatcherE, i64 16), ptr %i.go, align 8, !tbaa !37
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  store i32 %i.gp, ptr %i.gv, align 4, !tbaa !109
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 24 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 40 ; 3 uses
  store ptr %i.gx, ptr %i.gw, align 8, !tbaa !110
  %i.gy = load ptr, ptr %i.gq, align 8, !tbaa !111 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 32
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.ha, ptr %i.b, align 8, !tbaa !38
  %i.hb = icmp ugt i64 %i.ha, 15
  br i1 %i.hb, label %bb.ae, label %._crit_edge.i.i.i438

bb.ae:                                            ; preds = %bb.ad
  %i.hc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #15 ; 2 uses
  store ptr %i.hc, ptr %i.gw, align 8, !tbaa !111
  %i.hd = load i64, ptr %i.b, align 8, !tbaa !38
  store i64 %i.hd, ptr %i.gx, align 8, !tbaa !113
  br label %._crit_edge.i.i.i438

._crit_edge.i.i.i438:                             ; preds = %bb.ae, %bb.ad
  %i.he = phi ptr [ %i.hc, %bb.ae ], [ %i.gx, %bb.ad ] ; 2 uses
  switch i64 %i.ha, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit439
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i438
  %i.hf = load i8, ptr %i.gy, align 1, !tbaa !113
  store i8 %i.hf, ptr %i.he, align 1, !tbaa !113
  br label %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit439

bb.ag:                                            ; preds = %._crit_edge.i.i.i438
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.he, ptr align 1 %i.gy, i64 %i.ha, i1 false)
  br label %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit439

_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit439: ; preds = %._crit_edge.i.i.i438, %bb.af, %bb.ag
  %i.hg = load i64, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !112
  %i.hi = load ptr, ptr %i.gw, align 8, !tbaa !111
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hg
  store i8 0, ptr %i.hj, align 1, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.hk = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  store i32 %i.gs, ptr %i.hk, align 8, !tbaa !114
  %.not16.i440 = icmp eq ptr %.sroa.0277.08961077, %i.gf
  br i1 %.not16.i440, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit445, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit439
  %i.hl = load ptr, ptr %.sroa.0277.08961077, align 8, !tbaa !27 ; 2 uses
  %.not.i441 = icmp eq ptr %i.hl, %i.gh
  br i1 %.not.i441, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit445, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.gh, ptr %.sroa.0277.08961077, align 8, !tbaa !27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.0.i442 = phi ptr [ %i.hl, %bb.ai ], [ %i.hn, %bb.aj ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i442, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !27 ; 2 uses
  %i.ho = load ptr, ptr %.0.i442, align 8, !tbaa !37
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(20) %.0.i442) #15, !inline_history !96
  %.not12.i443 = icmp eq ptr %i.hn, %i.gh
  br i1 %.not12.i443, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit445, label %bb.aj, !llvm.loop !97

_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit445: ; preds = %bb.aj, %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit439, %bb.ah
  %i.hr = load ptr, ptr %i.gf, align 8, !tbaa !27
  store ptr %i.hr, ptr %i.gt, align 8, !tbaa !27
  store ptr %i.go, ptr %i.gf, align 8, !tbaa !27
  br label %select.unfold

bb.ak:                                            ; preds = %.lr.ph.i432.preheader
  %i.hs = icmp ne i32 %i.gj, 14
  %.not350 = or i1 %i.hs, %i.gg
  br i1 %.not350, label %.critedge.thread, label %.lr.ph.i448.preheader

.lr.ph.i448.preheader:                            ; preds = %bb.ak
  %i.ht = load ptr, ptr %i.gf, align 8, !tbaa !27 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 4 uses
  %i.hv = icmp eq ptr %i.ht, null
  %spec.select.i.i452 = select i1 %i.hv, ptr null, ptr %i.hu ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %spec.select.i.i452, i64 -8 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !30
  %i.hz = icmp eq i32 %i.hy, 7
  br i1 %i.hz, label %bb.al, label %.critedge.thread

bb.al:                                            ; preds = %.lr.ph.i448.preheader
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 12 ; 3 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !127
  %i.ic = icmp ult i32 %i.ib, 8
  br i1 %i.ic, label %bb.am, label %.critedge.thread

bb.am:                                            ; preds = %bb.al
  %i.id = getelementptr inbounds nuw i8, ptr %i.ge, i64 88
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !52
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.an, label %.critedge.thread

bb.an:                                            ; preds = %bb.am
  %i.ig = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14 ; 9 uses
  %i.ih = load i32, ptr %i.ia, align 4, !tbaa !127
  %i.ii = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 24
  %i.ij = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 56
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !107
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  store ptr null, ptr %i.il, align 8, !tbaa !27
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i32 2, ptr %i.im, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm18RecordChildMatcherE, i64 16), ptr %i.ig, align 8, !tbaa !37
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 20
end_hunk_0
begin_hunk_1_@_ZL13ContractNodesRN4llvm11MatcherListERKNS_18CodeGenDAGPatternsE:.lr.ph.i
  %i.qg = icmp ult i32 %i.qf, 4
  br i1 %i.qg, label %bb.cc, label %.critedge.thread

bb.cc:                                            ; preds = %bb.cb
  %i.qh = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 6 uses
  %i.qi = load i32, ptr %i.qe, align 4, !tbaa !127
  %i.qj = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 20
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !116
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  store ptr null, ptr %i.ql, align 8, !tbaa !27
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  store i32 9, ptr %i.qm, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm21CheckChildSameMatcherE, i64 16), ptr %i.qh, align 8, !tbaa !37
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qh, i64 20
  store i32 %i.qi, ptr %i.qn, align 4, !tbaa !118
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qh, i64 24
  store i32 %i.qk, ptr %i.qo, align 8, !tbaa !119
  %.not16.i563 = icmp eq ptr %.sroa.0277.08961077, %i.py
  br i1 %.not16.i563, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit568, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qp = load ptr, ptr %.sroa.0277.08961077, align 8, !tbaa !27 ; 2 uses
  %.not.i564 = icmp eq ptr %i.qp, %i.qa
  br i1 %.not.i564, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit568, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.qa, ptr %.sroa.0277.08961077, align 8, !tbaa !27
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %bb.ce
  %.0.i565 = phi ptr [ %i.qp, %bb.ce ], [ %i.qr, %bb.cf ] ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.0.i565, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !27 ; 2 uses
  %i.qs = load ptr, ptr %.0.i565, align 8, !tbaa !37
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(20) %.0.i565) #15, !inline_history !96
  %.not12.i566 = icmp eq ptr %i.qr, %i.qa
  br i1 %.not12.i566, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit568, label %bb.cf, !llvm.loop !97

_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit568: ; preds = %bb.cf, %bb.cc, %bb.cd
  %i.qv = load ptr, ptr %i.py, align 8, !tbaa !27
  store ptr %i.qv, ptr %i.ql, align 8, !tbaa !27
  store ptr %i.qh, ptr %i.py, align 8, !tbaa !27
  br label %select.unfold

bb.cg:                                            ; preds = %.lr.ph.i557.preheader
  %i.qw = icmp ne i32 %i.qc, 14
  %.not356 = or i1 %i.qw, %i.pz
  br i1 %.not356, label %.critedge.thread, label %.lr.ph.i571.preheader

.lr.ph.i571.preheader:                            ; preds = %bb.cg
  %i.qx = load ptr, ptr %i.py, align 8, !tbaa !27 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8 ; 4 uses
  %i.qz = icmp eq ptr %i.qx, null
  %spec.select.i.i575 = select i1 %i.qz, ptr null, ptr %i.qy ; 2 uses
  %i.ra = getelementptr inbounds i8, ptr %spec.select.i.i575, i64 -8 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !30
  %i.rd = icmp eq i32 %i.rc, 7
  br i1 %i.rd, label %bb.ch, label %.critedge.thread

bb.ch:                                            ; preds = %.lr.ph.i571.preheader
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 12 ; 3 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !127
  %i.rg = icmp ult i32 %i.rf, 4
  br i1 %i.rg, label %bb.ci, label %.critedge.thread

bb.ci:                                            ; preds = %bb.ch
  %i.rh = getelementptr inbounds nuw i8, ptr %i.px, i64 88
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !52
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.cj, label %.critedge.thread

bb.cj:                                            ; preds = %bb.ci
  %i.rk = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 6 uses
  %i.rl = load i32, ptr %i.re, align 4, !tbaa !127
  %i.rm = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 20
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !116
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 8 ; 2 uses
  store ptr null, ptr %i.ro, align 8, !tbaa !27
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  store i32 9, ptr %i.rp, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm21CheckChildSameMatcherE, i64 16), ptr %i.rk, align 8, !tbaa !37
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 20
  store i32 %i.rl, ptr %i.rq, align 4, !tbaa !118
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  store i32 %i.rn, ptr %i.rr, align 8, !tbaa !119
  %i.rs = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #14 ; 3 uses
  %i.rt = load i32, ptr %i.re, align 4, !tbaa !127
  %i.ru = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  call void @_ZN4llvm17ValueTypeByHwModeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(60) %9, ptr noundef nonnull align 8 dereferenceable(60) %i.ru)
  call void @_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE(ptr noundef nonnull align 8 dereferenceable(88) %i.rs, i32 noundef %i.rt, ptr nofree noundef nonnull align 8 dereferenceable(64) %9)
  %i.rv = load ptr, ptr %i.ac, align 8, !tbaa !54
  call void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(60) %9, ptr noundef %i.rv)
  %.not16.i577 = icmp eq ptr %.sroa.0277.08961077, %i.qy
  br i1 %.not16.i577, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit582, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rw = load ptr, ptr %.sroa.0277.08961077, align 8, !tbaa !27 ; 2 uses
  %.not.i578 = icmp eq ptr %i.rw, %i.ra
  br i1 %.not.i578, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit582, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.ra, ptr %.sroa.0277.08961077, align 8, !tbaa !27
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %bb.cl
  %.0.i579 = phi ptr [ %i.rw, %bb.cl ], [ %i.ry, %bb.cm ] ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.0.i579, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !27 ; 2 uses
  %i.rz = load ptr, ptr %.0.i579, align 8, !tbaa !37
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(20) %.0.i579) #15, !inline_history !96
  %.not12.i580 = icmp eq ptr %i.ry, %i.ra
  br i1 %.not12.i580, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit582, label %bb.cm, !llvm.loop !97

_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit582: ; preds = %bb.cm, %bb.cj, %bb.ck
  store ptr %i.rs, ptr %i.ro, align 8, !tbaa !27
  %i.sc = load ptr, ptr %i.qy, align 8, !tbaa !27
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  store ptr %i.sc, ptr %i.sd, align 8, !tbaa !27
  store ptr %i.rk, ptr %i.qy, align 8, !tbaa !27
  br label %select.unfold

.thread796:                                       ; preds = %.thread780
  %i.se = icmp eq i32 %i.gc, 7
  br i1 %i.se, label %bb.cn, label %.critedge.thread

bb.cn:                                            ; preds = %.thread796
  %.not16.i591 = icmp eq ptr %.sroa.0277.08961077, %i.fy
  br i1 %.not16.i591, label %select.unfold, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sf = load ptr, ptr %.sroa.0277.08961077, align 8, !tbaa !27 ; 2 uses
  %.not.i592 = icmp eq ptr %i.sf, %i.ga
  br i1 %.not.i592, label %select.unfold, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store ptr %i.ga, ptr %.sroa.0277.08961077, align 8, !tbaa !27
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.0.i593 = phi ptr [ %i.sf, %bb.cp ], [ %i.sh, %bb.cq ] ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.0.i593, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !27 ; 2 uses
  %i.si = load ptr, ptr %.0.i593, align 8, !tbaa !37
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load ptr, ptr %i.sj, align 8
  call void %i.sk(ptr noundef nonnull align 8 dereferenceable(20) %.0.i593) #15, !inline_history !96
  %.not12.i594 = icmp eq ptr %i.sh, %i.ga
  br i1 %.not12.i594, label %select.unfold, label %bb.cq, !llvm.loop !97

.lr.ph.i598.preheader:                            ; preds = %bb.y
  %i.sl = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 16
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !30
  %i.sn = icmp eq i32 %i.sm, 7
  br i1 %i.sn, label %.lr.ph.i605.preheader, label %.critedge.thread

.lr.ph.i605.preheader:                            ; preds = %.lr.ph.i598.preheader
  %i.so = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 8
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !27 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = icmp eq ptr %i.sp, null                 ; 3 uses
  %spec.select.i.i609 = select i1 %i.sr, ptr null, ptr %i.sq ; 2 uses
  %i.ss = getelementptr inbounds i8, ptr %spec.select.i.i609, i64 -8
  %i.st = select i1 %i.sr, ptr null, ptr %i.ss    ; 4 uses
  %.not16.i611 = icmp eq ptr %.sroa.0277.08961077, %spec.select.i.i609
  br i1 %.not16.i611, label %.thread819, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i605.preheader
  %i.su = load ptr, ptr %.sroa.0277.08961077, align 8, !tbaa !27 ; 2 uses
  %.not.i612 = icmp eq ptr %i.su, %i.st
  br i1 %.not.i612, label %.thread819, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.st, ptr %.sroa.0277.08961077, align 8, !tbaa !27
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %bb.cs
  %.0.i613 = phi ptr [ %i.su, %bb.cs ], [ %i.sw, %bb.ct ] ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.0.i613, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !27 ; 2 uses
  %i.sx = load ptr, ptr %.0.i613, align 8, !tbaa !37
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.sz = load ptr, ptr %i.sy, align 8
  call void %i.sz(ptr noundef nonnull align 8 dereferenceable(20) %.0.i613) #15, !inline_history !96
  %.not12.i614 = icmp eq ptr %i.sw, %i.st
  br i1 %.not12.i614, label %.thread819, label %bb.ct, !llvm.loop !97

.thread819:                                       ; preds = %bb.ct, %bb.cr, %.lr.ph.i605.preheader
  %i.ta = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  br i1 %i.sr, label %.thread824, label %select.unfold

.lr.ph.i619.preheader:                            ; preds = %bb.y
  %i.tb = icmp eq ptr %.pre963.pre965.pre.pre.pre, null
  %i.tc = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 16
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !30
  %i.te = icmp ne i32 %i.td, 35
  %.not840 = or i1 %i.te, %i.tb
  br i1 %.not840, label %.critedge.thread, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i619.preheader
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 280
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !142 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 32
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !32 ; 3 uses
  %.not359890 = icmp eq i32 %i.ti, 0
  br i1 %.not359890, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cu
  %i.tj = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 24
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !33 ; 2 uses
  %i.tl = zext i32 %i.ti to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ti, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.tl, 4294967288              ; 4 uses
  %i.tm = trunc nuw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.tg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ts, %vector.body ]
  %vec.phi1083 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.tt, %vector.body ]
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %index ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %wide.load = load <4 x i32>, ptr %i.tn, align 4, !tbaa !68
  %wide.load1084 = load <4 x i32>, ptr %i.to, align 4, !tbaa !68
  %i.tp = add <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.tq = icmp ne <4 x i32> %wide.load, %i.tp
  %i.tr = icmp ne <4 x i32> %wide.load1084, %.reass
  %i.ts = or <4 x i1> %vec.phi, %i.tq             ; 2 uses
  %i.tt = or <4 x i1> %vec.phi1083, %i.tr         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.tu = icmp eq i64 %index.next, %n.vec
  br i1 %i.tu, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.tt, %i.ts
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.tv = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not1086 = icmp eq i4 %i.tv, 0                 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.tl
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.0315892.ph = phi i32 [ 0, %.lr.ph ], [ %i.tm, %middle.block ]
  %.0316891.ph = phi i1 [ true, %.lr.ph ], [ %.not1086, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.cu
  %.0316.lcssa = phi i1 [ true, %bb.cu ], [ %.not1086, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 48
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !149, !nonnull !69, !align !70 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 272
  %i.tz = load i8, ptr %i.ty, align 8, !tbaa !150, !range !151, !noundef !69
  %i.ua = trunc nuw i8 %i.tz to i1
  br i1 %i.ua, label %bb.cw, label %bb.cv

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0315892 = phi i32 [ %i.ue, %scalar.ph ], [ %.0315892.ph, %scalar.ph.preheader ] ; 2 uses
  %.0316891 = phi i1 [ %spec.select, %scalar.ph ], [ %.0316891.ph, %scalar.ph.preheader ]
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %indvars.iv
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !68
  %i.ud = add i32 %.0315892, %i.tg
  %.not360 = icmp eq i32 %i.uc, %i.ud
  %spec.select = select i1 %.not360, i1 %.0316891, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ue = add nuw i32 %.0315892, 1
  %.not359 = icmp eq i64 %indvars.iv.next, %i.tl
  br i1 %.not359, label %._crit_edge, label %scalar.ph, !llvm.loop !99

bb.cv:                                            ; preds = %._crit_edge
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !154
  %i.uh = call noundef zeroext i1 @_ZNK4llvm15TreePatternNode15NodeHasPropertyENS_4SDNPERKNS_18CodeGenDAGPatternsE(ptr noundef nonnull align 8 dereferenceable(168) %i.ug, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(1348) %1) #15
  %not. = xor i1 %i.uh, true
  %spec.select363 = select i1 %not., i1 %.0316.lcssa, i1 false
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge
  %.2318 = phi i1 [ %.0316.lcssa, %._crit_edge ], [ %spec.select363, %bb.cv ] ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 274
  %i.uj = load i8, ptr %i.ui, align 2, !tbaa !155, !range !151, !noundef !69
  %i.uk = trunc nuw i8 %i.uj to i1
  br i1 %i.uk, label %bb.cx, label %.split

.split:                                           ; preds = %bb.cw
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !154
  %i.un = call noundef zeroext i1 @_ZNK4llvm15TreePatternNode15NodeHasPropertyENS_4SDNPERKNS_18CodeGenDAGPatternsE(ptr noundef nonnull align 8 dereferenceable(168) %i.um, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(1348) %1) #15
  %not.903 = xor i1 %i.un, true
  %spec.select364 = select i1 %not.903, i1 %.2318, i1 false
  br i1 %spec.select364, label %.critedge370, label %..critedge368thread-pre-split_crit_edge

bb.cx:                                            ; preds = %bb.cw
  br i1 %.2318, label %.critedge370, label %..critedge368thread-pre-split_crit_edge

..critedge368thread-pre-split_crit_edge:          ; preds = %.split, %bb.cx
  %.pr822.pre = load i32, ptr %i.am, align 8, !tbaa !30
  %.pre963.pre.pre = load ptr, ptr %.sroa.0697.08941079, align 8, !tbaa !27
  br label %.critedge368

.critedge370:                                     ; preds = %.split, %bb.cx
  %i.uo = getelementptr inbounds nuw i8, ptr %.pre963.pre965.pre.pre.pre, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 272
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !33 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 32
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !32
  %i.uu = zext i32 %i.ut to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 232
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !33
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 240
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !32 ; 4 uses
  %i.uz = zext i32 %i.uy to i64                   ; 2 uses
  %i.va = call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #14 ; 17 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !156, !nonnull !69, !align !70
  %i.vd = load <4 x i8>, ptr %i.up, align 8, !tbaa !157
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941079, i64 276
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !158
  %i.vg = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 2 uses
  store ptr null, ptr %i.vg, align 8, !tbaa !27
  %i.vh = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  store i32 36, ptr %i.vh, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm21EmitNodeMatcherCommonE, i64 16), ptr %i.va, align 8, !tbaa !37
  %i.vi = getelementptr inbounds nuw i8, ptr %i.va, i64 24
  store ptr %i.vc, ptr %i.vi, align 8, !tbaa !159
  %i.vj = getelementptr inbounds nuw i8, ptr %i.va, i64 32 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.va, i64 48
  store ptr %i.vk, ptr %i.vj, align 8, !tbaa !33
  %i.vl = getelementptr inbounds nuw i8, ptr %i.va, i64 40
  store i32 0, ptr %i.vl, align 8, !tbaa !32
  %i.vm = getelementptr inbounds nuw i8, ptr %i.va, i64 44
  store i32 3, ptr %i.vm, align 4, !tbaa !71
  %i.vn = getelementptr inbounds nuw [64 x i8], ptr %i.ur, i64 %i.uu
  call void @_ZN4llvm15SmallVectorImplINS_17ValueTypeByHwModeEE6appendIPKS1_vEEvT_S6_(ptr noundef nonnull align 8 dereferenceable(208) %i.vj, ptr noundef %i.ur, ptr noundef %i.vn)
  %i.vo = getelementptr inbounds nuw i8, ptr %i.va, i64 240 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.va, i64 256 ; 3 uses
  store ptr %i.vp, ptr %i.vo, align 8, !tbaa !33
  %i.vq = getelementptr inbounds nuw i8, ptr %i.va, i64 248 ; 4 uses
  store i32 0, ptr %i.vq, align 8, !tbaa !32
  %i.vr = getelementptr inbounds nuw i8, ptr %i.va, i64 252
  store i32 6, ptr %i.vr, align 4, !tbaa !71
  %.idx.i.i.i = shl nuw nsw i64 %i.uz, 2
  %i.vs = icmp ugt i32 %i.uy, 6
  br i1 %i.vs, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i.i, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i.i: ; preds = %.critedge370
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.vo, ptr noundef nonnull %i.vp, i64 noundef %i.uz, i64 noundef 4) #15
  %.pre8.pre.i.i.i.i = load i32, ptr %i.vq, align 8, !tbaa !32
  %i.vt = zext i32 %.pre8.pre.i.i.i.i to i64
  %.pre.i.i = load ptr, ptr %i.vo, align 8, !tbaa !33
  br label %bb.cy

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i: ; preds = %.critedge370
  %.not.i.i.i.i.i = icmp eq i32 %i.uy, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm18MorphNodeToMatcherC2ERKNS_18CodeGenInstructionENS_8ArrayRefINS_17ValueTypeByHwModeEEENS4_IjEEbbbbiRKNS_14PatternToMatchE.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i.i
  %i.vu = phi ptr [ %.pre.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i.i ], [ %i.vp, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i ]
  %.pre8.i5.i.i.i = phi i64 [ %i.vt, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i ]
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %.pre8.i5.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vv, ptr align 4 %i.uw, i64 %.idx.i.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.vq, align 8, !tbaa !32
  br label %_ZN4llvm18MorphNodeToMatcherC2ERKNS_18CodeGenInstructionENS_8ArrayRefINS_17ValueTypeByHwModeEEENS4_IjEEbbbbiRKNS_14PatternToMatchE.exit

_ZN4llvm18MorphNodeToMatcherC2ERKNS_18CodeGenInstructionENS_8ArrayRefINS_17ValueTypeByHwModeEEENS4_IjEEbbbbiRKNS_14PatternToMatchE.exit: ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i, %bb.cy
  %i.vw = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.cy ]
  %i.vx = add i32 %i.vw, %i.uy
  store i32 %i.vx, ptr %i.vq, align 8, !tbaa !32
  %i.vy = getelementptr inbounds nuw i8, ptr %i.va, i64 280
  store <4 x i8> %i.vd, ptr %i.vy, align 8, !tbaa !157
  %i.vz = getelementptr inbounds nuw i8, ptr %i.va, i64 284
  store i32 %i.vf, ptr %i.vz, align 4, !tbaa !158
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm18MorphNodeToMatcherE, i64 16), ptr %i.va, align 8, !tbaa !37
  %i.wa = getelementptr inbounds nuw i8, ptr %i.va, i64 288
  store ptr %i.tx, ptr %i.wa, align 8, !tbaa !160
  %i.wb = load ptr, ptr %i.uo, align 8, !tbaa !27 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = icmp eq ptr %i.wb, null                 ; 2 uses
  %spec.select.i.i635 = select i1 %i.wd, ptr null, ptr %i.wc ; 2 uses
  %i.we = getelementptr inbounds i8, ptr %spec.select.i.i635, i64 -8
  %i.wf = select i1 %i.wd, ptr null, ptr %i.we    ; 3 uses
  %.not16.i637 = icmp eq ptr %.sroa.0277.08961077, %spec.select.i.i635
  %.pre961 = load ptr, ptr %.sroa.0277.08961077, align 8, !tbaa !27 ; 3 uses
  %.not.i638 = icmp eq ptr %.pre961, %i.wf
  %or.cond = select i1 %.not16.i637, i1 true, i1 %.not.i638
  br i1 %or.cond, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit642, label %bb.cz
end_hunk_1
