Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86FastISel?download=true
inline.NumInlined: 12764
inline.NumDeleted: 3524
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_111X86FastISel13fastLowerCallERN4llvm8FastISel16CallLoweringInfoE:bb.a
  %.sroa.099.0.copyload = load ptr, ptr %i.pd, align 8
  %i.pe = load ptr, ptr %i.jh, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !457
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -83872
  %i.pi = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.pc, ptr %.sroa.099.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.jp, ptr noundef nonnull align 8 dereferenceable(32) %i.ph, i32 2) ; 2 uses
  %i.pj = extractvalue { ptr, ptr } %i.pi, 0
  %i.pk = extractvalue { ptr, ptr } %i.pi, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  store i32 1, ptr %16, align 8, !alias.scope !1077
  %i.pl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.pl, align 8, !tbaa !459, !alias.scope !1077
  %i.pm = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %.1.i, ptr %i.pm, align 8, !tbaa !229, !alias.scope !1077
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.pk, ptr noundef nonnull align 8 dereferenceable(1065) %i.pj, ptr noundef nonnull align 8 dereferenceable(32) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  %i.pn = getelementptr inbounds nuw i8, ptr %35, i64 4
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %35, align 16, !tbaa !229
  %i.po = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i32 0, ptr %i.po, align 16, !tbaa !233
  %i.pp = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 2 uses
  store ptr null, ptr %i.pp, align 8, !tbaa !234
  %i.pq = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i32 0, ptr %i.pq, align 16, !tbaa !235
  %i.pr = getelementptr inbounds nuw i8, ptr %35, i64 36
  store i8 0, ptr %i.pr, align 4, !tbaa !236
  %i.ps = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111X86FastISel20X86SelectCallAddressEPKN4llvm5ValueERNS1_14X86AddressModeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.o, ptr noundef nonnull align 8 dereferenceable(37) %35)
  br i1 %i.ps, label %bb.cc, label %bb.dw

bb.cc:                                            ; preds = %bb.cb
  %i.pt = load ptr, ptr %i.pp, align 8, !tbaa !234 ; 5 uses
  %.not374 = icmp eq ptr %i.pt, null
  br i1 %.not374, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.pu = load i32, ptr %i.pn, align 4, !tbaa !265 ; 2 uses
  %.not375 = icmp eq i32 %i.pu, 0
  br i1 %.not375, label %bb.dw, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  %i.pv = load ptr, ptr %i.iq, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 680
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !456
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 688
  %.sroa.097.0.copyload = load ptr, ptr %i.py, align 8
  %i.pz = load ptr, ptr %i.jh, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !457
  %.neg705 = select i1 %i.x, i64 -1165, i64 -1160
  %i.qc = getelementptr inbounds [32 x i8], ptr %i.qb, i64 %.neg705
  %i.qd = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.px, ptr %.sroa.097.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.jp, ptr noundef nonnull align 8 dereferenceable(32) %i.qc) ; 2 uses
  %i.qe = extractvalue { ptr, ptr } %i.qd, 0      ; 2 uses
  %i.qf = extractvalue { ptr, ptr } %i.qd, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.qg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.qg, align 8, !tbaa !459, !alias.scope !1078
  %i.qh = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %i.pu, ptr %i.qh, align 4, !tbaa !229, !alias.scope !1078
  %i.qi = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qi, i8 0, i64 16, i1 false), !alias.scope !1078
  store i32 0, ptr %15, align 8, !alias.scope !1078
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qf, ptr noundef nonnull align 8 dereferenceable(1065) %i.qe, ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  store ptr %i.qe, ptr %36, align 8, !tbaa !1079
  %.sroa.5514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.qf, ptr %.sroa.5514.0..sroa_idx, align 8, !tbaa !246
  br label %bb.cs

