Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64AdvSIMDScalarPass?download=true
inline.NumInlined: 502
inline.NumDeleted: 315
begin_hunk_0_@_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl3runERN4llvm15MachineFunctionE:bb.a
bb.j:                                             ; preds = %.critedge2.i.i.i.i.i
  %i.ef = load i32, ptr %storemerge.i.i.i.i.i, align 8
  %i.eg = and i32 %i.ef, -2130706432
  %or.cond.not.i.i.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %or.cond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i, label %.critedge2.i.i.i.i.i, !llvm.loop !248

.lr.ph.preheader.i.i:                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i73.i.i = phi ptr [ %.0.i.i70.i.i, %bb.i ], [ %storemerge.i.i.i.i.i, %bb.j ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i73.i.i, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !163
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.critedge2.i.i.i.i
  %i.eh = zext nneg i8 %.132.i.i to i32
  br label %_ZNK12_GLOBAL__N_124AArch64AdvSIMDScalarImpl23isProfitableToTransformERKN4llvm12MachineInstrE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i, %.lr.ph.preheader.i.i
  %i.ei = phi ptr [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.eq, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 3 uses
  %.031101.i.i = phi i8 [ 1, %.lr.ph.preheader.i.i ], [ %.132.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 3 uses
  %.439100.i.i = phi i32 [ %.338.i.i, %.lr.ph.preheader.i.i ], [ %.5.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ] ; 3 uses
  %.sroa.078.099.i.i = phi ptr [ %.sroa.0.0.i73.i.i, %.lr.ph.preheader.i.i ], [ %storemerge.i.i.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.ej = call fastcc noundef ptr @_ZL14getSrcFromCopyPN4llvm12MachineInstrEPKNS_19MachineRegisterInfoERj(ptr noundef %i.ei, ptr noundef %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %.not42.i.i = icmp eq ptr %i.ej, null
  br i1 %.not42.i.i, label %bb.k, label %_ZL15isTransformableRKN4llvm12MachineInstrE.exit75.thread.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ek = getelementptr i8, ptr %i.ei, i64 52
  %.val.i.i = load i32, ptr %i.ek, align 4, !tbaa !158 ; 2 uses
  switch i32 %.val.i.i, label %bb.l [
    i32 342, label %_ZL15isTransformableRKN4llvm12MachineInstrE.exit75.thread.i.i
    i32 1408, label %_ZL15isTransformableRKN4llvm12MachineInstrE.exit75.thread.i.i
    i32 371, label %_ZL15isTransformableRKN4llvm12MachineInstrE.exit75.thread.i.i
    i32 546, label %_ZL15isTransformableRKN4llvm12MachineInstrE.exit75.thread.i.i
    i32 1159, label %_ZL15isTransformableRKN4llvm12MachineInstrE.exit75.thread.i.i
    i32 9, label %bb.m
  ]

_ZL15isTransformableRKN4llvm12MachineInstrE.exit75.thread.i.i: ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %.lr.ph.i.i
  %i.el = add i32 %.439100.i.i, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.em = icmp eq i32 %.val.i.i, 4437
  %spec.select47.i.i = select i1 %i.em, i8 %.031101.i.i, i8 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZL15isTransformableRKN4llvm12MachineInstrE.exit75.thread.i.i, %bb.k
  %.5.i.i = phi i32 [ %i.el, %_ZL15isTransformableRKN4llvm12MachineInstrE.exit75.thread.i.i ], [ %.439100.i.i, %bb.k ], [ %.439100.i.i, %bb.l ] ; 2 uses
  %.132.i.i = phi i8 [ %.031101.i.i, %_ZL15isTransformableRKN4llvm12MachineInstrE.exit75.thread.i.i ], [ %.031101.i.i, %bb.k ], [ %spec.select47.i.i, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %.critedge2.i.i.i.i

.critedge2.i.i.i.i:                               ; preds = %.critedge2.i.i.i.i.backedge, %bb.m
  %.pn.i.i.i.i = phi ptr [ %.sroa.078.099.i.i, %bb.m ], [ %storemerge.i.i.i.i, %.critedge2.i.i.i.i.backedge ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !160 ; 5 uses
  %.not.i.i76.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i76.i.i, label %._crit_edge.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.critedge2.i.i.i.i
  %i.en = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.eo = and i32 %i.en, -2130706432
  %or.cond.not.i.i77.i.i = icmp eq i32 %i.eo, 0
  br i1 %or.cond.not.i.i77.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i, label %.critedge2.i.i.i.i.backedge

.critedge2.i.i.i.i.backedge:                      ; preds = %bb.n, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i
  br label %.critedge2.i.i.i.i, !llvm.loop !249

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i.i.i: ; preds = %bb.n
  %i.ep = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !163 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ei
  br i1 %i.er, label %.critedge2.i.i.i.i.backedge, label %.lr.ph.i.i, !llvm.loop !250

_ZNK12_GLOBAL__N_124AArch64AdvSIMDScalarImpl23isProfitableToTransformERKN4llvm12MachineInstrE.exit.i: ; preds = %.critedge2.i.i.i.i.i, %._crit_edge.loopexit.i.i, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit59.thread.i.i
  %.439.lcssa.i.i = phi i32 [ %.5.i.i, %._crit_edge.loopexit.i.i ], [ %.338.i.i, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit59.thread.i.i ], [ %.338.i.i, %.critedge2.i.i.i.i.i ]
  %.031.lcssa.i.i = phi i32 [ %i.eh, %._crit_edge.loopexit.i.i ], [ 1, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit59.thread.i.i ], [ 1, %.critedge2.i.i.i.i.i ]
  %spec.select46.i.i = sub nuw nsw i32 %.3.i.i, %.031.lcssa.i.i
  %.not41.i.i = icmp ule i32 %spec.select46.i.i, %.439.lcssa.i.i
  %i.es = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL12TransformAll, i64 120), align 8, !range !15
  %i.et = trunc nuw i8 %i.es to i1
  %.0.i.i = select i1 %.not41.i.i, i1 true, i1 %i.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br i1 %.0.i.i, label %bb.o, label %_ZNK12_GLOBAL__N_124AArch64AdvSIMDScalarImpl23isProfitableToTransformERKN4llvm12MachineInstrE.exit.thread.i

bb.o:                                             ; preds = %_ZNK12_GLOBAL__N_124AArch64AdvSIMDScalarImpl23isProfitableToTransformERKN4llvm12MachineInstrE.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i, i64 24 ; 4 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !283 ; 3 uses
  %i.ew = load i32, ptr %i.br, align 4, !tbaa !158 ; 2 uses
  switch i32 %i.ew, label %bb.t [
    i32 342, label %_ZL18getTransformOpcodej.exit.i.i
    i32 1408, label %bb.p
    i32 371, label %bb.q
    i32 546, label %bb.r
    i32 1159, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  br label %_ZL18getTransformOpcodej.exit.i.i

bb.q:                                             ; preds = %bb.o
  br label %_ZL18getTransformOpcodej.exit.i.i

bb.r:                                             ; preds = %bb.o
  br label %_ZL18getTransformOpcodej.exit.i.i

bb.s:                                             ; preds = %bb.o
  br label %_ZL18getTransformOpcodej.exit.i.i

bb.t:                                             ; preds = %bb.o
  %i.ex = zext i32 %i.ew to i64
  br label %_ZL18getTransformOpcodej.exit.i.i

_ZL18getTransformOpcodej.exit.i.i:                ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.i.i = phi i64 [ %i.ex, %bb.t ], [ 5658, %bb.s ], [ 7804, %bb.p ], [ 1900, %bb.q ], [ 2764, %bb.r ], [ 1834, %bb.o ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !160 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dt, i64 68
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !160 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.fc = icmp slt i32 %i.ez, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.fe = and i32 %i.ez, 2147483647
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = load ptr, ptr %i.fd, align 8            ; 4 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.ff
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ds, i64 312
  %i.fk = zext nneg i32 %i.ez to i64
  %i.fl = load ptr, ptr %i.fj, align 8            ; 4 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fk
  %.0.in.i.i.i.i8.i = select i1 %i.fc, ptr %i.fi, ptr %i.fm
  %.0.i.i.i.i9.i = load ptr, ptr %.0.in.i.i.i.i8.i, align 8, !tbaa !282 ; 4 uses
  %.not.i.i.i.i10.i = icmp eq ptr %.0.i.i.i.i9.i, null
  br i1 %.not.i.i.i.i10.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i18.i, label %bb.u

bb.u:                                             ; preds = %_ZL18getTransformOpcodej.exit.i.i
  %i.fn = load i32, ptr %.0.i.i.i.i9.i, align 8
  %i.fo = and i32 %i.fn, 16777216
  %.not.i.i.i.i.i11.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i.i.i.i11.i, label %bb.v, label %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit.i12.i

bb.v:                                             ; preds = %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i9.i, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !160 ; 3 uses
  %.not.i4.i.i.i.i23.i = icmp eq ptr %i.fq, null
  br i1 %.not.i4.i.i.i.i23.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i18.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i24.i

_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i24.i: ; preds = %bb.v
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = and i32 %i.fr, 16777216
  %.not.i.i.i.i.i.i25.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i.i.i.i.i25.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i18.i, label %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit.i12.i

_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit.i12.i: ; preds = %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i24.i, %bb.u
  %.sroa.0.0.i.i13.i = phi ptr [ %.0.i.i.i.i9.i, %bb.u ], [ %i.fq, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i24.i ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i13.i, i64 8 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !163
  %i.fv = call fastcc noundef ptr @_ZL14getSrcFromCopyPN4llvm12MachineInstrEPKNS_19MachineRegisterInfoERj(ptr noundef %i.fu, ptr noundef nonnull %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 4 uses
  %.not.i14.i = icmp eq ptr %i.fv, null
  br i1 %.not.i14.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit.i12.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !160 ; 2 uses
  %i.fy = load i32, ptr %i.fv, align 8            ; 3 uses
  %i.fz = lshr i32 %i.fy, 26
  %i.ga = lshr i32 %i.fy, 24
  %.lobit.i.i.i = and i32 %i.ga, 1
  %i.gb = xor i32 %.lobit.i.i.i, 1
  %i.gc = and i32 %i.gb, %i.fz
  %i.gd = icmp ne i32 %i.gc, 0                    ; 2 uses
  %i.ge = and i32 %i.fy, -67108865
  store i32 %i.ge, ptr %i.fv, align 8
  %i.gf = load ptr, ptr %0, align 8, !tbaa !276
  %i.gg = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.gf, i32 %i.ez) #15
  br i1 %i.gg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gh = load ptr, ptr %i.ft, align 8, !tbaa !163
  %i.gi = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.gh) #15 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit.i12.i
  %.045.shrunk.i.i = phi i1 [ %i.gd, %bb.x ], [ %i.gd, %bb.w ], [ false, %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit.i12.i ]
  %.0.i15.i = phi i32 [ %i.fx, %bb.x ], [ %i.fx, %bb.w ], [ 0, %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit.i12.i ]
  %.045.i.i = zext i1 %.045.shrunk.i.i to i8
  %.pre.i16.i = load ptr, ptr %0, align 8, !tbaa !276 ; 3 uses
  %.phi.trans.insert.i17.i = getelementptr inbounds nuw i8, ptr %.pre.i16.i, i64 48
  %.pre118.i.i = load ptr, ptr %.phi.trans.insert.i17.i, align 8
  %.phi.trans.insert119.i.i = getelementptr inbounds nuw i8, ptr %.pre.i16.i, i64 312
  %.pre120.i.i = load ptr, ptr %.phi.trans.insert119.i.i, align 8
  br label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i18.i

_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i18.i: ; preds = %bb.y, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i24.i, %bb.v, %_ZL18getTransformOpcodej.exit.i.i
  %i.gj = phi ptr [ %i.fl, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i24.i ], [ %.pre120.i.i, %bb.y ], [ %i.fl, %_ZL18getTransformOpcodej.exit.i.i ], [ %i.fl, %bb.v ]
  %i.gk = phi ptr [ %i.fg, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i24.i ], [ %.pre118.i.i, %bb.y ], [ %i.fg, %_ZL18getTransformOpcodej.exit.i.i ], [ %i.fg, %bb.v ]
  %i.gl = phi ptr [ %i.ds, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i24.i ], [ %.pre.i16.i, %bb.y ], [ %i.ds, %_ZL18getTransformOpcodej.exit.i.i ], [ %i.ds, %bb.v ] ; 5 uses
  %.146.i.i = phi i8 [ 0, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i24.i ], [ %.045.i.i, %bb.y ], [ 0, %_ZL18getTransformOpcodej.exit.i.i ], [ 0, %bb.v ] ; 2 uses
  %.1.i19.i = phi i32 [ 0, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.i24.i ], [ %.0.i15.i, %bb.y ], [ 0, %_ZL18getTransformOpcodej.exit.i.i ], [ 0, %bb.v ] ; 2 uses
  %i.gm = icmp slt i32 %i.fb, 0
  %i.gn = and i32 %i.fb, 2147483647
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = zext nneg i32 %i.fb to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gr
  %.0.in.i.i.i60.i.i = select i1 %i.gm, ptr %i.gq, ptr %i.gs
  %.0.i.i.i61.i.i = load ptr, ptr %.0.in.i.i.i60.i.i, align 8, !tbaa !282 ; 4 uses
  %.not.i.i.i62.i.i = icmp eq ptr %.0.i.i.i61.i.i, null
  br i1 %.not.i.i.i62.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i18.i
  %i.gt = load i32, ptr %.0.i.i.i61.i.i, align 8
  %i.gu = and i32 %i.gt, 16777216
  %.not.i.i.i.i63.i.i = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i.i.i63.i.i, label %bb.aa, label %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit76.i.i

bb.aa:                                            ; preds = %bb.z
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i.i.i61.i.i, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !160 ; 3 uses
  %.not.i4.i.i.i65.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i4.i.i.i65.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.i.i

_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.i.i: ; preds = %bb.aa
  %i.gx = load i32, ptr %i.gw, align 8
  %i.gy = and i32 %i.gx, 16777216
  %.not.i.i.i.i.i66.i.i = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i.i.i.i66.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i, label %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit76.i.i

_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit76.i.i: ; preds = %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.i.i, %bb.z
  %.sroa.0.0.i72.i.i = phi ptr [ %.0.i.i.i61.i.i, %bb.z ], [ %i.gw, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.i.i ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i72.i.i, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !163
  %i.hb = call fastcc noundef ptr @_ZL14getSrcFromCopyPN4llvm12MachineInstrEPKNS_19MachineRegisterInfoERj(ptr noundef %i.ha, ptr noundef nonnull %i.gl, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 4 uses
  %.not53.i.i = icmp eq ptr %i.hb, null
  br i1 %.not53.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit76.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !160 ; 3 uses
  %i.he = load i32, ptr %i.hb, align 8            ; 3 uses
  %i.hf = lshr i32 %i.he, 26
  %i.hg = lshr i32 %i.he, 24
  %.lobit.i77.i.i = and i32 %i.hg, 1
  %i.hh = xor i32 %.lobit.i77.i.i, 1
  %i.hi = and i32 %i.hh, %i.hf
  %.fr.i.i = freeze i32 %i.hi
  %.not141.i.i = icmp eq i32 %.fr.i.i, 0          ; 2 uses
  %i.hj = and i32 %i.he, -67108865
  store i32 %i.hj, ptr %i.hb, align 8
  %i.hk = load ptr, ptr %0, align 8, !tbaa !276
  %i.hl = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.hk, i32 %i.fb) #15
  br i1 %i.hl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hm = load ptr, ptr %i.gz, align 8, !tbaa !163
  %i.hn = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hm) #15 ; 0 uses
  %.pre122.pre124.pre137.i.i = load ptr, ptr %0, align 8, !tbaa !276 ; 2 uses
  br i1 %.not141.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i, label %15

bb.ad:                                            ; preds = %bb.ab
  %.pre122.pre124.pre.i.i = load ptr, ptr %0, align 8, !tbaa !276 ; 2 uses
  br i1 %.not141.i.i, label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i, label %15

15:                                               ; preds = %bb.ad, %bb.ac
  %.pre122.pre124.pre140.i.i = phi ptr [ %.pre122.pre124.pre137.i.i, %bb.ac ], [ %.pre122.pre124.pre.i.i, %bb.ad ]
  br label %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i

_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i: ; preds = %15, %bb.ad, %bb.ac, %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit76.i.i, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.i.i, %bb.aa, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i18.i
  %.pre122.pre124.i.i = phi ptr [ %i.gl, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.i.i ], [ %i.gl, %bb.aa ], [ %i.gl, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i18.i ], [ %.pre122.pre124.pre140.i.i, %15 ], [ %.pre122.pre124.pre.i.i, %bb.ad ], [ %.pre122.pre124.pre137.i.i, %bb.ac ], [ %i.gl, %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit76.i.i ] ; 2 uses
  %.149.i.i = phi i32 [ 0, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.i.i ], [ 0, %bb.aa ], [ 0, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i18.i ], [ 67108864, %15 ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit76.i.i ] ; 2 uses
  %.143.i.i = phi i32 [ 0, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.i.i ], [ 0, %bb.aa ], [ 0, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit.thread.i18.i ], [ %i.hd, %15 ], [ %i.hd, %bb.ad ], [ %i.hd, %bb.ac ], [ 0, %_ZNK4llvm19MachineRegisterInfo15def_instr_beginENS_8RegisterE.exit76.i.i ] ; 2 uses
  %.not54.i.i = icmp eq i32 %.1.i19.i, 0
  br i1 %.not54.i.i, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i
  store i32 0, ptr %i.a, align 4, !tbaa !164
  %i.ho = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %.pre122.pre124.i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3520), ptr nonnull @.str.4, i64 0) #15 ; 3 uses
  %i.hp = load ptr, ptr %i.n, align 8, !tbaa !278
  %i.hq = getelementptr i8, ptr %i.hp, i64 8
  %.val57.i.i = load ptr, ptr %i.hq, align 8, !tbaa !286
  %i.hr = load ptr, ptr %i.eu, align 8, !tbaa !283 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i, i64 72
  %.sroa.0.0.copyload.i.i22.i = load ptr, ptr %i.hs, align 8, !tbaa !166 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i22.i, ptr %14, align 8, !tbaa !166
  %i.ht = getelementptr inbounds i8, ptr %.val57.i.i, i64 -640 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i, i64 44
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !280
  %i.hw = and i32 %i.hv, 4
  %.not.i29 = icmp eq i32 %i.hw, 0
  br i1 %.not.i29, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !210 ; 6 uses
  %i.hz = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %i.ht, ptr %.sroa.0.0.copyload.i.i22.i, i1 noundef zeroext false) #15 ; 6 uses
  %i.ia = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.hr, ptr nonnull align 8 dereferenceable(80) %.sroa.026.032.i, ptr noundef %i.hz) #15 ; 0 uses
  %i.ib = load ptr, ptr %i.q, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i31, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.hz, ptr noundef nonnull align 8 dereferenceable(1065) %i.hy, ptr noundef nonnull %i.ib) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ic = load ptr, ptr %i.ah, align 8, !tbaa !215 ; 2 uses
  %.not7.i.i.i32 = icmp eq ptr %i.ic, null
  br i1 %.not7.i.i.i32, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.hz, ptr noundef nonnull align 8 dereferenceable(1065) %i.hy, ptr noundef nonnull %i.ic) #15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.id = load ptr, ptr %i.ai, align 8, !tbaa !216 ; 2 uses
  %.not8.i.i.i33 = icmp eq ptr %i.id, null
  br i1 %.not8.i.i.i33, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i34, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.hz, ptr noundef nonnull align 8 dereferenceable(1065) %i.hy, ptr noundef nonnull %i.id) #15
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i34

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i34: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr null, ptr %i.aj, align 8, !tbaa !163, !alias.scope !287
  store i32 %i.ho, ptr %i.ak, align 4, !tbaa !160, !alias.scope !287
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !287
  store i32 16777216, ptr %4, align 8, !alias.scope !287
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.hz, ptr noundef nonnull align 8 dereferenceable(1065) %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.fca.0.insert.i.i35 = insertvalue { ptr, ptr } poison, ptr %i.hy, 0
  %.fca.1.insert.i.i36 = insertvalue { ptr, ptr } %.fca.0.insert.i.i35, ptr %i.hz, 1
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit38

bb.al:                                            ; preds = %bb.ae
  %i.ie = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.hr, ptr nonnull align 8 dereferenceable(80) %.sroa.026.032.i, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.ht, i32 %i.ho)
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit38

