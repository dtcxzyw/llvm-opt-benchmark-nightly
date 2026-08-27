Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SimplifyCFG?download=true
inline.NumInlined: 15223
inline.NumDeleted: 6880
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN12_GLOBAL__N_114SimplifyCFGOpt3runEPN4llvm10BasicBlockE:bb.a

bb.iw:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i
  %i.bec = load i8, ptr %i.bdw, align 8, !tbaa !52
  %i.bed = icmp ugt i8 %i.bec, 10
  br i1 %i.bed, label %bb.ix, label %_ZN4llvm3Use3setEPNS_5ValueE.exit.i.i.i

bb.ix:                                            ; preds = %bb.iw
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdw, i64 16 ; 3 uses
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !60 ; 3 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bdu, i64 8 ; 2 uses
  store ptr %i.bef, ptr %i.beg, align 8, !tbaa !54
  %.not.i.i.i118.i.i.i = icmp eq ptr %i.bef, null
  br i1 %.not.i.i.i118.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bef, i64 16
  store ptr %i.beg, ptr %i.beh, align 8, !tbaa !135
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i:      ; preds = %bb.iy, %bb.ix
  store ptr %i.bee, ptr %i.bdx, align 8, !tbaa !135
  store ptr %i.bdu, ptr %i.bee, align 8, !tbaa !60
  br label %_ZN4llvm3Use3setEPNS_5ValueE.exit.i.i.i

_ZN4llvm3Use3setEPNS_5ValueE.exit.i.i.i:          ; preds = %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, %bb.iw, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i
  %indvars.iv.next196.i.i.i = add nuw nsw i64 %indvars.iv195.i.i.i, 1 ; 2 uses
  %.not97.i.i.i = icmp eq i64 %indvars.iv.next196.i.i.i, %i.atl
  br i1 %.not97.i.i.i, label %._crit_edge171.i.i.i, label %bb.iq, !llvm.loop !306

._crit_edge176.i.i.i:                             ; preds = %_ZN4llvm8CallBase22tryIntersectAttributesEPKS0_.exit.i.i.i, %._crit_edge171.i.i.i
  %i.bei = getelementptr inbounds nuw i8, ptr %i.asl, i64 16
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !53 ; 2 uses
  %.not147177.i.i.i = icmp eq ptr %i.bej, null
  br i1 %.not147177.i.i.i, label %._crit_edge181.i.i.i, label %.lr.ph180.i.i.i

bb.iz:                                            ; preds = %_ZN4llvm8CallBase22tryIntersectAttributesEPKS0_.exit.i.i.i, %.lr.ph175.i.i.i
  %.088173.i.i.i = phi ptr [ %i.bdf, %.lr.ph175.i.i.i ], [ %i.beu, %_ZN4llvm8CallBase22tryIntersectAttributesEPKS0_.exit.i.i.i ] ; 2 uses
  %i.bek = load ptr, ptr %.088173.i.i.i, align 8, !tbaa !257 ; 5 uses
  %.not100.i.i.i = icmp eq ptr %i.bek, %i.asl
  br i1 %.not100.i.i.i, label %_ZN4llvm8CallBase22tryIntersectAttributesEPKS0_.exit.i.i.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %.sroa.019.0.copyload.i.i.i = load ptr, ptr %i.bdj, align 8, !tbaa !134
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 48
  %.sroa.018.0.copyload.i.i.i = load ptr, ptr %i.bel, align 8, !tbaa !134
  call void @_ZN4llvm11Instruction19applyMergedLocationENS_8DebugLocES1_(ptr noundef nonnull align 8 dereferenceable(72) %i.asl, ptr %.sroa.019.0.copyload.i.i.i, ptr %.sroa.018.0.copyload.i.i.i) #27
  call void @_ZN4llvm21combineMetadataForCSEEPNS_11InstructionEPKS0_b(ptr noundef nonnull %i.asl, ptr noundef nonnull %i.bek, i1 noundef zeroext true) #27
  call void @_ZN4llvm11Instruction10andIRFlagsEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %i.asl, ptr noundef nonnull %i.bek) #27
  %i.bem = load i8, ptr %i.asl, align 8, !tbaa !52
  switch i8 %i.bem, label %_ZN4llvm8CallBase22tryIntersectAttributesEPKS0_.exit.i.i.i [
    i8 88, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i191.i.i
    i8 36, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i191.i.i
    i8 42, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i191.i.i
  ]

_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i191.i.i: ; preds = %bb.ja, %bb.ja, %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27
  %.sroa.0.0.copyload.i.i.i.i52.i = load ptr, ptr %i.bdk, align 8, !tbaa !307
  store ptr %.sroa.0.0.copyload.i.i.i.i52.i, ptr %49, align 8
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bek, i64 72
  %.sroa.0.0.copyload.i8.i.i.i.i = load ptr, ptr %i.ben, align 8, !tbaa !307
  %i.beo = load ptr, ptr %i.bdl, align 8, !tbaa !69
  %i.bep = load ptr, ptr %i.beo, align 8, !tbaa !209, !nonnull !19, !align !205
  %i.beq = call { ptr, i8 } @_ZNK4llvm13AttributeList13intersectWithERNS_11LLVMContextES0_(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.bep, ptr %.sroa.0.0.copyload.i8.i.i.i.i) #27 ; 2 uses
  %i.ber = extractvalue { ptr, i8 } %i.beq, 1
  %i.bes = trunc nuw i8 %i.ber to i1
  br i1 %i.bes, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i191.i.i
  %i.bet = extractvalue { ptr, i8 } %i.beq, 0
  store ptr %i.bet, ptr %i.bdk, align 8, !tbaa !307
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i191.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  br label %_ZN4llvm8CallBase22tryIntersectAttributesEPKS0_.exit.i.i.i

_ZN4llvm8CallBase22tryIntersectAttributesEPKS0_.exit.i.i.i: ; preds = %bb.jc, %bb.ja, %bb.iz
  %i.beu = getelementptr inbounds nuw i8, ptr %.088173.i.i.i, i64 8 ; 2 uses
  %.not98.i.i.i = icmp eq ptr %i.beu, %i.bdi
  br i1 %.not98.i.i.i, label %._crit_edge176.i.i.i, label %bb.iz

._crit_edge181.i.i.i:                             ; preds = %.lr.ph180.i.i.i, %._crit_edge176.i.i.i
  %i.bev = load ptr, ptr %50, align 8, !tbaa !21  ; 2 uses
  %i.bew = load i32, ptr %i.bs, align 8, !tbaa !58 ; 2 uses
  %i.bex = zext i32 %i.bew to i64
  %.idx189.i.i.i = shl nuw nsw i64 %i.bex, 3
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bev, i64 %.idx189.i.i.i
  %.not99182.i.i.i = icmp eq i32 %i.bew, 0
  br i1 %.not99182.i.i.i, label %._crit_edge186.i.i.i, label %.lr.ph185.i.i.i

.lr.ph180.i.i.i:                                  ; preds = %._crit_edge176.i.i.i, %.lr.ph180.i.i.i
  %.sroa.0123.0178.i.i.i = phi ptr [ %i.bfa, %.lr.ph180.i.i.i ], [ %i.bej, %._crit_edge176.i.i.i ] ; 2 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %.sroa.0123.0178.i.i.i, i64 8
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !54 ; 2 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.sroa.0123.0178.i.i.i, i64 24
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !61 ; 2 uses
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bfc, ptr noundef nonnull %i.asl) #27
  %i.bfd = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bfc) #27 ; 0 uses
  %.not147.i.i.i = icmp eq ptr %i.bfa, null
  br i1 %.not147.i.i.i, label %._crit_edge181.i.i.i, label %.lr.ph180.i.i.i

._crit_edge186.i.i.i:                             ; preds = %bb.jg, %._crit_edge181.i.i.i
  %i.bfe = load ptr, ptr %51, align 8, !tbaa !21  ; 2 uses
  %i.bff = icmp eq ptr %i.bfe, %i.bu
  br i1 %i.bff, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %._crit_edge186.i.i.i
  call void @free(ptr noundef %i.bfe) #27
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit.i.i.i: ; preds = %bb.jd, %._crit_edge186.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  %i.bfg = load ptr, ptr %50, align 8, !tbaa !21  ; 2 uses
  %i.bfh = icmp eq ptr %i.bfg, %i.br
  br i1 %i.bfh, label %_ZL19sinkLastInstructionN4llvm8ArrayRefIPNS_10BasicBlockEEE.exit.i.i, label %bb.je

bb.je:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.bfg) #27
  br label %_ZL19sinkLastInstructionN4llvm8ArrayRefIPNS_10BasicBlockEEE.exit.i.i

.lr.ph185.i.i.i:                                  ; preds = %._crit_edge181.i.i.i, %bb.jg
  %.0183.i.i.i = phi ptr [ %i.bfl, %bb.jg ], [ %i.bev, %._crit_edge181.i.i.i ] ; 2 uses
  %i.bfi = load ptr, ptr %.0183.i.i.i, align 8, !tbaa !257 ; 3 uses
  %i.bfj = icmp eq ptr %i.bfi, %i.asl
  br i1 %i.bfj, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %.lr.ph185.i.i.i
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bfi, ptr noundef nonnull %i.asl) #27
  %i.bfk = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bfi) #27 ; 0 uses
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %.lr.ph185.i.i.i
  %i.bfl = getelementptr inbounds nuw i8, ptr %.0183.i.i.i, i64 8 ; 2 uses
  %.not99.i.i.i = icmp eq ptr %i.bfl, %i.bey
  br i1 %.not99.i.i.i, label %._crit_edge186.i.i.i, label %.lr.ph185.i.i.i

_ZL19sinkLastInstructionN4llvm8ArrayRefIPNS_10BasicBlockEEE.exit.i.i: ; preds = %bb.je, %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  %i.bfm = add nuw nsw i32 %.0410.i.i, 1          ; 2 uses
  %.not86.i.i = icmp eq i32 %i.bfm, %.580291.i.i
  br i1 %.not86.i.i, label %.critedge94.i.i, label %bb.gg, !llvm.loop !309

.critedge92.i.i:                                  ; preds = %bb.fn
  %i.bfn = load i8, ptr %i.bq, align 8, !tbaa !14, !range !18, !noundef !19
  %i.bfo = trunc nuw i8 %i.bfn to i1
  br i1 %i.bfo, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit204.i.i, label %bb.jh

bb.jh:                                            ; preds = %.critedge92.i.i
  %i.bfp = load ptr, ptr %60, align 8, !tbaa !20
  call void @free(ptr noundef %i.bfp) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit204.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit204.i.i:    ; preds = %bb.jh, %.critedge92.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  br label %.critedge94.i.i

.critedge94.i.i:                                  ; preds = %bb.ge, %_ZL19sinkLastInstructionN4llvm8ArrayRefIPNS_10BasicBlockEEE.exit.i.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit204.i.i, %.thread293.i.i, %_ZN4llvm23LockstepReverseIteratorILb1EE5resetEv.exit165.i.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, %.critedge.i.i, %_ZN4llvm23LockstepReverseIteratorILb1EEC2ENS_8ArrayRefIPNS_10BasicBlockEEE.exit.i.i, %_ZN4llvm23LockstepReverseIteratorILb1EEC2ENS_8ArrayRefIPNS_10BasicBlockEEE.exit.thread.i.i
  %.5.i.i = phi i1 [ false, %.critedge.i.i ], [ false, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit204.i.i ], [ false, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i ], [ false, %.thread293.i.i ], [ false, %_ZN4llvm23LockstepReverseIteratorILb1EE5resetEv.exit165.i.i ], [ true, %_ZL19sinkLastInstructionN4llvm8ArrayRefIPNS_10BasicBlockEEE.exit.i.i ], [ false, %_ZN4llvm23LockstepReverseIteratorILb1EEC2ENS_8ArrayRefIPNS_10BasicBlockEEE.exit.thread.i.i ], [ false, %_ZN4llvm23LockstepReverseIteratorILb1EEC2ENS_8ArrayRefIPNS_10BasicBlockEEE.exit.i.i ], [ false, %bb.ge ]
  %i.bfq = load ptr, ptr %i.be, align 8, !tbaa !21 ; 2 uses
  %i.bfr = icmp eq ptr %i.bfq, %i.bf
  br i1 %i.bfr, label %_ZN4llvm23LockstepReverseIteratorILb1EED2Ev.exit.i.i, label %bb.ji

bb.ji:                                            ; preds = %.critedge94.i.i
  call void @free(ptr noundef %i.bfq) #27
  br label %_ZN4llvm23LockstepReverseIteratorILb1EED2Ev.exit.i.i

_ZN4llvm23LockstepReverseIteratorILb1EED2Ev.exit.i.i: ; preds = %bb.ji, %.critedge94.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  %i.bfs = load i8, ptr %i.bd, align 8, !tbaa !14, !range !18, !noundef !19
  %i.bft = trunc nuw i8 %i.bfs to i1
  br i1 %i.bft, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit205.i.i, label %bb.jj

bb.jj:                                            ; preds = %_ZN4llvm23LockstepReverseIteratorILb1EED2Ev.exit.i.i
  %i.bfu = load ptr, ptr %58, align 8, !tbaa !20
  call void @free(ptr noundef %i.bfu) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit205.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit205.i.i:    ; preds = %bb.jj, %_ZN4llvm23LockstepReverseIteratorILb1EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  %i.bfv = load i32, ptr %i.bl, align 4, !tbaa !278 ; 2 uses
  %i.bfw = icmp eq i32 %i.bfv, 0
  br i1 %i.bfw, label %_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i.i, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit205.i.i
  %i.bfx = load ptr, ptr %56, align 8, !tbaa !265
  %i.bfy = load ptr, ptr %i.bk, align 8, !tbaa !277
  %i.bfz = zext i32 %i.bfv to i64
  %i.bga = add nuw nsw i64 %i.bfz, 31
  %i.bgb = lshr i64 %i.bga, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i207.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i207.i.i ] ; 3 uses
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bfy, i64 %indvars.iv.i.i.i.i
  %i.bgd = load i32, ptr %i.bgc, align 4, !tbaa !242 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.bgd, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i207.i.i, label %.lr.ph.i.i206.i.i

.lr.ph.i.i206.i.i:                                ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.bge = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.jk

bb.jk:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i206.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.bgd, %.lr.ph.i.i206.i.i ], [ %i.bgo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.bgf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.bgg = or disjoint i32 %i.bgf, %i.bge
  %i.bgh = zext i32 %i.bgg to i64
  %i.bgi = getelementptr inbounds nuw [56 x i8], ptr %i.bfx, i64 %i.bgh ; 2 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 8
  %i.bgk = load ptr, ptr %i.bgj, align 8, !tbaa !21 ; 2 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgi, i64 24
  %i.bgm = icmp eq ptr %i.bgk, %i.bgl
  br i1 %i.bgm, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call void @free(ptr noundef %i.bgk) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %bb.jl, %bb.jk
  %i.bgn = add i32 %.0.i3.i.i.i.i, -1
  %i.bgo = and i32 %i.bgn, %.0.i3.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.bgo, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i207.i.i, label %bb.jk, !llvm.loop !310

._crit_edge.i.i207.i.i:                           ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i208.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.bgb
  br i1 %.not.i.i.i208.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !311

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i207.i.i
  %.pr.i.i.i = load i32, ptr %i.bl, align 4, !tbaa !278 ; 2 uses
  %i.bgp = icmp eq i32 %.pr.i.i.i, 0
  br i1 %i.bgp, label %_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i.i, label %bb.jm

bb.jm:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i.i.i
  %i.bgq = load ptr, ptr %56, align 8, !tbaa !265
  %i.bgr = zext i32 %.pr.i.i.i to i64             ; 2 uses
  %i.bgs = mul nuw nsw i64 %i.bgr, 56
  %i.bgt = add nuw nsw i64 %i.bgr, 31
  %i.bgu = lshr i64 %i.bgt, 3
  %i.bgv = and i64 %i.bgu, 1073741820
  %i.bgw = add nuw nsw i64 %i.bgv, %i.bgs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bgq, i64 noundef %i.bgw, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i.i: ; preds = %bb.jm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i.i.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit205.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i.i, %._crit_edge.i46.i, %bb.an
  %.6.i.i = phi i1 [ %.5.i.i, %_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit.i.i ], [ false, %._crit_edge.i46.i ], [ false, %bb.an ]
  %i.bgx = load ptr, ptr %55, align 8, !tbaa !21  ; 2 uses
  %i.bgy = icmp eq ptr %i.bgx, %i.at
  br i1 %i.bgy, label %_ZL30sinkCommonCodeFromPredecessorsPN4llvm10BasicBlockEPNS_14DomTreeUpdaterE.exit.i, label %bb.jn

bb.jn:                                            ; preds = %._crit_edge.thread.i.i
  call void @free(ptr noundef %i.bgx) #27
  br label %_ZL30sinkCommonCodeFromPredecessorsPN4llvm10BasicBlockEPNS_14DomTreeUpdaterE.exit.i

_ZL30sinkCommonCodeFromPredecessorsPN4llvm10BasicBlockEPNS_14DomTreeUpdaterE.exit.i: ; preds = %bb.jn, %._crit_edge.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  br i1 %.6.i.i, label %_ZN12_GLOBAL__N_114SimplifyCFGOpt12simplifyOnceEPN4llvm10BasicBlockE.exit, label %bb.jo

bb.jo:                                            ; preds = %_ZL30sinkCommonCodeFromPredecessorsPN4llvm10BasicBlockEPNS_14DomTreeUpdaterE.exit.i
  %i.bgz = load ptr, ptr %i.q, align 8, !tbaa !193 ; 2 uses
  %i.bha = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvmL28EnableMergeCompatibleInvokesE, i64 120), align 8, !tbaa !186, !range !18, !noundef !19
  %i.bhb = trunc nuw i8 %i.bha to i1
  br i1 %i.bhb, label %bb.jp, label %_ZL22mergeCompatibleInvokesPN4llvm10BasicBlockEPNS_14DomTreeUpdaterE.exit.thread

bb.jp:                                            ; preds = %bb.jo
  %i.bhc = call noundef zeroext i1 @_ZNK4llvm10BasicBlock12isLandingPadEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27
  br i1 %i.bhc, label %bb.jq, label %_ZL22mergeCompatibleInvokesPN4llvm10BasicBlockEPNS_14DomTreeUpdaterE.exit.thread.thread

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr %i.cb, ptr %10, align 8, !tbaa !21
  store i32 0, ptr %i.cc, align 8, !tbaa !58
  store i32 1, ptr %i.cd, align 4, !tbaa !59
  %.sroa.037.056.i = load ptr, ptr %i.o, align 8, !tbaa !60 ; 2 uses
  %.not4257.i = icmp eq ptr %.sroa.037.056.i, null
  br i1 %.not4257.i, label %.thread, label %.lr.ph.i199

.thread:                                          ; preds = %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %_ZL22mergeCompatibleInvokesPN4llvm10BasicBlockEPNS_14DomTreeUpdaterE.exit.thread.thread

._crit_edge.i206:                                 ; preds = %_ZN12_GLOBAL__N_114CompatibleSets6insertEPN4llvm10InvokeInstE.exit.i
  %.pre.i207 = load ptr, ptr %10, align 8, !tbaa !21 ; 4 uses
  %.pre103.i = load i32, ptr %i.cc, align 8, !tbaa !58 ; 2 uses
  %i.bhd = zext i32 %.pre103.i to i64
  %.idx.i208 = shl nuw nsw i64 %i.bhd, 5
  %i.bhe = getelementptr inbounds nuw i8, ptr %.pre.i207, i64 %.idx.i208
  %.not70.i = icmp eq i32 %.pre103.i, 0
  br i1 %.not70.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_10InvokeInstELj2EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i.thread, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %._crit_edge.i206
  %.not.i.i209 = icmp eq ptr %i.bgz, null         ; 3 uses
  br label %bb.kw

