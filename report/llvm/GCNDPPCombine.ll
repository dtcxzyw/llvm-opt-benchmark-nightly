Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GCNDPPCombine?download=true
inline.NumInlined: 977
inline.NumDeleted: 568
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12_GLOBAL__N_113GCNDPPCombine13combineDPPMovERN4llvm12MachineInstrE:bb.a
  %i.am = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 65) #22
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !344
  %i.ap = icmp ne i64 %i.ao, 0                    ; 2 uses
  %i.aq = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 61) #22 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !344
  %i.at = add i32 %i.as, -1
  %i.au = icmp ult i32 %i.at, 1073741823
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 1) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !344
  %i.ay = add i32 %i.ax, -1
  %i.az = icmp ult i32 %i.ay, 1073741823
  br i1 %i.az, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val = load ptr, ptr %0, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ba = load i32, ptr %i.ar, align 4, !tbaa !344
  %i.bb = load i32, ptr %i.aq, align 8
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = and i32 %i.bc, 4095
  %.sroa.2.0.insert.ext.i.i = zext nneg i32 %i.bd to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ba to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %2, align 8
  %i.be = call noundef ptr @_ZN4llvm16getVRegSubRegDefERKNS_15TargetInstrInfo13RegSubRegPairERKNS_19MachineRegisterInfoE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(520) %.val) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_113GCNDPPCombine15getOldOpndValueERN4llvm14MachineOperandE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !343
  switch i32 %i.bg, label %bb.n [
    i32 10, label %_ZNK12_GLOBAL__N_113GCNDPPCombine15getOldOpndValueERN4llvm14MachineOperandE.exit
    i32 20, label %bb.m
    i32 10458, label %bb.m
    i32 10465, label %bb.m
    i32 10468, label %bb.m
    i32 10469, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !345
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = and i32 %i.bk, 255
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %_ZNK12_GLOBAL__N_113GCNDPPCombine15getOldOpndValueERN4llvm14MachineOperandE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %_ZNK12_GLOBAL__N_113GCNDPPCombine15getOldOpndValueERN4llvm14MachineOperandE.exit

_ZNK12_GLOBAL__N_113GCNDPPCombine15getOldOpndValueERN4llvm14MachineOperandE.exit: ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %.1.i = phi ptr [ %i.aq, %bb.n ], [ null, %bb.k ], [ %i.bj, %bb.m ], [ null, %bb.l ] ; 6 uses
  %or.cond = and i1 %i.al, %i.ap
  br i1 %or.cond, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNK12_GLOBAL__N_113GCNDPPCombine15getOldOpndValueERN4llvm14MachineOperandE.exit
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load i32, ptr %.1.i, align 8
  %i.bo = and i32 %i.bn, 255
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !344
  %i.bs = icmp eq i64 %i.br, 0                    ; 2 uses
  %.not265 = xor i1 %i.ap, true
  %brmerge = select i1 %i.bs, i1 true, i1 %.not265
  %.mux = select i1 %i.bs, i1 %i.al, i1 false
  br i1 %brmerge, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q, %_ZNK12_GLOBAL__N_113GCNDPPCombine15getOldOpndValueERN4llvm14MachineOperandE.exit
  %.0175 = phi i1 [ %.mux, %bb.q ], [ true, %_ZNK12_GLOBAL__N_113GCNDPPCombine15getOldOpndValueERN4llvm14MachineOperandE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bt, ptr %3, align 8, !tbaa !346
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.bu, align 8, !tbaa !347
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.bv, align 4, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.bw, ptr %4, align 8, !tbaa !346
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !347
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.by, align 4, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bz = load i32, ptr %i.ar, align 4, !tbaa !344
  %i.ca = load i32, ptr %i.aq, align 8
  %i.cb = lshr i32 %i.ca, 8
  %i.cc = and i32 %i.cb, 4095
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.cc to i64
  %i.cd = icmp ne ptr %.1.i, null
  %or.cond3 = and i1 %i.cd, %.0175
  br i1 %or.cond3, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %0, align 8, !tbaa !324   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = and i32 %i.f, 2147483647
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !346
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.ch
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cj, align 8
  %i.ck = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ce, ptr noundef %i.cl, ptr nonnull @.str.4, i64 0) #18 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0106.0.copyload = load ptr, ptr %i.cp, align 8, !tbaa !350
  store ptr %.sroa.0106.0.copyload, ptr %6, align 8, !tbaa !350
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !325
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !351
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -320
  %i.cv = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.co, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i32 %i.cm)
  %i.cw = extractvalue { ptr, ptr } %i.cv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.cw)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0110.0 = phi i32 [ %i.cm, %bb.s ], [ %i.bz, %bb.r ]
  %.sroa.7.0 = phi i64 [ 0, %bb.s ], [ %.sroa.2.0.insert.ext.i, %bb.r ]
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.cx = load ptr, ptr %0, align 8, !tbaa !324
  %i.cy = call { ptr, ptr } @_ZNK4llvm19MachineRegisterInfo18use_nodbg_operandsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i32 %i.f) ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cy, 0
  %i.da = extractvalue { ptr, ptr } %i.cy, 1
  store ptr %i.cz, ptr %8, align 8, !alias.scope !465
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.da, ptr %i.db, align 8, !alias.scope !465
  call void @_ZN4llvm11SmallVectorIPNS_14MachineOperandELj16EEC2INS_16pointer_iteratorINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEES2_EEEERKNS_14iterator_rangeIT_EE(ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !347 ; 2 uses
  %.not.i196298 = icmp eq i32 %i.dd, 0
  br i1 %.not.i196298, label %.thread259, label %.lr.ph300

.lr.ph300:                                        ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0, 32
  %.sroa.0110.0.insert.ext = zext i32 %.sroa.0110.0 to i64
  %.sroa.0110.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.0110.0.insert.ext ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph300, %bb.bp
  %i.dg = phi i32 [ %i.dd, %.lr.ph300 ], [ %i.kg, %bb.bp ] ; 2 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !346
  %i.di = zext i32 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !352 ; 4 uses
  %i.dm = add i32 %i.dg, -1
  store i32 %i.dm, ptr %i.dc, align 8, !tbaa !347
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !355 ; 22 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 52
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !343 ; 5 uses
  %i.dr = icmp eq i32 %i.dq, 19
  br i1 %i.dr, label %bb.v, label %bb.aj

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 32 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !345
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !344 ; 4 uses
  %i.dw = load ptr, ptr %0, align 8, !tbaa !324
  %i.dx = call noundef zeroext i1 @_ZN4llvm29execMayBeModifiedBeforeAnyUseERKNS_19MachineRegisterInfoENS_8RegisterERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(520) %i.dw, i32 %i.dv, ptr noundef nonnull align 8 dereferenceable(80) %i.do) #18
  br i1 %i.dx, label %.thread259, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dz = load i24, ptr %i.dy, align 8            ; 2 uses
  %i.ea = icmp ugt i24 %i.dz, 1
  br i1 %i.ea, label %.lr.ph, label %.thread259

