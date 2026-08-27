Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinalgTransformOps?download=true
inline.NumInlined: 40313
inline.NumDeleted: 11533
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4mlir9transform20FuseIntoContainingOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE:bb.a

.lr.ph.i.i.i.preheader.i.i.i.i.i:                 ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull %i.hy, i64 noundef %i.apz, i64 noundef 8) #29, !noalias !764
  %i.aqd = load ptr, ptr %51, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %n.vec = and i64 %i.apz, 4294967292             ; 3 uses
  %i.aqe = shl nuw nsw i64 %n.vec, 3
  %i.aqf = getelementptr i8, ptr %i.aqd, i64 %i.aqe
  %i.aqg = and i64 %i.apz, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aqb, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i.i.i.preheader.i.i.i.i.i
  %index = phi i64 [ 0, %.lr.ph.i.i.i.preheader.i.i.i.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.aqh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aqd, i64 %i.aqh ; 2 uses
  %i.aqi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !noalias !764
  store <2 x i64> %broadcast.splat, ptr %i.aqi, align 8, !noalias !764
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aqj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aqj, label %middle.block, label %vector.body, !llvm.loop !862

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.apz
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i76.i

.lr.ph.i.i.i.i.i.i.i76.i:                         ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i76.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.aql, %.lr.ph.i.i.i.i.i.i.i76.i ], [ %i.aqf, %middle.block ] ; 2 uses
  %.068.i.i.i.i.i.i.i.i = phi i64 [ %i.aqk, %.lr.ph.i.i.i.i.i.i.i76.i ], [ %i.aqg, %middle.block ]
  store i64 %i.aqb, ptr %.09.i.i.i.i.i.i.i.i, align 8, !noalias !764
  %i.aqk = add nsw i64 %.068.i.i.i.i.i.i.i.i, -1  ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aqk, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i76.i, !llvm.loop !863

_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i: ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj4EED2Ev.exit.i.i
  %.not.i105.i.i = icmp eq i32 %i.apy, 0
  br i1 %.not.i105.i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i, label %.lr.ph.i.i.i.i.i106.i.i

.lr.ph.i.i.i.i.i106.i.i:                          ; preds = %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i
  store i64 %i.aqb, ptr %i.hy, align 8, !noalias !764
  %.not.i.i.i.i.i107.i.i = icmp eq i32 %i.apy, 1
  br i1 %.not.i.i.i.i.i107.i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i, label %.lr.ph.i.i.i.i.i106.i.i.1

.lr.ph.i.i.i.i.i106.i.i.1:                        ; preds = %.lr.ph.i.i.i.i.i106.i.i
  store i64 %i.aqb, ptr %i.ke, align 8, !noalias !764
  %.not.i.i.i.i.i107.i.i.1 = icmp eq i32 %i.apy, 2
  br i1 %.not.i.i.i.i.i107.i.i.1, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i, label %.lr.ph.i.i.i.i.i106.i.i.2

.lr.ph.i.i.i.i.i106.i.i.2:                        ; preds = %.lr.ph.i.i.i.i.i106.i.i.1
  store i64 %i.aqb, ptr %i.kf, align 8, !noalias !764
  %.not.i.i.i.i.i107.i.i.2 = icmp eq i32 %i.apy, 3
  br i1 %.not.i.i.i.i.i107.i.i.2, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i, label %.lr.ph.i.i.i.i.i106.i.i.3

.lr.ph.i.i.i.i.i106.i.i.3:                        ; preds = %.lr.ph.i.i.i.i.i106.i.i.2
  store i64 %i.aqb, ptr %i.kg, align 8, !noalias !764
  %.not.i.i.i.i.i107.i.i.3 = icmp eq i32 %i.apy, 4
  br i1 %.not.i.i.i.i.i107.i.i.3, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i, label %.lr.ph.i.i.i.i.i106.i.i.4

.lr.ph.i.i.i.i.i106.i.i.4:                        ; preds = %.lr.ph.i.i.i.i.i106.i.i.3
  store i64 %i.aqb, ptr %i.kh, align 8, !noalias !764
  %.not.i.i.i.i.i107.i.i.4 = icmp eq i32 %i.apy, 5
  br i1 %.not.i.i.i.i.i107.i.i.4, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i, label %.lr.ph.i.i.i.i.i106.i.i.5

