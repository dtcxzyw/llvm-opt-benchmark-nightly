Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizerHelper?download=true
inline.NumInlined: 11701
inline.NumDeleted: 2046
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4llvm15LegalizerHelper18moreElementsVectorERNS_12MachineInstrEjNS_3LLTE:bb.a
  br i1 %.not.i.i.i.i196, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i198, label %_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj.exit203

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i198: ; preds = %bb.u
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i194, i64 44
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !266
  %i.kd = and i32 %i.kc, 8
  %.not34.i.i.i.i199 = icmp eq i32 %i.kd, 0
  br i1 %.not34.i.i.i.i199, label %_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj.exit203, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i200

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i200: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i198, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i200
  %.sroa.0.05.i.i.i.i201 = phi ptr [ %i.kf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i200 ], [ %.sroa.0.0.copyload.i.i194, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i198 ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i201, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !267 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 44
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !266
  %i.ki = and i32 %i.kh, 8
  %.not3.i.i.i.i202 = icmp eq i32 %i.ki, 0
  br i1 %.not3.i.i.i.i202, label %_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj.exit203, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i200, !llvm.loop !0

_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj.exit203: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i200, %bb.u, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i198
  %.sroa.0.1.i.i.i.i197 = phi ptr [ %.sroa.0.0.copyload.i.i194, %bb.u ], [ %.sroa.0.0.copyload.i.i194, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i198 ], [ %i.kf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i200 ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i197, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !267
  store ptr %i.kk, ptr %i.jz, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !226
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !212, !nonnull !179, !align !180
  %i.kp = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ko, i64 %3, ptr nonnull @.str, i64 0) #19 ; 2 uses
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.jx, i32 %i.kp) #19
  %i.kq = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 %i.km, ptr %8, align 8, !tbaa !238
  %i.kr = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %i.kr, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 %i.kp, ptr %9, align 8, !tbaa !238
  %i.ks = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.ks, align 8, !tbaa !246
  %i.kt = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder33buildDeleteTrailingVectorElementsERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.kq, ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 8 dereferenceable(20) %9) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.ku = load ptr, ptr %i.je, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !182
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(64) %i.ku, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %bb.cl

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  call void @_ZNK4llvm12MachineInstr16getFirst2RegLLTsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.420") align 8 %32, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.ky = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.kz = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.la = icmp eq i32 %2, 1
  %i.lb = load i64, ptr %32, align 8
  %i.lc = lshr i64 %i.lb, 60                      ; 2 uses
  br i1 %i.la, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %.off.i = add nsw i64 %i.lc, -1
  %switch.i = icmp ult i64 %.off.i, 3
  br i1 %switch.i, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.ld = load i64, ptr %i.ky, align 8
  %i.le = xor i64 %i.ld, %3
  %i.lf = and i64 %i.le, 1048561
  %.not425 = icmp eq i64 %i.lf, 0
  br i1 %.not425, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.lg = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  store i64 %3, ptr %33, align 8, !tbaa !226
  %i.lh = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i32 0, ptr %i.lh, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %.sroa.056.0.copyload = load i32, ptr %i.kz, align 8, !tbaa !238
  store i32 %.sroa.056.0.copyload, ptr %34, align 8, !tbaa !238
  %i.li = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i32 0, ptr %i.li, align 8, !tbaa !246
  %i.lj = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder17buildShuffleSplatERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.lg, ptr noundef nonnull align 8 dereferenceable(20) %33, ptr noundef nonnull align 8 dereferenceable(20) %34) #19
  %i.lk = extractvalue { ptr, ptr } %i.lj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !182
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(64) %i.lm, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !225
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 32
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !225
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !226
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.ls, i32 %i.lw) #19
  br label %.critedge.sink.split

bb.z:                                             ; preds = %bb.v
  %i.lx = add nsw i64 %i.lc, -5
  %switch.selectcmp.i = icmp ult i64 %i.lx, 4
  br i1 %switch.selectcmp.i, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !182
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8
  call void %i.mc(ptr noundef nonnull align 8 dereferenceable(64) %i.lz, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  call void @_ZN4llvm15LegalizerHelper21moreElementsVectorSrcERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 2)
  call void @_ZN4llvm15LegalizerHelper21moreElementsVectorSrcERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 3)
  call void @_ZN4llvm15LegalizerHelper21moreElementsVectorDstERNS_12MachineInstrENS_3LLTEj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %3, i32 noundef 0)
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.y, %bb.aa
  %.sink434.in = phi ptr [ %i.ly, %bb.aa ], [ %i.ll, %bb.y ]
  %.sink434 = load ptr, ptr %.sink434.in, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.md = load ptr, ptr %.sink434, align 8, !tbaa !182
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 40
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(64) %.sink434, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.w, %bb.z, %bb.x
  %.0 = phi i32 [ 2, %bb.z ], [ 2, %bb.w ], [ 2, %bb.x ], [ 1, %.critedge.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.cl

bb.ab:                                            ; preds = %bb.a
  %i.mg = tail call noundef i32 @_ZN4llvm15LegalizerHelper21moreElementsVectorPhiERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 poison, i64 %3) ; 0 uses
  br label %bb.cl

