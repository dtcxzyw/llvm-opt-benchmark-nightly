Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCInstrInfo?download=true
inline.NumInlined: 4654
inline.NumDeleted: 1537
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvm12PPCInstrInfo14reassociateFMAERNS_12MachineInstrEjRNS_15SmallVectorImplIPS1_EES6_RNS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEE:bb.a
  %i.pf = and i32 %i.pe, -67108865
  %i.pg = or disjoint i32 %i.pf, %i.ig
  store i32 %i.pg, ptr %i.pd, align 8
  %i.ph = load ptr, ptr %i.oz, align 8, !tbaa !342
  %i.pi = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %i.bp
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.pi, i32 %.sroa.0547.0639) #26
  %i.pj = load ptr, ptr %i.oz, align 8, !tbaa !342
  %i.pk = getelementptr inbounds nuw [32 x i8], ptr %i.pj, i64 %i.bp ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 8
  %i.pm = and i32 %i.pl, -67108865
  %i.pn = or disjoint i32 %i.pm, %i.il
  store i32 %i.pn, ptr %i.pk, align 8
  %i.po = load ptr, ptr %i.oz, align 8, !tbaa !342
  %i.pp = getelementptr inbounds nuw [32 x i8], ptr %i.po, i64 %i.bp
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.pq, i32 %.sroa.0543.0637) #26
  %i.pr = load ptr, ptr %i.oz, align 8, !tbaa !342
  %i.ps = getelementptr inbounds nuw [32 x i8], ptr %i.pr, i64 %i.bp
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 32 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 8
  %i.pv = and i32 %i.pu, -67108865
  %i.pw = or disjoint i32 %i.pv, %i.iq
  store i32 %i.pw, ptr %i.pt, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.iw, i64 32 ; 6 uses
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !342
  %i.pz = getelementptr inbounds nuw [32 x i8], ptr %i.py, i64 %.pre-phi
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.pz, i32 %i.gv) #26
  %i.qa = load ptr, ptr %i.px, align 8, !tbaa !342
  %i.qb = getelementptr inbounds nuw [32 x i8], ptr %i.qa, i64 %.pre-phi ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 8
  %i.qd = or i32 %i.qc, 67108864
  store i32 %i.qd, ptr %i.qb, align 8
  %i.qe = load ptr, ptr %i.px, align 8, !tbaa !342
  %i.qf = getelementptr inbounds nuw [32 x i8], ptr %i.qe, i64 %i.bp
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.qf, i32 %i.bs) #26
  %i.qg = load ptr, ptr %i.px, align 8, !tbaa !342
  %i.qh = getelementptr inbounds nuw [32 x i8], ptr %i.qg, i64 %i.bp ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 8
  %i.qj = and i32 %i.qi, -67108865
  %i.qk = or disjoint i32 %i.qj, %i.je
  store i32 %i.qk, ptr %i.qh, align 8
  %i.ql = load ptr, ptr %i.px, align 8, !tbaa !342
  %i.qm = getelementptr inbounds nuw [32 x i8], ptr %i.ql, i64 %i.bp
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.qn, i32 %i.cd) #26
  %i.qo = load ptr, ptr %i.px, align 8, !tbaa !342
  %i.qp = getelementptr inbounds nuw [32 x i8], ptr %i.qo, i64 %i.bp
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 32 ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 8
  %i.qs = and i32 %i.qr, -67108865
  %i.qt = or disjoint i32 %i.qs, %i.ji
  store i32 %i.qt, ptr %i.qq, align 8
  br label %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit299