.lr.ph.i.i.i.i.i106.i.i.5:                        ; preds = %.lr.ph.i.i.i.i.i106.i.i.4
  store i64 %i.aqb, ptr %i.ki, align 8, !noalias !764
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i106.i.i, %.lr.ph.i.i.i.i.i106.i.i.1, %.lr.ph.i.i.i.i.i106.i.i.2, %.lr.ph.i.i.i.i.i106.i.i.3, %.lr.ph.i.i.i.i.i106.i.i.4, %.lr.ph.i.i.i.i.i106.i.i.5, %.lr.ph.i.i.i.i.i.i.i76.i, %middle.block, %_ZSt6fill_nIPN4mlir12OpFoldResultEmS1_ET_S3_T0_RKT1_.exit.i.i.i.i
  store i32 %i.apy, ptr %i.hz, align 8, !tbaa !59, !noalias !764
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.apo, i64 24
  %.sroa.0.0.copyload.i108.i.i = load ptr, ptr %i.aqm, align 8, !noalias !764
  %i.aqn = load ptr, ptr %77, align 8, !tbaa !57, !noalias !764
  %i.aqo = load i32, ptr %i.fz, align 8, !tbaa !59, !noalias !764
  %i.aqp = zext i32 %i.aqo to i64
  %i.aqq = load ptr, ptr %78, align 8, !tbaa !57, !noalias !764
  store ptr %i.aqq, ptr %52, align 8, !tbaa !346, !noalias !764
  %i.aqr = load i32, ptr %i.gb, align 8, !tbaa !59, !noalias !764
  %i.aqs = zext i32 %i.aqr to i64
  store i64 %i.aqs, ptr %i.ib, align 8, !tbaa !349, !noalias !764
  %i.aqt = load ptr, ptr %51, align 8, !tbaa !57, !noalias !764
  store ptr %i.aqt, ptr %53, align 8, !tbaa !346, !noalias !764
  store i64 %i.apz, ptr %i.ic, align 8, !tbaa !349, !noalias !764
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false), !noalias !764
  %i.aqu = call ptr @_ZN4mlir6tensor21ParallelInsertSliceOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefINS_12OpFoldResultEEES9_S9_NS7_INS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr %.sroa.0.0.copyload.i108.i.i, ptr %.sroa.015.0.copyload.i.i, ptr %.sroa.014.0.copyload.i.i, ptr %i.aqn, i64 %i.aqp, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %52, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %53, ptr noundef nonnull byval(%"class.llvm::ArrayRef.2301") align 8 %54) #29, !noalias !764 ; 0 uses
  %i.aqv = call i64 @_ZN4mlir3scf8ForallOp26getODSResultIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 0) #29, !noalias !764 ; 3 uses
  %i.aqw = load ptr, ptr %35, align 8, !tbaa !24, !noalias !764
  %i.aqx = getelementptr inbounds i8, ptr %i.aqw, i64 -16 ; 2 uses
  %i.aqy = and i64 %i.aqv, 4294967295             ; 4 uses
  %i.aqz = icmp eq i64 %i.aqy, 0
  br i1 %i.aqz, label %_ZN4mlir3scf8ForallOp10getResultsEv.exit.i.i, label %bb.ea

bb.ea:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i
  %i.ara = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aqx, i64 noundef %i.aqy) #29, !noalias !764
  br label %_ZN4mlir3scf8ForallOp10getResultsEv.exit.i.i

_ZN4mlir3scf8ForallOp10getResultsEv.exit.i.i:     ; preds = %bb.ea, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i
  %i.arb = phi ptr [ %i.ara, %bb.ea ], [ %i.aqx, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEC2EmRKS2_.exit.i.i ]
  %.sroa.5.0.extract.shift.i.i109.i.i = lshr i64 %i.aqv, 32
  %i.arc = add i64 %.sroa.5.0.extract.shift.i.i109.i.i, %i.aqv
  %i.ard = and i64 %i.arc, 4294967295             ; 2 uses
  %i.are = sub nsw i64 %i.ard, %i.aqy
  %.not4853.i.i = icmp eq i64 %i.ard, %i.aqy
  br i1 %.not4853.i.i, label %._crit_edge57.i.i, label %.lr.ph56.i.i

._crit_edge57.i.i:                                ; preds = %_ZN4mlir9Operation9getResultEj.exit120.i.i, %_ZN4mlir3scf8ForallOp10getResultsEv.exit.i.i
  br i1 %i.ada, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %._crit_edge57.i.i
  %i.arf = xor i64 %i.aam, -1
  %i.arg = getelementptr inbounds [16 x i8], ptr %i.ks, i64 %i.arf
  br label %_ZN4mlir9Operation9getResultEj.exit114.i.i

