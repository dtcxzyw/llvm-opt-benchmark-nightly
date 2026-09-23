Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIMemoryLegalizer?download=true
inline.NumInlined: 1859
inline.NumDeleted: 1059
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK12_GLOBAL__N_113SIMemOpAccess22constructFromMIWithMMOERKN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE:bb.a
  %.066.lcssa = phi i32 [ 0, %_ZNK4llvm12MachineInstr11memoperandsEv.exit ], [ %.369.ph, %._crit_edge.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %.062.lcssa = phi i32 [ 0, %_ZNK4llvm12MachineInstr11memoperandsEv.exit ], [ %.365.ph, %._crit_edge.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.060.lcssa = phi i8 [ 1, %_ZNK4llvm12MachineInstr11memoperandsEv.exit ], [ %i.cm, %._crit_edge.loopexit ], [ 1, %bb.a ], [ 1, %bb.b ]
  %.058.lcssa = phi i8 [ 0, %_ZNK4llvm12MachineInstr11memoperandsEv.exit ], [ %i.z, %._crit_edge.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.cp = phi <2 x i1> [ zeroinitializer, %_ZNK4llvm12MachineInstr11memoperandsEv.exit ], [ %i.af, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !868, !nonnull !22, !align !151 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 496
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !343
  %i.cu = icmp sgt i32 %i.ct, 10
  br i1 %i.cu, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %i.cv = load ptr, ptr %2, align 8, !tbaa !358
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !377
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !382 ; 2 uses
  %i.da = and i64 %i.cz, 393216
  %.not167 = icmp eq i64 %i.da, 0
  br i1 %.not167, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.db = and i64 %i.cz, 432345564227567616
  %i.dc = icmp ne i64 %i.db, 0
  %i.dd = icmp eq i32 %.066.lcssa, 0
  %or.cond = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond, label %.thread142, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge
  %.not74 = icmp eq i32 %.066.lcssa, 0
  br i1 %.not74, label %bb.ab, label %.thread142

.thread142:                                       ; preds = %bb.m, %bb.n
  %.5145 = phi i32 [ %.066.lcssa, %bb.n ], [ 2, %bb.m ]
  %.val79 = load ptr, ptr %1, align 8             ; 10 uses
  %i.de = icmp eq i8 %.sroa.5106.0.lcssa, 1
  br i1 %i.de, label %.thread156, label %bb.o

bb.o:                                             ; preds = %.thread142
  %i.df = getelementptr inbounds nuw i8, ptr %.val79, i64 57
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !396, !noalias !869
  %i.dh = icmp eq i8 %.sroa.5106.0.lcssa, %i.dg
  br i1 %i.dh, label %.thread156, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %.val79, i64 60
  %i.dj = load i8, ptr %i.di, align 4, !tbaa !397, !noalias !869
  %i.dk = icmp eq i8 %.sroa.5106.0.lcssa, %i.dj
  br i1 %i.dk, label %.thread156, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %.val79, i64 58
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !398, !noalias !869
  %i.dn = icmp eq i8 %.sroa.5106.0.lcssa, %i.dm
  br i1 %i.dn, label %.thread156, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %.val79, i64 59
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !399, !noalias !869
  %i.dq = icmp eq i8 %.sroa.5106.0.lcssa, %i.dp
  br i1 %i.dq, label %.thread156, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = icmp eq i8 %.sroa.5106.0.lcssa, 0
  br i1 %i.dr, label %.thread156, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %.val79, i64 61
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !400, !noalias !869
  %i.du = icmp eq i8 %.sroa.5106.0.lcssa, %i.dt
  br i1 %i.du, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %.val79, i64 62
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !401, !noalias !869
  %i.dx = icmp eq i8 %.sroa.5106.0.lcssa, %i.dw
  br i1 %i.dx, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %.val79, i64 66
  %i.dz = load i8, ptr %i.dy, align 2, !tbaa !402, !noalias !869
  %i.ea = icmp eq i8 %.sroa.5106.0.lcssa, %i.dz
  br i1 %i.ea, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %.val79, i64 63
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !403, !noalias !869
  %i.ed = icmp eq i8 %.sroa.5106.0.lcssa, %i.ec
  br i1 %i.ed, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %.val79, i64 64
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !404, !noalias !869
  %i.eg = icmp eq i8 %.sroa.5106.0.lcssa, %i.ef
  br i1 %i.eg, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %.val79, i64 65
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !405, !noalias !869
  %i.ej = icmp eq i8 %.sroa.5106.0.lcssa, %i.ei
  br i1 %i.ej, label %bb.z, label %_ZNK12_GLOBAL__N_113SIMemOpAccess15toSIAtomicScopeEhNS_17SIAtomicAddrSpaceE.exit

_ZNK12_GLOBAL__N_113SIMemOpAccess15toSIAtomicScopeEhNS_17SIAtomicAddrSpaceE.exit: ; preds = %bb.y
  %i.ek = load ptr, ptr %2, align 8, !tbaa !358
  %i.el = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ek) #20
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !150, !nonnull !22, !align !151 ; 2 uses
  %i.en = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.em) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.eo, align 1, !tbaa !408
  store ptr @.str.6, ptr %7, align 8, !tbaa !381
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.ep, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.eq = load ptr, ptr %2, align 8, !tbaa !358
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.er) #20
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 25, ptr %i.es, align 8, !tbaa !412
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.et, align 4, !tbaa !413
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.em, ptr %i.eu, align 8, !tbaa !414
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !417
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm25DiagnosticInfoUnsupportedE, i64 16), ptr %6, align 8, !tbaa !14
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %7, ptr %i.ew, align 8, !tbaa !419
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 8 dereferenceable(13) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.critedge

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sroa.7.0.ph = phi i32 [ 2, %bb.x ], [ 6, %bb.t ], [ 5, %bb.u ], [ 4, %bb.v ], [ 3, %bb.w ], [ 1, %bb.y ]
  %.sroa.592.0.ph = and i32 %.0.lcssa, 15         ; 2 uses
  %i.ex = icmp eq i32 %.sroa.592.0.ph, 0
  br i1 %i.ex, label %bb.aa, label %.thread156