bb.cf:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  %i.qj = load ptr, ptr %i.t, align 8, !tbaa !223
  %i.qk = call noundef zeroext i8 @_ZNK4llvm12X86Subtarget31classifyGlobalFunctionReferenceEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(519752) %i.qj, ptr noundef nonnull %i.pt) #18 ; 5 uses
  %i.ql = icmp ne i8 %i.qk, 7
  %or.cond26 = or i1 %i.ql, %i.x
  br i1 %or.cond26, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !429, !nonnull !206, !align !207
  %i.qo = call noundef i32 @_ZNK4llvm13TargetMachine18getRelocationModelEv(ptr noundef nonnull align 8 dereferenceable(1728) %i.qn) #18
  %i.qp = icmp eq i32 %i.qo, 0
  br i1 %i.qp, label %bb.ch, label %.thread673

bb.ch:                                            ; preds = %bb.cg
  %i.qq = load i8, ptr %i.pt, align 8, !tbaa !268
  %i.qr = icmp eq i8 %i.qq, 14
  br i1 %i.qr, label %bb.ci, label %.thread673

bb.ci:                                            ; preds = %bb.ch
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.qt = load i32, ptr %i.qs, align 8
  %i.qu = and i32 %i.qt, 8192
  %.not702 = icmp eq i32 %i.qu, 0
  %spec.select691 = select i1 %.not702, i8 7, i8 0
  br label %.thread673

.thread673:                                       ; preds = %bb.ci, %bb.cg, %bb.ch
  %.0343.ph = phi i8 [ 7, %bb.cg ], [ 7, %bb.ch ], [ %spec.select691, %bb.ci ] ; 2 uses
  %i.qv = zext nneg i8 %.0343.ph to i32
  br label %switch.edge

bb.cj:                                            ; preds = %bb.cf
  %i.qw = zext i8 %i.qk to i32                    ; 2 uses
  switch i8 %i.qk, label %switch.edge [
    i8 17, label %bb.ck
    i8 6, label %bb.ck
    i8 5, label %bb.ck
    i8 24, label %bb.ck
  ]

switch.edge:                                      ; preds = %bb.cj, %.thread673
  %i.qx = phi i32 [ %i.qv, %.thread673 ], [ %i.qw, %bb.cj ]
  %.0343676 = phi i8 [ %.0343.ph, %.thread673 ], [ %i.qk, %bb.cj ]
  %.neg703 = select i1 %i.x, i64 -1164, i64 -1168
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.cj, %bb.cj, %bb.cj
  %.neg = select i1 %i.x, i64 -1162, i64 -1158
  br label %bb.cl

