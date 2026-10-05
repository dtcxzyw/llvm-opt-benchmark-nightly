Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLVMIRToLLVMTranslation?download=true
inline.NumInlined: 7789
inline.NumDeleted: 2071
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK12_GLOBAL__N_132LLVMDialectLLVMIRImportInterface16setMetadataAttrsERN4mlir9OpBuilderEjPN4llvm6MDNodeEPNS1_9OperationERNS1_4LLVM12ModuleImportE:bb.a
  %i.ap = and i64 %i.ao, 15
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aq
  br label %_ZNK4llvm6MDNode10getOperandEj.exit95.i

_ZNK4llvm6MDNode10getOperandEj.exit95.i:          ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i94.i = phi ptr [ %i.ar, %bb.p ], [ %i.an, %bb.o ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i94.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4, !tbaa !68
  %.not.i.i96.i = icmp eq i8 %i.au, 1
  br i1 %.not.i.i96.i, label %bb.q, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.q:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit95.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !79
  %i.ay = icmp eq i8 %i.ax, 5
  br i1 %i.ay, label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i.i, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i.i: ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !81 ; 3 uses
  %i.bc = icmp ult i32 %i.bb, 65                  ; 2 uses
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i.i
  %.neg.i.i.i.i.i = add nsw i32 %i.bb, -64
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !57
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = add nsw i32 %.neg.i.i.i.i.i, %i.bf
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i

bb.s:                                             ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i.i
  %i.bh = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.az) #21
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i:      ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.bg, %bb.r ], [ %i.bh, %bb.s ]
  %i.bi = sub i32 %i.bb, %.0.i.i.i.i.i
  %i.bj = icmp ult i32 %i.bi, 65
  br i1 %i.bj, label %bb.t, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.t:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i
  %i.bk = load ptr, ptr %i.az, align 8
  %spec.select.i.i.i98.i = select i1 %i.bc, ptr %i.az, ptr %i.bk
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i98.i, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.bl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %i.bl, ptr %21, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  store i32 6, ptr %i.bn, align 4, !tbaa !21
  br i1 %.not.i.i83.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bo = trunc i64 %i.z to i32
  %i.bp = lshr i32 %i.bo, 6
  %i.bq = and i32 %i.bp, 15
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit101.i

bb.v:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds i8, ptr %3, i64 -24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !22
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit101.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit101.i:     ; preds = %bb.v, %bb.u
  %.0.i.i100.i = phi i32 [ %i.bs, %bb.v ], [ %i.bq, %bb.u ]
  %i.bt = add i32 %.0.i.i100.i, -2                ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, 6
  br i1 %i.bu, label %bb.w, label %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i

bb.w:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit101.i
  %i.bv = zext i32 %i.bt to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull %i.bl, i64 noundef %i.bv, i64 noundef 8) #18
  %.pre.i = load i64, ptr %i.a, align 8
  br label %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i:    ; preds = %bb.w, %_ZNK4llvm6MDNode14getNumOperandsEv.exit101.i
  %i.bw = phi i64 [ %i.z, %_ZNK4llvm6MDNode14getNumOperandsEv.exit101.i ], [ %.pre.i, %bb.w ] ; 2 uses
  %i.bx = and i64 %i.bw, 2
  %.not.i.i102.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i102.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i
  %i.by = trunc i64 %i.bw to i32
  %i.bz = lshr i32 %i.by, 6
  %i.ca = and i32 %i.bz, 15
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit104.i

bb.y:                                             ; preds = %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i
  %i.cb = getelementptr inbounds i8, ptr %3, i64 -24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !22
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit104.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit104.i:     ; preds = %bb.y, %bb.x
  %.0.i.i103.i = phi i32 [ %i.cc, %bb.y ], [ %i.ca, %bb.x ] ; 2 uses
  %.not7390.i = icmp ugt i32 %.0.i.i103.i, 2
  br i1 %.not7390.i, label %.lr.ph92.i, label %._crit_edge93.i

.lr.ph92.i:                                       ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit104.i
  %i.cd = getelementptr inbounds i8, ptr %3, i64 -32
  %wide.trip.count.i = zext i32 %.0.i.i103.i to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.i, %.lr.ph92.i
  %indvars.iv.i = phi i64 [ 2, %.lr.ph92.i ], [ %indvars.iv.next.i, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.i ] ; 2 uses
  %i.ce = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cf = and i64 %i.ce, 2
  %.not.i.i105.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i105.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !20
  br label %_ZNK4llvm6MDNode10getOperandEj.exit107.i

bb.ab:                                            ; preds = %bb.z
  %i.ch = lshr i64 %i.ce, 2
  %i.ci = and i64 %i.ch, 15
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cj
  br label %_ZNK4llvm6MDNode10getOperandEj.exit107.i

_ZNK4llvm6MDNode10getOperandEj.exit107.i:         ; preds = %bb.ab, %bb.aa
  %.sroa.0.0.i.i106.i = phi ptr [ %i.ck, %bb.ab ], [ %i.cg, %bb.aa ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i106.i, i64 %indvars.iv.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !65 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !68
  %.not.i.i108.i = icmp eq i8 %i.cn, 1
  br i1 %.not.i.i108.i, label %bb.ac, label %.thread43.i

bb.ac:                                            ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit107.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !75 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !79
  %i.cr = icmp eq i8 %i.cq, 5
  br i1 %i.cr, label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i113.i, label %.thread43.i

_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i113.i: ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !81 ; 3 uses
  %i.cv = icmp ult i32 %i.cu, 65                  ; 2 uses
  br i1 %i.cv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i113.i
  %.neg.i.i.i.i118.i = add nsw i32 %i.cu, -64
  %i.cw = load i64, ptr %i.cs, align 8, !tbaa !57
  %i.cx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cw, i1 false)
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = add nsw i32 %.neg.i.i.i.i118.i, %i.cy
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i114.i

bb.ae:                                            ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERPNS_8MetadataEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i113.i
  %i.da = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.cs) #21
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i114.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i114.i:   ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i115.i = phi i32 [ %i.cz, %bb.ad ], [ %i.da, %bb.ae ]
  %i.db = sub i32 %i.cu, %.0.i.i.i.i115.i
  %i.dc = icmp ult i32 %i.db, 65
  br i1 %i.dc, label %bb.af, label %.thread43.i

bb.af:                                            ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i114.i
  %i.dd = load ptr, ptr %i.cs, align 8
  %spec.select.i.i.i116.i = select i1 %i.cv, ptr %i.cs, ptr %i.dd
  %.0.i.i.i117.i = load i64, ptr %spec.select.i.i.i116.i, align 8, !tbaa !57 ; 2 uses
  %i.de = load i32, ptr %i.bm, align 8, !tbaa !22 ; 2 uses
  %i.df = load i32, ptr %i.bn, align 4, !tbaa !21
  %.not.i120.i = icmp ult i32 %i.de, %i.df
  br i1 %.not.i120.i, label %bb.ah, label %bb.ag, !prof !43

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %21, i64 noundef %.0.i.i.i117.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.dg = zext i32 %i.de to i64
  %i.dh = load ptr, ptr %21, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg
  store i64 %.0.i.i.i117.i, ptr %i.di, align 1
  %i.dj = load i32, ptr %i.bm, align 8, !tbaa !22
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.bm, align 8, !tbaa !22
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.i

_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.i: ; preds = %bb.ah, %bb.ag
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge93.i, label %bb.z, !llvm.loop !196

._crit_edge93.i:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit104.i
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !83
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !84
  %i.do = icmp ne ptr %i.dn, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  %.not8687.i = icmp eq ptr %4, null
  %.not86.i = or i1 %.not8687.i, %i.do
  br i1 %.not86.i, label %bb.ai, label %.thread45.i

.thread45.i:                                      ; preds = %._crit_edge93.i
  %i.dp = load ptr, ptr %1, align 8, !tbaa !213
  %i.dq = load ptr, ptr %21, align 8, !tbaa !20
  %i.dr = load i32, ptr %i.bm, align 8, !tbaa !22
  %i.ds = zext i32 %i.dr to i64
  %i.dt = call ptr @_ZN4mlir4LLVM22FunctionEntryCountAttr3getEPNS_11MLIRContextEmNS0_16ProfileCountTypeEN4llvm8ArrayRefImEE(ptr noundef %i.dp, i64 noundef %.0.i.i.i.i, i64 noundef %.0.i90.i, ptr %i.dq, i64 %i.ds) #18
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.dv, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dw = lshr i32 %i.dv, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.dw, 1
  %i.dx = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 232
  store ptr %i.dt, ptr %i.dz, align 8
  br label %.thread43.i

bb.ai:                                            ; preds = %._crit_edge93.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i8 1, ptr %i.ea, align 8, !tbaa !216
  %i.eb = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 1, ptr %i.eb, align 1, !tbaa !217
  call void @_ZN4mlir9Operation11emitWarningERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %22, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(34) %23) #18
  %i.ec = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 1 dereferenceable(59) @.str.22)
  %i.ed = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ec) #18
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %.thread43.i

.thread43.i:                                      ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i114.i, %bb.ac, %_ZNK4llvm6MDNode10getOperandEj.exit107.i, %bb.ai, %.thread45.i
  %.sroa.062.4.i = phi i8 [ %i.ed, %bb.ai ], [ 1, %.thread45.i ], [ 0, %_ZNK4llvm6MDNode10getOperandEj.exit107.i ], [ 0, %bb.ac ], [ 0, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i114.i ]
  %i.ee = load ptr, ptr %21, align 8, !tbaa !20   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.bl
  br i1 %i.ef, label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.thread43.i
  call void @free(ptr noundef %i.ee) #18
  br label %_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i

_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i:          ; preds = %bb.aj, %.thread43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

