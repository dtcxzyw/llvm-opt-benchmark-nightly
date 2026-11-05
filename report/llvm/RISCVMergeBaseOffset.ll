Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVMergeBaseOffset?download=true
inline.NumInlined: 823
inline.NumDeleted: 399
begin_hunk_0_@_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  br i1 %i.jv, label %switch.lookup, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt19detectAndFoldOffsetERN4llvm12MachineInstrES3_.exit

switch.lookup:                                    ; preds = %bb.au
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jl, i64 80
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !64
  %i.jy = load i32, ptr %i.dx, align 4, !tbaa !62
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr i8, ptr @switch.table._ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt20runOnMachineFunctionERN4llvm15MachineFunctionE, i64 %i.jz
  %switch.gep = getelementptr i8, ptr %i.ka, i64 -15856
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext nneg i8 %switch.load to i64
  %i.kb = shl i64 %i.jx, %switch.ext
  %i.kc = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt10foldOffsetERN4llvm12MachineInstrES3_S3_l(ptr noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.075.0129, ptr noundef nonnull readonly align 8 dereferenceable(80) %.0, ptr noundef nonnull align 8 dereferenceable(80) %i.dw, i64 noundef %i.kb)
  br i1 %i.kc, label %bb.av, label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt19detectAndFoldOffsetERN4llvm12MachineInstrES3_.exit

bb.av:                                            ; preds = %switch.lookup
  %i.kd = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.jh) #16 ; 0 uses
  br label %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt19detectAndFoldOffsetERN4llvm12MachineInstrES3_.exit

_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt19detectAndFoldOffsetERN4llvm12MachineInstrES3_.exit: ; preds = %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt14detectFoldableERN4llvm12MachineInstrERPS2_.exit, %bb.q, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i25, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i32, %bb.w, %bb.x, %.thread.i, %bb.y, %bb.z, %bb.aa, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i.i, %bb.ac, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.al, %bb.am, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread.sink.split.i.i, %bb.an, %bb.ao, %bb.ap, %bb.aq, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i72.i, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread25.i.i, %bb.as, %bb.at, %bb.au, %switch.lookup, %bb.av
  %.5.i = phi i1 [ false, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i25 ], [ false, %bb.q ], [ true, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread.sink.split.i.i ], [ false, %bb.aq ], [ %i.fl, %.thread.i ], [ false, %_ZNK4llvm19MachineRegisterInfo15use_instr_beginENS_8RegisterE.exit.i32 ], [ false, %bb.y ], [ false, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i.i ], [ false, %bb.ai ], [ false, %bb.ac ], [ false, %bb.aj ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.z ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.aa ], [ false, %bb.an ], [ false, %bb.ao ], [ false, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.i72.i ], [ false, %bb.au ], [ false, %_ZNK4llvm19MachineRegisterInfo9hasOneUseENS_8RegisterE.exit.thread25.i.i ], [ false, %bb.at ], [ false, %switch.lookup ], [ true, %bb.av ], [ false, %bb.as ], [ false, %bb.ap ], [ false, %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt14detectFoldableERN4llvm12MachineInstrERPS2_.exit ], [ false, %bb.w ], [ true, %bb.x ] ; 11 uses
  %i.ke = load ptr, ptr %i.cu, align 8, !tbaa !63
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !64 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.kh = load ptr, ptr %i.h, align 8, !tbaa !44  ; 2 uses
  %i.ki = icmp slt i32 %i.kg, 0                   ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  %i.kk = and i32 %i.kg, 2147483647
  %i.kl = zext nneg i32 %i.kk to i64              ; 2 uses
  %i.km = load ptr, ptr %i.kj, align 8
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.km, i64 %i.kl
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 312
  %i.kq = zext nneg i32 %i.kg to i64              ; 2 uses
  %i.kr = load ptr, ptr %i.kp, align 8
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kq
  %.0.in.i.i.i.i = select i1 %i.ki, ptr %i.ko, ptr %i.ks
  %.0.i.i.i.i35 = load ptr, ptr %.0.in.i.i.i.i, align 8, !tbaa !65 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i35, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt19detectAndFoldOffsetERN4llvm12MachineInstrES3_.exit
  %i.kt = load i32, ptr %.0.i.i.i.i35, align 8
  %i.ku = and i32 %i.kt, 16777216
  %.not4.i.i.i.i = icmp eq i32 %i.ku, 0
  br i1 %.not4.i.i.i.i, label %.lr.ph295.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.aw, %bb.ax
  %.pn.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.ax ], [ %.0.i.i.i.i35, %bb.aw ]
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader.i.i.i.i
  %i.kv = load i32, ptr %storemerge.i.i.i.i.i, align 8
  %i.kw = and i32 %i.kv, 16777216
  %.not1.i.i.i.i.i = icmp eq i32 %i.kw, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph295.i, label %.preheader.i.i.i.i, !llvm.loop !99

