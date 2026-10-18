Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZPostRewrite?download=true
inline.NumInlined: 536
inline.NumDeleted: 302
begin_hunk_0_@_ZN12_GLOBAL__N_118SystemZPostRewrite20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.dk = icmp ne i32 %i.dj, 0
  br label %_ZN4llvm7SystemZ9isHighRegEj.exit13.i.i.i

_ZN4llvm7SystemZ9isHighRegEj.exit13.i.i.i:        ; preds = %bb.i, %_ZN4llvm7SystemZ9isHighRegEj.exit.i.i.i
  %.0.i.i12.i.i.i = phi i1 [ %i.dk, %bb.i ], [ false, %_ZN4llvm7SystemZ9isHighRegEj.exit.i.i.i ] ; 2 uses
  %or.cond.i.i.i = or i1 %.0.i.i.i.i.i, %.0.i.i12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm7SystemZ9isHighRegEj.exit13.i.i.i
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !64
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -58272
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(32) %i.do) #14
  br label %_ZN12_GLOBAL__N_118SystemZPostRewrite8selectMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i

bb.k:                                             ; preds = %_ZN4llvm7SystemZ9isHighRegEj.exit13.i.i.i
  %or.cond3.i.i.i = and i1 %.0.i.i.i.i.i, %.0.i.i12.i.i.i
  br i1 %or.cond3.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dp = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !64
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -54048
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ds) #14
  br label %_ZN12_GLOBAL__N_118SystemZPostRewrite8selectMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i

bb.m:                                             ; preds = %bb.k
  call fastcc void @_ZN12_GLOBAL__N_118SystemZPostRewrite14expandCondMoveERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_(ptr noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.010.022, ptr nonnull %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZN12_GLOBAL__N_118SystemZPostRewrite8selectMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i

bb.n:                                             ; preds = %bb.f
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !65 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !66 ; 12 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 32 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 64 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 36 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !66 ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 68 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !66 ; 8 uses
  %i.ed = lshr i32 %i.dw, 3                       ; 2 uses
  %i.ee = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29SystemZMCRegisterClassStorageE, i64 466), align 2, !tbaa !249
  %i.ef = zext i16 %i.ee to i32                   ; 3 uses
  %.not.i.i.i26.i.i = icmp samesign ult i32 %i.ed, %i.ef
  br i1 %.not.i.i.i26.i.i, label %bb.o, label %_ZN4llvm7SystemZ9isHighRegEj.exit.i27.i.i

bb.o:                                             ; preds = %bb.n
  %i.eg = and i32 %i.dw, 7
  %i.eh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29SystemZMCRegisterClassStorageE, i64 452), align 4, !tbaa !250
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29SystemZMCRegisterClassStorageE, i64 448), i64 %i.ei
  %i.ek = zext nneg i32 %i.ed to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !66
  %i.en = zext i8 %i.em to i32
  %i.eo = shl nuw nsw i32 1, %i.eg
  %i.ep = and i32 %i.eo, %i.en
  %i.eq = icmp ne i32 %i.ep, 0
  br label %_ZN4llvm7SystemZ9isHighRegEj.exit.i27.i.i

_ZN4llvm7SystemZ9isHighRegEj.exit.i27.i.i:        ; preds = %bb.o, %bb.n
  %.0.i.i.i28.i.i = phi i1 [ %i.eq, %bb.o ], [ false, %bb.n ] ; 3 uses
  %i.er = zext i1 %.0.i.i.i28.i.i to i8           ; 6 uses
  %i.es = lshr i32 %i.ea, 3                       ; 2 uses
  %.not.i.i48.i.i.i = icmp samesign ult i32 %i.es, %i.ef
  br i1 %.not.i.i48.i.i.i, label %bb.p, label %_ZN4llvm7SystemZ9isHighRegEj.exit50.i.i.i

bb.p:                                             ; preds = %_ZN4llvm7SystemZ9isHighRegEj.exit.i27.i.i
  %i.et = and i32 %i.ea, 7
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29SystemZMCRegisterClassStorageE, i64 452), align 4, !tbaa !250
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29SystemZMCRegisterClassStorageE, i64 448), i64 %i.ev
  %i.ex = zext nneg i32 %i.es to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !66
  %i.fa = zext i8 %i.ez to i32
  %i.fb = lshr i32 %i.fa, %i.et
  %i.fc = trunc nuw i32 %i.fb to i8
  %i.fd = and i8 %i.fc, 1
  br label %_ZN4llvm7SystemZ9isHighRegEj.exit50.i.i.i

_ZN4llvm7SystemZ9isHighRegEj.exit50.i.i.i:        ; preds = %bb.p, %_ZN4llvm7SystemZ9isHighRegEj.exit.i27.i.i
  %.0.i.i49.i.i.i = phi i8 [ %i.fd, %bb.p ], [ 0, %_ZN4llvm7SystemZ9isHighRegEj.exit.i27.i.i ] ; 2 uses
  %i.fe = lshr i32 %i.ec, 3                       ; 2 uses
  %.not.i.i51.i.i.i = icmp samesign ult i32 %i.fe, %i.ef
  br i1 %.not.i.i51.i.i.i, label %bb.q, label %_ZN4llvm7SystemZ9isHighRegEj.exit53.i.i.i

bb.q:                                             ; preds = %_ZN4llvm7SystemZ9isHighRegEj.exit50.i.i.i
  %i.ff = and i32 %i.ec, 7
  %i.fg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29SystemZMCRegisterClassStorageE, i64 452), align 4, !tbaa !250
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29SystemZMCRegisterClassStorageE, i64 448), i64 %i.fh
  %i.fj = zext nneg i32 %i.fe to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !66
  %i.fm = zext i8 %i.fl to i32
  %i.fn = lshr i32 %i.fm, %i.ff
  %i.fo = trunc nuw i32 %i.fn to i8
  %i.fp = and i8 %i.fo, 1
  br label %_ZN4llvm7SystemZ9isHighRegEj.exit53.i.i.i