.lr.ph.i199:                                      ; preds = %bb.jq, %_ZN12_GLOBAL__N_114CompatibleSets6insertEPN4llvm10InvokeInstE.exit.i
  %.sroa.037.058.i = phi ptr [ %.sroa.037.0.i, %_ZN12_GLOBAL__N_114CompatibleSets6insertEPN4llvm10InvokeInstE.exit.i ], [ %.sroa.037.056.i, %bb.jq ] ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %.sroa.037.058.i, i64 24
  %i.bhg = load ptr, ptr %i.bhf, align 8, !tbaa !61
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 40
  %i.bhi = load ptr, ptr %i.bhh, align 8, !tbaa !23
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 48
  %i.bhk = load ptr, ptr %i.bhj, align 8, !tbaa !55 ; 6 uses
  %i.bhl = getelementptr inbounds i8, ptr %i.bhk, i64 -24 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bhl, ptr %i.a, align 8, !tbaa !312
  %i.bhm = load ptr, ptr %10, align 8, !tbaa !21  ; 2 uses
  %i.bhn = load i32, ptr %i.cc, align 8, !tbaa !58 ; 2 uses
  %i.bho = zext i32 %i.bhn to i64
  %.idx.i.i.i200 = shl nuw nsw i64 %i.bho, 5
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %.idx.i.i.i200
  %.not37.i.i.i = icmp eq i32 %i.bhn, 0
  br i1 %.not37.i.i.i, label %._crit_edge.i.i.i205, label %.lr.ph.i.i.i201

.lr.ph.i.i.i201:                                  ; preds = %.lr.ph.i199
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhk, i64 48
  %i.bhr = getelementptr inbounds i8, ptr %i.bhk, i64 -56 ; 2 uses
  %i.bhs = getelementptr i8, ptr %i.bhk, i64 -120 ; 3 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhk, i64 16 ; 2 uses
  %i.bhu = getelementptr inbounds i8, ptr %i.bhk, i64 -20
  br label %bb.jr

bb.jr:                                            ; preds = %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i, %.lr.ph.i.i.i201
  %.01438.i.i.i = phi ptr [ %i.bhm, %.lr.ph.i.i.i201 ], [ %i.bog, %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i ] ; 3 uses
  %i.bhv = load ptr, ptr %.01438.i.i.i, align 8, !tbaa !21
  %i.bhw = load ptr, ptr %i.bhv, align 8, !tbaa !312 ; 18 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 72
  %i.bhy = call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.bhx, i32 noundef 35) #27
  br i1 %i.bhy, label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i, label %_ZNK4llvm8CallBase11cannotMergeEv.exit.i.i41.i.i.i.i.i.i.i.i.i.i

_ZNK4llvm8CallBase11cannotMergeEv.exit.i.i41.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.jr
  %i.bhz = call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %i.bhw, i32 noundef 35) #27
  br i1 %i.bhz, label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS4_10InvokeInstEEEE3$_0EclIPKS7_EEbT_.exit42.i.i.i.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS4_10InvokeInstEEEE3$_0EclIPKS7_EEbT_.exit42.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZNK4llvm8CallBase11cannotMergeEv.exit.i.i41.i.i.i.i.i.i.i.i.i.i
  %i.bia = getelementptr inbounds i8, ptr %i.bhw, i64 -32 ; 2 uses
  %i.bib = load ptr, ptr %i.bia, align 8, !tbaa !47
  %i.bic = load i8, ptr %i.bib, align 8, !tbaa !52
  %i.bid = icmp eq i8 %i.bic, 26
  br i1 %i.bid, label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i, label %bb.js

bb.js:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS4_10InvokeInstEEEE3$_0EclIPKS7_EEbT_.exit42.i.i.i.i.i.i.i.i.i.i"
  %i.bie = call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.bhq, i32 noundef 35) #27
  br i1 %i.bie, label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i, label %_ZNK4llvm8CallBase11cannotMergeEv.exit.i.i43.i.i.i.i.i.i.i.i.i.i

_ZNK4llvm8CallBase11cannotMergeEv.exit.i.i43.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.js
  %i.bif = call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %i.bhl, i32 noundef 35) #27
  br i1 %i.bif, label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS4_10InvokeInstEEEE3$_0EclIPKS7_EEbT_.exit44.i.i.i.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS4_10InvokeInstEEEE3$_0EclIPKS7_EEbT_.exit44.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZNK4llvm8CallBase11cannotMergeEv.exit.i.i43.i.i.i.i.i.i.i.i.i.i
  %i.big = load ptr, ptr %i.bhr, align 8, !tbaa !47
  %i.bih = load i8, ptr %i.big, align 8, !tbaa !52
  %i.bii = icmp eq i8 %i.bih, 26
  br i1 %i.bii, label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_0EEbOT_T0_.exit.thread.i.i.i.i"

"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_0EEbOT_T0_.exit.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS4_10InvokeInstEEEE3$_0EclIPKS7_EEbT_.exit44.i.i.i.i.i.i.i.i.i.i"
  %i.bij = call noundef zeroext i1 @_ZNK4llvm8CallBase14isIndirectCallEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhw) #27
  br i1 %i.bij, label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.thread.i.i.i", label %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.i.i.i"

"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.i.i.i": ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_0EEbOT_T0_.exit.thread.i.i.i.i"
  %i.bik = call noundef zeroext i1 @_ZNK4llvm8CallBase14isIndirectCallEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhl) #27 ; 2 uses
  %i.bil = call noundef zeroext i1 @_ZNK4llvm8CallBase14isIndirectCallEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhw) #27
  br i1 %i.bil, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.i.i.i", label %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.thread.i.i.i"

"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.thread.i.i.i": ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_0EEbOT_T0_.exit.thread.i.i.i.i"
  %i.bim = call noundef zeroext i1 @_ZNK4llvm8CallBase14isIndirectCallEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhw) #27
  br i1 %i.bim, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.thread79.i.i.i", label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i

"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.thread79.i.i.i": ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.thread.i.i.i"
  %i.bin = call noundef zeroext i1 @_ZNK4llvm8CallBase14isIndirectCallEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhl) #27
  br i1 %i.bin, label %.critedge80.i.i.i.i, label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i

"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.i.i.i": ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.i.i.i"
  %i.bio = call noundef zeroext i1 @_ZNK4llvm8CallBase14isIndirectCallEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bhl) #27
  br i1 %i.bik, label %bb.jt, label %.lr.ph.i.1.i.i.i

"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.thread.i.i.i": ; preds = %"_ZN4llvm6any_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.i.i.i"
  br i1 %i.bik, label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i, label %.lr.ph.i.1.i.i.i

bb.jt:                                            ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.i.i.i"
  br i1 %i.bio, label %.critedge80.i.i.i.i, label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i

.lr.ph.i.1.i.i.i:                                 ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.thread.i.i.i", %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.i.i.i"
  %i.bip = load ptr, ptr %i.bia, align 8, !tbaa !47 ; 2 uses
  %.not74.i.1.i.i.i = icmp eq ptr %i.bip, null
  br i1 %.not74.i.1.i.i.i, label %.critedge80.i.i.i.i, label %bb.ju

bb.ju:                                            ; preds = %.lr.ph.i.1.i.i.i
  %i.biq = load ptr, ptr %i.bhr, align 8, !tbaa !47
  %.not75.i.1.i.i.i = icmp eq ptr %i.bip, %i.biq
  br i1 %.not75.i.1.i.i.i, label %.critedge80.i.i.i.i, label %_ZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetEN4llvm8ArrayRefIPNS1_10InvokeInstEEE.exit.thread.i.i.i

.critedge80.i.i.i.i:                              ; preds = %bb.ju, %.lr.ph.i.1.i.i.i, %bb.jt, %"_ZN4llvm6all_ofIRNS_8ArrayRefIPNS_10InvokeInstEEEZN12_GLOBAL__N_114CompatibleSets21shouldBelongToSameSetES4_E3$_1EEbOT_T0_.exit.i.thread79.i.i.i"
  %i.bir = getelementptr i8, ptr %i.bhw, i64 -96  ; 3 uses
  %.1.val.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bir, align 8, !tbaa !47
  %i.bis = call { ptr, i64 } @_ZNK4llvm10BasicBlock19getFirstNonPHIOrDbgEb(ptr noundef nonnull align 8 dereferenceable(80) %.1.val.val.i.i.i.i.i.i.i.i.i.i, i1 noundef zeroext true) #27
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !496
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !519
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !517
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !345
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !242
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !242
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !496
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !62
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !62
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !345, !noalias !520 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !517, !noalias !520 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !342, !noalias !520 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !242
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !244

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !518

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !519
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !342
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !345
  store ptr %i.y, ptr %i.q, align 8, !tbaa !517
  store i32 0, ptr %i.p, align 16, !tbaa !496
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !88
  %i.aa = load ptr, ptr %0, align 8, !tbaa !519
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !88
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !88
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !242 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !242
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !242
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !242
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !242
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !345    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !517
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !342  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !517  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !345
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !342
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !242  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !242 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !525

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !62
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !242
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !526

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !527

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !342
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !496
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !496
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !342
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm20extractBranchWeightsERKNS_11InstructionERmS3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare i32 @_ZN4llvm17BranchProbability20getBranchProbabilityEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @_ZNK4llvm19TargetTransformInfo29getPredictableBranchThresholdEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

declare { i64, i32 } @_ZNK4llvm19TargetTransformInfo18getInstructionCostEPKNS_4UserENS_8ArrayRefIPKNS_5ValueEEENS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr, i64, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm25IRBuilderCallbackInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #10

declare void @_ZN4llvm12InvertBranchEPNS_10CondBrInstERNS_13IRBuilderBaseE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL21addPredecessorToBlockPN4llvm10BasicBlockES1_S1_PNS_16MemorySSAUpdaterE(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN4llvm10BasicBlock4phisEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #27 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  %.not3841 = icmp eq ptr %i.b, %i.c
  br i1 %.not3841, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit, %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %_ZNK4llvm9MemorySSA15getMemoryAccessEPKNS_10BasicBlockE.exit.thread, label %bb.l

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit
  %.sroa.033.042 = phi ptr [ %spec.select.i.i.i1.i, %_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE.exit ], [ %i.b, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.033.042, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, 268435455                  ; 3 uses
  %.not11.i.i = icmp eq i32 %i.f, 0
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.033.042, i64 -8 ; 3 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !60 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.033.042, i64 76
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !90 ; 2 uses
  br i1 %.not11.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.g = zext i32 %.pre to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.pre.i, i64 %i.g
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = icmp eq ptr %i.k, %2
  br i1 %i.l, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.i
  br i1 %.not.i.i, label %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit, label %bb.b, !llvm.loop !100

_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit: ; preds = %bb.b, %bb.c, %.lr.ph
  %i.m = phi i64 [ 4294967295, %.lr.ph ], [ 4294967295, %bb.c ], [ %indvars.iv.i.i, %bb.b ]
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.pre.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.033.042, i64 76
  %i.q = icmp eq i32 %i.f, %.pre
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit
  tail call void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.033.042) #27
  %.pre.i18 = load i32, ptr %i.d, align 4
  %.pre45 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit
  %i.r = phi ptr [ %.pre45, %bb.d ], [ %.pre.i, %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit ]
  %i.s = phi i32 [ %.pre.i18, %bb.d ], [ %i.e, %_ZNK4llvm7PHINode24getIncomingValueForBlockEPKNS_10BasicBlockE.exit ] ; 2 uses
  %i.t = add i32 %i.s, 1
  %i.u = and i32 %i.t, 268435455                  ; 2 uses
  %i.v = and i32 %i.s, -268435456
  %i.w = or disjoint i32 %i.u, %i.v
  store i32 %i.w, ptr %i.d, align 4
  %i.x = add nsw i32 %i.u, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.y ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !60
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !135
  store ptr null, ptr %i.ac, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.aa, align 8, !tbaa !135
end_hunk_1
begin_hunk_2_@_ZN4llvm10CondBrInst12setSuccessorEjPNS_10BasicBlockE:bb.a
  %.not2.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !135
  store ptr null, ptr %i.f, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.d, align 8, !tbaa !135
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i:          ; preds = %bb.d, %bb.a
  store ptr %2, ptr %i.c, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZN4llvm3UseaSEPNS_5ValueE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i
  %i.i = load i8, ptr %2, align 8, !tbaa !52
  %i.j = icmp ugt i8 %i.i, 10
  br i1 %i.j, label %bb.f, label %_ZN4llvm3UseaSEPNS_5ValueE.exit

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !54
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !135
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i:          ; preds = %bb.g, %bb.f
  store ptr %i.k, ptr %i.d, align 8, !tbaa !135
  store ptr %i.c, ptr %i.k, align 8, !tbaa !60
  br label %_ZN4llvm3UseaSEPNS_5ValueE.exit

_ZN4llvm3UseaSEPNS_5ValueE.exit:                  ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i, %bb.e, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i
  ret void
}

declare void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE12applyUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEE(ptr noundef nonnull align 8 dereferenceable(658), ptr, i64) local_unnamed_addr #4

declare { ptr, ptr } @_ZN4llvm11Instruction18cloneDebugInfoFromEPKS0_St8optionalINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEEb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr, i8, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10CondBrInst12setConditionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -96 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -80 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !60
  %.not2.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not2.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.c, ptr %i.f, align 8, !tbaa !135
  store ptr null, ptr %i.d, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !135
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i:          ; preds = %bb.d, %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4llvm3UseaSEPNS_5ValueE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i
  %i.g = load i8, ptr %1, align 8, !tbaa !52
  %i.h = icmp ugt i8 %i.g, 10
  br i1 %i.h, label %bb.f, label %_ZN4llvm3UseaSEPNS_5ValueE.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 -88 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !54
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !135
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i:          ; preds = %bb.g, %bb.f
  store ptr %i.i, ptr %i.b, align 8, !tbaa !135
  store ptr %i.a, ptr %i.i, align 8, !tbaa !60
  br label %_ZN4llvm3UseaSEPNS_5ValueE.exit

_ZN4llvm3UseaSEPNS_5ValueE.exit:                  ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i, %bb.e, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL15createLogicalOpRN4llvm13IRBuilderBaseENS_11Instruction9BinaryOpsEPNS_5ValueES5_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(34) %4) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4llvm13impliesPoisonEPKNS_5ValueES2_(ptr noundef %3, ptr noundef %2) #27
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN4llvm13IRBuilderBase14CreateBinOpFMFENS_11Instruction9BinaryOpsEPNS_5ValueES4_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef null)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 29
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.f = tail call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.e) #27
  %i.g = tail call noundef ptr @_ZN4llvm13IRBuilderBase12CreateSelectEPNS_5ValueES2_S2_RKNS_5TwineEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef null) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %1, 30
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.k = tail call noundef ptr @_ZN4llvm8Constant15getAllOnesValueEPNS_4TypeE(ptr noundef %i.j) #27
  %i.l = tail call noundef ptr @_ZN4llvm13IRBuilderBase12CreateSelectEPNS_5ValueES2_S2_RKNS_5TwineEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %2, ptr noundef %i.k, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef null) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.g, %bb.d ], [ %i.l, %bb.e ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !110  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = mul nuw nsw i64 %i.i, 24
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #27
  br label %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit

_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !147, !range !18, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8, !tbaa !147
  br i1 %i.r, label %bb.d, label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !574  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit, label %.lr.ph7.preheader.i.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i.i:                    ; preds = %bb.d
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !577
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !578
  %i.y = zext i32 %i.t to i64
  %i.z = add nuw nsw i64 %i.y, 31
  %i.aa = lshr i64 %i.z, 5
  br label %.lr.ph7.i.i.i.i.i.i

.lr.ph7.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.i.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !242 ; 2 uses
  %.not11.i2.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i2.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.ad = shl nuw i32 %indvars.iv.tr.i.i.i.i.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ae = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i.i, i1 true)
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !579 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm16MetadataTracking7untrackEPvRNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 4 dereferenceable(8) %i.aj) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ak = add i32 %.0.i3.i.i.i.i.i.i, -1
  %i.al = and i32 %i.ak, %.0.i3.i.i.i.i.i.i       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.e, !llvm.loop !582

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aa
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i, !llvm.loop !583

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load i32, ptr %i.s, align 4, !tbaa !574 ; 2 uses
  %i.am = icmp eq i32 %.pr.i.i.i.i.i, 0
  br i1 %i.am, label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !577
  %i.ao = zext i32 %.pr.i.i.i.i.i to i64          ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ao, 31
  %i.ar = lshr i64 %i.aq, 3
  %i.as = and i64 %i.ar, 1073741820
  %i.at = add nuw nsw i64 %i.as, %i.ap
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.an, i64 noundef %i.at, i64 noundef 8) #27
  br label %_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm8DenseMapIPKNS0_8MetadataENS0_13TrackingMDRefENS0_12DenseMapInfoIS4_vEENS0_6detail12DenseMapPairIS4_S5_EEEELb0ELb0EED2Ev.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPNS_8MetadataEmEmLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEED2Ev.exit, %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MetadataENS_13TrackingMDRefENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZL32performBranchToCommonDestFoldingPNS0_10CondBrInstES5_PNS0_14DomTreeUpdaterEPNS0_16MemorySSAUpdaterEPKNS0_19TargetTransformInfoEE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !584
  %.val2 = load ptr, ptr %1, align 8, !tbaa !257
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !62
  %i.b = getelementptr i8, ptr %.val.val, i64 48
  %.val.val.val = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds i8, ptr %.val.val.val, i64 -24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 30, ptr %i.a, align 4, !tbaa !242
  call void @_ZN4llvm11Instruction12copyMetadataERKS0_NS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72) %.val2, ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr nonnull %i.a, i64 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZL32performBranchToCommonDestFoldingPNS0_10CondBrInstES5_PNS0_14DomTreeUpdaterEPNS0_16MemorySSAUpdaterEPKNS0_19TargetTransformInfoEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZL32performBranchToCommonDestFoldingPN4llvm10CondBrInstES3_PNS1_14DomTreeUpdaterEPNS1_16MemorySSAUpdaterEPKNS1_19TargetTransformInfoEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !88
  br label %"_ZNSt14_Function_base13_Base_managerIZL32performBranchToCommonDestFoldingPN4llvm10CondBrInstES3_PNS1_14DomTreeUpdaterEPNS1_16MemorySSAUpdaterEPKNS1_19TargetTransformInfoEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !586
  br label %"_ZNSt14_Function_base13_Base_managerIZL32performBranchToCommonDestFoldingPN4llvm10CondBrInstES3_PNS1_14DomTreeUpdaterEPNS1_16MemorySSAUpdaterEPKNS1_19TargetTransformInfoEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !131
  br label %"_ZNSt14_Function_base13_Base_managerIZL32performBranchToCommonDestFoldingPN4llvm10CondBrInstES3_PNS1_14DomTreeUpdaterEPNS1_16MemorySSAUpdaterEPKNS1_19TargetTransformInfoEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZL32performBranchToCommonDestFoldingPN4llvm10CondBrInstES3_PNS1_14DomTreeUpdaterEPNS1_16MemorySSAUpdaterEPKNS1_19TargetTransformInfoEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN4llvm11Instruction12copyMetadataERKS0_NS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 268435455
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !90
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #27
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = add i32 %i.g, 1
  %i.i = and i32 %i.h, 268435455                  ; 2 uses
  %i.j = and i32 %i.g, -268435456
  %i.k = or disjoint i32 %i.i, %i.j
  store i32 %i.k, ptr %i.a, align 4
  %i.l = add nsw i32 %i.i, -1
  %i.m = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !135  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !60
  %.not2.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not2.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.r, ptr %i.u, align 8, !tbaa !135
  store ptr null, ptr %i.s, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.q, align 8, !tbaa !135
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i:      ; preds = %bb.f, %bb.c
  store ptr %1, ptr %i.p, align 8, !tbaa !47
  %.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i
  %i.v = load i8, ptr %1, align 8, !tbaa !52
  %i.w = icmp ugt i8 %i.v, 10
  br i1 %i.w, label %bb.h, label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !135
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i:      ; preds = %bb.i, %bb.h
  store ptr %i.x, ptr %i.q, align 8, !tbaa !135
  store ptr %i.p, ptr %i.x, align 8, !tbaa !60
  br label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit

_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i, %bb.g, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = and i32 %i.ab, 268435455
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.af = load i32, ptr %i.d, align 4, !tbaa !90
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = zext i32 %i.ad to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  store ptr %2, ptr %i.aj, align 8, !tbaa !62
  ret void
}

declare void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @_ZN4llvm4User15growHungoffUsesEjb(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E24lookupOrInsertIntoBucketISC_JEEESt4pairIPSH_bEOT_DpOT0_:bb.a
  %.not.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %.loopexit
  %i.ar = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ar), !inline_history !595
  %i.as = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !595 ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !594
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !145
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !144
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit: ; preds = %.loopexit, %bb.d
  %i.at = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.au = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.av = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 9 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 6                 ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 31
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = lshr i64 %i.az, 5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !242
  %i.bg = or i32 %i.bc, %i.bf
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !242
  %i.bh = load i32, ptr %i.am, align 8, !tbaa !146
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.am, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i.i.i, 6
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !159
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 2 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !164
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8
  %i.bq = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.br = inttoptr i64 %i.bq to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef %i.br) #27, !inline_history !596
  br label %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit

_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E22findBucketForInsertionISC_EEPSH_RKT_SL_.exit, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %i.av, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !166
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !166
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 6, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_.exit: ; preds = %.lr.ph.i, %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit
  %.sroa.0.0 = phi ptr [ %i.av, %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit ], [ %i.y, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E15LookupBucketForISC_EEbRKT_RPSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !144, !noalias !597 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145, !noalias !597 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !140, !noalias !597 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !164  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.g, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !242
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %.thread, !prof !244

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ae, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ac, %bb.c ], [ %i.o, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !164
  %i.aa = icmp eq ptr %i.i, %i.z                  ; 3 uses
  br i1 %i.aa, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph
  %i.ab = add nuw i32 %.024, 1
  %i.ac = and i32 %i.ab, %i.g                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = lshr i64 %i.ad, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !242
  %i.ai = and i32 %i.ac, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !593

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ae, %bb.c ], [ %i.x, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.aa, %bb.c ], [ %i.aa, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !594
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.176", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !140
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 6                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !144
  store ptr %i.y, ptr %i.q, align 8, !tbaa !145
  store i32 0, ptr %i.p, align 16, !tbaa !146
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !594    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !602 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !88
  store ptr %i.z, ptr %2, align 16, !tbaa !594
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !88
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !602
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !242
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !242
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !242
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !242
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !242 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !164
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #27
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i:         ; preds = %bb.c, %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !164
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i.i
  %i.az = add i32 %.0.i3.i.i, -1
  %i.ba = and i32 %i.az, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !603

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !604

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !140 ; 2 uses
  %i.bb = icmp eq i32 %.pr.i, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit.i
  %i.bc = load ptr, ptr %2, align 16, !tbaa !144
  %i.bd = zext i32 %.pr.i to i64                  ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 6
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev.exit

_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !140  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !145  ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !144
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !140
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !242  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bz, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.t ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !164
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = mul i64 %i.x, -4658895280553007687       ; 2 uses
  %i.z = lshr i64 %i.y, 31
  %i.aa = xor i64 %i.z, %i.y
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.k, %i.ab                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5                       ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !242
  %i.ah = and i32 %i.ac, 31                       ; 2 uses
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.al, %.lr.ph.i ], [ %i.ac, %bb.b ]
  %i.ak = add i32 %.016.i, 1
  %i.al = and i32 %i.ak, %i.k                     ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !242
  %i.aq = and i32 %i.al, 31                       ; 2 uses
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !605

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.lcssa14.i ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  %i.aw = and i64 %.0.copyload.i.i.i.i.i.i.i, 6
  store i64 %i.aw, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr null, ptr %i.ax, align 8, !tbaa !159
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !164 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !164
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  %i.ba = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.bb = inttoptr i64 %i.ba to ptr
  tail call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef %i.bb) #27, !inline_history !606
  br label %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit.i

_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit.i: ; preds = %bb.c, %._crit_edge.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %i.at, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !166
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !166
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 2 uses
  store i64 6, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store ptr null, ptr %i.bg, align 8, !tbaa !159
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !164 ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !164
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i.thread, label %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i

_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i.thread:   ; preds = %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit.i
  %i.bk = shl nuw i32 1, %.lcssa.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa13.i ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !242
  %i.bn = or i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !242
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i

_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i:          ; preds = %_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2EOSA_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.0.copyload.i.i.i.i.i.i11.i = load i64, ptr %i.bo, align 8
  %i.bp = and i64 %.0.copyload.i.i.i.i.i.i11.i, -8
  %i.bq = inttoptr i64 %i.bp to ptr
  tail call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef %i.bq) #27, !inline_history !607
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !164
  %i.br = icmp eq ptr %.pre, null
  %i.bs = shl nuw i32 1, %.lcssa.i
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa13.i ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !242
  %i.bv = or i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !242
  br i1 %i.br, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bw) #27, !inline_history !607
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i:             ; preds = %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i.thread, %bb.d, %_ZN4llvm14WeakTrackingVHC2ERKS0_.exit.i
  %i.bx = load ptr, ptr %i.v, align 8, !tbaa !164
  %.not.i.i12.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i12.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av) #27, !inline_history !607
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit: ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i, %bb.e
  %i.by = add i32 %.0.i19, -1
  %i.bz = and i32 %i.by, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bz, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !608

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E8moveFromERSI_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !609

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre27 = load i32, ptr %i.d, align 4, !tbaa !140
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ca = phi i32 [ %.pre27, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !146
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !146
  %i.ce = icmp eq i32 %i.ca, 0
  br i1 %i.ce, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit
  %i.cf = load ptr, ptr %1, align 8, !tbaa !144
  %i.cg = zext i32 %i.ca to i64                   ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 6
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = and i64 %i.cj, 1073741820
  %i.cl = add nuw nsw i64 %i.ck, %i.ch
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cf, i64 noundef %i.cl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE4killEv.exit

_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS8_NS_3sys10SmartMutexILb0EEEEEEES9_NS_12DenseMapInfoISF_vEENS_6detail12DenseMapPairISF_S9_EEEESF_S9_SH_SK_E8moveFromERSL_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !145
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !242  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.x, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !164
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #27
  br label %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i

_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i:           ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm15ValueHandleBaseD2Ev.exit.i.i
  %i.w = add i32 %.0.i3.i, -1
  %i.x = and i32 %i.w, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !603

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !604

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !140  ; 2 uses
  %i.y = icmp eq i32 %.pr, 0
  br i1 %i.y, label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !144
  %i.aa = zext i32 %.pr to i64                    ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 6
  %i.ac = add nuw nsw i64 %i.aa, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.af, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS4_NS_3sys10SmartMutexILb0EEEEEEES5_NS_12DenseMapInfoISB_vEENS_6detail12DenseMapPairISB_S5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E10destroyAllEv.exit, %bb.e
  ret void
}

declare void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm10CallbackVH6anchorEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE7deletedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.307, align 1            ; 3 uses
  %2 = alloca %"class.llvm::ValueMapCallbackVH", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8 ; 2 uses
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i, 6
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !159
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !164
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.i = inttoptr i64 %i.h to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.i) #27, !inline_history !610
  %.pre21.pre = load ptr, ptr %i.e, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre21 = phi ptr [ %.pre21.pre, %bb.b ], [ null, %bb.a ] ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %2, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !166  ; 5 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !166
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144, !noalias !611
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !145, !noalias !611 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !140, !noalias !611 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNSt11unique_lockIN4llvm3sys10SmartMutexILb0EEEED2Ev.exit8, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %i.q, -1                         ; 2 uses
  %i.t = ptrtoint ptr %.pre21 to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.s, %i.x                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !242
  %i.ad = and i32 %i.y, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.i.i, label %_ZNSt11unique_lockIN4llvm3sys10SmartMutexILb0EEEED2Ev.exit8, !prof !244

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %i.ag = phi i64 [ %i.an, %bb.e ], [ %i.z, %bb.d ]
  %.017.i.i.i = phi i32 [ %i.am, %bb.e ], [ %i.y, %bb.d ]
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !164
  %i.ak = icmp eq ptr %.pre21, %i.aj
  br i1 %i.ak, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6doFindISC_EEPSH_RKT_.exit.i, label %bb.e, !prof !65

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add nuw i32 %.017.i.i.i, 1
  %i.am = and i32 %i.al, %i.s                     ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !242
  %i.ar = and i32 %i.am, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %.lr.ph.i.i.i, label %_ZNSt11unique_lockIN4llvm3sys10SmartMutexILb0EEEED2Ev.exit8, !prof !245

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6doFindISC_EEPSH_RKT_.exit.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E21eraseFromFilledBucketIZNSJ_21eraseFromFilledBucketEPSH_EUlRSH_E_EEvSL_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %1), !inline_history !616
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !164
  br label %_ZNSt11unique_lockIN4llvm3sys10SmartMutexILb0EEEED2Ev.exit8

_ZNSt11unique_lockIN4llvm3sys10SmartMutexILb0EEEED2Ev.exit8: ; preds = %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6doFindISC_EEPSH_RKT_.exit.i, %bb.d, %bb.c
  %i.au = phi ptr [ %.pre21, %bb.c ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS5_NS_3sys10SmartMutexILb0EEEEEEES6_NS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_S6_EEEESC_S6_SE_SH_E6doFindISC_EEPSH_RKT_.exit.i ], [ %.pre21, %bb.d ], [ %.pre21, %bb.e ]
  %.not.i.i9 = icmp eq ptr %i.au, null
  br i1 %.not.i.i9, label %_ZN4llvm10CallbackVHD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt11unique_lockIN4llvm3sys10SmartMutexILb0EEEED2Ev.exit8
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %_ZN4llvm10CallbackVHD2Ev.exit

_ZN4llvm10CallbackVHD2Ev.exit:                    ; preds = %_ZNSt11unique_lockIN4llvm3sys10SmartMutexILb0EEEED2Ev.exit8, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEE19allUsesReplacedWithEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.307, align 1            ; 3 uses
  %3 = alloca %"class.llvm::ValueMapCallbackVH", align 8 ; 7 uses
  %4 = alloca %"class.llvm::WeakTrackingVH", align 8 ; 8 uses
  %5 = alloca %"struct.std::pair.313", align 8    ; 7 uses
  %6 = alloca %"struct.std::pair.310", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8 ; 2 uses
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i, 6
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !159
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !164
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.i = inttoptr i64 %i.h to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef %i.i) #27, !inline_history !610
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm18ValueMapCallbackVHIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEE, i64 16), ptr %3, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !166  ; 5 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !166
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_114SimplifyCFGOpt14simplifySwitchEPN4llvm10SwitchInstERNS1_9IRBuilderINS1_14ConstantFolderENS1_24IRBuilderDefaultInserterEEE:bb.a

.lr.ph.i50.i:                                     ; preds = %.lr.ph.i123
  %i.brg = getelementptr inbounds i8, ptr %.sroa.082.0122.i, i64 -8
  %i.brh = load ptr, ptr %i.brg, align 8, !tbaa !60 ; 2 uses
  %i.bri = getelementptr inbounds nuw i8, ptr %.sroa.082.0122.i, i64 76
  %i.brj = load i32, ptr %i.bri, align 4, !tbaa !90
  %i.brk = zext i32 %i.brj to i64
  %i.brl = getelementptr inbounds nuw [32 x i8], ptr %i.brh, i64 %i.brk ; 5 uses
  %i.brm = zext nneg i32 %i.brf to i64
  br label %bb.lj

bb.lj:                                            ; preds = %bb.lk, %.lr.ph.i50.i
  %indvars.iv.i.i124 = phi i64 [ 0, %.lr.ph.i50.i ], [ %indvars.iv.next.i.i125, %bb.lk ] ; 3 uses
  %i.brn = getelementptr inbounds nuw [8 x i8], ptr %i.brl, i64 %indvars.iv.i.i124
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !62
  %i.brp = icmp eq ptr %i.bro, %i.bom
  br i1 %i.brp, label %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %indvars.iv.next.i.i125 = add nuw nsw i64 %indvars.iv.i.i124, 1 ; 2 uses
  %.not.i51.i = icmp eq i64 %indvars.iv.next.i.i125, %i.brm
  br i1 %.not.i51.i, label %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i, label %bb.lj, !llvm.loop !100

_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i: ; preds = %bb.lk, %bb.lj
  %i.brq = phi i64 [ %indvars.iv.i.i124, %bb.lj ], [ 4294967295, %bb.lk ]
  %i.brr = getelementptr inbounds nuw [32 x i8], ptr %i.brh, i64 %i.brq ; 6 uses
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !47
  %i.brt = icmp eq ptr %i.brs, %i.bpn
  br i1 %i.brt, label %bb.ll, label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit.i

bb.ll:                                            ; preds = %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i
  %i.bru = shl nuw nsw i32 %i.brf, 3
  %.idx113.i = zext nneg i32 %i.bru to i64        ; 2 uses
  %i.brv = getelementptr inbounds nuw i8, ptr %i.brl, i64 %.idx113.i
  %i.brw = add nsw i64 %.idx113.i, -8             ; 2 uses
  %i.brx = lshr exact i64 %i.brw, 3
  %i.bry = add nuw nsw i64 %i.brx, 1              ; 2 uses
  %min.iters.check607 = icmp ult i64 %i.brw, 24
  br i1 %min.iters.check607, label %.lr.ph.i.i.i52.i.preheader, label %vector.ph608

vector.ph608:                                     ; preds = %bb.ll
  %n.vec609 = and i64 %i.bry, 4611686018427387900 ; 3 uses
  %i.brz = shl i64 %n.vec609, 3
  %i.bsa = getelementptr i8, ptr %i.brl, i64 %i.brz
  br label %vector.body612

vector.body612:                                   ; preds = %vector.body612, %vector.ph608
  %index613 = phi i64 [ 0, %vector.ph608 ], [ %index.next619, %vector.body612 ] ; 2 uses
  %vec.phi614 = phi <2 x i64> [ zeroinitializer, %vector.ph608 ], [ %i.bsh, %vector.body612 ]
  %vec.phi615 = phi <2 x i64> [ zeroinitializer, %vector.ph608 ], [ %i.bsi, %vector.body612 ]
  %i.bsb = shl i64 %index613, 3
  %next.gep616 = getelementptr i8, ptr %i.brl, i64 %i.bsb ; 2 uses
  %i.bsc = getelementptr i8, ptr %next.gep616, i64 16
  %wide.load617 = load <2 x ptr>, ptr %next.gep616, align 8, !tbaa !62
  %wide.load618 = load <2 x ptr>, ptr %i.bsc, align 8, !tbaa !62
  %i.bsd = icmp eq <2 x ptr> %wide.load617, %broadcast.splat611
  %i.bse = icmp eq <2 x ptr> %wide.load618, %broadcast.splat611
  %i.bsf = zext <2 x i1> %i.bsd to <2 x i64>
  %i.bsg = zext <2 x i1> %i.bse to <2 x i64>
  %i.bsh = add <2 x i64> %vec.phi614, %i.bsf      ; 2 uses
  %i.bsi = add <2 x i64> %vec.phi615, %i.bsg      ; 2 uses
  %index.next619 = add nuw i64 %index613, 4       ; 2 uses
  %i.bsj = icmp eq i64 %index.next619, %n.vec609
  br i1 %i.bsj, label %middle.block620, label %vector.body612, !llvm.loop !943

middle.block620:                                  ; preds = %vector.body612
  %bin.rdx621 = add <2 x i64> %i.bsi, %i.bsh
  %i.bsk = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx621) ; 2 uses
  %cmp.n622 = icmp eq i64 %i.bry, %n.vec609
  br i1 %cmp.n622, label %_ZN4llvm5countINS_14iterator_rangeIPKPNS_10BasicBlockEEES3_EEDaOT_RKT0_.exit.i, label %.lr.ph.i.i.i52.i.preheader

.lr.ph.i.i.i52.i.preheader:                       ; preds = %bb.ll, %middle.block620
  %.08.i.i.i.i150.ph = phi i64 [ 0, %bb.ll ], [ %i.bsk, %middle.block620 ]
  %.057.i.i.i.i151.ph = phi ptr [ %i.brl, %bb.ll ], [ %i.bsa, %middle.block620 ]
  br label %.lr.ph.i.i.i52.i

.lr.ph.i.i.i52.i:                                 ; preds = %.lr.ph.i.i.i52.i.preheader, %.lr.ph.i.i.i52.i
  %.08.i.i.i.i150 = phi i64 [ %spec.select.i.i.i.i152, %.lr.ph.i.i.i52.i ], [ %.08.i.i.i.i150.ph, %.lr.ph.i.i.i52.i.preheader ]
  %.057.i.i.i.i151 = phi ptr [ %i.bso, %.lr.ph.i.i.i52.i ], [ %.057.i.i.i.i151.ph, %.lr.ph.i.i.i52.i.preheader ] ; 2 uses
  %i.bsl = load ptr, ptr %.057.i.i.i.i151, align 8, !tbaa !62
  %i.bsm = icmp eq ptr %i.bsl, %i.bom
  %i.bsn = zext i1 %i.bsm to i64
  %spec.select.i.i.i.i152 = add nuw nsw i64 %.08.i.i.i.i150, %i.bsn ; 2 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i151, i64 8 ; 2 uses
  %.not.i.i.i.i153 = icmp eq ptr %i.bso, %i.brv
  br i1 %.not.i.i.i.i153, label %_ZN4llvm5countINS_14iterator_rangeIPKPNS_10BasicBlockEEES3_EEDaOT_RKT0_.exit.i, label %.lr.ph.i.i.i52.i, !llvm.loop !944

_ZN4llvm5countINS_14iterator_rangeIPKPNS_10BasicBlockEEES3_EEDaOT_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i52.i, %middle.block620
  %spec.select.i.i.i.i152.lcssa = phi i64 [ %i.bsk, %middle.block620 ], [ %spec.select.i.i.i.i152, %.lr.ph.i.i.i52.i ]
  %i.bsp = icmp eq i64 %spec.select.i.i.i.i152.lcssa, 1
  br i1 %i.bsp, label %bb.lm, label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit.i

bb.lm:                                            ; preds = %_ZN4llvm5countINS_14iterator_rangeIPKPNS_10BasicBlockEEES3_EEDaOT_RKT0_.exit.i
  %i.bsq = load ptr, ptr %i.rw, align 8, !tbaa !60
  %i.bsr = load ptr, ptr %i.bsq, align 8, !tbaa !47 ; 4 uses
  %i.bss = getelementptr inbounds nuw i8, ptr %i.brr, i64 16 ; 3 uses
  %i.bst = load ptr, ptr %i.bss, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i.i.i.i154 = icmp eq ptr %i.bst, null
  br i1 %.not.i.i.i.i.i.i154, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.brr, i64 8 ; 2 uses
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !54 ; 3 uses
  store ptr %i.bsv, ptr %i.bst, align 8, !tbaa !60
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.bsv, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 16
  store ptr %i.bst, ptr %i.bsw, align 8, !tbaa !135
  store ptr null, ptr %i.bsu, align 8, !tbaa !54
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  store ptr null, ptr %i.bss, align 8, !tbaa !135
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i:    ; preds = %bb.lp, %bb.lm
  store ptr %i.bsr, ptr %i.brr, align 8, !tbaa !47
  %.not.i.i.i.i.i155 = icmp eq ptr %i.bsr, null
  br i1 %.not.i.i.i.i.i155, label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit.i, label %bb.lq