bb.cl:                                            ; preds = %switch.edge, %bb.ck
  %i.qy = phi i1 [ true, %bb.ck ], [ false, %switch.edge ] ; 2 uses
  %.0343675678 = phi i8 [ %i.qk, %bb.ck ], [ %.0343676, %switch.edge ]
  %i.qz = phi i32 [ %i.qw, %bb.ck ], [ %i.qx, %switch.edge ]
  %.neg704 = phi i64 [ %.neg, %bb.ck ], [ %.neg703, %switch.edge ]
  %i.ra = load ptr, ptr %i.iq, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 680
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !456
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 688
  %.sroa.083.0.copyload = load ptr, ptr %i.rd, align 8
  %i.re = load ptr, ptr %i.jh, align 8, !tbaa !237, !nonnull !206, !align !207
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !457
  %i.rh = getelementptr inbounds [32 x i8], ptr %i.rg, i64 %.neg704
  %i.ri = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.rc, ptr %.sroa.083.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.jp, ptr noundef nonnull align 8 dereferenceable(32) %i.rh) ; 2 uses
  %i.rj = extractvalue { ptr, ptr } %i.ri, 0      ; 2 uses
  %i.rk = extractvalue { ptr, ptr } %i.ri, 1      ; 2 uses
  store ptr %i.rj, ptr %36, align 8, !tbaa !1079
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 5 uses
  store ptr %i.rk, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !246
  br i1 %i.qy, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.rl = select i1 %i.x, i32 58, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.rm = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.rm, align 8, !tbaa !459, !alias.scope !1080
  %i.rn = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.rl, ptr %i.rn, align 4, !tbaa !229, !alias.scope !1080
  %i.ro = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ro, i8 0, i64 16, i1 false), !alias.scope !1080
  store i32 0, ptr %14, align 8, !alias.scope !1080
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.rk, ptr noundef nonnull align 8 dereferenceable(1065) %i.rj, ptr noundef nonnull align 8 dereferenceable(32) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.rp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !551
  %i.rq = load ptr, ptr %36, align 8, !tbaa !552
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i32 1, ptr %13, align 8, !alias.scope !1081
  %i.rr = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.rr, align 8, !tbaa !459, !alias.scope !1081
  %i.rs = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 1, ptr %i.rs, align 8, !tbaa !229, !alias.scope !1081
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.rp, ptr noundef nonnull align 8 dereferenceable(1065) %i.rq, ptr noundef nonnull align 8 dereferenceable(32) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.rt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !551
  %i.ru = load ptr, ptr %36, align 8, !tbaa !552
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.rt, ptr noundef nonnull align 8 dereferenceable(1065) %i.ru, ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.not377 = icmp eq ptr %i.q, null
  br i1 %.not377, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addSymEPNS_8MCSymbolEh(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull %i.q, i8 noundef zeroext %.0343675678) ; 0 uses
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.rw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !551
  %i.rx = load ptr, ptr %36, align 8, !tbaa !552
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ry = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.ry, align 8, !tbaa !459, !alias.scope !1082
  %i.rz = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.pt, ptr %i.rz, align 8, !tbaa !229, !alias.scope !1082
  %i.sa = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.sa, align 4, !tbaa !229, !alias.scope !1082
  %i.sb = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 0, ptr %i.sb, align 8, !tbaa !229, !alias.scope !1082
  %i.sc = shl nuw nsw i32 %i.qz, 8
  %i.sd = or disjoint i32 %i.sc, 10
  store i32 %i.sd, ptr %11, align 8, !alias.scope !1082
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.rw, ptr noundef nonnull align 8 dereferenceable(1065) %i.rx, ptr noundef nonnull align 8 dereferenceable(32) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %i.qy, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.se = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !551
  %i.sf = load ptr, ptr %36, align 8, !tbaa !552
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.se, ptr noundef nonnull align 8 dereferenceable(1065) %i.sf, ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr, %bb.ce
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !1083, !nonnull !206, !align !207 ; 2 uses
  %i.si = load ptr, ptr %i.iq, align 8, !tbaa !247, !nonnull !206, !align !207
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !93
  %i.sl = load ptr, ptr %i.sh, align 8, !tbaa !12
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 72
  %i.sn = load ptr, ptr %i.sm, align 8
  %i.so = call noundef ptr %i.sn(ptr noundef nonnull align 8 dereferenceable(316) %i.sh, ptr noundef nonnull align 8 dereferenceable(1065) %i.sk, i32 noundef %i.h) #18
  %i.sp = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 5 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !551
  %i.sr = load ptr, ptr %36, align 8, !tbaa !552
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i32 12, ptr %9, align 8, !alias.scope !1084
  %i.ss = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.ss, align 8, !tbaa !459, !alias.scope !1084
  %i.st = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.so, ptr %i.st, align 8, !tbaa !229, !alias.scope !1084
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.sq, ptr noundef nonnull align 8 dereferenceable(1065) %i.sr, ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.su = load ptr, ptr %i.t, align 8, !tbaa !223
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 344
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !549
  %i.sx = icmp eq i32 %i.sw, 1
  br i1 %i.sx, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.sy = load ptr, ptr %i.sp, align 8, !tbaa !551
  %i.sz = load ptr, ptr %36, align 8, !tbaa !552
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ta = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ta, align 8, !tbaa !459, !alias.scope !1085
  %i.tb = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 24, ptr %i.tb, align 4, !tbaa !229, !alias.scope !1085
  %i.tc = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tc, i8 0, i64 16, i1 false), !alias.scope !1085
  store i32 33554432, ptr %8, align 8, !alias.scope !1085
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.sy, ptr noundef nonnull align 8 dereferenceable(1065) %i.sz, ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  br i1 %or.cond23, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.td = load ptr, ptr %i.sp, align 8, !tbaa !551
  %i.te = load ptr, ptr %36, align 8, !tbaa !552
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.tf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.tf, align 8, !tbaa !459, !alias.scope !1086
  %i.tg = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 2, ptr %i.tg, align 4, !tbaa !229, !alias.scope !1086
  %i.th = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.th, i8 0, i64 16, i1 false), !alias.scope !1086
  store i32 33554432, ptr %7, align 8, !alias.scope !1086
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.td, ptr noundef nonnull align 8 dereferenceable(1065) %i.te, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.ti = load ptr, ptr %i.d, align 8, !tbaa !243 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !244 ; 2 uses
  %i.tl = zext i32 %i.tk to i64
  %.idx735 = shl nuw nsw i64 %i.tl, 2
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 %.idx735
  %.not378725 = icmp eq i32 %i.tk, 0
  br i1 %.not378725, label %._crit_edge, label %.lr.ph727