_ZN4llvmeqENS_9StringRefES0_.exit82.thread32.i:   ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit82.i, %_ZN4llvm9StringRefC2EPKc.exit78.i
  %i.eg = load ptr, ptr @_ZN4llvm12MDProfLabels13BranchWeightsE, align 8, !tbaa !69 ; 3 uses
  %.not.i121.i = icmp eq ptr %i.eg, null
  br i1 %.not.i121.i, label %_ZN4llvm9StringRefC2EPKc.exit123.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit82.thread32.i
  %i.eh = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eg) #18
  br label %_ZN4llvm9StringRefC2EPKc.exit123.i

_ZN4llvm9StringRefC2EPKc.exit123.i:               ; preds = %bb.ak, %_ZN4llvmeqENS_9StringRefES0_.exit82.thread32.i
  %.sroa.0.0.i122.i = phi i64 [ %i.eh, %bb.ak ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit82.thread32.i ]
  %.not.i.i124.i = icmp eq i64 %i.q, %.sroa.0.0.i122.i
  br i1 %.not.i.i124.i, label %bb.al, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.al:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit123.i
  %i.ei = icmp eq i64 %i.q, 0
  br i1 %i.ei, label %_ZN4llvmneENS_9StringRefES0_.exit.thread48.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i

_ZN4llvmneENS_9StringRefES0_.exit.i:              ; preds = %bb.al
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.eg, i64 %i.q)
  %.not81.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not81.i, label %_ZN4llvmneENS_9StringRefES0_.exit.thread48.i, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

_ZN4llvmneENS_9StringRefES0_.exit.thread48.i:     ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i, %bb.al
  %i.ej = load i64, ptr %i.a, align 8             ; 4 uses
  %i.ek = and i64 %i.ej, 2
  %.not.i.i126.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i126.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit128.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit128.thread.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit128.i:     ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread48.i
  %i.el = and i64 %i.ej, 896
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit, label %bb.am

_ZNK4llvm6MDNode14getNumOperandsEv.exit128.thread.i: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread48.i
  %i.en = getelementptr inbounds i8, ptr %3, i64 -24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !22 ; 2 uses
  %i.ep = icmp ult i32 %i.eo, 2
  br i1 %i.ep, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit, label %.thread51.i

.thread51.i:                                      ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit128.thread.i
  %i.eq = getelementptr inbounds i8, ptr %3, i64 -32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !20
  %i.es = zext i32 %i.eo to i64
  br label %_ZNK4llvm6MDNode10getOperandEj.exit135.i

bb.am:                                            ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit128.i
  %i.et = lshr i64 %i.ej, 2
  %i.eu = and i64 %i.et, 15
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ev
  %i.ex = lshr i64 %i.ej, 6
  %i.ey = and i64 %i.ex, 15
  br label %_ZNK4llvm6MDNode10getOperandEj.exit135.i

_ZNK4llvm6MDNode10getOperandEj.exit135.i:         ; preds = %bb.am, %.thread51.i
  %.pn.i = phi ptr [ %i.ew, %bb.am ], [ %i.er, %.thread51.i ] ; 2 uses
  %.in.i = phi i64 [ %i.ey, %bb.am ], [ %i.es, %.thread51.i ] ; 2 uses
  %i.ez = add nsw i64 %.in.i, -1
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !65 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 4, !tbaa !68
  %.not83.i = icmp eq i8 %i.fc, 0
  br i1 %.not83.i, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit135.i
  %i.fd = tail call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #18 ; 2 uses
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1      ; 3 uses
  %i.fg = load ptr, ptr @_ZN4llvm12MDProfLabels21ExpectedBranchWeightsE, align 8, !tbaa !69 ; 3 uses
  %.not.i137.i = icmp eq ptr %i.fg, null
  br i1 %.not.i137.i, label %_ZN4llvm9StringRefC2EPKc.exit139.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fh = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fg) #18
  br label %_ZN4llvm9StringRefC2EPKc.exit139.i

_ZN4llvm9StringRefC2EPKc.exit139.i:               ; preds = %bb.ao, %bb.an
  %.sroa.0.0.i138.i = phi i64 [ %i.fh, %bb.ao ], [ 0, %bb.an ]
  %.not.i.i140.i = icmp eq i64 %i.ff, %.sroa.0.0.i138.i
  br i1 %.not.i.i140.i, label %bb.ap, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.ap:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit139.i
  %i.fi = icmp eq i64 %i.ff, 0
  br i1 %i.fi, label %_ZN4llvmneENS_9StringRefES0_.exit143.thread59.i, label %_ZN4llvmneENS_9StringRefES0_.exit143.i

_ZN4llvmneENS_9StringRefES0_.exit143.i:           ; preds = %bb.ap
  %bcmp.i.i142.i = tail call i32 @bcmp(ptr %i.fe, ptr %i.fg, i64 %i.ff)
  %.not84.i = icmp eq i32 %bcmp.i.i142.i, 0
  br i1 %.not84.i, label %_ZN4llvmneENS_9StringRefES0_.exit143.thread59.i, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

_ZN4llvmneENS_9StringRefES0_.exit143.thread59.i:  ; preds = %_ZN4llvmneENS_9StringRefES0_.exit143.i, %bb.ap
  %i.fj = add nsw i64 %.in.i, -2
  %i.fk = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvmneENS_9StringRefES0_.exit143.thread59.i, %_ZNK4llvm6MDNode10getOperandEj.exit135.i
  %.sroa.7.0.ph.i = phi i64 [ %i.fj, %_ZN4llvmneENS_9StringRefES0_.exit143.thread59.i ], [ %i.ez, %_ZNK4llvm6MDNode10getOperandEj.exit135.i ] ; 4 uses
  %.sroa.04.0.ph.i = phi ptr [ %i.fk, %_ZN4llvmneENS_9StringRefES0_.exit143.thread59.i ], [ %i.fa, %_ZNK4llvm6MDNode10getOperandEj.exit135.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.fl = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store ptr %i.fl, ptr %24, align 8, !tbaa !20
  %i.fm = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  store i32 0, ptr %i.fm, align 8, !tbaa !22
  %i.fn = getelementptr inbounds nuw i8, ptr %24, i64 12 ; 2 uses
  store i32 12, ptr %i.fn, align 4, !tbaa !21
  %i.fo = icmp ugt i64 %.sroa.7.0.ph.i, 12
  br i1 %i.fo, label %bb.ar, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull %i.fl, i64 noundef %.sroa.7.0.ph.i, i64 noundef 4) #18
  br label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i:    ; preds = %bb.ar, %bb.aq
  %.idx.i = shl nuw nsw i64 %.sroa.7.0.ph.i, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.04.0.ph.i, i64 %.idx.i
  %.not7088.i = icmp eq i64 %.sroa.7.0.ph.i, 0
  br i1 %.not7088.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i
  %.089.i = phi ptr [ %i.gj, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i ], [ %.sroa.04.0.ph.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i ] ; 2 uses
  %i.fq = load ptr, ptr %.089.i, align 8, !tbaa !65 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !68
  %.not.i146.i = icmp eq i8 %i.fr, 1
  br i1 %.not.i146.i, label %bb.as, label %.loopexit.i

bb.as:                                            ; preds = %.lr.ph.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !75 ; 3 uses
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !79
  %i.fv = icmp eq i8 %i.fu, 5
  br i1 %i.fv, label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i, label %.loopexit.i

_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i: ; preds = %bb.as
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 24 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !81
  %i.fz = icmp ult i32 %i.fy, 65
  %i.ga = load ptr, ptr %i.fw, align 8
  %spec.select.i.i148.i = select i1 %i.fz, ptr %i.fw, ptr %i.ga
  %.0.i.i149.i = load i64, ptr %spec.select.i.i148.i, align 8, !tbaa !57
  %i.gb = trunc i64 %.0.i.i149.i to i32           ; 2 uses
  %i.gc = load i32, ptr %i.fm, align 8, !tbaa !22 ; 2 uses
  %i.gd = load i32, ptr %i.fn, align 4, !tbaa !21
  %.not.i150.i = icmp ult i32 %i.gc, %i.gd
  br i1 %.not.i150.i, label %bb.au, label %bb.at, !prof !43

bb.at:                                            ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %24, i32 noundef %i.gb)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i

end_hunk_0
begin_hunk_1_@_ZNK12_GLOBAL__N_132LLVMDialectLLVMIRImportInterface16setMetadataAttrsERN4mlir9OpBuilderEjPN4llvm6MDNodeEPNS1_9OperationERNS1_4LLVM12ModuleImportE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %_ZL11setTBAAAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit

_ZL11setTBAAAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit: ; preds = %bb.ba, %bb.ay, %bb.az, %_ZNK4mlir4LLVM12ModuleImport14lookupTBAAAttrEPKN4llvm6MDNodeE.exit.i, %bb.bf
  %.sroa.03.1.i = phi i8 [ %.sroa.03.0.i, %bb.bf ], [ 0, %_ZNK4mlir4LLVM12ModuleImport14lookupTBAAAttrEPKN4llvm6MDNodeE.exit.i ], [ 0, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.bg:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @_ZNK4mlir4LLVM12ModuleImport22lookupAccessGroupAttrsEPKN4llvm6MDNodeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr.6004") align 8 %16, ptr noundef nonnull align 8 dereferenceable(498) %5, ptr noundef %3) #18
  %i.iq = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 3 uses
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !242, !range !92, !noundef !93
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.bh, label %_ZL19setAccessGroupsAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.it = call noundef ptr @_ZN4mlir11OpInterfaceINS_4LLVM22AccessGroupOpInterfaceENS1_6detail37AccessGroupOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %4)
  %.not.i.i.i70 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i70, label %_ZN4llvm8dyn_castIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationEEEDcPT0_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.not.i.i.i.i.i.i.i71 = icmp eq ptr %4, null
  br i1 %.not.i.i.i.i.i.i.i71, label %_ZN4llvm20ValueFromPointerCastIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iu = call noundef ptr @_ZN4mlir11OpInterfaceINS_4LLVM22AccessGroupOpInterfaceENS1_6detail37AccessGroupOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %4)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i: ; preds = %bb.bj, %bb.bi
  %i.iv = phi ptr [ %i.iu, %bb.bj ], [ null, %bb.bi ]
  %.fca.0.insert.i.i.i.i72 = insertvalue { ptr, ptr } poison, ptr %4, 0
  %.fca.1.insert.i.i.i.i73 = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i72, ptr %i.iv, 1
  br label %_ZN4llvm8dyn_castIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationEEEDcPT0_.exit.i