_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit299: ; preds = %.thread657, %bb.v
  %.sroa.012.0.copyload = load ptr, ptr %i.it, align 8, !tbaa !436
  %i.qu = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !404
  %i.qw = load ptr, ptr %i.hf, align 8, !tbaa !48
  %i.qx = zext i16 %i.qv to i64
  %i.qy = sub nsw i64 0, %i.qx
  %i.qz = getelementptr inbounds [32 x i8], ptr %i.qw, i64 %i.qy
  %i.ra = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.qz, ptr %.sroa.012.0.copyload, i1 noundef zeroext false) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.rb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.rb, align 8, !tbaa !438, !alias.scope !931
  %i.rc = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %i.g, ptr %i.rc, align 4, !tbaa !207, !alias.scope !931
  %i.rd = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false), !alias.scope !931
  store i32 16777216, ptr %16, align 8, !alias.scope !931
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ra, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.re = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.re, align 8, !tbaa !438, !alias.scope !932
  %i.rf = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %i.gy, ptr %i.rf, align 4, !tbaa !207, !alias.scope !932
  %i.rg = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rg, i8 0, i64 16, i1 false), !alias.scope !932
  store i32 67108864, ptr %15, align 8, !alias.scope !932
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ra, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.rh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.rh, align 8, !tbaa !438, !alias.scope !933
  %i.ri = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.hb, ptr %i.ri, align 4, !tbaa !207, !alias.scope !933
  %i.rj = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rj, i8 0, i64 16, i1 false), !alias.scope !933
  store i32 67108864, ptr %14, align 8, !alias.scope !933
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ra, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.rk = getelementptr inbounds nuw i8, ptr %i.hm, i64 44 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !393
  %i.rm = and i32 %i.rl, 12
  %i.rn = and i32 %.0176, -14349                  ; 4 uses
  %i.ro = or disjoint i32 %i.rm, %i.rn
  store i32 %i.ro, ptr %i.rk, align 4, !tbaa !393
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ib, i64 44 ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !393
  %i.rr = and i32 %i.rq, 12
  %i.rs = or disjoint i32 %i.rr, %i.rn
  store i32 %i.rs, ptr %i.rp, align 4, !tbaa !393
  %i.rt = getelementptr inbounds nuw i8, ptr %i.iw, i64 44 ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !393
  %i.rv = and i32 %i.ru, 12
  %i.rw = or disjoint i32 %i.rv, %i.rn
  store i32 %i.rw, ptr %i.rt, align 4, !tbaa !393
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ra, i64 44 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !393
  %i.rz = and i32 %i.ry, 12
  %i.sa = or disjoint i32 %i.rz, %i.rn
  store i32 %i.sa, ptr %i.rx, align 4, !tbaa !393
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !323 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !324
  %.not.i300 = icmp ult i32 %i.sc, %i.se
  br i1 %.not.i300, label %bb.x, label %bb.w, !prof !425

bb.w:                                             ; preds = %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit299
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.hm)
  %.pre668 = load i32, ptr %i.sb, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit301

bb.x:                                             ; preds = %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit299
  %i.sf = zext i32 %i.sc to i64
  %i.sg = load ptr, ptr %3, align 8, !tbaa !68
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.sf
  store ptr %i.hm, ptr %i.sh, align 1
  %i.si = load i32, ptr %i.sb, align 8, !tbaa !323
  %i.sj = add i32 %i.si, 1                        ; 2 uses
  store i32 %i.sj, ptr %i.sb, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit301

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit301: ; preds = %bb.w, %bb.x
  %i.sk = phi i32 [ %.pre668, %bb.w ], [ %i.sj, %bb.x ] ; 2 uses
  %i.sl = load i32, ptr %i.sd, align 4, !tbaa !324
  %.not.i302 = icmp ult i32 %i.sk, %i.sl
  br i1 %.not.i302, label %bb.z, label %bb.y, !prof !425

bb.y:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit301
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.ib)
  %.pre669 = load i32, ptr %i.sb, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit303

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit301
  %i.sm = zext i32 %i.sk to i64
  %i.sn = load ptr, ptr %3, align 8, !tbaa !68
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sn, i64 %i.sm
  store ptr %i.ib, ptr %i.so, align 1
  %i.sp = load i32, ptr %i.sb, align 8, !tbaa !323
  %i.sq = add i32 %i.sp, 1                        ; 2 uses
  store i32 %i.sq, ptr %i.sb, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit303

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit303: ; preds = %bb.y, %bb.z
  %i.sr = phi i32 [ %.pre669, %bb.y ], [ %i.sq, %bb.z ] ; 2 uses
  %i.ss = load i32, ptr %i.sd, align 4, !tbaa !324
  %.not.i304 = icmp ult i32 %i.sr, %i.ss
  br i1 %.not.i304, label %bb.ab, label %bb.aa, !prof !425

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit303
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.iw)
  %.pre670 = load i32, ptr %i.sb, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit305

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit303
  %i.st = zext i32 %i.sr to i64
  %i.su = load ptr, ptr %3, align 8, !tbaa !68
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.st
  store ptr %i.iw, ptr %i.sv, align 1
  %i.sw = load i32, ptr %i.sb, align 8, !tbaa !323
  %i.sx = add i32 %i.sw, 1                        ; 2 uses
  store i32 %i.sx, ptr %i.sb, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit305

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit305: ; preds = %bb.aa, %bb.ab
  %i.sy = phi i32 [ %.pre670, %bb.aa ], [ %i.sx, %bb.ab ] ; 2 uses
  %i.sz = load i32, ptr %i.sd, align 4, !tbaa !324
  %.not.i306 = icmp ult i32 %i.sy, %i.sz
  br i1 %.not.i306, label %bb.ad, label %bb.ac, !prof !425