.lr.ph295.i:                                      ; preds = %bb.ax, %bb.aw
  %.sroa.0.0.i.i.i = phi ptr [ %.0.i.i.i.i35, %bb.aw ], [ %storemerge.i.i.i.i.i, %bb.ax ] ; 2 uses
  %.phi.trans.insert159 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %.pre160 = load ptr, ptr %.phi.trans.insert159, align 8, !tbaa !238
  br label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i, %.lr.ph295.i
  %i.kx = phi ptr [ %.pre160, %.lr.ph295.i ], [ %i.oz, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i ] ; 9 uses
  %.sroa.9.0294.i = phi i8 [ 0, %.lr.ph295.i ], [ %.sroa.9.9.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i ] ; 4 uses
  %.sroa.0204.0293.i = phi i64 [ undef, %.lr.ph295.i ], [ %.sroa.0204.9.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i ] ; 4 uses
  %.sroa.0199.0292.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph295.i ], [ %storemerge.i.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0199.0292.i, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 52
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !62
  switch i32 %i.la, label %.loopexit266.i [
    i32 14893, label %bb.ay
    i32 14901, label %bb.ay
    i32 14905, label %bb.ay
    i32 14915, label %bb.ay
    i32 14919, label %bb.ay
    i32 14894, label %bb.ay
    i32 14902, label %bb.ay
    i32 14916, label %bb.ay
    i32 14897, label %bb.ay
    i32 14900, label %bb.ay
    i32 14701, label %bb.ay
    i32 14719, label %bb.ay
    i32 14688, label %bb.ay
    i32 15766, label %bb.ay
    i32 15855, label %bb.ay
    i32 15881, label %bb.ay
    i32 15949, label %bb.ay
    i32 15951, label %bb.ay
    i32 15778, label %bb.ay
    i32 15781, label %bb.ay
    i32 14828, label %bb.ay
    i32 14846, label %bb.ay
    i32 14803, label %bb.ay
    i32 691, label %bb.bb
    i32 695, label %bb.bb
    i32 696, label %bb.bb
    i32 692, label %bb.bb
    i32 693, label %bb.bb
    i32 689, label %bb.bb
    i32 690, label %bb.bb
    i32 1, label %bb.bg
    i32 2, label %bb.bg
  ]

bb.ay:                                            ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !63 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.le = load i32, ptr %i.ld, align 8
  %i.lf = and i32 %i.le, 255
  %i.lg = icmp eq i32 %i.lf, 5
  br i1 %i.lg, label %.loopexit266.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !64
  %i.lj = icmp eq i32 %i.kg, %i.li
  br i1 %i.lj, label %.loopexit266.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lc, i64 80
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !64 ; 2 uses
  %i.lm = trunc nuw i8 %.sroa.9.0294.i to i1
  %i.ln = icmp ne i64 %i.ll, %.sroa.0204.0293.i
  %or.cond.i39 = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond.i39, label %.loopexit266.i, label %.critedge.i

bb.bb:                                            ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !63 ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.lr = load i32, ptr %i.lq, align 8
  %i.ls = and i32 %i.lr, 255
  %i.lt = icmp eq i32 %i.ls, 5
  br i1 %i.lt, label %.loopexit266.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 36
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !64
  %i.lw = icmp eq i32 %i.kg, %i.lv
  br i1 %i.lw, label %.loopexit266.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 164
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !64
  %i.lz = icmp eq i32 %i.kg, %i.ly
  br i1 %i.lz, label %.loopexit266.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lp, i64 192
  %i.mb = load i32, ptr %i.ma, align 8
  %i.mc = and i32 %i.mb, 255
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.bf, label %.critedge9.i

bb.bf:                                            ; preds = %bb.be
  %i.me = getelementptr inbounds nuw i8, ptr %i.lp, i64 196
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !64
  %i.mg = icmp eq i32 %i.kg, %i.mf
  br i1 %i.mg, label %.loopexit266.i, label %.critedge9.i

.critedge9.i:                                     ; preds = %bb.bf, %bb.be
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lp, i64 112
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !64 ; 2 uses
  %i.mj = trunc nuw i8 %.sroa.9.0294.i to i1
  %i.mk = icmp ne i64 %i.mi, %.sroa.0204.0293.i
  %or.cond255.i = select i1 %i.mj, i1 %i.mk, i1 false
  br i1 %or.cond255.i, label %.loopexit266.i, label %.critedge.i

bb.bg:                                            ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %i.k, ptr %7, align 8, !tbaa !69
  store i32 0, ptr %i.l, align 8, !tbaa !70
  store i32 12, ptr %i.m, align 4, !tbaa !71
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kx, i64 40 ; 2 uses
  %i.mm = load i24, ptr %i.ml, align 8
  %.not262282.i = icmp ugt i24 %i.mm, 2
  br i1 %.not262282.i, label %.lr.ph288.i, label %.critedge13.thread.i

.critedge13.thread.i:                             ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %i.kx, ptr %8, align 8, !tbaa !380, !alias.scope !381
  store ptr %i.o, ptr %i.n, align 8, !tbaa !69, !alias.scope !381
  store i32 0, ptr %i.p, align 8, !tbaa !70, !alias.scope !381
  store i32 12, ptr %i.q, align 4, !tbaa !71, !alias.scope !381
  br label %_ZSt9make_pairIPKN4llvm12MachineInstrERNS0_11SmallVectorIjLj12EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i

.lr.ph288.i:                                      ; preds = %bb.bg
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.i, %.lr.ph288.i
  %.0125286.i = phi i32 [ 0, %.lr.ph288.i ], [ %.1126.ph.i, %.loopexit.i ]
  %.0128285.i = phi i32 [ 2, %.lr.ph288.i ], [ %i.oh, %.loopexit.i ] ; 3 uses
  %.sroa.9.3284.i = phi i8 [ %.sroa.9.0294.i, %.lr.ph288.i ], [ %.sroa.9.6.ph.i, %.loopexit.i ] ; 9 uses
  %.sroa.0204.3283.i = phi i64 [ %.sroa.0204.0293.i, %.lr.ph288.i ], [ %.sroa.0204.6.ph.i, %.loopexit.i ] ; 10 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !63 ; 2 uses
  %i.mp = zext nneg i32 %.0128285.i to i64
  %i.mq = getelementptr inbounds nuw [32 x i8], ptr %i.mo, i64 %i.mp ; 5 uses
  %i.mr = load i32, ptr %i.mq, align 8
  %i.ms = and i32 %i.mr, 255
  %i.mt = icmp eq i32 %i.ms, 1
  br i1 %i.mt, label %bb.bi, label %.loopexit.i

bb.bi:                                            ; preds = %bb.bh
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !64
  %i.mw = trunc i64 %i.mv to i32                  ; 3 uses
  %i.mx = lshr i32 %i.mw, 3
  %i.my = and i32 %i.mx, 8191                     ; 4 uses
  %.not.i37 = icmp eq i32 %i.my, 2
  %i.mz = and i32 %i.mw, 7
  %i.na = icmp eq i32 %i.mz, 6
  %or.cond257.i = and i1 %i.na, %.not.i37
  br i1 %or.cond257.i, label %bb.bl, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bi
  %.not135280.not.i = icmp eq i32 %i.my, 0
  br i1 %.not135280.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.my to i64
  br label %bb.bj

bb.bj:                                            ; preds = %.critedge139.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge139.i ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %indvars.iv.i ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %gep.i, i64 32
  %i.nb = load i32, ptr %9, align 8
  %i.nc = and i32 %i.nb, 255
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %bb.bk, label %.critedge139.i

bb.bk:                                            ; preds = %bb.bj
  %i.ne = getelementptr inbounds nuw i8, ptr %gep.i, i64 36
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !64
  %i.ng = icmp eq i32 %i.nf, %i.kg
  br i1 %i.ng, label %.critedge13.thread238.i, label %.critedge139.i

.critedge139.i:                                   ; preds = %bb.bk, %bb.bj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.bj, !llvm.loop !102

bb.bl:                                            ; preds = %bb.bi
  %i.nh = and i32 %i.mw, 2147418112
  %i.ni = icmp eq i32 %i.nh, 458752
  br i1 %i.ni, label %.critedge13.thread238.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nj = add nuw nsw i32 %.0128285.i, 1          ; 3 uses
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [32 x i8], ptr %i.mo, i64 %i.nk ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8
  %i.nn = and i32 %i.nm, 255
  %i.no = icmp eq i32 %i.nn, 0
  br i1 %i.no, label %bb.bn, label %.loopexit.i

bb.bn:                                            ; preds = %bb.bm
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !64
  %.not261.i = icmp eq i32 %i.nq, %i.kg
  br i1 %.not261.i, label %bb.bo, label %.loopexit.i

bb.bo:                                            ; preds = %bb.bn
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mq, i64 64
  %i.ns = load i32, ptr %i.nr, align 8
  %i.nt = and i32 %i.ns, 255
  %i.nu = icmp eq i32 %i.nt, 1
  br i1 %i.nu, label %bb.bp, label %.loopexit.i

bb.bp:                                            ; preds = %bb.bo
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mq, i64 80
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !64 ; 3 uses
  %i.nx = trunc nuw i8 %.sroa.9.3284.i to i1
  %i.ny = icmp ne i64 %i.nw, %.sroa.0204.3283.i
  %or.cond258.i = select i1 %i.nx, i1 %i.ny, i1 false
  br i1 %or.cond258.i, label %.critedge13.thread238.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nz = load i32, ptr %i.l, align 8, !tbaa !70  ; 2 uses
  %i.oa = load i32, ptr %i.m, align 4, !tbaa !71
  %.not.i.i38 = icmp ult i32 %i.nz, %i.oa
  br i1 %.not.i.i38, label %bb.bs, label %bb.br, !prof !77

bb.br:                                            ; preds = %bb.bq
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.nj)
  br label %.loopexit.i