_ZN4llvm8dyn_castIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationEEEDcPT0_.exit.i: ; preds = %_ZN4llvm20ValueFromPointerCastIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i, %bb.bh
  %.pn.i.i.i74 = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i73, %_ZN4llvm20ValueFromPointerCastIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i ], [ zeroinitializer, %bb.bh ] ; 2 uses
  %i.iw = extractvalue { ptr, ptr } %.pn.i.i.i74, 0 ; 3 uses
  store ptr %i.iw, ptr %17, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.iy = extractvalue { ptr, ptr } %.pn.i.i.i74, 1
  store ptr %i.iy, ptr %i.ix, align 8
  %.not.i75 = icmp eq ptr %i.iw, null
  br i1 %.not.i75, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm8dyn_castIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationEEEDcPT0_.exit.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.ja = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iz) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.jb = load ptr, ptr %16, align 8, !tbaa !20, !noalias !243 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !22, !noalias !243 ; 4 uses
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.je, 3            ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.idx.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.jg, ptr %18, align 8, !tbaa !20, !alias.scope !243
  %i.jh = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i32 0, ptr %i.jh, align 8, !tbaa !22, !alias.scope !243
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 6, ptr %i.ji, align 4, !tbaa !21, !alias.scope !243
  %i.jj = icmp ugt i32 %i.jd, 6
  br i1 %i.jj, label %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i: ; preds = %bb.bk
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull %i.jg, i64 noundef %i.je, i64 noundef 8) #18
  %.pre.i.i.i.i = load i32, ptr %i.jh, align 8, !tbaa !22, !alias.scope !243 ; 2 uses
  %.pre8.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre.i76 = load ptr, ptr %18, align 8, !tbaa !20, !alias.scope !243
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.bk
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.jd, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM15AccessGroupAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i
  %i.jk = phi ptr [ %.pre.i76, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i ], [ %i.jg, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i ] ; 3 uses
  %i.jl = phi i32 [ %.pre.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i4.i.i = phi i64 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i ]
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.pre-phi.i.i4.i.i ; 2 uses
  %i.jn = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.jo = lshr exact i64 %i.jn, 3
  %i.jp = add nuw nsw i64 %i.jo, 1
  %xtraiter225 = and i64 %i.jp, 7                 ; 2 uses
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.011.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.jm, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.jb, %.lr.ph.i.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %prol.iter227 = phi i64 [ %prol.iter227.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i ]
  %i.jq = load i64, ptr %.0810.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !240
  store i64 %i.jq, ptr %.011.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !240
  %i.jr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter227.next = add i64 %prol.iter227, 1   ; 2 uses
  %prol.iter227.cmp.not = icmp eq i64 %prol.iter227.next, %xtraiter225
  br i1 %prol.iter227.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !203

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.preheader.i.i.i.i ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.0810.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.preheader.i.i.i.i ], [ %i.jr, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.jt = icmp ult i64 %i.jn, 56
  br i1 %i.jt, label %_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM15AccessGroupAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi ptr [ %i.kr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0810.i.i.i.i.i.i.i.i = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ju = load i64, ptr %.0810.i.i.i.i.i.i.i.i, align 8, !tbaa !240
  store i64 %i.ju, ptr %.011.i.i.i.i.i.i.i.i, align 8, !tbaa !240
  %i.jv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 8
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !240
  store i64 %i.jx, ptr %i.jw, align 8, !tbaa !240
  %i.jy = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 16
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !240
  store i64 %i.ka, ptr %i.jz, align 8, !tbaa !240
  %i.kb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 24
  %i.kc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 24
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !240
  store i64 %i.kd, ptr %i.kc, align 8, !tbaa !240
  %i.ke = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 32
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !240
  store i64 %i.kg, ptr %i.kf, align 8, !tbaa !240
  %i.kh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 40
  %i.ki = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 40
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !240
  store i64 %i.kj, ptr %i.ki, align 8, !tbaa !240
  %i.kk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 48
  %i.kl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 48
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !240
  store i64 %i.km, ptr %i.kl, align 8, !tbaa !240
  %i.kn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 56
  %i.ko = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 56
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !240
  store i64 %i.kp, ptr %i.ko, align 8, !tbaa !240
  %i.kq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.kq, %i.jf
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM15AccessGroupAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !204

_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM15AccessGroupAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i
  %i.ks = phi ptr [ %i.jg, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.kt = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i ], [ %i.jl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.jl, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ku = add i32 %i.kt, %i.jd                    ; 2 uses
  store i32 %i.ku, ptr %i.jh, align 8, !tbaa !22, !alias.scope !243
  %i.kv = zext i32 %i.ku to i64
  %i.kw = call ptr @_ZN4mlir9ArrayAttr3getEPNS_11MLIRContextEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef %i.ja, ptr %i.ks, i64 %i.kv) #18
  call void @_ZN4mlir4LLVM22AccessGroupOpInterface15setAccessGroupsENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %i.kw) #18
  %i.kx = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.jg
  br i1 %i.ky, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM15AccessGroupAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i
  call void @free(ptr noundef %i.kx) #18
  br label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i: ; preds = %bb.bl, %_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM15AccessGroupAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i, %_ZN4llvm8dyn_castIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationEEEDcPT0_.exit.i
  %.sroa.04.0.i = phi i8 [ 1, %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i ], [ 0, %_ZN4llvm8dyn_castIN4mlir4LLVM22AccessGroupOpInterfaceENS1_9OperationEEEDcPT0_.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %.pre5.i = load i8, ptr %i.iq, align 8, !tbaa !242, !range !92
  %i.kz = trunc nuw i8 %.pre5.i to i1
  store i8 0, ptr %i.iq, align 8, !tbaa !242
  br i1 %i.kz, label %bb.bn, label %_ZL19setAccessGroupsAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit

bb.bn:                                            ; preds = %bb.bm
  %i.la = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZL19setAccessGroupsAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @free(ptr noundef %i.la) #18
  br label %_ZL19setAccessGroupsAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit

_ZL19setAccessGroupsAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit: ; preds = %bb.bg, %bb.bm, %bb.bn, %bb.bo
  %.sroa.04.111.i = phi i8 [ %.sroa.04.0.i, %bb.bo ], [ %.sroa.04.0.i, %bb.bm ], [ %.sroa.04.0.i, %bb.bn ], [ 0, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.bp:                                            ; preds = %bb.a
  %i.ld = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ld, align 8
  %i.le = tail call ptr @_ZNK4mlir4LLVM12ModuleImport27translateLoopAnnotationAttrEPKN4llvm6MDNodeENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(498) %5, ptr noundef %3, ptr %.sroa.0.0.copyload.i.i) #18 ; 3 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lg = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lg, align 8, !tbaa !83
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !84 ; 2 uses
  %.not.i77 = icmp eq ptr %i.li, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM4BrOpEvE2idE
  br i1 %.not.i77, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE4CaseINS1_4LLVM4BrOpERZL11setLoopAttrPKNS_6MDNodeES3_RNS7_12ModuleImportEE3$_0EERS5_OT0_.exit.thread.i", label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE4CaseINS1_4LLVM4BrOpERZL11setLoopAttrPKNS_6MDNodeES3_RNS7_12ModuleImportEE3$_0EERS5_OT0_.exit.i"

"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE4CaseINS1_4LLVM4BrOpERZL11setLoopAttrPKNS_6MDNodeES3_RNS7_12ModuleImportEE3$_0EERS5_OT0_.exit.thread.i": ; preds = %bb.bq
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.lk = load i32, ptr %i.lj, align 4            ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i32 %i.lk, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ll = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.lm = lshr i32 %i.lk, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.lm, 1
  %i.ln = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.ln
  store ptr %i.le, ptr %i.lo, align 8
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE4CaseINS1_4LLVM4BrOpERZL11setLoopAttrPKNS_6MDNodeES3_RNS7_12ModuleImportEE3$_0EERS5_OT0_.exit.i": ; preds = %bb.bq
  %.not16.i = icmp eq ptr %i.li, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM8CondBrOpEvE2idE
  br i1 %.not16.i, label %bb.br, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.br:                                            ; preds = %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE4CaseINS1_4LLVM4BrOpERZL11setLoopAttrPKNS_6MDNodeES3_RNS7_12ModuleImportEE3$_0EERS5_OT0_.exit.i"
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.lq = load i32, ptr %i.lp, align 4            ; 2 uses
  %.not.i.i.i.i.i9.i = icmp ugt i32 %i.lq, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i9.i)
  %i.lr = lshr i32 %i.lq, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i10.i = and i32 %i.lr, 1
  %i.ls = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i10.i to i64
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 72
  store ptr %i.le, ptr %i.lu, align 8
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.bs:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @_ZNK4mlir4LLVM12ModuleImport21lookupAliasScopeAttrsEPKN4llvm6MDNodeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr.2695") align 8 %13, ptr noundef nonnull align 8 dereferenceable(498) %5, ptr noundef %3) #18
  %i.lv = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 3 uses
  %i.lw = load i8, ptr %i.lv, align 8, !tbaa !96, !range !92, !noundef !93
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.bt, label %_ZL18setAliasScopesAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.ly = call noundef ptr @_ZN4mlir11OpInterfaceINS_4LLVM24AliasAnalysisOpInterfaceENS1_6detail39AliasAnalysisOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %4)
  %.not.i.i.i80 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i80, label %_ZN4llvm8dyn_castIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationEEEDcPT0_.exit.i85, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not.i.i.i.i.i.i.i81 = icmp eq ptr %4, null
  br i1 %.not.i.i.i.i.i.i.i81, label %_ZN4llvm20ValueFromPointerCastIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i82, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lz = call noundef ptr @_ZN4mlir11OpInterfaceINS_4LLVM24AliasAnalysisOpInterfaceENS1_6detail39AliasAnalysisOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %4)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i82

