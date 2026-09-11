Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMBaseInstrInfo?download=true
inline.NumInlined: 7065
inline.NumDeleted: 2511
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZNK4llvm16ARMBaseInstrInfo13foldImmediateERNS_12MachineInstrES2_NS_8RegisterEPNS_19MachineRegisterInfoE:bb.a
    i32 4385, label %bb.ae
    i32 4224, label %bb.aj
    i32 4111, label %bb.aj
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.bc = icmp eq i32 %i.as, 2056
  %or.cond7 = and i1 %i.bc, %i.bb
  br i1 %or.cond7, label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = tail call noundef zeroext i1 @_ZN4llvm6ARM_AM17isSOImmTwoPartValEj(i32 noundef %i.aw)
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = icmp eq i32 %i.as, 818
  %i.bf = select i1 %i.be, i32 817, i32 2055
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bg = sub i32 0, %i.aw                        ; 2 uses
  %i.bh = tail call noundef zeroext i1 @_ZN4llvm6ARM_AM17isSOImmTwoPartValEj(i32 noundef %i.bg)
  br i1 %i.bh, label %bb.n, label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp eq i32 %i.as, 818
  %i.bj = select i1 %i.bi, i32 2055, i32 817
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.0113 = phi i32 [ %i.bf, %bb.l ], [ %i.bj, %bb.n ]
  %.0111 = phi i32 [ %i.aw, %bb.l ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bk = tail call noundef i32 @_ZN4llvm6ARM_AM20getSOImmTwoPartFirstEj(i32 noundef %.0111)
  %i.bl = tail call noundef i32 @_ZN4llvm6ARM_AM21getSOImmTwoPartSecondEj(i32 noundef %.0111)
  br label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit

bb.p:                                             ; preds = %bb.i, %bb.i
  %i.bm = icmp ult i32 %i.aw, 256
  br i1 %i.bm, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aw, i1 true)
  %i.bo = and i32 %i.bn, 30                       ; 3 uses
  %i.bp = tail call noundef i32 @llvm.fshr.i32(i32 %i.aw, i32 %i.aw, i32 %i.bo)
  %i.bq = icmp ult i32 %i.bp, 256
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = sub nsw i32 0, %i.bo
  %i.bs = and i32 %i.br, 30
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bt = and i32 %i.aw, 63
  %.not.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = and i32 %i.aw, -64
  %i.bv = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bu, i1 false)
  %i.bw = and i32 %i.bv, 62                       ; 2 uses
  %i.bx = tail call noundef i32 @llvm.fshr.i32(i32 %i.aw, i32 %i.aw, i32 %i.bw)
  %i.by = icmp ugt i32 %i.bx, 255
  %i.bz = sub nsw i32 0, %i.bw
  %i.ca = and i32 %i.bz, 30
  br i1 %i.by, label %bb.u, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cb = sub nsw i32 0, %i.bo
  %i.cc = and i32 %i.cb, 30
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i

_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i:      ; preds = %bb.u, %bb.t, %bb.r, %bb.p
  %.2.i.i = phi i32 [ 0, %bb.p ], [ %i.bs, %bb.r ], [ %i.cc, %bb.u ], [ %i.ca, %bb.t ]
  %i.cd = tail call noundef i32 @llvm.fshr.i32(i32 -256, i32 -256, i32 %.2.i.i)
  %i.ce = and i32 %i.cd, %i.aw                    ; 10 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i
  %i.cg = icmp ult i32 %i.ce, 256
  br i1 %i.cg, label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ce, i1 true)
  %i.ci = and i32 %i.ch, 30                       ; 3 uses
  %i.cj = tail call noundef i32 @llvm.fshr.i32(i32 %i.ce, i32 %i.ce, i32 %i.ci)
  %i.ck = icmp ult i32 %i.cj, 256
  br i1 %i.ck, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cl = sub nsw i32 0, %i.ci
  %i.cm = and i32 %i.cl, 30
  br label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit

bb.y:                                             ; preds = %bb.w
  %i.cn = and i32 %i.ce, 63
  %.not.i7.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i7.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = and i32 %i.ce, -64
  %i.cp = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.co, i1 false)
  %i.cq = and i32 %i.cp, 62                       ; 2 uses
  %i.cr = tail call noundef i32 @llvm.fshr.i32(i32 %i.ce, i32 %i.ce, i32 %i.cq)
  %i.cs = icmp ugt i32 %i.cr, 255
  %i.ct = sub nsw i32 0, %i.cq
  %i.cu = and i32 %i.ct, 30
  br i1 %i.cs, label %bb.aa, label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cv = sub nsw i32 0, %i.ci
  %i.cw = and i32 %i.cv, 30
  br label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit

_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit:        ; preds = %bb.v, %bb.x, %bb.z, %bb.aa
  %.2.i8.i = phi i32 [ 0, %bb.v ], [ %i.cm, %bb.x ], [ %i.cw, %bb.aa ], [ %i.cu, %bb.z ]
  %i.cx = tail call noundef i32 @llvm.fshr.i32(i32 -256, i32 -256, i32 %.2.i8.i)
  %i.cy = and i32 %i.cx, %i.ce
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.ab, label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit.thread

bb.ab:                                            ; preds = %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit
  %i.da = tail call noundef i32 @_ZN4llvm6ARM_AM20getSOImmTwoPartFirstEj(i32 noundef %i.aw) ; 3 uses
  %i.db = tail call noundef i32 @_ZN4llvm6ARM_AM21getSOImmTwoPartSecondEj(i32 noundef %i.aw) ; 3 uses
  switch i32 %i.as, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit [
    i32 1876, label %bb.ac
    i32 909, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  br label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit

bb.ad:                                            ; preds = %bb.ab
  br label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit

bb.ae:                                            ; preds = %bb.i, %bb.i
  %i.dc = icmp eq i32 %i.as, 4385
  %or.cond9 = and i1 %i.dc, %i.bb
  br i1 %or.cond9, label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !239
  %i.df = icmp eq i32 %i.de, 17                   ; 2 uses
  %i.dg = select i1 %i.df, i32 4053, i32 4049     ; 2 uses
  %i.dh = select i1 %i.df, i32 4387, i32 4383     ; 2 uses
  %i.di = tail call noundef zeroext i1 @_ZN4llvm6ARM_AM19isT2SOImmTwoPartValEj(i32 noundef %i.aw)
  br i1 %i.di, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dj = icmp eq i32 %i.as, 4051
  %i.dk = select i1 %i.dj, i32 %i.dg, i32 %i.dh
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  %i.dl = sub i32 0, %i.aw                        ; 2 uses
  %i.dm = tail call noundef zeroext i1 @_ZN4llvm6ARM_AM19isT2SOImmTwoPartValEj(i32 noundef %i.dl)
  br i1 %i.dm, label %bb.ai, label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dn = icmp eq i32 %i.as, 4051
  %i.do = select i1 %i.dn, i32 %i.dh, i32 %i.dg
  br label %.thread

.thread:                                          ; preds = %bb.ag, %bb.ai
  %.1114 = phi i32 [ %i.dk, %bb.ag ], [ %i.do, %bb.ai ]
  %.1112 = phi i32 [ %i.aw, %bb.ag ], [ %i.dl, %bb.ai ] ; 2 uses
  %i.dp = tail call noundef i32 @_ZN4llvm6ARM_AM22getT2SOImmTwoPartFirstEj(i32 noundef %.1112)
  %i.dq = tail call noundef i32 @_ZN4llvm6ARM_AM23getT2SOImmTwoPartSecondEj(i32 noundef %.1112)
  br label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit

bb.aj:                                            ; preds = %bb.i, %bb.i
  %i.dr = tail call noundef zeroext i1 @_ZN4llvm6ARM_AM19isT2SOImmTwoPartValEj(i32 noundef %i.aw)
  br i1 %i.dr, label %bb.ak, label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ds = tail call noundef i32 @_ZN4llvm6ARM_AM22getT2SOImmTwoPartFirstEj(i32 noundef %i.aw) ; 3 uses
  %i.dt = tail call noundef i32 @_ZN4llvm6ARM_AM23getT2SOImmTwoPartSecondEj(i32 noundef %i.aw) ; 3 uses
  switch i32 %i.as, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit [
    i32 4224, label %bb.al
    i32 4111, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  br label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit

bb.am:                                            ; preds = %bb.ak
  br label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit

_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit: ; preds = %.thread, %bb.o, %bb.i, %bb.ab, %bb.ad, %bb.ac, %bb.ak, %bb.am, %bb.al
  %.3116 = phi i32 [ 0, %bb.i ], [ %.0113, %bb.o ], [ 0, %bb.ab ], [ 1875, %bb.ac ], [ 908, %bb.ad ], [ %.1114, %.thread ], [ 0, %bb.ak ], [ 4223, %bb.al ], [ 4110, %bb.am ] ; 2 uses
  %.1110 = phi i32 [ 0, %bb.i ], [ %i.bk, %bb.o ], [ %i.da, %bb.ab ], [ %i.da, %bb.ac ], [ %i.da, %bb.ad ], [ %i.dp, %.thread ], [ %i.ds, %bb.ak ], [ %i.ds, %bb.al ], [ %i.ds, %bb.am ]
  %.1108 = phi i32 [ 0, %bb.i ], [ %i.bl, %bb.o ], [ %i.db, %bb.ab ], [ %i.db, %bb.ac ], [ %i.db, %bb.ad ], [ %i.dq, %.thread ], [ %i.dt, %bb.ak ], [ %i.dt, %bb.al ], [ %i.dt, %bb.am ]
  %i.du = select i1 %i.bb, i64 2, i64 1
  %i.dv = load ptr, ptr %i.ax, align 8, !tbaa !238
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.dv, i64 %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !239
  %i.dz = load i32, ptr %i.dw, align 8            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.eb = and i32 %3, 2147483647
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !55
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.ec
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ee, align 8
  %i.ef = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.eg = inttoptr i64 %i.ef to ptr               ; 2 uses
  %i.eh = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %4, ptr noundef %i.eg, ptr nonnull @.str.2, i64 0) #26 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.014.0.copyload = load ptr, ptr %i.ek, align 8, !tbaa !408
  store ptr %.sroa.014.0.copyload, ptr %7, align 8, !tbaa !408
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 0, i64 24, i1 false)
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !44
  %i.eo = zext nneg i32 %.3116 to i64
  %i.ep = sub nsw i64 0, %i.eo                    ; 2 uses
  %i.eq = getelementptr inbounds [32 x i8], ptr %i.en, i64 %i.ep
  %i.er = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ej, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i32 %i.eh) ; 2 uses
  %i.es = extractvalue { ptr, ptr } %i.er, 0      ; 5 uses
  %i.et = extractvalue { ptr, ptr } %i.er, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.eu, align 8, !tbaa !396, !alias.scope !1686
  %10 = shl i32 %i.dz, 2
  %11 = and i32 %10, 67108864
  %12 = xor i32 %11, 67108864
  %13 = and i32 %12, %i.dz
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.dy, ptr %i.ev, align 4, !tbaa !239, !alias.scope !1686
  %i.ew = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i8 0, i64 16, i1 false), !alias.scope !1686
  store i32 %13, ptr %6, align 8, !alias.scope !1686
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.et, ptr noundef nonnull align 8 dereferenceable(1065) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ex = zext i32 %.1110 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 1, ptr %5, align 8, !alias.scope !1687
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ey, align 8, !tbaa !396, !alias.scope !1687
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ex, ptr %i.ez, align 8, !tbaa !239, !alias.scope !1687
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.et, ptr noundef nonnull align 8 dereferenceable(1065) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 1, ptr %8, align 8, !alias.scope !1688
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.fa, align 8, !tbaa !396, !alias.scope !1688
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 14, ptr %i.fb, align 8, !tbaa !239, !alias.scope !1688
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.et, ptr noundef nonnull align 8 dereferenceable(1065) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.et, ptr noundef nonnull align 8 dereferenceable(1065) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.fc) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false), !alias.scope !1689
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.et, ptr noundef nonnull align 8 dereferenceable(1065) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fd = load ptr, ptr %i.em, align 8, !tbaa !44
  %i.fe = getelementptr inbounds [32 x i8], ptr %i.fd, i64 %i.ep
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.fe) #26
  %i.ff = load ptr, ptr %i.ax, align 8, !tbaa !238
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i32 %i.eh) #26
  %i.fh = load ptr, ptr %i.ax, align 8, !tbaa !238
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8
  %i.fk = or i32 %i.fj, 67108864
  store i32 %i.fk, ptr %i.fi, align 8
  %i.fl = load ptr, ptr %i.ax, align 8, !tbaa !238
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.fn = zext i32 %.1108 to i64
  call void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32) %i.fm, i64 noundef %i.fn, i32 noundef 0) #26
  %i.fo = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #26 ; 0 uses
  switch i32 %.3116, label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit.thread [
    i32 4053, label %bb.an
    i32 4387, label %bb.an
    i32 4049, label %bb.an
    i32 4383, label %bb.an
  ]