bb.ec:                                            ; preds = %._crit_edge57.i.i
  %i.arh = getelementptr inbounds i8, ptr %i.ks, i64 -96
  %i.ari = add nuw nsw i64 %i.aam, 4294967291
  %i.arj = and i64 %i.ari, 4294967295
  %i.ark = sub nsw i64 0, %i.arj
  %i.arl = getelementptr inbounds [24 x i8], ptr %i.arh, i64 %i.ark
  br label %_ZN4mlir9Operation9getResultEj.exit114.i.i

_ZN4mlir9Operation9getResultEj.exit114.i.i:       ; preds = %bb.ec, %bb.eb
  %.0.i.i113.i.i = phi ptr [ %i.arg, %bb.eb ], [ %i.arl, %bb.ec ]
  %i.arm = load ptr, ptr %39, align 8, !tbaa !24, !noalias !764 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 36
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !161, !noalias !764
  %i.arp = getelementptr inbounds i8, ptr %i.arm, i64 -16
  %i.arq = zext i32 %i.aro to i64
  %i.arr = add nsw i64 %i.arq, -1
  %i.ars = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.arp, i64 noundef %i.arr) #29, !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #29, !noalias !764
  store ptr %33, ptr %55, align 8, !tbaa !864, !noalias !764
  %i.art = load ptr, ptr %2, align 8, !tbaa !47, !noalias !764
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 72
  %i.arv = load ptr, ptr %i.aru, align 8, !noalias !764
  call void %i.arv(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull %.0.i.i113.i.i, ptr %i.ars, ptr nonnull @"_ZN4llvm12function_refIFbRN4mlir9OpOperandEEE11callback_fnIZL29replaceForAllWithNewSignatureRNS1_12RewriterBaseERNS1_10DiagnosticEPNS1_9OperationESC_RNS1_12TilingResultElRNS_11SmallVectorINS1_12OpFoldResultELj6EEESI_E3$_2EEblS3_", i64 %i.id, ptr noundef null) #29, !noalias !764, !inline_history !848
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #29, !noalias !764
  %i.arw = load ptr, ptr %39, align 8, !tbaa !24, !noalias !764
  %i.arx = load ptr, ptr %51, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %i.ary = icmp eq ptr %i.arx, %i.hy
  br i1 %i.ary, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit117.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZN4mlir9Operation9getResultEj.exit114.i.i
  call void @free(ptr noundef %i.arx) #29, !noalias !764
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit117.i.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit117.i.i: ; preds = %bb.ed, %_ZN4mlir9Operation9getResultEj.exit114.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29, !noalias !764
  %i.arz = load ptr, ptr %49, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %i.asa = icmp eq ptr %i.arz, %i.hv
  br i1 %i.asa, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit.i.i, label %bb.ee

bb.ee:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit117.i.i
  call void @free(ptr noundef %i.arz) #29, !noalias !764
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit.i.i: ; preds = %bb.ee, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit117.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29, !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29, !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29, !noalias !764
  %i.asb = load ptr, ptr %38, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %i.asc = icmp eq ptr %i.asb, %i.gu
  br i1 %i.asc, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit.i.i
  call void @free(ptr noundef %i.asb) #29, !noalias !764
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i: ; preds = %bb.ef, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29, !noalias !764
  %i.asd = load ptr, ptr %37, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %i.ase = icmp eq ptr %i.asd, %i.gr
  br i1 %i.ase, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit118.i.i, label %bb.eg

bb.eg:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i
  call void @free(ptr noundef %i.asd) #29, !noalias !764
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit118.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit118.i.i: ; preds = %bb.eg, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29, !noalias !764
  br label %bb.ej

.lr.ph56.i.i:                                     ; preds = %_ZN4mlir3scf8ForallOp10getResultsEv.exit.i.i, %_ZN4mlir9Operation9getResultEj.exit120.i.i
  %.sroa.9.055.i.i = phi i64 [ %.pre-phi.i.i, %_ZN4mlir9Operation9getResultEj.exit120.i.i ], [ 0, %_ZN4mlir3scf8ForallOp10getResultsEv.exit.i.i ] ; 5 uses
  %i.asf = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.arb, i64 noundef %.sroa.9.055.i.i) #29, !noalias !866
  %i.asg = load ptr, ptr %39, align 8, !tbaa !24, !noalias !764 ; 2 uses
  %i.ash = trunc i64 %.sroa.9.055.i.i to i32
  %i.asi = icmp ult i32 %i.ash, 6
  br i1 %i.asi, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph56.i.i
  %i.asj = add nuw nsw i64 %.sroa.9.055.i.i, 1    ; 2 uses
  %i.ask = and i64 %i.asj, 15
  %i.asl = sub nsw i64 0, %i.ask
  %i.asm = getelementptr inbounds [16 x i8], ptr %i.asg, i64 %i.asl
  br label %_ZN4mlir9Operation9getResultEj.exit120.i.i