.lr.ph:                                           ; preds = %bb.w
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !345 ; 2 uses
  %i.ec = zext i24 %i.dz to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %indvars.iv
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !344
  %i.eg = icmp eq i32 %i.ef, %i.f
  br i1 %i.eg, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.eh = icmp samesign ult i64 %indvars.iv.next, %i.ec
  br i1 %i.eh, label %bb.x, label %.thread259, !llvm.loop !460

bb.z:                                             ; preds = %bb.x
  %i.ei = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %10 = add nuw i64 %indvars.iv, 1
  %11 = and i64 %10, 4294967295
  %12 = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %11
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !344
  %i.el = trunc i64 %i.ek to i32                  ; 2 uses
  %.not193 = icmp eq i32 %i.el, 0
  br i1 %.not193, label %.thread259, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = load ptr, ptr %0, align 8, !tbaa !324   ; 2 uses
  %i.en = icmp slt i32 %i.dv, 0
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.ep = and i32 %i.dv, 2147483647
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = load ptr, ptr %i.eo, align 8
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.eq
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 312
  %i.ev = zext nneg i32 %i.dv to i64
  %i.ew = load ptr, ptr %i.eu, align 8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ev
  %.0.in.i.i.i = select i1 %i.en, ptr %i.et, ptr %i.ex
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !352 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = load i32, ptr %.0.i.i.i, align 8
  %i.ez = and i32 %i.ey, -2130706432
  %or.cond.not.i.i.i = icmp eq i32 %i.ez, 0
  br i1 %or.cond.not.i.i.i, label %.lr.ph297.preheader, label %.critedge2.i.i.i.i