bb.bs:                                            ; preds = %bb.bq
  %i.ob = zext i32 %i.nz to i64
  %i.oc = load ptr, ptr %7, align 8, !tbaa !69
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.ob
  store i32 %i.nj, ptr %i.od, align 1
  %i.oe = load i32, ptr %i.l, align 8, !tbaa !70
  %i.of = add i32 %i.oe, 1
  store i32 %i.of, ptr %i.l, align 8, !tbaa !70
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.critedge139.i, %bb.bs, %bb.br, %bb.bo, %bb.bn, %bb.bm, %.preheader.i, %bb.bh
  %.sroa.0204.6.ph.i = phi i64 [ %i.nw, %bb.bs ], [ %i.nw, %bb.br ], [ %.sroa.0204.3283.i, %bb.bh ], [ %.sroa.0204.3283.i, %bb.bo ], [ %.sroa.0204.3283.i, %bb.bm ], [ %.sroa.0204.3283.i, %bb.bn ], [ %.sroa.0204.3283.i, %.preheader.i ], [ %.sroa.0204.3283.i, %.critedge139.i ] ; 3 uses
  %.sroa.9.6.ph.i = phi i8 [ 1, %bb.bs ], [ 1, %bb.br ], [ %.sroa.9.3284.i, %bb.bh ], [ %.sroa.9.3284.i, %bb.bo ], [ %.sroa.9.3284.i, %bb.bm ], [ %.sroa.9.3284.i, %bb.bn ], [ %.sroa.9.3284.i, %.preheader.i ], [ %.sroa.9.3284.i, %.critedge139.i ] ; 3 uses
  %.1126.ph.i = phi i32 [ 2, %bb.bs ], [ 2, %bb.br ], [ %.0125286.i, %bb.bh ], [ 2, %bb.bo ], [ 2, %bb.bm ], [ 2, %bb.bn ], [ 0, %.preheader.i ], [ %i.my, %.critedge139.i ] ; 2 uses
  %i.og = add nuw nsw i32 %.0128285.i, 1
  %i.oh = add nuw nsw i32 %i.og, %.1126.ph.i      ; 2 uses
  %i.oi = load i24, ptr %i.ml, align 8
  %i.oj = zext i24 %i.oi to i32
  %.not262.i = icmp samesign ult i32 %i.oh, %i.oj
  br i1 %.not262.i, label %bb.bh, label %.critedge13.i, !llvm.loop !103