_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit38: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i34, %bb.al
  %.pn.i37 = phi { ptr, ptr } [ %.fca.1.insert.i.i36, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i34 ], [ %i.ie, %bb.al ] ; 2 uses
  %i.if = extractvalue { ptr, ptr } %.pn.i37, 0
  %i.ig = extractvalue { ptr, ptr } %.pn.i37, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store ptr null, ptr %i.r, align 8, !tbaa !163, !alias.scope !288
  %i.ih = zext nneg i8 %.146.i.i to i32
  %i.ii = shl nuw nsw i32 %i.ih, 26
  store i32 %i.ez, ptr %i.s, align 4, !tbaa !160, !alias.scope !288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !alias.scope !288
  store i32 %i.ii, ptr %13, align 8, !alias.scope !288
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ig, ptr noundef nonnull align 8 dereferenceable(1065) %i.if, ptr noundef nonnull align 8 dereferenceable(32) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %.pre122.pre.i.i = load ptr, ptr %0, align 8, !tbaa !276
  br label %bb.am

bb.am:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit38, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i
  %.pre122.i.i = phi ptr [ %.pre122.pre124.i.i, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i ], [ %.pre122.pre.i.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit38 ] ; 2 uses
  %.247.i.i = phi i8 [ %.146.i.i, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i ], [ 1, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit38 ]
  %.2.i.i = phi i32 [ %.1.i19.i, %_ZNK4llvm19MachineRegisterInfo9def_emptyENS_8RegisterE.exit67.thread.i.i ], [ %i.ho, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit38 ]
  %.not55.i.i = icmp eq i32 %.143.i.i, 0
  br i1 %.not55.i.i, label %bb.an, label %._crit_edge.i20.i

