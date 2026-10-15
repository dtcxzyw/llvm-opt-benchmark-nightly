Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineFunction?download=true
inline.NumInlined: 5403
inline.NumDeleted: 3213
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrE:bb.a
  %i.v = load i32, ptr %i.t, align 8
  %i.w = lshr i32 %i.v, 8
  %i.x = and i32 %i.w, 4095
  br label %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !452  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !60
  %i.ad = trunc i64 %i.ac to i32
  br label %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit"

_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !28, !noalias !1169
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 464
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1169
  call void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.704") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %1) #27, !inline_history !1076
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !585 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 4
  %i.ai = load i32, ptr %.sroa.4.0.copyload.i, align 8
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = and i32 %i.aj, 4095
  br label %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit"

"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit": ; preds = %bb.b, %bb.c, %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i
  %.sroa.01.0.in.i = phi ptr [ %i.u, %bb.b ], [ %i.aa, %bb.c ], [ %i.ah, %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i ]
  %.0.i = phi i32 [ %i.x, %bb.b ], [ %i.ad, %bb.c ], [ %i.ak, %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i ]
  %.sroa.01.0.i = load i32, ptr %.sroa.01.0.in.i, align 4, !tbaa !60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.al, ptr %10, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  store i32 0, ptr %i.am, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 4, ptr %i.an, align 4, !tbaa !258
  %i.ao = icmp slt i32 %.sroa.01.0.i, 0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.12220.0271 = phi i32 [ %.0.i, %.lr.ph ], [ %.0.i67, %bb.l ] ; 3 uses
  %.sroa.0217.0270 = phi i32 [ %.sroa.01.0.i, %.lr.ph ], [ %.sroa.01.0.i68, %bb.l ] ; 3 uses
  %.not = icmp eq i32 %.sroa.12220.0271, 0
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = load i32, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !258
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %.sroa.12220.0271)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.g:                                             ; preds = %bb.e
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %10, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  store i32 %.sroa.12220.0271, ptr %i.au, align 1
  %i.av = load i32, ptr %i.am, align 8, !tbaa !52
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.am, align 8, !tbaa !52
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.g, %bb.f, %bb.d
  %i.ax = and i32 %.sroa.0217.0270, 2147483647
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = load ptr, ptr %i.ap, align 8
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.0.i.i = load ptr, ptr %i.bb, align 8, !tbaa !585, !nonnull !37, !noundef !37 ; 3 uses
  %i.bc = load i32, ptr %.0.i.i, align 8
  %i.bd = and i32 %i.bc, 16777216
  %.not.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.h, label %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !60, !nonnull !37, !noundef !37
  br label %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit, %bb.h
  %.sroa.0.0.i = phi ptr [ %i.bf, %bb.h ], [ %.0.i.i, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !594 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 52 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !432
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  switch i32 %i.bj, label %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i65 [
    i32 20, label %.sink.split
    i32 12, label %.sink.split
  ]

_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i65: ; preds = %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !28, !noalias !1171
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 464
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !1171
  call void %i.bm(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.704") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %i.bh) #27, !inline_history !11
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !587, !range !36, !alias.scope !1170
  %i.bn = trunc nuw i8 %.pre.i to i1
  br i1 %i.bn, label %.sink.split, label %_ZNK4llvm15TargetInstrInfo15isCopyLikeInstrERKNS_12MachineInstrE.exit

_ZNK4llvm15TargetInstrInfo15isCopyLikeInstrERKNS_12MachineInstrE.exit: ; preds = %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i65
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !28, !noalias !1170
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 472
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.704") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %i.bh) #27, !inline_history !12
  %.pre = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !587, !range !36
  %i.br = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br i1 %i.br, label %bb.i, label %bb.m

.sink.split:                                      ; preds = %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit, %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit, %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNK4llvm15TargetInstrInfo15isCopyLikeInstrERKNS_12MachineInstrE.exit
  %i.bs = load i32, ptr %i.bi, align 4, !tbaa !432
  switch i32 %i.bs, label %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i73 [
    i32 20, label %bb.j
    i32 12, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !452 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 36
  %i.bx = load i32, ptr %i.bv, align 8
  %i.by = lshr i32 %i.bx, 8
  %i.bz = and i32 %i.by, 4095
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !452 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !60
  %i.cf = trunc i64 %i.ce to i32
  br label %bb.l

_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i73: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !28, !noalias !1172
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 464
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1172
  call void %i.ci(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.704") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %i.bh) #27, !inline_history !1076
  %.sroa.4.0.copyload.i75 = load ptr, ptr %.sroa.4.0..sroa_idx.i74, align 8, !tbaa !585 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i75, i64 4
  %i.ck = load i32, ptr %.sroa.4.0.copyload.i75, align 8
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = and i32 %i.cl, 4095
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i73, %bb.k, %bb.j
  %.sroa.01.0.in.i66 = phi ptr [ %i.bw, %bb.j ], [ %i.cc, %bb.k ], [ %i.cj, %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i73 ]
  %.0.i67 = phi i32 [ %i.bz, %bb.j ], [ %i.cf, %bb.k ], [ %i.cm, %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i73 ]
  %.sroa.01.0.i68 = load i32, ptr %.sroa.01.0.in.i66, align 4, !tbaa !60 ; 2 uses
  %i.cn = icmp slt i32 %.sroa.01.0.i68, 0
  br i1 %i.cn, label %bb.d, label %._crit_edge

bb.m:                                             ; preds = %_ZNK4llvm15TargetInstrInfo15isCopyLikeInstrERKNS_12MachineInstrE.exit
  %i.co = load ptr, ptr %i.ap, align 8
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.ay
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.0.i.i78 = load ptr, ptr %i.cq, align 8, !tbaa !585, !nonnull !37, !noundef !37 ; 3 uses
  %i.cr = load i32, ptr %.0.i.i78, align 8
  %i.cs = and i32 %i.cr, 16777216
  %.not.i.i.i80 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i80, label %bb.n, label %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit85

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i78, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !60, !nonnull !37, !noundef !37
  br label %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit85

_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit85: ; preds = %bb.m, %bb.n
  %.sroa.0.0.i81 = phi ptr [ %i.cu, %bb.n ], [ %.0.i.i78, %bb.m ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i81, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !594 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !452, !noalias !1173 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.da = load i24, ptr %i.cz, align 8, !noalias !1173 ; 2 uses
  %i.db = zext i24 %i.da to i64
  %.idx.i = shl nuw nsw i64 %i.db, 5
  %i.dc = getelementptr i8, ptr %i.cy, i64 %.idx.i ; 7 uses
  %.not1.i.i.i.i.i = icmp eq i24 %i.da, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit85
  %i.dd = load i32, ptr %i.cy, align 8, !noalias !1174
  %i.de = and i32 %i.dd, 16777471
  %i.df = icmp eq i32 %i.de, 16777216
  br i1 %i.df, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.sroa.011.0.i.i367 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %i.cy, %.lr.ph.i.i.i.i.i.preheader ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i367, i64 32 ; 4 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.dg, %i.dc
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dh = load i32, ptr %i.dg, align 8, !noalias !1174
  %i.di = and i32 %i.dh, 16777471
  %i.dj = icmp eq i32 %i.di, 16777216
  br i1 %i.dj, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %.lr.ph.i.i.i.i.i

_ZN4llvm12MachineInstr8all_defsEv.exit:           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit85
  %.sroa.011.1.i.i = phi ptr [ %i.cy, %_ZNK4llvm19MachineRegisterInfo9def_beginENS_8RegisterE.exit85 ], [ %i.cy, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %.not284369 = icmp ne ptr %.sroa.011.1.i.i, %i.dc
  call void @llvm.assume(i1 %.not284369)
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !60
  %.not260370 = icmp eq i32 %i.dl, %.sroa.0217.0270
  br i1 %.not260370, label %.lr.ph281._crit_edge, label %.thread227

.lr.ph281._crit_edge:                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %_ZN4llvm12MachineInstr8all_defsEv.exit
  %.sroa.0194.2.sink.lcssa = phi ptr [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_defsEv.exit ], [ %.sroa.0194.2, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ]
  %i.dm = call noundef i32 @_ZN4llvm12MachineInstr16getDebugInstrNumEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cw) #27
  %i.dn = call noundef i32 @_ZNK4llvm14MachineOperand12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0194.2.sink.lcssa) #27
  %.sroa.2190.0.insert.ext = zext i32 %i.dn to i64
  %.sroa.2190.0.insert.shift = shl nuw i64 %.sroa.2190.0.insert.ext, 32
  %.val59.val = load ptr, ptr %10, align 8, !tbaa !40, !noalias !1175 ; 2 uses
  %.val59.val61 = load i32, ptr %i.am, align 8, !tbaa !52, !noalias !1175 ; 2 uses
  %.not20.i = icmp eq i32 %.val59.val61, 0
  %.pre301 = zext i32 %i.dm to i64
  %i.do = or disjoint i64 %.sroa.2190.0.insert.shift, %.pre301 ; 2 uses
  br i1 %.not20.i, label %.thread251, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph281._crit_edge
  %i.dp = zext i32 %.val59.val61 to i64
  %.idx.i86 = shl nuw nsw i64 %i.dp, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 876 ; 2 uses
  %i.dw = add nsw i64 %.idx.i86, -4               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.val59.val, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !330
  %i.dz = load i32, ptr %i.dq, align 8, !tbaa !262
  %i.ea = add i32 %i.dz, 1                        ; 3 uses
  store i32 %i.ea, ptr %i.dq, align 8, !tbaa !262
  %.sroa.02.0.insert.ext.peel.i = zext i32 %i.ea to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store i64 %.sroa.02.0.insert.ext.peel.i, ptr %7, align 8
  store i64 %i.do, ptr %i.ds, align 8
  store i32 %i.dy, ptr %i.dt, align 8, !tbaa !584
  %i.eb = load i32, ptr %i.du, align 8, !tbaa !52 ; 2 uses
  %i.ec = load i32, ptr %i.dv, align 4, !tbaa !258
  %.not.i.i.peel.i = icmp ult i32 %i.eb, %i.ec
  br i1 %.not.i.i.peel.i, label %bb.p, label %bb.o, !prof !267

bb.o:                                             ; preds = %.lr.ph.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_15MachineFunction17DebugSubstitutionELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 4 dereferenceable(20) %7)
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.ed = zext i32 %i.eb to i64
  %i.ee = load ptr, ptr %i.dr, align 8, !tbaa !40
  %i.ef = getelementptr inbounds nuw [20 x i8], ptr %i.ee, i64 %i.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ef, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false)
  %i.eg = load i32, ptr %i.du, align 8, !tbaa !52
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.du, align 8, !tbaa !52
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i

_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.not.peel.i = icmp eq i64 %i.dw, 0
  br i1 %.not.peel.i, label %.thread251, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i
  %.sroa.011.022.i = phi i32 [ %i.el, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i ], [ %i.ea, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i ]
  %.sroa.06.021.i = phi ptr [ %i.ei, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i ], [ %i.dx, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i ]
  %i.ei = getelementptr inbounds i8, ptr %.sroa.06.021.i, i64 -4 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !330
  %i.ek = load i32, ptr %i.dq, align 8, !tbaa !262
  %i.el = add i32 %i.ek, 1                        ; 3 uses
  store i32 %i.el, ptr %i.dq, align 8, !tbaa !262
  %.sroa.011.0.insert.ext.i = zext i32 %.sroa.011.022.i to i64
  %.sroa.02.0.insert.ext.i87 = zext i32 %i.el to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store i64 %.sroa.02.0.insert.ext.i87, ptr %7, align 8
  store i64 %.sroa.011.0.insert.ext.i, ptr %i.ds, align 8
  store i32 %i.ej, ptr %i.dt, align 8, !tbaa !584
  %i.em = load i32, ptr %i.du, align 8, !tbaa !52 ; 2 uses
  %i.en = load i32, ptr %i.dv, align 4, !tbaa !258
  %.not.i.i.i88 = icmp ult i32 %i.em, %i.en
  br i1 %.not.i.i.i88, label %bb.r, label %bb.q, !prof !267

bb.q:                                             ; preds = %.peel.next.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_15MachineFunction17DebugSubstitutionELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 4 dereferenceable(20) %7)
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i

bb.r:                                             ; preds = %.peel.next.i
  %i.eo = zext i32 %i.em to i64
  %i.ep = load ptr, ptr %i.dr, align 8, !tbaa !40
  %i.eq = getelementptr inbounds nuw [20 x i8], ptr %i.ep, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.eq, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false)
  %i.er = load i32, ptr %i.du, align 8, !tbaa !52
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr %i.du, align 8, !tbaa !52
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i