_ZN4llvm7SystemZ9isHighRegEj.exit53.i.i.i:        ; preds = %bb.q, %_ZN4llvm7SystemZ9isHighRegEj.exit50.i.i.i
  %.0.i.i52.i.i.i = phi i8 [ %i.fp, %bb.q ], [ 0, %_ZN4llvm7SystemZ9isHighRegEj.exit50.i.i.i ] ; 3 uses
  %i.fq = icmp eq i32 %i.ea, %i.ec
  br i1 %i.fq, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN4llvm7SystemZ9isHighRegEj.exit53.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 72
  %.sroa.021.0.copyload.i.i.i = load ptr, ptr %i.ft, align 8, !tbaa !67
  store ptr %.sroa.021.0.copyload.i.i.i, ptr %7, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.fu = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !64
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -640
  %i.fy = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.fs, ptr nonnull %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fx, i32 %i.dw) ; 2 uses
  %i.fz = extractvalue { ptr, ptr } %i.fy, 0
  %i.ga = extractvalue { ptr, ptr } %i.fy, 1      ; 2 uses
  %i.gb = load i32, ptr %i.dx, align 8            ; 6 uses
  %i.gc = load i32, ptr %i.dz, align 4, !tbaa !66
  %i.gd = add i32 %i.gc, -1
  %i.ge = icmp ult i32 %i.gd, 1073741823
  br i1 %i.ge, label %bb.s, label %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.gf = call noundef zeroext i1 @_ZNK4llvm14MachineOperand11isRenamableEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dx) #14
  %spec.select.i.i.i.i = select i1 %i.gf, i16 512, i16 0
  br label %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit.i.i.i

_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit.i.i.i: ; preds = %bb.s, %bb.r
  %i.gg = phi i16 [ 0, %bb.r ], [ %spec.select.i.i.i.i, %bb.s ]
  %i.gh = icmp slt i32 %i.gb, 0
  %i.gi = select i1 %i.gh, i16 128, i16 0
  %i.gj = lshr i32 %i.gb, 21
  %i.gk = trunc nuw nsw i32 %i.gj to i16
  %i.gl = and i16 %i.gk, 256
  %i.gm = lshr i32 %i.gb, 23
  %i.gn = trunc nuw nsw i32 %i.gm to i16          ; 2 uses
  %i.go = and i16 %i.gn, 32
  %i.gp = and i32 %i.gb, 83886080
  %i.gq = icmp eq i32 %i.gp, 83886080
  %i.gr = select i1 %i.gq, i16 16, i16 0
  %i.gs = lshr i32 %i.gb, 24
  %.lobit.i.i.i.i.i = and i32 %i.gs, 1
  %i.gt = xor i32 %.lobit.i.i.i.i.i, 1
  %i.gu = lshr i32 %i.gb, 26
  %i.gv = and i32 %i.gt, %i.gu
  %.not.i.i.i.i = icmp eq i32 %i.gv, 0
  %i.gw = select i1 %.not.i.i.i.i, i16 0, i16 8
  %i.gx = and i16 %i.gn, 6
  %i.gy = or disjoint i16 %i.gx, %i.gi
  %i.gz = or disjoint i16 %i.gy, %i.gr
  %i.ha = or disjoint i16 %i.gz, %i.go
  %i.hb = or disjoint i16 %i.ha, %i.gl
  %i.hc = or disjoint i16 %i.hb, %i.gw
  %i.hd = or i16 %i.hc, %i.gg
  %i.he = load i32, ptr %i.dy, align 8            ; 6 uses
  %i.hf = load i32, ptr %i.eb, align 4, !tbaa !66
  %i.hg = add i32 %i.hf, -1
  %i.hh = icmp ult i32 %i.hg, 1073741823
  br i1 %i.hh, label %bb.t, label %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit57.i.i.i

bb.t:                                             ; preds = %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit.i.i.i
  %i.hi = call noundef zeroext i1 @_ZNK4llvm14MachineOperand11isRenamableEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dy) #14
  %spec.select.i56.i.i.i = select i1 %i.hi, i16 512, i16 0
  br label %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit57.i.i.i