bb.ac:                                            ; preds = %bb.a
  %i.mh = tail call noundef i32 @_ZN4llvm15LegalizerHelper25moreElementsVectorShuffleERNS_12MachineInstrEjNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3)
  br label %bb.cl

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  %i.mi = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  store ptr %i.mi, ptr %35, align 8, !tbaa !228
  %i.mj = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 9 uses
  store i32 0, ptr %i.mj, align 8, !tbaa !227
  %i.mk = getelementptr inbounds nuw i8, ptr %35, i64 12 ; 3 uses
  store i32 8, ptr %i.mk, align 4, !tbaa !239
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !225 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mo = load i24, ptr %i.mn, align 8
  %i.mp = zext i24 %i.mo to i64                   ; 2 uses
  %i.mq = call noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.mr = zext i32 %i.mq to i64                   ; 2 uses
  %i.ms = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %i.mp
  %.not169380 = icmp samesign eq i64 %i.mr, %i.mp
  br i1 %.not169380, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.mt = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %i.mr
  %i.mu = getelementptr inbounds nuw i8, ptr %36, i64 16
  br label %bb.ae

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit, %bb.ad
  %i.mv = trunc i64 %3 to i1
  br i1 %i.mv, label %._crit_edge383, label %_ZNK4llvm3LLT14getNumElementsEv.exit.lr.ph

_ZNK4llvm3LLT14getNumElementsEv.exit.lr.ph:       ; preds = %._crit_edge
  %i.mw = load i32, ptr %i.mj, align 8, !tbaa !227 ; 3 uses
  %i.mx = trunc i64 %3 to i32                     ; 2 uses
  %i.my = lshr i32 %i.mx, 4
  %i.mz = and i32 %i.my, 65535                    ; 2 uses
  %i.na = lshr i64 %3, 60
  %i.nb = add nsw i64 %i.na, -9
  %switch.selectcmp.i.i208 = icmp ult i64 %i.nb, -4 ; 2 uses
  %i.nc = icmp slt i64 %3, -8070450532247928832
  %.mask.i.i.i = and i64 %3, -1152921504606846976 ; 2 uses
  %i.nd = and i64 %3, 1152921504338411520
  %i.ne = lshr i32 %i.mx, 20
  %i.nf = and i32 %i.ne, 255                      ; 2 uses
  %i.ng = shl nuw nsw i32 %i.nf, 20
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = icmp eq i64 %.mask.i.i.i, 4611686018427387904
  %i.nj = lshr i64 %3, 44
  %i.nk = and i64 %i.nj, 65535
  %i.nl = lshr i64 %3, 28
  %i.nm = and i64 %i.nl, 4294967295
  %i.nn = select i1 %i.ni, i64 %i.nk, i64 %i.nm
  %i.no = shl nuw nsw i64 %i.nn, 28
  %storemerge.i.i.i.i.i210 = or disjoint i64 %i.no, 1152921504606846976
  %i.np = and i64 %3, 1152921504605798400
  %i.nq = or disjoint i64 %i.np, 4611686018427387904
  %i.nr = getelementptr inbounds nuw i8, ptr %38, i64 16
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ns = getelementptr inbounds nuw i8, ptr %37, i64 16
  %umax = call i32 @llvm.umax.i32(i32 %i.mw, i32 %i.mz)
  %brmerge = select i1 %switch.selectcmp.i.i208, i1 true, i1 %i.nc
  %.mux = select i1 %switch.selectcmp.i.i208, i64 %3, i64 %i.nq
  %exitcond.not440.not = icmp ult i32 %i.mw, %i.mz
  br i1 %exitcond.not440.not, label %.lr.ph442.preheader, label %_ZNK4llvm3LLT14getNumElementsEv.exit._crit_edge

.lr.ph442.preheader:                              ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit.lr.ph
  %invariant.op453 = or disjoint i64 %i.nh, 3458764513820540928
  br label %.lr.ph442

bb.ae:                                            ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit
  %.0163381 = phi ptr [ %i.mt, %.lr.ph ], [ %i.oa, %_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.3.0..0163.sroa_idx = getelementptr inbounds nuw i8, ptr %.0163381, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..0163.sroa_idx, align 4, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  store i32 %.sroa.3.0.copyload, ptr %36, align 8, !tbaa !238
  store i32 0, ptr %i.mu, align 8, !tbaa !246
  %i.nt = load i32, ptr %i.mj, align 8, !tbaa !227 ; 2 uses
  %i.nu = load i32, ptr %i.mk, align 4, !tbaa !239
  %.not.i207 = icmp ult i32 %i.nt, %i.nu
  br i1 %.not.i207, label %bb.ag, label %bb.af, !prof !247

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(20) %36)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.nv = zext i32 %i.nt to i64
  %i.nw = load ptr, ptr %35, align 8, !tbaa !228
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %i.nw, i64 %i.nv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.nx, ptr noundef nonnull align 8 dereferenceable(24) %36, i64 24, i1 false)
  %i.ny = load i32, ptr %i.mj, align 8, !tbaa !227
  %i.nz = add i32 %i.ny, 1
  store i32 %i.nz, ptr %i.mj, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  %i.oa = getelementptr inbounds nuw i8, ptr %.0163381, i64 32 ; 2 uses
  %.not169 = icmp eq ptr %i.oa, %i.ms
  br i1 %.not169, label %._crit_edge, label %bb.ae