bb.ei:                                            ; preds = %.lr.ph56.i.i
  %i.asn = getelementptr inbounds i8, ptr %i.asg, i64 -96
  %i.aso = sub i64 -4294967291, %.sroa.9.055.i.i
  %i.asp = getelementptr inbounds [24 x i8], ptr %i.asn, i64 %i.aso
  %.pre65.i.i = add nuw i64 %.sroa.9.055.i.i, 1
  br label %_ZN4mlir9Operation9getResultEj.exit120.i.i

_ZN4mlir9Operation9getResultEj.exit120.i.i:       ; preds = %bb.ei, %bb.eh
  %.pre-phi.i.i = phi i64 [ %i.asj, %bb.eh ], [ %.pre65.i.i, %bb.ei ] ; 2 uses
  %.0.i.i119.i.i = phi ptr [ %i.asm, %bb.eh ], [ %i.asp, %bb.ei ]
  %i.asq = load ptr, ptr %2, align 8, !tbaa !47, !noalias !764
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 64
  %i.ass = load ptr, ptr %i.asr, align 8, !noalias !764
  call void %i.ass(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.asf, ptr nonnull %.0.i.i119.i.i) #29, !noalias !764, !inline_history !848
  %.not48.i.i = icmp eq i64 %.pre-phi.i.i, %i.are
  br i1 %.not48.i.i, label %._crit_edge57.i.i, label %.lr.ph56.i.i

bb.ej:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit118.i.i, %bb.df
  %.0.i.i = phi ptr [ %i.arw, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit118.i.i ], [ null, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29, !noalias !764
  %.not.i.i123.i.i = icmp eq ptr %i.aeb, null
  br i1 %.not.i.i123.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  store <2 x ptr> %i.aea, ptr %i.fp, align 8, !noalias !764
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i.i

bb.el:                                            ; preds = %bb.ej
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false), !noalias !764
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i.i

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i.i:  ; preds = %bb.el, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29, !noalias !764
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i.i, %._crit_edge.i.i, %_ZN4mlir9Operation9getResultEj.exit.i.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i.i ], [ null, %._crit_edge.i.i ], [ null, %_ZN4mlir9Operation9getResultEj.exit.i.i ]
  call void @_ZN4mlir6detail17DominanceInfoBaseILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %34) #29, !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29, !noalias !764
  %i.ast = load ptr, ptr %i.gn, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %i.asu = icmp eq ptr %i.ast, %i.go
  br i1 %i.asu, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj0EED2Ev.exit.i.i.i, label %bb.em

bb.em:                                            ; preds = %._crit_edge.thread.i.i
  call void @free(ptr noundef %i.ast) #29, !noalias !764
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPN4mlir9OperationELj0EED2Ev.exit.i.i.i: ; preds = %bb.em, %._crit_edge.thread.i.i
  %i.asv = load i32, ptr %i.ie, align 4, !tbaa !137, !noalias !764 ; 2 uses
  %i.asw = icmp eq i32 %i.asv, 0
  br i1 %i.asw, label %_ZL29replaceForAllWithNewSignatureRN4mlir12RewriterBaseERNS_10DiagnosticEPNS_9OperationES5_RNS_12TilingResultElRN4llvm11SmallVectorINS_12OpFoldResultELj6EEESC_.exit.i, label %bb.en

bb.en:                                            ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj0EED2Ev.exit.i.i.i
  %i.asx = load ptr, ptr %33, align 8, !tbaa !127, !noalias !764
  %i.asy = zext i32 %i.asv to i64                 ; 2 uses
  %i.asz = shl nuw nsw i64 %i.asy, 3
  %i.ata = add nuw nsw i64 %i.asy, 31
  %i.atb = lshr i64 %i.ata, 3
  %i.atc = and i64 %i.atb, 1073741820
  %i.atd = add nuw nsw i64 %i.atc, %i.asz
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.asx, i64 noundef %i.atd, i64 noundef 8) #29, !noalias !764
  br label %_ZL29replaceForAllWithNewSignatureRN4mlir12RewriterBaseERNS_10DiagnosticEPNS_9OperationES5_RNS_12TilingResultElRN4llvm11SmallVectorINS_12OpFoldResultELj6EEESC_.exit.i