.lr.ph727:                                        ; preds = %bb.cw
  %i.tn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.to = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.tp = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.cx

._crit_edge:                                      ; preds = %bb.cx, %bb.cw
  %i.tq = load ptr, ptr %i.t, align 8, !tbaa !223
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 522
  %i.ts = load i8, ptr %i.tr, align 2, !tbaa !460, !range !427, !noundef !206
  %i.tt = trunc nuw i8 %i.ts to i1
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !429, !nonnull !206, !align !207
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 1296
  %i.tx = load i8, ptr %i.tw, align 8
  %i.ty = and i8 %i.tx, 16
  %i.tz = icmp ne i8 %i.ty, 0
  %i.ua = call noundef zeroext i1 @_ZN4llvm3X8611isCalleePopEjbbb(i32 noundef %i.h, i1 noundef zeroext %i.tt, i1 noundef zeroext %i.m, i1 noundef zeroext %i.tz) #18
  br i1 %i.ua, label %bb.cz, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph727, %bb.cx
  %.0341726 = phi ptr [ %i.ti, %.lr.ph727 ], [ %i.ud, %bb.cx ] ; 2 uses
  %.sroa.076.0.copyload = load i32, ptr %.0341726, align 4, !tbaa !410
  %i.ub = load ptr, ptr %i.sp, align 8, !tbaa !551
  %i.uc = load ptr, ptr %36, align 8, !tbaa !552
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %i.tn, align 8, !tbaa !459, !alias.scope !1087
  store i32 %.sroa.076.0.copyload, ptr %i.to, align 4, !tbaa !229, !alias.scope !1087
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tp, i8 0, i64 16, i1 false), !alias.scope !1087
  store i32 33554432, ptr %6, align 8, !alias.scope !1087
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ub, ptr noundef nonnull align 8 dereferenceable(1065) %i.uc, ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ud = getelementptr inbounds nuw i8, ptr %.0341726, i64 4 ; 2 uses
  %.not378 = icmp eq ptr %i.ud, %i.tm
  br i1 %.not378, label %._crit_edge, label %bb.cx