_ZN4llvm20ValueFromPointerCastIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i82: ; preds = %bb.bv, %bb.bu
  %i.ma = phi ptr [ %i.lz, %bb.bv ], [ null, %bb.bu ]
  %.fca.0.insert.i.i.i.i83 = insertvalue { ptr, ptr } poison, ptr %4, 0
  %.fca.1.insert.i.i.i.i84 = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i83, ptr %i.ma, 1
  br label %_ZN4llvm8dyn_castIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationEEEDcPT0_.exit.i85

_ZN4llvm8dyn_castIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationEEEDcPT0_.exit.i85: ; preds = %_ZN4llvm20ValueFromPointerCastIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i82, %bb.bt
  %.pn.i.i.i86 = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i84, %_ZN4llvm20ValueFromPointerCastIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i82 ], [ zeroinitializer, %bb.bt ] ; 2 uses
  %i.mb = extractvalue { ptr, ptr } %.pn.i.i.i86, 0 ; 3 uses
  store ptr %i.mb, ptr %14, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.md = extractvalue { ptr, ptr } %.pn.i.i.i86, 1
  store ptr %i.md, ptr %i.mc, align 8
  %.not.i87 = icmp eq ptr %i.mb, null
  br i1 %.not.i87, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %_ZN4llvm8dyn_castIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationEEEDcPT0_.exit.i85
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.mf = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.me) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.mg = load ptr, ptr %13, align 8, !tbaa !20, !noalias !244 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !22, !noalias !244 ; 4 uses
  %i.mj = zext i32 %i.mi to i64                   ; 2 uses
  %.idx.i.i88 = shl nuw nsw i64 %i.mj, 3          ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 %.idx.i.i88
  %i.ml = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.ml, ptr %15, align 8, !tbaa !20, !alias.scope !244
  %i.mm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i32 0, ptr %i.mm, align 8, !tbaa !22, !alias.scope !244
  %i.mn = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 6, ptr %i.mn, align 4, !tbaa !21, !alias.scope !244
  %i.mo = icmp ugt i32 %i.mi, 6
  br i1 %i.mo, label %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i100, label %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i89

_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i100: ; preds = %bb.bw
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull %i.ml, i64 noundef %i.mj, i64 noundef 8) #18
  %.pre.i.i.i.i101 = load i32, ptr %i.mm, align 8, !tbaa !22, !alias.scope !244 ; 2 uses
  %.pre8.i.i.i.i102 = zext i32 %.pre.i.i.i.i101 to i64
  %.pre.i103 = load ptr, ptr %15, align 8, !tbaa !20, !alias.scope !244
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i91

_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i89: ; preds = %bb.bw
  %.not9.i.i.i.i.i.i.i.i90 = icmp eq i32 %i.mi, 0
  br i1 %.not9.i.i.i.i.i.i.i.i90, label %_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM14AliasScopeAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i91

.lr.ph.i.i.i.i.preheader.i.i.i.i91:               ; preds = %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i89, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i100
  %i.mp = phi ptr [ %.pre.i103, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i100 ], [ %i.ml, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i89 ] ; 3 uses
  %i.mq = phi i32 [ %.pre.i.i.i.i101, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i100 ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i89 ] ; 2 uses
  %.pre-phi.i.i4.i.i92 = phi i64 [ %.pre8.i.i.i.i102, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.thread.i.i100 ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i89 ]
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %.pre-phi.i.i4.i.i92 ; 2 uses
  %i.ms = add nsw i64 %.idx.i.i88, -8             ; 2 uses
  %i.mt = lshr exact i64 %i.ms, 3
  %i.mu = add nuw nsw i64 %i.mt, 1
  %xtraiter222 = and i64 %i.mu, 7                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph.i.i.i.i.i.i.i.i93.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i93.prol

.lr.ph.i.i.i.i.i.i.i.i93.prol:                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i91, %.lr.ph.i.i.i.i.i.i.i.i93.prol
  %.011.i.i.i.i.i.i.i.i94.prol = phi ptr [ %i.mx, %.lr.ph.i.i.i.i.i.i.i.i93.prol ], [ %i.mr, %.lr.ph.i.i.i.i.preheader.i.i.i.i91 ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i95.prol = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.i.i93.prol ], [ %i.mg, %.lr.ph.i.i.i.i.preheader.i.i.i.i91 ] ; 2 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %.lr.ph.i.i.i.i.i.i.i.i93.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i91 ]
  %i.mv = load i64, ptr %.0810.i.i.i.i.i.i.i.i95.prol, align 8, !tbaa !240
  store i64 %i.mv, ptr %.011.i.i.i.i.i.i.i.i94.prol, align 8, !tbaa !240
  %i.mw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i95.prol, i64 8 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i94.prol, i64 8 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i93.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i93.prol, !llvm.loop !207

.lr.ph.i.i.i.i.i.i.i.i93.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i93.prol, %.lr.ph.i.i.i.i.preheader.i.i.i.i91
  %.011.i.i.i.i.i.i.i.i94.unr = phi ptr [ %i.mr, %.lr.ph.i.i.i.i.preheader.i.i.i.i91 ], [ %i.mx, %.lr.ph.i.i.i.i.i.i.i.i93.prol ]
  %.0810.i.i.i.i.i.i.i.i95.unr = phi ptr [ %i.mg, %.lr.ph.i.i.i.i.preheader.i.i.i.i91 ], [ %i.mw, %.lr.ph.i.i.i.i.i.i.i.i93.prol ]
  %i.my = icmp ult i64 %i.ms, 56
  br i1 %i.my, label %_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM14AliasScopeAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i93

.lr.ph.i.i.i.i.i.i.i.i93:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i93.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i93
  %.011.i.i.i.i.i.i.i.i94 = phi ptr [ %i.nw, %.lr.ph.i.i.i.i.i.i.i.i93 ], [ %.011.i.i.i.i.i.i.i.i94.unr, %.lr.ph.i.i.i.i.i.i.i.i93.prol.loopexit ] ; 9 uses
  %.0810.i.i.i.i.i.i.i.i95 = phi ptr [ %i.nv, %.lr.ph.i.i.i.i.i.i.i.i93 ], [ %.0810.i.i.i.i.i.i.i.i95.unr, %.lr.ph.i.i.i.i.i.i.i.i93.prol.loopexit ] ; 9 uses
  %i.mz = load i64, ptr %.0810.i.i.i.i.i.i.i.i95, align 8, !tbaa !240
  store i64 %i.mz, ptr %.011.i.i.i.i.i.i.i.i94, align 8, !tbaa !240
  %i.na = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i95, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i94, i64 8
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !240
  store i64 %i.nc, ptr %i.nb, align 8, !tbaa !240
  %i.nd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i95, i64 16
  %i.ne = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i94, i64 16
  %i.nf = load i64, ptr %i.nd, align 8, !tbaa !240
  store i64 %i.nf, ptr %i.ne, align 8, !tbaa !240
  %i.ng = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i95, i64 24
  %i.nh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i94, i64 24
  %i.ni = load i64, ptr %i.ng, align 8, !tbaa !240
  store i64 %i.ni, ptr %i.nh, align 8, !tbaa !240
  %i.nj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i95, i64 32
  %i.nk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i94, i64 32
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !240
  store i64 %i.nl, ptr %i.nk, align 8, !tbaa !240
  %i.nm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i95, i64 40
  %i.nn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i94, i64 40
  %i.no = load i64, ptr %i.nm, align 8, !tbaa !240
  store i64 %i.no, ptr %i.nn, align 8, !tbaa !240
  %i.np = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i95, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i94, i64 48
  %i.nr = load i64, ptr %i.np, align 8, !tbaa !240
  store i64 %i.nr, ptr %i.nq, align 8, !tbaa !240
  %i.ns = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i95, i64 56
  %i.nt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i94, i64 56
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !240
  store i64 %i.nu, ptr %i.nt, align 8, !tbaa !240
  %i.nv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i95, i64 64 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i94, i64 64
  %.not.i.i.i.i.i.i.i.i96.7 = icmp eq ptr %i.nv, %i.mk
  br i1 %.not.i.i.i.i.i.i.i.i96.7, label %_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM14AliasScopeAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i93, !llvm.loop !208

_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM14AliasScopeAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i93.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i93, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i89
  %i.nx = phi ptr [ %i.ml, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i89 ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i.i93 ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i.i93.prol.loopexit ]
  %i.ny = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i.i.i89 ], [ %i.mq, %.lr.ph.i.i.i.i.i.i.i.i93 ], [ %i.mq, %.lr.ph.i.i.i.i.i.i.i.i93.prol.loopexit ]
  %i.nz = add i32 %i.ny, %i.mi                    ; 2 uses
  store i32 %i.nz, ptr %i.mm, align 8, !tbaa !22, !alias.scope !244
  %i.oa = zext i32 %i.nz to i64
  %i.ob = call ptr @_ZN4mlir9ArrayAttr3getEPNS_11MLIRContextEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef %i.mf, ptr %i.nx, i64 %i.oa) #18
  call void @_ZN4mlir4LLVM24AliasAnalysisOpInterface14setAliasScopesENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr %i.ob) #18
  %i.oc = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.ml
  br i1 %i.od, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i97, label %bb.bx

bb.bx:                                            ; preds = %_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM14AliasScopeAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i
  call void @free(ptr noundef %i.oc) #18
  br label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i97

_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i97: ; preds = %bb.bx, %_ZN4llvm12to_vector_ofIN4mlir9AttributeERNS_11SmallVectorINS1_4LLVM14AliasScopeAttrELj6EEEEENS3_IT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS8_EE5valueEEEOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.by

