Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/StackPromotion?download=true
inline.NumInlined: 1848
inline.NumDeleted: 843
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6hermes14StackPromotion11runOnModuleEPNS_6ModuleE:bb.a
  %i.arf = getelementptr inbounds nuw [32 x i8], ptr %i.aqx, i64 %i.are ; 3 uses
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !77 ; 2 uses
  %i.arh = icmp eq ptr %.sroa.0288.0443.i.i, %i.arg
  br i1 %i.arh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit121, label %.lr.ph.i.i111, !prof !20

.lr.ph.i.i111:                                    ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129.thread, %bb.dy
  %i.ari = phi ptr [ %i.ars, %bb.dy ], [ %i.arg, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129.thread ] ; 2 uses
  %i.arj = phi ptr [ %i.arr, %bb.dy ], [ %i.arf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129.thread ] ; 2 uses
  %.02747.i.i112 = phi i32 [ %.027.i.i117, %bb.dy ], [ %.02744.i.i110, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129.thread ]
  %.046.i.i113 = phi i32 [ %i.aro, %bb.dy ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129.thread ] ; 2 uses
  %.02945.i.i114 = phi ptr [ %spec.select.i.i116, %bb.dy ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129.thread ] ; 4 uses
  %i.ark = icmp eq ptr %i.ari, inttoptr (i64 -8 to ptr)
  br i1 %i.ark, label %bb.dx, label %bb.dy, !prof !21

bb.dx:                                            ; preds = %.lr.ph.i.i111
  %.not.i.i120 = icmp eq ptr %.02945.i.i114, null
  %i.arl = select i1 %.not.i.i120, ptr %i.arj, ptr %.02945.i.i114
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit121

bb.dy:                                            ; preds = %.lr.ph.i.i111
  %i.arm = icmp eq ptr %i.ari, inttoptr (i64 -16 to ptr)
  %i.arn = icmp eq ptr %.02945.i.i114, null
  %or.cond.not.i.i115 = select i1 %i.arm, i1 %i.arn, i1 false
  %spec.select.i.i116 = select i1 %or.cond.not.i.i115, ptr %i.arj, ptr %.02945.i.i114
  %i.aro = add i32 %.046.i.i113, 1
  %i.arp = add i32 %.046.i.i113, %.02747.i.i112
  %.027.i.i117 = and i32 %i.arp, %i.ard           ; 2 uses
  %i.arq = zext i32 %.027.i.i117 to i64
  %i.arr = getelementptr inbounds nuw [32 x i8], ptr %i.aqx, i64 %i.arq ; 3 uses
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !77 ; 2 uses
  %i.art = icmp eq ptr %.sroa.0288.0443.i.i, %i.ars
  br i1 %i.art, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit121, label %.lr.ph.i.i111, !prof !22, !llvm.loop !79

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit121: ; preds = %bb.dy, %bb.dw, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129.thread, %bb.dx
  %.sink.i.i118 = phi ptr [ %i.arl, %bb.dx ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129 ], [ %i.arf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit129.thread ], [ null, %bb.dw ], [ %i.arr, %bb.dy ]
  %.pre.i.i56 = load i32, ptr %i.k, align 8, !tbaa !80
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit121, %bb.dv
  %i.aru = phi ptr [ %.sink.i.i118, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit121 ], [ %.sink.i.i.i52, %bb.dv ] ; 4 uses
  %i.arv = phi i32 [ %.pre.i.i56, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit121 ], [ %i.apf, %bb.dv ]
  %i.arw = add i32 %i.arv, 1
  store i32 %i.arw, ptr %i.k, align 8, !tbaa !80
  %i.arx = load ptr, ptr %i.aru, align 8, !tbaa !77
  %i.ary = icmp eq ptr %i.arx, inttoptr (i64 -8 to ptr)
  br i1 %i.ary, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i58, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.arz = load i32, ptr %i.l, align 4, !tbaa !81
  %i.asa = add i32 %i.arz, -1
  store i32 %i.asa, ptr %i.l, align 4, !tbaa !81
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i58

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i58: ; preds = %bb.ea, %bb.dz
  store ptr %.sroa.0288.0443.i.i, ptr %i.aru, align 8, !tbaa !77
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asb, i8 0, i64 24, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit62

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit62: ; preds = %bb.dt, %bb.dr, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i58
  %.0.i49 = phi ptr [ %i.aru, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIS4_JEEEPSE_SI_OT_DpOT0_.exit.i58 ], [ %i.aoq, %bb.dr ], [ %i.apc, %bb.dt ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 20, i1 false)
  call void @_ZdlPv(ptr noundef null) #11
  %i.asc = getelementptr inbounds nuw i8, ptr %.0.i49, i64 24
  %i.asd = load i32, ptr %i.asc, align 8, !tbaa !119 ; 3 uses
  store i32 %i.asd, ptr %i.z, align 8, !tbaa !119
  %.not.i.i.i.i66.i.i = icmp eq i32 %i.asd, 0
  br i1 %.not.i.i.i.i66.i.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit62
  %i.ase = getelementptr inbounds nuw i8, ptr %.0.i49, i64 8
  %i.asf = zext i32 %i.asd to i64
  %i.asg = shl nuw nsw i64 %i.asf, 3
  %i.ash = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asg) #12 ; 2 uses
  store ptr %i.ash, ptr %16, align 8, !tbaa !102
  %i.asi = getelementptr inbounds nuw i8, ptr %.0.i49, i64 16 ; 2 uses
  %i.asj = load <2 x i32>, ptr %i.asi, align 8, !tbaa !3
  %i.ask = load i32, ptr %i.asi, align 8, !tbaa !118
  store <2 x i32> %i.asj, ptr %i.aa, align 8, !tbaa !3
  %i.asl = load ptr, ptr %i.ase, align 8, !tbaa !102
  %i.asm = load i32, ptr %i.z, align 8, !tbaa !119
  %i.asn = zext i32 %i.asm to i64
  %i.aso = shl nuw nsw i64 %i.asn, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ash, ptr align 8 %i.asl, i64 %i.aso, i1 false)
  br label %_ZN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEC2ERKS6_.exit.i.i

bb.ec:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 16, i1 false)
  br label %_ZN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEC2ERKS6_.exit.i.i

_ZN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEC2ERKS6_.exit.i.i: ; preds = %bb.ec, %bb.eb
  %i.asp = phi i32 [ %i.ask, %bb.eb ], [ 0, %bb.ec ]
  %i.asq = load ptr, ptr %i.anl, align 8, !tbaa !71, !noalias !171 ; 4 uses
  %i.asr = load i32, ptr %i.ann, align 8, !tbaa !72, !noalias !171 ; 2 uses
  %i.ass = zext i32 %i.asr to i64                 ; 2 uses
  %.idx.i.i.i67.i.i = shl nuw nsw i64 %i.ass, 3
  %i.ast = getelementptr i8, ptr %i.asq, i64 %.idx.i.i.i67.i.i ; 4 uses
  %.not3.i.i.i.i68.i.i = icmp eq i32 %i.asr, 0
  br i1 %.not3.i.i.i.i68.i.i, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i69.i.i

.lr.ph.i.i.i.i69.i.i:                             ; preds = %_ZN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEC2ERKS6_.exit.i.i, %bb.ed
  %.sroa.0.0.i.i70.i.i = phi ptr [ %i.asz, %bb.ed ], [ %i.asq, %_ZN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEC2ERKS6_.exit.i.i ] ; 3 uses
  %i.asu = load ptr, ptr %.sroa.0.0.i.i70.i.i, align 8, !tbaa !105, !noalias !171 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 16
  %i.asw = load i8, ptr %i.asv, align 8, !tbaa !89, !noalias !171
  %i.asx = add i8 %i.asw, -90
  %i.asy = icmp ult i8 %i.asx, -15
  %.not12.i.i.i.i71.i.i = icmp eq ptr %i.asu, null
  %.not1.i.i.i.i72.i.i = or i1 %.not12.i.i.i.i71.i.i, %i.asy
  br i1 %.not1.i.i.i.i72.i.i, label %bb.ed, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i.i