bb.cy:                                            ; preds = %._crit_edge
  %i.ue = load ptr, ptr %i.t, align 8, !tbaa !223
  %i.uf = load ptr, ptr %i.r, align 8, !tbaa !1063
  %i.ug = call fastcc noundef i32 @_ZL33computeBytesPoppedByCalleeForSRetPKN4llvm12X86SubtargetEjPKNS_8CallBaseE(ptr noundef %i.ue, i32 noundef %i.h, ptr noundef %i.uf)
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge, %bb.cy
  %i.uh = phi i32 [ %i.ug, %bb.cy ], [ %i.jg, %._crit_edge ]
  %i.ui = load ptr, ptr %i.jh, align 8, !tbaa !237, !nonnull !206, !align !207 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 100
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !1088
  %i.ul = load ptr, ptr %i.iq, align 8, !tbaa !247, !nonnull !206, !align !207 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 680
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !456
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 688
  %.sroa.072.0.copyload = load ptr, ptr %i.uo, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !457
  %i.ur = zext i32 %i.uk to i64
  %i.us = sub nsw i64 0, %i.ur
  %i.ut = getelementptr inbounds [32 x i8], ptr %i.uq, i64 %i.us
  %i.uu = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.un, ptr %.sroa.072.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.jp, ptr noundef nonnull align 8 dereferenceable(32) %i.ut) ; 2 uses
  %i.uv = extractvalue { ptr, ptr } %i.uu, 0      ; 2 uses
  %i.uw = extractvalue { ptr, ptr } %i.uu, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i32 1, ptr %5, align 8, !alias.scope !1089
  %i.ux = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ux, align 8, !tbaa !459, !alias.scope !1089
  %i.uy = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.jy, ptr %i.uy, align 8, !tbaa !229, !alias.scope !1089
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.uw, ptr noundef nonnull align 8 dereferenceable(1065) %i.uv, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.uz = zext i32 %i.uh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 1, ptr %4, align 8, !alias.scope !1090
  %i.va = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.va, align 8, !tbaa !459, !alias.scope !1090
  %i.vb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.uz, ptr %i.vb, align 8, !tbaa !229, !alias.scope !1090
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.uw, ptr noundef nonnull align 8 dereferenceable(1065) %i.uv, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  %i.vc = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  store ptr %i.vc, ptr %37, align 8, !tbaa !243
  %i.vd = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  store i32 0, ptr %i.vd, align 8, !tbaa !244
  %i.ve = getelementptr inbounds nuw i8, ptr %37, i64 12
  store i32 16, ptr %i.ve, align 4, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  %i.vf = load ptr, ptr %i.iq, align 8, !tbaa !247, !nonnull !206, !align !207
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !93
  %i.vi = load ptr, ptr %1, align 8, !tbaa !1064
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !441, !nonnull !206, !align !207
  call void @_ZN4llvm7CCStateC1EjbRNS_15MachineFunctionERNS_15SmallVectorImplINS_11CCValAssignEEERNS_11LLVMContextEb(ptr noundef nonnull align 8 dereferenceable(420) %38, i32 noundef %i.h, i1 noundef zeroext %i.m, ptr noundef nonnull align 8 dereferenceable(1065) %i.vh, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.vj, i1 noundef zeroext false) #18
  call void @_ZN4llvm7CCState17AnalyzeCallResultERKNS_15SmallVectorImplINS_3ISD8InputArgEEEPFbjNS_3MVTES7_NS_11CCValAssign7LocInfoENS2_10ArgFlagsTyEPNS_4TypeERS0_E(ptr noundef nonnull align 8 dereferenceable(420) %38, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @_ZN4llvm9RetCC_X86EjNS_3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE) #18
  %i.vk = load ptr, ptr %i.iq, align 8, !tbaa !247, !nonnull !206, !align !207
  %i.vl = load ptr, ptr %1, align 8, !tbaa !1064
  %i.vm = call i32 @_ZN4llvm20FunctionLoweringInfo10CreateRegsEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(976) %i.vk, ptr noundef %i.vl, i1 noundef zeroext false) #18 ; 2 uses
  %i.vn = load i32, ptr %i.vd, align 8, !tbaa !244
  %.not379728 = icmp eq i32 %i.vn, 0
  br i1 %.not379728, label %._crit_edge732, label %.lr.ph731

.lr.ph731:                                        ; preds = %bb.cz
  %i.vo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.vp = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.vq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.vr = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 868
  %i.vt = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vv = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.vw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.vy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.vz = getelementptr inbounds nuw i8, ptr %41, i64 8
  br label %bb.da
end_hunk_0