._crit_edge383:                                   ; preds = %._crit_edge
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit._crit_edge:  ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit212, %_ZNK4llvm3LLT14getNumElementsEv.exit.lr.ph
  %i.ob = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  %i.oc = load ptr, ptr %i.ml, align 8, !tbaa !225
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !226
  store i32 %i.oe, ptr %39, align 8, !tbaa !238
  %i.of = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i32 1, ptr %i.of, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  store i64 %3, ptr %41, align 8, !tbaa !226
  %i.og = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i32 0, ptr %i.og, align 8, !tbaa !243
  %i.oh = load ptr, ptr %35, align 8, !tbaa !228
  %i.oi = load i32, ptr %i.mj, align 8, !tbaa !227
  %i.oj = zext i32 %i.oi to i64
  %i.ok = load ptr, ptr %i.ob, align 8, !tbaa !182
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = call { ptr, ptr } %i.om(ptr noundef nonnull align 8 dereferenceable(96) %i.ob, i32 noundef 83, ptr nonnull %41, i64 1, ptr %i.oh, i64 %i.oj, i64 0) #19 ; 2 uses
  %i.oo = extractvalue { ptr, ptr } %i.on, 0
  %i.op = extractvalue { ptr, ptr } %i.on, 1
  store ptr %i.oo, ptr %40, align 8, !tbaa !262
  %.sroa.4290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %i.op, ptr %.sroa.4290.0..sroa_idx, align 8, !tbaa !264
  %i.oq = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i32 1, ptr %i.oq, align 8, !tbaa !246
  %i.or = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder33buildDeleteTrailingVectorElementsERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.ob, ptr noundef nonnull align 8 dereferenceable(20) %39, ptr noundef nonnull align 8 dereferenceable(20) %40) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  %i.os = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  %i.ot = load ptr, ptr %35, align 8, !tbaa !228  ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.mi
  br i1 %i.ou, label %_ZN4llvm11SmallVectorINS_5SrcOpELj8EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit._crit_edge
  call void @free(ptr noundef %i.ot) #19
  br label %_ZN4llvm11SmallVectorINS_5SrcOpELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_5SrcOpELj8EED2Ev.exit:   ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit._crit_edge, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.cl

.lr.ph442:                                        ; preds = %.lr.ph442.preheader, %_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit212
  %.0164382441 = phi i32 [ %i.po, %_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit212 ], [ %i.mw, %.lr.ph442.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.ov = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  br i1 %brmerge, label %_ZNK4llvm3LLT13getScalarTypeEv.exit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph442
  switch i64 %.mask.i.i.i, label %_ZNK4llvm3LLT13getScalarTypeEv.exit [
    i64 8070450532247928832, label %bb.aj
    i64 6917529027641081856, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ow = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.ox = trunc nuw i8 %i.ow to i1
  %i.oy = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.nf) #19
  %i.oz = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.oy) #19
  %i.pa = zext i32 %i.oz to i64
  %i.pb = shl nuw nsw i64 %i.pa, 28               ; 2 uses
  br i1 %i.ox, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %storemerge.i.i.i.i.i.i = or disjoint i64 %i.pb, 1152921504606846976
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.al:                                            ; preds = %bb.aj
  %.reass = or disjoint i64 %i.pb, %invariant.op453
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

bb.am:                                            ; preds = %bb.ai
  %i.pc = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.pd = trunc nuw i8 %i.pc to i1
  %.sroa.0.0.v.i.i.i = select i1 %i.pd, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i.i = or disjoint i64 %.sroa.0.0.v.i.i.i, %i.nd
  br label %_ZNK4llvm3LLT13getScalarTypeEv.exit

_ZNK4llvm3LLT13getScalarTypeEv.exit:              ; preds = %.lr.ph442, %bb.ai, %bb.ak, %bb.al, %bb.am
  %.sroa.0.0.i209 = phi i64 [ %storemerge.i.i.i.i.i.i, %bb.ak ], [ %.mux, %.lr.ph442 ], [ %storemerge.i.i.i.i.i210, %bb.ai ], [ %.sroa.0.0.i6.i.i, %bb.am ], [ %.reass, %bb.al ]
  store i64 %.sroa.0.0.i209, ptr %38, align 8, !tbaa !226
  store i32 0, ptr %i.nr, align 8, !tbaa !243
  %i.pe = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.ov, ptr noundef nonnull align 8 dereferenceable(20) %38) #19 ; 2 uses
  %i.pf = extractvalue { ptr, ptr } %i.pe, 0
  %i.pg = extractvalue { ptr, ptr } %i.pe, 1
  store ptr %i.pf, ptr %37, align 8, !tbaa !262
  store ptr %i.pg, ptr %.sroa.4292.0..sroa_idx, align 8, !tbaa !264
  store i32 1, ptr %i.ns, align 8, !tbaa !246
  %i.ph = load i32, ptr %i.mj, align 8, !tbaa !227 ; 2 uses
  %i.pi = load i32, ptr %i.mk, align 4, !tbaa !239
  %.not.i211 = icmp ult i32 %i.ph, %i.pi
  br i1 %.not.i211, label %bb.ao, label %bb.an, !prof !247

bb.an:                                            ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(20) %37)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit212

bb.ao:                                            ; preds = %_ZNK4llvm3LLT13getScalarTypeEv.exit
  %i.pj = zext i32 %i.ph to i64
  %i.pk = load ptr, ptr %35, align 8, !tbaa !228
  %i.pl = getelementptr inbounds nuw [24 x i8], ptr %i.pk, i64 %i.pj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.pl, ptr noundef nonnull align 8 dereferenceable(24) %37, i64 24, i1 false)
  %i.pm = load i32, ptr %i.mj, align 8, !tbaa !227
  %i.pn = add i32 %i.pm, 1
  store i32 %i.pn, ptr %i.mj, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit212

_ZN4llvm23SmallVectorTemplateBaseINS_5SrcOpELb1EE9push_backERKS1_.exit212: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %i.po = add i32 %.0164382441, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.po, %umax
  br i1 %exitcond.not, label %_ZNK4llvm3LLT14getNumElementsEv.exit._crit_edge, label %.lr.ph442