_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.not.i89 = icmp eq ptr %i.ei, %.val59.val
  br i1 %.not.i89, label %.thread251, label %.peel.next.i, !llvm.loop !1095

.thread227:                                       ; preds = %_ZN4llvm12MachineInstr8all_defsEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.0194.2.sink371 = phi ptr [ %.sroa.0194.2, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_defsEv.exit ]
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0194.2.sink371, i64 32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.et, %i.dc
  br i1 %.not1.i.i, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread227, %bb.s
  %.sroa.0194.1 = phi ptr [ %i.ex, %bb.s ], [ %i.et, %.thread227 ] ; 3 uses
  %i.eu = load i32, ptr %.sroa.0194.1, align 8
  %i.ev = and i32 %i.eu, 16777471
  %i.ew = icmp eq i32 %i.ev, 16777216
  br i1 %i.ew, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0194.1, i64 32 ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.ex, %i.dc
  br i1 %.not.i.i90, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i, !llvm.loop !1096

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i, %bb.s, %.thread227
  %.sroa.0194.2 = phi ptr [ %i.dc, %.thread227 ], [ %.sroa.0194.1, %.lr.ph.i.i ], [ %i.dc, %bb.s ] ; 4 uses
  %.not284 = icmp ne ptr %.sroa.0194.2, %i.dc
  call void @llvm.assume(i1 %.not284)
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0194.2, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !60
  %.not260 = icmp eq i32 %i.ez, %.sroa.0217.0270
  br i1 %.not260, label %.lr.ph281._crit_edge, label %.thread227