.thread156:                                       ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %.thread142, %bb.s, %bb.z
  %.sroa.090.0.ph162 = phi i8 [ 0, %bb.z ], [ 1, %bb.s ], [ 1, %.thread142 ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ]
  %.sroa.592.0.ph161 = phi i32 [ %.sroa.592.0.ph, %bb.z ], [ 15, %bb.s ], [ 15, %.thread142 ], [ 15, %bb.o ], [ 15, %bb.p ], [ 15, %bb.q ], [ 15, %bb.r ]
  %.sroa.7.0.ph160 = phi i32 [ %.sroa.7.0.ph, %bb.z ], [ 1, %bb.s ], [ 6, %.thread142 ], [ 5, %bb.o ], [ 4, %bb.p ], [ 3, %bb.q ], [ 2, %bb.r ]
  %i.ey = and i32 %.0.lcssa, 15
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread156, %bb.z
  %i.fa = load ptr, ptr %2, align 8, !tbaa !358
  %i.fb = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %i.fa) #20
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !150, !nonnull !22, !align !151 ; 2 uses
  %i.fd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.fc) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.fe, align 1, !tbaa !408
  store ptr @.str.7, ptr %4, align 8, !tbaa !381
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 3, ptr %i.ff, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.fg = load ptr, ptr %2, align 8, !tbaa !358
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.fh) #20
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 25, ptr %i.fi, align 8, !tbaa !412
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.fj, align 4, !tbaa !413
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.fc, ptr %i.fk, align 8, !tbaa !414
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !417
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm25DiagnosticInfoUnsupportedE, i64 16), ptr %3, align 8, !tbaa !14
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %4, ptr %i.fm, align 8, !tbaa !419
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull align 8 dereferenceable(13) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

bb.ab:                                            ; preds = %.thread156, %bb.n
  %.not74148 = phi i1 [ true, %bb.n ], [ false, %.thread156 ]
  %.5146 = phi i32 [ 0, %bb.n ], [ %.5145, %.thread156 ]
  %.0113 = phi i8 [ 0, %bb.n ], [ %.sroa.090.0.ph162, %.thread156 ] ; 2 uses
  %.0112 = phi i32 [ 0, %bb.n ], [ %.sroa.592.0.ph161, %.thread156 ] ; 2 uses
  %.0111 = phi i32 [ 0, %bb.n ], [ %.sroa.7.0.ph160, %.thread156 ] ; 5 uses
  %i.fn = load ptr, ptr %2, align 8, !tbaa !358
  %i.fo = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113hasAVNoneMMRAERKN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %i.fn)
  %i.fp = getelementptr i8, ptr %i.cr, i64 690
  %.val = load i8, ptr %i.fp, align 2
  %i.fq = zext i1 %i.fo to i8
  br i1 %.not74148, label %_ZN12_GLOBAL__N_111SIMemOpInfoC2ERKN4llvm12GCNSubtargetENS1_14AtomicOrderingENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceES7_bS5_bbbbb.exit, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i