bb.ac:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit305
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.ra)
  br label %.critedge

bb.ad:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit305
  %i.ta = zext i32 %i.sy to i64
  %i.tb = load ptr, ptr %3, align 8, !tbaa !68
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.ta
  store ptr %i.ra, ptr %i.tc, align 1
  %i.td = load i32, ptr %i.sb, align 8, !tbaa !323
  %i.te = add i32 %i.td, 1
  store i32 %i.te, ptr %i.sb, align 8, !tbaa !323
  br label %.critedge

bb.ae:                                            ; preds = %bb.m
  %i.tf = icmp eq i32 %2, 7                       ; 2 uses
  %spec.select = select i1 %i.tf, i32 %i.bs, i32 %i.cd
  %spec.select664.v = select i1 %i.tf, i32 %i.by, i32 %i.cj
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.tg, align 8, !tbaa !436
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !48
  %i.tj = zext i32 %i.q to i64
  %i.tk = sub nsw i64 0, %i.tj                    ; 2 uses
  %i.tl = getelementptr inbounds [32 x i8], ptr %i.ti, i64 %i.tk
  %i.tm = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.tl, ptr %.sroa.08.0.copyload, i1 noundef zeroext false) #26 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.tn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.tn, align 8, !tbaa !438, !alias.scope !934
  %i.to = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %i.gv, ptr %i.to, align 4, !tbaa !207, !alias.scope !934
  %i.tp = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tp, i8 0, i64 16, i1 false), !alias.scope !934
  store i32 16777216, ptr %13, align 8, !alias.scope !934
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tm, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %.not665 = icmp eq i32 %i.cn, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.tq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.tq, align 8, !tbaa !438, !alias.scope !935
  %i.tr = select i1 %.not665, i32 0, i32 67108864
  %i.ts = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.cn, ptr %i.ts, align 4, !tbaa !207, !alias.scope !935
  %i.tt = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tt, i8 0, i64 16, i1 false), !alias.scope !935
  store i32 %i.tr, ptr %12, align 8, !alias.scope !935
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tm, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.tu = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.tu, align 8, !tbaa !438, !alias.scope !936
  %.not.i316 = icmp eq i8 %.0578, 0
  %i.tv = select i1 %.not.i316, i32 0, i32 67108864
  %i.tw = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.sroa.0551.0, ptr %i.tw, align 4, !tbaa !207, !alias.scope !936
  %i.tx = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tx, i8 0, i64 16, i1 false), !alias.scope !936
  store i32 %i.tv, ptr %11, align 8, !alias.scope !936
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tm, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.ty = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.ty, align 8, !tbaa !438, !alias.scope !937
  %i.tz = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 563, ptr %i.tz, align 4, !tbaa !207, !alias.scope !937
  %i.ua = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ua, i8 0, i64 16, i1 false), !alias.scope !937
  store i32 0, ptr %10, align 8, !alias.scope !937
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.tm, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %.sroa.04.0.copyload = load ptr, ptr %i.tg, align 8, !tbaa !436
  %i.ub = load ptr, ptr %i.th, align 8, !tbaa !48
  %i.uc = getelementptr inbounds [32 x i8], ptr %i.ub, i64 %i.tk
  %i.ud = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.uc, ptr %.sroa.04.0.copyload, i1 noundef zeroext false) #26 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ue = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.ue, align 8, !tbaa !438, !alias.scope !938
  %i.uf = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.g, ptr %i.uf, align 4, !tbaa !207, !alias.scope !938
  %i.ug = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ug, i8 0, i64 16, i1 false), !alias.scope !938
  store i32 16777216, ptr %9, align 8, !alias.scope !938
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ud, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.uh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.uh, align 8, !tbaa !438, !alias.scope !939
  %i.ui = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.gv, ptr %i.ui, align 4, !tbaa !207, !alias.scope !939
  %i.uj = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uj, i8 0, i64 16, i1 false), !alias.scope !939
  store i32 67108864, ptr %8, align 8, !alias.scope !939
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ud, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.uk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.uk, align 8, !tbaa !438, !alias.scope !940
  %i.ul = shl nuw nsw i32 %.0577.in, 26
  %i.um = and i32 %i.ul, 67108864
  %i.un = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0554.0, ptr %i.un, align 4, !tbaa !207, !alias.scope !940
  %i.uo = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uo, i8 0, i64 16, i1 false), !alias.scope !940
  store i32 %i.um, ptr %7, align 8, !alias.scope !940
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ud, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.up = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.up, align 8, !tbaa !438, !alias.scope !941
  %.not.i325 = icmp eq i32 %spec.select664.v, 0
  %42 = select i1 %.not.i325, i32 0, i32 67108864
  %i.uq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %spec.select, ptr %i.uq, align 4, !tbaa !207, !alias.scope !941
  %i.ur = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ur, i8 0, i64 16, i1 false), !alias.scope !941
  store i32 %42, ptr %6, align 8, !alias.scope !941
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ud, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.us = getelementptr inbounds nuw i8, ptr %i.tm, i64 44 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !393
  %i.uu = and i32 %i.ut, 12
  %i.uv = and i32 %.0176, -14349                  ; 2 uses
  %i.uw = or disjoint i32 %i.uu, %i.uv
  store i32 %i.uw, ptr %i.us, align 4, !tbaa !393
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ud, i64 44 ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !393
  %i.uz = and i32 %i.uy, 12
  %i.va = or disjoint i32 %i.uz, %i.uv
  store i32 %i.va, ptr %i.ux, align 4, !tbaa !393
  %i.vb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !323 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !324
  %.not.i326 = icmp ult i32 %i.vc, %i.ve
  br i1 %.not.i326, label %bb.ag, label %bb.af, !prof !425

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.tm)
  %.pre = load i32, ptr %i.vb, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit327