bb.by:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i97, %_ZN4llvm8dyn_castIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationEEEDcPT0_.exit.i85
  %.sroa.04.0.i98 = phi i8 [ 1, %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i97 ], [ 0, %_ZN4llvm8dyn_castIN4mlir4LLVM24AliasAnalysisOpInterfaceENS1_9OperationEEEDcPT0_.exit.i85 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %.pre5.i99 = load i8, ptr %i.lv, align 8, !tbaa !96, !range !92
  %i.oe = trunc nuw i8 %.pre5.i99 to i1
  store i8 0, ptr %i.lv, align 8, !tbaa !96
  br i1 %i.oe, label %bb.bz, label %_ZL18setAliasScopesAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit

bb.bz:                                            ; preds = %bb.by
  %i.of = load ptr, ptr %13, align 8, !tbaa !20   ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.oh = icmp eq ptr %i.of, %i.og
  br i1 %i.oh, label %_ZL18setAliasScopesAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @free(ptr noundef %i.of) #18
  br label %_ZL18setAliasScopesAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit

_ZL18setAliasScopesAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit: ; preds = %bb.bs, %bb.by, %bb.bz, %bb.ca
  %.sroa.04.111.i79 = phi i8 [ %.sroa.04.0.i98, %bb.ca ], [ %.sroa.04.0.i98, %bb.by ], [ %.sroa.04.0.i98, %bb.bz ], [ 0, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.cb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @_ZNK4mlir4LLVM12ModuleImport21lookupAliasScopeAttrsEPKN4llvm6MDNodeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr.2695") align 8 %10, ptr noundef nonnull align 8 dereferenceable(498) %5, ptr noundef %3) #18
  %i.oi = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !96, !range !92, !noundef !93
  %i.ok = trunc nuw i8 %i.oj to i1
end_hunk_1
begin_hunk_2_@_ZNK12_GLOBAL__N_132LLVMDialectLLVMIRImportInterface16setMetadataAttrsERN4mlir9OpBuilderEjPN4llvm6MDNodeEPNS1_9OperationERNS1_4LLVM12ModuleImportE:bb.a
  %i.sv = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 6, ptr %i.sv, align 4, !tbaa !21
  %i.sw = getelementptr inbounds i8, ptr %3, i64 -16 ; 2 uses
  %i.sx = load i64, ptr %i.sw, align 8            ; 3 uses
  %i.sy = and i64 %i.sx, 2
  %.not.i.i.i149 = icmp eq i64 %i.sy, 0
  br i1 %.not.i.i.i149, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sz = getelementptr inbounds i8, ptr %3, i64 -32
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !20
  %i.tb = getelementptr inbounds i8, ptr %3, i64 -24
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !22
  %i.td = zext i32 %i.tc to i64
  br label %_ZNK4llvm6MDNode8operandsEv.exit.i

bb.df:                                            ; preds = %bb.dd
  %i.te = lshr i64 %i.sx, 2
  %i.tf = and i64 %i.te, 15
  %i.tg = sub nsw i64 0, %i.tf
  %i.th = getelementptr inbounds [8 x i8], ptr %i.sw, i64 %i.tg
  %i.ti = lshr i64 %i.sx, 6
  %i.tj = and i64 %i.ti, 15
  br label %_ZNK4llvm6MDNode8operandsEv.exit.i

_ZNK4llvm6MDNode8operandsEv.exit.i:               ; preds = %bb.df, %bb.de
  %.sroa.3.0.i.i.i = phi i64 [ %i.tj, %bb.df ], [ %i.td, %bb.de ] ; 2 uses
  %.sroa.0.0.i.i.i150 = phi ptr [ %i.th, %bb.df ], [ %i.ta, %bb.de ] ; 2 uses
  %.idx.i151 = shl nuw nsw i64 %.sroa.3.0.i.i.i, 3
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i150, i64 %.idx.i151
  %.not3013.i = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %.not3013.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit.i, label %.lr.ph.i152

.lr.ph.i152:                                      ; preds = %_ZNK4llvm6MDNode8operandsEv.exit.i, %bb.do
  %.014.i = phi ptr [ %i.ux, %bb.do ], [ %.sroa.0.0.i.i.i150, %_ZNK4llvm6MDNode8operandsEv.exit.i ] ; 2 uses
  %i.tl = load ptr, ptr %.014.i, align 8, !tbaa !65 ; 5 uses
  %i.tm = load i8, ptr %i.tl, align 4, !tbaa !68
  %i.tn = add i8 %i.tm, -38
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.tn, -33
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.critedge.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i152
  %i.to = call noundef zeroext i1 @_ZN4llvm12MMRAMetadata7isTagMDEPKNS_8MetadataE(ptr noundef nonnull %i.tl) #18
  br i1 %i.to, label %bb.dh, label %.critedge.i

bb.dh:                                            ; preds = %bb.dg
  %i.tp = getelementptr inbounds i8, ptr %i.tl, i64 -16 ; 4 uses
  %i.tq = load i64, ptr %i.tp, align 8            ; 2 uses
  %i.tr = and i64 %i.tq, 2
  %.not.i.i.i33.i = icmp eq i64 %i.tr, 0
  br i1 %.not.i.i.i33.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ts = getelementptr inbounds i8, ptr %i.tl, i64 -32
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !20
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i34.i

bb.dj:                                            ; preds = %bb.dh
  %i.tu = lshr i64 %i.tq, 2
  %i.tv = and i64 %i.tu, 15
  %i.tw = sub nsw i64 0, %i.tv
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.tp, i64 %i.tw
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i34.i

_ZNK4llvm6MDNode10getOperandEj.exit.i34.i:        ; preds = %bb.dj, %bb.di
  %.sroa.0.0.i.i.i35.i = phi ptr [ %i.tx, %bb.dj ], [ %i.tt, %bb.di ]
  %i.ty = load ptr, ptr %.sroa.0.0.i.i.i35.i, align 8, !tbaa !65
  %i.tz = call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ty) #18 ; 2 uses
  %i.ua = load i64, ptr %i.tp, align 8            ; 2 uses
  %i.ub = and i64 %i.ua, 2
  %.not.i.i7.i36.i = icmp eq i64 %i.ub, 0
  br i1 %.not.i.i7.i36.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i34.i
  %i.uc = getelementptr inbounds i8, ptr %i.tl, i64 -32
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !20
  br label %"_ZZL11setMmraAttrPN4llvm6MDNodeEPN4mlir9OperationERNS2_4LLVM12ModuleImportEENK3$_0clES1_.exit38.i"

bb.dl:                                            ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i34.i
  %i.ue = lshr i64 %i.ua, 2
  %i.uf = and i64 %i.ue, 15
  %i.ug = sub nsw i64 0, %i.uf
  %i.uh = getelementptr inbounds [8 x i8], ptr %i.tp, i64 %i.ug
  br label %"_ZZL11setMmraAttrPN4llvm6MDNodeEPN4mlir9OperationERNS2_4LLVM12ModuleImportEENK3$_0clES1_.exit38.i"

"_ZZL11setMmraAttrPN4llvm6MDNodeEPN4mlir9OperationERNS2_4LLVM12ModuleImportEENK3$_0clES1_.exit38.i": ; preds = %bb.dl, %bb.dk
  %.sroa.0.0.i.i8.i37.i = phi ptr [ %i.uh, %bb.dl ], [ %i.ud, %bb.dk ]
  %i.ui = extractvalue { ptr, i64 } %i.tz, 1
  %i.uj = extractvalue { ptr, i64 } %i.tz, 0
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i8.i37.i, i64 8
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !65
  %i.um = call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ul) #18 ; 2 uses
  %i.un = extractvalue { ptr, i64 } %i.um, 0
  %i.uo = extractvalue { ptr, i64 } %i.um, 1
  %i.up = call ptr @_ZN4mlir4LLVM11MMRATagAttr3getEPNS_11MLIRContextEN4llvm9StringRefES5_(ptr noundef %i.rq, ptr %i.uj, i64 %i.ui, ptr %i.un, i64 %i.uo) #18 ; 2 uses
  %i.uq = load i32, ptr %i.su, align 8, !tbaa !22 ; 2 uses
  %i.ur = load i32, ptr %i.sv, align 4, !tbaa !21
  %.not.i.i153 = icmp ult i32 %i.uq, %i.ur
  br i1 %.not.i.i153, label %bb.dn, label %bb.dm, !prof !43

bb.dm:                                            ; preds = %"_ZZL11setMmraAttrPN4llvm6MDNodeEPN4mlir9OperationERNS2_4LLVM12ModuleImportEENK3$_0clES1_.exit38.i"
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.up)
  br label %bb.do

bb.dn:                                            ; preds = %"_ZZL11setMmraAttrPN4llvm6MDNodeEPN4mlir9OperationERNS2_4LLVM12ModuleImportEENK3$_0clES1_.exit38.i"
  %i.us = zext i32 %i.uq to i64
  %i.ut = load ptr, ptr %7, align 8, !tbaa !20
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.us
  store ptr %i.up, ptr %i.uu, align 1
  %i.uv = load i32, ptr %i.su, align 8, !tbaa !22
  %i.uw = add i32 %i.uv, 1
  store i32 %i.uw, ptr %i.su, align 8, !tbaa !22
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.ux = getelementptr inbounds nuw i8, ptr %.014.i, i64 8 ; 2 uses
  %.not30.i = icmp eq ptr %i.ux, %i.tk
  br i1 %.not30.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit.loopexit.i, label %.lr.ph.i152