._crit_edge:                                      ; preds = %bb.l, %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit"
  %.sroa.0213.0.lcssa = phi ptr [ %1, %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit" ], [ %i.bh, %bb.l ] ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0213.0.lcssa, i64 52
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !432
  switch i32 %i.fb, label %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i98 [
    i32 20, label %bb.t
    i32 12, label %bb.u
  ]

bb.t:                                             ; preds = %._crit_edge
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0213.0.lcssa, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !452
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 36
  br label %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit101"

bb.u:                                             ; preds = %._crit_edge
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0213.0.lcssa, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !452
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  br label %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit101"

_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i98: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.fi = load ptr, ptr %i.o, align 8, !tbaa !28, !noalias !1177
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 464
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !1177
  call void %i.fk(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.704") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0213.0.lcssa) #27, !inline_history !1076
  %.sroa.4.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4.0.copyload.i100 = load ptr, ptr %.sroa.4.0..sroa_idx.i99, align 8, !tbaa !585
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i100, i64 4
  br label %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit101"

"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit101": ; preds = %bb.t, %bb.u, %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i98
  %.sroa.01.0.in.i91 = phi ptr [ %i.fe, %bb.t ], [ %i.fh, %bb.u ], [ %i.fl, %_ZNK4llvm15TargetInstrInfo11isCopyInstrERKNS_12MachineInstrE.exit.i98 ]
  %.sroa.01.0.i93 = load i32, ptr %.sroa.01.0.in.i91, align 4, !tbaa !60
  %.sroa.01.0.i93.fr = freeze i32 %.sroa.01.0.i93 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0213.0.lcssa, i64 24 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1178 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48 ; 2 uses
  %.not258276 = icmp eq ptr %.sroa.0213.0.lcssa, %i.fo
  br i1 %.not258276, label %.thread256, label %.lr.ph279

.lr.ph279:                                        ; preds = %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit101"
  %i.fp = add i32 %.sroa.01.0.i93.fr, -1
  %i.fq = icmp ult i32 %i.fp, 1073741823
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph279, %.thread253
  %.sroa.0181.0277 = phi ptr [ %.sroa.0213.0.lcssa, %.lr.ph279 ], [ %i.ic, %.thread253 ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0181.0277, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !452, !noalias !1179 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0181.0277, i64 40
  %i.fu = load i24, ptr %i.ft, align 8, !noalias !1179 ; 2 uses
  %i.fv = zext i24 %i.fu to i64
  %.idx.i103 = shl nuw nsw i64 %i.fv, 5
  %i.fw = getelementptr i8, ptr %i.fs, i64 %.idx.i103 ; 8 uses
  %.not1.i.i.i.i.i104 = icmp eq i24 %i.fu, 0
  br i1 %.not1.i.i.i.i.i104, label %_ZN4llvm12MachineInstr8all_defsEv.exit113, label %.lr.ph.i.i.i.i.i105

.lr.ph.i.i.i.i.i105:                              ; preds = %bb.v, %bb.w
  %.sroa.011.0.i.i106 = phi ptr [ %i.ga, %bb.w ], [ %i.fs, %bb.v ] ; 3 uses
  %i.fx = load i32, ptr %.sroa.011.0.i.i106, align 8, !noalias !1180
  %i.fy = and i32 %i.fx, 16777471
  %i.fz = icmp eq i32 %i.fy, 16777216
  br i1 %i.fz, label %_ZN4llvm12MachineInstr8all_defsEv.exit113, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i105
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i106, i64 32 ; 2 uses
  %.not.i.i.i.i.i107 = icmp eq ptr %i.ga, %i.fw
  br i1 %.not.i.i.i.i.i107, label %.thread253, label %.lr.ph.i.i.i.i.i105, !llvm.loop !1096

_ZN4llvm12MachineInstr8all_defsEv.exit113:        ; preds = %.lr.ph.i.i.i.i.i105, %bb.v
  %.sroa.011.1.i.i108 = phi ptr [ %i.fs, %bb.v ], [ %.sroa.011.0.i.i106, %.lr.ph.i.i.i.i.i105 ] ; 3 uses
  %.not259272 = icmp eq ptr %.sroa.011.1.i.i108, %i.fw
  br i1 %.not259272, label %.thread253, label %.lr.ph274

.lr.ph274:                                        ; preds = %_ZN4llvm12MachineInstr8all_defsEv.exit113
  br i1 %i.fq, label %.lr.ph274.split, label %.lr.ph274.split.us

.lr.ph274.split.us:                               ; preds = %.lr.ph274, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit140.us
  %.sroa.0173.0273.us = phi ptr [ %.sroa.0173.1.us, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit140.us ], [ %.sroa.011.1.i.i108, %.lr.ph274 ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0173.0273.us, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !60
  %i.gd = icmp eq i32 %.sroa.01.0.i93.fr, %i.gc
  br i1 %i.gd, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread, label %.thread241.us

.thread241.us:                                    ; preds = %.lr.ph274.split.us
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0173.0273.us, i64 32 ; 2 uses
  %.not1.i.i137.us = icmp eq ptr %i.ge, %i.fw
  br i1 %.not1.i.i137.us, label %.thread253, label %.lr.ph.i.i138.us

.lr.ph.i.i138.us:                                 ; preds = %.thread241.us, %bb.x
  %.sroa.0173.1.us = phi ptr [ %i.gi, %bb.x ], [ %i.ge, %.thread241.us ] ; 4 uses
  %i.gf = load i32, ptr %.sroa.0173.1.us, align 8
  %i.gg = and i32 %i.gf, 16777471
  %i.gh = icmp eq i32 %i.gg, 16777216
  br i1 %i.gh, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit140.us, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i138.us
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0173.1.us, i64 32 ; 2 uses
  %.not.i.i139.us = icmp eq ptr %i.gi, %i.fw
  br i1 %.not.i.i139.us, label %.thread253, label %.lr.ph.i.i138.us, !llvm.loop !1096

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit140.us: ; preds = %.lr.ph.i.i138.us
  %.not259.us = icmp eq ptr %.sroa.0173.1.us, %i.fw
  br i1 %.not259.us, label %.thread253, label %.lr.ph274.split.us

.lr.ph274.split:                                  ; preds = %.lr.ph274, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit140
  %.sroa.0173.0273 = phi ptr [ %.sroa.0173.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit140 ], [ %.sroa.011.1.i.i108, %.lr.ph274 ] ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0173.0273, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !60 ; 3 uses
  %i.gl = icmp eq i32 %.sroa.01.0.i93.fr, %i.gk
  br i1 %i.gl, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph274.split
  %i.gm = add i32 %i.gk, -1
  %i.gn = icmp ult i32 %i.gm, 1073741823
  br i1 %i.gn, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit, label %.thread241

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit: ; preds = %bb.y
  %i.go = call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.i, i32 %.sroa.01.0.i93.fr, i32 %i.gk) #27
  br i1 %i.go, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread, label %.thread241

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread: ; preds = %.lr.ph274.split.us, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit, %.lr.ph274.split
  %.us-phi275 = phi ptr [ %.sroa.0173.0273, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit ], [ %.sroa.0173.0273, %.lr.ph274.split ], [ %.sroa.0173.0273.us, %.lr.ph274.split.us ]
  %i.gp = call noundef i32 @_ZN4llvm12MachineInstr16getDebugInstrNumEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0181.0277) #27
  %i.gq = call noundef i32 @_ZNK4llvm14MachineOperand12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32) %.us-phi275) #27
  %.sroa.2171.0.insert.ext = zext i32 %i.gq to i64
  %.sroa.2171.0.insert.shift = shl nuw i64 %.sroa.2171.0.insert.ext, 32
  %.val57.val = load ptr, ptr %10, align 8, !tbaa !40, !noalias !1175 ; 2 uses
  %.val57.val62 = load i32, ptr %i.am, align 8, !tbaa !52, !noalias !1175 ; 2 uses
  %.not20.i117 = icmp eq i32 %.val57.val62, 0
  %.pre300 = zext i32 %i.gp to i64
  %i.gr = or disjoint i64 %.sroa.2171.0.insert.shift, %.pre300 ; 2 uses
  br i1 %.not20.i117, label %.thread251, label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread
  %i.gs = zext i32 %.val57.val62 to i64
  %.idx.i119 = shl nuw nsw i64 %i.gs, 2
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 876 ; 2 uses
  %i.gz = add nsw i64 %.idx.i119, -4              ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.val57.val, i64 %i.gz ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !330
  %i.hc = load i32, ptr %i.gt, align 8, !tbaa !262
  %i.hd = add i32 %i.hc, 1                        ; 3 uses
  store i32 %i.hd, ptr %i.gt, align 8, !tbaa !262
  %.sroa.02.0.insert.ext.peel.i120 = zext i32 %i.hd to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i64 %.sroa.02.0.insert.ext.peel.i120, ptr %5, align 8
  store i64 %i.gr, ptr %i.gv, align 8
  store i32 %i.hb, ptr %i.gw, align 8, !tbaa !584
  %i.he = load i32, ptr %i.gx, align 8, !tbaa !52 ; 2 uses
  %i.hf = load i32, ptr %i.gy, align 4, !tbaa !258
  %.not.i.i.peel.i121 = icmp ult i32 %i.he, %i.hf
  br i1 %.not.i.i.peel.i121, label %bb.aa, label %bb.z, !prof !267