.lr.ph297.preheader:                              ; preds = %bb.ac, %bb.ab
  %.sroa.0222.0296.ph = phi ptr [ %.0.i.i.i, %bb.ab ], [ %storemerge.i.i.i.i, %bb.ac ]
  br label %.lr.ph297

.critedge2.i.i.i.i:                               ; preds = %bb.ab, %bb.ac
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.ac ], [ %.0.i.i.i, %bb.ab ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !344 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %.critedge2.i.i.i.i
  %i.fa = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.fb = and i32 %i.fa, -2130706432
  %or.cond.not.i.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %or.cond.not.i.i.i.i, label %.lr.ph297.preheader, label %.critedge2.i.i.i.i, !llvm.loop !0

._crit_edge:                                      ; preds = %.critedge2.i.i.i.i, %.critedge2.i.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.do, ptr %i.a, align 8, !tbaa !356
  %i.fc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.fc, 0 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !347 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 20
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !348
  %.not.i198 = icmp ult i32 %i.ff, %i.fh
  br i1 %.not.i198, label %bb.ae, label %bb.ad, !prof !357

bb.ad:                                            ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i32 noundef %i.ei)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.ae:                                            ; preds = %._crit_edge
  %i.fi = zext i32 %i.ff to i64
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !346
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fi
  store i32 %i.ei, ptr %i.fk, align 1
  %i.fl = load i32, ptr %i.fe, align 8, !tbaa !347
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fe, align 8, !tbaa !347
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bp, !llvm.loop !461

.lr.ph297.loopexit:                               ; preds = %bb.ai
  br label %.lr.ph297, !llvm.loop !0

.lr.ph297:                                        ; preds = %.lr.ph297.preheader, %.lr.ph297.loopexit
  %.sroa.0222.0296 = phi ptr [ %storemerge.i.i, %.lr.ph297.loopexit ], [ %.sroa.0222.0296.ph, %.lr.ph297.preheader ] ; 4 uses
  %i.fn = load i32, ptr %.sroa.0222.0296, align 8
  %i.fo = lshr i32 %i.fn, 8
  %i.fp = and i32 %i.fo, 4095
  %i.fq = icmp eq i32 %i.fp, %i.el
  br i1 %i.fq, label %bb.af, label %.critedge2.i.i.preheader

bb.af:                                            ; preds = %.lr.ph297
  %i.fr = load i32, ptr %i.dc, align 8, !tbaa !347 ; 2 uses
  %i.fs = load i32, ptr %i.df, align 4, !tbaa !348
  %.not.i199 = icmp ult i32 %i.fr, %i.fs
  br i1 %.not.i199, label %bb.ah, label %bb.ag, !prof !357

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_14MachineOperandELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %.sroa.0222.0296)
  br label %.critedge2.i.i.preheader

bb.ah:                                            ; preds = %bb.af
  %i.ft = zext i32 %i.fr to i64
  %i.fu = load ptr, ptr %7, align 8, !tbaa !346
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ft
  store ptr %.sroa.0222.0296, ptr %i.fv, align 1
  %i.fw = load i32, ptr %i.dc, align 8, !tbaa !347
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.dc, align 8, !tbaa !347
  br label %.critedge2.i.i.preheader

