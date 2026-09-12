Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ComplexDeinterleavingPass?download=true
inline.NumInlined: 4024
inline.NumDeleted: 2078
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_121ComplexDeinterleaving18evaluateBasicBlockEPN4llvm10BasicBlockEj:bb.a
_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i65, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.loopexit.i ], [ %i.ald, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.akr, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.loopexit.i ], [ %i.ale, %.loopexit.i.i.i ] ; 2 uses
  %i.alf = getelementptr inbounds nuw [16 x i8], ptr %i.ajy, i64 %.pre-phi.i
  %.not38.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.alf
  br i1 %.not38.i, label %bb.ee, label %bb.dz

bb.dz:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.i
  %i.alg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !499
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  %.val22.i = load ptr, ptr %i.ali, align 8, !tbaa !37 ; 2 uses
  %i.alj = load ptr, ptr %.val22.i, align 8, !tbaa !197 ; 3 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !202 ; 3 uses
  %.not18.i = icmp eq ptr %i.all, null
  br i1 %.not18.i, label %.thread.i50, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.alm = call noundef zeroext i1 @_ZNK4llvm11Instruction11comesBeforeEPKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.alj, ptr noundef nonnull %i.all) #23
  %i.aln = select i1 %i.alm, ptr %i.all, ptr %i.alj
  br label %.thread.i50

.thread.i50:                                      ; preds = %bb.ea, %bb.dz
  %.0.i = phi ptr [ %i.aln, %bb.ea ], [ %i.alj, %bb.dz ]
  %.not20.i = icmp eq ptr %.0.i, %i.ajx
  br i1 %.not20.i, label %bb.eb, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

bb.eb:                                            ; preds = %.thread.i50
  %i.alo = load i32, ptr %i.ah, align 8, !tbaa !110 ; 2 uses
  %i.alp = load i32, ptr %i.ai, align 4, !tbaa !111
  %.not.i.i53 = icmp ult i32 %i.alo, %i.alp
  br i1 %.not.i.i53, label %bb.ed, label %bb.ec, !prof !150

bb.ec:                                            ; preds = %bb.eb
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.ajx)
  br label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

bb.ed:                                            ; preds = %bb.eb
  %i.alq = zext i32 %i.alo to i64
  %i.alr = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.als = getelementptr inbounds nuw [8 x i8], ptr %i.alr, i64 %i.alq
  store ptr %i.ajx, ptr %i.als, align 1
  %i.alt = load i32, ptr %i.ah, align 8, !tbaa !110
  %i.alu = add i32 %i.alt, 1
  store i32 %i.alu, ptr %i.ah, align 8, !tbaa !110
  br label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

bb.ee:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit.i
  %i.alv = load i8, ptr %i.ajx, align 8, !tbaa !119 ; 2 uses
  %i.alw = icmp eq i8 %i.alv, 88
  br i1 %i.alw, label %bb.ef, label %select.unfold.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.alx = getelementptr inbounds i8, ptr %.sroa.01.050, i64 -56 ; 2 uses
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aly, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.alz = load i8, ptr %i.aly, align 8, !tbaa !119
  %i.ama = icmp eq i8 %i.alz, 14
  br i1 %i.ama, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i: ; preds = %bb.eg
  %i.amb = getelementptr inbounds nuw i8, ptr %i.aly, i64 32
  %i.amc = load i32, ptr %i.amb, align 8
  %i.amd = and i32 %i.amc, 8192
  %.not.i.i.i.i61 = icmp eq i32 %i.amd, 0
  br i1 %.not.i.i.i.i61, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i
  %i.ame = load i32, ptr %i.m, align 8, !tbaa !471
  %i.amf = call noundef i32 @_ZN4llvm9Intrinsic24getInterleaveIntrinsicIDEj(i32 noundef %i.ame) #23
  %i.amg = load ptr, ptr %i.alx, align 8, !tbaa !124
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 36
  %i.ami = load i32, ptr %i.amh, align 4, !tbaa !206
  %.not38.i.i = icmp eq i32 %i.amf, %i.ami
  br i1 %.not38.i.i, label %bb.eh, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