bb.z:                                             ; preds = %.lr.ph.i118
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_15MachineFunction17DebugSubstitutionELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull align 4 dereferenceable(20) %5)
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i122

bb.aa:                                            ; preds = %.lr.ph.i118
  %i.hg = zext i32 %i.he to i64
  %i.hh = load ptr, ptr %i.gu, align 8, !tbaa !40
  %i.hi = getelementptr inbounds nuw [20 x i8], ptr %i.hh, i64 %i.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.hi, ptr noundef nonnull align 8 dereferenceable(20) %5, i64 20, i1 false)
  %i.hj = load i32, ptr %i.gx, align 8, !tbaa !52
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr %i.gx, align 8, !tbaa !52
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i122

_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i122: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.not.peel.i123 = icmp eq i64 %i.gz, 0
  br i1 %.not.peel.i123, label %.thread251, label %.peel.next.i124

.peel.next.i124:                                  ; preds = %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i122, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i130
  %.sroa.011.022.i125 = phi i32 [ %i.ho, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i130 ], [ %i.hd, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i122 ]
  %.sroa.06.021.i126 = phi ptr [ %i.hl, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i130 ], [ %i.ha, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i122 ]
  %i.hl = getelementptr inbounds i8, ptr %.sroa.06.021.i126, i64 -4 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !330
  %i.hn = load i32, ptr %i.gt, align 8, !tbaa !262
  %i.ho = add i32 %i.hn, 1                        ; 3 uses
  store i32 %i.ho, ptr %i.gt, align 8, !tbaa !262
  %.sroa.011.0.insert.ext.i127 = zext i32 %.sroa.011.022.i125 to i64
  %.sroa.02.0.insert.ext.i128 = zext i32 %i.ho to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i64 %.sroa.02.0.insert.ext.i128, ptr %5, align 8
  store i64 %.sroa.011.0.insert.ext.i127, ptr %i.gv, align 8
  store i32 %i.hm, ptr %i.gw, align 8, !tbaa !584
  %i.hp = load i32, ptr %i.gx, align 8, !tbaa !52 ; 2 uses
  %i.hq = load i32, ptr %i.gy, align 4, !tbaa !258
  %.not.i.i.i129 = icmp ult i32 %i.hp, %i.hq
  br i1 %.not.i.i.i129, label %bb.ac, label %bb.ab, !prof !267