bb.ag:                                            ; preds = %bb.ae
  %i.vf = zext i32 %i.vc to i64
  %i.vg = load ptr, ptr %3, align 8, !tbaa !68
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vg, i64 %i.vf
  store ptr %i.tm, ptr %i.vh, align 1
  %i.vi = load i32, ptr %i.vb, align 8, !tbaa !323
  %i.vj = add i32 %i.vi, 1                        ; 2 uses
  store i32 %i.vj, ptr %i.vb, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit327

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit327: ; preds = %bb.af, %bb.ag
  %i.vk = phi i32 [ %.pre, %bb.af ], [ %i.vj, %bb.ag ] ; 2 uses
  %i.vl = load i32, ptr %i.vd, align 4, !tbaa !324
  %.not.i328 = icmp ult i32 %i.vk, %i.vl
  br i1 %.not.i328, label %bb.ai, label %bb.ah, !prof !425

bb.ah:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit327
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.ud)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit329

bb.ai:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit327
  %i.vm = zext i32 %i.vk to i64
  %i.vn = load ptr, ptr %3, align 8, !tbaa !68
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %i.vm
  store ptr %i.ud, ptr %i.vo, align 1
  %i.vp = load i32, ptr %i.vb, align 8, !tbaa !323
  %i.vq = add i32 %i.vp, 1
  store i32 %i.vq, ptr %i.vb, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit329

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit329: ; preds = %bb.ah, %bb.ai
  %i.vr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !323 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !324
  %.not.i330 = icmp ult i32 %i.vs, %i.vu
  br i1 %.not.i330, label %bb.ak, label %bb.aj, !prof !425

bb.aj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit329
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %.0174625)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit331

bb.ak:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit329
  %i.vv = zext i32 %i.vs to i64
  %i.vw = load ptr, ptr %4, align 8, !tbaa !68
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.vv
  store ptr %.0174625, ptr %i.vx, align 1
  %i.vy = load i32, ptr %i.vr, align 8, !tbaa !323
  %i.vz = add i32 %i.vy, 1
  store i32 %i.vz, ptr %i.vr, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit331