bb.ap:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !265, !nonnull !179, !align !180 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !182
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  %i.pt = load ptr, ptr %i.ps, align 8
  tail call void %i.pt(ptr noundef nonnull align 8 dereferenceable(64) %i.pq, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.pu = icmp eq i32 %2, 0
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !212, !nonnull !179, !align !180 ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !225 ; 2 uses
  br i1 %i.pu, label %bb.aq, label %bb.ba

bb.aq:                                            ; preds = %bb.ap
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 36
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !226 ; 2 uses
  %i.qb = icmp slt i32 %i.qa, 0
  br i1 %i.qb, label %bb.ar, label %_ZNK4llvm3LLT14getElementTypeEv.exit221

bb.ar:                                            ; preds = %bb.aq
  %i.qc = and i32 %i.qa, 2147483647               ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pw, i64 472
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !227
  %i.qf = icmp ugt i32 %i.qe, %i.qc
  br i1 %i.qf, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit214, label %_ZNK4llvm3LLT14getElementTypeEv.exit221

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit214: ; preds = %bb.ar
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pw, i64 464
  %i.qh = zext nneg i32 %i.qc to i64
  %i.qi = load ptr, ptr %i.qg, align 8, !tbaa !228
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qh
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !226 ; 7 uses
  %i.ql = icmp slt i64 %i.qk, -8070450532247928832
  br i1 %i.ql, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit214
  %i.qm = and i64 %i.qk, 1152921504605798400
  %i.qn = or disjoint i64 %i.qm, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit221

bb.at:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit214
  %.mask.i.i215 = and i64 %i.qk, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i215, label %bb.ay [
    i64 8070450532247928832, label %bb.au
    i64 6917529027641081856, label %bb.ax
  ]

bb.au:                                            ; preds = %bb.at
  %i.qo = trunc i64 %i.qk to i32
  %i.qp = lshr i32 %i.qo, 20
  %i.qq = and i32 %i.qp, 255                      ; 2 uses
  %i.qr = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.qs = trunc nuw i8 %i.qr to i1
  %i.qt = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.qq) #19
  %i.qu = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.qt) #19
  %i.qv = zext i32 %i.qu to i64
  %i.qw = shl nuw nsw i64 %i.qv, 28               ; 2 uses
  br i1 %i.qs, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %storemerge.i.i.i.i.i219 = or disjoint i64 %i.qw, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit221

bb.aw:                                            ; preds = %bb.au
  %i.qx = shl nuw nsw i32 %i.qq, 20
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = or disjoint i64 %i.qw, %i.qy
  %i.ra = or disjoint i64 %i.qz, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit221

bb.ax:                                            ; preds = %bb.at
  %i.rb = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.rc = trunc nuw i8 %i.rb to i1
  %i.rd = and i64 %i.qk, 1152921504338411520
  %.sroa.0.0.v.i.i216 = select i1 %i.rc, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i217 = or disjoint i64 %.sroa.0.0.v.i.i216, %i.rd
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit221

bb.ay:                                            ; preds = %bb.at
  %i.re = icmp eq i64 %.mask.i.i215, 4611686018427387904
  %i.rf = lshr i64 %i.qk, 44
  %i.rg = and i64 %i.rf, 65535
  %i.rh = lshr i64 %i.qk, 28
  %i.ri = and i64 %i.rh, 4294967295
  %spec.select371 = select i1 %i.re, i64 %i.rg, i64 %i.ri
  %i.rj = shl nuw nsw i64 %spec.select371, 28
  %i.rk = or disjoint i64 %i.rj, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit221

_ZNK4llvm3LLT14getElementTypeEv.exit221:          ; preds = %bb.ar, %bb.aq, %bb.ay, %bb.as, %bb.av, %bb.aw, %bb.ax
  %.sroa.0.0.i218 = phi i64 [ %i.qn, %bb.as ], [ %storemerge.i.i.i.i.i219, %bb.av ], [ %.sroa.0.0.i6.i217, %bb.ax ], [ %i.ra, %bb.aw ], [ 1152921504606846976, %bb.aq ], [ %i.rk, %bb.ay ], [ 1152921504606846976, %bb.ar ] ; 2 uses
  %i.rl = lshr i64 %3, 60
  %i.rm = add nsw i64 %i.rl, -5
  %switch.selectcmp.i.i222 = icmp ult i64 %i.rm, 4
  br i1 %switch.selectcmp.i.i222, label %bb.az, label %_ZNK4llvm3LLT17changeElementTypeES0_.exit227

bb.az:                                            ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit221
  %i.rn = lshr i64 %3, 4
  %.sroa.0.0.insert.ext.i.i.i.i224 = and i64 %i.rn, 65535
  %i.ro = shl i64 %3, 32
  %.sroa.2.0.insert.shift.i.i.i.i225 = and i64 %i.ro, 4294967296
  %.sroa.0.0.insert.insert.i.i.i.i226 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i225, %.sroa.0.0.insert.ext.i.i.i.i224
  %i.rp = tail call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %.sroa.0.0.insert.insert.i.i.i.i226, i64 %.sroa.0.0.i218)
  br label %_ZNK4llvm3LLT17changeElementTypeES0_.exit227

bb.ba:                                            ; preds = %bb.ap
  %i.rq = getelementptr inbounds nuw i8, ptr %i.py, i64 4
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !226 ; 2 uses
  %i.rs = icmp slt i32 %i.rr, 0
  br i1 %i.rs, label %bb.bb, label %_ZNK4llvm3LLT14getElementTypeEv.exit236

bb.bb:                                            ; preds = %bb.ba
  %i.rt = and i32 %i.rr, 2147483647               ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pw, i64 472
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !227
  %i.rw = icmp ugt i32 %i.rv, %i.rt
  br i1 %i.rw, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit229, label %_ZNK4llvm3LLT14getElementTypeEv.exit236

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit229: ; preds = %bb.bb
  %i.rx = getelementptr inbounds nuw i8, ptr %i.pw, i64 464
  %i.ry = zext nneg i32 %i.rt to i64
  %i.rz = load ptr, ptr %i.rx, align 8, !tbaa !228
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.ry
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !226 ; 7 uses
  %i.sc = icmp slt i64 %i.sb, -8070450532247928832
  br i1 %i.sc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit229
  %i.sd = and i64 %i.sb, 1152921504605798400
  %i.se = or disjoint i64 %i.sd, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit236