_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit.loopexit.i: ; preds = %bb.do
  %.pre.i154 = load ptr, ptr %7, align 8, !tbaa !20
  %.pre15.i = load i32, ptr %i.su, align 8, !tbaa !22
  %i.uy = zext i32 %.pre15.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit.loopexit.i, %_ZNK4llvm6MDNode8operandsEv.exit.i
  %i.uz = phi i64 [ %i.uy, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit.loopexit.i ], [ 0, %_ZNK4llvm6MDNode8operandsEv.exit.i ]
  %i.va = phi ptr [ %.pre.i154, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit.loopexit.i ], [ %i.st, %_ZNK4llvm6MDNode8operandsEv.exit.i ]
  %i.vb = call ptr @_ZN4mlir9ArrayAttr3getEPNS_11MLIRContextEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef %i.rq, ptr %i.va, i64 %i.uz) #18
  %i.vc = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.vd = icmp eq ptr %i.vc, %i.st
  br i1 %i.vd, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i155, label %bb.dp

bb.dp:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit.i
  call void @free(ptr noundef %i.vc) #18
  br label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i155

_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i155: ; preds = %bb.dp, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE9push_backES2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i155, %"_ZZL11setMmraAttrPN4llvm6MDNodeEPN4mlir9OperationERNS2_4LLVM12ModuleImportEENK3$_0clES1_.exit.i"
  %.sroa.03.0.i156 = phi ptr [ %i.ss, %"_ZZL11setMmraAttrPN4llvm6MDNodeEPN4mlir9OperationERNS2_4LLVM12ModuleImportEENK3$_0clES1_.exit.i" ], [ %i.vb, %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit.i155 ]
  %i.ve = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rp) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.vf = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %i.vf, align 8, !tbaa !216
  %i.vg = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.vg, align 1, !tbaa !217
  store ptr @.str.27, ptr %6, align 8, !tbaa !57
  %i.vh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.vh, align 8, !tbaa !57
  %i.vi = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.ve, ptr noundef nonnull align 8 dereferenceable(34) %6) #18
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr %i.vi, ptr %.sroa.03.0.i156)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

.critedge.i:                                      ; preds = %bb.dg, %.lr.ph.i152
  %i.vj = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.st
  br i1 %i.vk, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit39.i, label %bb.dr

bb.dr:                                            ; preds = %.critedge.i
  call void @free(ptr noundef %i.vj) #18
  br label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit39.i

_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit39.i: ; preds = %bb.dr, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.ds:                                            ; preds = %bb.a
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.vl, align 8 ; 3 uses
  %i.vm = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %.not.i.i158 = icmp eq i64 %i.vm, 0
  br i1 %.not.i.i158, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.vn = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.vo = inttoptr i64 %i.vn to ptr
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !246, !nonnull !93, !align !247
  br label %_ZNK4llvm6MDNode10getContextEv.exit

bb.du:                                            ; preds = %bb.ds
  %i.vq = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK4llvm6MDNode10getContextEv.exit

_ZNK4llvm6MDNode10getContextEv.exit:              ; preds = %bb.dt, %bb.du
  %.0.i.i = phi ptr [ %i.vp, %bb.dt ], [ %i.vq, %bb.du ] ; 4 uses
  %i.vr = tail call noundef i32 @_ZNK4llvm11LLVMContext11getMDKindIDENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr nonnull @.str.28, i64 13) #18
  %i.vs = icmp eq i32 %2, %i.vr
  br i1 %i.vs, label %bb.dv, label %bb.eg

bb.dv:                                            ; preds = %_ZNK4llvm6MDNode10getContextEv.exit
  %.val = load ptr, ptr %1, align 8
  %i.vt = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i159 = load ptr, ptr %i.vt, align 8, !tbaa !83
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i159, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !84
  %i.vw = icmp ne ptr %i.vv, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  %i.vx = icmp eq ptr %4, null
  %i.vy = or i1 %i.vx, %i.vw
  br i1 %i.vy, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vz = getelementptr inbounds i8, ptr %3, i64 -16 ; 4 uses
  %i.wa = load i64, ptr %i.vz, align 8            ; 3 uses
  %i.wb = and i64 %i.wa, 2
  %.not.i.i.i.i161 = icmp eq i64 %i.wb, 0
  br i1 %.not.i.i.i.i161, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i:      ; preds = %bb.dw
  %i.wc = and i64 %i.wa, 960
  %.not8.i.i = icmp eq i64 %i.wc, 128
  br i1 %.not8.i.i, label %bb.dx, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i: ; preds = %bb.dw
  %i.wd = getelementptr inbounds i8, ptr %3, i64 -24
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !22
  %.not819.i.i = icmp eq i32 %i.we, 2
  br i1 %.not819.i.i, label %.thread.i.i, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

.thread.i.i:                                      ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i
  %i.wf = getelementptr inbounds i8, ptr %3, i64 -32
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !20
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i162

bb.dx:                                            ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i
  %i.wh = lshr i64 %i.wa, 2
  %i.wi = and i64 %i.wh, 15
  %i.wj = sub nsw i64 0, %i.wi
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.vz, i64 %i.wj
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i162

_ZNK4llvm6MDNode10getOperandEj.exit.i.i162:       ; preds = %bb.dx, %.thread.i.i
  %.sroa.0.0.i.i.i.i163 = phi ptr [ %i.wk, %bb.dx ], [ %i.wg, %.thread.i.i ]
  %i.wl = load ptr, ptr %.sroa.0.0.i.i.i.i163, align 8, !tbaa !65 ; 2 uses
  %i.wm = load i8, ptr %i.wl, align 4, !tbaa !68
  %i.wn = add i8 %i.wm, -3
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.wn, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit, label %bb.dy

bb.dy:                                            ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i162
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 136
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !75
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !97
  %i.ws = getelementptr inbounds nuw i8, ptr %5, i64 472
  %i.wt = tail call ptr @_ZN4mlir4LLVM24TypeFromLLVMIRTranslator13translateTypeEPN4llvm4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ws, ptr noundef %i.wr) #18
  %i.wu = tail call ptr @_ZN4mlir8TypeAttr3getENS_4TypeE(ptr %i.wt) #18
  %i.wv = load i64, ptr %i.vz, align 8            ; 2 uses
  %i.ww = and i64 %i.wv, 2
  %.not.i.i11.i.i = icmp eq i64 %i.ww, 0
  br i1 %.not.i.i11.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.wx = getelementptr inbounds i8, ptr %3, i64 -32
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !20
  br label %_ZNK4llvm6MDNode10getOperandEj.exit13.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.wz = lshr i64 %i.wv, 2
  %i.xa = and i64 %i.wz, 15
  %i.xb = sub nsw i64 0, %i.xa
  %i.xc = getelementptr inbounds [8 x i8], ptr %i.vz, i64 %i.xb
  br label %_ZNK4llvm6MDNode10getOperandEj.exit13.i.i

_ZNK4llvm6MDNode10getOperandEj.exit13.i.i:        ; preds = %bb.ea, %bb.dz
  %.sroa.0.0.i.i12.i.i = phi ptr [ %i.xc, %bb.ea ], [ %i.wy, %bb.dz ]
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i12.i.i, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !65 ; 3 uses
  %.not.i.i14.i.i = icmp eq ptr %i.xe, null
  br i1 %.not.i.i14.i.i, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit, label %bb.eb

bb.eb:                                            ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit13.i.i
  %i.xf = load i8, ptr %i.xe, align 4, !tbaa !68
  %i.xg = icmp eq i8 %i.xf, 1
  br i1 %i.xg, label %_ZN4llvm19dyn_cast_if_presentINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

_ZN4llvm19dyn_cast_if_presentINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i: ; preds = %bb.eb
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 136
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !75 ; 3 uses
  %i.xj = load i8, ptr %i.xi, align 8, !tbaa !79
  %.not.i.i.i164 = icmp eq i8 %i.xj, 5
  br i1 %.not.i.i.i164, label %bb.ec, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.ec:                                            ; preds = %_ZN4llvm19dyn_cast_if_presentINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 24 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 32
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !81 ; 3 uses
  %i.xn = icmp ult i32 %i.xm, 65
  br i1 %i.xn, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.xo = load i64, ptr %i.xk, align 8, !tbaa !57
  %i.xp = icmp eq i32 %i.xm, 0
  %i.xq = sub nuw nsw i32 64, %i.xm
  %i.xr = zext nneg i32 %i.xq to i64              ; 2 uses
  %i.xs = shl i64 %i.xo, %i.xr
  %i.xt = ashr exact i64 %i.xs, %i.xr
  %.0.i.i.i.i.i166 = select i1 %i.xp, i64 0, i64 %i.xt
  br label %_ZL18convertVecTypeHintN4mlir7BuilderEPN4llvm6MDNodeERNS_4LLVM12ModuleImportE.exit.i

bb.ee:                                            ; preds = %bb.ec
  %i.xu = load ptr, ptr %i.xk, align 8, !tbaa !57
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !98
  br label %_ZL18convertVecTypeHintN4mlir7BuilderEPN4llvm6MDNodeERNS_4LLVM12ModuleImportE.exit.i

_ZL18convertVecTypeHintN4mlir7BuilderEPN4llvm6MDNodeERNS_4LLVM12ModuleImportE.exit.i: ; preds = %bb.ee, %bb.ed
  %.0.i8.i.i.i = phi i64 [ %.0.i.i.i.i.i166, %bb.ed ], [ %i.xv, %bb.ee ]
  %i.xw = and i64 %.0.i8.i.i.i, 4294967295
  %i.xx = icmp ne i64 %i.xw, 0
  %i.xy = tail call ptr @_ZN4mlir4LLVM15VecTypeHintAttr3getEPNS_11MLIRContextENS_8TypeAttrEb(ptr noundef %.val, ptr %i.wu, i1 noundef zeroext %i.xx) #18 ; 2 uses
  %i.xz = icmp eq ptr %i.xy, null
  br i1 %i.xz, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit, label %bb.ef