bb.ed:                                            ; preds = %.lr.ph.i.i.i.i69.i.i
  %i.asz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i70.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i74.i.i = icmp eq ptr %i.asz, %i.ast
  br i1 %.not.i.i.i.i74.i.i, label %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i.i, label %.lr.ph.i.i.i.i69.i.i, !llvm.loop !174

_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i.i: ; preds = %bb.ed, %.lr.ph.i.i.i.i69.i.i, %_ZN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEC2ERKS6_.exit.i.i
  %.sroa.0.1.i.i73.i.i = phi ptr [ %i.asq, %_ZN4llvh8DenseSetIPN6hermes8VariableENS_12DenseMapInfoIS3_EEEC2ERKS6_.exit.i.i ], [ %.sroa.0.0.i.i70.i.i, %.lr.ph.i.i.i.i69.i.i ], [ %i.ast, %bb.ed ] ; 2 uses
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.asq, i64 %i.ass ; 2 uses
  %.not312437.i.i = icmp eq ptr %.sroa.0.1.i.i73.i.i, %i.ata
  br i1 %.not312437.i.i, label %._crit_edge440.i.i, label %.lr.ph439.i.i

._crit_edge440.loopexit.i.i:                      ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i
  %.pre576.i.i = load i32, ptr %i.aa, align 8, !tbaa !118
  br label %._crit_edge440.i.i

._crit_edge440.i.i:                               ; preds = %._crit_edge440.loopexit.i.i, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i.i
  %i.atb = phi i32 [ %.pre576.i.i, %._crit_edge440.loopexit.i.i ], [ %i.asp, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i.i ]
  %.not54.i.i = icmp eq i32 %i.atb, 0
  br i1 %.not54.i.i, label %bb.fc, label %bb.ez

.lr.ph439.i.i:                                    ; preds = %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i
  %.sroa.0279.0438.i.i = phi ptr [ %.sroa.0279.2.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i ], [ %.sroa.0.1.i.i73.i.i, %_ZN6hermes12predecessorsEPNS_10BasicBlockE.exit.i.i ] ; 2 uses
  %i.atc = load ptr, ptr %.sroa.0279.0438.i.i, align 8, !tbaa !105
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 56
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !107 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  store ptr %i.ab, ptr %17, align 8, !tbaa !71
  store i32 0, ptr %i.ac, align 8, !tbaa !72
  store i32 4, ptr %i.ad, align 4, !tbaa !73
  %i.atf = load i32, ptr %i.aa, align 8, !tbaa !118
  %i.atg = icmp eq i32 %i.atf, 0
  %i.ath = load ptr, ptr %16, align 8, !tbaa !102 ; 5 uses
  %i.ati = load i32, ptr %i.z, align 8, !tbaa !119 ; 2 uses
  %i.atj = zext i32 %i.ati to i64                 ; 3 uses
  br i1 %i.atg, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.lr.ph439.i.i
  %i.atk = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.atj ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i

bb.ef:                                            ; preds = %.lr.ph439.i.i
  %.idx.i.i80.i.i = shl nuw nsw i64 %i.atj, 3
  %i.atl = getelementptr i8, ptr %i.ath, i64 %.idx.i.i80.i.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i.i = icmp eq i32 %i.ati, 0
  br i1 %.not5.i5.i10.i2.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i

.lr.ph.i6.i12.i3.i.i.i.i:                         ; preds = %bb.ef, %.critedge2.i8.i14.i6.i.i.i.i
  %.sroa.0.3.i4.i.i.i.i = phi ptr [ %i.atn, %.critedge2.i8.i14.i6.i.i.i.i ], [ %i.ath, %bb.ef ] ; 3 uses
  %i.atm = load ptr, ptr %.sroa.0.3.i4.i.i.i.i, align 8, !tbaa !120
  %magicptr.i7.i13.i5.i.i.i.i = ptrtoint ptr %i.atm to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i.i:                     ; preds = %.lr.ph.i6.i12.i3.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i
  %i.atn = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i.i = icmp eq ptr %i.atn, %i.atl
  br i1 %.not.i9.i15.i7.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i, label %.lr.ph.i6.i12.i3.i.i.i.i, !llvm.loop !121

_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i: ; preds = %.critedge2.i8.i14.i6.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i, %bb.ef, %bb.ee
  %.pn14.i.i.i.i = phi ptr [ %i.atk, %bb.ee ], [ %i.ath, %bb.ef ], [ %i.atl, %.critedge2.i8.i14.i6.i.i.i.i ], [ %.sroa.0.3.i4.i.i.i.i, %.lr.ph.i6.i12.i3.i.i.i.i ] ; 2 uses
  %.pn12.i.i.i.i = phi ptr [ %i.atk, %bb.ee ], [ %i.atl, %bb.ef ], [ %i.atl, %.lr.ph.i6.i12.i3.i.i.i.i ], [ %i.atl, %.critedge2.i8.i14.i6.i.i.i.i ] ; 2 uses
  %i.ato = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %i.atj ; 2 uses
  %.not313428.i.i = icmp eq ptr %.pn14.i.i.i.i, %i.ato
  br i1 %.not313428.i.i, label %_ZN4llvh11SmallVectorIPN6hermes8VariableELj4EED2Ev.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i
  %i.atp = ptrtoint ptr %i.ate to i64
  %i.atq = trunc i64 %i.atp to i32                ; 2 uses
  %i.atr = lshr i32 %i.atq, 4
  %i.ats = lshr i32 %i.atq, 9
  %i.att = xor i32 %i.atr, %i.ats                 ; 2 uses
  br label %bb.eg

._crit_edge.i.i:                                  ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i
  %.pre574.i.i.a = load ptr, ptr %17, align 8, !tbaa !71 ; 4 uses
  %.pre575.i.i = load i32, ptr %i.ac, align 8, !tbaa !72 ; 2 uses
  %i.atu = zext i32 %.pre575.i.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.atu, 3
  %i.atv = getelementptr inbounds nuw i8, ptr %.pre574.i.i.a, i64 %.idx.i.i
  %.not55431.i.i = icmp eq i32 %.pre575.i.i, 0
  br i1 %.not55431.i.i, label %._crit_edge435.split.i.i, label %.lr.ph434.i.i

.lr.ph434.i.i:                                    ; preds = %._crit_edge.i.i
  %i.atw = load ptr, ptr %16, align 8, !tbaa !102 ; 3 uses
  %i.atx = load i32, ptr %i.z, align 8, !tbaa !119 ; 2 uses
  %i.aty = icmp eq i32 %i.atx, 0
  %i.atz = add i32 %i.atx, -1                     ; 2 uses
  br i1 %i.aty, label %._crit_edge435.split.i.i, label %.lr.ph434.split.preheader.i.i

.lr.ph434.split.preheader.i.i:                    ; preds = %.lr.ph434.i.i
  %22 = load <2 x i32>, ptr %i.aa, align 8
  br label %.lr.ph434.split.i.i

bb.eg:                                            ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i, %.lr.ph.i.i
  %.sroa.0270.0429.i.i = phi ptr [ %.pn14.i.i.i.i, %.lr.ph.i.i ], [ %.sroa.0270.2.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i ] ; 2 uses
  %i.aua = load ptr, ptr %.sroa.0270.0429.i.i, align 8, !tbaa !120 ; 6 uses
  %i.aub = load ptr, ptr %12, align 8, !tbaa !102 ; 2 uses
  %i.auc = load i32, ptr %i.ae, align 8, !tbaa !119 ; 2 uses
  %i.aud = icmp eq i32 %i.auc, 0
  br i1 %i.aud, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aue = ptrtoint ptr %i.aua to i64
  %i.auf = trunc i64 %i.aue to i32                ; 2 uses
  %i.aug = lshr i32 %i.auf, 4
  %i.auh = lshr i32 %i.auf, 9
  %i.aui = xor i32 %i.aug, %i.auh                 ; 2 uses
  %i.auj = add i32 %i.auc, -1                     ; 2 uses
  %.02744.i.i.i81.i.i = and i32 %i.aui, %i.auj    ; 2 uses
  %i.auk = zext nneg i32 %.02744.i.i.i81.i.i to i64
  %i.aul = getelementptr inbounds nuw [8 x i8], ptr %i.aub, i64 %i.auk
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !120 ; 2 uses
  %i.aun = icmp eq ptr %i.aua, %i.aum
  br i1 %i.aun, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i, label %.lr.ph.i.i.i82.i.i, !prof !20