bb.bd:                                            ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit229
  %.mask.i.i230 = and i64 %i.sb, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i230, label %bb.bi [
    i64 8070450532247928832, label %bb.be
    i64 6917529027641081856, label %bb.bh
  ]

bb.be:                                            ; preds = %bb.bd
  %i.sf = trunc i64 %i.sb to i32
  %i.sg = lshr i32 %i.sf, 20
  %i.sh = and i32 %i.sg, 255                      ; 2 uses
  %i.si = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.sj = trunc nuw i8 %i.si to i1
  %i.sk = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.sh) #19
  %i.sl = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.sk) #19
  %i.sm = zext i32 %i.sl to i64
  %i.sn = shl nuw nsw i64 %i.sm, 28               ; 2 uses
  br i1 %i.sj, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %storemerge.i.i.i.i.i234 = or disjoint i64 %i.sn, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit236
end_hunk_0
begin_hunk_1_@_ZN4llvm15LegalizerHelper32fewerElementsVectorSeqReductionsERNS_12MachineInstrEjNS_3LLTE:bb.a
  store i32 0, ptr %i.y, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 %.sroa.014.040, ptr %8, align 8, !tbaa !238
  store i32 0, ptr %i.z, align 8, !tbaa !246
  %i.ak = load ptr, ptr %6, align 8, !tbaa !228
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %.sroa.05.0.copyload = load i32, ptr %i.al, align 4, !tbaa !238
  store i32 %.sroa.05.0.copyload, ptr %i.aa, align 8, !tbaa !238
  store i32 0, ptr %i.ab, align 8, !tbaa !246
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !182
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call { ptr, ptr } %i.ao(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i32 noundef %i.m, ptr nonnull %7, i64 1, ptr nonnull %8, i64 2, i64 0) #19
  %i.aq = extractvalue { ptr, ptr } %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !225
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !226 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !1061

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit
  %.0 = phi i32 [ 1, %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit ], [ 2, %bb.c ], [ 2, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @_ZN4llvm15LegalizerHelper26fewerElementsVectorShuffleERNS_12MachineInstrEjNS_3LLTE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::tuple.332", align 8    ; 9 uses
  %5 = alloca %"class.llvm::SmallVector.172", align 8 ; 9 uses
  %6 = alloca %"class.llvm::SmallVector.172", align 8 ; 9 uses
  %7 = alloca [4 x %"class.llvm::Register"], align 16 ; 7 uses
  %8 = alloca %"class.llvm::SmallVector.537", align 8 ; 12 uses
  %.sroa.0 = alloca i32, align 4                  ; 6 uses
  %.sroa.6 = alloca i32, align 4                  ; 6 uses
  %9 = alloca %"class.llvm::SmallVector.428", align 8 ; 12 uses
  %10 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %11 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %12 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %13 = alloca %"class.llvm::SrcOp", align 8      ; 6 uses
  %14 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %15 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %16 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %17 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %18 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %19 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %20 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %21 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %22 = alloca %"class.llvm::SrcOp", align 8      ; 5 uses
  %23 = alloca %"class.llvm::DstOp", align 8      ; 5 uses
  %24 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 7 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNK4llvm12MachineInstr16getFirst3RegLLTsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.332") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !225
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !452 ; 2 uses
  %i.i = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br i1 %i.i, label %bb.c, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.j, label %bb.d, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8              ; 3 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.e, label %_ZNK4llvm3LLT14getNumElementsEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit:             ; preds = %bb.d
  %i.m = trunc i64 %i.k to i32
  %i.n = lshr i32 %i.m, 4
  %i.o = and i32 %i.n, 65535
  %i.p = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.o)
  %or.cond = icmp eq i32 %i.p, 1
  br i1 %or.cond, label %bb.f, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit
  %.sroa.0152.0.extract.trunc = lshr i64 %i.k, 5
  %.sroa.0.0.insert.ext.i.i116 = and i64 %.sroa.0152.0.extract.trunc, 32767
  %i.q = call i64 @_ZNK4llvm3LLT18changeElementCountENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 %.sroa.0.0.insert.ext.i.i116) ; 17 uses
  %i.r = lshr i64 %i.q, 60
  %i.s = add nsw i64 %i.r, -5
  %switch.selectcmp.i = icmp ult i64 %i.s, 4
  br i1 %switch.selectcmp.i, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = trunc i64 %i.q to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = trunc i64 %i.q to i1
  br i1 %i.t, label %bb.h, label %_ZNK4llvm3LLT14getNumElementsEv.exit118

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit118:          ; preds = %bb.g
  %i.u = trunc i64 %i.q to i32                    ; 2 uses
  %i.v = lshr i32 %i.u, 4
  %i.w = and i32 %i.v, 65535
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZNK4llvm3LLT14getNumElementsEv.exit118
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.u, %_ZNK4llvm3LLT14getNumElementsEv.exit118 ]
  %i.x = phi i32 [ 1, %._crit_edge ], [ %i.w, %_ZNK4llvm3LLT14getNumElementsEv.exit118 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !228
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !227
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 12, ptr %i.aa, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !228
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !227
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 12, ptr %i.ad, align 4, !tbaa !239
  %.sroa.066.0.copyload = load i32, ptr %i.c, align 8, !tbaa !238
  %i.ae = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !212, !nonnull !179, !align !180
  call void @_ZN4llvm12extractPartsENS_8RegisterENS_3LLTEiRNS_15SmallVectorImplIS0_EERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %.sroa.066.0.copyload, i64 %i.q, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noundef nonnull align 8 dereferenceable(520) %i.ag) #19
  %.sroa.064.0.copyload = load i32, ptr %i.e, align 8, !tbaa !238
  %i.ah = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !212, !nonnull !179, !align !180
  call void @_ZN4llvm12extractPartsENS_8RegisterENS_3LLTEiRNS_15SmallVectorImplIS0_EERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %.sroa.064.0.copyload, i64 %i.q, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull align 8 dereferenceable(520) %i.ai) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.aj = load ptr, ptr %5, align 8, !tbaa !228
  %i.ak = load ptr, ptr %6, align 8, !tbaa !228
  %i.al = load <2 x i32>, ptr %i.aj, align 4, !tbaa !238
  %i.am = load <2 x i32>, ptr %i.ak, align 4, !tbaa !238
  %i.an = shufflevector <2 x i32> %i.al, <2 x i32> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.an, ptr %7, align 16, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ao, ptr %8, align 8, !tbaa !228
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 9 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !227
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 16, ptr %i.aq, align 4, !tbaa !239
  %.not189 = icmp eq i32 %i.x, 0
  %i.ar = icmp slt i64 %i.q, -8070450532247928832
  %.mask.i.i = and i64 %i.q, -1152921504606846976 ; 2 uses
  %i.as = and i64 %i.q, 1152921504338411520
  %i.at = lshr i32 %.pre-phi, 20
  %i.au = and i32 %i.at, 255                      ; 2 uses
  %i.av = shl nuw nsw i32 %i.au, 20
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.ay = lshr i64 %i.q, 44
  %i.az = and i64 %i.ay, 65535
  %i.ba = lshr i64 %i.q, 28
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = select i1 %i.ax, i64 %i.az, i64 %i.bb
  %i.bd = shl nuw nsw i64 %i.bc, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.bd, 1152921504606846976
  %i.be = and i64 %i.q, 1152921504605798400
  %i.bf = or disjoint i64 %i.be, 4611686018427387904
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bp = icmp eq i32 %i.x, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %umax = call i32 @llvm.umax.i32(i32 %i.x, i32 1)
  %i.bx = zext nneg i32 %i.x to i64               ; 2 uses
  %wide.trip.count200 = zext nneg i32 %umax to i64
  %invariant.op223 = or disjoint i64 %i.aw, 3458764513820540928
  br label %bb.n