_ZL29replaceForAllWithNewSignatureRN4mlir12RewriterBaseERNS_10DiagnosticEPNS_9OperationES5_RNS_12TilingResultElRN4llvm11SmallVectorINS_12OpFoldResultELj6EEESC_.exit.i: ; preds = %bb.en, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj0EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29, !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %42), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %44), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %45), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %46), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %52), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %53), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %54), !noalias !764
  %i.ate = call noundef ptr @_ZN4mlir11OpInterfaceINS_19LoopLikeOpInterfaceENS_6detail34LoopLikeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.1.ph286), !noalias !764
  %.not120.i = icmp eq ptr %i.ate, null
  br i1 %.not120.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_ZL29replaceForAllWithNewSignatureRN4mlir12RewriterBaseERNS_10DiagnosticEPNS_9OperationES5_RNS_12TilingResultElRN4llvm11SmallVectorINS_12OpFoldResultELj6EEESC_.exit.i
  %i.atf = load ptr, ptr %72, align 8, !tbaa !24, !noalias !764
  %i.atg = load ptr, ptr %2, align 8, !tbaa !47, !noalias !764
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 16
  %i.ati = load ptr, ptr %i.ath, align 8, !noalias !764
  call void %i.ati(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.atf) #29, !noalias !764, !inline_history !814
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %_ZL29replaceForAllWithNewSignatureRN4mlir12RewriterBaseERNS_10DiagnosticEPNS_9OperationES5_RNS_12TilingResultElRN4llvm11SmallVectorINS_12OpFoldResultELj6EEESC_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  store ptr %.1.i.i, ptr %110, align 8, !tbaa !812, !alias.scope !874
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !57, !alias.scope !874
  store i32 0, ptr %i.gg, align 8, !tbaa !59, !alias.scope !874
  store i32 6, ptr %i.gh, align 4, !tbaa !60, !alias.scope !874
  %i.atj = load i32, ptr %i.if, align 8, !tbaa !59, !noalias !874 ; 5 uses
  %.not.i.i.i.i.i.i79.i = icmp eq i32 %i.atj, 0
  br i1 %.not.i.i.i.i.i.i79.i, label %_ZSt10make_tupleIJRN4llvm11SmallVectorIPN4mlir9OperationELj6EEERS4_EESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_.exit.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.atk = icmp ugt i32 %i.atj, 6
  br i1 %i.atk, label %_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i, label %_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i

_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i: ; preds = %bb.eq
  %i.atl = zext i32 %i.atj to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ge, ptr noundef nonnull %i.gf, i64 noundef %i.atl, i64 noundef 8) #29
  %.pre.i.i.i.i.i80.i = load i32, ptr %i.if, align 8, !tbaa !59, !noalias !874 ; 2 uses
  %.not.i.i.i.i.i.i.i81.i = icmp eq i32 %.pre.i.i.i.i.i80.i, 0
  br i1 %.not.i.i.i.i.i.i.i81.i, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i

_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i: ; preds = %_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i
  %.pre.i.i.i.i82.i = load ptr, ptr %i.ge, align 8, !tbaa !57, !alias.scope !874
  br label %_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i

_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i, %bb.eq
  %i.atm = phi ptr [ %.pre.i.i.i.i82.i, %_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i ], [ %i.gf, %bb.eq ]
  %i.atn = phi i32 [ %.pre.i.i.i.i.i80.i, %_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i ], [ %i.atj, %bb.eq ]
  %i.ato = zext i32 %i.atn to i64
  %i.atp = load ptr, ptr %79, align 8, !tbaa !57, !noalias !874
  %gepdiff.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ato, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.atm, ptr align 8 %i.atp, i64 %gepdiff.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i, %_ZSt4copyIPKPN4mlir9OperationEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i
  store i32 %i.atj, ptr %i.gg, align 8, !tbaa !59, !alias.scope !874
  br label %_ZSt10make_tupleIJRN4llvm11SmallVectorIPN4mlir9OperationELj6EEERS4_EESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_.exit.i

_ZSt10make_tupleIJRN4llvm11SmallVectorIPN4mlir9OperationELj6EEERS4_EESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.ep, %_ZN4mlir10DiagnosticlsILm11EEERS0_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #29, !noalias !764
  br label %bb.er