bb.ef:                                            ; preds = %_ZL18convertVecTypeHintN4mlir7BuilderEPN4llvm6MDNodeERNS_4LLVM12ModuleImportE.exit.i
  %i.ya = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.yb = load i32, ptr %i.ya, align 4            ; 2 uses
  %.not.i.i.i6.i = icmp ugt i32 %i.yb, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i6.i)
  %i.yc = lshr i32 %i.yb, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i165 = and i32 %i.yc, 1
  %i.yd = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i165 to i64
  %i.ye = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.yd
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 544
  store ptr %i.xy, ptr %i.yf, align 8
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.eg:                                            ; preds = %_ZNK4llvm6MDNode10getContextEv.exit
  %i.yg = tail call noundef i32 @_ZNK4llvm11LLVMContext11getMDKindIDENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr nonnull @.str.30, i64 20) #18
  %i.yh = icmp eq i32 %2, %i.yg
  br i1 %i.yh, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %i.yi = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i167 = load ptr, ptr %i.yi, align 8, !tbaa !83
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i167, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !84
  %i.yl = icmp ne ptr %i.yk, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  %.not3.i = icmp eq ptr %4, null
  %.not.i168 = or i1 %.not3.i, %i.yl
  br i1 %.not.i168, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.val65 = load ptr, ptr %1, align 8
  %i.ym = tail call fastcc ptr @_ZL20convertDenseI32ArrayN4mlir7BuilderEPN4llvm6MDNodeE(ptr %.val65, ptr noundef nonnull readonly %3) ; 2 uses
  %i.yn = icmp eq ptr %i.ym, null
  br i1 %i.yn, label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.yo = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.yp = load i32, ptr %i.yo, align 4            ; 2 uses
  %.not.i.i.i.i169 = icmp ugt i32 %i.yp, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i169)
  %i.yq = lshr i32 %i.yp, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i170 = and i32 %i.yq, 1
  %i.yr = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i170 to i64
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 576
  store ptr %i.ym, ptr %i.yt, align 8
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.ek:                                            ; preds = %bb.eg
  %i.yu = tail call noundef i32 @_ZNK4llvm11LLVMContext11getMDKindIDENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr nonnull @.str.32, i64 20) #18
  %i.yv = icmp eq i32 %2, %i.yu
  br i1 %i.yv, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %.val66 = load ptr, ptr %1, align 8
  %i.yw = tail call fastcc i8 @_ZL24setReqdWorkGroupSizeAttrRN4mlir7BuilderEPN4llvm6MDNodeEPNS_9OperationE(ptr %.val66, ptr noundef nonnull %3, ptr noundef %4)
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

bb.em:                                            ; preds = %bb.ek
  %i.yx = tail call noundef i32 @_ZNK4llvm11LLVMContext11getMDKindIDENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, ptr nonnull @.str.34, i64 25) #18
  %i.yy = icmp eq i32 %2, %i.yx
  tail call void @llvm.assume(i1 %i.yy)
  %.val67 = load ptr, ptr %1, align 8
  %i.yz = tail call fastcc i8 @_ZL28setIntelReqdSubGroupSizeAttrRN4mlir7BuilderEPN4llvm6MDNodeEPNS_9OperationE(ptr %.val67, ptr noundef nonnull %3, ptr noundef %4)
  br label %_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit

_ZL16setProfilingAttrRN4mlir9OpBuilderEPN4llvm6MDNodeEPNS_9OperationERNS_4LLVM12ModuleImportE.exit: ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.ef, %_ZL18convertVecTypeHintN4mlir7BuilderEPN4llvm6MDNodeERNS_4LLVM12ModuleImportE.exit.i, %_ZN4llvm19dyn_cast_if_presentINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i, %bb.eb, %_ZNK4llvm6MDNode10getOperandEj.exit13.i.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i162, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, %bb.dv, %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit39.i, %bb.dq, %bb.cw, %bb.cv, %bb.cq, %bb.cp, %bb.ck, %bb.br, %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE4CaseINS1_4LLVM4BrOpERZL11setLoopAttrPKNS_6MDNodeES3_RNS7_12ModuleImportEE3$_0EERS5_OT0_.exit.i", %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE4CaseINS1_4LLVM4BrOpERZL11setLoopAttrPKNS_6MDNodeES3_RNS7_12ModuleImportEE3$_0EERS5_OT0_.exit.thread.i", %bb.bp, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit.i, %_ZN4llvmneENS_9StringRefES0_.exit143.i, %_ZN4llvm9StringRefC2EPKc.exit139.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit128.thread.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit128.i, %_ZN4llvmneENS_9StringRefES0_.exit.i, %_ZN4llvm9StringRefC2EPKc.exit123.i, %_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i, %bb.q, %_ZNK4llvm6MDNode10getOperandEj.exit95.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit85.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i, %bb.el, %bb.em, %_ZL20setNoaliasScopesAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit, %_ZL18setAliasScopesAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit, %_ZL19setAccessGroupsAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit, %_ZL11setTBAAAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit
  %.sroa.064.1 = phi i8 [ %i.yz, %bb.em ], [ %.sroa.03.1.i, %_ZL11setTBAAAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit ], [ %.sroa.04.111.i, %_ZL19setAccessGroupsAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit139.i ], [ %.sroa.04.111.i79, %_ZL18setAliasScopesAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit ], [ %.sroa.04.111.i104, %_ZL20setNoaliasScopesAttrPKN4llvm6MDNodeEPN4mlir9OperationERNS3_4LLVM12ModuleImportE.exit ], [ 1, %bb.br ], [ 0, %bb.ck ], [ 0, %bb.cq ], [ 0, %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EED2Ev.exit39.i ], [ 0, %_ZNK4llvm6MDNode10getOperandEj.exit13.i.i ], [ %i.yw, %bb.el ], [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit128.thread.i ], [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i ], [ 0, %_ZNK4llvm6MDNode10getOperandEj.exit.i ], [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit85.i ], [ 0, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i ], [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i ], [ %.sroa.062.4.i, %_ZN4llvm11SmallVectorImLj6EED2Ev.exit.i ], [ 0, %_ZNK4llvm6MDNode10getOperandEj.exit95.i ], [ 0, %bb.q ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit123.i ], [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit128.i ], [ %.sroa.062.11.i, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit.i ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit143.i ], [ 0, %bb.bp ], [ 1, %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE4CaseINS1_4LLVM4BrOpERZL11setLoopAttrPKNS_6MDNodeES3_RNS7_12ModuleImportEE3$_0EERS5_OT0_.exit.thread.i" ], [ 0, %"_ZN4llvm10TypeSwitchIPN4mlir9OperationENS_13LogicalResultEE4CaseINS1_4LLVM4BrOpERZL11setLoopAttrPKNS_6MDNodeES3_RNS7_12ModuleImportEE3$_0EERS5_OT0_.exit.i" ], [ %.sroa.04.0.i136, %bb.cp ], [ %.sroa.04.0.i146, %bb.cv ], [ 1, %bb.cw ], [ 1, %bb.dq ], [ 0, %bb.dv ], [ 1, %bb.ef ], [ 0, %_ZL18convertVecTypeHintN4mlir7BuilderEPN4llvm6MDNodeERNS_4LLVM12ModuleImportE.exit.i ], [ 0, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i162 ], [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i ], [ 0, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i ], [ 0, %bb.eb ], [ 0, %_ZN4llvm19dyn_cast_if_presentINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i ], [ 0, %bb.eh ], [ 1, %bb.ej ], [ 0, %bb.ei ]
  ret i8 %.sroa.064.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal { ptr, i64 } @_ZNK12_GLOBAL__N_132LLVMDialectLLVMIRImportInterface22getSupportedIntrinsicsEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [213 x i32], align 4              ; 4 uses
  %i.b = load atomic i8, ptr @_ZGVZL26getSupportedIntrinsicsImplvE21convertibleIntrinsics acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZL26getSupportedIntrinsicsImplv.exit, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL26getSupportedIntrinsicsImplvE21convertibleIntrinsics) #18
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZL26getSupportedIntrinsicsImplv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(852) %i.a, ptr noundef nonnull align 4 dereferenceable(852) @constinit.36, i64 852, i1 false), !tbaa.struct !99
  call void @_ZN4llvm11SmallVectorIjLj12EEC2ESt16initializer_listIjE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZL26getSupportedIntrinsicsImplvE21convertibleIntrinsics, ptr nonnull %i.a, i64 213)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm11SmallVectorIjLj12EED2Ev, ptr nonnull @_ZZL26getSupportedIntrinsicsImplvE21convertibleIntrinsics, ptr nonnull @__dso_handle) #18 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL26getSupportedIntrinsicsImplvE21convertibleIntrinsics) #18
  br label %_ZL26getSupportedIntrinsicsImplv.exit