bb.j:                                             ; preds = %bb.ar
  %i.by = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %.sroa.05.0.copyload = load i32, ptr %i.a, align 8, !tbaa !238
  store i32 %.sroa.05.0.copyload, ptr %23, align 8, !tbaa !238
  %i.bz = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 1, ptr %i.bz, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  store i32 %.sroa.0141.1, ptr %24, align 8, !tbaa !238
  %i.ca = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 0, ptr %i.ca, align 8, !tbaa !246
  %i.cb = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 %.sroa.0151.1, ptr %i.cb, align 8, !tbaa !238
  %i.cc = getelementptr inbounds nuw i8, ptr %24, i64 40
  store i32 0, ptr %i.cc, align 8, !tbaa !246
  %i.cd = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder19buildMergeLikeInstrERKNS_5DstOpESt16initializer_listINS_5SrcOpEE(ptr noundef nonnull align 8 dereferenceable(96) %i.by, ptr noundef nonnull align 8 dereferenceable(20) %23, ptr nonnull %24, i64 2) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.ce = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19 ; 0 uses
  %i.cf = load ptr, ptr %8, align 8, !tbaa !228   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ao
  br i1 %i.cg, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.cf) #19
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ch = load ptr, ptr %6, align 8, !tbaa !228   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ab
  br i1 %i.ci, label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit
  call void @free(ptr noundef %i.ch) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cj = load ptr, ptr %5, align 8, !tbaa !228   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.y
  br i1 %i.ck, label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit119, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit
  call void @free(ptr noundef %i.cj) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit119

_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit119: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj12EED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.n:                                             ; preds = %bb.i, %bb.ar
  %.not111 = phi i1 [ true, %bb.i ], [ false, %bb.ar ] ; 9 uses
  %indvars.iv202 = phi i64 [ 0, %bb.i ], [ %i.bx, %bb.ar ] ; 2 uses
  %.sroa.0151.0187 = phi i32 [ 0, %bb.i ], [ %.sroa.0151.1, %bb.ar ] ; 4 uses
  %.sroa.0141.0186 = phi i32 [ 0, %bb.i ], [ %.sroa.0141.1, %bb.ar ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i32 -1, ptr %.sroa.0, align 4
  store i32 -1, ptr %.sroa.6, align 4
  br i1 %.not189, label %.cont145, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv202
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cl = load i32, ptr %gep, align 4, !tbaa !238 ; 2 uses
  %i.cm = udiv i32 %i.cl, %i.x                    ; 5 uses
  %.recomposed = urem i32 %i.cl, %i.x
  %.not112 = icmp ult i32 %i.cm, 4
  br i1 %.not112, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.cn = load i32, ptr %i.ap, align 8, !tbaa !227 ; 2 uses
  %i.co = load i32, ptr %i.aq, align 4, !tbaa !239
  %.not.i = icmp ult i32 %i.cn, %i.co
  br i1 %.not.i, label %bb.q, label %bb.p, !prof !247

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef -1)
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.cp = zext i32 %i.cn to i64
  %i.cq = load ptr, ptr %8, align 8, !tbaa !228
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cp
  store i32 -1, ptr %i.cr, align 1
  %i.cs = load i32, ptr %i.ap, align 8, !tbaa !227
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.ap, align 8, !tbaa !227
  br label %bb.y

