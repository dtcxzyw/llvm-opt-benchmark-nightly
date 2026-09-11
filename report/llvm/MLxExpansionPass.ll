Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MLxExpansionPass?download=true
inline.NumInlined: 558
inline.NumDeleted: 362
begin_hunk_0_@_ZN12_GLOBAL__N_112MLxExpansion20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 48
  %i.ld = and i32 %i.ku, 2147483647
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = load ptr, ptr %i.lc, align 8
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %i.le
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.la, i64 312
  %i.lj = zext nneg i32 %i.ku to i64
  %i.lk = load ptr, ptr %i.li, align 8
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.lj
  %.0.in.i.i.i.i.i = select i1 %i.lb, ptr %i.lh, ptr %i.ll
  %.0.i.i.i40.i.i = load ptr, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !433, !nonnull !19, !noundef !19 ; 3 uses
  %i.lm = load i32, ptr %.0.i.i.i40.i.i, align 8
  %i.ln = and i32 %i.lm, -2130706432
  %or.cond.not.i.i.i.i.i = icmp eq i32 %i.ln, 0
  br i1 %or.cond.not.i.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit.i.i.i, label %.critedge2.i.i.i.i.i.i

.critedge2.i.i.i.i.i.i:                           ; preds = %bb.ar, %.critedge2.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i.i, %.critedge2.i.i.i.i.i.i ], [ %.0.i.i.i40.i.i, %bb.ar ]
  %storemerge.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i, align 8, !tbaa !57, !nonnull !19, !noundef !19 ; 3 uses
  %i.lo = load i32, ptr %storemerge.i.i.i.i.i.i, align 8
  %i.lp = and i32 %i.lo, -2130706432
  %or.cond.not.i.i.i.i.i.i = icmp eq i32 %i.lp, 0
  br i1 %or.cond.not.i.i.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit.i.i.i, label %.critedge2.i.i.i.i.i.i, !llvm.loop !132