._crit_edge.i20.i:                                ; preds = %bb.am
  %.pre123.i.i = load i32, ptr %i.b, align 4, !tbaa !164
  %i.ij = shl i32 %.pre123.i.i, 8
  %i.ik = and i32 %i.ij, 1048320
  %i.il = or disjoint i32 %i.ik, %.149.i.i
  br label %_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl20transformInstructionERN4llvm12MachineInstrE.exit.i

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.b, align 4, !tbaa !164
  %i.im = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %.pre122.i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3520), ptr nonnull @.str.4, i64 0) #15 ; 3 uses
  %i.in = load ptr, ptr %i.n, align 8, !tbaa !278
  %i.io = getelementptr i8, ptr %i.in, i64 8
  %.val56.i.i = load ptr, ptr %i.io, align 8, !tbaa !286
  %i.ip = load ptr, ptr %i.eu, align 8, !tbaa !283 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i, i64 72
  %.sroa.0.0.copyload.i80.i.i = load ptr, ptr %i.iq, align 8, !tbaa !166 ; 2 uses
  store ptr %.sroa.0.0.copyload.i80.i.i, ptr %12, align 8, !tbaa !166
  %i.ir = getelementptr inbounds i8, ptr %.val56.i.i, i64 -640 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i, i64 44
  %i.it = load i32, ptr %i.is, align 4, !tbaa !280
  %i.iu = and i32 %i.it, 4
  %.not.i19 = icmp eq i32 %i.iu, 0
  br i1 %.not.i19, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !210 ; 6 uses
  %i.ix = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %i.ir, ptr %.sroa.0.0.copyload.i80.i.i, i1 noundef zeroext false) #15 ; 6 uses
  %i.iy = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.ip, ptr nonnull align 8 dereferenceable(80) %.sroa.026.032.i, ptr noundef %i.ix) #15 ; 0 uses
  %i.iz = load ptr, ptr %i.u, align 8, !tbaa !214 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i21, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.ix, ptr noundef nonnull align 8 dereferenceable(1065) %i.iw, ptr noundef nonnull %i.iz) #15
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ja = load ptr, ptr %i.am, align 8, !tbaa !215 ; 2 uses
  %.not7.i.i.i22 = icmp eq ptr %i.ja, null
  br i1 %.not7.i.i.i22, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.ix, ptr noundef nonnull align 8 dereferenceable(1065) %i.iw, ptr noundef nonnull %i.ja) #15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.jb = load ptr, ptr %i.an, align 8, !tbaa !216 ; 2 uses
  %.not8.i.i.i23 = icmp eq ptr %i.jb, null
  br i1 %.not8.i.i.i23, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i24, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.ix, ptr noundef nonnull align 8 dereferenceable(1065) %i.iw, ptr noundef nonnull %i.jb) #15
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i24

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i24: ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr null, ptr %i.ao, align 8, !tbaa !163, !alias.scope !289
  store i32 %i.im, ptr %i.ap, align 4, !tbaa !160, !alias.scope !289
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !alias.scope !289
  store i32 16777216, ptr %5, align 8, !alias.scope !289
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ix, ptr noundef nonnull align 8 dereferenceable(1065) %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.fca.0.insert.i.i25 = insertvalue { ptr, ptr } poison, ptr %i.iw, 0
  %.fca.1.insert.i.i26 = insertvalue { ptr, ptr } %.fca.0.insert.i.i25, ptr %i.ix, 1
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit28