bb.r:                                             ; preds = %.lr.ph
  %i.cu = mul nuw nsw i32 %i.cm, %i.x             ; 0 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0.206 = load i32, ptr %.sroa.0, align 4, !tbaa !238 ; 2 uses
  %i.cv = icmp eq i32 %.sroa.0.0..sroa.0.0..sroa.0.0.206, %i.cm
  br i1 %i.cv, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = icmp eq i32 %.sroa.0.0..sroa.0.0..sroa.0.0.206, -1
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.v, %bb.s
  %.0102183.lcssa192.wide = phi i32 [ 0, %bb.s ], [ %i.x, %bb.v ]
  %.lcssa190.sroa.phi = phi ptr [ %.sroa.0, %bb.s ], [ %.sroa.6, %bb.v ]
  store i32 %i.cm, ptr %.lcssa190.sroa.phi, align 4, !tbaa !238
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %.sroa.6.0..sroa.6.0..sroa.6.4.207 = load i32, ptr %.sroa.6, align 4, !tbaa !238 ; 2 uses
  %i.cx = icmp eq i32 %.sroa.6.0..sroa.6.0..sroa.6.4.207, %i.cm
  br i1 %i.cx, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = icmp eq i32 %.sroa.6.0..sroa.6.0..sroa.6.4.207, -1
  br i1 %i.cy, label %bb.t, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread169

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread169: ; preds = %bb.v
  br i1 %i.ar, label %_ZNK4llvm3LLT14getElementTypeEv.exit, label %bb.z

.loopexit:                                        ; preds = %bb.r, %bb.u, %bb.t
  %.0102183194 = phi i32 [ %.0102183.lcssa192.wide, %bb.t ], [ 0, %bb.r ], [ %i.x, %bb.u ]
  %i.cz = add i32 %.0102183194, %.recomposed      ; 2 uses
  %i.da = load i32, ptr %i.ap, align 8, !tbaa !227 ; 2 uses
  %i.db = load i32, ptr %i.aq, align 4, !tbaa !239
  %.not.i120 = icmp ult i32 %i.da, %i.db
  br i1 %.not.i120, label %bb.x, label %bb.w, !prof !247

bb.w:                                             ; preds = %.loopexit
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %i.cz)
  br label %bb.y

bb.x:                                             ; preds = %.loopexit
  %i.dc = zext i32 %i.da to i64
  %i.dd = load ptr, ptr %8, align 8, !tbaa !228
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dc
  store i32 %i.cz, ptr %i.de, align 1
  %i.df = load i32, ptr %i.ap, align 8, !tbaa !227
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.ap, align 8, !tbaa !227
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.p, %bb.w, %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bx
  br i1 %exitcond.not, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, label %.lr.ph, !llvm.loop !1062

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread169
  switch i64 %.mask.i.i, label %_ZNK4llvm3LLT14getElementTypeEv.exit [
    i64 8070450532247928832, label %bb.aa
    i64 6917529027641081856, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dh = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.au) #19
  %i.dk = call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.dj) #19
  %i.dl = zext i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 28               ; 2 uses
  br i1 %i.di, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %storemerge.i.i.i.i.i = or disjoint i64 %i.dm, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.ac:                                            ; preds = %bb.aa
  %.reass = or disjoint i64 %i.dm, %invariant.op223
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.ad:                                            ; preds = %bb.z
  %i.dn = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !292, !range !293, !noundef !179
  %i.do = trunc nuw i8 %i.dn to i1
  %.sroa.0.0.v.i.i = select i1 %i.do, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.as
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.z, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread169, %bb.ab, %bb.ac, %bb.ad
  %.sroa.0.0.i = phi i64 [ %storemerge.i.i.i.i.i, %bb.ab ], [ %i.bf, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread169 ], [ %.sroa.0.0.i6.i, %bb.ad ], [ %.reass, %bb.ac ], [ %storemerge.i.i.i.i, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.bg, ptr %9, align 8, !tbaa !228
  store i32 0, ptr %i.bh, align 8, !tbaa !227
  store i32 16, ptr %i.bi, align 4, !tbaa !239
  %invariant.gep221 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv202
  br label %bb.af

.cont148:                                         ; preds = %bb.am
  %i.dp = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store i64 %i.q, ptr %15, align 8, !tbaa !226
  store i32 0, ptr %i.bo, align 8, !tbaa !243
  %i.dq = load ptr, ptr %9, align 8, !tbaa !228
  %i.dr = load i32, ptr %i.bh, align 8, !tbaa !227
  %i.ds = zext i32 %i.dr to i64
  %i.dt = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder16buildBuildVectorERKNS_5DstOpENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, ptr noundef nonnull align 8 dereferenceable(20) %15, ptr %i.dq, i64 %i.ds) #19
  %i.du = extractvalue { ptr, ptr } %i.dt, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !225
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !226 ; 2 uses
  %spec.select = select i1 %.not111, i32 %i.dy, i32 %.sroa.0141.0186
  %spec.select172 = select i1 %.not111, i32 %.sroa.0151.0187, i32 %i.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.dz = load ptr, ptr %9, align 8, !tbaa !228   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bg
  br i1 %i.ea, label %_ZN4llvm11SmallVectorINS_8RegisterELj16EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %.cont148
  call void @free(ptr noundef %i.dz) #19
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj16EED2Ev.exit: ; preds = %.cont148, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ar