bb.ab:                                            ; preds = %.peel.next.i124
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_15MachineFunction17DebugSubstitutionELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull align 4 dereferenceable(20) %5)
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i130

bb.ac:                                            ; preds = %.peel.next.i124
  %i.hr = zext i32 %i.hp to i64
  %i.hs = load ptr, ptr %i.gu, align 8, !tbaa !40
  %i.ht = getelementptr inbounds nuw [20 x i8], ptr %i.hs, i64 %i.hr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ht, ptr noundef nonnull align 8 dereferenceable(20) %5, i64 20, i1 false)
  %i.hu = load i32, ptr %i.gx, align 8, !tbaa !52
  %i.hv = add i32 %i.hu, 1
  store i32 %i.hv, ptr %i.gx, align 8, !tbaa !52
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i130

_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i130: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.not.i131 = icmp eq ptr %i.hl, %.val57.val
  br i1 %.not.i131, label %.thread251, label %.peel.next.i124, !llvm.loop !1095

.thread241:                                       ; preds = %bb.y, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0173.0273, i64 32 ; 2 uses
  %.not1.i.i137 = icmp eq ptr %i.hw, %i.fw
  br i1 %.not1.i.i137, label %.thread253, label %.lr.ph.i.i138

.lr.ph.i.i138:                                    ; preds = %.thread241, %bb.ad
  %.sroa.0173.1 = phi ptr [ %i.ia, %bb.ad ], [ %i.hw, %.thread241 ] ; 4 uses
  %i.hx = load i32, ptr %.sroa.0173.1, align 8
  %i.hy = and i32 %i.hx, 16777471
  %i.hz = icmp eq i32 %i.hy, 16777216
  br i1 %i.hz, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit140, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i138
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0173.1, i64 32 ; 2 uses
  %.not.i.i139 = icmp eq ptr %i.ia, %i.fw
  br i1 %.not.i.i139, label %.thread253, label %.lr.ph.i.i138, !llvm.loop !1096

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit140: ; preds = %.lr.ph.i.i138
  %.not259 = icmp eq ptr %.sroa.0173.1, %i.fw
  br i1 %.not259, label %.thread253, label %.lr.ph274.split