bb.eh:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %i.xw, ptr %12, align 8, !tbaa !37
  store i32 0, ptr %i.xx, align 8, !tbaa !110
  store i32 2, ptr %i.xy, align 4, !tbaa !111
  %i.amj = load i32, ptr %i.m, align 8, !tbaa !471
  %.not3962.not.i.i = icmp eq i32 %i.amj, 0
  br i1 %.not3962.not.i.i, label %.critedge43.i.i, label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %bb.eh
  %i.amk = getelementptr inbounds i8, ptr %.sroa.01.050, i64 -20
  br label %bb.ei

bb.ei:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_112ComplexValueELb1EE9push_backES2_.exit.i.i, %.lr.ph.i.i62
  %.03263.i.i = phi i32 [ 0, %.lr.ph.i.i62 ], [ %i.anh, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_112ComplexValueELb1EE9push_backES2_.exit.i.i ] ; 3 uses
  %i.aml = load i32, ptr %i.amk, align 4
  %i.amm = and i32 %i.aml, 268435455
  %i.amn = zext nneg i32 %i.amm to i64
  %i.amo = sub nsw i64 0, %i.amn
  %i.amp = getelementptr inbounds [32 x i8], ptr %i.ajx, i64 %i.amo ; 2 uses
  %i.amq = zext i32 %.03263.i.i to i64
  %i.amr = getelementptr inbounds nuw [32 x i8], ptr %i.amp, i64 %i.amq
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !124 ; 3 uses
  %i.amt = load i8, ptr %i.ams, align 8, !tbaa !119
  %i.amu = icmp ugt i8 %i.amt, 29
  %i.amv = or disjoint i32 %.03263.i.i, 1
  %i.amw = zext i32 %i.amv to i64
  %i.amx = getelementptr inbounds nuw [32 x i8], ptr %i.amp, i64 %i.amw
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !124 ; 3 uses
  %i.amz = load i8, ptr %i.amy, align 8, !tbaa !119
  %i.ana = icmp ugt i8 %i.amz, 29
  %or.cond.i.i = and i1 %i.amu, %i.ana
  br i1 %or.cond.i.i, label %bb.ej, label %.critedge.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.anb = load i32, ptr %i.xx, align 8, !tbaa !110 ; 2 uses
  %i.anc = load i32, ptr %i.xy, align 4, !tbaa !111
  %.not.i.i.i63 = icmp ult i32 %i.anb, %i.anc
  br i1 %.not.i.i.i63, label %bb.el, label %bb.ek, !prof !150

bb.ek:                                            ; preds = %bb.ej
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_112ComplexValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr nonnull %i.ams, ptr nonnull %i.amy)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_112ComplexValueELb1EE9push_backES2_.exit.i.i

bb.el:                                            ; preds = %bb.ej
  %i.and = zext i32 %i.anb to i64
  %.val.i.i.i = load ptr, ptr %12, align 8, !tbaa !37
  %i.ane = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.and ; 2 uses
  store ptr %i.ams, ptr %i.ane, align 1
  %.sroa.3.0..sroa_idx.i.i.i64 = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  store ptr %i.amy, ptr %.sroa.3.0..sroa_idx.i.i.i64, align 1
  %i.anf = load i32, ptr %i.xx, align 8, !tbaa !110
  %i.ang = add i32 %i.anf, 1
  store i32 %i.ang, ptr %i.xx, align 8, !tbaa !110
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_112ComplexValueELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_112ComplexValueELb1EE9push_backES2_.exit.i.i: ; preds = %bb.el, %bb.ek
  %i.anh = add i32 %.03263.i.i, 2                 ; 2 uses
  %i.ani = load i32, ptr %i.m, align 8, !tbaa !471
  %.not39.i.i = icmp ult i32 %i.anh, %i.ani
  br i1 %.not39.i.i, label %bb.ei, label %.critedge43.i.i, !llvm.loop !441