bb.lq:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i
  %i.bsx = load i8, ptr %i.bsr, align 8, !tbaa !52
  %i.bsy = icmp ugt i8 %i.bsx, 10
  br i1 %i.bsy, label %bb.lr, label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit.i

bb.lr:                                            ; preds = %bb.lq
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsr, i64 16 ; 3 uses
  %i.bta = load ptr, ptr %i.bsz, align 8, !tbaa !60 ; 3 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %i.brr, i64 8 ; 2 uses
  store ptr %i.bta, ptr %i.btb, align 8, !tbaa !54
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bta, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.btc = getelementptr inbounds nuw i8, ptr %i.bta, i64 16
  store ptr %i.btb, ptr %i.btc, align 8, !tbaa !135
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i:    ; preds = %bb.ls, %bb.lr
  store ptr %i.bsz, ptr %i.bss, align 8, !tbaa !135
  store ptr %i.brr, ptr %i.bsz, align 8, !tbaa !60
  br label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit.i

_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit.i: ; preds = %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, %bb.lq, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, %_ZN4llvm5countINS_14iterator_rangeIPKPNS_10BasicBlockEEES3_EEDaOT_RKT0_.exit.i, %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i, %.lr.ph.i123
  %.2.i126 = phi i1 [ %.1123.i, %_ZNK4llvm7PHINode18getBasicBlockIndexEPKNS_10BasicBlockE.exit.i ], [ %.1123.i, %_ZN4llvm5countINS_14iterator_rangeIPKPNS_10BasicBlockEEES3_EEDaOT_RKT0_.exit.i ], [ true, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i ], [ true, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i ], [ true, %bb.lq ], [ %.1123.i, %.lr.ph.i123 ] ; 2 uses
  %i.btd = getelementptr inbounds nuw i8, ptr %.sroa.082.0122.i, i64 32
  %i.bte = load ptr, ptr %i.btd, align 8, !tbaa !76
  %i.btf = getelementptr inbounds i8, ptr %i.bte, i64 -24 ; 2 uses
  %i.btg = load i8, ptr %i.btf, align 8, !tbaa !52
  %i.bth = icmp eq i8 %i.btg, 87
  %spec.select.i.i.i1.i.i = select i1 %i.bth, ptr %i.btf, ptr null ; 2 uses
  %.not112.i = icmp eq ptr %spec.select.i.i.i1.i.i, %i.bpv
  br i1 %.not112.i, label %._crit_edge.i127, label %.lr.ph.i123

bb.lt:                                            ; preds = %_ZL29findPHIForConditionForwardingPN4llvm11ConstantIntEPNS_10BasicBlockEPi.exit.i
  %i.bti = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i54.i = extractvalue { ptr, i8 } %i.bti, 0 ; 3 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i54.i, i64 8 ; 2 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i54.i, i64 16 ; 3 uses
  %i.btl = load i32, ptr %i.btk, align 8, !tbaa !58 ; 2 uses
  %i.btm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i54.i, i64 20
  %i.btn = load i32, ptr %i.btm, align 4, !tbaa !59
  %.not.i55.i = icmp ult i32 %i.btl, %i.btn
  br i1 %.not.i55.i, label %bb.lv, label %bb.lu, !prof !65

bb.lu:                                            ; preds = %bb.lt
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %i.btj, i32 noundef %i.bqu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i

bb.lv:                                            ; preds = %bb.lt
  %i.bto = zext i32 %i.btl to i64
  %i.btp = load ptr, ptr %i.btj, align 8, !tbaa !21
  %i.btq = getelementptr inbounds nuw [4 x i8], ptr %i.btp, i64 %i.bto
  store i32 %i.bqu, ptr %i.btq, align 1
  %i.btr = load i32, ptr %i.btk, align 8, !tbaa !58
  %i.bts = add i32 %i.btr, 1
  store i32 %i.bts, ptr %i.btk, align 8, !tbaa !58
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i: ; preds = %bb.li, %bb.lv, %bb.lu, %_ZL29findPHIForConditionForwardingPN4llvm11ConstantIntEPNS_10BasicBlockEPi.exit.i, %bb.lf, %bb.le, %bb.ld, %._crit_edge.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.btt = add nuw nsw i64 %.sroa.590.0125.i, 1   ; 2 uses
  %.not106.i = icmp eq i64 %i.btt, %i.boq
  br i1 %.not106.i, label %._crit_edge129.i, label %bb.lc

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.thread.i, %_ZN4llvm16DenseMapIteratorIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit.i, %.lr.ph.i.i72.i.preheader, %.lr.ph.i.i72.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit.thread.i..lr.ph7.preheader.i.i.i_crit_edge, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit.i
  %.pre-phi288 = phi i64 [ %.pre287, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit.thread.i..lr.ph7.preheader.i.i.i_crit_edge ], [ %i.bov, %.lr.ph.i.i72.i ], [ %i.bov, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit.i ], [ %i.bov, %.lr.ph.i.i72.i.preheader ], [ %i.bov, %_ZN4llvm16DenseMapIteratorIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit.i ], [ %i.bov, %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.thread.i ]
  %.3.lcssa216.i = phi i1 [ %.1.lcssa.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit.thread.i..lr.ph7.preheader.i.i.i_crit_edge ], [ %.4.i134, %.lr.ph.i.i72.i ], [ %.1.lcssa.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit.i ], [ %.4.i134, %.lr.ph.i.i72.i.preheader ], [ %.4.i134, %_ZN4llvm16DenseMapIteratorIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit.i ], [ %.4.i134, %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.thread.i ] ; 2 uses
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i135, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i56.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i58.i, %._crit_edge.i.i.i135 ] ; 3 uses
  %i.btu = getelementptr inbounds nuw [4 x i8], ptr %.pre163.i, i64 %indvars.iv.i.i56.i
  %i.btv = load i32, ptr %i.btu, align 4, !tbaa !242 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.btv, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i135, label %.lr.ph.i.i57.i

.lr.ph.i.i57.i:                                   ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i56.i to i32
  %i.btw = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.lw

bb.lw:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i57.i
  %.0.i3.i.i.i = phi i32 [ %i.btv, %.lr.ph.i.i57.i ], [ %i.bug, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.btx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.bty = or disjoint i32 %i.btx, %i.btw
  %i.btz = zext i32 %i.bty to i64
  %i.bua = getelementptr inbounds nuw [40 x i8], ptr %.pre161.i, i64 %i.btz ; 2 uses
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bua, i64 8
  %i.buc = load ptr, ptr %i.bub, align 8, !tbaa !21 ; 2 uses
  %i.bud = getelementptr inbounds nuw i8, ptr %i.bua, i64 24
  %i.bue = icmp eq ptr %i.buc, %i.bud
  br i1 %i.bue, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  call void @free(ptr noundef %i.buc) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.lx, %bb.lw
  %i.buf = add i32 %.0.i3.i.i.i, -1
  %i.bug = and i32 %i.buf, %.0.i3.i.i.i           ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.bug, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i135, label %bb.lw, !llvm.loop !945

._crit_edge.i.i.i135:                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i58.i = add nuw nsw i64 %indvars.iv.i.i56.i, 1 ; 2 uses
  %.not.i.i.i59.i = icmp eq i64 %indvars.iv.next.i.i58.i, %.pre-phi288
  br i1 %.not.i.i.i59.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !946

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i135
  %.pr.i.i136 = load i32, ptr %.phi.trans.insert164.i, align 4, !tbaa !937 ; 2 uses
  %i.buh = icmp eq i32 %.pr.i.i136, 0
  br i1 %i.buh, label %_ZL27forwardSwitchConditionToPHIPN4llvm10SwitchInstE.exit, label %.split

.split:                                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i.i
  %i.bui = load ptr, ptr %16, align 8, !tbaa !930
  %i.buj = zext i32 %.pr.i.i136 to i64            ; 2 uses
  %i.buk = mul nuw nsw i64 %i.buj, 40
  %i.bul = add nuw nsw i64 %i.buj, 31
  %i.bum = lshr i64 %i.bul, 3
  %i.bun = and i64 %i.bum, 1073741820
  %i.buo = add nuw nsw i64 %i.bun, %i.buk
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bui, i64 noundef %i.buo, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br i1 %.3.lcssa216.i, label %.critedge50.sink.split, label %bb.mr

.lr.ph146.i:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit.i, %_ZN4llvm16DenseMapIteratorIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit.i
  %.3144.i = phi i1 [ %.4.i134, %_ZN4llvm16DenseMapIteratorIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit.i ], [ %.1.lcssa.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit.i ] ; 3 uses
  %.pn.i = phi i64 [ %i.byc, %_ZN4llvm16DenseMapIteratorIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit.i ], [ %i.bph, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit.i ] ; 2 uses
  %.sroa.076.0143.i = getelementptr i8, ptr %.pre161.i, i64 %.pn.i ; 3 uses
  %i.bup = load ptr, ptr %.sroa.076.0143.i, align 8, !tbaa !947 ; 4 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %.sroa.076.0143.i, i64 8 ; 2 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %.sroa.076.0143.i, i64 16
  %i.bus = load i32, ptr %i.bur, align 8, !tbaa !58 ; 3 uses
  %i.but = zext i32 %i.bus to i64                 ; 2 uses
  %i.buu = icmp ult i32 %i.bus, 2
  br i1 %i.buu, label %bb.ly, label %.critedge2.thread.i

.critedge2.thread.i:                              ; preds = %.lr.ph146.i
  %i.buv = load ptr, ptr %i.buq, align 8, !tbaa !21 ; 2 uses
  %.idx149218.i = shl nuw nsw i64 %i.but, 2
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 %.idx149218.i
  br label %.lr.ph141.i

bb.ly:                                            ; preds = %.lr.ph146.i
  %i.bux = getelementptr inbounds nuw i8, ptr %i.bup, i64 4
  %i.buy = load i32, ptr %i.bux, align 4          ; 3 uses
  %i.buz = and i32 %i.buy, 1073741824
  %.not.i.i.i.i.i60.i = icmp eq i32 %i.buz, 0
  br i1 %.not.i.i.i.i.i60.i, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.bva = getelementptr inbounds i8, ptr %i.bup, i64 -8
  %i.bvb = load ptr, ptr %i.bva, align 8, !tbaa !60
  %.pre.i.i.i.i138 = and i32 %i.buy, 268435455
  %.pre1.i.i.i.i139 = zext nneg i32 %.pre.i.i.i.i138 to i64
  br label %_ZN4llvm7PHINode15incoming_valuesEv.exit.i

bb.ma:                                            ; preds = %bb.ly
  %i.bvc = and i32 %i.buy, 268435455
  %i.bvd = zext nneg i32 %i.bvc to i64            ; 2 uses
  %i.bve = sub nsw i64 0, %i.bvd
  %i.bvf = getelementptr inbounds [32 x i8], ptr %i.bup, i64 %i.bve
  br label %_ZN4llvm7PHINode15incoming_valuesEv.exit.i

_ZN4llvm7PHINode15incoming_valuesEv.exit.i:       ; preds = %bb.ma, %bb.lz
  %i.bvg = phi ptr [ %i.bvb, %bb.lz ], [ %i.bvf, %bb.ma ] ; 4 uses
  %.pre-phi2.i.i.i.i = phi i64 [ %.pre1.i.i.i.i139, %bb.lz ], [ %i.bvd, %bb.ma ] ; 4 uses
  %.idx109.i = shl nuw nsw i64 %.pre-phi2.i.i.i.i, 5 ; 2 uses
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvg, i64 %.idx109.i
  %i.bvi = load ptr, ptr %i.rw, align 8, !tbaa !60
  %i.bvj = load ptr, ptr %i.bvi, align 8, !tbaa !47 ; 7 uses
  %i.bvk = lshr i64 %.pre-phi2.i.i.i.i, 2         ; 2 uses
  %.not108.i = icmp eq i64 %i.bvk, 0
  br i1 %.not108.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm7PHINode15incoming_valuesEv.exit.i
  %i.bvl = and i64 %.idx109.i, 68719476608
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bvg, i64 %i.bvl
  br label %bb.mb

bb.mb:                                            ; preds = %bb.mf, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.bvk, %.lr.ph.i.i.i.i.i ], [ %i.bvy, %bb.mf ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.bvg, %.lr.ph.i.i.i.i.i ], [ %i.bvx, %bb.mf ] ; 9 uses
  %i.bvm = load ptr, ptr %.02946.i.i.i.i.i, align 8, !tbaa !47
  %i.bvn = icmp eq ptr %i.bvm, %i.bvj
  br i1 %i.bvn, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bvo = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 32
  %i.bvp = load ptr, ptr %i.bvo, align 8, !tbaa !47
  %i.bvq = icmp eq ptr %i.bvp, %i.bvj
  br i1 %i.bvq, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.bvr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 64
  %i.bvs = load ptr, ptr %i.bvr, align 8, !tbaa !47
  %i.bvt = icmp eq ptr %i.bvs, %i.bvj
  br i1 %i.bvt, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit504, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.bvu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 96
  %i.bvv = load ptr, ptr %i.bvu, align 8, !tbaa !47
  %i.bvw = icmp eq ptr %i.bvv, %i.bvj
  br i1 %i.bvw, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit506, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bvx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 128
  %i.bvy = add nsw i64 %.047.i.i.i.i.i, -1
  %i.bvz = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.bvz, label %bb.mb, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !954

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.mf
  %i.bwa = and i64 %.pre-phi2.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZN4llvm7PHINode15incoming_valuesEv.exit.i
  %.pre-phi56.i.i.i.i.i = phi i64 [ %i.bwa, %._crit_edge.loopexit.i.i.i.i.i ], [ %.pre-phi2.i.i.i.i, %_ZN4llvm7PHINode15incoming_valuesEv.exit.i ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.bvg, %_ZN4llvm7PHINode15incoming_valuesEv.exit.i ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.thread.i [
    i64 3, label %bb.mg
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.mg:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.bwb = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !47
  %i.bwc = icmp eq ptr %i.bwb, %i.bvj
  br i1 %i.bwc, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bwd = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 32
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.mh, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.bwd, %bb.mh ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.bwe = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !47
  %i.bwf = icmp eq ptr %i.bwe, %i.bvj
  br i1 %i.bwf, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i, label %bb.mi

bb.mi:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.bwg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 32
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.mi, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.bwg, %bb.mi ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bwh = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !47
  %i.bwi = icmp eq ptr %i.bwh, %i.bvj
  br i1 %i.bwi, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.thread.i

_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.mc
  %i.bwj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 32
  br label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i

_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit504: ; preds = %bb.md
  %i.bwk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 64
  br label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i

_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit506: ; preds = %bb.me
  %i.bwl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 96
  br label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i

_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i: ; preds = %bb.mb, %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit, %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit504, %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit506, %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.mg
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.mg ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.bwl, %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit506 ], [ %i.bwj, %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.bwk, %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i.loopexit.split.loop.exit504 ], [ %.02946.i.i.i.i.i, %bb.mb ]
  %.not110.i = icmp eq ptr %.028.i.i.i.i.i, %i.bvh
  br i1 %.not110.i, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.thread.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.i
  %i.bwm = load ptr, ptr %i.buq, align 8, !tbaa !21 ; 2 uses
  %.idx149.i = shl nuw nsw i64 %i.but, 2
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %.idx149.i
  %.not139.i140 = icmp eq i32 %i.bus, 0
  br i1 %.not139.i140, label %_ZN4llvm12is_containedINS_14iterator_rangeIPNS_3UseEEEPNS_5ValueEEEbOT_RKT0_.exit.thread.i, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %.critedge2.i, %.critedge2.thread.i
  %i.bwo = phi ptr [ %i.buw, %.critedge2.thread.i ], [ %i.bwn, %.critedge2.i ]
  %i.bwp = phi ptr [ %i.buv, %.critedge2.thread.i ], [ %i.bwm, %.critedge2.i ]
  %i.bwq = getelementptr inbounds i8, ptr %i.bup, i64 -8
  br label %bb.mj

end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !246

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1004
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.352", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !110
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1006
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !110
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !110 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #27
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !242 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !242 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !242 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1007

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa13.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !60
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = or i32 %i.bl, %.lcssa11.i
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !242
  %i.bn = add i32 %.0.i20, -1
  %i.bo = and i32 %i.bn, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1008

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !1009

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #27
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !265, !noalias !1010 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !277, !noalias !1010 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !278, !noalias !1010 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !242
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !244

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !242
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !245, !llvm.loop !1015

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1016
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1017
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1016
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !277
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !265
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 56                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !242
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !242
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1017
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !60
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 4, ptr %i.bl, align 4, !tbaa !59
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !265, !noalias !1018 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277, !noalias !1018 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !278, !noalias !1018 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !60     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !242
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !244

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !1015

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1016
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.350", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !278
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 56                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !265
  store ptr %i.y, ptr %i.q, align 8, !tbaa !277
  store i32 0, ptr %i.p, align 16, !tbaa !1017
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1016   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !602 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !88
  store ptr %i.z, ptr %2, align 16, !tbaa !1016
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !88
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !602
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !242
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !242
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !242
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !242
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !242 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !310

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !311

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !278 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !265
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 56
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !265
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !278  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !277  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !265
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !278
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !242  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !242
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1023

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !60
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 4, ptr %i.aw, align 4, !tbaa !59
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !58 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !21
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !59
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !59
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !21
  store i32 0, ptr %i.be, align 4, !tbaa !59
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bg = zext i32 %i.ay to i64                   ; 2 uses
  %i.bh = icmp ugt i32 %i.ay, 4
  br i1 %i.bh, label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i, label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef 8) #27
  %.pre = load i32, ptr %i.ax, align 8, !tbaa !58 ; 2 uses
  %.pre25 = zext i32 %.pre to i64
  %.not.i.i.i9 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i
  %.pre-phi36 = phi i64 [ %.pre25, %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i ], [ %i.bg, %bb.e ]
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !21
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %.pre-phi36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 8 %i.bi, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i.thread, %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !58
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i.sink.split

_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !58
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bk = shl nuw i32 1, %.lcssa.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !242
  %i.bn = or i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !242
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.bp) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i, %bb.f
  %i.bs = add i32 %.0.i16, -1
  %i.bt = and i32 %i.bs, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1024

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1025

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre24 = load i32, ptr %i.d, align 4, !tbaa !278
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bu = phi i32 [ %.pre24, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !1017
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !1017
  %i.by = icmp eq i32 %i.bu, 0
  br i1 %i.by, label %_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bz = load ptr, ptr %1, align 8, !tbaa !265
  %i.ca = zext i32 %i.bu to i64                   ; 2 uses
  %i.cb = mul nuw nsw i64 %i.ca, 56
  %i.cc = add nuw nsw i64 %i.ca, 31
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1073741820
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bz, i64 noundef %i.cf, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !278
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_3UseENS_11SmallVectorIPNS_5ValueELj4EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPKNS_3UseELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1026 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1026 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1026 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1026
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !242
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
end_hunk_5
begin_hunk_6_@_ZL17mergeIdenticalBBsN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_14DomTreeUpdaterE:bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.abp, i64 %i.abj)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit.i