_ZN4llvm13isPowerOf2_32Ej.exit.thread.i:          ; preds = %bb.ab
  %i.fr = icmp eq i32 %.0112, %.0.lcssa
  %.not.i.i.i = icmp ne i32 %.0.lcssa, 0
  %or.cond.not20.i = and i1 %.not.i.i.i, %i.fr
  %i.fs = tail call range(i32 1, 6) i32 @llvm.ctpop.i32(i32 %.0.lcssa)
  %i.ft = icmp samesign ult i32 %i.fs, 2
  %or.cond18.i = select i1 %or.cond.not20.i, i1 %i.ft, i1 false
  %spec.select = select i1 %or.cond18.i, i8 0, i8 %.0113 ; 3 uses
  %i.fu = and i32 %.0.lcssa, 27
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i
  %i.fw = icmp ne i32 %.0111, 0
  %i.fx = zext i1 %i.fw to i32
  br label %_ZN12_GLOBAL__N_111SIMemOpInfoC2ERKN4llvm12GCNSubtargetENS1_14AtomicOrderingENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceES7_bS5_bbbbb.exit

bb.ad:                                            ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i
  %i.fy = and i32 %.0.lcssa, 25
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ae, label %thread-pre-split.i

bb.ae:                                            ; preds = %bb.ad
  %i.ga = tail call i32 @llvm.umin.i32(i32 %.0111, i32 3)
  br label %_ZN12_GLOBAL__N_111SIMemOpInfoC2ERKN4llvm12GCNSubtargetENS1_14AtomicOrderingENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceES7_bS5_bbbbb.exit

thread-pre-split.i:                               ; preds = %bb.ad
  %i.gb = and i32 %.0.lcssa, 17
  %i.gc = icmp eq i32 %i.gb, 0
  %i.gd = tail call i32 @llvm.umin.i32(i32 %.0111, i32 5)
  %.sroa.5.0 = select i1 %i.gc, i32 %i.gd, i32 %.0111 ; 2 uses
  %i.ge = icmp ne i32 %.sroa.5.0, 4
  %i.gf = trunc nuw i8 %.val to i1
  %or.cond19.i = select i1 %i.ge, i1 true, i1 %i.gf
  %spec.select165 = select i1 %or.cond19.i, i32 %.sroa.5.0, i32 5
  br label %_ZN12_GLOBAL__N_111SIMemOpInfoC2ERKN4llvm12GCNSubtargetENS1_14AtomicOrderingENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceES7_bS5_bbbbb.exit

_ZN12_GLOBAL__N_111SIMemOpInfoC2ERKN4llvm12GCNSubtargetENS1_14AtomicOrderingENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceES7_bS5_bbbbb.exit: ; preds = %thread-pre-split.i, %bb.ac, %bb.ae, %bb.ab
  %.sroa.10.1 = phi i8 [ %.0113, %bb.ab ], [ %spec.select, %thread-pre-split.i ], [ %spec.select, %bb.ae ], [ %spec.select, %bb.ac ]
  %.sroa.5.1 = phi i32 [ %.0111, %bb.ab ], [ %spec.select165, %thread-pre-split.i ], [ %i.ga, %bb.ae ], [ %i.fx, %bb.ac ]
  store i32 %.5146, ptr %0, align 4, !tbaa !870
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.062.lcssa, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !870
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.5.1, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !381
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0112, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !381
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0.lcssa, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !381
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !387
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %.058.lcssa, ptr %.sroa.12.0..sroa_idx, align 1, !tbaa !387
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %.060.lcssa, ptr %.sroa.13.0..sroa_idx, align 2, !tbaa !387
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.gg = extractelement <2 x i1> %i.cp, i64 0
  %i.gh = zext i1 %i.gg to i8
  store i8 %i.gh, ptr %.sroa.14.0..sroa_idx, align 1, !tbaa !387
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gi = extractelement <2 x i1> %i.cp, i64 1
  %i.gj = zext i1 %i.gi to i8
  store i8 %i.gj, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !387
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.fq, ptr %.sroa.16.0..sroa_idx, align 1, !tbaa !387
  br label %.critedge