.critedge2.i.i.preheader:                         ; preds = %bb.ah, %bb.ag, %.lr.ph297
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge2.i.i.preheader, %bb.ai
  %.pn.i.i = phi ptr [ %storemerge.i.i, %bb.ai ], [ %.sroa.0222.0296, %.critedge2.i.i.preheader ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !344 ; 4 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.ai

bb.ai:                                            ; preds = %.critedge2.i.i
  %i.fy = load i32, ptr %storemerge.i.i, align 8
  %i.fz = and i32 %i.fy, -2130706432
  %or.cond.not.i.i = icmp eq i32 %i.fz, 0
  br i1 %or.cond.not.i.i, label %.lr.ph297.loopexit, label %.critedge2.i.i, !llvm.loop !0

bb.aj:                                            ; preds = %bb.u
  %i.ga = load ptr, ptr %i.b, align 8, !tbaa !325 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !351
  %i.gd = zext i32 %i.dq to i64
  %i.ge = sub nsw i64 0, %i.gd                    ; 3 uses
  %i.gf = getelementptr inbounds [32 x i8], ptr %i.gc, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !359
  %i.gi = and i64 %i.gh, 1024
  %.not36.i = icmp eq i64 %i.gi, 0
  br i1 %.not36.i, label %_ZNK12_GLOBAL__N_113GCNDPPCombine12isShrinkableERN4llvm12MachineInstrE.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gj = call noundef zeroext i1 @_ZNK4llvm11SIInstrInfo20hasVALU32BitEncodingEj(ptr noundef nonnull align 8 dereferenceable(840) %i.ga, i32 noundef %i.dq) #18
  br i1 %i.gj, label %bb.al, label %._ZNK12_GLOBAL__N_113GCNDPPCombine12isShrinkableERN4llvm12MachineInstrE.exit.thread_crit_edge

._ZNK12_GLOBAL__N_113GCNDPPCombine12isShrinkableERN4llvm12MachineInstrE.exit.thread_crit_edge: ; preds = %bb.ak
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !325
  br label %_ZNK12_GLOBAL__N_113GCNDPPCombine12isShrinkableERN4llvm12MachineInstrE.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.gk = call noundef zeroext i1 @_ZN4llvm6AMDGPU12isTrue16InstEj(i32 noundef %i.dq) #22
  %.pre356 = load ptr, ptr %i.b, align 8, !tbaa !325 ; 14 uses
  br i1 %i.gk, label %_ZNK12_GLOBAL__N_113GCNDPPCombine12isShrinkableERN4llvm12MachineInstrE.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gl = call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %.pre356, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.do, i8 noundef zeroext 49) #22 ; 2 uses
  %.not.i200 = icmp eq ptr %i.gl, null
  br i1 %.not.i200, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gm = load ptr, ptr %0, align 8, !tbaa !324   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !344 ; 3 uses
  %i.gp = icmp slt i32 %i.go, 0
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.gr = and i32 %i.go, 2147483647
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = load ptr, ptr %i.gq, align 8
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 312
  %i.gx = zext nneg i32 %i.go to i64
  %i.gy = load ptr, ptr %i.gw, align 8
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gx
  %.0.in.i.i.i.i = select i1 %i.gp, ptr %i.gv, ptr %i.gz
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8, !tbaa !352 ; 3 uses
  %.not.i.i.i.i201 = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i201, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ha = load i32, ptr %.0.i.i.i.i, align 8
  %i.hb = and i32 %i.ha, -2130706432
  %or.cond.not.i.i.i.i202 = icmp eq i32 %i.hb, 0
  br i1 %or.cond.not.i.i.i.i202, label %_ZNK12_GLOBAL__N_113GCNDPPCombine12isShrinkableERN4llvm12MachineInstrE.exit.thread, label %.critedge2.i.i.i.i.i

.critedge2.i.i.i.i.i:                             ; preds = %bb.ao, %bb.ap
  %.pn.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.ap ], [ %.0.i.i.i.i, %bb.ao ]
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !344 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %.critedge2.i.i.i.i.i
  %i.hc = load i32, ptr %storemerge.i.i.i.i.i, align 8
  %i.hd = and i32 %i.hc, -2130706432
  %or.cond.not.i.i.i.i.i = icmp eq i32 %i.hd, 0
  br i1 %or.cond.not.i.i.i.i.i, label %_ZNK12_GLOBAL__N_113GCNDPPCombine12isShrinkableERN4llvm12MachineInstrE.exit.thread, label %.critedge2.i.i.i.i.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.critedge2.i.i.i.i.i, %bb.an, %bb.am
  %i.he = call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %.pre356, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.do, i8 noundef zeroext 31) #22 ; 2 uses
  %.not.i.i203 = icmp eq ptr %i.he, null
  br i1 %.not.i.i203, label %_ZNK12_GLOBAL__N_113GCNDPPCombine15hasNoImmOrEqualERN4llvm12MachineInstrENS1_6AMDGPU6OpNameEll.exit.thread.i, label %_ZNK12_GLOBAL__N_113GCNDPPCombine15hasNoImmOrEqualERN4llvm12MachineInstrENS1_6AMDGPU6OpNameEll.exit.i

_ZNK12_GLOBAL__N_113GCNDPPCombine15hasNoImmOrEqualERN4llvm12MachineInstrENS1_6AMDGPU6OpNameEll.exit.i: ; preds = %.critedge.i
end_hunk_0