bb.bs:                                            ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.thread.i
  %i.acb = zext i32 %i.abz to i64
  %i.acc = load ptr, ptr %10, align 8, !tbaa !21
  %i.acd = getelementptr inbounds nuw [16 x i8], ptr %i.acc, i64 %i.acb ; 2 uses
  store ptr %i.abp, ptr %i.acd, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  store i64 %i.abj, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.ace = load i32, ptr %i.kx, align 8, !tbaa !58
  %i.acf = add i32 %i.ace, 1
  store i32 %i.acf, ptr %i.kx, align 8, !tbaa !58
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.bs, %bb.br, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.i
  %i.acg = load i32, ptr %i.kx, align 8, !tbaa !58 ; 2 uses
  %i.ach = load i32, ptr %i.ky, align 4, !tbaa !59
  %.not.i29.i = icmp ult i32 %i.acg, %i.ach
  br i1 %.not.i29.i, label %bb.bu, label %bb.bt, !prof !65

bb.bt:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.abp, i64 %i.abl)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit31.i

bb.bu:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit.i
  %i.aci = zext i32 %i.acg to i64
  %i.acj = load ptr, ptr %10, align 8, !tbaa !21
  %i.ack = getelementptr inbounds nuw [16 x i8], ptr %i.acj, i64 %i.aci ; 2 uses
  store ptr %i.abp, ptr %i.ack, align 1
  %.sroa.3.0..sroa_idx.i30.i = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  store i64 %i.abl, ptr %.sroa.3.0..sroa_idx.i30.i, align 1
  %i.acl = load i32, ptr %i.kx, align 8, !tbaa !58
  %i.acm = add i32 %i.acl, 1
  store i32 %i.acm, ptr %i.kx, align 8, !tbaa !58
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit31.i

_ZN4llvm23SmallVectorTemplateBaseINS_3cfg6UpdateIPNS_10BasicBlockEEELb1EE9push_backES5_.exit31.i: ; preds = %bb.bu, %bb.bt
  %i.acn = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %i.acn, %i.abi
  br i1 %.not25.i, label %._crit_edge.loopexit.i, label %bb.bo

bb.bv:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %_ZN4llvm14SmallSetVectorIPNS_10BasicBlockELj8EECI2NS_9SetVectorIS2_NS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EEEINS_14iterator_rangeINS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEEEEENS_12from_range_tEOT_.exit.i
  %i.aco = phi i32 [ %.pre19.i, %_ZN4llvm14SmallSetVectorIPNS_10BasicBlockELj8EECI2NS_9SetVectorIS2_NS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EEEINS_14iterator_rangeINS_12PredIteratorIS1_NS_5Value18user_iterator_implINS_4UserEEEEEEEEENS_12from_range_tEOT_.exit.i ], [ %.pre18.i, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i ] ; 2 uses
  %i.acp = load ptr, ptr %i.lg, align 8, !tbaa !21 ; 3 uses
  %i.acq = zext i32 %i.aco to i64
  %.idx17.i = shl nuw nsw i64 %i.acq, 3
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 %.idx17.i
  %.not2612.i = icmp eq i32 %i.aco, 0
  br i1 %.not2612.i, label %._crit_edge16.i, label %.lr.ph15.i

._crit_edge16.loopexit.i:                         ; preds = %.lr.ph15.i
  %.pre20.i = load ptr, ptr %i.lg, align 8, !tbaa !21
  br label %._crit_edge16.i

._crit_edge16.i:                                  ; preds = %._crit_edge16.loopexit.i, %bb.bv
  %i.acs = phi ptr [ %.pre20.i, %._crit_edge16.loopexit.i ], [ %i.acp, %bb.bv ] ; 2 uses
  %i.act = icmp eq ptr %i.acs, %i.lh
  br i1 %i.act, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge16.i
  call void @free(ptr noundef %i.acs) #27
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit.i.i: ; preds = %bb.bw, %._crit_edge16.i
  %i.acu = load i32, ptr %i.lm, align 4, !tbaa !342 ; 2 uses
  %i.acv = icmp eq i32 %i.acu, 0
  br i1 %i.acv, label %"_ZZL17mergeIdenticalBBsN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_14DomTreeUpdaterEENK3$_0clES2_S2_.exit", label %bb.bx

bb.bx:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit.i.i
  %i.acw = load ptr, ptr %3, align 8, !tbaa !345
  %i.acx = zext i32 %i.acu to i64                 ; 2 uses
  %i.acy = shl nuw nsw i64 %i.acx, 3
  %i.acz = add nuw nsw i64 %i.acx, 31
  %i.ada = lshr i64 %i.acz, 3
  %i.adb = and i64 %i.ada, 1073741820
  %i.adc = add nuw nsw i64 %i.adb, %i.acy
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.acw, i64 noundef %i.adc, i64 noundef 8) #27
  br label %"_ZZL17mergeIdenticalBBsN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_14DomTreeUpdaterEENK3$_0clES2_S2_.exit"

.lr.ph15.i:                                       ; preds = %bb.bv, %.lr.ph15.i
  %.02413.i = phi ptr [ %i.adh, %.lr.ph15.i ], [ %i.acp, %bb.bv ] ; 2 uses
  %i.add = load ptr, ptr %.02413.i, align 8, !tbaa !62
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 48
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !55
  %i.adg = getelementptr inbounds i8, ptr %i.adf, i64 -24
  call void @_ZN4llvm11Instruction20replaceSuccessorWithEPNS_10BasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(72) %i.adg, ptr noundef %i.qz, ptr noundef %i.qy) #27
  %i.adh = getelementptr inbounds nuw i8, ptr %.02413.i, i64 8 ; 2 uses
  %.not26.i = icmp eq ptr %i.adh, %i.acr
  br i1 %.not26.i, label %._crit_edge16.loopexit.i, label %.lr.ph15.i

"_ZZL17mergeIdenticalBBsN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_14DomTreeUpdaterEENK3$_0clES2_S2_.exit": ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit.i.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.by

bb.by:                                            ; preds = %"_ZZL17mergeIdenticalBBsN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_14DomTreeUpdaterEENK3$_0clES2_S2_.exit", %bb.al, %bb.ak
  %.2 = phi i1 [ %.042276, %bb.ak ], [ true, %"_ZZL17mergeIdenticalBBsN4llvm8ArrayRefIPNS_10BasicBlockEEEPNS_14DomTreeUpdaterEENK3$_0clES2_S2_.exit" ], [ %.042276, %bb.al ] ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.0277, i64 16 ; 2 uses
  %.not52 = icmp eq ptr %i.adi, %i.lf
  br i1 %.not52, label %._crit_edge279, label %bb.ak

bb.bz:                                            ; preds = %._crit_edge279
  %i.adj = load i32, ptr %i.qu, align 8, !tbaa !58 ; 2 uses
  %.not.i67 = icmp eq i32 %i.adj, 0
  br i1 %.not.i67, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.adk = load ptr, ptr %10, align 8, !tbaa !21
  %i.adl = zext i32 %i.adj to i64
  call void @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE12applyUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEE(ptr noundef nonnull align 8 dereferenceable(658) %2, ptr %i.adk, i64 %i.adl) #27
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %._crit_edge279
  %i.adm = load ptr, ptr %10, align 8, !tbaa !21  ; 2 uses
  %i.adn = icmp eq ptr %i.adm, %i.qt
  br i1 %i.adn, label %_ZN4llvm11SmallVectorINS_3cfg6UpdateIPNS_10BasicBlockEEELj3EED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @free(ptr noundef %i.adm) #27
  br label %_ZN4llvm11SmallVectorINS_3cfg6UpdateIPNS_10BasicBlockEEELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_3cfg6UpdateIPNS_10BasicBlockEEELj3EED2Ev.exit: ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.ado = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !1176 ; 2 uses
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %_ZN4llvm6detail12DenseSetImplIPK14EqualBBWrapperNS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %_ZN4llvm11SmallVectorINS_3cfg6UpdateIPNS_10BasicBlockEEELj3EED2Ev.exit
  %i.adr = load ptr, ptr %9, align 8, !tbaa !1179
  %i.ads = zext i32 %i.adp to i64                 ; 2 uses
  %i.adt = shl nuw nsw i64 %i.ads, 3
  %i.adu = add nuw nsw i64 %i.ads, 31
  %i.adv = lshr i64 %i.adu, 3
  %i.adw = and i64 %i.adv, 1073741820
  %i.adx = add nuw nsw i64 %i.adw, %i.adt
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.adr, i64 noundef %i.adx, i64 noundef 8) #27
  br label %_ZN4llvm6detail12DenseSetImplIPK14EqualBBWrapperNS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPK14EqualBBWrapperNS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_3cfg6UpdateIPNS_10BasicBlockEEELj3EED2Ev.exit, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ady = load ptr, ptr %i.i, align 8, !tbaa !21 ; 2 uses
  %i.adz = icmp eq ptr %i.ady, %i.j
  br i1 %i.adz, label %_ZN4llvm11SmallVectorIPNS_7PHINodeELj8EED2Ev.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPK14EqualBBWrapperNS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  call void @free(ptr noundef %i.ady) #27
  br label %_ZN4llvm11SmallVectorIPNS_7PHINodeELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_7PHINodeELj8EED2Ev.exit.i: ; preds = %bb.ce, %_ZN4llvm6detail12DenseSetImplIPK14EqualBBWrapperNS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  %i.aea = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !1082 ; 2 uses
  %i.aec = icmp eq i32 %i.aeb, 0
  br i1 %i.aec, label %_ZN4llvm9SetVectorIPNS_7PHINodeENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_7PHINodeELj8EED2Ev.exit.i
  %i.aed = load ptr, ptr %7, align 8, !tbaa !1069
  %i.aee = zext i32 %i.aeb to i64                 ; 2 uses
  %i.aef = shl nuw nsw i64 %i.aee, 3
  %i.aeg = add nuw nsw i64 %i.aee, 31
  %i.aeh = lshr i64 %i.aeg, 3
  %i.aei = and i64 %i.aeh, 1073741820
  %i.aej = add nuw nsw i64 %i.aei, %i.aef
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aed, i64 noundef %i.aej, i64 noundef 8) #27
  br label %_ZN4llvm9SetVectorIPNS_7PHINodeENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EED2Ev.exit

_ZN4llvm9SetVectorIPNS_7PHINodeENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_7PHINodeELj8EED2Ev.exit.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.aek = load ptr, ptr %6, align 8, !tbaa !21   ; 2 uses
  %i.ael = icmp eq ptr %i.aek, %i.e
  br i1 %i.ael, label %_ZN4llvm11SmallVectorI14EqualBBWrapperLj3EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZN4llvm9SetVectorIPNS_7PHINodeENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EED2Ev.exit
  call void @free(ptr noundef %i.aek) #27
  br label %_ZN4llvm11SmallVectorI14EqualBBWrapperLj3EED2Ev.exit

_ZN4llvm11SmallVectorI14EqualBBWrapperLj3EED2Ev.exit: ; preds = %_ZN4llvm9SetVectorIPNS_7PHINodeENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EED2Ev.exit, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.aem = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !1056 ; 2 uses
  %i.aeo = icmp eq i32 %i.aen, 0
  br i1 %i.aeo, label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm11SmallVectorI14EqualBBWrapperLj3EED2Ev.exit
  %i.aep = load ptr, ptr %5, align 8, !tbaa !1180
  %i.aeq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !1181
  %i.aes = zext i32 %i.aen to i64
  %i.aet = add nuw nsw i64 %i.aes, 31
  %i.aeu = lshr i64 %i.aet, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.i.i
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !242 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.aew, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i68

.lr.ph.i.i68:                                     ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.aex = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.ch

bb.ch:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i68
  %.0.i3.i.i = phi i32 [ %i.aew, %.lr.ph.i.i68 ], [ %i.afr, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.aey = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aez = or disjoint i32 %i.aey, %i.aex
  %i.afa = zext i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw [152 x i8], ptr %i.aep, i64 %i.afa ; 3 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afd = load i32, ptr %i.afc, align 8
  %i.afe = and i32 %i.afd, 1
  %.not.i.i.i.i.i69 = icmp eq i32 %i.afe, 0
  br i1 %.not.i.i.i.i.i69, label %bb.ci, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afb, i64 32
  %i.afg = load i32, ptr %i.aff, align 8, !tbaa !110 ; 2 uses
  %i.afh = icmp eq i32 %i.afg, 0
  br i1 %i.afh, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !110
  %i.afk = zext i32 %i.afg to i64                 ; 2 uses
  %i.afl = shl nuw nsw i64 %i.afk, 4
  %i.afm = add nuw nsw i64 %i.afk, 31
  %i.afn = lshr i64 %i.afm, 3
  %i.afo = and i64 %i.afn, 1073741820
  %i.afp = add nuw nsw i64 %i.afo, %i.afl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.afj, i64 noundef %i.afp, i64 noundef 8) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.afq = add i32 %.0.i3.i.i, -1
  %i.afr = and i32 %i.afq, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.afr, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.ch, !llvm.loop !1182

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i70 = icmp eq i64 %indvars.iv.next.i.i, %i.aeu
  br i1 %.not.i.i.i70, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1183

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.aem, align 4, !tbaa !1056 ; 2 uses
  %i.afs = icmp eq i32 %.pr.i, 0
  br i1 %i.afs, label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEv.exit.i
  %i.aft = load ptr, ptr %5, align 8, !tbaa !1180
  %i.afu = zext i32 %.pr.i to i64                 ; 2 uses
  %i.afv = mul nuw nsw i64 %i.afu, 152
  %i.afw = add nuw nsw i64 %i.afu, 31
  %i.afx = lshr i64 %i.afw, 3
  %i.afy = and i64 %i.afx, 1073741820
  %i.afz = add nuw nsw i64 %i.afy, %i.afv
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aft, i64 noundef %i.afz, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorI14EqualBBWrapperLj3EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEv.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.cl

bb.cl:                                            ; preds = %bb.a, %_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEED2Ev.exit
  %.043 = phi i1 [ %.042.lcssa, %_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.043
}