.critedge:                                        ; preds = %bb.ad, %bb.ac, %bb.u, %bb.t
  %i.wa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !323 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !324
  %.not.i332 = icmp ult i32 %i.wb, %i.wd
  br i1 %.not.i332, label %bb.am, label %bb.al, !prof !425

bb.al:                                            ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %.0174625)
  %.pre671 = load i32, ptr %i.wa, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit333

bb.am:                                            ; preds = %.critedge
  %i.we = zext i32 %i.wb to i64
  %i.wf = load ptr, ptr %4, align 8, !tbaa !68
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %i.we
  store ptr %.0174625, ptr %i.wg, align 1
  %i.wh = load i32, ptr %i.wa, align 8, !tbaa !323
  %i.wi = add i32 %i.wh, 1                        ; 2 uses
  store i32 %i.wi, ptr %i.wa, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit333

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit333: ; preds = %bb.al, %bb.am
  %i.wj = phi i32 [ %.pre671, %bb.al ], [ %i.wi, %bb.am ] ; 2 uses
  %i.wk = load i32, ptr %i.wc, align 4, !tbaa !324
  %.not.i334 = icmp ult i32 %i.wj, %i.wk
  br i1 %.not.i334, label %bb.ao, label %bb.an, !prof !425

bb.an:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit333
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %.0626)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit331

bb.ao:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit333
  %i.wl = zext i32 %i.wj to i64
  %i.wm = load ptr, ptr %4, align 8, !tbaa !68
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.wl
  store ptr %.0626, ptr %i.wn, align 1
  %i.wo = load i32, ptr %i.wa, align 8, !tbaa !323
  %i.wp = add i32 %i.wo, 1
  store i32 %i.wp, ptr %i.wa, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit331

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit331: ; preds = %bb.ao, %bb.an, %bb.ak, %bb.aj
  %i.wq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !323 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !324
  %.not.i336 = icmp ult i32 %i.wr, %i.wt
  br i1 %.not.i336, label %bb.aq, label %bb.ap, !prof !425

bb.ap:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit331
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit337

bb.aq:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit331
  %i.wu = zext i32 %i.wr to i64
  %i.wv = load ptr, ptr %4, align 8, !tbaa !68
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %i.wu
  store ptr %1, ptr %i.ww, align 1
  %i.wx = load i32, ptr %i.wq, align 8, !tbaa !323
  %i.wy = add i32 %i.wx, 1
  store i32 %i.wy, ptr %i.wq, align 8, !tbaa !323
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit337

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit337: ; preds = %bb.ap, %bb.aq
  ret void
}

declare void @_ZNK4llvm15TargetInstrInfo26genAlternativeCodeSequenceERNS_12MachineInstrEjRNS_15SmallVectorImplIPS1_EES6_RNS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1) unnamed_addr #5