bb.au:                                            ; preds = %bb.an
  %i.jc = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ip, ptr nonnull align 8 dereferenceable(80) %.sroa.026.032.i, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.ir, i32 %i.im)
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit28

_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit28: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i24, %bb.au
  %.pn.i27 = phi { ptr, ptr } [ %.fca.1.insert.i.i26, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i24 ], [ %i.jc, %bb.au ] ; 2 uses
  %i.jd = extractvalue { ptr, ptr } %.pn.i27, 0
  %i.je = extractvalue { ptr, ptr } %.pn.i27, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store ptr null, ptr %i.v, align 8, !tbaa !163, !alias.scope !290
  store i32 %i.fb, ptr %i.w, align 4, !tbaa !160, !alias.scope !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !290
  store i32 %.149.i.i, ptr %11, align 8, !alias.scope !290
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.je, ptr noundef nonnull align 8 dereferenceable(1065) %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %.pre121.i.i = load ptr, ptr %0, align 8, !tbaa !276
  br label %_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl20transformInstructionERN4llvm12MachineInstrE.exit.i

_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl20transformInstructionERN4llvm12MachineInstrE.exit.i: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit28, %._crit_edge.i20.i
  %i.jf = phi i32 [ %i.il, %._crit_edge.i20.i ], [ 67108864, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit28 ]
  %i.jg = phi ptr [ %.pre122.i.i, %._crit_edge.i20.i ], [ %.pre121.i.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit28 ]
  %.244.i.i = phi i32 [ %.143.i.i, %._crit_edge.i20.i ], [ %i.im, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit28 ]
  %i.jh = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.jg, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3520), ptr nonnull @.str.4, i64 0) #15 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i, i64 72 ; 2 uses
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.ji, align 8, !tbaa !166
  %i.jj = load ptr, ptr %i.n, align 8, !tbaa !278
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !286
  %i.jm = sub nsw i64 0, %.0.i.i.i
  %i.jn = getelementptr inbounds [32 x i8], ptr %i.jl, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i, i64 44 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !280
  %i.jq = and i32 %i.jp, 4
  %.not.i9 = icmp eq i32 %i.jq, 0
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !210 ; 5 uses
  %i.jt = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.js, ptr noundef nonnull align 8 dereferenceable(32) %i.jn, ptr %.sroa.02.0.copyload.i.i, i1 noundef zeroext false) #15 ; 11 uses
  br i1 %.not.i9, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit49, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i14

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i14: ; preds = %_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl20transformInstructionERN4llvm12MachineInstrE.exit.i
  %i.ju = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.ev, ptr nonnull align 8 dereferenceable(80) %.sroa.026.032.i, ptr noundef %i.jt) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr null, ptr %i.ar, align 8, !tbaa !163, !alias.scope !291
  store i32 %i.jh, ptr %i.as, align 4, !tbaa !160, !alias.scope !291
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !alias.scope !291
  store i32 16777216, ptr %6, align 8, !alias.scope !291
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jt, ptr noundef nonnull align 8 dereferenceable(1065) %i.js, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit18

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit49: ; preds = %_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl20transformInstructionERN4llvm12MachineInstrE.exit.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, ptr noundef %i.jt) #15
  %.0.copyload.i.i.i.i.i.i.i.i.i.i41 = load i64, ptr %.sroa.026.032.i, align 8
  %i.jw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i41, -8 ; 2 uses
  %i.jx = inttoptr i64 %i.jw to ptr
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr %.sroa.026.032.i, ptr %i.jy, align 8, !tbaa !145
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i42 = load i64, ptr %i.jt, align 8
  %i.jz = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i42, 7
  %i.ka = or disjoint i64 %i.jz, %i.jw
  store i64 %i.ka, ptr %i.jt, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store ptr %i.jt, ptr %i.kb, align 8, !tbaa !145
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i43 = load i64, ptr %.sroa.026.032.i, align 8
  %i.kc = ptrtoint ptr %i.jt to i64
  %i.kd = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i43, 7
  %i.ke = or disjoint i64 %i.kd, %i.kc
  store i64 %i.ke, ptr %.sroa.026.032.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr null, ptr %i.au, align 8, !tbaa !163, !alias.scope !292
  store i32 %i.jh, ptr %i.av, align 4, !tbaa !160, !alias.scope !292
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false), !alias.scope !292
  store i32 16777216, ptr %2, align 8, !alias.scope !292
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jt, ptr noundef nonnull align 8 dereferenceable(1065) %i.js, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit18