declare noundef zeroext i1 @_ZNK4llvm10BasicBlock12isEntryBlockEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !496
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58   ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %.idx4.i = shl nuw nsw i64 %i.h, 3              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx4.i
  %i.j = lshr i64 %i.h, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !62     ; 8 uses
  %i.l = and i64 %.idx4.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.x, %bb.g ] ; 9 uses
  %i.m = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !62
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.q = icmp eq ptr %i.p, %i.k
  br i1 %i.q, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.t = icmp eq ptr %i.s, %i.k
  br i1 %i.t, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit35, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.y = add nsw i64 %.047.i.i.i.i, -1
  %i.z = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.z, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !497

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %i.aa = and i32 %i.g, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.b
  %.pre-phi56.i.i.i.i = phi i32 [ %i.aa, %._crit_edge.loopexit.i.i.i.i ], [ %i.g, %bb.b ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.e, %bb.b ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.thread_crit_edge [
    i32 3, label %bb.h
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.thread_crit_edge: ; preds = %._crit_edge.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !62
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.thread

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %.pre53.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !62
  br label %bb.l

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !62
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !62
  %i.ac = load ptr, ptr %1, align 8, !tbaa !62    ; 3 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge._crit_edge.i.i.i.i
  %i.af = phi ptr [ %i.ac, %bb.i ], [ %.pre.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %.1.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %i.ag = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !62
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge52.i.i.i.i
  %i.aj = phi ptr [ %i.af, %bb.k ], [ %.pre53.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ] ; 3 uses
  %.2.i.i.i.i = phi ptr [ %i.ai, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ] ; 2 uses
  %i.ak = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !62
  %i.al = icmp eq ptr %i.ak, %i.aj
  br i1 %i.al, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit35: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit37: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit: ; preds = %bb.c, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit35, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit37, %bb.h, %bb.j, %bb.l
  %i.ap = phi ptr [ %i.af, %bb.j ], [ %i.ac, %bb.h ], [ %i.aj, %bb.l ], [ %i.k, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.k, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit37 ], [ %i.k, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit35 ], [ %i.k, %bb.c ]
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i, %bb.h ], [ %.2.i.i.i.i, %bb.l ], [ %i.am, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.ao, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit37 ], [ %i.an, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit35 ], [ %.02946.i.i.i.i, %bb.c ]
  %.not = icmp eq ptr %.028.i.i.i.i, %i.i
  br i1 %.not, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit.thread, label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE7makeBigEv.exit

end_hunk_6
begin_hunk_7_@_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE6insertERKS2_:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59
  %.not.i9 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i9, label %bb.r, label %bb.q, !prof !65

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef %i.bg)
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE7makeBigEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bl = zext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.bg, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.bh, align 8, !tbaa !58
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bh, align 8, !tbaa !58
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE7makeBigEv.exit

_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE7makeBigEv.exit: ; preds = %.lr.ph.i, %bb.r, %bb.q, %bb.o, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit
  %.0 = phi i1 [ true, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit ], [ false, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj8EEES3_EEbOT_RKT0_.exit ], [ false, %bb.o ], [ true, %bb.r ], [ true, %bb.q ], [ true, %.lr.ph.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseI14EqualBBWrapperLb1EE18growAndEmplaceBackIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !62 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !1064 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseI14EqualBBWrapperLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !58
  br label %_ZN4llvm23SmallVectorTemplateBaseI14EqualBBWrapperLb1EE9push_backES1_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.g, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !58
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !58
  br label %_ZN4llvm23SmallVectorTemplateBaseI14EqualBBWrapperLb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseI14EqualBBWrapperLb1EE9push_backES1_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.c ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !21
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16
  ret ptr %i.n
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseI14EqualBBWrapperLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !58
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !58
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7PHINodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !58
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !58
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.518", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1082
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1069
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1081
  store i32 0, ptr %i.p, align 16, !tbaa !1065
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !88
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1198
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !88
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !88
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !242 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !242
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !242
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !242
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !242
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1069   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1081
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1082 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1081 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1069
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1082
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !242  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !912  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !242 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1199

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !912
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !242
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1200

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1201

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1082
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1065
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1065
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !1082
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.507", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1056
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 152                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1180
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1181
  store i32 0, ptr %i.p, align 16, !tbaa !1202
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1203   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !602 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !88
  store ptr %i.z, ptr %2, align 16, !tbaa !1203
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !88
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !602
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !242
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !242
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !242
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !242
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !242 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bi, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [152 x i8], ptr %i.z, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !110 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !110
  %i.bb = zext i32 %i.ax to i64                   ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 4
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.bh = add i32 %.0.i3.i.i, -1
  %i.bi = and i32 %i.bh, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1182

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1183

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1056 ; 2 uses
  %i.bj = icmp eq i32 %.pr.i, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEv.exit.i
  %i.bk = load ptr, ptr %2, align 16, !tbaa !1180
  %i.bl = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bm = mul nuw nsw i64 %i.bl, 152
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E10destroyAllEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1180
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1181
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1056 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1181 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1180
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1056
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS6_vEENSF_IS6_SH_EEEES6_SH_SI_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !242  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E8moveFromERSH_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E8moveFromERSH_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [152 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !912  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !242
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1204

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !912
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  store i32 1, ptr %i.at, align 8
  store i32 0, ptr %i.av, align 8
  tail call void @_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE8swapImplERSA_(ptr noundef nonnull align 8 dereferenceable(144) %i.at, ptr noundef nonnull align 8 dereferenceable(144) %i.au)
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !242
  %i.az = or i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !242
  %i.ba = load i32, ptr %i.au, align 8
  %i.bb = and i32 %i.ba, 1
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E8moveFromERSH_ENKUljE_clEj.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !110 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E8moveFromERSH_ENKUljE_clEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !110
  %i.bh = zext i32 %i.bd to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E8moveFromERSH_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E8moveFromERSH_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c, %bb.d
  %i.bn = add i32 %.0.i17, -1
  %i.bo = and i32 %i.bn, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1205

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E8moveFromERSH_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS6_vEENSF_IS6_SH_EEEES6_SH_SI_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1206

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS6_vEENSF_IS6_SH_EEEES6_SH_SI_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1056
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS6_vEENSF_IS6_SH_EEEES6_SH_SI_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS6_vEENSF_IS6_SH_EEEES6_SH_SI_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS6_vEENSF_IS6_SH_EEEES6_SH_SI_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS6_vEENSF_IS6_SH_EEEES6_SH_SI_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !1202
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !1202
  %i.bt = icmp eq i32 %i.bp, 0
  br i1 %i.bt, label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS6_vEENSF_IS6_SH_EEEES6_SH_SI_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit
  %i.bu = load ptr, ptr %1, align 8, !tbaa !1180
  %i.bv = zext i32 %i.bp to i64                   ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bv, 152
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 3
  %i.bz = and i64 %i.by, 1073741820
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bu, i64 noundef %i.ca, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !1056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEENS8_IS2_vEENSB_IS2_SD_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS6_vEENSF_IS6_SH_EEEES6_SH_SI_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE8swapImplERSA_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::SmallDenseMap<llvm::BasicBlock *, llvm::Value *, 8>::LargeRep", align 8 ; 4 uses
  %3 = alloca %"struct.llvm::SmallDenseMap<llvm::BasicBlock *, llvm::Value *, 8>::LargeRep", align 8 ; 4 uses
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, -2
  %i.c = load i32, ptr %0, align 8
  %i.d = and i32 %i.c, -2
  %i.e = and i32 %i.a, 1
  %i.f = or disjoint i32 %i.d, %i.e
  store i32 %i.f, ptr %1, align 8
  %i.g = load i32, ptr %0, align 8
  %i.h = and i32 %i.g, 1                          ; 2 uses
  %i.i = or disjoint i32 %i.h, %i.b               ; 2 uses
  store i32 %i.i, ptr %0, align 8
  %.not = icmp eq i32 %i.h, 0
  %i.j = load i32, ptr %1, align 8                ; 2 uses
  %i.k = and i32 %i.j, 1
  %.not72 = icmp eq i32 %i.k, 0                   ; 2 uses
  br i1 %.not, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not72, label %bb.ba, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !242  ; 10 uses
  %i.q = load i32, ptr %i.m, align 8, !tbaa !242  ; 10 uses
  %i.r = trunc i32 %i.q to i1
  %i.s = and i32 %i.p, 1
  %i.t = and i32 %i.s, %i.q
  %or.cond.not = icmp eq i32 %i.t, 0
  br i1 %or.cond.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load <2 x ptr>, ptr %i.o, align 8, !tbaa !88
  %i.v = load <2 x ptr>, ptr %i.n, align 8, !tbaa !88
  store <2 x ptr> %i.u, ptr %i.n, align 8, !tbaa !88
  store <2 x ptr> %i.v, ptr %i.o, align 8, !tbaa !88
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.w = trunc i32 %i.p to i1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load <2 x ptr>, ptr %i.n, align 8, !tbaa !88
  store <2 x ptr> %i.x, ptr %i.o, align 8, !tbaa !88
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load <2 x ptr>, ptr %i.o, align 8, !tbaa !88
  store <2 x ptr> %i.y, ptr %i.n, align 8, !tbaa !88
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.d
  %i.z = lshr i32 %i.p, 1                         ; 2 uses
  %i.aa = lshr i32 %i.q, 1                        ; 2 uses
  %i.ab = trunc i32 %i.aa to i1
  %i.ac = and i32 %i.z, 1
  %i.ad = and i32 %i.ac, %i.aa
  %or.cond.not.1 = icmp eq i32 %i.ad, 0
  br i1 %or.cond.not.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !88
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !88
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !88
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !88
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ai = trunc i32 %i.z to i1
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !1123

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1208
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.535", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !110
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1207
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !110
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !110 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #27
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 8
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 7   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !242 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !242 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !242 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1226

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa13.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !105
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !105
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = or i32 %i.bl, %.lcssa11.i
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !242
  %i.bn = add i32 %.0.i20, -1
  %i.bo = and i32 %i.bn, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1227

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !1228

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #27
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPK14EqualBBWrapperNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.546", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1176
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1179
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1229
  store i32 0, ptr %i.p, align 16, !tbaa !1230
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPK14EqualBBWrapperNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !88
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1231
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !88
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !88
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !242 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !242
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !242
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !242
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !242
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPK14EqualBBWrapperNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPK14EqualBBWrapperNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPK14EqualBBWrapperNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPK14EqualBBWrapperNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
  %2 = alloca %"struct.std::array.596", align 8   ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1179
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1229
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1176 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1229 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !1179
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1176
  %i.l = add i32 %i.k, -1
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5                         ; 2 uses
  %.not.i69 = icmp eq i64 %i.o, 0
  br i1 %.not.i69, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPK14EqualBBWrapperNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph72, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !242  ; 2 uses
  %.not11.i67 = icmp eq i32 %i.r, 0
  br i1 %.not11.i67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.s = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPK14EqualBBWrapperNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i68 = phi i32 [ %i.r, %.lr.ph ], [ %i.in, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPK14EqualBBWrapperNS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i68, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1129 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1059 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 2 uses
  %i.ad = call { ptr, ptr } @_ZN4llvm10BasicBlock4phisEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ac) #27 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { ptr, ptr } %i.ad, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %.not27.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not27.i, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = mul i64 %i.ah, -4658895280553007687     ; 2 uses
  %i.aj = lshr i64 %i.ai, 31
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.c
  %i.am = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %i.a, i64 noundef 0) #27
  br label %_ZN4llvm7hashing6detail23hash_combine_range_implINS_15mapped_iteratorINS_10BasicBlock17phi_iterator_implINS_7PHINodeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEEEZNS_12DenseMapInfoIPK14EqualBBWrappervE12getHashValueESH_EUlRS6_E_PNS_5ValueEEEEENS_9hash_codeET_SP_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i
  %.sroa.035.0 = phi ptr [ %spec.select.i.i.i1.i.i.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ], [ %i.ae, %.lr.ph.i.preheader ] ; 6 uses
  %.01431.i = phi i64 [ %i.hj, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.01530.i = phi i64 [ %.1.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ], [ 256, %.lr.ph.i.preheader ] ; 3 uses
  %.01629.i = phi ptr [ %.117.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ], [ %i.a, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.024.028.i = phi ptr [ %.sroa.024.1.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i ], [ null, %.lr.ph.i.preheader ] ; 3 uses
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !1062 ; 6 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1180, !noalias !1232 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1181, !noalias !1232 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !1056, !noalias !1232 ; 4 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.loopexit.i11, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.au = add i32 %i.as, -1                       ; 2 uses
  %i.av = ptrtoint ptr %.sroa.035.0 to i64
  %i.aw = mul i64 %i.av, -4658895280553007687     ; 2 uses
  %i.ax = lshr i64 %i.aw, 31
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.au, %i.az                    ; 3 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [152 x i8], ptr %i.ao, i64 %i.bb ; 2 uses
  %i.bd = lshr i64 %i.bb, 5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !242
  %i.bg = and i32 %i.ba, 31
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.i.i20, label %.loopexit.i11, !prof !244

.lr.ph.i.i20:                                     ; preds = %bb.d, %bb.e
  %i.bj = phi ptr [ %i.bp, %bb.e ], [ %i.bc, %bb.d ] ; 3 uses
  %.024.i.i21 = phi i32 [ %i.bn, %bb.e ], [ %i.ba, %bb.d ]
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !912
  %i.bl = icmp eq ptr %.sroa.035.0, %i.bk
  br i1 %i.bl, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSG_bEOT_DpOT0_.exit.loopexit, label %bb.e, !prof !65

bb.e:                                             ; preds = %.lr.ph.i.i20
  %i.bm = add nuw i32 %.024.i.i21, 1
  %i.bn = and i32 %i.bm, %i.au                    ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [152 x i8], ptr %i.ao, i64 %i.bo ; 2 uses
  %i.bq = lshr i64 %i.bo, 5
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !242
  %i.bt = and i32 %i.bn, 31
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = trunc i32 %i.bu to i1
  br i1 %i.bv, label %.lr.ph.i.i20, label %.loopexit.i11, !prof !245, !llvm.loop !1215

.loopexit.i11:                                    ; preds = %bb.e, %bb.d, %.lr.ph.i
  %.lcssa28.sink.i.ph.i12 = phi ptr [ %i.bc, %bb.d ], [ null, %.lr.ph.i ], [ %i.bp, %bb.e ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !1202
  %i.by = shl i32 %i.bx, 2
  %i.bz = add i32 %i.by, 4
  %i.ca = mul i32 %i.as, 3
  %.not.i.i13 = icmp ult i32 %i.bz, %i.ca
  br i1 %.not.i.i13, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit.i, label %bb.f, !prof !65

bb.f:                                             ; preds = %.loopexit.i11
  %i.cb = shl i32 %i.as, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.an, i32 noundef %i.cb)
  %i.cc = load ptr, ptr %i.an, align 8, !tbaa !1180, !noalias !1237 ; 5 uses
  %i.cd = load ptr, ptr %i.ap, align 8, !tbaa !1181, !noalias !1237 ; 5 uses
  %i.ce = load i32, ptr %i.ar, align 4, !tbaa !1056, !noalias !1237 ; 2 uses
  %i.cf = icmp ne i32 %i.ce, 0
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add i32 %i.ce, -1                       ; 2 uses
  %i.ch = ptrtoint ptr %.sroa.035.0 to i64
  %i.ci = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cj = lshr i64 %i.ci, 31
  %i.ck = xor i64 %i.cj, %i.ci
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = and i32 %i.cg, %i.cl                    ; 3 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [152 x i8], ptr %i.cc, i64 %i.cn ; 2 uses
  %i.cp = lshr i64 %i.cn, 5
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !242
  %i.cs = and i32 %i.cm, 31
  %i.ct = lshr i32 %i.cr, %i.cs
  %i.cu = trunc i32 %i.ct to i1
  br i1 %i.cu, label %.lr.ph.i25, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit.i, !prof !244

.lr.ph.i25:                                       ; preds = %bb.f, %bb.g
  %i.cv = phi ptr [ %i.db, %bb.g ], [ %i.co, %bb.f ] ; 2 uses
  %.024.i26 = phi i32 [ %i.cz, %bb.g ], [ %i.cm, %bb.f ]
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !912
  %i.cx = icmp eq ptr %.sroa.035.0, %i.cw
  br i1 %i.cx, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit.i, label %bb.g, !prof !65

bb.g:                                             ; preds = %.lr.ph.i25
  %i.cy = add nuw i32 %.024.i26, 1
  %i.cz = and i32 %i.cy, %i.cg                    ; 3 uses
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw [152 x i8], ptr %i.cc, i64 %i.da ; 2 uses
  %i.dc = lshr i64 %i.da, 5
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !242
  %i.df = and i32 %i.cz, 31
  %i.dg = lshr i32 %i.de, %i.df
  %i.dh = trunc i32 %i.dg to i1
  br i1 %i.dh, label %.lr.ph.i25, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit.i, !prof !245, !llvm.loop !1215

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit.i: ; preds = %bb.g, %.lr.ph.i25, %bb.f, %.loopexit.i11
  %i.di = phi ptr [ %i.ao, %.loopexit.i11 ], [ %i.cc, %bb.f ], [ %i.cc, %.lr.ph.i25 ], [ %i.cc, %bb.g ]
  %i.dj = phi ptr [ %i.aq, %.loopexit.i11 ], [ %i.cd, %bb.f ], [ %i.cd, %.lr.ph.i25 ], [ %i.cd, %bb.g ]
  %i.dk = phi ptr [ %.lcssa28.sink.i.ph.i12, %.loopexit.i11 ], [ %i.co, %bb.f ], [ %i.db, %bb.g ], [ %i.cv, %.lr.ph.i25 ] ; 5 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = sdiv exact i64 %i.dn, 152               ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = and i32 %i.dp, 31
  %i.dr = shl nuw i32 1, %i.dq
  %i.ds = lshr i64 %i.do, 5
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !242
  %i.dv = or i32 %i.dr, %i.du
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !242
  %i.dw = load i32, ptr %i.bw, align 8, !tbaa !1202
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.bw, align 8, !tbaa !1202
  store ptr %.sroa.035.0, ptr %i.dk, align 8, !tbaa !912
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 144
  store i32 1, ptr %i.dy, align 8
  store i32 0, ptr %i.dz, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSG_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSG_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i20
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !noalias !1242
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSG_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSG_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSG_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit.i
  %i.ea = phi i32 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit.i ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSG_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %.sroa.0.0.i16 = phi ptr [ %i.dk, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit.i ], [ %i.bj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSG_bEOT_DpOT0_.exit.loopexit ] ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16, i64 8 ; 4 uses
  %i.ec = and i32 %i.ea, 1
  %.not.i.i.i.i = icmp eq i32 %i.ec, 0            ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16, i64 16 ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !1242
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16, i64 24 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !1242
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16, i64 32 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !noalias !1242
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16, i64 144 ; 2 uses
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.ee, ptr %i.ed ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.eg, ptr %i.ej ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.ei, i32 8 ; 4 uses
  %i.ek = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.ek, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEENS9_IS3_vEENSC_IS3_SE_EEEES3_SE_SF_SG_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSG_bEOT_DpOT0_.exit
  %i.el = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.em = and i32 %i.el, %i.al                    ; 3 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i, i64 %i.en ; 2 uses
  %i.ep = lshr i64 %i.en, 5
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !242
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !1598

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1599
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.708", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 9                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 136
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEEC2EjNS_12DenseMapBaseIS8_S2_iS4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !110
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEEC2EjNS_12DenseMapBaseIS8_S2_iS4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEEC2EjNS_12DenseMapBaseIS8_S2_iS4_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 8, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEEC2EjNS_12DenseMapBaseIS8_S2_iS4_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1605
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEEC2EjNS_12DenseMapBaseIS8_S2_iS4_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !110
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !110 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #27
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 8
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 7   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i20 = icmp eq i64 %i.ab, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !242 ; 2 uses
  %.not11.i18 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bp, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !242
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.015.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !242
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1606

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa14.i ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa12.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !242
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !242
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = load i32, ptr %i.bg, align 4, !tbaa !242
  %i.bn = or i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %i.bg, align 4, !tbaa !242
  %i.bo = add i32 %.0.i19, -1
  %i.bp = and i32 %i.bo, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bp, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1607

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEEES3_iS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1608

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre27 = load i32, ptr %0, align 8
  %.pre28 = and i32 %.pre27, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre28, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bq = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.br = and i32 %i.bq, -2
  %i.bs = or disjoint i32 %.pre-phi, %i.br
  store i32 %i.bs, ptr %0, align 8
  %i.bt = load i32, ptr %1, align 8               ; 3 uses
  %i.bu = and i32 %i.bt, 1
  %.not.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bv = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.by = zext i32 %i.bv to i64                   ; 2 uses
  %i.bz = shl nuw nsw i64 %i.by, 4
  %i.ca = add nuw nsw i64 %i.by, 31
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = and i64 %i.cb, 1073741820
  %i.cd = add nuw nsw i64 %i.cc, %i.bz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bx, i64 noundef %i.cd, i64 noundef 8) #27
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ce = phi i32 [ %i.bt, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEiLj8ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit ], [ %i.bt, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cf = and i32 %i.ce, -2
  store i32 %i.cf, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !496
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !496
  %i.d = load ptr, ptr %0, align 8, !tbaa !345    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !517  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !342
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !242
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.x = phi i64 [ %i.ap, %bb.c ], [ %i.q, %bb.a ]
  %i.y = phi i32 [ %i.ao, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = sub i32 %.03337, %i.af
  %i.ah = and i32 %i.ag, %i.i
  %i.ai = sub i32 %i.y, %i.af
  %i.aj = and i32 %i.ai, %i.i
  %i.ak = icmp ult i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.al = zext i32 %.03337 to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.al
  store ptr %i.aa, ptr %i.am, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.y, %bb.b ] ; 2 uses
  %i.an = add i32 %i.y, 1
  %i.ao = and i32 %i.an, %i.i                     ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !242
  %i.at = and i32 %i.ao, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.n, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.aw = and i32 %.033.lcssa, 31
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = xor i32 %i.ax, -1
  %i.az = lshr i32 %.033.lcssa, 5
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !242
  %i.bd = and i32 %i.bc, %i.ay
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !242
  ret void
}

declare noundef zeroext i1 @_ZN4llvm17hasBranchWeightMDERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt3setIPN4llvm11ConstantIntEN12_GLOBAL__N_119ConstantIntOrderingESaIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %.val.i = load ptr, ptr %1, align 8             ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.01618.i.i = load ptr, ptr %i.a, align 8, !tbaa !1386 ; 2 uses
  %.not19.i.i = icmp eq ptr %.01618.i.i, null
  br i1 %.not19.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  br label %bb.b

end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1636
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1634
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1421
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !242
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !242
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1614
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !62
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !242
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1421, !noalias !1637 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1634, !noalias !1637 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1418, !noalias !1637 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !242
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !244

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !1635

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1636
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.727", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1418
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1421
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1634
  store i32 0, ptr %i.p, align 16, !tbaa !1614
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !88
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1636
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !88
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !88
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !242 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !242
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !242
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !242
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !242
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1421   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1634
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1418 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1634 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1421
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1418
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !242  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !242
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1642

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !242
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !242
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !242
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !242
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1643

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !1644

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1418
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1614
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1614
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !1418
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeIPN4llvm11ConstantIntES2_St9_IdentityIS2_EN12_GLOBAL__N_119ConstantIntOrderingESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi ptr [ %.0.val, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val6 = load ptr, ptr %i.a, align 8, !tbaa !1402
  tail call fastcc void @_ZNSt8_Rb_treeIPN4llvm11ConstantIntES2_St9_IdentityIS2_EN12_GLOBAL__N_119ConstantIntOrderingESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef %.0.val6)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val = load ptr, ptr %i.b, align 8, !tbaa !1401 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 40) #31
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1645

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIPN4llvm11ConstantIntESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !854
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1386 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !679
  %i.i = load ptr, ptr %2, align 8, !tbaa !679
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPN4llvm11ConstantIntESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !1386 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !679    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !679  ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !1386 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !1646

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !852
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIPN4llvm11ConstantIntESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #28 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !679
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !679
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIPN4llvm11ConstantIntESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %2, align 8, !tbaa !679    ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !679  ; 2 uses
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1386 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIPN4llvm11ConstantIntESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !679
  %i.ag = icmp ult ptr %i.af, %i.w
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !1707

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1708
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.920", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2EjNS_12DenseMapBaseIS8_S2_jS4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !110
  br label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2EjNS_12DenseMapBaseIS8_S2_jS4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2EjNS_12DenseMapBaseIS8_S2_jS4_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2EjNS_12DenseMapBaseIS8_S2_jS4_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1715
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEC2EjNS_12DenseMapBaseIS8_S2_jS4_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !110
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !110 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #27
  br label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i20 = icmp eq i64 %i.ab, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !242 ; 2 uses
  %.not11.i18 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bp, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !257 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !242
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.015.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !242
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1716

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa14.i ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa12.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !257
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !242
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !242
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = load i32, ptr %i.bg, align 4, !tbaa !242
  %i.bn = or i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %i.bg, align 4, !tbaa !242
  %i.bo = add i32 %.0.i19, -1
  %i.bp = and i32 %i.bo, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bp, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1717

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1718

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre27 = load i32, ptr %0, align 8
  %.pre28 = and i32 %.pre27, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre28, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bq = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.br = and i32 %i.bq, -2
  %i.bs = or disjoint i32 %.pre-phi, %i.br
  store i32 %i.bs, ptr %0, align 8
  %i.bt = load i32, ptr %1, align 8               ; 3 uses
  %i.bu = and i32 %i.bt, 1
  %.not.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bv = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.by = zext i32 %i.bv to i64                   ; 2 uses
  %i.bz = shl nuw nsw i64 %i.by, 4
  %i.ca = add nuw nsw i64 %i.by, 31
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = and i64 %i.cb, 1073741820
  %i.cd = add nuw nsw i64 %i.cc, %i.bz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bx, i64 noundef %i.cd, i64 noundef 8) #27
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ce = phi i32 [ %i.bt, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_11InstructionEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit ], [ %i.bt, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cf = and i32 %i.ce, -2
  store i32 %i.cf, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

declare { i64, i32 } @_ZNK4llvm19TargetTransformInfo18getCmpSelInstrCostEjPNS_4TypeES2_NS_7CmpInst9PredicateENS0_14TargetCostKindENS0_16OperandValueInfoES6_PKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64, i64, ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm23ReplaceableMetadataImpl28getAllDbgVariableRecordUsersEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.934") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm23FoldSingleEntryPHINodesEPNS_10BasicBlockEPNS_23MemoryDependenceResultsE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !496
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58   ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %.idx4.i = shl nuw nsw i64 %i.h, 3              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx4.i
  %i.j = lshr i64 %i.h, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !62     ; 8 uses
  %i.l = and i64 %.idx4.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.x, %bb.g ] ; 9 uses
  %i.m = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !62
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj2EEES3_EEbOT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.q = icmp eq ptr %i.p, %i.k
  br i1 %i.q, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj2EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.t = icmp eq ptr %i.s, %i.k
  br i1 %i.t, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj2EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit35, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj2EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit37, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.y = add nsw i64 %.047.i.i.i.i, -1
  %i.z = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.z, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !497

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %i.aa = and i32 %i.g, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.b
  %.pre-phi56.i.i.i.i = phi i32 [ %i.aa, %._crit_edge.loopexit.i.i.i.i ], [ %i.g, %bb.b ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.e, %bb.b ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj2EEES3_EEbOT_RKT0_.exit.thread_crit_edge [
    i32 3, label %bb.h
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj2EEES3_EEbOT_RKT0_.exit.thread_crit_edge: ; preds = %._crit_edge.i.i.i.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !62
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj2EEES3_EEbOT_RKT0_.exit.thread

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %.pre53.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !62
  br label %bb.l

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !62
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !62
  %i.ac = load ptr, ptr %1, align 8, !tbaa !62    ; 3 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj2EEES3_EEbOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1761
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1759
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !765
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !242
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !242
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1736
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !679
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !679
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !242
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !765, !noalias !1762 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1759, !noalias !1762 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !762, !noalias !1762 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !679    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !242
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !244

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !679
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !1760

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1761
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.978", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !762
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !765
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1759
  store i32 0, ptr %i.p, align 16, !tbaa !1736
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !88
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1761
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !88
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !88
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !242 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !242
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !242
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !242
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !242
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !765    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1759
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !762  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1759 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !765
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !762
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !242  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !679  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !242
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1767

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !679
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !242
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !242
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !242
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !242
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1768

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !1769

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !762
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1736
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1736
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !762
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11ConstantIntEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm10BasicBlock10moveBeforeENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(80), ptr) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm17isWidenableBranchEPKNS_4UserE(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @"_ZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES1_PNS_14DomTreeUpdaterEENK3$_0clERNS_10BasicBlockE"(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %0) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %.not17.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not17.i.i.i.i.i, label %"_ZN4llvm7none_ofIRNS_10BasicBlockEZZL30tryWidenCondBranchToCondBranchPNS_10CondBrInstES4_PNS_14DomTreeUpdaterEENK3$_0clES2_EUlRKNS_11InstructionEE_EEbOT_T0_.exit", label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -24 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #28
  br i1 %i.e, label %"_ZN4llvm7none_ofIRNS_10BasicBlockEZZL30tryWidenCondBranchToCondBranchPNS_10CondBrInstES4_PNS_14DomTreeUpdaterEENK3$_0clES2_EUlRKNS_11InstructionEE_EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES4_PNS2_14DomTreeUpdaterEENK3$_0clERNS2_10BasicBlockEEUlRKNS2_11InstructionEE_EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsISA_Lb0ELb0EvLb1ES8_EELb0ELb0EEEEEbT_.exit.peel.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES4_PNS2_14DomTreeUpdaterEENK3$_0clERNS2_10BasicBlockEEUlRKNS2_11InstructionEE_EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsISA_Lb0ELb0EvLb1ES8_EELb0ELb0EEEEEbT_.exit.peel.i.i.i.i.i": ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm11Instruction18mayHaveSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #28
  br i1 %i.f, label %"_ZN4llvm7none_ofIRNS_10BasicBlockEZZL30tryWidenCondBranchToCondBranchPNS_10CondBrInstES4_PNS_14DomTreeUpdaterEENK3$_0clES2_EUlRKNS_11InstructionEE_EEbOT_T0_.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES4_PNS2_14DomTreeUpdaterEENK3$_0clERNS2_10BasicBlockEEUlRKNS2_11InstructionEE_EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsISA_Lb0ELb0EvLb1ES8_EELb0ELb0EEEEEbT_.exit.peel.i.i.i.i.i"
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.peel.i.i.i.i.i, label %"_ZN4llvm7none_ofIRNS_10BasicBlockEZZL30tryWidenCondBranchToCondBranchPNS_10CondBrInstES4_PNS_14DomTreeUpdaterEENK3$_0clES2_EUlRKNS_11InstructionEE_EEbOT_T0_.exit", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %.sroa.03.018.i.i.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.03.018.i.i.i.i.i, i64 -24 ; 2 uses
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.i) #28
  br i1 %i.j, label %"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEEZZL30tryWidenCondBranchToCondBranchPNS0_10CondBrInstES9_PNS0_14DomTreeUpdaterEENK3$_0clERS5_EUlRKS4_E_ET_SH_SH_T0_.exit.loopexit.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES4_PNS2_14DomTreeUpdaterEENK3$_0clERNS2_10BasicBlockEEUlRKNS2_11InstructionEE_EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsISA_Lb0ELb0EvLb1ES8_EELb0ELb0EEEEEbT_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES4_PNS2_14DomTreeUpdaterEENK3$_0clERNS2_10BasicBlockEEUlRKNS2_11InstructionEE_EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsISA_Lb0ELb0EvLb1ES8_EELb0ELb0EEEEEbT_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.k = tail call noundef zeroext i1 @_ZNK4llvm11Instruction18mayHaveSideEffectsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.i) #28
  br i1 %i.k, label %"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEEZZL30tryWidenCondBranchToCondBranchPNS0_10CondBrInstES9_PNS0_14DomTreeUpdaterEENK3$_0clERS5_EUlRKS4_E_ET_SH_SH_T0_.exit.loopexit.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES4_PNS2_14DomTreeUpdaterEENK3$_0clERNS2_10BasicBlockEEUlRKNS2_11InstructionEE_EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsISA_Lb0ELb0EvLb1ES8_EELb0ELb0EEEEEbT_.exit.i.i.i.i.i"
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.018.i.i.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not.i.i.i.i.i, label %"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEEZZL30tryWidenCondBranchToCondBranchPNS0_10CondBrInstES9_PNS0_14DomTreeUpdaterEENK3$_0clERS5_EUlRKS4_E_ET_SH_SH_T0_.exit.loopexit.i.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !1770

"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEEZZL30tryWidenCondBranchToCondBranchPNS0_10CondBrInstES9_PNS0_14DomTreeUpdaterEENK3$_0clERS5_EUlRKS4_E_ET_SH_SH_T0_.exit.loopexit.i.i": ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES4_PNS2_14DomTreeUpdaterEENK3$_0clERNS2_10BasicBlockEEUlRKNS2_11InstructionEE_EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsISA_Lb0ELb0EvLb1ES8_EELb0ELb0EEEEEbT_.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.sroa.03.0.lcssa.i.i.i.ph.i.i = phi ptr [ %.sroa.03.018.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES4_PNS2_14DomTreeUpdaterEENK3$_0clERNS2_10BasicBlockEEUlRKNS2_11InstructionEE_EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsISA_Lb0ELb0EvLb1ES8_EELb0ELb0EEEEEbT_.exit.i.i.i.i.i" ], [ %i.c, %bb.c ], [ %.sroa.03.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.n = icmp eq ptr %i.c, %.sroa.03.0.lcssa.i.i.i.ph.i.i
  br label %"_ZN4llvm7none_ofIRNS_10BasicBlockEZZL30tryWidenCondBranchToCondBranchPNS_10CondBrInstES4_PNS_14DomTreeUpdaterEENK3$_0clES2_EUlRKNS_11InstructionEE_EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_10BasicBlockEZZL30tryWidenCondBranchToCondBranchPNS_10CondBrInstES4_PNS_14DomTreeUpdaterEENK3$_0clES2_EUlRKNS_11InstructionEE_EEbOT_T0_.exit": ; preds = %bb.a, %.lr.ph.preheader.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES4_PNS2_14DomTreeUpdaterEENK3$_0clERNS2_10BasicBlockEEUlRKNS2_11InstructionEE_EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsISA_Lb0ELb0EvLb1ES8_EELb0ELb0EEEEEbT_.exit.peel.i.i.i.i.i", %bb.b, %"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEEZZL30tryWidenCondBranchToCondBranchPNS0_10CondBrInstES9_PNS0_14DomTreeUpdaterEENK3$_0clERS5_EUlRKS4_E_ET_SH_SH_T0_.exit.loopexit.i.i"
  %.sroa.03.0.lcssa.i.i.i.i.i = phi i1 [ true, %bb.a ], [ false, %.lr.ph.preheader.i.i.i.i.i ], [ false, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZL30tryWidenCondBranchToCondBranchPN4llvm10CondBrInstES4_PNS2_14DomTreeUpdaterEENK3$_0clERNS2_10BasicBlockEEUlRKNS2_11InstructionEE_EclINS2_21ilist_iterator_w_bitsINS2_12ilist_detail12node_optionsISA_Lb0ELb0EvLb1ES8_EELb0ELb0EEEEEbT_.exit.peel.i.i.i.i.i" ], [ true, %bb.b ], [ %i.n, %"_ZSt7find_ifIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEEZZL30tryWidenCondBranchToCondBranchPNS0_10CondBrInstES9_PNS0_14DomTreeUpdaterEENK3$_0clERS5_EUlRKS4_E_ET_SH_SH_T0_.exit.loopexit.i.i" ]
  ret i1 %.sroa.03.0.lcssa.i.i.i.i.i
}

declare noundef ptr @_ZNK4llvm10BasicBlock28getTerminatingDeoptimizeCallEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm15SmallPtrSetImplIPNS_5ValueEE9remove_ifIZNS_13set_intersectINS_11SmallPtrSetIS2_Lj4EEES7_EEvRT_RKT0_EUlRKS8_E_EEbS8_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !84   ; 3 uses
  %.not2551 = icmp eq i32 %i.e, 0
  br i1 %.not2551, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %i.f = zext i32 %i.e to i64
  %.idx58 = shl nuw nsw i64 %i.f, 3
  %i.g = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx58 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.i, align 8, !tbaa !14, !range !18, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.lr.ph56.split.us, label %.lr.ph56.split

.lr.ph56.split.us:                                ; preds = %.lr.ph56, %bb.d
  %i.m = phi i32 [ %i.x, %bb.d ], [ %i.e, %.lr.ph56 ] ; 2 uses
  %.01954.us = phi ptr [ %.1.us, %bb.d ], [ %i.h, %.lr.ph56 ] ; 2 uses
  %.02053.us = phi ptr [ %.121.us, %bb.d ], [ %i.g, %.lr.ph56 ] ; 4 uses
  %.02252.us = phi i1 [ %.123.us, %bb.d ], [ false, %.lr.ph56 ]
  %i.n = load ptr, ptr %.02053.us, align 8, !tbaa !88
  %i.o = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.p = load i32, ptr %i.j, align 4, !tbaa !84   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i.i.i.us = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.us
  %.not17.i.i.i.us = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i.i.us, label %_ZZN4llvm13set_intersectINS_11SmallPtrSetIPNS_5ValueELj4EEES4_EEvRT_RKT0_ENKUlRKS5_E_clIS3_EEDaSB_.exit.thread.us, label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph56.split.us, %bb.c
  %.01218.i.i.i.us = phi ptr [ %i.t, %bb.c ], [ %i.o, %.lr.ph56.split.us ] ; 2 uses
  %i.s = load ptr, ptr %.01218.i.i.i.us, align 8, !tbaa !88
  %.not15.i.i.not.i.us = icmp eq ptr %i.s, %i.n
  br i1 %.not15.i.i.not.i.us, label %_ZZN4llvm13set_intersectINS_11SmallPtrSetIPNS_5ValueELj4EEES4_EEvRT_RKT0_ENKUlRKS5_E_clIS3_EEDaSB_.exit.thread43.loopexit.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.t = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i.us, label %_ZZN4llvm13set_intersectINS_11SmallPtrSetIPNS_5ValueELj4EEES4_EEvRT_RKT0_ENKUlRKS5_E_clIS3_EEDaSB_.exit.thread.us, label %.lr.ph.i.i.i.us

_ZZN4llvm13set_intersectINS_11SmallPtrSetIPNS_5ValueELj4EEES4_EEvRT_RKT0_ENKUlRKS5_E_clIS3_EEDaSB_.exit.thread.us: ; preds = %bb.c, %.lr.ph56.split.us
  %i.u = getelementptr inbounds i8, ptr %.01954.us, i64 -8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !2115

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2116
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1117", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !110
  br label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2123
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !110
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !110 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #27
  br label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !242 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !105 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !242 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !242 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2124

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa13.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !105
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1678
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !1678
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = or i32 %i.bl, %.lcssa11.i
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !242
  %i.bn = add i32 %.0.i20, -1
  %i.bo = and i32 %i.bn, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2125

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !2126

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #27
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm8Constant14isAllOnesValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm24ConstantFoldInstOperandsEPKNS_11InstructionENS_8ArrayRefIPNS_8ConstantEEERKNS_10DataLayoutEPKNS_17TargetLibraryInfoEb(ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(912), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !58
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !58
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !58
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm8Constant17isThreadDependentEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm8Constant20isDLLImportDependentEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm4Type12isScalableTyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo34shouldBuildLookupTablesForConstantEPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm5Value28stripInBoundsConstantOffsetsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_7PHINodeEPNS_8ConstantEELb1EE15growAndPushBackES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !58
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !58
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_8ConstantENS_11SmallVectorIPNS_11ConstantIntELj4EEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_8ConstantENS_11SmallVectorIPNS_11ConstantIntELj4EEEELb0EE19moveElementsForGrowEPS8_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructISt4pairIPN4llvm8ConstantENS1_11SmallVectorIPNS1_11ConstantIntELj4EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructISt4pairIPN4llvm8ConstantENS1_11SmallVectorIPNS1_11ConstantIntELj4EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructISt4pairIPN4llvm8ConstantENS1_11SmallVectorIPNS1_11ConstantIntELj4EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 4 uses
  %i.i = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !872
  store ptr %i.i, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !872
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store ptr %i.k, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store i32 0, ptr %i.l, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 20
  store i32 4, ptr %i.m, align 4, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !58
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIPN4llvm8ConstantENS1_11SmallVectorIPNS1_11ConstantIntELj4EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_11ConstantIntEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.p) ; 0 uses
  br label %_ZSt10_ConstructISt4pairIPN4llvm8ConstantENS1_11SmallVectorIPNS1_11ConstantIntELj4EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIPN4llvm8ConstantENS1_11SmallVectorIPNS1_11ConstantIntELj4EEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 56 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !242
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !245, !llvm.loop !2137

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2138
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !938
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2138
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !936
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !930
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 40                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !242
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !242
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !938
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !912
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !912
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 4, ptr %i.bl, align 4, !tbaa !59
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !930, !noalias !2139 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !936, !noalias !2139 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !937, !noalias !2139 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !912    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !242
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !244

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !912
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !2137

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2138
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1155", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !937
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !930
  store ptr %i.y, ptr %i.q, align 8, !tbaa !936
  store i32 0, ptr %i.p, align 16, !tbaa !938
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2138   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !602 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !88
  store ptr %i.z, ptr %2, align 16, !tbaa !2138
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !88
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !602
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !242
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !242
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !242
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !242
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !242 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !945

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !946

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !937 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !930
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !930
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !936
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !937  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !936  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !930
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !937
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !242  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bv, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !912  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !242
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2144

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !912
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 4, ptr %i.aw, align 4, !tbaa !59
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !58 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplIiE12assignRemoteEOS1_.exit.i

_ZN4llvm15SmallVectorImplIiE12assignRemoteEOS1_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !21
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !59
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !59
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !21
  store i32 0, ptr %i.be, align 4, !tbaa !59
  br label %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bg = icmp ugt i32 %i.ay, 4
  br i1 %i.bg, label %bb.f, label %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit34.i

bb.f:                                             ; preds = %bb.e
  %i.bh = zext i32 %i.ay to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bh, i64 noundef 4) #27
  br label %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit34.i

_ZSt4moveIPiS0_ET0_T_S2_S1_.exit34.i:             ; preds = %bb.e, %bb.f
  %i.bi = load i32, ptr %i.ax, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i9 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit34.i
  %i.bj = zext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.az, align 8, !tbaa !21
  %i.bl = load ptr, ptr %i.at, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %i.bj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 4 %i.bk, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit.i: ; preds = %bb.g, %_ZSt4moveIPiS0_ET0_T_S2_S1_.exit34.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !58
  br label %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i.sink.split

_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIiE12assignRemoteEOS1_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE18uninitialized_moveIPiS3_EEvT_S4_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !58
  br label %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i

_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i:       ; preds = %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bm = shl nuw i32 1, %.lcssa.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !242
  %i.bp = or i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !242
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !21 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i
  tail call void @free(ptr noundef %i.br) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIiLj4EEC2EOS1_.exit.i, %bb.h
  %i.bu = add i32 %.0.i16, -1
  %i.bv = and i32 %i.bu, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bv, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2145

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !2146

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !937
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bw = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !938
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !938
  %i.ca = icmp eq i32 %i.bw, 0
  br i1 %i.ca, label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.cb = load ptr, ptr %1, align 8, !tbaa !930
  %i.cc = zext i32 %i.bw to i64                   ; 2 uses
  %i.cd = mul nuw nsw i64 %i.cc, 40
  %i.ce = add nuw nsw i64 %i.cc, 31
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = and i64 %i.cf, 1073741820
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cb, i64 noundef %i.ch, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !937
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7PHINodeENS_11SmallVectorIiLj4EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !58
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !58
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !58
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm13ConstantRange14isUpperWrappedEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN4llvm6all_ofIRNS_11SmallVectorIPNS_4TypeELj6EEEZL20simplifySwitchLookupPNS_10SwitchInstERNS_9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_14DomTreeUpdaterERKNS_10DataLayoutERKNS_19TargetTransformInfoEbE3$_0EEbOT_T0_"(ptr nofree readonly captures(address) %.0.val, i32 %.8.val, ptr nofree nonnull readonly captures(none) %0, i64 %.0.val1) unnamed_addr #14 {
bb.a:
  %i.a = zext i32 %.8.val to i64                  ; 2 uses
  %.idx3 = shl nuw nsw i64 %i.a, 3                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx3 ; 3 uses
  %i.c = lshr i64 %i.a, 2                         ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val44.val.i.i.i.i = load ptr, ptr %i.d, align 8 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val44.val47.i.i.i.i = load i64, ptr %i.e, align 8
end_hunk_14
begin_hunk_15_@_ZN4llvm13IRBuilderBase17CreateZExtOrTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineE:bb.a
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #27, !inline_history !2149
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

bb.e:                                             ; preds = %bb.a
  %i.u = icmp ule i32 %i.c, %i.d
  %i.v = icmp eq ptr %i.b, %2
  %or.cond = or i1 %i.v, %i.u
  br i1 %or.cond, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !216, !nonnull !19, !align !205 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef 39, ptr noundef nonnull %1, ptr noundef nonnull %2) #27, !inline_history !2150 ; 2 uses
  %.not.not.i16 = icmp eq ptr %i.ab, null
  br i1 %.not.not.i16, label %bb.g, label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.ac, align 8
  %i.ad = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 39, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr null, i64 0) #27 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !214, !nonnull !19, !align !205 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i18 = load ptr, ptr %i.ag, align 8
  %.sroa.2.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i20 = load i64, ptr %.sroa.2.0..sroa_idx.i.i19, align 8
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i.i18, i64 %.sroa.2.0.copyload.i.i20) #27, !inline_history !2151
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.ad) #27
  br label %_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit

_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.e
  %.0 = phi ptr [ %1, %bb.e ], [ %i.m, %bb.d ], [ %i.l, %bb.c ], [ %1, %bb.b ], [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase10CreateLShrEPNS_5ValueES2_RKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216, !nonnull !19, !align !205 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 27, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %4) #27 ; 2 uses
  %.not.not = icmp eq ptr %i.f, null
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.g, align 8
  %i.h = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 27, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, i64 0) #27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !214, !nonnull !19, !align !205 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #27, !inline_history !986
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.o, align 8
  %i.p = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 27, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0) #27 ; 4 uses
  call void @_ZN4llvm11Instruction10setIsExactEb(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i1 noundef zeroext true) #27
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !214, !nonnull !19, !align !205 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i15 = load ptr, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i17 = load i64, ptr %.sroa.2.0..sroa_idx.i16, align 8
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i15, i64 %.sroa.2.0.copyload.i17) #27, !inline_history !986
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.p) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.1 = phi ptr [ %i.p, %bb.d ], [ %i.h, %bb.c ], [ %i.f, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = icmp eq ptr %i.b, %2
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !216, !nonnull !19, !align !205 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef 39, ptr noundef nonnull %1, ptr noundef %2) #27 ; 2 uses
  %.not.not = icmp eq ptr %i.i, null
  br i1 %.not.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.j, align 8
  %i.k = call noundef ptr @_ZN4llvm8CastInst6CreateENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(i32 noundef 39, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0) #27 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm11Instruction20setHasNoUnsignedWrapEb(ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext true) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm11Instruction18setHasNoSignedWrapEb(ptr noundef nonnull align 8 dereferenceable(72) %i.k, i1 noundef zeroext true) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !214, !nonnull !19, !align !205 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #27, !inline_history !660
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.k) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g
  %.1 = phi ptr [ %i.i, %bb.b ], [ %i.k, %bb.g ], [ %1, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 4   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !242  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.y) #27
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i5.i, -1
  %i.ac = and i32 %i.ab, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !2152

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !2153

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit.loopexit, %bb.a
  %i.ad = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.d, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17deallocateBucketsEv.exit

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit
  %i.af = load i32, ptr %i.c, align 8, !tbaa !110 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !110
  %i.aj = zext i32 %i.af to i64                   ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 88
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #27
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E10destroyAllEv.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E24lookupOrInsertIntoBucketIRKS3_JEEES5_IPSG_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !2154 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !2154 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !2154 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !2154
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !912    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !242
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !244

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !912
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_.exit, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !242
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !245, !llvm.loop !1786

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2159
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !2159
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 88                ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !242
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !242
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %i.bl = and i32 %i.bk, -2
  %i.bm = add i32 %i.bl, 2
  %i.bn = and i32 %i.bk, 1
  %i.bo = or disjoint i32 %i.bm, %i.bn
  store i32 %i.bo, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = load ptr, ptr %1, align 8, !tbaa !912
  store ptr %i.bp, ptr %i.aw, align 8, !tbaa !912
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i32 0, ptr %i.bs, align 8, !tbaa !58
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i32 4, ptr %i.bt, align 4, !tbaa !59
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E22findBucketForInsertionIS3_EEPSG_RKT_SK_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !2161
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !2161
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !2161
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !2161
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
end_hunk_15
begin_hunk_16_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E15LookupBucketForIS3_EEbRKT_RPSG_:bb.a
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !242
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !244

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !912
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !242
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !1786

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2159
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1172", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 360
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEEC2EjNS_12DenseMapBaseISG_S2_SA_SC_SF_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 88                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !110
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEEC2EjNS_12DenseMapBaseISG_S2_SA_SC_SF_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEEC2EjNS_12DenseMapBaseISG_S2_SA_SC_SF_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(368) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE13maybeMoveFastEOSG_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE13maybeMoveFastEOSG_.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE13maybeMoveFastEOSG_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEEC2EjNS_12DenseMapBaseISG_S2_SA_SC_SF_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2166
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE13maybeMoveFastEOSG_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEEC2EjNS_12DenseMapBaseISG_S2_SA_SC_SF_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE13maybeMoveFastEOSG_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE13maybeMoveFastEOSG_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 88               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !110
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 360
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(368) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE13maybeMoveFastEOSG_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E24initWithExactBucketCountEj.exit
  call void @_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(368) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i24 = icmp eq i64 %i.ab, 0
  br i1 %.not.i24, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !242 ; 2 uses
  %.not11.i22 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph27
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit
  %.0.i23 = phi i32 [ %i.ad, %.lr.ph ], [ %i.ch, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i23, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.ah ; 8 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !912 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !242
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.014.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !242
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2167

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %.lcssa12.i ; 6 uses
  store ptr %i.aj, ptr %i.bg, align 8, !tbaa !912
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 20 ; 2 uses
  store i32 4, ptr %i.bk, align 4, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !58 ; 5 uses
  %.not.i.i.i11 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i11, label %_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEC2EOS7_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.bo = icmp eq ptr %i.bg, %i.ai
  br i1 %i.bo, label %_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEC2EOS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !21 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.e, label %_ZN4llvm15SmallVectorImplISt4pairIPNS_11ConstantIntEPNS_8ConstantEEE12assignRemoteEOS7_.exit.i

_ZN4llvm15SmallVectorImplISt4pairIPNS_11ConstantIntEPNS_8ConstantEEE12assignRemoteEOS7_.exit.i: ; preds = %bb.d
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !21
  store i32 %i.bm, ptr %i.bj, align 8, !tbaa !58
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 20 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59
  store i32 %i.bt, ptr %i.bk, align 4, !tbaa !59
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !21
  store i32 0, ptr %i.bs, align 4, !tbaa !59
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEC2EOS7_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bu = zext i32 %i.bm to i64                   ; 2 uses
  %i.bv = icmp ugt i32 %i.bm, 4
  br i1 %i.bv, label %_ZSt4moveIPSt4pairIPN4llvm11ConstantIntEPNS1_8ConstantEES7_ET0_T_S9_S8_.exit39.i, label %_ZSt4moveIPSt4pairIPN4llvm11ConstantIntEPNS1_8ConstantEES7_ET0_T_S9_S8_.exit39.i.thread

_ZSt4moveIPSt4pairIPN4llvm11ConstantIntEPNS1_8ConstantEES7_ET0_T_S9_S8_.exit39.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.bh, ptr noundef nonnull %i.bi, i64 noundef %i.bu, i64 noundef 16) #27
  %.pre41.i = load i32, ptr %i.bl, align 8, !tbaa !58 ; 2 uses
  %.pre42.i = zext i32 %.pre41.i to i64
  %.not.i.i.i16 = icmp eq i32 %.pre41.i, 0
  br i1 %.not.i.i.i16, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntEPNS_8ConstantEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i, label %_ZSt4moveIPSt4pairIPN4llvm11ConstantIntEPNS1_8ConstantEES7_ET0_T_S9_S8_.exit39.i.thread