.thread253:                                       ; preds = %bb.w, %.thread241.us, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit140.us, %.thread241, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit140, %bb.x, %bb.ad, %_ZN4llvm12MachineInstr8all_defsEv.exit113
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0181.0277, align 8
  %i.ib = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ic = inttoptr i64 %i.ib to ptr               ; 2 uses
  %.not258 = icmp eq ptr %i.fo, %i.ic
  br i1 %.not258, label %.thread256.loopexit, label %bb.v

.thread256.loopexit:                              ; preds = %.thread253
  %.pre299 = load ptr, ptr %i.fm, align 8, !tbaa !1178
  br label %.thread256

.thread256:                                       ; preds = %.thread256.loopexit, %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit101"
  %i.id = phi ptr [ %.pre299, %.thread256.loopexit ], [ %i.fn, %"_ZZN4llvm15MachineFunction18salvageCopySSAImplERNS_12MachineInstrEENK3$_0clERKS1_.exit101" ] ; 2 uses
  %i.ie = call ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360) %i.id) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.if = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !596
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -544
  %i.ii = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.id, ptr %i.ie, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.ih) ; 2 uses
  %i.ij = extractvalue { ptr, ptr } %i.ii, 0      ; 2 uses
  %i.ik = extractvalue { ptr, ptr } %i.ii, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.il, align 8, !tbaa !594, !alias.scope !1181
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.01.0.i93.fr, ptr %i.im, align 4, !tbaa !60, !alias.scope !1181
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, i8 0, i64 16, i1 false), !alias.scope !1181
  store i32 0, ptr %4, align 8, !alias.scope !1181
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ik, ptr noundef nonnull align 8 dereferenceable(1065) %i.ij, ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 6 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !262
  %i.iq = add i32 %i.ip, 1                        ; 2 uses
  store i32 %i.iq, ptr %i.io, align 8, !tbaa !262
  %i.ir = zext i32 %i.iq to i64                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 1, ptr %3, align 8, !alias.scope !1182
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.is, align 8, !tbaa !594, !alias.scope !1182
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ir, ptr %i.it, align 8, !tbaa !60, !alias.scope !1182
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ik, ptr noundef nonnull align 8 dereferenceable(1065) %i.ij, ptr noundef nonnull align 8 dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.val55.val = load ptr, ptr %10, align 8, !tbaa !40, !noalias !1175 ; 2 uses
  %.val55.val63 = load i32, ptr %i.am, align 8, !tbaa !52, !noalias !1175 ; 2 uses
  %.not20.i143 = icmp eq i32 %.val55.val63, 0
  br i1 %.not20.i143, label %.thread251, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.thread256
  %i.iu = zext i32 %.val55.val63 to i64
  %.idx.i145 = shl nuw nsw i64 %i.iu, 2
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 876 ; 2 uses
  %i.ja = add nsw i64 %.idx.i145, -4              ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val55.val, i64 %i.ja ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !330
  %i.jd = load i32, ptr %i.io, align 8, !tbaa !262
  %i.je = add i32 %i.jd, 1                        ; 3 uses
  store i32 %i.je, ptr %i.io, align 8, !tbaa !262
  %.sroa.02.0.insert.ext.peel.i146 = zext i32 %i.je to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i64 %.sroa.02.0.insert.ext.peel.i146, ptr %2, align 8
  store i64 %i.ir, ptr %i.iw, align 8
  store i32 %i.jc, ptr %i.ix, align 8, !tbaa !584
  %i.jf = load i32, ptr %i.iy, align 8, !tbaa !52 ; 2 uses
  %i.jg = load i32, ptr %i.iz, align 4, !tbaa !258
  %.not.i.i.peel.i147 = icmp ult i32 %i.jf, %i.jg
  br i1 %.not.i.i.peel.i147, label %bb.af, label %bb.ae, !prof !267