bb.er:                                            ; preds = %_ZSt10make_tupleIJRN4llvm11SmallVectorIPN4mlir9OperationELj6EEERS4_EESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOSB_.exit.i, %_ZN4mlir10DiagnosticlsILm29EEERS0_RAT__Kc.exit.i
  %i.atq = load i8, ptr %i.gc, align 8, !tbaa !810, !range !182, !noalias !764, !noundef !183
  %i.atr = trunc nuw i8 %i.atq to i1
  store i8 0, ptr %i.gc, align 8, !tbaa !810, !noalias !764
  br i1 %i.atr, label %bb.es, label %_ZNSt14_Optional_baseIN4mlir12TilingResultELb0ELb0EED2Ev.exit.i

bb.es:                                            ; preds = %bb.er
  %i.ats = load ptr, ptr %i.ig, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %i.att = icmp eq ptr %i.ats, %i.ih
  br i1 %i.att, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit.i.i.i.i.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @free(ptr noundef %i.ats) #29
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit.i.i.i.i.i.i

_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.et, %bb.es
  %i.atu = load ptr, ptr %i.gi, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %i.atv = icmp eq ptr %i.atu, %i.ii
  br i1 %i.atv, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit.i.i.i.i.i.i
  call void @free(ptr noundef %i.atu) #29
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.eu, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit.i.i.i.i.i.i
  %i.atw = load ptr, ptr %79, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %i.atx = icmp eq ptr %i.atw, %i.ij
  br i1 %i.atx, label %_ZNSt14_Optional_baseIN4mlir12TilingResultELb0ELb0EED2Ev.exit.i, label %bb.ev

bb.ev:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i.i
  call void @free(ptr noundef %i.atw) #29
  br label %_ZNSt14_Optional_baseIN4mlir12TilingResultELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN4mlir12TilingResultELb0ELb0EED2Ev.exit.i: ; preds = %bb.ev, %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit.i.i.i.i.i.i, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #29, !noalias !764
  %i.aty = load ptr, ptr %78, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %i.atz = icmp eq ptr %i.aty, %i.ik
  br i1 %i.atz, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt14_Optional_baseIN4mlir12TilingResultELb0ELb0EED2Ev.exit.i
  call void @free(ptr noundef %i.aty) #29
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i: ; preds = %bb.ew, %_ZNSt14_Optional_baseIN4mlir12TilingResultELb0ELb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #29, !noalias !764
  %i.aua = load ptr, ptr %77, align 8, !tbaa !57, !noalias !764 ; 2 uses
  %i.aub = icmp eq ptr %i.aua, %i.il
  br i1 %i.aub, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.aua) #29
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #29, !noalias !764
  %.not.i.i86.i = icmp eq ptr %i.sv, null
  br i1 %.not.i.i86.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  store <2 x ptr> %i.su, ptr %i.fp, align 8, !noalias !764
  br label %_ZL26tileAndFuseFirstExtractUseRN4mlir12RewriterBaseERNS_10DiagnosticEPNS_9OperationES5_N4llvm8ArrayRefINS_18InnerTileAlignmentEEE.exit

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i8 0, i64 16, i1 false), !noalias !764
  br label %_ZL26tileAndFuseFirstExtractUseRN4mlir12RewriterBaseERNS_10DiagnosticEPNS_9OperationES5_N4llvm8ArrayRefINS_18InnerTileAlignmentEEE.exit

_ZL26tileAndFuseFirstExtractUseRN4mlir12RewriterBaseERNS_10DiagnosticEPNS_9OperationES5_N4llvm8ArrayRefINS_18InnerTileAlignmentEEE.exit.thread: ; preds = %_ZN4mlir10DiagnosticlsILm38EEERS0_RAT__Kc.exit.i, %_ZN4mlir10DiagnosticlsILm40EEERS0_RAT__Kc.exit.i
  store ptr null, ptr %110, align 8, !tbaa !812, !alias.scope !764
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !57, !alias.scope !764
  store i32 0, ptr %i.gg, align 8, !tbaa !59, !alias.scope !764
  store i32 6, ptr %i.gh, align 4, !tbaa !60, !alias.scope !764
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #29, !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %83)
  call void @llvm.lifetime.end.p0(ptr nonnull %80)
  br label %bb.fe

_ZL26tileAndFuseFirstExtractUseRN4mlir12RewriterBaseERNS_10DiagnosticEPNS_9OperationES5_N4llvm8ArrayRefINS_18InnerTileAlignmentEEE.exit: ; preds = %bb.ez, %bb.fa
end_hunk_0