declare noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520), i32, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo21isCoalescableExtInstrERKNS_12MachineInstrERNS_8RegisterES5_Rj(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !396
  switch i32 %i.b, label %bb.c [
    i32 1183, label %bb.b
    i32 1188, label %bb.b
    i32 1189, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !207
  store i32 %i.f, ptr %2, align 4, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !207
  store i32 %i.h, ptr %3, align 4, !tbaa !56
  store i32 1, ptr %4, align 4, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @_ZNK4llvm12PPCInstrInfo19isLoadFromStackSlotERKNS_12MachineInstrERi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395, !nonnull !65, !align !206 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 535
  %i.d = load i8, ptr %i.c, align 1, !tbaa !558, !range !64, !noundef !65
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.g = load i8, ptr %i.f, align 8, !tbaa !559, !range !64, !noundef !65
  %i.h = trunc nuw i8 %i.g to i1
  %.mux2.i.i = select i1 %i.h, i64 3, i64 2
  br label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 542
  %i.j = load i8, ptr %i.i, align 2, !tbaa !560, !range !64, !noundef !65
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.l = load i8, ptr %i.k, align 8, !tbaa !559, !range !64, !noundef !65 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4llvm12PPCInstrInfo18isStoreToStackSlotERKNS_12MachineInstrERi:bb.a
  br i1 %i.aj, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.ak = load i32, ptr %.ptr.1, align 4, !tbaa !56
  %i.al = icmp eq i32 %i.ak, %i.v
  br i1 %i.al, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.02946.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.am = load i32, ptr %.02946.i.i.i.i.ptr.2, align 4, !tbaa !56
  %i.an = icmp eq i32 %i.am, %i.v
  br i1 %i.an, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.ptr20.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.ao = load i32, ptr %.ptr20.2, align 4, !tbaa !56
  %i.ap = icmp eq i32 %i.ao, %i.v
  br i1 %i.ap, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.ptr19.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.aq = load i32, ptr %.ptr19.2, align 4, !tbaa !56
  %i.ar = icmp eq i32 %i.aq, %i.v
  br i1 %i.ar, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.as = load i32, ptr %.ptr.2, align 4, !tbaa !56
  %i.at = icmp eq i32 %i.as, %i.v
  br i1 %i.at, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.02946.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.au = load i32, ptr %.02946.i.i.i.i.ptr.3, align 4, !tbaa !56
  %i.av = icmp eq i32 %i.au, %i.v
  br i1 %i.av, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.ptr20.3 = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.aw = load i32, ptr %.ptr20.3, align 4, !tbaa !56
  %i.ax = icmp eq i32 %i.aw, %i.v
  br i1 %i.ax, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.ptr19.3 = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ay = load i32, ptr %.ptr19.3, align 4, !tbaa !56
  %i.az = icmp eq i32 %i.ay, %i.v
  br i1 %i.az, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  %i.ba = load i32, ptr %.ptr.3, align 4, !tbaa !56
  %i.bb = icmp eq i32 %i.ba, %i.v
  br i1 %i.bb, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.r
  %i.bc = load i32, ptr %scevgep.i.i.i.i, align 4, !tbaa !56
  %i.bd = icmp eq i32 %i.bc, %i.v
  br i1 %i.bd, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = getelementptr i8, ptr %i.t, i64 68
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !56
  %i.bg = icmp eq i32 %i.bf, %i.v
  br i1 %i.bg, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr i8, ptr %i.t, i64 72
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !56
  %i.bj = icmp eq i32 %i.bi, %i.v
  br i1 %i.bj, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread13

_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %._crit_edge.i.i.i.i, %bb.t, %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !342 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = and i32 %i.bn, 255
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.u, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread13

bb.u:                                             ; preds = %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !207
  %.not = icmp eq i64 %i.br, 0
  br i1 %.not, label %bb.v, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread13

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = and i32 %i.bt, 255
  %i.bv = icmp eq i32 %i.bu, 5
  br i1 %i.bv, label %bb.w, label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread13

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !207
  store i32 %i.bx, ptr %2, align 4, !tbaa !56
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !207
  br label %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread13

_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread13: ; preds = %bb.t, %bb.v, %bb.u, %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread, %bb.w
  %.sroa.011.0 = phi i32 [ %i.bz, %bb.w ], [ 0, %bb.t ], [ 0, %_ZN4llvm12is_containedINS_8ArrayRefIjEEjEEbOT_RKT0_.exit.thread ], [ 0, %bb.u ], [ 0, %bb.v ]
  ret i32 %.sroa.011.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK4llvm12PPCInstrInfo28getStoreOpcodesForSpillArrayEv(ptr noundef nonnull align 8 dereferenceable(1080) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395, !nonnull !65, !align !206 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 535
  %i.d = load i8, ptr %i.c, align 1, !tbaa !558, !range !64, !noundef !65
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.g = load i8, ptr %i.f, align 8, !tbaa !559, !range !64, !noundef !65
  %i.h = trunc nuw i8 %i.g to i1
  %.mux2.i = select i1 %i.h, i64 3, i64 2
  br label %_ZNK4llvm12PPCInstrInfo14getSpillTargetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 542
  %i.j = load i8, ptr %i.i, align 2, !tbaa !560, !range !64, !noundef !65
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.l = load i8, ptr %i.k, align 8, !tbaa !559, !range !64, !noundef !65 ; 2 uses
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = or i8 %i.l, %i.j
  %brmerge.not.i = icmp eq i8 %i.n, 0
  %.mux.i = select i1 %i.m, i64 3, i64 2
  br i1 %brmerge.not.i, label %bb.c, label %_ZNK4llvm12PPCInstrInfo14getSpillTargetEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.p = load i8, ptr %i.o, align 8, !tbaa !446, !range !64, !noundef !65
  %i.q = zext nneg i8 %i.p to i64
  br label %_ZNK4llvm12PPCInstrInfo14getSpillTargetEv.exit

_ZNK4llvm12PPCInstrInfo14getSpillTargetEv.exit:   ; preds = %.thread.i, %bb.b, %bb.c
  %i.r = phi i64 [ %.mux.i, %bb.b ], [ %i.q, %bb.c ], [ %.mux2.i, %.thread.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.t = getelementptr inbounds nuw [76 x i8], ptr %i.s, i64 %i.r
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.t, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 19, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm12PPCInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !386  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !396
  switch i32 %i.f, label %bb.b [
    i32 1898, label %bb.c
    i32 1901, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #26
  br label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342  ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load i64, ptr %i.j, align 8, !tbaa !207
  %.not66 = icmp eq i64 %i.k, 0
  br i1 %.not66, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !207  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !207  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !207  ; 4 uses
  %i.t = load i32, ptr %i.n, align 8              ; 3 uses
  %i.u = and i32 %i.t, 1048320
  %i.v = load i32, ptr %i.q, align 8              ; 3 uses
  %i.w = lshr i32 %i.v, 8
  %i.x = and i32 %i.w, 4095                       ; 2 uses
  %i.y = lshr i32 %i.t, 26
  %i.z = lshr i32 %i.t, 24
  %.lobit.i = and i32 %i.z, 1
  %i.aa = xor i32 %.lobit.i, 1
  %i.ab = and i32 %i.aa, %i.y
  %.not = icmp eq i32 %i.ab, 0                    ; 2 uses
  %i.ac = lshr i32 %i.v, 26
  %i.ad = lshr i32 %i.v, 24
  %.lobit.i67 = and i32 %i.ad, 1
  %i.ae = xor i32 %.lobit.i67, 1
  %i.af = and i32 %i.ae, %i.ac
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = icmp eq i32 %i.m, %i.p                  ; 3 uses
  %spec.select.not = select i1 %i.ah, i1 true, i1 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !207 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !207 ; 3 uses
  %i.am = and i64 %i.aj, 4294967295
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = and i64 %i.al, 4294967295
  %i.ap = icmp eq i64 %i.ao, 31
  %or.cond = and i1 %i.an, %i.ap
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %2, label %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.f

_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.e
  %spec.select85 = select i1 %i.ah, i32 %i.s, i32 %i.m
  %i.aq = load i32, ptr %i.i, align 8
  %i.ar = and i32 %i.aq, 83886080
  %.not86 = icmp eq i32 %i.ar, 83886080
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.07.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !436
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !340
  %i.av = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr %.sroa.07.0.copyload, i1 noundef zeroext false) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !438, !alias.scope !952
  %i.ax = select i1 %.not86, i32 83886080, i32 16777216
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %spec.select85, ptr %i.ay, align 4, !tbaa !207, !alias.scope !952
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false), !alias.scope !952
  store i32 %i.ax, ptr %9, align 8, !alias.scope !952
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !438, !alias.scope !953
  %i.bb = select i1 %spec.select.not, i32 0, i32 67108864
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.s, ptr %i.bc, align 4, !tbaa !207, !alias.scope !953
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !953
  store i32 %i.bb, ptr %8, align 8, !alias.scope !953
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.be, align 8, !tbaa !438, !alias.scope !954
  %10 = select i1 %.not, i32 0, i32 67108864
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.p, ptr %i.bf, align 4, !tbaa !207, !alias.scope !954
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !alias.scope !954
  store i32 %10, ptr %7, align 8, !alias.scope !954
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bh = add i64 %i.al, 1
  %i.bi = and i64 %i.bh, 31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 1, ptr %6, align 8, !alias.scope !955
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bj, align 8, !tbaa !438, !alias.scope !955
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !207, !alias.scope !955
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bl = add i64 %i.aj, 31
  %i.bm = and i64 %i.bl, 31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 1, ptr %5, align 8, !alias.scope !956
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !438, !alias.scope !956
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !207, !alias.scope !956
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.ah, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre89 = shl nuw nsw i32 %i.x, 8
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 %i.s) #26
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !342 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = shl nuw nsw i32 %i.x, 8                 ; 2 uses
  %i.bs = and i32 %i.bq, -1048321
  %i.bt = or disjoint i32 %i.bs, %i.br
  store i32 %i.bt, ptr %i.bp, align 8
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !342
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i32 [ %.pre89, %._crit_edge ], [ %i.br, %bb.g ]
  %i.bu = phi ptr [ %i.i, %._crit_edge ], [ %.pre, %bb.g ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i32 %i.p) #26
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i32 %i.s) #26
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = and i32 %i.ca, -1048321
  %i.cc = or disjoint i32 %i.cb, %i.u
  store i32 %i.cc, ptr %i.bz, align 8
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = and i32 %i.cf, -1048321
  %i.ch = or disjoint i32 %i.cg, %.pre-phi
  store i32 %i.ch, ptr %i.ce, align 8
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8
  %11 = select i1 %.not, i32 0, i32 67108864
  %i.cl = and i32 %i.ck, -67108865
  %i.cm = or disjoint i32 %i.cl, %11
  store i32 %i.cm, ptr %i.cj, align 8
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = select i1 %spec.select.not, i32 0, i32 67108864
  %i.cr = and i32 %i.cp, -67108865
  %i.cs = or disjoint i32 %i.cr, %i.cq
  store i32 %i.cs, ptr %i.co, align 8
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.cu = add i64 %i.al, 1
  %i.cv = and i64 %i.cu, 31
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 144
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !207
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !342
  %i.cy = add i64 %i.aj, 31
  %i.cz = and i64 %i.cy, 31
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 176
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !207
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, %bb.h, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %i.g, %bb.b ], [ null, %bb.c ], [ %1, %bb.h ], [ %i.av, %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit ], [ null, %bb.d ]
  ret ptr %.1
}