_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit18: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i14, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit49
  %i.kf = load i32, ptr %i.a, align 4, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr null, ptr %i.y, align 8, !tbaa !163, !alias.scope !293
  %.not.i.i.i = icmp eq i8 %.247.i.i, 0
  %i.kg = select i1 %.not.i.i.i, i32 0, i32 67108864
  store i32 %.2.i.i, ptr %i.z, align 4, !tbaa !160, !alias.scope !293
  %i.kh = shl i32 %i.kf, 8
  %i.ki = and i32 %i.kh, 1048320
  %i.kj = or disjoint i32 %i.ki, %i.kg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !alias.scope !293
  store i32 %i.kj, ptr %10, align 8, !alias.scope !293
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jt, ptr noundef nonnull align 8 dereferenceable(1065) %i.js, ptr noundef nonnull align 8 dereferenceable(32) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  store ptr null, ptr %i.ab, align 8, !tbaa !163, !alias.scope !294
  store i32 %.244.i.i, ptr %i.ac, align 4, !tbaa !160, !alias.scope !294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !alias.scope !294
  store i32 %i.jf, ptr %9, align 8, !alias.scope !294
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.jt, ptr noundef nonnull align 8 dereferenceable(1065) %i.js, ptr noundef nonnull align 8 dereferenceable(32) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.kk = load ptr, ptr %i.n, align 8, !tbaa !278
  %i.kl = load ptr, ptr %i.bs, align 8, !tbaa !159
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !160 ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kk, i64 8
  %.val.i21.i = load ptr, ptr %i.ko, align 8, !tbaa !286
  %i.kp = load ptr, ptr %i.eu, align 8, !tbaa !283 ; 3 uses
  %.sroa.0.0.copyload.i83.i.i = load ptr, ptr %i.ji, align 8, !tbaa !166
  %i.kq = getelementptr inbounds i8, ptr %.val.i21.i, i64 -640
  %i.kr = load i32, ptr %i.jo, align 4, !tbaa !280
  %i.ks = and i32 %i.kr, 4
  %.not.i7 = icmp eq i32 %i.ks, 0
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !210 ; 4 uses
  %i.kv = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ku, ptr noundef nonnull align 8 dereferenceable(32) %i.kq, ptr %.sroa.0.0.copyload.i83.i.i, i1 noundef zeroext false) #15 ; 10 uses
  br i1 %.not.i7, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit18
  %i.kw = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.kp, ptr nonnull align 8 dereferenceable(80) %.sroa.026.032.i, ptr noundef %i.kv) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr null, ptr %i.ax, align 8, !tbaa !163, !alias.scope !295
  store i32 %i.kn, ptr %i.ay, align 4, !tbaa !160, !alias.scope !295
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false), !alias.scope !295
  store i32 16777216, ptr %7, align 8, !alias.scope !295
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kv, ptr noundef nonnull align 8 dereferenceable(1065) %i.ku, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit18
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, ptr noundef %i.kv) #15
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.026.032.i, align 8
  %i.ky = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.kz = inttoptr i64 %i.ky to ptr
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store ptr %.sroa.026.032.i, ptr %i.la, align 8, !tbaa !145
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.kv, align 8
  %i.lb = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.lc = or disjoint i64 %i.lb, %i.ky
  store i64 %i.lc, ptr %i.kv, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.kv, ptr %i.ld, align 8, !tbaa !145
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %.sroa.026.032.i, align 8
  %i.le = ptrtoint ptr %i.kv to i64
  %i.lf = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.lg = or disjoint i64 %i.lf, %i.le
  store i64 %i.lg, ptr %.sroa.026.032.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr null, ptr %i.ba, align 8, !tbaa !163, !alias.scope !296
  store i32 %i.kn, ptr %i.bb, align 4, !tbaa !160, !alias.scope !296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false), !alias.scope !296
  store i32 16777216, ptr %3, align 8, !alias.scope !296
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kv, ptr noundef nonnull align 8 dereferenceable(1065) %i.ku, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr null, ptr %i.ae, align 8, !tbaa !163, !alias.scope !297
  store i32 %i.jh, ptr %i.af, align 4, !tbaa !160, !alias.scope !297
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !alias.scope !297
  store i32 67108864, ptr %8, align 8, !alias.scope !297
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kv, ptr noundef nonnull align 8 dereferenceable(1065) %i.ku, ptr noundef nonnull align 8 dereferenceable(32) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.lh = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.026.032.i) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZNK12_GLOBAL__N_124AArch64AdvSIMDScalarImpl23isProfitableToTransformERKN4llvm12MachineInstrE.exit.thread.i