_ZL26getSupportedIntrinsicsImplv.exit:            ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load ptr, ptr @_ZZL26getSupportedIntrinsicsImplvE21convertibleIntrinsics, align 8, !tbaa !20
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL26getSupportedIntrinsicsImplvE21convertibleIntrinsics, i64 8), align 8, !tbaa !22
  %i.h = zext i32 %i.g to i64
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.h, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4mlir26LLVMImportDialectInterface24getSupportedInstructionsEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_132LLVMDialectLLVMIRImportInterface20getSupportedMetadataERN4llvm11LLVMContextE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.28") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.a = tail call noundef i32 @_ZNK4llvm11LLVMContext11getMDKindIDENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.28, i64 13) #18, !noalias !250
  %i.b = tail call noundef i32 @_ZNK4llvm11LLVMContext11getMDKindIDENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.30, i64 20) #18, !noalias !250
  %i.c = tail call noundef i32 @_ZNK4llvm11LLVMContext11getMDKindIDENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.32, i64 20) #18, !noalias !250
  %i.d = tail call noundef i32 @_ZNK4llvm11LLVMContext11getMDKindIDENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.34, i64 25) #18, !noalias !250
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !20, !alias.scope !250
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !22, !alias.scope !250
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 12, ptr %i.g, align 4, !tbaa !21, !alias.scope !250
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.e, i64 noundef 13, i64 noundef 4) #18
  %.pre8.pre.i.i.i.i = load i32, ptr %i.f, align 8, !tbaa !22, !alias.scope !250
  %i.h = zext i32 %.pre8.pre.i.i.i.i to i64
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !250
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.h ; 7 uses
  store <4 x i32> <i32 2, i32 1, i32 25, i32 18>, ptr %i.i, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> <i32 8, i32 7, i32 12, i32 13>, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 40, ptr %.sroa.11.0..sroa_idx.i, align 1
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 %i.a, ptr %.sroa.12.0..sroa_idx.i, align 1
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 %i.b, ptr %.sroa.13.0..sroa_idx.i, align 1
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  store i32 %i.c, ptr %.sroa.14.0..sroa_idx.i, align 1
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i32 %i.d, ptr %.sroa.15.0..sroa_idx.i, align 1
  %.pre.i.i.i.i = load i32, ptr %i.f, align 8, !tbaa !22, !alias.scope !250
  %i.j = add i32 %.pre.i.i.i.i, 13
  store i32 %i.j, ptr %i.f, align 8, !tbaa !22, !alias.scope !250
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL20convertIntrinsicImplRN4mlir9OpBuilderEPN4llvm8CallInstERNS_4LLVM12ModuleImportE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(498) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 4 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca ptr, align 8                      ; 4 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca ptr, align 8                      ; 4 uses
  %i.y = alloca ptr, align 8                      ; 4 uses
  %i.z = alloca ptr, align 8                      ; 4 uses
  %i.aa = alloca ptr, align 8                     ; 4 uses
  %i.ab = alloca ptr, align 8                     ; 4 uses
  %i.ac = alloca ptr, align 8                     ; 4 uses
  %i.ad = alloca ptr, align 8                     ; 4 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %i.ag = alloca ptr, align 8                     ; 4 uses
  %i.ah = alloca ptr, align 8                     ; 4 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca ptr, align 8                     ; 4 uses
  %i.ak = alloca ptr, align 8                     ; 4 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %i.am = alloca ptr, align 8                     ; 4 uses
  %i.an = alloca ptr, align 8                     ; 4 uses
  %i.ao = alloca ptr, align 8                     ; 4 uses
  %i.ap = alloca ptr, align 8                     ; 4 uses
  %i.aq = alloca ptr, align 8                     ; 4 uses
  %i.ar = alloca ptr, align 8                     ; 4 uses
  %i.as = alloca ptr, align 8                     ; 4 uses
  %i.at = alloca ptr, align 8                     ; 4 uses
  %i.au = alloca ptr, align 8                     ; 4 uses
  %i.av = alloca ptr, align 8                     ; 4 uses
  %i.aw = alloca ptr, align 8                     ; 4 uses
  %i.ax = alloca ptr, align 8                     ; 4 uses
  %i.ay = alloca ptr, align 8                     ; 4 uses
  %i.az = alloca ptr, align 8                     ; 4 uses
  %i.ba = alloca ptr, align 8                     ; 4 uses
  %i.bb = alloca ptr, align 8                     ; 4 uses
  %i.bc = alloca ptr, align 8                     ; 4 uses
  %i.bd = alloca ptr, align 8                     ; 4 uses
  %i.be = alloca ptr, align 8                     ; 4 uses
  %i.bf = alloca ptr, align 8                     ; 4 uses
  %i.bg = alloca ptr, align 8                     ; 4 uses
  %i.bh = alloca ptr, align 8                     ; 4 uses
  %i.bi = alloca ptr, align 8                     ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN4mlir9OperationENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_:bb.a
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_11InstructionEPN4mlir9OperationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN4mlir9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #18
  store i32 0, ptr %i.d, align 4, !tbaa !131
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11InstructionEPN4mlir9OperationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11InstructionEPN4mlir9OperationENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN4mlir9OperationENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir14NamedAttributeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !20
  %i.g = load i32, ptr %i.a, align 8, !tbaa !22
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !22
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #13

declare i16 @_ZNK4llvm13AttributeList17getParamAlignmentEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_28ArgAndResultAttrsOpInterfaceENS_6detail43ArgAndResultAttrsOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !83 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !61

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.21, i64 49), i64 34) #18
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !44 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !4

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_28ArgAndResultAttrsOpInterfaceEPNS_9OperationENS0_43ArgAndResultAttrsOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !84
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !135  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !148  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !61

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.21, i64 49), i64 34) #18
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !44
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #18, !inline_history !358
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !61

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.21, i64 49), i64 34) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !44
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #18, !inline_history !358
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_28ArgAndResultAttrsOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm11LLVMContext11getMDKindIDENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i8 0, 2) i8 @_ZL24setReqdWorkGroupSizeAttrRN4mlir7BuilderEPN4llvm6MDNodeEPNS_9OperationE(ptr %.0.val, ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  %.not3 = icmp eq ptr %1, null
  %.not = or i1 %.not3, %i.d
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @_ZL20convertDenseI32ArrayN4mlir7BuilderEPN4llvm6MDNodeE(ptr %.0.val, ptr noundef %0) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.i = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.i, 1
  %i.j = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 440
  store ptr %i.e, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.04.1 = phi i8 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i8 %.sroa.04.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i8 0, 2) i8 @_ZL28setIntelReqdSubGroupSizeAttrRN4mlir7BuilderEPN4llvm6MDNodeEPNS_9OperationE(ptr %.0.val, ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::Builder", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10LLVMFuncOpEvE2idE
  %.not4 = icmp eq ptr %1, null
  %.not = or i1 %.not4, %i.d
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.0.val, ptr %2, align 8
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 2
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i:        ; preds = %bb.c
  %i.h = and i64 %i.f, 960
  %.not3.i = icmp eq i64 %i.h, 64
  br i1 %.not3.i, label %bb.d, label %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i: ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %0, i64 -24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !22
  %.not38.i = icmp eq i32 %i.j, 1
  br i1 %.not38.i, label %.thread.i, label %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit.thread

.thread.i:                                        ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i
  %i.k = getelementptr inbounds i8, ptr %0, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

bb.d:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i
  %i.m = lshr i64 %i.f, 2
  %i.n = and i64 %i.m, 15
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.o
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i

_ZNK4llvm6MDNode10getOperandEj.exit.i:            ; preds = %bb.d, %.thread.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.l, %.thread.i ]
  %i.q = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i5.i, label %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i
  %i.r = load i8, ptr %i.q, align 4, !tbaa !68
  %i.s = icmp eq i8 %i.r, 1
  br i1 %i.s, label %_ZN4llvm19dyn_cast_if_presentINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i, label %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit.thread

_ZN4llvm19dyn_cast_if_presentINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75   ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !79
  %.not.i.i = icmp eq i8 %i.v, 5
  br i1 %.not.i.i, label %bb.f, label %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit.thread

bb.f:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !81   ; 3 uses
  %i.z = icmp ult i32 %i.y, 65
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !57
  %i.ab = icmp eq i32 %i.y, 0
  %i.ac = sub nuw nsw i32 64, %i.y
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = shl i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, %i.ad
  %.0.i.i.i.i = select i1 %i.ab, i64 0, i64 %i.af
  br label %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !98
  br label %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit

_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit.thread: ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i, %bb.b, %_ZN4llvm19dyn_cast_if_presentINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.j

_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit: ; preds = %bb.g, %bb.h
  %.0.i8.i.i = phi i64 [ %.0.i.i.i.i, %bb.g ], [ %i.ah, %bb.h ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.0.i8.i.i to i32
  %i.ai = call ptr @_ZN4mlir7Builder17getI32IntegerAttrEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.sroa.0.0.extract.trunc.i) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not.i.i.i5 = icmp ugt i32 %i.al, 16777215
  call void @llvm.assume(i1 %.not.i.i.i5)
  %i.am = lshr i32 %i.al, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.am, 1
  %i.an = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  store ptr %i.ai, ptr %i.ap, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit.thread, %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit, %bb.a
  %.sroa.04.1 = phi i8 [ 0, %bb.a ], [ 1, %bb.i ], [ 0, %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit.thread ], [ 0, %_ZL16convertIntegerMDN4mlir7BuilderEPN4llvm6MDNodeE.exit ]
  ret i8 %.sroa.04.1
}

declare { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @_ZN4mlir4LLVM22FunctionEntryCountAttr3getEPNS_11MLIRContextEmNS0_16ProfileCountTypeEN4llvm8ArrayRefImEE(ptr noundef, i64 noundef, i64 noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9Operation11emitWarningERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 1 dereferenceable(59) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !156
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNR4mlir18InFlightDiagnostic6appendIJRA59_KcEEERS0_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(59) %1) #18
  store i32 3, ptr %2, align 8, !tbaa !360
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.c, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %.not.i.i.i.i = icmp ult i32 %i.f, %i.h
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = zext i32 %i.f to i64
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = load i32, ptr %i.e, align 8, !tbaa !22
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !22
  br label %_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i

_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZNR4mlir18InFlightDiagnostic6appendIJRA59_KcEEERS0_DpOT_.exit

_ZNR4mlir18InFlightDiagnostic6appendIJRA59_KcEEERS0_DpOT_.exit: ; preds = %bb.a, %_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i
  ret ptr %0
}

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !156
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !361, !range !92, !noundef !93
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !361
  br i1 %i.d, label %bb.d, label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.e) #18
  br label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm8dyn_castIN4mlir25WeightedBranchOpInterfaceENS1_9OperationEEEDcPT0_(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_25WeightedBranchOpInterfaceENS_6detail40WeightedBranchOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0)
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4llvm23DefaultDoCastIfPossibleIN4mlir25WeightedBranchOpInterfaceEPNS1_9OperationENS_8CastInfoIS2_S4_vEEE16doCastIfPossibleES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir25WeightedBranchOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i, label %bb.c

end_hunk_3