bb.ae:                                            ; preds = %.lr.ph.i144
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_15MachineFunction17DebugSubstitutionELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, ptr noundef nonnull align 4 dereferenceable(20) %2)
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i148

bb.af:                                            ; preds = %.lr.ph.i144
  %i.jh = zext i32 %i.jf to i64
  %i.ji = load ptr, ptr %i.iv, align 8, !tbaa !40
  %i.jj = getelementptr inbounds nuw [20 x i8], ptr %i.ji, i64 %i.jh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.jj, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  %i.jk = load i32, ptr %i.iy, align 8, !tbaa !52
  %i.jl = add i32 %i.jk, 1
  store i32 %i.jl, ptr %i.iy, align 8, !tbaa !52
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i148

_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i148: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.not.peel.i149 = icmp eq i64 %i.ja, 0
  br i1 %.not.peel.i149, label %.thread251, label %.peel.next.i150

.peel.next.i150:                                  ; preds = %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i148, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i156
  %.sroa.011.022.i151 = phi i32 [ %i.jp, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i156 ], [ %i.je, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i148 ]
  %.sroa.06.021.i152 = phi ptr [ %i.jm, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i156 ], [ %i.jb, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i148 ]
  %i.jm = getelementptr inbounds i8, ptr %.sroa.06.021.i152, i64 -4 ; 3 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !330
  %i.jo = load i32, ptr %i.io, align 8, !tbaa !262
  %i.jp = add i32 %i.jo, 1                        ; 3 uses
  store i32 %i.jp, ptr %i.io, align 8, !tbaa !262
  %.sroa.011.0.insert.ext.i153 = zext i32 %.sroa.011.022.i151 to i64
  %.sroa.02.0.insert.ext.i154 = zext i32 %i.jp to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i64 %.sroa.02.0.insert.ext.i154, ptr %2, align 8
  store i64 %.sroa.011.0.insert.ext.i153, ptr %i.iw, align 8
  store i32 %i.jn, ptr %i.ix, align 8, !tbaa !584
  %i.jq = load i32, ptr %i.iy, align 8, !tbaa !52 ; 2 uses
  %i.jr = load i32, ptr %i.iz, align 4, !tbaa !258
  %.not.i.i.i155 = icmp ult i32 %i.jq, %i.jr
  br i1 %.not.i.i.i155, label %bb.ah, label %bb.ag, !prof !267

bb.ag:                                            ; preds = %.peel.next.i150
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_15MachineFunction17DebugSubstitutionELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, ptr noundef nonnull align 4 dereferenceable(20) %2)
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i156

bb.ah:                                            ; preds = %.peel.next.i150
  %i.js = zext i32 %i.jq to i64
  %i.jt = load ptr, ptr %i.iv, align 8, !tbaa !40
  %i.ju = getelementptr inbounds nuw [20 x i8], ptr %i.jt, i64 %i.js
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ju, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  %i.jv = load i32, ptr %i.iy, align 8, !tbaa !52
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.iy, align 8, !tbaa !52
  br label %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i156

_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i156: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.not.i157 = icmp eq ptr %i.jm, %.val55.val
  br i1 %.not.i157, label %.thread251, label %.peel.next.i150, !llvm.loop !1095

.thread251:                                       ; preds = %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i130, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i156, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i, %.lr.ph281._crit_edge, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i148, %.thread256, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i122
  %.sroa.051.9 = phi i64 [ %.sroa.02.0.insert.ext.i128, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i130 ], [ %i.gr, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread ], [ %.sroa.02.0.insert.ext.peel.i120, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i122 ], [ %.sroa.02.0.insert.ext.i154, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i156 ], [ %.sroa.02.0.insert.ext.peel.i146, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i148 ], [ %i.ir, %.thread256 ], [ %.sroa.02.0.insert.ext.peel.i, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.peel.i ], [ %i.do, %.lr.ph281._crit_edge ], [ %.sroa.02.0.insert.ext.i87, %_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j.exit.i ]
  %i.jx = load ptr, ptr %10, align 8, !tbaa !40   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.al
  br i1 %i.jy, label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %.thread251
  call void @free(ptr noundef %i.jx) #27
  br label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit

_ZN4llvm11SmallVectorIjLj4EED2Ev.exit:            ; preds = %.thread251, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  ret i64 %.sroa.051.9
}