declare noundef ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !396  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.023.i = phi i32 [ 16, %bb.a ], [ %.1.i, %bb.c ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.a ], [ %.116.i, %bb.c ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm3PPC18getAltVSXFMAOpcodeEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %i.i = icmp eq i32 %i.b, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.b, %i.h                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.b, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.b ], [ %.116.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.b ], [ %.1.i, %bb.c ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit.thread, label %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit

_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit.thread:   ; preds = %bb.d
  %i.n = tail call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #26
  br label %bb.e

_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit:          ; preds = %bb.d
  %i.o = tail call noundef zeroext i1 @_ZN4llvm15TargetInstrInfo20fixCommutedOpIndicesERjS1_jj(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 2, i32 noundef 3) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit, %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit.thread
  %.0 = phi i1 [ %i.n, %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit.thread ], [ %i.o, %_ZN4llvm3PPC18getAltVSXFMAOpcodeEj.exit ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm15TargetInstrInfo20fixCommutedOpIndicesERjS1_jj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12PPCInstrInfo10insertNoopERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395, !nonnull !65, !align !206
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 552
  %i.d = load i32, ptr %i.c, align 8, !tbaa !208
  %switch.tableidx = add i32 %i.d, -17            ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 5
  br i1 %i.e, label %switch.lookup, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm12PPCInstrInfo10insertNoopERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE, i64 %i.f
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %switch.lookup, %bb.a
  %.0.neg = phi i64 [ -1625, %bb.a ], [ %switch.load, %switch.lookup ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds [32 x i8], ptr %i.h, i64 %.0.neg
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !386
  %i.l = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr null, i1 noundef zeroext false) #26 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef %i.l) #26
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !561
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.r = or disjoint i64 %i.q, %i.n
  store i64 %i.r, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.l, ptr %i.s, align 8, !tbaa !561
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.v = or disjoint i64 %i.u, %i.t
  store i64 %i.v, ptr %2, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !386  ; 5 uses
  %.sroa.02.0.copyload = load ptr, ptr %2, align 8, !tbaa !436
  %i.c = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.02.0.copyload, i1 noundef zeroext false) #26 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.c) #26
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !561
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !561
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.m = or disjoint i64 %i.l, %i.k
  store i64 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !564  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.o) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !565  ; 2 uses
  %.not7.i = icmp eq ptr %i.q, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.q) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !566  ; 2 uses
  %.not8.i = icmp eq ptr %i.s, null
  br i1 %.not8.i, label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.s) #26
  br label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit

_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit: ; preds = %bb.e, %bb.f
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.c, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK4llvm12PPCInstrInfo6getNopEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::MCInst") align 8 initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 6, ptr %i.d, align 4, !tbaa !324
  store i32 1625, ptr %0, align 8, !tbaa !964
  ret void
}

end_hunk_1