.critedge43.i.i:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_112ComplexValueELb1EE9push_backES2_.exit.i.i, %bb.eh
  %i.anj = call fastcc noundef ptr @_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyNodeERN4llvm11SmallVectorINS_12ComplexValueELj2EEE(ptr noundef nonnull align 8 dereferenceable(496) %33, ptr noundef nonnull align 8 dereferenceable(48) %12)
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ei, %.critedge43.i.i
  %.4.i.i = phi ptr [ %i.anj, %.critedge43.i.i ], [ null, %bb.ei ]
  %i.ank = load ptr, ptr %12, align 8, !tbaa !37  ; 2 uses
  %i.anl = icmp eq ptr %i.ank, %i.xw
  br i1 %i.anl, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_112ComplexValueELj2EED2Ev.exit.i.i, label %bb.em

bb.em:                                            ; preds = %.critedge.i.i
  call void @free(ptr noundef %i.ank) #23
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_112ComplexValueELj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_112ComplexValueELj2EED2Ev.exit.i.i: ; preds = %bb.em, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyRootEPN4llvm11InstructionE.exit.i

select.unfold.i.i:                                ; preds = %bb.ee
  %i.anm = load i32, ptr %i.m, align 8, !tbaa !471
  %.not41.i.i = icmp eq i32 %i.anm, 2
  %.not.i26.i = icmp eq i8 %i.alv, 95
  %or.cond69.i.i = and i1 %.not.i26.i, %.not41.i.i
  br i1 %or.cond69.i.i, label %bb.en, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

bb.en:                                            ; preds = %select.unfold.i.i
  %i.ann = getelementptr inbounds nuw i8, ptr %.sroa.01.050, i64 48
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !37
  %i.anp = getelementptr inbounds nuw i8, ptr %.sroa.01.050, i64 56
  %i.anq = load i32, ptr %i.anp, align 8, !tbaa !110 ; 2 uses
  %i.anr = zext i32 %i.anq to i64                 ; 2 uses
  %i.ans = and i64 %i.anr, 1
  %.not.i47.i.i = icmp eq i64 %i.ans, 0
  br i1 %.not.i47.i.i, label %bb.eo, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

bb.eo:                                            ; preds = %bb.en
  %i.ant = lshr exact i64 %i.anr, 1               ; 2 uses
  %.not18.not23.i.not.i.i = icmp eq i32 %i.anq, 0
  br i1 %.not18.not23.i.not.i.i, label %_ZL18isInterleavingMaskN4llvm8ArrayRefIiEE.exit.i.i, label %.lr.ph.i.i.i54

bb.ep:                                            ; preds = %.critedge.i.i.i57
  %indvars.iv.next.i.i.i59 = add nuw nsw i64 %indvars.iv.i.i.i55, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i59, %i.ant
  br i1 %exitcond.not.i.i.i, label %_ZL18isInterleavingMaskN4llvm8ArrayRefIiEE.exit.i.i, label %.lr.ph.i.i.i54, !llvm.loop !442

.lr.ph.i.i.i54:                                   ; preds = %bb.eo, %bb.ep
  %indvars.iv.i.i.i55 = phi i64 [ %indvars.iv.next.i.i.i59, %bb.ep ], [ 0, %bb.eo ] ; 4 uses
  %.idx.i.i.i56 = shl nuw nsw i64 %indvars.iv.i.i.i55, 3
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ano, i64 %.idx.i.i.i56 ; 2 uses
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !66
  %i.anw = zext i32 %i.anv to i64
  %.not16.i.i.i = icmp eq i64 %indvars.iv.i.i.i55, %i.anw
  br i1 %.not16.i.i.i, label %.critedge.i.i.i57, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

.critedge.i.i.i57:                                ; preds = %.lr.ph.i.i.i54
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anu, i64 4
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !66
  %i.anz = add nuw nsw i64 %indvars.iv.i.i.i55, %i.ant
  %34 = zext i32 %i.any to i64
  %.not17.i.i.i58 = icmp eq i64 %i.anz, %34
  br i1 %.not17.i.i.i58, label %bb.ep, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

_ZL18isInterleavingMaskN4llvm8ArrayRefIiEE.exit.i.i: ; preds = %bb.ep, %bb.eo
  %i.aoa = getelementptr inbounds i8, ptr %.sroa.01.050, i64 -20
  %i.aob = load i32, ptr %i.aoa, align 4          ; 2 uses
  %i.aoc = and i32 %i.aob, 1073741824
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aoc, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i, label %_ZNK4llvm4User10getOperandEj.exit.i.i.thread.i.i