bb.an:                                            ; preds = %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit, %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit, %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit, %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit
  %i.fp = load ptr, ptr %i.ax, align 8, !tbaa !238
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !239
  %i.fs = call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %4, i32 %i.fr, ptr noundef %i.eg, i32 noundef 0) #26 ; 0 uses
  br label %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit.thread

_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit.thread: ; preds = %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i, %bb.ah, %bb.f, %bb.h, %bb.j, %bb.m, %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit, %bb.ae, %bb.aj, %bb.an, %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit, %bb.g, %bb.c, %bb.b, %bb.a
  %.8 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.ae ], [ false, %bb.aj ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.m ], [ false, %_ZN4llvm6ARM_AM17isSOImmTwoPartValEj.exit ], [ false, %bb.ah ], [ true, %bb.an ], [ true, %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit ], [ false, %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i ]
  ret i1 %.8
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm6ARM_AM17isSOImmTwoPartValEj(i32 noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = icmp ult i32 %0, 256
  br i1 %i.a, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %i.c = and i32 %i.b, 30                         ; 3 uses
  %i.d = tail call noundef i32 @llvm.fshr.i32(i32 %0, i32 %0, i32 %i.c)
  %i.e = icmp ult i32 %i.d, 256
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i32 0, %i.c
  %i.g = and i32 %i.f, 30
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit

bb.d:                                             ; preds = %bb.b
  %i.h = and i32 %0, 63
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %0, -64
  %i.j = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 false)
  %i.k = and i32 %i.j, 62                         ; 2 uses
  %i.l = tail call noundef i32 @llvm.fshr.i32(i32 %0, i32 %0, i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 255
  %i.n = sub nsw i32 0, %i.k
  %i.o = and i32 %i.n, 30
  br i1 %i.m, label %bb.f, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = sub nsw i32 0, %i.c
  %i.q = and i32 %i.p, 30
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit

_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.2.i = phi i32 [ 0, %bb.a ], [ %i.g, %bb.c ], [ %i.q, %bb.f ], [ %i.o, %bb.e ]
  %i.r = tail call noundef i32 @llvm.fshr.i32(i32 -256, i32 -256, i32 %.2.i)
  %i.s = and i32 %i.r, %0                         ; 10 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit
  %i.u = icmp ult i32 %i.s, 256
  br i1 %i.u, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit9, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.s, i1 true)
  %i.w = and i32 %i.v, 30                         ; 3 uses
  %i.x = tail call noundef i32 @llvm.fshr.i32(i32 %i.s, i32 %i.s, i32 %i.w)
  %i.y = icmp ult i32 %i.x, 256
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = sub nsw i32 0, %i.w
  %i.aa = and i32 %i.z, 30
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit9