_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit57.i.i.i: ; preds = %bb.t, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit.i.i.i
  %i.hj = phi i16 [ 0, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit.i.i.i ], [ %spec.select.i56.i.i.i, %bb.t ]
  %i.hk = icmp slt i32 %i.he, 0
  %i.hl = select i1 %i.hk, i16 128, i16 0
  %i.hm = lshr i32 %i.he, 21
  %i.hn = trunc nuw nsw i32 %i.hm to i16
  %i.ho = and i16 %i.hn, 256
  %i.hp = lshr i32 %i.he, 23
  %i.hq = trunc nuw nsw i32 %i.hp to i16          ; 2 uses
  %i.hr = and i16 %i.hq, 32
  %i.hs = and i32 %i.he, 83886080
  %i.ht = icmp eq i32 %i.hs, 83886080
  %i.hu = select i1 %i.ht, i16 16, i16 0
  %i.hv = lshr i32 %i.he, 24
  %.lobit.i.i54.i.i.i = and i32 %i.hv, 1
  %i.hw = xor i32 %.lobit.i.i54.i.i.i, 1
  %i.hx = lshr i32 %i.he, 26
  %i.hy = and i32 %i.hw, %i.hx
  %.not.i55.i.i.i = icmp eq i32 %i.hy, 0
  %i.hz = select i1 %.not.i55.i.i.i, i16 0, i16 8
  %i.ia = and i16 %i.hq, 6
  %i.ib = or disjoint i16 %i.ia, %i.hl
  %i.ic = or disjoint i16 %i.ib, %i.hu
  %i.id = or disjoint i16 %i.ic, %i.hr
  %i.ie = or disjoint i16 %i.id, %i.ho
  %i.if = or disjoint i16 %i.ie, %i.hz
  %i.ig = or i16 %i.if, %i.hj
  %i.ih = and i16 %i.ig, %i.hd                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %12 = and i16 %i.ih, 256
  %13 = and i16 %i.ih, 512
  store ptr null, ptr %i.v, align 8, !tbaa !114, !alias.scope !252
  %i.ii = and i16 %i.ih, 24
  %.not.i58.i.i.i = icmp eq i16 %i.ii, 0
  %i.ij = select i1 %.not.i58.i.i.i, i32 0, i32 67108864
  %14 = zext nneg i16 %13 to i32
  %15 = shl nuw nsw i32 %14, 18
  %16 = zext nneg i16 %12 to i32
  %17 = shl nuw nsw i32 %16, 21
  %18 = and i16 %i.ih, 38
  %19 = zext nneg i16 %18 to i32
  %20 = shl nuw nsw i32 %19, 23
  %21 = or disjoint i32 %20, %i.ij
  %22 = and i16 %i.ih, 192
  %23 = zext nneg i16 %22 to i32
  %24 = shl nuw i32 %23, 24
  %.masked11.masked.i.i.i.i.i = or disjoint i32 %21, %24
  store i32 %i.ea, ptr %i.w, align 4, !tbaa !66, !alias.scope !252
  %.masked.i.i.i.i.i = or disjoint i32 %.masked11.masked.i.i.i.i.i, %17
  %i.ik = or disjoint i32 %.masked.i.i.i.i.i, %15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !252
  store i32 %i.ik, ptr %6, align 8, !alias.scope !252
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ga, ptr noundef nonnull align 8 dereferenceable(1065) %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.il = load ptr, ptr %i.ah, align 8, !tbaa !111
  call void @_ZN4llvm15MachineFunction28substituteDebugValuesForInstERKNS_12MachineInstrERS1_j(ptr noundef nonnull align 8 dereferenceable(1065) %i.il, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(80) %i.ga, i32 noundef 1) #14
  %i.im = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.011.i) #14 ; 0 uses
  br label %_ZN12_GLOBAL__N_118SystemZPostRewrite8selectMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i

bb.u:                                             ; preds = %_ZN4llvm7SystemZ9isHighRegEj.exit53.i.i.i
  %i.in = icmp ne i32 %i.dw, %i.ea
  %i.io = icmp ne i32 %i.dw, %i.ec
  %or.cond138.i.i.i = select i1 %i.in, i1 %i.io, i1 false
  br i1 %or.cond138.i.i.i, label %bb.v, label %.thread.i.i.i

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i = icmp eq i8 %.0.i.i49.i.i.i, %i.er
  br i1 %.not.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 72
  %.sroa.016.0.copyload.i.i.i = load ptr, ptr %i.ir, align 8, !tbaa !67
  store ptr %.sroa.016.0.copyload.i.i.i, ptr %8, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.is = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !64
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -640
  %i.iw = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.iq, ptr nonnull %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.iv, i32 %i.dw) ; 2 uses
  %i.ix = extractvalue { ptr, ptr } %i.iw, 0
  %i.iy = extractvalue { ptr, ptr } %i.iw, 1      ; 2 uses
  %i.iz = load i32, ptr %i.dx, align 8            ; 4 uses
  %i.ja = load i32, ptr %i.dz, align 4, !tbaa !66
  %i.jb = add i32 %i.ja, -1
  %i.jc = icmp ult i32 %i.jb, 1073741823
  br i1 %i.jc, label %bb.x, label %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit62.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.jd = call noundef zeroext i1 @_ZNK4llvm14MachineOperand11isRenamableEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dx) #14
  %i.je = select i1 %i.jd, i32 134217728, i32 0
  br label %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit62.i.i.i

_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit62.i.i.i: ; preds = %bb.x, %bb.w
  %i.jf = phi i32 [ 0, %bb.w ], [ %i.je, %bb.x ]
  %i.jg = and i32 %i.iz, 83886080
  %i.jh = icmp ne i32 %i.jg, 83886080
  %i.ji = lshr i32 %i.iz, 24
  %.lobit.i.i59.i.i.i = and i32 %i.ji, 1
  %i.jj = xor i32 %.lobit.i.i59.i.i.i, 1
  %i.jk = lshr i32 %i.iz, 26
  %i.jl = and i32 %i.jj, %i.jk
  %.not.i60.i.i.i = icmp eq i32 %i.jl, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %i.n, align 8, !tbaa !114, !alias.scope !253
  %.not.i63.i.i.i = and i1 %i.jh, %.not.i60.i.i.i
  %i.jm = select i1 %.not.i63.i.i.i, i32 0, i32 67108864
  store i32 %i.ea, ptr %i.o, align 4, !tbaa !66, !alias.scope !253
  %i.jn = and i32 %i.iz, -1291845632
  %.masked.i.i65.i.i.i = or disjoint i32 %i.jm, %i.jn
  %i.jo = or disjoint i32 %.masked.i.i65.i.i.i, %i.jf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !253
  store i32 %i.jo, ptr %5, align 8, !alias.scope !253
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.iy, ptr noundef nonnull align 8 dereferenceable(1065) %i.ix, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.ab