bb.af:                                            ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit, %bb.am
  %indvars.iv197 = phi i64 [ 0, %_ZNK4llvm3LLT14getElementTypeEv.exit ], [ %indvars.iv.next198, %bb.am ] ; 2 uses
  %gep222 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep221, i64 %indvars.iv197
  %i.eb = load i32, ptr %gep222, align 4, !tbaa !238 ; 2 uses
  %i.ec = udiv i32 %i.eb, %i.x                    ; 3 uses
  %.recomposed223 = urem i32 %i.eb, %i.x
  %.not114 = icmp ult i32 %i.ec, 4
  br i1 %.not114, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i64 %.sroa.0.0.i, ptr %10, align 8, !tbaa !226
  store i32 0, ptr %i.bj, align 8, !tbaa !243
  %i.ee = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.ed, ptr noundef nonnull align 8 dereferenceable(20) %10) #19
  %i.ef = extractvalue { ptr, ptr } %i.ee, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !225
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !226 ; 2 uses
  %i.ek = load i32, ptr %i.bh, align 8, !tbaa !227 ; 2 uses
  %i.el = load i32, ptr %i.bi, align 4, !tbaa !239
  %.not.i122 = icmp ult i32 %i.ek, %i.el
  br i1 %.not.i122, label %bb.ai, label %bb.ah, !prof !247

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 %i.ej)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.em = zext i32 %i.ek to i64
  %i.en = load ptr, ptr %9, align 8, !tbaa !228
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.em
  store i32 %i.ej, ptr %i.eo, align 1
  %i.ep = load i32, ptr %i.bh, align 8, !tbaa !227
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.bh, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.am

bb.aj:                                            ; preds = %bb.af
  %i.er = zext nneg i32 %i.ec to i64
  %i.es = mul nuw nsw i32 %i.ec, %i.x             ; 0 uses
  %i.et = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i64 %.sroa.0.0.i, ptr %11, align 8, !tbaa !226
  store i32 0, ptr %i.bk, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.er
  %.sroa.021.0.copyload = load i32, ptr %i.eu, align 4, !tbaa !238
  store i32 %.sroa.021.0.copyload, ptr %12, align 8, !tbaa !238
  store i32 0, ptr %i.bl, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store i64 1152921513196781568, ptr %14, align 8, !tbaa !226
  store i32 0, ptr %i.bm, align 8, !tbaa !243
  %i.ev = sext i32 %.recomposed223 to i64
  %i.ew = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder13buildConstantERKNS_5DstOpEl(ptr noundef nonnull align 8 dereferenceable(96) %i.et, ptr noundef nonnull align 8 dereferenceable(20) %14, i64 noundef %i.ev) #19 ; 2 uses
  %i.ex = extractvalue { ptr, ptr } %i.ew, 0
  %i.ey = extractvalue { ptr, ptr } %i.ew, 1
  store ptr %i.ex, ptr %13, align 8, !tbaa !262
  store ptr %i.ey, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !264
  store i32 1, ptr %i.bn, align 8, !tbaa !246
  %i.ez = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder25buildExtractVectorElementERKNS_5DstOpERKNS_5SrcOpES6_(ptr noundef nonnull align 8 dereferenceable(96) %i.et, ptr noundef nonnull align 8 dereferenceable(20) %11, ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %13) #19
  %i.fa = extractvalue { ptr, ptr } %i.ez, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !225
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !226 ; 2 uses
  %i.ff = load i32, ptr %i.bh, align 8, !tbaa !227 ; 2 uses
  %i.fg = load i32, ptr %i.bi, align 4, !tbaa !239
  %.not.i123 = icmp ult i32 %i.ff, %i.fg
  br i1 %.not.i123, label %bb.al, label %bb.ak, !prof !247

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 %i.fe)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit124

bb.al:                                            ; preds = %bb.aj
  %i.fh = zext i32 %i.ff to i64
  %i.fi = load ptr, ptr %9, align 8, !tbaa !228
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fh
  store i32 %i.fe, ptr %i.fj, align 1
  %i.fk = load i32, ptr %i.bh, align 8, !tbaa !227
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.bh, align 8, !tbaa !227
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit124

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit124: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.am

bb.am:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit124, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE9push_backES1_.exit
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %.cont148, label %bb.af, !llvm.loop !1063

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.y
  %.sroa.0.0..sroa.0.0..sroa.0.0..pre = load i32, ptr %.sroa.0, align 4, !tbaa !238 ; 3 uses
  %i.fm = icmp eq i32 %.sroa.0.0..sroa.0.0..sroa.0.0..pre, -1
  br i1 %i.fm, label %.cont145, label %bb.an

.cont145:                                         ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.fn = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store i64 %i.q, ptr %16, align 8, !tbaa !226
  store i32 0, ptr %i.bw, align 8, !tbaa !243
  %i.fo = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildUndefERKNS_5DstOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.fn, ptr noundef nonnull align 8 dereferenceable(20) %16) #19
  %i.fp = extractvalue { ptr, ptr } %i.fo, 1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !225
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !226 ; 2 uses
  %spec.select173 = select i1 %.not111, i32 %i.ft, i32 %.sroa.0141.0186
  %spec.select174 = select i1 %.not111, i32 %.sroa.0151.0187, i32 %i.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.ar

bb.an:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  br i1 %i.bp, label %.cont142, label %bb.ao

.cont142:                                         ; preds = %bb.an
  %i.fu = load ptr, ptr %0, align 8, !tbaa !192, !nonnull !179, !align !180
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store i64 %i.q, ptr %17, align 8, !tbaa !226
  store i32 0, ptr %i.bu, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.fv = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..pre to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.fv
  %.sroa.013.0.copyload = load i32, ptr %i.fw, align 4, !tbaa !238
  store i32 %.sroa.013.0.copyload, ptr %18, align 8, !tbaa !238
  store i32 0, ptr %i.bv, align 8, !tbaa !246
  %i.fx = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildCopyERKNS_5DstOpERKNS_5SrcOpE(ptr noundef nonnull align 8 dereferenceable(96) %i.fu, ptr noundef nonnull align 8 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(20) %18) #19
  %i.fy = extractvalue { ptr, ptr } %i.fx, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !225
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !226 ; 2 uses
  %spec.select175 = select i1 %.not111, i32 %i.gc, i32 %.sroa.0141.0186
  %spec.select176 = select i1 %.not111, i32 %.sroa.0151.0187, i32 %i.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.gd = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..pre to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.gd
end_hunk_1