bb.j:                                             ; preds = %bb.h
  %i.ab = and i32 %i.s, 63
  %.not.i7 = icmp eq i32 %i.ab, 0
  br i1 %.not.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = and i32 %i.s, -64
  %i.ad = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ac, i1 false)
  %i.ae = and i32 %i.ad, 62                       ; 2 uses
  %i.af = tail call noundef i32 @llvm.fshr.i32(i32 %i.s, i32 %i.s, i32 %i.ae)
  %i.ag = icmp ugt i32 %i.af, 255
  %i.ah = sub nsw i32 0, %i.ae
  %i.ai = and i32 %i.ah, 30
  br i1 %i.ag, label %bb.l, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit9

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = sub nsw i32 0, %i.w
  %i.ak = and i32 %i.aj, 30
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit9

_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit9:       ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.2.i8 = phi i32 [ 0, %bb.g ], [ %i.aa, %bb.i ], [ %i.ak, %bb.l ], [ %i.ai, %bb.k ]
  %i.al = tail call noundef i32 @llvm.fshr.i32(i32 -256, i32 -256, i32 %.2.i8)
  %i.am = and i32 %i.al, %i.s
  %i.an = icmp eq i32 %i.am, 0
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit, %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit9
  %.0 = phi i1 [ %i.an, %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit9 ], [ false, %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm6ARM_AM20getSOImmTwoPartFirstEj(i32 noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = icmp ult i32 %0, 256
  br i1 %i.a, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  %i.c = and i32 %i.b, 30                         ; 3 uses
  %i.d = tail call noundef i32 @llvm.fshr.i32(i32 %0, i32 %0, i32 %i.c)
  %i.e = icmp ult i32 %i.d, 256
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i32 0, %i.c
  %i.g = and i32 %i.f, 30
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit

bb.d:                                             ; preds = %bb.b
  %i.h = and i32 %0, 63
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %0, -64
  %i.j = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 false)
  %i.k = and i32 %i.j, 62                         ; 2 uses
  %i.l = tail call noundef i32 @llvm.fshr.i32(i32 %0, i32 %0, i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 255
  %i.n = sub nsw i32 0, %i.k
  %i.o = and i32 %i.n, 30
  br i1 %i.m, label %bb.f, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = sub nsw i32 0, %i.c
  %i.q = and i32 %i.p, 30
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit

_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit:        ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.2.i = phi i32 [ 0, %bb.a ], [ %i.g, %bb.c ], [ %i.q, %bb.f ], [ %i.o, %bb.e ]
  %i.r = tail call noundef i32 @llvm.fshr.i32(i32 255, i32 255, i32 %.2.i)
  %i.s = and i32 %i.r, %0
  ret i32 %i.s
}

end_hunk_0