.lr.ph.i.i.i82.i.i:                               ; preds = %bb.eh, %bb.ei
  %i.auo = phi ptr [ %i.auu, %bb.ei ], [ %i.aum, %bb.eh ]
  %.02747.i.i.i83.i.i = phi i32 [ %.027.i.i.i85.i.i, %bb.ei ], [ %.02744.i.i.i81.i.i, %bb.eh ]
  %.046.i.i.i84.i.i = phi i32 [ %i.auq, %bb.ei ], [ 1, %bb.eh ] ; 2 uses
  %i.aup = icmp eq ptr %i.auo, inttoptr (i64 -8 to ptr)
  br i1 %i.aup, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.i.i, label %bb.ei, !prof !21

bb.ei:                                            ; preds = %.lr.ph.i.i.i82.i.i
  %i.auq = add i32 %.046.i.i.i84.i.i, 1
  %i.aur = add i32 %.046.i.i.i84.i.i, %.02747.i.i.i83.i.i
  %.027.i.i.i85.i.i = and i32 %i.aur, %i.auj      ; 2 uses
  %i.aus = zext i32 %.027.i.i.i85.i.i to i64
  %i.aut = getelementptr inbounds nuw [8 x i8], ptr %i.aub, i64 %i.aus
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !120 ; 2 uses
  %i.auv = icmp eq ptr %i.aua, %i.auu
  br i1 %i.auv, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i, label %.lr.ph.i.i.i82.i.i, !prof !22, !llvm.loop !175

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i: ; preds = %bb.ei, %bb.eh
  %i.auw = load ptr, ptr %9, align 8, !tbaa !82   ; 6 uses
  %i.aux = load i32, ptr %i.j, align 8, !tbaa !74 ; 8 uses
  %i.auy = icmp eq i32 %i.aux, 0
  br i1 %i.auy, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i127.i.i, label %bb.ej

bb.ej:                                            ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i
  %i.auz = add i32 %i.aux, -1                     ; 2 uses
  %.02744.i.i.i117.i.i = and i32 %i.auz, %i.att   ; 2 uses
  %i.ava = zext nneg i32 %.02744.i.i.i117.i.i to i64
  %i.avb = getelementptr inbounds nuw [32 x i8], ptr %i.auw, i64 %i.ava ; 3 uses
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !77 ; 2 uses
  %i.avd = icmp eq ptr %i.ate, %i.avc
  br i1 %i.avd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructERKS4_.exit.i.i, label %.lr.ph.i.i.i118.i.i, !prof !20

.lr.ph.i.i.i118.i.i:                              ; preds = %bb.ej, %bb.el
  %i.ave = phi ptr [ %i.avo, %bb.el ], [ %i.avc, %bb.ej ] ; 2 uses
  %i.avf = phi ptr [ %i.avn, %bb.el ], [ %i.avb, %bb.ej ] ; 2 uses
  %.02747.i.i.i119.i.i = phi i32 [ %.027.i.i.i124.i.i, %bb.el ], [ %.02744.i.i.i117.i.i, %bb.ej ]
  %.046.i.i.i120.i.i = phi i32 [ %i.avk, %bb.el ], [ 1, %bb.ej ] ; 2 uses
  %.02945.i.i.i121.i.i = phi ptr [ %spec.select.i.i.i123.i.i, %bb.el ], [ null, %bb.ej ] ; 4 uses
  %i.avg = icmp eq ptr %i.ave, inttoptr (i64 -8 to ptr)
  br i1 %i.avg, label %bb.ek, label %bb.el, !prof !21

bb.ek:                                            ; preds = %.lr.ph.i.i.i118.i.i
  %.not.i.i.i126.i.i = icmp eq ptr %.02945.i.i.i121.i.i, null
  %i.avh = select i1 %.not.i.i.i126.i.i, ptr %i.avf, ptr %.02945.i.i.i121.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i127.i.i

bb.el:                                            ; preds = %.lr.ph.i.i.i118.i.i
  %i.avi = icmp eq ptr %i.ave, inttoptr (i64 -16 to ptr)
  %i.avj = icmp eq ptr %.02945.i.i.i121.i.i, null
  %or.cond.not.i.i.i122.i.i = select i1 %i.avi, i1 %i.avj, i1 false
  %spec.select.i.i.i123.i.i = select i1 %or.cond.not.i.i.i122.i.i, ptr %i.avf, ptr %.02945.i.i.i121.i.i
  %i.avk = add i32 %.046.i.i.i120.i.i, 1
  %i.avl = add i32 %.046.i.i.i120.i.i, %.02747.i.i.i119.i.i
  %.027.i.i.i124.i.i = and i32 %i.avl, %i.auz     ; 2 uses
  %i.avm = zext i32 %.027.i.i.i124.i.i to i64
  %i.avn = getelementptr inbounds nuw [32 x i8], ptr %i.auw, i64 %i.avm ; 3 uses
  %i.avo = load ptr, ptr %i.avn, align 8, !tbaa !77 ; 2 uses
  %i.avp = icmp eq ptr %i.ate, %i.avo
  br i1 %i.avp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructERKS4_.exit.i.i, label %.lr.ph.i.i.i118.i.i, !prof !22, !llvm.loop !79

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i127.i.i: ; preds = %bb.ek, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.avh, %bb.ek ], [ null, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i ]
  %i.avq = load i32, ptr %i.k, align 8, !tbaa !80 ; 3 uses
  %i.avr = shl i32 %i.avq, 2
  %i.avs = add i32 %i.avr, 4
  %i.avt = mul i32 %i.aux, 3
  %.not.i.i4.i.i.i = icmp ult i32 %i.avs, %i.avt
  br i1 %.not.i.i4.i.i.i, label %bb.en, label %bb.em, !prof !21

bb.em:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i127.i.i
  %i.avu = shl i32 %i.aux, 1
  br label %.sink.split.i.i.i.i.i

bb.en:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i127.i.i
  %i.avv = load i32, ptr %i.l, align 4, !tbaa !81
  %.neg.i.i.i.i.i = xor i32 %i.avq, -1
  %.neg12.i.i.i.i.i = add i32 %i.aux, %.neg.i.i.i.i.i
  %i.avw = sub i32 %.neg12.i.i.i.i.i, %i.avv
  %i.avx = lshr i32 %i.aux, 3
  %.not10.i.i.i.i.i = icmp ugt i32 %i.avw, %i.avx
  br i1 %.not10.i.i.i.i.i, label %bb.er, label %.sink.split.i.i.i.i.i, !prof !21