_ZNK4llvm4User10getOperandEj.exit.i.i.i.i:        ; preds = %_ZL18isInterleavingMaskN4llvm8ArrayRefIiEE.exit.i.i
  %i.aod = and i32 %i.aob, 268435455
  %i.aoe = zext nneg i32 %i.aod to i64
  %i.aof = sub nsw i64 0, %i.aoe
  %i.aog = getelementptr inbounds [32 x i8], ptr %i.ajx, i64 %i.aof ; 2 uses
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !124 ; 2 uses
  %i.aoi = load i8, ptr %i.aoh, align 8, !tbaa !119
  %i.aoj = icmp ugt i8 %i.aoi, 29
  br i1 %i.aoj, label %_ZNK4llvm4User10getOperandEj.exit7.i.i.i.i, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

_ZNK4llvm4User10getOperandEj.exit.i.i.thread.i.i: ; preds = %_ZL18isInterleavingMaskN4llvm8ArrayRefIiEE.exit.i.i
  %i.aok = getelementptr inbounds i8, ptr %.sroa.01.050, i64 -32
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !126 ; 2 uses
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !124 ; 2 uses
  %i.aon = load i8, ptr %i.aom, align 8, !tbaa !119
  %i.aoo = icmp ugt i8 %i.aon, 29
  br i1 %i.aoo, label %_ZNK4llvm4User10getOperandEj.exit7.i.i.i.i, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

_ZNK4llvm4User10getOperandEj.exit7.i.i.i.i:       ; preds = %_ZNK4llvm4User10getOperandEj.exit.i.i.thread.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i
  %.0.i.i = phi ptr [ %i.aom, %_ZNK4llvm4User10getOperandEj.exit.i.i.thread.i.i ], [ %i.aoh, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i ]
  %i.aop = phi ptr [ %i.aol, %_ZNK4llvm4User10getOperandEj.exit.i.i.thread.i.i ], [ %i.aog, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i ]
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 32
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !124 ; 2 uses
  %i.aos = load i8, ptr %i.aor, align 8, !tbaa !119
  %i.aot = icmp ugt i8 %i.aos, 29
  br i1 %i.aot, label %bb.eq, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

bb.eq:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit7.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.xt, ptr %11, align 8, !tbaa !37
  store i32 2, ptr %i.xv, align 4, !tbaa !111
  store ptr %.0.i.i, ptr %i.xt, align 8
  store ptr %i.aor, ptr %.sroa.3.0..sroa_idx.i.i.i.i60, align 8
  store i32 1, ptr %i.xu, align 8, !tbaa !110
  %i.aou = call fastcc noundef ptr @_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyNodeERN4llvm11SmallVectorINS_12ComplexValueELj2EEE(ptr noundef nonnull align 8 dereferenceable(496) %33, ptr noundef nonnull align 8 dereferenceable(48) %11) #27, !inline_history !173
  %i.aov = load ptr, ptr %11, align 8, !tbaa !37  ; 2 uses
  %i.aow = icmp eq ptr %i.aov, %i.xt
  br i1 %i.aow, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyNodeEPN4llvm5ValueES3_.exit.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @free(ptr noundef %i.aov) #23, !inline_history !173
  br label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyNodeEPN4llvm5ValueES3_.exit.i.i

_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyNodeEPN4llvm5ValueES3_.exit.i.i: ; preds = %bb.er, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyRootEPN4llvm11InstructionE.exit.i

_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyRootEPN4llvm11InstructionE.exit.i: ; preds = %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyNodeEPN4llvm5ValueES3_.exit.i.i, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_112ComplexValueELj2EED2Ev.exit.i.i
  %.8.i.i = phi ptr [ %.4.i.i, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_112ComplexValueELj2EED2Ev.exit.i.i ], [ %i.aou, %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyNodeEPN4llvm5ValueES3_.exit.i.i ] ; 2 uses
  %.not.not.i = icmp eq ptr %.8.i.i, null
  br i1 %.not.not.i, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit, label %bb.es