bb.y:                                             ; preds = %bb.v
  %.not46.i.i.i = icmp eq i8 %.0.i.i52.i.i.i, %i.er
  br i1 %.not46.i.i.i, label %.thread.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 72
  %.sroa.011.0.copyload.i.i.i = load ptr, ptr %i.jr, align 8, !tbaa !67
  store ptr %.sroa.011.0.copyload.i.i.i, ptr %9, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.js = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !64
  %i.jv = getelementptr inbounds i8, ptr %i.ju, i64 -640
  %i.jw = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.jq, ptr nonnull %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.jv, i32 %i.dw) ; 2 uses
  %i.jx = extractvalue { ptr, ptr } %i.jw, 0
  %i.jy = extractvalue { ptr, ptr } %i.jw, 1      ; 2 uses
  %i.jz = load i32, ptr %i.dy, align 8            ; 4 uses
  %i.ka = load i32, ptr %i.eb, align 4, !tbaa !66
  %i.kb = add i32 %i.ka, -1
  %i.kc = icmp ult i32 %i.kb, 1073741823
  br i1 %i.kc, label %bb.aa, label %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit69.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.kd = call noundef zeroext i1 @_ZNK4llvm14MachineOperand11isRenamableEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dy) #14
  %i.ke = select i1 %i.kd, i32 134217728, i32 0
  br label %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit69.i.i.i

_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit69.i.i.i: ; preds = %bb.aa, %bb.z
  %i.kf = phi i32 [ 0, %bb.z ], [ %i.ke, %bb.aa ]
  %i.kg = and i32 %i.jz, 83886080
  %i.kh = icmp ne i32 %i.kg, 83886080
  %i.ki = lshr i32 %i.jz, 24
  %.lobit.i.i66.i.i.i = and i32 %i.ki, 1
  %i.kj = xor i32 %.lobit.i.i66.i.i.i, 1
  %i.kk = lshr i32 %i.jz, 26
  %i.kl = and i32 %i.kj, %i.kk
  %.not.i67.i.i.i = icmp eq i32 %i.kl, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %i.r, align 8, !tbaa !114, !alias.scope !254
  %.not.i70.i.i.i = and i1 %i.kh, %.not.i67.i.i.i
  %i.km = select i1 %.not.i70.i.i.i, i32 0, i32 67108864
  store i32 %i.ec, ptr %i.s, align 4, !tbaa !66, !alias.scope !254
  %i.kn = and i32 %i.jz, -1291845632
  %.masked.i.i72.i.i.i = or disjoint i32 %i.km, %i.kn
  %i.ko = or disjoint i32 %.masked.i.i72.i.i.i, %i.kf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !alias.scope !254
  store i32 %i.ko, ptr %4, align 8, !alias.scope !254
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jy, ptr noundef nonnull align 8 dereferenceable(1065) %i.jx, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit69.i.i.i, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit62.i.i.i
  %.sink.i.i.i = phi ptr [ %i.dy, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit69.i.i.i ], [ %i.dx, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit62.i.i.i ]
  %.sroa.091.0.i.i.i = phi i32 [ %i.ea, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit69.i.i.i ], [ %i.dw, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit62.i.i.i ]
  %.sroa.085.0.i.i.i = phi i32 [ %i.dw, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit69.i.i.i ], [ %i.ec, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit62.i.i.i ]
  %.0125.i.i.i = phi i8 [ %i.er, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit69.i.i.i ], [ %.0.i.i52.i.i.i, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit62.i.i.i ]
  %.0.i.i.i = phi ptr [ %i.jy, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit69.i.i.i ], [ %i.iy, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit62.i.i.i ]
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i.i, i32 %i.dw) #14
  %i.kp = load ptr, ptr %i.ah, align 8, !tbaa !111
  call void @_ZN4llvm15MachineFunction28substituteDebugValuesForInstERKNS_12MachineInstrERS1_j(ptr noundef nonnull align 8 dereferenceable(1065) %i.kp, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i, i32 noundef 1) #14
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ab, %bb.y, %bb.u
  %.0125137.i.i.i = phi i8 [ %.0125.i.i.i, %bb.ab ], [ %i.er, %bb.y ], [ %.0.i.i52.i.i.i, %bb.u ] ; 2 uses
  %.0126136.i.i.i = phi i8 [ %i.er, %bb.ab ], [ %i.er, %bb.y ], [ %.0.i.i49.i.i.i, %bb.u ] ; 2 uses
  %.sroa.085.0135.i.i.i = phi i32 [ %.sroa.085.0.i.i.i, %bb.ab ], [ %i.ec, %bb.y ], [ %i.ec, %bb.u ]
  %.sroa.091.0134.i.i.i = phi i32 [ %.sroa.091.0.i.i.i, %bb.ab ], [ %i.ea, %bb.y ], [ %i.ea, %bb.u ]
  %i.kq = icmp ne i32 %i.dw, %.sroa.091.0134.i.i.i
  %i.kr = icmp eq i32 %i.dw, %.sroa.085.0135.i.i.i
  %or.cond139.i.i.i = select i1 %i.kq, i1 %i.kr, i1 false
  br i1 %or.cond139.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread.i.i.i
  %i.ks = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.kt = call noundef ptr @_ZNK4llvm15TargetInstrInfo18commuteInstructionERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112) %i.ks, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.011.i, i1 noundef zeroext false, i32 noundef 1, i32 noundef 2) #14 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread.i.i.i
  %.1127.i.i.i = phi i8 [ %.0125137.i.i.i, %bb.ac ], [ %.0126136.i.i.i, %.thread.i.i.i ]
  %.1.i.i.i = phi i8 [ %.0126136.i.i.i, %bb.ac ], [ %.0125137.i.i.i, %.thread.i.i.i ]
  %i.ku = trunc nuw i8 %.1127.i.i.i to i1         ; 2 uses
  %or.cond.i29.i.i = select i1 %.0.i.i.i28.i.i, i1 true, i1 %i.ku
  %i.kv = trunc nuw i8 %.1.i.i.i to i1            ; 2 uses
  %or.cond3.i30.i.i = select i1 %or.cond.i29.i.i, i1 true, i1 %i.kv
  br i1 %or.cond3.i30.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kw = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !64
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -70368
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(32) %i.kz) #14
  br label %_ZN12_GLOBAL__N_118SystemZPostRewrite8selectMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i