.sink.split.i.i.i.i.i:                            ; preds = %bb.en, %bb.em
  %.sink.i.i5.i.i.i = phi i32 [ %i.avu, %bb.em ], [ %i.aux, %bb.en ]
  %i.avy = add i32 %.sink.i.i5.i.i.i, -1
  %i.avz = zext i32 %i.avy to i64                 ; 2 uses
  %i.awa = lshr i64 %i.avz, 1
  %i.awb = or i64 %i.awa, %i.avz                  ; 2 uses
  %i.awc = lshr i64 %i.awb, 2
  %i.awd = or i64 %i.awc, %i.awb                  ; 2 uses
  %i.awe = lshr i64 %i.awd, 4
  %i.awf = or i64 %i.awe, %i.awd                  ; 2 uses
  %i.awg = lshr i64 %i.awf, 8
  %i.awh = or i64 %i.awg, %i.awf                  ; 2 uses
  %i.awi = lshr i64 %i.awh, 16
  %i.awj = or i64 %i.awi, %i.awh
  %i.awk = trunc nuw i64 %i.awj to i32
  %i.awl = add i32 %i.awk, 1
  %.sroa.speculated.i.i195.i.i = call i32 @llvm.umax.i32(i32 %i.awl, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i.i195.i.i, ptr %i.j, align 8, !tbaa !74
  %i.awm = zext i32 %.sroa.speculated.i.i195.i.i to i64
  %i.awn = shl nuw nsw i64 %i.awm, 5
  %i.awo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awn) #12 ; 6 uses
  store ptr %i.awo, ptr %9, align 8, !tbaa !82
  %.not.i.i196.i.i = icmp eq ptr %i.auw, null
  br i1 %.not.i.i196.i.i, label %bb.eo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i.i

bb.eo:                                            ; preds = %.sink.split.i.i.i.i.i
  store i32 0, ptr %i.k, align 8, !tbaa !80
  store i32 0, ptr %i.l, align 4, !tbaa !81
  %i.awp = load i32, ptr %i.j, align 8, !tbaa !74 ; 4 uses
  %i.awq = zext i32 %i.awp to i64
  %.idx.i.i.i197.i.i = shl nuw nsw i64 %i.awq, 5  ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awo, i64 %.idx.i.i.i197.i.i
  %.not6.i.i.i198.i.i = icmp eq i32 %i.awp, 0
  br i1 %.not6.i.i.i198.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i, label %.lr.ph.i.i.i199.i.i.preheader

.lr.ph.i.i.i199.i.i.preheader:                    ; preds = %bb.eo
  %i.aws = add nsw i64 %.idx.i.i.i197.i.i, -32    ; 2 uses
  %i.awt = lshr exact i64 %i.aws, 5
  %i.awu = add nuw nsw i64 %i.awt, 1
  %xtraiter1223 = and i64 %i.awu, 7               ; 2 uses
  %lcmp.mod1224.not = icmp eq i64 %xtraiter1223, 0
  br i1 %lcmp.mod1224.not, label %.lr.ph.i.i.i199.i.i.prol.loopexit, label %.lr.ph.i.i.i199.i.i.prol