bb.es:                                            ; preds = %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyRootEPN4llvm11InstructionE.exit.i
  %i.aox = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_EixERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  store ptr %.8.i.i, ptr %i.aox, align 8, !tbaa !195
  %i.aoy = load i32, ptr %i.ah, align 8, !tbaa !110 ; 2 uses
  %i.aoz = load i32, ptr %i.ai, align 4, !tbaa !111
  %.not.i27.i = icmp ult i32 %i.aoy, %i.aoz
  br i1 %.not.i27.i, label %bb.eu, label %bb.et, !prof !150

bb.et:                                            ; preds = %bb.es
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull %i.ajx)
  br label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

bb.eu:                                            ; preds = %bb.es
  %i.apa = zext i32 %i.aoy to i64
  %i.apb = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.apb, i64 %i.apa
  store ptr %i.ajx, ptr %i.apc, align 1
  %i.apd = load i32, ptr %i.ah, align 8, !tbaa !110
  %i.ape = add i32 %i.apd, 1
  store i32 %i.ape, ptr %i.ah, align 8, !tbaa !110
  br label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit

_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph13identifyNodesEPN4llvm11InstructionE.exit: ; preds = %.lr.ph.i.i.i54, %.critedge.i.i.i57, %.thread.i50, %bb.ec, %bb.ed, %bb.ef, %bb.eg, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i, %select.unfold.i.i, %bb.en, %_ZNK4llvm4User10getOperandEj.exit.i.i.i.i, %_ZNK4llvm4User10getOperandEj.exit.i.i.thread.i.i, %_ZNK4llvm4User10getOperandEj.exit7.i.i.i.i, %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12identifyRootEPN4llvm11InstructionE.exit.i, %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.apf = getelementptr inbounds nuw i8, ptr %.sroa.01.050, i64 8
  %.sroa.01.0 = load ptr, ptr %i.apf, align 8, !tbaa !158 ; 2 uses
  %.not = icmp eq ptr %.sroa.01.0, %i.xq
  br i1 %.not, label %._crit_edge, label %bb.dw

bb.ev:                                            ; preds = %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph10checkNodesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.apg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.apg, ptr %8, align 8, !tbaa !37
  %i.aph = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 14 uses
  store i32 0, ptr %i.aph, align 8, !tbaa !110
  %i.api = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 5 uses
  store i32 16, ptr %i.api, align 4, !tbaa !111
  %i.apj = load ptr, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.apk = load i32, ptr %i.ah, align 8, !tbaa !110 ; 2 uses
  %i.apl = zext i32 %i.apk to i64
  %.idx.i66 = shl nuw nsw i64 %i.apl, 3
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apj, i64 %.idx.i66
  %.not69.i = icmp eq i32 %i.apk, 0
  br i1 %.not69.i, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12replaceNodesEv.exit, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %bb.ev
  %i.apn = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.apq = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.apr = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.aps = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.apt = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.apu = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.apv = getelementptr inbounds nuw i8, ptr %9, i64 69
  %i.apw = getelementptr inbounds nuw i8, ptr %9, i64 70
  %i.apx = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.apy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.apz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aqa = getelementptr inbounds nuw i8, ptr %33, i64 408 ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %33, i64 444 ; 3 uses
  %i.aqc = load i32, ptr %i.yp, align 4, !tbaa !200, !noalias !500 ; 2 uses
  %i.aqd = icmp eq i32 %i.aqc, 0
  br i1 %i.aqd, label %_ZN12_GLOBAL__N_126ComplexDeinterleavingGraph12replaceNodesEv.exit, label %.lr.ph.split.i

._crit_edge.i69:                                  ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5countEPKS2_.exit.thread.i
  %.pre81.i = load ptr, ptr %8, align 8, !tbaa !37 ; 3 uses
  %.pre82.i = load i32, ptr %i.aph, align 8, !tbaa !110 ; 2 uses
  %i.aqe = zext i32 %.pre82.i to i64
  %.idx76.i = shl nuw nsw i64 %i.aqe, 3
  %i.aqf = getelementptr inbounds nuw i8, ptr %.pre81.i, i64 %.idx76.i
  %.not2571.i = icmp eq i32 %.pre82.i, 0
  br i1 %.not2571.i, label %._crit_edge75.i, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %._crit_edge.i69
  %i.aqg = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.gd