bb.af:                                            ; preds = %bb.ad
  %or.cond5.i.i.i = select i1 %.0.i.i.i28.i.i, i1 %i.ku, i1 false
  %or.cond7.i.i.i = select i1 %or.cond5.i.i.i, i1 %i.kv, i1 false
  br i1 %or.cond7.i.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.la = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !64
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 -68960
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ld) #14
  br label %_ZN12_GLOBAL__N_118SystemZPostRewrite8selectMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i

bb.ah:                                            ; preds = %bb.af
  call fastcc void @_ZN12_GLOBAL__N_118SystemZPostRewrite14expandCondMoveERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_(ptr noundef nonnull readonly align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.010.022, ptr nonnull %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %_ZN12_GLOBAL__N_118SystemZPostRewrite8selectMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i

_ZN12_GLOBAL__N_118SystemZPostRewrite8selectMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i: ; preds = %bb.ah, %bb.ag, %bb.ae, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit57.i.i.i, %bb.m, %bb.l, %bb.j, %bb.f, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, %bb.d
  %.0.i.i = phi i1 [ %.012.i, %bb.f ], [ true, %bb.m ], [ true, %bb.d ], [ true, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit ], [ true, %bb.j ], [ true, %bb.l ], [ true, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit57.i.i.i ], [ true, %bb.ae ], [ true, %bb.ag ], [ true, %bb.ah ] ; 2 uses
  %i.le = load i64, ptr %11, align 8
  %i.lf = inttoptr i64 %i.le to ptr               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %.not.i = icmp eq ptr %i.ag, %i.lf
  br i1 %.not.i, label %_ZN12_GLOBAL__N_118SystemZPostRewrite9selectMBBERN4llvm17MachineBasicBlockE.exit.loopexit, label %bb.c, !llvm.loop !135

_ZN12_GLOBAL__N_118SystemZPostRewrite9selectMBBERN4llvm17MachineBasicBlockE.exit.loopexit: ; preds = %_ZN12_GLOBAL__N_118SystemZPostRewrite8selectMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i
  %i.lg = or i1 %.021, %.0.i.i
  br label %_ZN12_GLOBAL__N_118SystemZPostRewrite9selectMBBERN4llvm17MachineBasicBlockE.exit

_ZN12_GLOBAL__N_118SystemZPostRewrite9selectMBBERN4llvm17MachineBasicBlockE.exit: ; preds = %_ZN12_GLOBAL__N_118SystemZPostRewrite9selectMBBERN4llvm17MachineBasicBlockE.exit.loopexit, %bb.b
  %.0.lcssa.i = phi i1 [ %.021, %bb.b ], [ %i.lg, %_ZN12_GLOBAL__N_118SystemZPostRewrite9selectMBBERN4llvm17MachineBasicBlockE.exit.loopexit ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118SystemZPostRewrite14expandCondMoveERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_:bb.a
  %.lobit.i.i = and i32 %i.gp, 1
  %i.gq = xor i32 %.lobit.i.i, 1
  %i.gr = lshr i32 %i.gh, 26
  %i.gs = and i32 %i.gq, %i.gr
  %.not.i112 = icmp eq i32 %i.gs, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.gt, align 8, !tbaa !114, !alias.scope !334
  %.not.i113 = and i1 %.not.i112, %i.go
  %i.gu = select i1 %.not.i113, i32 0, i32 67108864
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.gg, ptr %i.gv, align 4, !tbaa !66, !alias.scope !334
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gx = and i32 %i.gh, -1291845632
  %.masked.i.i = or disjoint i32 %i.gx, %i.gu
  %i.gy = or disjoint i32 %.masked.i.i, %i.gm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i8 0, i64 16, i1 false), !alias.scope !334
  store i32 %i.gy, ptr %4, align 8, !alias.scope !334
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gc, ptr noundef nonnull align 8 dereferenceable(1065) %i.gb, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.gz = load ptr, ptr %i.a, align 8, !tbaa !111
  call void @_ZN4llvm15MachineFunction28substituteDebugValuesForInstERKNS_12MachineInstrERS1_j(ptr noundef nonnull align 8 dereferenceable(1065) %i.gz, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.gc, i32 noundef 1) #14
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.cj, ptr noundef nonnull %i.ap, i32 -1) #14
  store ptr %i.ad, ptr %3, align 8
  %i.ha = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #14 ; 0 uses
  %i.hb = load ptr, ptr %i.w, align 8, !tbaa !12  ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i114, label %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit
  call void @free(ptr noundef nonnull %i.hb) #14
  br label %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i

_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i: ; preds = %bb.o, %_ZN4llvm11getRegStateERKNS_14MachineOperandE.exit
  %i.hc = load ptr, ptr %i.s, align 8, !tbaa !303 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.t
  br i1 %i.hd, label %_ZN4llvm12LivePhysRegsD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i
  call void @free(ptr noundef %i.hc) #14
  br label %_ZN4llvm12LivePhysRegsD2Ev.exit