.lr.ph.i.i.i199.i.i.prol:                         ; preds = %.lr.ph.i.i.i199.i.i.preheader, %.lr.ph.i.i.i199.i.i.prol
  %.07.i.i.i200.i.i.prol = phi ptr [ %i.awv, %.lr.ph.i.i.i199.i.i.prol ], [ %i.awo, %.lr.ph.i.i.i199.i.i.preheader ] ; 2 uses
  %prol.iter1225 = phi i64 [ %prol.iter1225.next, %.lr.ph.i.i.i199.i.i.prol ], [ 0, %.lr.ph.i.i.i199.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i200.i.i.prol, align 8, !tbaa !77
  %i.awv = getelementptr inbounds nuw i8, ptr %.07.i.i.i200.i.i.prol, i64 32 ; 2 uses
  %prol.iter1225.next = add i64 %prol.iter1225, 1 ; 2 uses
  %prol.iter1225.cmp.not = icmp eq i64 %prol.iter1225.next, %xtraiter1223
  br i1 %prol.iter1225.cmp.not, label %.lr.ph.i.i.i199.i.i.prol.loopexit, label %.lr.ph.i.i.i199.i.i.prol, !llvm.loop !176

.lr.ph.i.i.i199.i.i.prol.loopexit:                ; preds = %.lr.ph.i.i.i199.i.i.prol, %.lr.ph.i.i.i199.i.i.preheader
  %.07.i.i.i200.i.i.unr = phi ptr [ %i.awo, %.lr.ph.i.i.i199.i.i.preheader ], [ %i.awv, %.lr.ph.i.i.i199.i.i.prol ]
  %i.aww = icmp ult i64 %i.aws, 224
  br i1 %i.aww, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i, label %.lr.ph.i.i.i199.i.i

.lr.ph.i.i.i199.i.i:                              ; preds = %.lr.ph.i.i.i199.i.i.prol.loopexit, %.lr.ph.i.i.i199.i.i
  %.07.i.i.i200.i.i = phi ptr [ %i.axe, %.lr.ph.i.i.i199.i.i ], [ %.07.i.i.i200.i.i.unr, %.lr.ph.i.i.i199.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i200.i.i, align 8, !tbaa !77
  %i.awx = getelementptr inbounds nuw i8, ptr %.07.i.i.i200.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.awx, align 8, !tbaa !77
  %i.awy = getelementptr inbounds nuw i8, ptr %.07.i.i.i200.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.awy, align 8, !tbaa !77
  %i.awz = getelementptr inbounds nuw i8, ptr %.07.i.i.i200.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.awz, align 8, !tbaa !77
  %i.axa = getelementptr inbounds nuw i8, ptr %.07.i.i.i200.i.i, i64 128
  store ptr inttoptr (i64 -8 to ptr), ptr %i.axa, align 8, !tbaa !77
  %i.axb = getelementptr inbounds nuw i8, ptr %.07.i.i.i200.i.i, i64 160
  store ptr inttoptr (i64 -8 to ptr), ptr %i.axb, align 8, !tbaa !77
  %i.axc = getelementptr inbounds nuw i8, ptr %.07.i.i.i200.i.i, i64 192
  store ptr inttoptr (i64 -8 to ptr), ptr %i.axc, align 8, !tbaa !77
  %i.axd = getelementptr inbounds nuw i8, ptr %.07.i.i.i200.i.i, i64 224
  store ptr inttoptr (i64 -8 to ptr), ptr %i.axd, align 8, !tbaa !77
  %i.axe = getelementptr inbounds nuw i8, ptr %.07.i.i.i200.i.i, i64 256 ; 2 uses
  %.not.i.i.i201.i.i.7 = icmp eq ptr %i.axe, %i.awr
  br i1 %.not.i.i.i201.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i, label %.lr.ph.i.i.i199.i.i, !llvm.loop !85

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i.i: ; preds = %.sink.split.i.i.i.i.i
  %i.axf = zext i32 %i.aux to i64
  %i.axg = getelementptr inbounds nuw [32 x i8], ptr %i.auw, i64 %i.axf
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E18moveFromOldBucketsEPSE_SH_(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull %i.auw, ptr noundef nonnull %i.axg)
  call void @_ZdlPv(ptr noundef nonnull %i.auw) #11
  %.pr.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !74 ; 2 uses
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !82
  %i.axh = icmp eq i32 %.pr.pre.i.i, 0
  br i1 %i.axh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i: ; preds = %.lr.ph.i.i.i199.i.i.prol.loopexit, %.lr.ph.i.i.i199.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i.i
  %.pr803.i.i = phi i32 [ %.pr.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i.i ], [ %i.awp, %.lr.ph.i.i.i199.i.i ], [ %i.awp, %.lr.ph.i.i.i199.i.i.prol.loopexit ]
  %i.axi = phi ptr [ %.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i.i ], [ %i.awo, %.lr.ph.i.i.i199.i.i ], [ %i.awo, %.lr.ph.i.i.i199.i.i.prol.loopexit ] ; 2 uses
  %i.axj = add i32 %.pr803.i.i, -1                ; 2 uses
  %.02744.i.i.i.i21 = and i32 %i.axj, %i.att      ; 2 uses
  %i.axk = zext nneg i32 %.02744.i.i.i.i21 to i64
  %i.axl = getelementptr inbounds nuw [32 x i8], ptr %i.axi, i64 %i.axk ; 3 uses
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !77 ; 2 uses
  %i.axn = icmp eq ptr %i.ate, %i.axm
  br i1 %i.axn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i, label %.lr.ph.i.i192.i.i, !prof !20

.lr.ph.i.i192.i.i:                                ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i, %bb.eq
  %i.axo = phi ptr [ %i.axy, %bb.eq ], [ %i.axm, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i ] ; 2 uses
  %i.axp = phi ptr [ %i.axx, %bb.eq ], [ %i.axl, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i ] ; 2 uses
  %.02747.i.i.i.i22 = phi i32 [ %.027.i.i.i.i24, %bb.eq ], [ %.02744.i.i.i.i21, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i ]
  %.046.i.i.i.i23 = phi i32 [ %i.axu, %bb.eq ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i ] ; 2 uses
  %.02945.i.i.i.i = phi ptr [ %spec.select.i.i193.i.i, %bb.eq ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i ] ; 4 uses
  %i.axq = icmp eq ptr %i.axo, inttoptr (i64 -8 to ptr)
  br i1 %i.axq, label %bb.ep, label %bb.eq, !prof !21

bb.ep:                                            ; preds = %.lr.ph.i.i192.i.i
  %.not.i.i194.i.i = icmp eq ptr %.02945.i.i.i.i, null
  %i.axr = select i1 %.not.i.i194.i.i, ptr %i.axp, ptr %.02945.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i

bb.eq:                                            ; preds = %.lr.ph.i.i192.i.i
  %i.axs = icmp eq ptr %i.axo, inttoptr (i64 -16 to ptr)
  %i.axt = icmp eq ptr %.02945.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.axs, i1 %i.axt, i1 false
  %spec.select.i.i193.i.i = select i1 %or.cond.not.i.i.i.i, ptr %i.axp, ptr %.02945.i.i.i.i
  %i.axu = add i32 %.046.i.i.i.i23, 1
  %i.axv = add i32 %.046.i.i.i.i23, %.02747.i.i.i.i22
  %.027.i.i.i.i24 = and i32 %i.axv, %i.axj        ; 2 uses
  %i.axw = zext i32 %.027.i.i.i.i24 to i64
  %i.axx = getelementptr inbounds nuw [32 x i8], ptr %i.axi, i64 %i.axw ; 3 uses
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !77 ; 2 uses
  %i.axz = icmp eq ptr %i.ate, %i.axy
  br i1 %i.axz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i, label %.lr.ph.i.i192.i.i, !prof !22, !llvm.loop !79

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i: ; preds = %bb.eq, %bb.ep, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i.i, %bb.eo
  %.sink.i.i.i.i = phi ptr [ %i.axr, %bb.ep ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.i.i ], [ %i.axl, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread.i.i ], [ null, %bb.eo ], [ %i.axx, %bb.eq ]
  %.pre.i.i128.i.i = load i32, ptr %i.k, align 8, !tbaa !80
  br label %bb.er

bb.er:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i, %bb.en
  %i.aya = phi ptr [ %.sink.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i ], [ %.sink.i.i.i.i.i, %bb.en ] ; 4 uses
  %i.ayb = phi i32 [ %.pre.i.i128.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i.i ], [ %i.avq, %bb.en ]
  %i.ayc = add i32 %i.ayb, 1
  store i32 %i.ayc, ptr %i.k, align 8, !tbaa !80
  %i.ayd = load ptr, ptr %i.aya, align 8, !tbaa !77
  %i.aye = icmp eq ptr %i.ayd, inttoptr (i64 -8 to ptr)
  br i1 %i.aye, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIRKS4_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ayf = load i32, ptr %i.l, align 4, !tbaa !81
  %i.ayg = add i32 %i.ayf, -1
  store i32 %i.ayg, ptr %i.l, align 4, !tbaa !81
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIRKS4_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIRKS4_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i: ; preds = %bb.es, %bb.er
  store ptr %i.ate, ptr %i.aya, align 8, !tbaa !77
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.aya, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ayh, i8 0, i64 24, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructERKS4_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructERKS4_.exit.i.i: ; preds = %bb.el, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIRKS4_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i, %bb.ej
  %.0.i.i.i = phi ptr [ %i.aya, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16InsertIntoBucketIRKS4_JEEEPSE_SK_OT_DpOT0_.exit.i.i.i ], [ %i.avb, %bb.ej ], [ %i.avn, %bb.el ] ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ayj = load ptr, ptr %i.ayi, align 8, !tbaa !102 ; 2 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ayl = load i32, ptr %i.ayk, align 8, !tbaa !119 ; 2 uses
  %i.aym = icmp eq i32 %i.ayl, 0
  br i1 %i.aym, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.thread.i.i, label %bb.et

bb.et:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructERKS4_.exit.i.i
  %i.ayn = add i32 %i.ayl, -1                     ; 2 uses
  %.02744.i.i.i86.i.i = and i32 %i.ayn, %i.aui    ; 2 uses
  %i.ayo = zext nneg i32 %.02744.i.i.i86.i.i to i64
  %i.ayp = getelementptr inbounds nuw [8 x i8], ptr %i.ayj, i64 %i.ayo
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !120 ; 2 uses
  %i.ayr = icmp eq ptr %i.aua, %i.ayq
  br i1 %i.ayr, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.i.i, label %.lr.ph.i.i.i87.i.i, !prof !20

.lr.ph.i.i.i87.i.i:                               ; preds = %bb.et, %bb.eu
  %i.ays = phi ptr [ %i.ayy, %bb.eu ], [ %i.ayq, %bb.et ]
  %.02747.i.i.i88.i.i = phi i32 [ %.027.i.i.i90.i.i, %bb.eu ], [ %.02744.i.i.i86.i.i, %bb.et ]
  %.046.i.i.i89.i.i = phi i32 [ %i.ayu, %bb.eu ], [ 1, %bb.et ] ; 2 uses
  %i.ayt = icmp eq ptr %i.ays, inttoptr (i64 -8 to ptr)
  br i1 %i.ayt, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.thread.i.i, label %bb.eu, !prof !21

bb.eu:                                            ; preds = %.lr.ph.i.i.i87.i.i
  %i.ayu = add i32 %.046.i.i.i89.i.i, 1
  %i.ayv = add i32 %.046.i.i.i89.i.i, %.02747.i.i.i88.i.i
  %.027.i.i.i90.i.i = and i32 %i.ayv, %i.ayn      ; 2 uses
  %i.ayw = zext i32 %.027.i.i.i90.i.i to i64
  %i.ayx = getelementptr inbounds nuw [8 x i8], ptr %i.ayj, i64 %i.ayw
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !120 ; 2 uses
  %i.ayz = icmp eq ptr %i.aua, %i.ayy
  br i1 %i.ayz, label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.i.i, label %.lr.ph.i.i.i87.i.i, !prof !22, !llvm.loop !175

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.i.i: ; preds = %.lr.ph.i.i.i82.i.i, %bb.eu, %bb.et, %bb.eg
  %i.aza = load i32, ptr %i.ac, align 8, !tbaa !72 ; 2 uses
  %i.azb = load i32, ptr %i.ad, align 4, !tbaa !73
  %.not.i93.i.i = icmp ult i32 %i.aza, %i.azb
  br i1 %.not.i93.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EE9push_backERKS3_.exit.i.i, label %bb.ev, !prof !21

bb.ev:                                            ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull %i.ab, i64 noundef 0, i64 noundef 8) #11
  %.pre.i94.i.i = load i32, ptr %i.ac, align 8, !tbaa !72
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EE9push_backERKS3_.exit.i.i

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EE9push_backERKS3_.exit.i.i: ; preds = %bb.ev, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.i.i
  %i.azc = phi i32 [ %.pre.i94.i.i, %bb.ev ], [ %i.aza, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.i.i ]
  %i.azd = load ptr, ptr %17, align 8, !tbaa !71
  %i.aze = zext i32 %i.azc to i64
  %i.azf = getelementptr inbounds nuw [8 x i8], ptr %i.azd, i64 %i.aze
  %i.azg = ptrtoint ptr %i.aua to i64
  store i64 %i.azg, ptr %i.azf, align 1
  %i.azh = load i32, ptr %i.ac, align 8, !tbaa !72
  %i.azi = add i32 %i.azh, 1
  store i32 %i.azi, ptr %i.ac, align 8, !tbaa !72
  br label %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.thread.i.i

_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.thread.i.i: ; preds = %.lr.ph.i.i.i87.i.i, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EE9push_backERKS3_.exit.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructERKS4_.exit.i.i
  %i.azj = getelementptr inbounds nuw i8, ptr %.sroa.0270.0429.i.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i.i = icmp eq ptr %i.azj, %.pn12.i.i.i.i
  br i1 %.not5.i3.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i, label %.lr.ph.i4.i.i.i.i

.lr.ph.i4.i.i.i.i:                                ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.thread.i.i, %.critedge2.i6.i.i.i.i
  %.sroa.0270.1.i.i = phi ptr [ %i.azl, %.critedge2.i6.i.i.i.i ], [ %i.azj, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.thread.i.i ] ; 3 uses
  %i.azk = load ptr, ptr %.sroa.0270.1.i.i, align 8, !tbaa !120
  %magicptr.i5.i.i.i.i = ptrtoint ptr %i.azk to i64
  switch i64 %magicptr.i5.i.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i [
    i64 -8, label %.critedge2.i6.i.i.i.i
    i64 -16, label %.critedge2.i6.i.i.i.i
  ]

.critedge2.i6.i.i.i.i:                            ; preds = %.lr.ph.i4.i.i.i.i, %.lr.ph.i4.i.i.i.i
  %i.azl = getelementptr inbounds nuw i8, ptr %.sroa.0270.1.i.i, i64 8 ; 3 uses
  %.not.i7.i.i95.i.i = icmp eq ptr %i.azl, %.pn12.i.i.i.i
  br i1 %.not.i7.i.i95.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i, label %.lr.ph.i4.i.i.i.i, !llvm.loop !121

_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i.i: ; preds = %.critedge2.i6.i.i.i.i, %.lr.ph.i4.i.i.i.i, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.thread.i.i
  %.sroa.0270.2.i.i = phi ptr [ %i.azj, %_ZNK4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit92.thread.i.i ], [ %i.azl, %.critedge2.i6.i.i.i.i ], [ %.sroa.0270.1.i.i, %.lr.ph.i4.i.i.i.i ] ; 2 uses
  %.not313.i.i = icmp eq ptr %.sroa.0270.2.i.i, %i.ato
  br i1 %.not313.i.i, label %._crit_edge.i.i, label %bb.eg

._crit_edge435.split.i.i:                         ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i, %.lr.ph434.i.i, %._crit_edge.i.i
  %i.azm = icmp eq ptr %.pre574.i.i.a, %i.ab
  br i1 %i.azm, label %_ZN4llvh11SmallVectorIPN6hermes8VariableELj4EED2Ev.exit.i.i, label %bb.ew

bb.ew:                                            ; preds = %._crit_edge435.split.i.i
  call void @free(ptr noundef %.pre574.i.i.a) #11
  br label %_ZN4llvh11SmallVectorIPN6hermes8VariableELj4EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIPN6hermes8VariableELj4EED2Ev.exit.i.i: ; preds = %bb.ew, %._crit_edge435.split.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  %i.azn = getelementptr inbounds nuw i8, ptr %.sroa.0279.0438.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i = icmp eq ptr %i.azn, %i.ast
  br i1 %.not3.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i, label %.lr.ph.i.i96.i.i

.lr.ph.i.i96.i.i:                                 ; preds = %_ZN4llvh11SmallVectorIPN6hermes8VariableELj4EED2Ev.exit.i.i, %bb.ex
  %.sroa.0279.1.i.i = phi ptr [ %i.azt, %bb.ex ], [ %i.azn, %_ZN4llvh11SmallVectorIPN6hermes8VariableELj4EED2Ev.exit.i.i ] ; 3 uses
  %i.azo = load ptr, ptr %.sroa.0279.1.i.i, align 8, !tbaa !105 ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 16
  %i.azq = load i8, ptr %i.azp, align 8, !tbaa !89
  %i.azr = add i8 %i.azq, -90
  %i.azs = icmp ult i8 %i.azr, -15
  %.not12.i.i.i.i = icmp eq ptr %i.azo, null
  %.not1.i.i.i.i = or i1 %.not12.i.i.i.i, %i.azs
  br i1 %.not1.i.i.i.i, label %bb.ex, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i

bb.ex:                                            ; preds = %.lr.ph.i.i96.i.i
  %i.azt = getelementptr inbounds nuw i8, ptr %.sroa.0279.1.i.i, i64 8 ; 3 uses
  %.not.i.i97.i.i = icmp eq ptr %i.azt, %i.ast
  br i1 %.not.i.i97.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i, label %.lr.ph.i.i96.i.i, !llvm.loop !174

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i: ; preds = %bb.ex, %.lr.ph.i.i96.i.i, %_ZN4llvh11SmallVectorIPN6hermes8VariableELj4EED2Ev.exit.i.i
  %.sroa.0279.2.i.i = phi ptr [ %i.azn, %_ZN4llvh11SmallVectorIPN6hermes8VariableELj4EED2Ev.exit.i.i ], [ %.sroa.0279.1.i.i, %.lr.ph.i.i96.i.i ], [ %i.azt, %bb.ex ] ; 2 uses
  %.not312.i.i = icmp eq ptr %.sroa.0279.2.i.i, %i.ata
  br i1 %.not312.i.i, label %._crit_edge440.loopexit.i.i, label %.lr.ph439.i.i

.lr.ph434.split.i.i:                              ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i, %.lr.ph434.split.preheader.i.i
  %.051432.i.i = phi ptr [ %i.bao, %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i ], [ %.pre574.i.i.a, %.lr.ph434.split.preheader.i.i ] ; 2 uses
  %23 = phi <2 x i32> [ %24, %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i ], [ %22, %.lr.ph434.split.preheader.i.i ] ; 2 uses
  %i.azu = load ptr, ptr %.051432.i.i, align 8, !tbaa !120 ; 3 uses
  %i.azv = ptrtoint ptr %i.azu to i64
  %i.azw = trunc i64 %i.azv to i32                ; 2 uses
  %i.azx = lshr i32 %i.azw, 4
  %i.azy = lshr i32 %i.azw, 9
  %i.azz = xor i32 %i.azx, %i.azy
  %.02744.i.i.i.i98.i.i = and i32 %i.azz, %i.atz  ; 2 uses
  %i.baa = zext nneg i32 %.02744.i.i.i.i98.i.i to i64
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.baa ; 2 uses
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !120 ; 2 uses
  %i.bad = icmp eq ptr %i.azu, %i.bac
  br i1 %i.bad, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i99.i.i, !prof !20

.lr.ph.i.i.i.i99.i.i:                             ; preds = %.lr.ph434.split.i.i, %bb.ey
  %i.bae = phi ptr [ %i.bak, %bb.ey ], [ %i.bac, %.lr.ph434.split.i.i ]
  %.02747.i.i.i.i100.i.i = phi i32 [ %.027.i.i.i.i102.i.i, %bb.ey ], [ %.02744.i.i.i.i98.i.i, %.lr.ph434.split.i.i ]
  %.046.i.i.i.i101.i.i = phi i32 [ %i.bag, %bb.ey ], [ 1, %.lr.ph434.split.i.i ] ; 2 uses
  %i.baf = icmp eq ptr %i.bae, inttoptr (i64 -8 to ptr)
  br i1 %i.baf, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i, label %bb.ey, !prof !21

bb.ey:                                            ; preds = %.lr.ph.i.i.i.i99.i.i
  %i.bag = add i32 %.046.i.i.i.i101.i.i, 1
  %i.bah = add i32 %.046.i.i.i.i101.i.i, %.02747.i.i.i.i100.i.i
  %.027.i.i.i.i102.i.i = and i32 %i.bah, %i.atz   ; 2 uses
  %i.bai = zext i32 %.027.i.i.i.i102.i.i to i64   ; 2 uses
  %i.baj = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.bai
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !120 ; 2 uses
  %i.bal = icmp eq ptr %i.azu, %i.bak
  br i1 %i.bal, label %.loopexit.i.i.i.i.loopexit, label %.lr.ph.i.i.i.i99.i.i, !prof !22, !llvm.loop !127

.loopexit.i.i.i.i.loopexit:                       ; preds = %bb.ey
  %i.bam = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.bai
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.loopexit, %.lr.ph434.split.i.i
  %.sink.i.i.ph.i.i.i.i = phi ptr [ %i.bab, %.lr.ph434.split.i.i ], [ %i.bam, %.loopexit.i.i.i.i.loopexit ]
  store ptr inttoptr (i64 -16 to ptr), ptr %.sink.i.i.ph.i.i.i.i, align 8, !tbaa !120
  %i.ban = add <2 x i32> %23, <i32 -1, i32 1>     ; 2 uses
  store <2 x i32> %i.ban, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i

_ZN4llvh6detail12DenseSetImplIPN6hermes8VariableENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5eraseERKS4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i99.i.i, %.loopexit.i.i.i.i
  %24 = phi <2 x i32> [ %i.ban, %.loopexit.i.i.i.i ], [ %23, %.lr.ph.i.i.i.i99.i.i ]
  %i.bao = getelementptr inbounds nuw i8, ptr %.051432.i.i, i64 8 ; 2 uses
  %.not55.i.i = icmp eq ptr %i.bao, %i.atv
  br i1 %.not55.i.i, label %._crit_edge435.split.i.i, label %.lr.ph434.split.i.i

bb.ez:                                            ; preds = %._crit_edge440.i.i
  %i.bap = getelementptr inbounds nuw i8, ptr %.sroa.0288.0443.i.i, i64 64
  br label %bb.fa

bb.fa:                                            ; preds = %.critedge.i.i, %bb.ez
  %.sroa.0262.0.in.i.i = phi ptr [ %i.bap, %bb.ez ], [ %i.bas, %.critedge.i.i ]
  %.sroa.0262.0.i.i = load ptr, ptr %.sroa.0262.0.in.i.i, align 8, !tbaa !7 ; 3 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %.sroa.0262.0.i.i, i64 16
  %i.bar = load i8, ptr %i.baq, align 8, !tbaa !89
  switch i8 %i.bar, label %bb.fb [
    i8 60, label %.critedge.i.i
    i8 56, label %.critedge.i.i
    i8 33, label %.critedge.i.i
  ]

.critedge.i.i:                                    ; preds = %bb.fa, %bb.fa, %bb.fa
  %i.bas = getelementptr inbounds nuw i8, ptr %.sroa.0262.0.i.i, i64 8
  br label %bb.fa, !llvm.loop !177

bb.fb:                                            ; preds = %bb.fa
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull %.sroa.0262.0.i.i) #11
  %i.bat = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %16, ptr %3, align 8
  store ptr %13, ptr %.sroa.2256.0..sroa_idx.i.i, align 8
  store ptr %14, ptr %.sroa.3257.0..sroa_idx.i.i, align 8
  store ptr %11, ptr %.sroa.4258.0..sroa_idx.i.i, align 8
  store ptr %15, ptr %.sroa.5259.0..sroa_idx.i.i, align 8
  store ptr %.sroa.0288.0443.i.i, ptr %.sroa.6260.0..sroa_idx.i.i, align 8
  store ptr %i.b, ptr %.sroa.7261.0..sroa_idx.i.i, align 8
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 72
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !25
  call fastcc void @"_ZN6hermes8Function16forEachScopeImplIZN12_GLOBAL__N_116promoteVariablesEPS0_RN4llvh9SetVectorIS3_St6vectorIS3_SaIS3_EENS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_EEEEEEE3$_3EEvS3_PNS_9ScopeDescET_"(ptr noundef nonnull readonly align 8 dereferenceable(304) %i.bat, ptr noundef %i.bav, ptr noundef nonnull byval(%class.anon.148) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %._crit_edge440.i.i
  %i.baw = load ptr, ptr %16, align 8, !tbaa !102
  call void @_ZdlPv(ptr noundef %i.baw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.thread.i.i

_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.thread.i.i: ; preds = %bb.fc, %_ZN6hermes10pred_countEPKNS_10BasicBlockE.exit.i.i, %_ZN6hermes10pred_beginEPKNS_10BasicBlockE.exit.i.i.i
  %i.bax = getelementptr inbounds nuw i8, ptr %.sroa.0288.0443.i.i, i64 8
  %.sroa.0288.0.i.i = load ptr, ptr %i.bax, align 8, !tbaa !7 ; 2 uses
  %.not310.i.i = icmp eq ptr %.sroa.0288.0.i.i, %i.anh
  br i1 %.not310.i.i, label %._crit_edge446.loopexit.i.i, label %.lr.ph445.i.i

._crit_edge456.i.i:                               ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i
  %.pre580.i.i.a = load ptr, ptr %18, align 8, !tbaa !71 ; 3 uses
  %.pre581.i.i.a = load i32, ptr %i.ag, align 8, !tbaa !72 ; 2 uses
  %i.bay = zext i32 %.pre581.i.i.a to i64
  %.idx467.i.i.a = mul nuw nsw i64 %i.bay, 48
  %i.baz = getelementptr inbounds nuw i8, ptr %.pre580.i.i.a, i64 %.idx467.i.i.a
  %.not462.i.i = icmp eq i32 %.pre581.i.i.a, 0
  br i1 %.not462.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN12_GLOBAL__N_110StorePointELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i, label %.lr.ph465.i.i

.lr.ph455.i.i:                                    ; preds = %._crit_edge446.i.i, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i
  %.sroa.0252.0453.i.i = phi ptr [ %.sroa.0252.0.i.i, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit.i.i ], [ %.sroa.0252.0451.i.i, %._crit_edge446.i.i ] ; 10 uses
  %i.bba = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0252.0453.i.i) #11 ; 2 uses
  %i.bbb = load ptr, ptr %9, align 8, !tbaa !82   ; 6 uses
  %i.bbc = load i32, ptr %i.j, align 8, !tbaa !74 ; 8 uses
  %i.bbd = icmp eq i32 %i.bbc, 0
  br i1 %i.bbd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph455.i.i
  %i.bbe = ptrtoint ptr %.sroa.0252.0453.i.i to i64
  %i.bbf = trunc i64 %i.bbe to i32                ; 2 uses
  %i.bbg = lshr i32 %i.bbf, 4
  %i.bbh = lshr i32 %i.bbf, 9
  %i.bbi = xor i32 %i.bbg, %i.bbh
  %i.bbj = add i32 %i.bbc, -1                     ; 2 uses
  %.02744.i.i.i = and i32 %i.bbi, %i.bbj          ; 2 uses
  %i.bbk = zext nneg i32 %.02744.i.i.i to i64
  %i.bbl = getelementptr inbounds nuw [32 x i8], ptr %i.bbb, i64 %i.bbk ; 3 uses
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !77 ; 2 uses
  %i.bbn = icmp eq ptr %.sroa.0252.0453.i.i, %i.bbm
  br i1 %i.bbn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit, label %.lr.ph.i.i.i38, !prof !20

.lr.ph.i.i.i38:                                   ; preds = %bb.fd, %bb.ff
  %i.bbo = phi ptr [ %i.bby, %bb.ff ], [ %i.bbm, %bb.fd ] ; 2 uses
  %i.bbp = phi ptr [ %i.bbx, %bb.ff ], [ %i.bbl, %bb.fd ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.ff ], [ %.02744.i.i.i, %bb.fd ]
  %.046.i.i.i = phi i32 [ %i.bbu, %bb.ff ], [ 1, %bb.fd ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.ff ], [ null, %bb.fd ] ; 4 uses
  %i.bbq = icmp eq ptr %i.bbo, inttoptr (i64 -8 to ptr)
  br i1 %i.bbq, label %bb.fe, label %bb.ff, !prof !21

bb.fe:                                            ; preds = %.lr.ph.i.i.i38
  %.not.i.i.i39 = icmp eq ptr %.02945.i.i.i, null
  %i.bbr = select i1 %.not.i.i.i39, ptr %i.bbp, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i

bb.ff:                                            ; preds = %.lr.ph.i.i.i38
  %i.bbs = icmp eq ptr %i.bbo, inttoptr (i64 -16 to ptr)
  %i.bbt = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bbs, i1 %i.bbt, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bbp, ptr %.02945.i.i.i
  %i.bbu = add i32 %.046.i.i.i, 1
  %i.bbv = add i32 %.046.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.bbv, %i.bbj            ; 2 uses
  %i.bbw = zext i32 %.027.i.i.i to i64
  %i.bbx = getelementptr inbounds nuw [32 x i8], ptr %i.bbb, i64 %i.bbw ; 3 uses
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !77 ; 2 uses
  %i.bbz = icmp eq ptr %.sroa.0252.0453.i.i, %i.bby
  br i1 %i.bbz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E16FindAndConstructEOS4_.exit, label %.lr.ph.i.i.i38, !prof !22, !llvm.loop !79

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i: ; preds = %bb.fe, %.lr.ph455.i.i
  %.sink.i.i.i = phi ptr [ %i.bbr, %bb.fe ], [ null, %.lr.ph455.i.i ]
  %i.bca = load i32, ptr %i.k, align 8, !tbaa !80 ; 3 uses
  %i.bcb = shl i32 %i.bca, 2
  %i.bcc = add i32 %i.bcb, 4
  %i.bcd = mul i32 %i.bbc, 3
  %.not.i.i4.i = icmp ult i32 %i.bcc, %i.bcd
  br i1 %.not.i.i4.i, label %bb.fh, label %bb.fg, !prof !21

bb.fg:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i
  %i.bce = shl i32 %i.bbc, 1
  br label %.sink.split.i.i.i

bb.fh:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit.i
  %i.bcf = load i32, ptr %i.l, align 4, !tbaa !81
  %.neg.i.i.i = xor i32 %i.bca, -1
  %.neg12.i.i.i = add i32 %i.bbc, %.neg.i.i.i
  %i.bcg = sub i32 %.neg12.i.i.i, %i.bcf
  %i.bch = lshr i32 %i.bbc, 3
  %.not10.i.i.i = icmp ugt i32 %i.bcg, %i.bch
  br i1 %.not10.i.i.i, label %bb.fl, label %.sink.split.i.i.i, !prof !21

.sink.split.i.i.i:                                ; preds = %bb.fh, %bb.fg
  %.sink.i.i5.i = phi i32 [ %i.bce, %bb.fg ], [ %i.bbc, %bb.fh ]
  %i.bci = add i32 %.sink.i.i5.i, -1
  %i.bcj = zext i32 %i.bci to i64                 ; 2 uses
  %i.bck = lshr i64 %i.bcj, 1
  %i.bcl = or i64 %i.bck, %i.bcj                  ; 2 uses
  %i.bcm = lshr i64 %i.bcl, 2
  %i.bcn = or i64 %i.bcm, %i.bcl                  ; 2 uses
  %i.bco = lshr i64 %i.bcn, 4
  %i.bcp = or i64 %i.bco, %i.bcn                  ; 2 uses
  %i.bcq = lshr i64 %i.bcp, 8
  %i.bcr = or i64 %i.bcq, %i.bcp                  ; 2 uses
  %i.bcs = lshr i64 %i.bcr, 16
  %i.bct = or i64 %i.bcs, %i.bcr
  %i.bcu = trunc nuw i64 %i.bct to i32
  %i.bcv = add i32 %i.bcu, 1
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.bcv, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i.i, ptr %i.j, align 8, !tbaa !74
  %i.bcw = zext i32 %.sroa.speculated.i.i to i64
  %i.bcx = shl nuw nsw i64 %i.bcw, 5
  %i.bcy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bcx) #12 ; 6 uses
  store ptr %i.bcy, ptr %9, align 8, !tbaa !82
  %.not.i.i106 = icmp eq ptr %i.bbb, null
  br i1 %.not.i.i106, label %bb.fi, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit

bb.fi:                                            ; preds = %.sink.split.i.i.i
  store i32 0, ptr %i.k, align 8, !tbaa !80
  store i32 0, ptr %i.l, align 4, !tbaa !81
  %i.bcz = load i32, ptr %i.j, align 8, !tbaa !74 ; 4 uses
  %i.bda = zext i32 %i.bcz to i64
  %.idx.i.i.i107 = shl nuw nsw i64 %i.bda, 5      ; 2 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcy, i64 %.idx.i.i.i107
  %.not6.i.i.i = icmp eq i32 %i.bcz, 0
  br i1 %.not6.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit, label %.lr.ph.i.i.i108.preheader

.lr.ph.i.i.i108.preheader:                        ; preds = %bb.fi
  %i.bdc = add nsw i64 %.idx.i.i.i107, -32        ; 2 uses
  %i.bdd = lshr exact i64 %i.bdc, 5
  %i.bde = add nuw nsw i64 %i.bdd, 1
  %xtraiter1226 = and i64 %i.bde, 7               ; 2 uses
  %lcmp.mod1227.not = icmp eq i64 %xtraiter1226, 0
  br i1 %lcmp.mod1227.not, label %.lr.ph.i.i.i108.prol.loopexit, label %.lr.ph.i.i.i108.prol