_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit.i.i.i: ; preds = %.critedge2.i.i.i.i.i.i, %bb.ar
  %.sroa.0.0.i.i41.i.i = phi ptr [ %.0.i.i.i40.i.i, %bb.ar ], [ %storemerge.i.i.i.i.i.i, %.critedge2.i.i.i.i.i.i ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i41.i.i, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !59 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !418
  %.not.i42.i.i = icmp eq ptr %i.lt, %i.kz
  br i1 %.not.i42.i.i, label %.preheader.i.i.i, label %_ZNK12_GLOBAL__N_112MLxExpansion9getDefRegEPN4llvm12MachineInstrE.exit.i.i

.preheader.i.i.i:                                 ; preds = %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit.i.i.i, %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit27.i.i.i
  %i.lu = phi ptr [ %i.me, %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit27.i.i.i ], [ %i.la, %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit.i.i.i ]
  %.sroa.029.0.i.i.i = phi i32 [ %i.ma, %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit27.i.i.i ], [ %i.ku, %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit.i.i.i ]
  %.014.i.i.i = phi ptr [ %i.mv, %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit27.i.i.i ], [ %i.lr, %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit.i.i.i ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 52
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !408
  switch i32 %i.lw, label %_ZNK12_GLOBAL__N_112MLxExpansion9getDefRegEPN4llvm12MachineInstrE.exit.i.i [
    i32 20, label %.critedge.i.i.i
    i32 9, label %.critedge.i.i.i
  ]

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %.preheader.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !417
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !57 ; 9 uses
  %i.mb = add i32 %i.ma, -1
  %i.mc = icmp ult i32 %i.mb, 1073741823
  br i1 %i.mc, label %_ZNK12_GLOBAL__N_112MLxExpansion9getDefRegEPN4llvm12MachineInstrE.exit.i.i, label %bb.as

bb.as:                                            ; preds = %.critedge.i.i.i
  %i.md = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.lu, i32 %i.ma) #13
  br i1 %i.md, label %bb.at, label %_ZNK12_GLOBAL__N_112MLxExpansion9getDefRegEPN4llvm12MachineInstrE.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.me = load ptr, ptr %i.v, align 8, !tbaa !284 ; 3 uses
  %i.mf = icmp slt i32 %i.ma, 0
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.mh = and i32 %i.ma, 2147483647
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = load ptr, ptr %i.mg, align 8
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.mi
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.me, i64 312
  %i.mn = zext nneg i32 %i.ma to i64
  %i.mo = load ptr, ptr %i.mm, align 8
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.mn
  %.0.in.i.i16.i.i.i = select i1 %i.mf, ptr %i.ml, ptr %i.mp
  %.0.i.i17.i.i.i = load ptr, ptr %.0.in.i.i16.i.i.i, align 8, !tbaa !433, !nonnull !19, !noundef !19 ; 3 uses
  %i.mq = load i32, ptr %.0.i.i17.i.i.i, align 8
  %i.mr = and i32 %i.mq, -2130706432
  %or.cond.not.i.i19.i.i.i = icmp eq i32 %i.mr, 0
  br i1 %or.cond.not.i.i19.i.i.i, label %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit27.i.i.i, label %.critedge2.i.i.i20.i.i.i

.critedge2.i.i.i20.i.i.i:                         ; preds = %bb.at, %.critedge2.i.i.i20.i.i.i
  %.pn.i.i.i21.i.i.i = phi ptr [ %storemerge.i.i.i23.i.i.i, %.critedge2.i.i.i20.i.i.i ], [ %.0.i.i17.i.i.i, %bb.at ]
  %storemerge.in.i.i.i22.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i21.i.i.i, i64 24
  %storemerge.i.i.i23.i.i.i = load ptr, ptr %storemerge.in.i.i.i22.i.i.i, align 8, !tbaa !57, !nonnull !19, !noundef !19 ; 3 uses
  %i.ms = load i32, ptr %storemerge.i.i.i23.i.i.i, align 8
  %i.mt = and i32 %i.ms, -2130706432
  %or.cond.not.i.i.i25.i.i.i = icmp eq i32 %i.mt, 0
  br i1 %or.cond.not.i.i.i25.i.i.i, label %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit27.i.i.i, label %.critedge2.i.i.i20.i.i.i, !llvm.loop !132

_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit27.i.i.i: ; preds = %.critedge2.i.i.i20.i.i.i, %bb.at
  %.sroa.0.0.i26.i.i.i = phi ptr [ %.0.i.i17.i.i.i, %bb.at ], [ %storemerge.i.i.i23.i.i.i, %.critedge2.i.i.i20.i.i.i ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i.i.i, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !59 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !418
  %.not15.i.i.i = icmp eq ptr %i.mx, %i.kz
  br i1 %.not15.i.i.i, label %.preheader.i.i.i, label %_ZNK12_GLOBAL__N_112MLxExpansion9getDefRegEPN4llvm12MachineInstrE.exit.i.i, !llvm.loop !133

_ZNK12_GLOBAL__N_112MLxExpansion9getDefRegEPN4llvm12MachineInstrE.exit.i.i: ; preds = %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit27.i.i.i, %bb.as, %.critedge.i.i.i, %.preheader.i.i.i, %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit.i.i.i, %bb.aq, %bb.ap
  %.1.i.i.i = phi i32 [ %i.ku, %bb.aq ], [ %i.ku, %bb.ap ], [ %i.ku, %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit.i.i.i ], [ %i.ma, %_ZNK4llvm19MachineRegisterInfo21use_instr_nodbg_beginENS_8RegisterE.exit27.i.i.i ], [ %i.ma, %.critedge.i.i.i ], [ %i.ma, %bb.as ], [ %.sroa.029.0.i.i.i, %.preheader.i.i.i ]
  %i.my = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !409 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !413
  %i.nc = load i32, ptr %i.js, align 4, !tbaa !408
  %i.nd = add i32 %i.nc, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.nd, 2
  br i1 %spec.select.i.i.i.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNK12_GLOBAL__N_112MLxExpansion9getDefRegEPN4llvm12MachineInstrE.exit.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !417
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 48
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !57
  %i.ni = and i64 %i.nh, 16
  %.not.not.i.i.i.i = icmp eq i64 %i.ni, 0
  br i1 %.not.not.i.i.i.i, label %bb.av, label %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.thread.i.i

bb.av:                                            ; preds = %bb.au, %_ZNK12_GLOBAL__N_112MLxExpansion9getDefRegEPN4llvm12MachineInstrE.exit.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.jq, i64 44
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !49 ; 2 uses
  %i.nl = and i32 %i.nk, 12
  %i.nm = icmp eq i32 %i.nl, 0
  %i.nn = and i32 %i.nk, 4
  %i.no = icmp ne i32 %i.nn, 0
  %or.cond.i.i.i.i.i = or i1 %i.nm, %i.no
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.av
  %i.np = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.jq, i64 noundef 1048576, i32 noundef 1) #13
  br i1 %i.np, label %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.thread.i.i, label %bb.aw

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i.i.i: ; preds = %bb.av
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !412
  %i.ns = and i64 %i.nr, 1048576
  %.not14.i.i.i = icmp eq i64 %i.ns, 0
  br i1 %.not14.i.i.i, label %bb.aw, label %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.thread.i.i

bb.aw:                                            ; preds = %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i.i.i, %.split.i.i.i
  %i.nt = load i32, ptr %i.mz, align 8, !tbaa !416
  switch i32 %i.nt, label %bb.ax [
    i32 3045, label %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.thread.i.i
    i32 3043, label %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.thread.i.i
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.nu = and i64 %i.nb, 98304
  %or.cond.i.i25.i = icmp eq i64 %i.nu, 0
  br i1 %or.cond.i.i25.i, label %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.thread.i.i, label %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.i.i

_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.i.i: ; preds = %bb.ax
  %i.nv = load ptr, ptr %i.s, align 8, !tbaa !282
  %i.nw = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %i.jq, i32 %.1.i.i.i, ptr noundef %i.nv, i1 noundef zeroext false) #13
  %.not58.i.i = icmp eq i32 %i.nw, -1
  br i1 %.not58.i.i, label %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.thread.i.i, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i

_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.thread.i.i: ; preds = %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.i.i, %bb.ax, %bb.aw, %bb.aw, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i.i.i, %.split.i.i.i, %bb.au, %bb.ao, %_ZNK4llvm16ARMBaseInstrInfo18canCauseFpMLxStallEj.exit.thread.i.i, %bb.ai
  %i.nx = add nuw nsw i32 %.068.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.nx, 5
  br i1 %exitcond.not.i.i, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread33.i, label %bb.ai, !llvm.loop !134

_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.i: ; preds = %bb.ae, %.backedge.i32.i.i, %bb.ad, %bb.ac, %bb.y, %.lr.ph58.i.i.i, %bb.ab, %bb.x
  %.13051.i.i.i = phi ptr [ %i.ho, %bb.x ], [ %.13057.i.i.i, %bb.ab ], [ %i.ir, %.backedge.i32.i.i ], [ %.13057.i.i.i, %bb.ad ], [ %i.ii, %bb.ac ], [ %.13057.i.i.i, %bb.y ], [ %.13057.i.i.i, %.lr.ph58.i.i.i ], [ %.13057.i.i.i, %bb.ae ]
  %i.ny = icmp eq ptr %.13051.i.i.i, %.sroa.030.050.i
  br i1 %i.ny, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread33.i

_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread33.i: ; preds = %.lr.ph.i.i36.i.i, %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.thread.i.i, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.i, %_ZNK4llvm15SmallPtrSetImplIPNS_12MachineInstrEE5countEPKS1_.exit.i.i, %_ZL18isFpMulInstructionj.exit.i.i, %bb.n
  %i.nz = load i32, ptr %i.al, align 4, !tbaa !414 ; 2 uses
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.oa
  store ptr %.sroa.030.050.i, ptr %i.ob, align 8, !tbaa !415
  %i.oc = add i32 %i.nz, 1                        ; 2 uses
  %i.od = icmp eq i32 %i.oc, 4
  %spec.select.i27.i = select i1 %i.od, i32 0, i32 %i.oc
  store i32 %spec.select.i27.i, ptr %i.al, align 4, !tbaa !414
  br label %bb.be

_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i: ; preds = %.lr.ph.i.i.i.i, %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.i.i, %_ZNK4llvm16ARMBaseInstrInfo18canCauseFpMLxStallEj.exit.i.i, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.i, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i, %bb.v, %bb.o
  %i.oe = load i32, ptr %i.a, align 4, !tbaa !423
  %i.of = load i32, ptr %i.b, align 4, !tbaa !423
  %i.og = load i8, ptr %i.c, align 1, !tbaa !434, !range !18, !noundef !19
  %i.oh = trunc nuw i8 %i.og to i1
  %i.oi = load i8, ptr %i.d, align 1, !tbaa !434, !range !18, !noundef !19
  %i.oj = trunc nuw i8 %i.oi to i1                ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.030.050.i, i64 32
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !417 ; 9 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !57
  %i.oo = load i32, ptr %i.ol, align 8
  %i.op = and i32 %i.oo, 83886080
  %.not85.i.i = icmp eq i32 %i.op, 83886080
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 36
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !57 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ol, i64 64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ol, i64 68
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !57
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ol, i64 96
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ol, i64 100
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !57
  %i.oy = load i32, ptr %i.os, align 8            ; 2 uses
  %16 = lshr i32 %i.oy, 26
  %17 = lshr i32 %i.oy, 24
  %.lobit.i.i.i = and i32 %17, 1
  %18 = xor i32 %.lobit.i.i.i, 1
  %19 = and i32 %18, %16
  %.not.i28.i = icmp eq i32 %19, 0
  %i.oz = load i32, ptr %i.ov, align 8            ; 2 uses
  %20 = lshr i32 %i.oz, 26
  %21 = lshr i32 %i.oz, 24
  %.lobit.i59.i.i = and i32 %21, 1
  %22 = xor i32 %.lobit.i59.i.i, 1
  %23 = and i32 %22, %20
  %.not84.i.i = icmp eq i32 %23, 0
  br i1 %i.oj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ol, i64 144
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !57
  %i.pc = and i64 %i.pb, 4294967295
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i
  %i.pd = phi i64 [ 5, %bb.ay ], [ 4, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i ]
  %i.pe = phi i64 [ %i.pc, %bb.ay ], [ 0, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i ]
  %i.pf = getelementptr inbounds nuw [32 x i8], ptr %i.ol, i64 %i.pd ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !57
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 36
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !57 ; 2 uses
  %i.pk = load ptr, ptr %i.m, align 8, !tbaa !281 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !437 ; 2 uses
  %i.pn = zext i32 %i.oe to i64
  %i.po = sub nsw i64 0, %i.pn
  %i.pp = getelementptr inbounds [32 x i8], ptr %i.pm, i64 %i.po ; 2 uses
  %i.pq = zext i32 %i.of to i64
  %i.pr = sub nsw i64 0, %i.pq
  %i.ps = getelementptr inbounds [32 x i8], ptr %i.pm, i64 %i.pr
  %i.pt = load ptr, ptr %i.v, align 8, !tbaa !284
  %i.pu = load ptr, ptr %i.pk, align 8, !tbaa !10
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8
  %i.px = call noundef ptr %i.pw(ptr noundef nonnull align 8 dereferenceable(112) %i.pk, ptr noundef nonnull align 8 dereferenceable(32) %i.pp, i32 noundef 0) #13, !inline_history !135
  %i.py = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.pt, ptr noundef %i.px, ptr nonnull @.str.4, i64 0) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.030.050.i, i64 72 ; 2 uses
  %.sroa.013.0.copyload.i.i = load ptr, ptr %i.pz, align 8, !tbaa !60
  store ptr %.sroa.013.0.copyload.i.i, ptr %14, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.qa = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.017.033, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.030.050.i, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.pp, i32 %i.py) ; 2 uses
  %i.qb = extractvalue { ptr, ptr } %i.qa, 0      ; 5 uses
  %i.qc = extractvalue { ptr, ptr } %i.qa, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  store ptr null, ptr %i.as, align 8, !tbaa !59, !alias.scope !438
  %24 = select i1 %.not.i28.i, i32 0, i32 67108864
  store i32 %i.ou, ptr %i.at, align 4, !tbaa !57, !alias.scope !438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !alias.scope !438
  store i32 %24, ptr %13, align 8, !alias.scope !438
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qc, ptr noundef nonnull align 8 dereferenceable(1065) %i.qb, ptr noundef nonnull align 8 dereferenceable(32) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store ptr null, ptr %i.av, align 8, !tbaa !59, !alias.scope !439
  %25 = select i1 %.not84.i.i, i32 0, i32 67108864
  store i32 %i.ox, ptr %i.aw, align 4, !tbaa !57, !alias.scope !439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !alias.scope !439
  store i32 %25, ptr %12, align 8, !alias.scope !439
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qc, ptr noundef nonnull align 8 dereferenceable(1065) %i.qb, ptr noundef nonnull align 8 dereferenceable(32) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br i1 %i.oj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  store i32 1, ptr %11, align 8, !alias.scope !440
  store ptr null, ptr %i.ay, align 8, !tbaa !59, !alias.scope !440
  store i64 %i.pe, ptr %i.az, align 8, !tbaa !57, !alias.scope !440
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qc, ptr noundef nonnull align 8 dereferenceable(1065) %i.qb, ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.qd = and i64 %i.ph, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store i32 1, ptr %10, align 8, !alias.scope !441
  store ptr null, ptr %i.ba, align 8, !tbaa !59, !alias.scope !441
  store i64 %i.qd, ptr %i.bb, align 8, !tbaa !57, !alias.scope !441
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qc, ptr noundef nonnull align 8 dereferenceable(1065) %i.qb, ptr noundef nonnull align 8 dereferenceable(32) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store ptr null, ptr %i.bc, align 8, !tbaa !59, !alias.scope !442
  store i32 %i.pj, ptr %i.bd, align 4, !tbaa !57, !alias.scope !442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false), !alias.scope !442
  store i32 0, ptr %9, align 8, !alias.scope !442
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qc, ptr noundef nonnull align 8 dereferenceable(1065) %i.qb, ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.pz, align 8, !tbaa !60
  store ptr %.sroa.08.0.copyload.i.i, ptr %15, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.qe = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.017.033, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.030.050.i, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.ps) ; 2 uses
  %i.qf = extractvalue { ptr, ptr } %i.qe, 0      ; 7 uses
  %i.qg = extractvalue { ptr, ptr } %i.qe, 1      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store ptr null, ptr %i.bg, align 8, !tbaa !59, !alias.scope !443
  %i.qh = select i1 %.not85.i.i, i32 83886080, i32 16777216
  store i32 %i.on, ptr %i.bh, align 4, !tbaa !57, !alias.scope !443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !alias.scope !443
  store i32 %i.qh, ptr %8, align 8, !alias.scope !443
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br i1 %i.oh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.qi = load ptr, ptr %i.v, align 8, !tbaa !284
  %i.qj = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.qi, i32 %i.or) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr null, ptr %i.bp, align 8, !tbaa !59, !alias.scope !444
  store i32 %i.py, ptr %i.bq, align 4, !tbaa !57, !alias.scope !444
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false), !alias.scope !444
  store i32 67108864, ptr %7, align 8, !alias.scope !444
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr null, ptr %i.bs, align 8, !tbaa !59, !alias.scope !445
  %i.qk = select i1 %i.qj, i32 67108864, i32 0
  store i32 %i.or, ptr %i.bt, align 4, !tbaa !57, !alias.scope !445
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !alias.scope !445
  store i32 %i.qk, ptr %6, align 8, !alias.scope !445
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %_ZN12_GLOBAL__N_112MLxExpansion22ExpandFPMLxInstructionERN4llvm17MachineBasicBlockEPNS1_12MachineInstrEjjbb.exit.i

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr null, ptr %i.bj, align 8, !tbaa !59, !alias.scope !446
  store i32 %i.or, ptr %i.bk, align 4, !tbaa !57, !alias.scope !446
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !alias.scope !446
  store i32 0, ptr %5, align 8, !alias.scope !446
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr null, ptr %i.bm, align 8, !tbaa !59, !alias.scope !447
  store i32 %i.py, ptr %i.bn, align 4, !tbaa !57, !alias.scope !447
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false), !alias.scope !447
  store i32 67108864, ptr %4, align 8, !alias.scope !447
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN12_GLOBAL__N_112MLxExpansion22ExpandFPMLxInstructionERN4llvm17MachineBasicBlockEPNS1_12MachineInstrEjjbb.exit.i