_ZN4llvm12LivePhysRegsD2Ev.exit:                  ; preds = %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void

.lr.ph171:                                        ; preds = %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit130
  %i.he = phi ptr [ %i.id, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit130 ], [ %i.do, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit ] ; 5 uses
  %i.hf = phi ptr [ %i.ie, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit130 ], [ %i.dp, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit ] ; 4 uses
  %.087170 = phi ptr [ %i.if, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit130 ], [ %i.dq, %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit ] ; 2 uses
  %i.hg = load i16, ptr %.087170, align 2, !tbaa !329
  %i.hh = zext i16 %i.hg to i32                   ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.hf, %i.he
  br i1 %.not.i.i.i115, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph171
  store i32 %i.hh, ptr %i.hf, align 8, !tbaa !325
  %.sroa.57.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx.i116, align 8, !tbaa !14
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  store ptr %i.hi, ptr %i.cp, align 8, !tbaa !323
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit130

bb.r:                                             ; preds = %.lr.ph171
  %i.hj = load ptr, ptr %i.co, align 8, !tbaa !326 ; 5 uses
  %i.hk = ptrtoint ptr %i.he to i64
  %i.hl = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.hm = sub i64 %i.hk, %i.hl                    ; 3 uses
  %i.hn = icmp eq i64 %i.hm, 9223372036854775792
  br i1 %i.hn, label %bb.s, label %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i117

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i117: ; preds = %bb.r
  %i.ho = ashr exact i64 %i.hm, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i118 = call i64 @llvm.umax.i64(i64 %i.ho, i64 1)
  %i.hp = add nsw i64 %.sroa.speculated.i.i.i.i.i118, %i.ho ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.ho
  %i.hr = call i64 @llvm.umin.i64(i64 %i.hp, i64 576460752303423487)
  %i.hs = select i1 %i.hq, i64 576460752303423487, i64 %i.hr ; 3 uses
  %.not.i.i.i.i.i119 = icmp ne i64 %i.hs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i119)
  %i.ht = shl nuw nsw i64 %i.hs, 4
  %i.hu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ht) #16 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hm ; 2 uses
  store i32 %i.hh, ptr %i.hv, align 8, !tbaa !325
  %.sroa.57.0..sroa_idx8.i120 = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx8.i120, align 8, !tbaa !14
  %.not10.i.i.i.i.i.i.i121 = icmp eq ptr %i.hj, %i.he
  br i1 %.not10.i.i.i.i.i.i.i121, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i126, label %.lr.ph.i.i.i.i.i.i.i122

.lr.ph.i.i.i.i.i.i.i122:                          ; preds = %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i117, %.lr.ph.i.i.i.i.i.i.i122
  %.012.i.i.i.i.i.i.i123 = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i.i.i122 ], [ %i.hu, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i117 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i124 = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i.i122 ], [ %i.hj, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i117 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i123, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i124, i64 16, i1 false), !tbaa.struct !327, !alias.scope !335
  %i.hw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i124, i64 16 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i123, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i125 = icmp eq ptr %i.hw, %i.he
  br i1 %.not.i.i.i.i.i.i.i125, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i126, label %.lr.ph.i.i.i.i.i.i.i122, !llvm.loop !269

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i126: ; preds = %.lr.ph.i.i.i.i.i.i.i122, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i117
  %.0.lcssa.i.i.i.i.i.i.i127 = phi ptr [ %i.hu, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i117 ], [ %i.hx, %.lr.ph.i.i.i.i.i.i.i122 ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i127, i64 16 ; 2 uses
  %.not.i23.i.i.i.i128 = icmp eq ptr %i.hj, null
  br i1 %.not.i23.i.i.i.i128, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i129, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i126
  %i.hz = load ptr, ptr %i.cr, align 8, !tbaa !324
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = sub i64 %i.ia, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.ib) #17
  br label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i129

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i129: ; preds = %bb.t, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i126
  store ptr %i.hu, ptr %i.co, align 8, !tbaa !326
  store ptr %i.hy, ptr %i.cp, align 8, !tbaa !323
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.hs ; 2 uses
  store ptr %i.ic, ptr %i.cr, align 8, !tbaa !324
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit130

_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit130: ; preds = %bb.q, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i129
  %i.id = phi ptr [ %i.he, %bb.q ], [ %i.ic, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i129 ]
  %i.ie = phi ptr [ %i.hi, %bb.q ], [ %i.hy, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i129 ]
  %i.if = getelementptr inbounds nuw i8, ptr %.087170, i64 2 ; 2 uses
  %.not88 = icmp eq ptr %i.if, %i.ds
  br i1 %.not88, label %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %.lr.ph171
}

declare void @_ZN4llvm12LivePhysRegs11addLiveOutsERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #3

declare void @_ZN4llvm12LivePhysRegs12stepBackwardERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef, i64, i8) local_unnamed_addr #3

declare void @_ZN4llvm17MachineBasicBlock18transferSuccessorsEPS0_(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i32) local_unnamed_addr #3