.lr.ph.i.i.i108.prol:                             ; preds = %.lr.ph.i.i.i108.preheader, %.lr.ph.i.i.i108.prol
  %.07.i.i.i.prol = phi ptr [ %i.bdf, %.lr.ph.i.i.i108.prol ], [ %i.bcy, %.lr.ph.i.i.i108.preheader ] ; 2 uses
  %prol.iter1228 = phi i64 [ %prol.iter1228.next, %.lr.ph.i.i.i108.prol ], [ 0, %.lr.ph.i.i.i108.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.prol, align 8, !tbaa !77
  %i.bdf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.prol, i64 32 ; 2 uses
  %prol.iter1228.next = add i64 %prol.iter1228, 1 ; 2 uses
  %prol.iter1228.cmp.not = icmp eq i64 %prol.iter1228.next, %xtraiter1226
  br i1 %prol.iter1228.cmp.not, label %.lr.ph.i.i.i108.prol.loopexit, label %.lr.ph.i.i.i108.prol, !llvm.loop !178

.lr.ph.i.i.i108.prol.loopexit:                    ; preds = %.lr.ph.i.i.i108.prol, %.lr.ph.i.i.i108.preheader
  %.07.i.i.i.unr = phi ptr [ %i.bcy, %.lr.ph.i.i.i108.preheader ], [ %i.bdf, %.lr.ph.i.i.i108.prol ]
  %i.bdg = icmp ult i64 %i.bdc, 224
  br i1 %i.bdg, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_8DenseSetIPNS2_8VariableENS_12DenseMapInfoIS7_EEEENS8_IS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj.exit.thread, label %.lr.ph.i.i.i108

.lr.ph.i.i.i108:                                  ; preds = %.lr.ph.i.i.i108.prol.loopexit, %.lr.ph.i.i.i108
  %.07.i.i.i = phi ptr [ %i.bdo, %.lr.ph.i.i.i108 ], [ %.07.i.i.i.unr, %.lr.ph.i.i.i108.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i, align 8, !tbaa !77
  %i.bdh = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bdh, align 8, !tbaa !77
  %i.bdi = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bdi, align 8, !tbaa !77
  %i.bdj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bdj, align 8, !tbaa !77
  %i.bdk = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 128
end_hunk_0