_ZSt4moveIPSt4pairIPN4llvm11ConstantIntEPNS1_8ConstantEES7_ET0_T_S9_S8_.exit39.i.thread: ; preds = %bb.e, %_ZSt4moveIPSt4pairIPN4llvm11ConstantIntEPNS1_8ConstantEES7_ET0_T_S9_S8_.exit39.i
  %.pre-phi.i43 = phi i64 [ %.pre42.i, %_ZSt4moveIPSt4pairIPN4llvm11ConstantIntEPNS1_8ConstantEES7_ET0_T_S9_S8_.exit39.i ], [ %i.bu, %bb.e ]
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !21
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %.pre-phi.i43, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 8 %i.bw, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntEPNS_8ConstantEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntEPNS_8ConstantEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i: ; preds = %_ZSt4moveIPSt4pairIPN4llvm11ConstantIntEPNS1_8ConstantEES7_ET0_T_S9_S8_.exit39.i.thread, %_ZSt4moveIPSt4pairIPN4llvm11ConstantIntEPNS1_8ConstantEES7_ET0_T_S9_S8_.exit39.i
  store i32 %i.bm, ptr %i.bj, align 8, !tbaa !58
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEC2EOS7_.exit.i.sink.split

_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEC2EOS7_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplISt4pairIPNS_11ConstantIntEPNS_8ConstantEEE12assignRemoteEOS7_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntEPNS_8ConstantEELb1EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  store i32 0, ptr %i.bl, align 8, !tbaa !58
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEC2EOS7_.exit.i

_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEC2EOS7_.exit.i: ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEC2EOS7_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.by = shl nuw i32 1, %.lcssa.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa11.i ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !242
  %i.cb = or i32 %i.ca, %i.by
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !242
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEC2EOS7_.exit.i
  tail call void @free(ptr noundef %i.cd) #27
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEC2EOS7_.exit.i, %bb.f
  %i.cg = add i32 %.0.i23, -1
  %i.ch = and i32 %i.cg, %.0.i23                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ch, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2168

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SB_EEEES3_SB_SD_SG_E8moveFromERSH_ENKUljE_clEj.exit, %.lr.ph27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph27, !llvm.loop !2169

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre31 = load i32, ptr %0, align 8
  %.pre32 = and i32 %.pre31, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre32, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.ci = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.cj = and i32 %i.ci, -2
  %i.ck = or disjoint i32 %.pre-phi, %i.cj
  store i32 %i.ck, ptr %0, align 8
  %i.cl = load i32, ptr %1, align 8               ; 3 uses
  %i.cm = and i32 %i.cl, 1
  %.not.i.i12 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i12, label %bb.g, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE4killEv.exit

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit
  %i.cn = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.cq = zext i32 %i.cn to i64                   ; 2 uses
  %i.cr = mul nuw nsw i64 %i.cq, 88
  %i.cs = add nuw nsw i64 %i.cq, 31
  %i.ct = lshr i64 %i.cs, 3
  %i.cu = and i64 %i.ct, 1073741820
  %i.cv = add nuw nsw i64 %i.cu, %i.cr
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cp, i64 noundef %i.cv, i64 noundef 8) #27
  %.pre.i13 = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SA_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, %bb.g, %bb.h
  %i.cw = phi i32 [ %i.cl, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeENS_11SmallVectorISt4pairIPNS_11ConstantIntEPNS_8ConstantEELj4EEELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SE_EEEES6_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit ], [ %i.cl, %bb.g ], [ %.pre.i13, %bb.h ]
  %i.cx = and i32 %i.cw, -2
  store i32 %i.cx, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_11ConstantIntEPNS_8ConstantEELb1EE15growAndPushBackES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !58
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !58
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
end_hunk_16
begin_hunk_17_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !2175

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2176
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1175", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !110
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2183
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !110
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !110 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #27
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !242 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !912 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !242 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !242 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2184

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa13.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !912
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1678
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !1678
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = or i32 %i.bl, %.lcssa11.i
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !242
  %i.bn = add i32 %.0.i20, -1
  %i.bo = and i32 %i.bn, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2185

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !2186

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #27
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEPNS_8ConstantELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo11isTypeLegalEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare void @_ZNK4llvm5APInt7smul_ovERKS0_Rb(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

declare void @_ZNK4llvm13ConstantRange9unionWithERKS0_NS0_18PreferredRangeTypeE(ptr dead_on_unwind writable sret(%"class.llvm::ConstantRange") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm13ConstantRangeC1ENS_5APIntE(ptr noundef nonnull align 8 dereferenceable(32), ptr nofree noundef align 8 dereferenceable(16)) unnamed_addr #4

declare noundef i32 @_ZNK4llvm19TargetTransformInfo34getMinimumLookupTableEntryBitWidthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm13ConstantRange13getActiveBitsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm27ConstantFoldCastInstructionEjPNS_8ConstantEPNS_4TypeE(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm9ArrayType3getEPNS_4TypeEm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm13ConstantArray3getEPNS_9ArrayTypeENS_8ArrayRefIPNS_8ConstantEEE(ptr noundef, ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.0.val, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !2187
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !2187
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !2187
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !2187
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = ptrtoint ptr %.0.val to i64
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 31
  %i.o = xor i64 %i.n, %i.m
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.k, %i.p                       ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !242
  %i.w = and i32 %i.q, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph, label %.thread, !prof !244

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.af, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %.05 = phi i32 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !912
  %i.ab = icmp eq ptr %.0.val, %i.aa
  br i1 %i.ab, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph
  %i.ac = add nuw i32 %.05, 1
  %i.ad = and i32 %i.ac, %i.k                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !242
  %i.aj = and i32 %i.ad, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !1958

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa9.sink = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ %i.af, %bb.c ], [ %i.z, %.lr.ph ]
  store ptr %.lcssa9.sink, ptr %1, align 8, !tbaa !1959
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1200", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 360
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 88                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !110
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(368) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2192
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 88               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !110
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !110
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 360
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(368) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !110 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = mul nuw nsw i64 %i.bm, 88
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #27
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(368) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val7 = load i32, ptr %i.j, align 8
  %i.k = select i1 %.not.i.i, i32 %.val7, i32 4
  %i.l = load i32, ptr %0, align 8
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i, ptr %i.s, ptr %i.r
  %i.u = getelementptr i8, ptr %0, i64 24
  %.val9 = load i32, ptr %i.u, align 8
  %i.v = add i32 %.val9, -1
  %i.w = select i1 %.not.i.i.i, i32 %i.v, i32 3   ; 2 uses
  %i.x = zext i32 %i.k to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %.not.i26 = icmp eq i64 %i.z, 0
  br i1 %.not.i26, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !242 ; 2 uses
  %.not11.i24 = icmp eq i32 %i.ab, 0
  br i1 %.not11.i24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph29
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ac = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i25 = phi i32 [ %i.ab, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i25, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !912 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.w, %i.am                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !242
  %i.as = and i32 %i.an, 31                       ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.an, %bb.b ]
  %i.av = add i32 %.014.i, 1
  %i.aw = and i32 %i.av, %i.w                     ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5                       ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !242
  %i.bb = and i32 %i.aw, 31                       ; 2 uses
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2193

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.as, %bb.b ], [ %i.bb, %.lr.ph.i ]
  %i.be = getelementptr inbounds nuw [88 x i8], ptr %i.t, i64 %.lcssa12.i ; 2 uses
  store ptr %i.ah, ptr %i.be, align 8, !tbaa !912
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull align 8 dereferenceable(80) %i.bg, i64 80, i1 false), !tbaa.struct !2194
  %i.bh = shl nuw i32 1, %.lcssa.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.lcssa11.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !242
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !242
  %i.bl = add i32 %.0.i25, -1
  %i.bm = and i32 %i.bl, %.0.i25                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2195

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph29, !llvm.loop !2196

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.val10.pre = load i32, ptr %1, align 8
  %.pre = load i32, ptr %0, align 8
  %.pre34 = and i32 %.pre, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre34, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.m, %bb.a ]
  %.val10 = phi i32 [ %.val10.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bn = and i32 %.val10, -2
  %i.bo = or disjoint i32 %.pre-phi, %i.bn
  store i32 %i.bo, ptr %0, align 8
  %i.bp = load i32, ptr %1, align 8               ; 3 uses
  %i.bq = and i32 %i.bp, 1
  %.not.i.i15 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i15, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.br = load i32, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.bu = zext i32 %i.br to i64                   ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 88
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #27
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ca = phi i32 [ %i.bp, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_7PHINodeEN12_GLOBAL__N_117SwitchReplacementELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit ], [ %i.bp, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cb = and i32 %i.ca, -2
  store i32 %i.cb, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN4llvm8ZExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr, i64) unnamed_addr #4

declare void @_ZN4llvm11Instruction9setNonNegEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction10setIsExactEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase9CreateMulEPNS_5ValueES2_RKNS_5TwineEbb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216, !nonnull !19, !align !205 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 18, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %4, i1 noundef zeroext %5) #27 ; 2 uses
  %.not.not = icmp eq ptr %i.f, null
  br i1 %.not.not, label %bb.b, label %_ZN4llvm13IRBuilderBase23CreateInsertNUWNSWBinOpENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineEbb.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.g, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !155
  %i.i = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 18, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0) #27 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !214, !nonnull !19, !align !205 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.l, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #27, !inline_history !2128
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm11Instruction20setHasNoUnsignedWrapEb(ptr noundef nonnull align 8 dereferenceable(72) %i.i, i1 noundef zeroext true) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %5, label %bb.e, label %_ZN4llvm13IRBuilderBase23CreateInsertNUWNSWBinOpENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineEbb.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm11Instruction18setHasNoSignedWrapEb(ptr noundef nonnull align 8 dereferenceable(72) %i.i, i1 noundef zeroext true) #27
  br label %_ZN4llvm13IRBuilderBase23CreateInsertNUWNSWBinOpENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineEbb.exit

_ZN4llvm13IRBuilderBase23CreateInsertNUWNSWBinOpENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineEbb.exit: ; preds = %bb.e, %bb.d, %bb.a
  %.1 = phi ptr [ %i.f, %bb.a ], [ %i.i, %bb.d ], [ %i.i, %bb.e ]
  ret ptr %.1
}

declare void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef, i32 noundef, i64, i1 noundef zeroext) unnamed_addr #4

declare i8 @_ZNK4llvm10DataLayout16getPrefTypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm10DataLayout12getIndexTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm12GlobalObject12setAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(60), i8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef byval(%"class.llvm::InsertPosition") align 8 %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %3 to i32
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 88, i32 %i.b) #27 ; 5 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %5, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.sroa.2.0.copyload = load i64, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 254
  %spec.select.i.i.i = icmp eq i32 %i.h, 18
  br i1 %spec.select.i.i.i, label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx.i.i = shl nuw nsw i64 %3, 3
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %.not29.i.i = icmp eq i64 %3, 0
  br i1 %.not29.i.i, label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.02230.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i, label %_ZN4llvm17GetElementPtrInstC2EPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE.exit, label %.lr.ph.i.i
end_hunk_17
begin_hunk_18_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !65

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2212
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !477
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !465
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !242
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !242
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2213
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !62
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !103
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !465, !noalias !2214 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !477, !noalias !2214 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !478, !noalias !2214 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !242
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !244

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !65

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !245, !llvm.loop !2211

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2212
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1368", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !478
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !465
  store ptr %i.y, ptr %i.q, align 8, !tbaa !477
  store i32 0, ptr %i.p, align 16, !tbaa !2213
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !88
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2212
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !88
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !88
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !242 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !242
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !242
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !242
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !242
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !465    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !477
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !478  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !477  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !465
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !478
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !242  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !242 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !242 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2219

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !103
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !103
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !242
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2220

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2221

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !478
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2213
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2213
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !478
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !2222, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !2222, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !18
  %i.j = load i8, ptr %i.d, align 8, !range !18
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !2223, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !2223, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIiE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !2224, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !2224, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE18growAndEmplaceBackIJRS2_EEES5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.a)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !58
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store ptr %i.a, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !58
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %i.b, align 8, !tbaa !58
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit

end_hunk_18