declare noundef i32 @_ZNK4llvm14MachineOperand12getOperandNoEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 8 uses
  %.sroa.02.0.copyload = load ptr, ptr %2, align 8, !tbaa !1183
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !362  ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !429
  store ptr %i.f, ptr %i.c, align 8, !tbaa !362
  br label %_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !265  ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.h, 80                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !266
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.e, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %i.i to ptr
  store ptr %i.m, ptr %i.d, align 8, !tbaa !265
  br label %_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 80, i64 noundef 80, i8 3)
  br label %_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb.exit

_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.o = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ %i.n, %bb.e ] ; 11 uses
  tail call void @_ZN4llvm12MachineInstrC1ERNS_15MachineFunctionERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.02.0.copyload, i1 noundef zeroext false) #27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull %i.o) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %1, ptr %i.s, align 8, !tbaa !363
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.u = or disjoint i64 %i.t, %i.q
  store i64 %i.u, ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.o, ptr %i.v, align 8, !tbaa !363
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.y = or disjoint i64 %i.x, %i.w
  store i64 %i.y, ptr %1, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1185 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb.exit
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.aa) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1186 ; 2 uses
  %.not7.i = icmp eq ptr %i.ac, null
  br i1 %.not7.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.ac) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1187 ; 2 uses
  %.not8.i = icmp eq ptr %i.ae, null
  br i1 %.not8.i, label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.ae) #27
  br label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit

_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit: ; preds = %bb.i, %bb.j
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.o, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15MachineFunction22finalizeDebugInstrRefsEv(ptr noundef nonnull align 8 dereferenceable(1065) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.std::optional.704", align 8 ; 8 uses
  %2 = alloca %"class.llvm::DenseMap.713", align 8 ; 11 uses
  %3 = alloca %"class.std::optional.704", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270, !nonnull !37, !align !271 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.sroa.079.0117 = load ptr, ptr %i.g, align 8, !tbaa !260 ; 2 uses
  %.not96118 = icmp eq ptr %.sroa.079.0117, %i.h
  br i1 %.not96118, label %_ZN4llvm8DenseMapINS_8RegisterESt4pairIjjENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.n = getelementptr i8, ptr %i.f, i64 8
  br label %bb.c

._crit_edge122:                                   ; preds = %._crit_edge116
  %.pre = load i32, ptr %i.l, align 4, !tbaa !592 ; 2 uses
  %i.o = icmp eq i32 %.pre, 0
  br i1 %i.o, label %_ZN4llvm8DenseMapINS_8RegisterESt4pairIjjENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge122
  %i.p = load ptr, ptr %2, align 8, !tbaa !590
  %i.q = zext i32 %.pre to i64                    ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 12
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820
  %i.v = add nuw nsw i64 %i.u, %i.r
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.p, i64 noundef %i.v, i64 noundef 4) #27
  br label %_ZN4llvm8DenseMapINS_8RegisterESt4pairIjjENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterESt4pairIjjENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit: ; preds = %bb.a, %._crit_edge122, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.c:                                             ; preds = %.lr.ph121, %._crit_edge116
  %.sroa.079.0119 = phi ptr [ %.sroa.079.0117, %.lr.ph121 ], [ %.sroa.079.0, %._crit_edge116 ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.079.0119, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.079.0119, i64 48 ; 2 uses
  %.sroa.076.0111 = load ptr, ptr %i.w, align 8, !tbaa !363 ; 2 uses
  %.not97112 = icmp eq ptr %.sroa.076.0111, %i.x
  br i1 %.not97112, label %._crit_edge116, label %.lr.ph115

._crit_edge116:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.079.0119, i64 8
  %.sroa.079.0 = load ptr, ptr %i.y, align 8, !tbaa !260 ; 2 uses
  %.not96 = icmp eq ptr %.sroa.079.0, %i.h
  br i1 %.not96, label %._crit_edge122, label %bb.c

.lr.ph115:                                        ; preds = %bb.c, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.076.0113 = phi ptr [ %.sroa.076.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.076.0111, %bb.c ] ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.076.0113, i64 52 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !432
  %i.ab = icmp eq i32 %i.aa, 16
  br i1 %i.ab, label %bb.d, label %"_ZZN4llvm15MachineFunction22finalizeDebugInstrRefsEvENK3$_0clERNS_12MachineInstrE.exit"

bb.d:                                             ; preds = %.lr.ph115
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.076.0113, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !452 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.076.0113, i64 40 ; 2 uses
  %i.af = load i24, ptr %i.ae, align 8            ; 2 uses
  %i.ag = zext i24 %i.af to i64
  %.idx = shl nuw nsw i64 %i.ag, 5
  %i.ah = getelementptr i8, ptr %i.ad, i64 %.idx
  %.not107 = icmp eq i24 %i.af, 2
  br i1 %.not107, label %"_ZZN4llvm15MachineFunction22finalizeDebugInstrRefsEvENK3$_0clERNS_12MachineInstrE.exit", label %.lr.ph110.preheader

.lr.ph110.preheader:                              ; preds = %bb.d
  %.sroa.05.0.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %bb.x
  %.048108 = phi ptr [ %i.hf, %bb.x ], [ %.sroa.05.0.i, %.lr.ph110.preheader ] ; 5 uses
  %i.ai = load i32, ptr %.048108, align 8
  %i.aj = and i32 %i.ai, 255
  %i.ak = icmp eq i32 %i.aj, 0
end_hunk_0