.critedge13.i:                                    ; preds = %.loopexit.i
  %.pre.i = load i32, ptr %i.l, align 8, !tbaa !70, !noalias !382 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  store ptr %i.kx, ptr %8, align 8, !tbaa !380, !alias.scope !382
  store ptr %i.o, ptr %i.n, align 8, !tbaa !69, !alias.scope !382
  store i32 0, ptr %i.p, align 8, !tbaa !70, !alias.scope !382
  store i32 12, ptr %i.q, align 4, !tbaa !71, !alias.scope !382
  %.not.i.i.i.i143.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i.i143.i, label %_ZSt9make_pairIPKN4llvm12MachineInstrERNS0_11SmallVectorIjLj12EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %.critedge13.i
  %i.ok = icmp ugt i32 %.pre.i, 12
  br i1 %i.ok, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.bt
  %i.ol = zext i32 %.pre.i to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull %i.o, i64 noundef %i.ol, i64 noundef 4) #16
  %.pre.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !70, !noalias !382 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !69, !alias.scope !382
  br label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.bt
  %i.om = phi ptr [ %.pre.i.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.o, %bb.bt ]
  %i.on = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %.pre.i, %bb.bt ]
  %i.oo = zext i32 %i.on to i64
  %i.op = load ptr, ptr %7, align 8, !tbaa !69, !noalias !382
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.oo, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.om, ptr align 4 %i.op, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %.pre.i, ptr %i.p, align 8, !tbaa !70, !alias.scope !382
  br label %_ZSt9make_pairIPKN4llvm12MachineInstrERNS0_11SmallVectorIjLj12EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i