.critedge:                                        ; preds = %_ZN12_GLOBAL__N_111SIMemOpInfoC2ERKN4llvm12GCNSubtargetENS1_14AtomicOrderingENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceES7_bS5_bbbbb.exit, %_ZNK12_GLOBAL__N_113SIMemOpAccess15toSIAtomicScopeEhNS_17SIAtomicAddrSpaceE.exit, %bb.aa, %bb.k
  %.sink = phi i8 [ 1, %_ZN12_GLOBAL__N_111SIMemOpInfoC2ERKN4llvm12GCNSubtargetENS1_14AtomicOrderingENS_13SIAtomicScopeENS_17SIAtomicAddrSpaceES7_bS5_bbbbb.exit ], [ 0, %_ZNK12_GLOBAL__N_113SIMemOpAccess15toSIAtomicScopeEhNS_17SIAtomicAddrSpaceE.exit ], [ 0, %bb.aa ], [ 0, %bb.k ]
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sink, ptr %i.gk, align 4, !tbaa !384
  ret void
}

declare noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhh(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 9 uses
  %i.b = alloca [6 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !381
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.e = load i8, ptr %i.d, align 1, !tbaa !399   ; 3 uses
  store i8 %i.e, ptr %i.c, align 1, !tbaa !381
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.h = load i8, ptr %i.g, align 2, !tbaa !398   ; 3 uses
  store i8 %i.h, ptr %i.f, align 1, !tbaa !381
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i8, ptr %i.j, align 4, !tbaa !397   ; 3 uses
  store i8 %i.k, ptr %i.i, align 1, !tbaa !381
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.n = load i8, ptr %i.m, align 1, !tbaa !396   ; 3 uses
  store i8 %i.n, ptr %i.l, align 1, !tbaa !381
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 1, ptr %i.o, align 1, !tbaa !381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.q = load i8, ptr %i.p, align 1, !tbaa !405   ; 3 uses
  store i8 %i.q, ptr %i.b, align 1, !tbaa !381
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i8, ptr %i.s, align 8, !tbaa !404   ; 3 uses
  store i8 %i.t, ptr %i.r, align 1, !tbaa !381
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.w = load i8, ptr %i.v, align 1, !tbaa !403   ; 3 uses
  store i8 %i.w, ptr %i.u, align 1, !tbaa !381
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.z = load i8, ptr %i.y, align 2, !tbaa !402   ; 3 uses
  store i8 %i.z, ptr %i.x, align 1, !tbaa !381
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !401 ; 3 uses
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !381
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !400 ; 3 uses
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !381
  %i.ag = icmp eq i8 %1, 0
  br i1 %i.ag, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp eq i8 %i.q, %1
  br i1 %i.ah, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp eq i8 %i.e, %1
  br i1 %i.ai, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp eq i8 %i.t, %1
  br i1 %i.aj, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq i8 %i.h, %1
  br i1 %i.ak, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = icmp eq i8 %i.w, %1
  br i1 %i.al, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i8 %i.k, %1
  br i1 %i.am, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp eq i8 %i.z, %1
  br i1 %i.an, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq i8 %i.n, %1
  br i1 %i.ao, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i8 %i.ac, %1
  br i1 %i.ap, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = icmp eq i8 %1, 1
  br i1 %i.aq, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp eq i8 %i.af, %1                    ; 2 uses
  %spec.select.i = select i1 %i.ar, i64 4294967301, i64 0
  br label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit

_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.036.145.i = phi i64 [ 4, %bb.i ], [ 0, %bb.a ], [ 4294967296, %bb.b ], [ 1, %bb.c ], [ 4294967297, %bb.d ], [ %spec.select.i, %bb.l ], [ 2, %bb.e ], [ 4294967298, %bb.f ], [ 5, %bb.k ], [ 3, %bb.g ], [ 4294967299, %bb.h ], [ 4294967300, %bb.j ] ; 2 uses
  %.sroa.538.sroa.1.2.i = phi i1 [ true, %bb.i ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ %i.ar, %bb.l ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.k ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.j ]
  %i.as = icmp eq i8 %2, 0
  br i1 %i.as, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit20, label %bb.m

bb.m:                                             ; preds = %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit
  %i.at = icmp eq i8 %i.q, %2
  br i1 %i.at, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = icmp eq i8 %i.e, %2
  br i1 %i.au, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit20, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = icmp eq i8 %i.t, %2
  br i1 %i.av, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit20, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = icmp eq i8 %i.h, %2
  br i1 %i.aw, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit20, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp eq i8 %i.w, %2
  br i1 %i.ax, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit20, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = icmp eq i8 %i.k, %2
  br i1 %i.ay, label %_ZZNK4llvm23AMDGPUMachineModuleInfo20getMergedSyncScopeIDEhhENKUlhE_clEh.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = icmp eq i8 %i.z, %2
end_hunk_0