.lr.ph.splitthread-pre-split.i:                   ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5countEPKS2_.exit.thread.i
  %.pr.i = load i32, ptr %i.yp, align 4, !tbaa !200, !noalias !500
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i67, %.lr.ph.splitthread-pre-split.i
  %i.aqh = phi i32 [ %.pr.i, %.lr.ph.splitthread-pre-split.i ], [ %i.aqc, %.lr.ph.i67 ] ; 2 uses
  %.02370.i = phi ptr [ %i.ayf, %.lr.ph.splitthread-pre-split.i ], [ %i.apj, %.lr.ph.i67 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.aqi = load ptr, ptr %.02370.i, align 8, !tbaa !143 ; 10 uses
  store ptr %i.aqi, ptr %i.a, align 8, !tbaa !143
  %i.aqj = load ptr, ptr %i.ae, align 8, !tbaa !198, !noalias !500
  %i.aqk = load ptr, ptr %i.yo, align 8, !tbaa !199, !noalias !500 ; 2 uses
  %i.aql = icmp eq i32 %i.aqh, 0
  br i1 %i.aql, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5countEPKS2_.exit.thread.i, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph.split.i
  %i.aqm = add i32 %i.aqh, -1                     ; 2 uses
  %i.aqn = ptrtoint ptr %i.aqi to i64
  %i.aqo = mul i64 %i.aqn, -4658895280553007687   ; 2 uses
  %i.aqp = lshr i64 %i.aqo, 31
  %i.aqq = xor i64 %i.aqp, %i.aqo
  %i.aqr = trunc i64 %i.aqq to i32
  %i.aqs = and i32 %i.aqm, %i.aqr                 ; 3 uses
  %i.aqt = zext i32 %i.aqs to i64                 ; 2 uses
  %i.aqu = lshr i64 %i.aqt, 5
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %i.aqk, i64 %i.aqu
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !66
  %i.aqx = and i32 %i.aqs, 31
  %i.aqy = lshr i32 %i.aqw, %i.aqx
  %i.aqz = trunc i32 %i.aqy to i1
  br i1 %i.aqz, label %.lr.ph.i.i.i.i70, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5countEPKS2_.exit.thread.i, !prof !167

.lr.ph.i.i.i.i70:                                 ; preds = %bb.ew, %bb.ex
  %i.ara = phi i64 [ %i.arg, %bb.ex ], [ %i.aqt, %bb.ew ]
  %.03.i.i.i.i71 = phi i32 [ %i.arf, %bb.ex ], [ %i.aqs, %bb.ew ]
  %i.arb = getelementptr inbounds nuw [16 x i8], ptr %i.aqj, i64 %i.ara
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !143
  %i.ard = icmp eq ptr %i.aqi, %i.arc
  br i1 %i.ard, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5countEPKS2_.exit.i72, label %bb.ex, !prof !150

bb.ex:                                            ; preds = %.lr.ph.i.i.i.i70
  %i.are = add nuw i32 %.03.i.i.i.i71, 1
  %i.arf = and i32 %i.are, %i.aqm                 ; 3 uses
  %i.arg = zext i32 %i.arf to i64                 ; 2 uses
  %i.arh = lshr i64 %i.arg, 5
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.aqk, i64 %i.arh
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !66
  %i.ark = and i32 %i.arf, 31
  %i.arl = lshr i32 %i.arj, %i.ark
  %i.arm = trunc i32 %i.arl to i1
  br i1 %i.arm, label %.lr.ph.i.i.i.i70, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5countEPKS2_.exit.thread.i, !prof !168

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEPN12_GLOBAL__N_134ComplexDeinterleavingCompositeNodeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E5countEPKS2_.exit.i72: ; preds = %.lr.ph.i.i.i.i70
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !125
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !211, !nonnull !34, !align !212
  store ptr null, ptr %9, align 8, !tbaa !213
  store ptr %i.arp, ptr %i.app, align 8, !tbaa !214
end_hunk_0