_ZSt9make_pairIPKN4llvm12MachineInstrERNS0_11SmallVectorIjLj12EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i: ; preds = %.sink.split.i.i.i.i.i, %.critedge13.i, %.critedge13.thread.i
  %.sroa.9.3.lcssa337.i = phi i8 [ %.sroa.9.0294.i, %.critedge13.thread.i ], [ %.sroa.9.6.ph.i, %.critedge13.i ], [ %.sroa.9.6.ph.i, %.sink.split.i.i.i.i.i ]
  %.sroa.0204.3.lcssa336.i = phi i64 [ %.sroa.0204.0293.i, %.critedge13.thread.i ], [ %.sroa.0204.6.ph.i, %.critedge13.i ], [ %.sroa.0204.6.ph.i, %.sink.split.i.i.i.i.i ]
  %i.oq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_11SmallVectorIjLj12EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIS4_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(64) %i.n), !noalias !383 ; 0 uses
  %i.or = load ptr, ptr %i.n, align 8, !tbaa !69  ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.o
  br i1 %i.os, label %_ZNSt4pairIPKN4llvm12MachineInstrENS0_11SmallVectorIjLj12EEEED2Ev.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZSt9make_pairIPKN4llvm12MachineInstrERNS0_11SmallVectorIjLj12EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i
  call void @free(ptr noundef %i.or) #16
  br label %_ZNSt4pairIPKN4llvm12MachineInstrENS0_11SmallVectorIjLj12EEEED2Ev.exit.i

_ZNSt4pairIPKN4llvm12MachineInstrENS0_11SmallVectorIjLj12EEEED2Ev.exit.i: ; preds = %bb.bu, %_ZSt9make_pairIPKN4llvm12MachineInstrERNS0_11SmallVectorIjLj12EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %.critedge13.thread238.i