_ZN12_GLOBAL__N_112MLxExpansion22ExpandFPMLxInstructionERN4llvm17MachineBasicBlockEPNS1_12MachineInstrEjjbb.exit.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 1, ptr %3, align 8, !alias.scope !448
  store ptr null, ptr %i.bv, align 8, !tbaa !59, !alias.scope !448
  store i64 %i.qd, ptr %i.bw, align 8, !tbaa !57, !alias.scope !448
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr null, ptr %i.bx, align 8, !tbaa !59, !alias.scope !449
  store i32 %i.pj, ptr %i.by, align 4, !tbaa !57, !alias.scope !449
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false), !alias.scope !449
  store i32 0, ptr %2, align 8, !alias.scope !449
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qg, ptr noundef nonnull align 8 dereferenceable(1065) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.ql = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.030.050.i) #13 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_112MLxExpansion22ExpandFPMLxInstructionERN4llvm17MachineBasicBlockEPNS1_12MachineInstrEjjbb.exit.i, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread33.i
  %.117.i = phi i1 [ true, %_ZN12_GLOBAL__N_112MLxExpansion22ExpandFPMLxInstructionERN4llvm17MachineBasicBlockEPNS1_12MachineInstrEjjbb.exit.i ], [ %.01651.i, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread33.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.m, %bb.l, %bb.j, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i
  %.4.i = phi i1 [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.01651.i, %bb.l ], [ %.117.i, %bb.be ], [ %.01651.i, %bb.j ], [ %.01651.i, %bb.m ], [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ] ; 2 uses
  %.3.i = phi i32 [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %i.dz, %bb.l ], [ 0, %bb.be ], [ 0, %bb.j ], [ 2, %bb.m ], [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ]
  %.not37.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i, %i.ck
  br i1 %.not37.i, label %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit.loopexit, label %.lr.ph.i

_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit.loopexit: ; preds = %bb.bf
  %i.qm = or i1 %.01632, %.4.i
  br label %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit

_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit: ; preds = %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit.loopexit, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i
  %.016.lcssa.i = phi i1 [ %.01632, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i ], [ %i.qm, %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit.loopexit ] ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.017.033, i64 8
  %.sroa.017.0 = load ptr, ptr %i.qn, align 8, !tbaa !406 ; 2 uses
  %.not = icmp eq ptr %.sroa.017.0, %i.ak
  br i1 %.not, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread ], [ %.016.lcssa.i, %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4llvm16ARMBaseInstrInfo18isFpMLxInstructionEjRjS1_RbS2_(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

declare void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #7

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #7

declare i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr, i64) local_unnamed_addr #7

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 6 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !60
  %i.f = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload.i, i1 noundef zeroext false) #13 ; 6 uses
  %i.g = tail call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr nonnull %1, ptr noundef %i.f) #13 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c
end_hunk_0