_ZNK12_GLOBAL__N_124AArch64AdvSIMDScalarImpl23isProfitableToTransformERKN4llvm12MachineInstrE.exit.thread.i: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, %_ZNK12_GLOBAL__N_124AArch64AdvSIMDScalarImpl23isProfitableToTransformERKN4llvm12MachineInstrE.exit.i, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i
  %.1.i = phi i1 [ true, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit ], [ %.033.i, %_ZNK12_GLOBAL__N_124AArch64AdvSIMDScalarImpl23isProfitableToTransformERKN4llvm12MachineInstrE.exit.i ], [ %.033.i, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.bq, %i.bf
  br i1 %.not.i, label %_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl24processMachineBasicBlockEPN4llvm17MachineBasicBlockE.exit, label %.lr.ph.i

_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl24processMachineBasicBlockEPN4llvm17MachineBasicBlockE.exit: ; preds = %_ZNK12_GLOBAL__N_124AArch64AdvSIMDScalarImpl23isProfitableToTransformERKN4llvm12MachineInstrE.exit.thread.i
  %spec.select = select i1 %.1.i, i1 true, i1 %.076
  br label %_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl24processMachineBasicBlockEPN4llvm17MachineBasicBlockE.exit.thread

_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl24processMachineBasicBlockEPN4llvm17MachineBasicBlockE.exit.thread: ; preds = %_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl24processMachineBasicBlockEPN4llvm17MachineBasicBlockE.exit, %bb.b
  %i.li = phi i1 [ %.076, %bb.b ], [ %spec.select, %_ZN12_GLOBAL__N_124AArch64AdvSIMDScalarImpl24processMachineBasicBlockEPN4llvm17MachineBasicBlockE.exit ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.050.077, i64 8
  %.sroa.050.0 = load ptr, ptr %i.lj, align 8, !tbaa !279 ; 2 uses
  %.not = icmp eq ptr %.sroa.050.0, %i.p
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm26createAArch64AdvSIMDScalarEv() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !220
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_126AArch64AdvSIMDScalarLegacy2IDE, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !222
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_126AArch64AdvSIMDScalarLegacyE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_126AArch64AdvSIMDScalarLegacyEEEPNS_4PassEv() #3 {
bb.a:
end_hunk_0