.critedge13.thread238.i:                          ; preds = %bb.bp, %bb.bl, %bb.bk, %_ZNSt4pairIPKN4llvm12MachineInstrENS0_11SmallVectorIjLj12EEEED2Ev.exit.i
  %.sroa.0204.3276.i = phi i64 [ %.sroa.0204.3.lcssa336.i, %_ZNSt4pairIPKN4llvm12MachineInstrENS0_11SmallVectorIjLj12EEEED2Ev.exit.i ], [ %.sroa.0204.3283.i, %bb.bk ], [ %.sroa.0204.3283.i, %bb.bl ], [ %.sroa.0204.3283.i, %bb.bp ]
  %.not262271.i = phi i1 [ false, %_ZNSt4pairIPKN4llvm12MachineInstrENS0_11SmallVectorIjLj12EEEED2Ev.exit.i ], [ true, %bb.bk ], [ true, %bb.bl ], [ true, %bb.bp ]
  %.sroa.9.7244.i = phi i8 [ %.sroa.9.3.lcssa337.i, %_ZNSt4pairIPKN4llvm12MachineInstrENS0_11SmallVectorIjLj12EEEED2Ev.exit.i ], [ %.sroa.9.3284.i, %bb.bk ], [ %.sroa.9.3284.i, %bb.bl ], [ 1, %bb.bp ]
  %i.ot = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.k
  br i1 %i.ou, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit.i, label %bb.bv

bb.bv:                                            ; preds = %.critedge13.thread238.i
  call void @free(ptr noundef %i.ot) #16
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit.i

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit.i:         ; preds = %bb.bv, %.critedge13.thread238.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %.not262271.i, label %.loopexit266.i, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit..critedge_crit_edge.i

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit..critedge_crit_edge.i: ; preds = %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit.i
  %.pre317.i = load ptr, ptr %i.ky, align 8, !tbaa !238
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit..critedge_crit_edge.i, %.critedge9.i, %bb.ba
  %i.ov = phi ptr [ %i.kx, %bb.ba ], [ %.pre317.i, %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit..critedge_crit_edge.i ], [ %i.kx, %.critedge9.i ]
  %.sroa.0204.9.i = phi i64 [ %i.ll, %bb.ba ], [ %.sroa.0204.3276.i, %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit..critedge_crit_edge.i ], [ %i.mi, %.critedge9.i ] ; 2 uses
  %.sroa.9.9.i = phi i8 [ 1, %bb.ba ], [ %.sroa.9.7244.i, %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit..critedge_crit_edge.i ], [ 1, %.critedge9.i ]
  br label %bb.bw

bb.bw:                                            ; preds = %.backedge232, %.critedge.i
  %.pn.i.i.i = phi ptr [ %.sroa.0199.0292.i, %.critedge.i ], [ %storemerge.i.i.i, %.backedge232 ]
  %storemerge.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24
  %storemerge.i.i.i = load ptr, ptr %storemerge.in.i.i.i, align 8, !tbaa !64 ; 5 uses
  %.not.i.i.i36 = icmp eq ptr %storemerge.i.i.i, null
  br i1 %.not.i.i.i36, label %._crit_edge.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ow = load i32, ptr %storemerge.i.i.i, align 8
  %i.ox = and i32 %i.ow, 16777216
  %.not1.i.i.i = icmp eq i32 %i.ox, 0
  br i1 %.not1.i.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i, label %.backedge232

.backedge232:                                     ; preds = %bb.bx, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i
  br label %bb.bw, !llvm.loop !110

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.i: ; preds = %bb.bx
  %i.oy = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !238 ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.ov
  br i1 %i.pa, label %.backedge232, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit.i, !llvm.loop !110

._crit_edge.i:                                    ; preds = %.preheader.i.i.i.i, %bb.bw, %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt19detectAndFoldOffsetERN4llvm12MachineInstrES3_.exit
  %.sroa.0204.0.lcssa.i = phi i64 [ %.sroa.0204.9.i, %bb.bw ], [ undef, %_ZN12_GLOBAL__N_123RISCVMergeBaseOffsetOpt19detectAndFoldOffsetERN4llvm12MachineInstrES3_.exit ], [ undef, %.preheader.i.i.i.i ]
  %i.pb = load ptr, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 56 ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !64
  %i.pe = sext i32 %i.pd to i64
  %i.pf = shl nsw i64 %i.pe, 32
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 36 ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !64
  %i.pi = zext i32 %i.ph to i64
  %i.pj = add i64 %.sroa.0204.0.lcssa.i, %i.pi    ; 2 uses
  %i.pk = add i64 %i.pj, %i.pf
  %i.pl = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 656
  %i.pn = load i8, ptr %i.pm, align 8, !tbaa !377, !range !378, !noundef !42
  %i.po = trunc nuw i8 %i.pn to i1
  %i.pp = shl i64 %i.pj, 32
  %i.pq = ashr exact i64 %i.pp, 32
  %.0129.i = select i1 %i.po, i64 %i.pk, i64 %i.pq ; 3 uses
  %i.pr = add i64 %.0129.i, 2147483648
  %i.ps = icmp ult i64 %i.pr, 4294967296
  br i1 %i.ps, label %bb.by, label %.loopexit266.i