declare void @_ZN4llvm15MachineFunction28substituteDebugValuesForInstERKNS_12MachineInstrERS1_j(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #3

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZN4llvm22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #10

declare void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK4llvm14MachineOperand11isRenamableEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm15TargetInstrInfo18commuteInstructionERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @__once_proxy() #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #5 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !338, !nonnull !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !339, !nonnull !34, !align !35
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #14, !inline_history !336
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !8, i64 0}
!11 = !{!"p1 omnipotent char", !8, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"bool", !4, i64 0}
!16 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !8, i64 0}
!17 = !{!"_ZTSN4llvm8PassKindE", !4, i64 0}
!18 = !{!"_ZTSN4llvm4PassE", !16, i64 8, !8, i64 16, !17, i64 24}
!19 = !{!18, !16, i64 8}
!20 = !{!18, !8, i64 16}
!21 = !{!18, !17, i64 24}
!22 = !{!"vtable pointer", !3, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !8, i64 0, !5, i64 8, !5, i64 12}
!25 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !8, i64 0}
!26 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !25, i64 0, !25, i64 8}
!27 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !26, i64 0}
!28 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !27, i64 0}
!29 = !{!"_ZTSN4llvm5AlignE", !4, i64 0}
!30 = !{!"_ZTSSt12_Base_bitsetILm1EE", !13, i64 0}
!31 = !{!"_ZTSSt6bitsetILm12EE", !30, i64 0}
!32 = !{!"_ZTSN4llvm25MachineFunctionPropertiesE", !31, i64 0}
!33 = !{!"p1 int", !8, i64 0}
!34 = !{}
!35 = !{i64 8}
!36 = !{!"_ZTSN4llvm12FunctionPassE", !18, i64 0}
!37 = !{!"_ZTSN4llvm19MachineFunctionPassE", !36, i64 0, !32, i64 32, !32, i64 40, !32, i64 48}
!38 = !{!"p1 _ZTSN4llvm16SystemZInstrInfoE", !8, i64 0}
!39 = !{!"_ZTSN12_GLOBAL__N_118SystemZPostRewriteE", !37, i64 0, !38, i64 56}
!40 = !{!39, !38, i64 56}
!41 = !{!26, !25, i64 8}
!42 = !{!"_ZTSN4llvm6detail13PunnedPointerIPNS_15ilist_node_baseILb1EvEEEE", !4, i64 0}
!43 = !{!"_ZTSN4llvm14PointerIntPairIPNS_15ilist_node_baseILb1EvEELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !42, i64 0}
!44 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb1EvEE", !8, i64 0}
!45 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb1EvEELb1EEE", !43, i64 0, !44, i64 8}
!46 = !{!45, !44, i64 8}
!47 = !{!"_ZTSN4llvm15ilist_node_baseILb1EvEE", !45, i64 0}
!48 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !47, i64 0}
!49 = !{!"_ZTSN4llvm10ilist_nodeINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !48, i64 0}
!50 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_12MachineInstrENS_17MachineBasicBlockEJNS_23ilist_sentinel_trackingILb1EEEEEE", !49, i64 0}
!51 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !8, i64 0}
!52 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !8, i64 0}
!53 = !{!"p1 _ZTSN4llvm14MachineOperandE", !8, i64 0}
!54 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EE8CapacityE", !4, i64 0}
!55 = !{!"_ZTSN4llvm14PointerSumTypeINS_12MachineInstr20ExtraInfoInlineKindsEJNS_20PointerSumTypeMemberILm0EPNS_17MachineMemOperandENS_21PointerLikeTypeTraitsIS5_EEEENS3_ILm1EPNS_8MCSymbolENS6_ISA_EEEENS3_ILm2ESA_SB_EENS3_ILm3EPNS1_9ExtraInfoENS6_ISF_EEEEEEE", !4, i64 0}
!56 = !{!"p1 _ZTSN4llvm10DILocationE", !8, i64 0}
!57 = !{!"_ZTSN4llvm8DebugLocE", !56, i64 0}
!58 = !{!"_ZTSN4llvm12MachineInstrE", !50, i64 0, !51, i64 16, !52, i64 24, !53, i64 32, !5, i64 40, !54, i64 43, !5, i64 44, !4, i64 48, !5, i64 52, !5, i64 56, !55, i64 64, !57, i64 72}
!59 = !{!58, !5, i64 44}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"p1 short", !8, i64 0}
!62 = !{!"short", !4, i64 0}
!63 = !{!"_ZTSN4llvm11MCInstrInfoE", !51, i64 0, !33, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !5, i64 40, !61, i64 48, !62, i64 56}
!64 = !{!63, !51, i64 0}
!65 = !{!58, !53, i64 32}
!66 = !{!4, !4, i64 0}
!67 = !{!56, !56, i64 0}
!68 = !{!"_ZTSN4llvm10ilist_nodeINS_17MachineBasicBlockEJEEE", !28, i64 0}
!69 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_17MachineBasicBlockENS_15MachineFunctionEJEEE", !68, i64 0}
!70 = !{!"p1 _ZTSN4llvm10BasicBlockE", !8, i64 0}
!71 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !8, i64 0}
!72 = !{!"_ZTSN4llvm12ilist_traitsINS_12MachineInstrEEE", !52, i64 0}
!73 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !48, i64 0}
!74 = !{!"_ZTSN4llvm12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !73, i64 0}
!75 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEEE", !72, i64 0, !74, i64 8}
!76 = !{!"_ZTSN4llvm6iplistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !75, i64 0}
!77 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_17MachineBasicBlockEvEE", !24, i64 0}
!78 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EEE", !77, i64 0}
!79 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEEE", !78, i64 0}
!80 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj4EEE", !4, i64 0}
!81 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEE", !79, i64 0, !80, i64 16}
!82 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj2EEE", !4, i64 0}
!83 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEE", !79, i64 0, !82, i64 16}
!84 = !{!"p1 _ZTSN4llvm17BranchProbabilityE", !8, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!86 = !{!"_ZTSNSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE12_Vector_implE", !85, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE", !86, i64 0}
!88 = !{!"_ZTSSt6vectorIN4llvm17BranchProbabilityESaIS1_EE", !87, i64 0}
!89 = !{!"_ZTSSt22_Optional_payload_baseImE", !4, i64 0, !15, i64 8}
!90 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !89, i64 0}
!91 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !90, i64 0}
!92 = !{!"_ZTSSt8optionalImE", !91, i64 0}
!93 = !{!"p1 _ZTSN4llvm17MachineBasicBlock16RegisterMaskPairE", !8, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!"_ZTSNSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_Vector_implE", !94, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE", !95, i64 0}
!97 = !{!"_ZTSSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE", !96, i64 0}
!98 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm10UniqueBBIDEE", !4, i64 0, !15, i64 8}
!99 = !{!"_ZTSSt17_Optional_payloadIN4llvm10UniqueBBIDELb1ELb1ELb1EE", !98, i64 0}
!100 = !{!"_ZTSSt14_Optional_baseIN4llvm10UniqueBBIDELb1ELb1EE", !99, i64 0}
!101 = !{!"_ZTSSt8optionalIN4llvm10UniqueBBIDEE", !100, i64 0}
!102 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIjvEE", !24, i64 0}
!103 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIjLb1EEE", !102, i64 0}
!104 = !{!"_ZTSN4llvm15SmallVectorImplIjEE", !103, i64 0}
!105 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj12EEE", !4, i64 0}
!106 = !{!"_ZTSN4llvm11SmallVectorIjLj12EEE", !104, i64 0, !105, i64 16}
!107 = !{!"_ZTSN4llvm12MBBSectionID11SectionTypeE", !4, i64 0}
!108 = !{!"_ZTSN4llvm12MBBSectionIDE", !107, i64 0, !5, i64 4}
!109 = !{!"p1 _ZTSN4llvm8MCSymbolE", !8, i64 0}
!110 = !{!"_ZTSN4llvm17MachineBasicBlockE", !69, i64 0, !70, i64 16, !5, i64 24, !5, i64 28, !71, i64 32, !76, i64 40, !81, i64 64, !83, i64 112, !88, i64 144, !92, i64 168, !97, i64 184, !29, i64 208, !5, i64 212, !15, i64 216, !15, i64 217, !5, i64 220, !70, i64 224, !15, i64 232, !15, i64 233, !15, i64 234, !15, i64 235, !15, i64 236, !101, i64 240, !106, i64 256, !108, i64 320, !15, i64 328, !15, i64 329, !15, i64 330, !109, i64 336, !109, i64 344, !109, i64 352}
!111 = !{!110, !71, i64 32}
!112 = !{!"p1 _ZTSN4llvm12MachineInstrE", !8, i64 0}
!113 = !{!"_ZTSN4llvm14MachineOperandE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 3, !4, i64 4, !112, i64 8, !4, i64 16}
!114 = !{!113, !112, i64 8}
!115 = !{!10, !10, i64 0}
!116 = !{!"_ZTSN4llvm9StringRefE", !11, i64 0, !13, i64 8}
!117 = !{!"_ZTSN4llvm8PassInfoE", !116, i64 0, !116, i64 16, !8, i64 32, !15, i64 40, !15, i64 41, !8, i64 48}
!118 = !{!117, !8, i64 32}
!119 = !{!117, !15, i64 40}
!120 = !{!117, !15, i64 41}
!121 = !{!117, !8, i64 48}
!122 = distinct !{!122, !60}
!123 = distinct !{!123, i1 true, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!124 = distinct !{!124, !123, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!125 = distinct !{!125, i1 true, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!126 = distinct !{!126, !125, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!128 = distinct !{!128, !127, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!130 = distinct !{!130, !129, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!131 = distinct !{!131, i1 true, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!132 = distinct !{!132, !131, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!134 = distinct !{!134, !133, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!135 = distinct !{!135, !60}
!136 = !{!"p1 _ZTSN4llvm8FunctionE", !8, i64 0}
!137 = !{!"p1 _ZTSN4llvm13TargetMachineE", !8, i64 0}
!138 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !8, i64 0}
!139 = !{!"p1 _ZTSN4llvm9MCContextE", !8, i64 0}
!140 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !8, i64 0}
!141 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !8, i64 0}
!142 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !8, i64 0}
!143 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !8, i64 0}
!144 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !8, i64 0}
!145 = !{!"p1 _ZTSN4llvm9MCSectionE", !8, i64 0}
!146 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !8, i64 0}
!147 = !{!"any p2 pointer", !8, i64 0}
!148 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !147, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!150 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !149, i64 0}
!151 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !150, i64 0}
!152 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !151, i64 0}
!153 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !24, i64 0}
!154 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !153, i64 0}
!155 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !154, i64 0}
!156 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !4, i64 0}
!157 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !155, i64 0, !156, i64 16}
!158 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !24, i64 0}
!159 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !158, i64 0}
!160 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !159, i64 0}
!161 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !160, i64 0}
!162 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !11, i64 0, !13, i64 8, !157, i64 16, !161, i64 64}
!163 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !8, i64 0}
!164 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !163, i64 0}
!165 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEvEE", !24, i64 0}
!166 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELb1EEE", !165, i64 0}
!167 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEEE", !166, i64 0}
!168 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !4, i64 0}
!169 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !167, i64 0, !168, i64 16}
!170 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EEE", !169, i64 0}
!171 = !{!"p1 _ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EE8FreeNodeE", !8, i64 0}
!172 = !{!"_ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EEE", !171, i64 0}
!173 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !28, i64 0}
!174 = !{!"_ZTSN4llvm12simple_ilistINS_17MachineBasicBlockEJEEE", !173, i64 0}
!175 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_17MachineBasicBlockEJEEENS_12ilist_traitsIS2_EEEE", !174, i64 0}
end_hunk_1