bb.by:                                            ; preds = %._crit_edge.i
  %i.pt = trunc nsw i64 %.0129.i to i32           ; 2 uses
  store i32 %i.pt, ptr %i.pg, align 4, !tbaa !64
  %i.pu = lshr i64 %.0129.i, 32
  %i.pv = trunc nuw i64 %i.pu to i32              ; 2 uses
  store i32 %i.pv, ptr %i.pc, align 8, !tbaa !64
  %i.pw = load i32, ptr %i.ag, align 4, !tbaa !62 ; 2 uses
  %i.px = icmp eq i32 %i.pw, 15656
  %i.py = load ptr, ptr %i.cu, align 8, !tbaa !63 ; 2 uses
  br i1 %i.px, label %.thread254.i, label %bb.bz

.thread254.i:                                     ; preds = %bb.by
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 32
  br label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 64 ; 3 uses
  switch i32 %i.pw, label %bb.cb [
    i32 809, label %bb.ca
    i32 14128, label %bb.cc
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.qb = load ptr, ptr %i.e, align 8, !tbaa !34  ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !25
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 128
  %i.qe = load ptr, ptr %i.qd, align 8
  %i.qf = call noundef ptr %i.qe(ptr noundef nonnull align 8 dereferenceable(519768) %i.qb) #16, !inline_history !111
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !384
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 -477248
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.075.0129, ptr noundef nonnull align 8 dereferenceable(32) %i.qi) #16
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.075.0129, i32 noundef 2) #16
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %.thread254.i
  %i.qj = phi ptr [ %i.pz, %.thread254.i ], [ %i.qa, %bb.ca ], [ %i.qa, %bb.bz ] ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  store i32 %i.pt, ptr %i.qk, align 4, !tbaa !64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  store i32 %i.pv, ptr %i.ql, align 8, !tbaa !64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  %i.qm = phi ptr [ %i.qa, %bb.bz ], [ %i.qj, %bb.cb ] ; 5 uses
  %i.qn = load ptr, ptr %i.h, align 8, !tbaa !44  ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 48
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.qp, i64 %i.kl
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 312
  %i.qt = load ptr, ptr %i.qs, align 8
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qt, i64 %i.kq
  %.0.in.i.i.i144.i = select i1 %i.ki, ptr %i.qr, ptr %i.qu
  %.0.i.i.i145.i = load ptr, ptr %.0.in.i.i.i144.i, align 8, !tbaa !65 ; 4 uses
  %.not.i.i.i146.i = icmp eq ptr %.0.i.i.i145.i, null
  br i1 %.not.i.i.i146.i, label %._crit_edge304.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qv = load i32, ptr %.0.i.i.i145.i, align 8
  %i.qw = and i32 %i.qv, 16777216
  %.not4.i.i.i147.i = icmp eq i32 %i.qw, 0
  br i1 %.not4.i.i.i147.i, label %.lr.ph303.i, label %.preheader.i.i.i148.i

.preheader.i.i.i148.i:                            ; preds = %bb.cd, %bb.ce
  %.pn.i.i.i.i149.i = phi ptr [ %storemerge.i.i.i.i151.i, %bb.ce ], [ %.0.i.i.i145.i, %bb.cd ]
  %storemerge.in.i.i.i.i150.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i149.i, i64 24
  %storemerge.i.i.i.i151.i = load ptr, ptr %storemerge.in.i.i.i.i150.i, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i.i152.i = icmp eq ptr %storemerge.i.i.i.i151.i, null
  br i1 %.not.i.i.i.i152.i, label %._crit_edge304.i, label %bb.ce

bb.ce:                                            ; preds = %.preheader.i.i.i148.i
end_hunk_0
