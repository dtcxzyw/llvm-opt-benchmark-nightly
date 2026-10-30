Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUPromoteAlloca?download=true
inline.NumInlined: 5003
inline.NumDeleted: 2606
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl3runERN4llvm8FunctionEb:bb.a
  br label %bb.fn

bb.fn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit68.i.i, %bb.dv, %bb.dt, %.thread.i164.i
  %i.ahy = load i32, ptr %i.ms, align 8, !tbaa !194, !noalias !658
  %i.ahz = icmp ugt i32 %i.ahy, 64
  br i1 %i.ahz, label %bb.fo, label %_ZN4llvm5APIntD2Ev.exit69.i.i

bb.fo:                                            ; preds = %bb.fn
  %i.aia = load ptr, ptr %54, align 8, !tbaa !111, !noalias !658 ; 2 uses
  %i.aib = icmp eq ptr %i.aia, null
  br i1 %i.aib, label %_ZN4llvm5APIntD2Ev.exit69.i.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @_ZdaPv(ptr noundef nonnull %i.aia) #25
  br label %_ZN4llvm5APIntD2Ev.exit69.i.i

_ZN4llvm5APIntD2Ev.exit69.i.i:                    ; preds = %bb.fp, %bb.fo, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20, !noalias !658
  %i.aic = load ptr, ptr %i.mo, align 8, !tbaa !37, !noalias !658 ; 3 uses
  %i.aid = load i32, ptr %i.mq, align 8, !tbaa !94, !noalias !658 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.aid, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN4llvm5APIntD2Ev.exit69.i.i
  %i.aie = zext i32 %i.aid to i64
  %.idx.i.i.i.i76 = mul nuw nsw i64 %i.aie, 24
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 %.idx.i.i.i.i76
  br label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aig, %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i ], [ %i.aif, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.aig = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -24 ; 2 uses
  %i.aih = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -8
  %i.aii = load i32, ptr %i.aih, align 8, !tbaa !194
  %i.aij = icmp ugt i32 %i.aii, 64
  br i1 %i.aij, label %bb.fq, label %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i

bb.fq:                                            ; preds = %.lr.ph.i.i.i.i.i77
  %i.aik = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -16
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !111 ; 2 uses
  %i.aim = icmp eq ptr %i.ail, null
  br i1 %i.aim, label %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @_ZdaPv(ptr noundef nonnull %i.ail) #25
  br label %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i

_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i: ; preds = %bb.fr, %bb.fq, %.lr.ph.i.i.i.i.i77
  %.not.i.i.i.i.i78 = icmp eq ptr %i.aic, %i.aig
  br i1 %.not.i.i.i.i.i78, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i77, !llvm.loop !374

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i: ; preds = %_ZNSt4pairIPN4llvm5ValueENS0_5APIntEED2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.mo, align 8, !tbaa !37, !noalias !658
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i, %_ZN4llvm5APIntD2Ev.exit69.i.i
  %i.ain = phi ptr [ %.pre.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i.i ], [ %i.aic, %_ZN4llvm5APIntD2Ev.exit69.i.i ] ; 2 uses
  %i.aio = icmp eq ptr %i.ain, %i.mp
  br i1 %i.aio, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueENS_5APIntEELj4EED2Ev.exit.i.i.i, label %bb.fs

bb.fs:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i
  call void @free(ptr noundef %i.ain) #20
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueENS_5APIntEELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueENS_5APIntEELj4EED2Ev.exit.i.i.i: ; preds = %bb.fs, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueENS_5APIntEELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i.i
  %i.aip = load i32, ptr %i.nh, align 4, !tbaa !667, !noalias !658 ; 2 uses
  %i.aiq = icmp eq i32 %i.aip, 0
  br i1 %i.aiq, label %_ZL23computeGEPToVectorIndexPN4llvm17GetElementPtrInstEPNS_10AllocaInstEPNS_4TypeERKNS_10DataLayoutE.exit.i, label %bb.ft

bb.ft:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueENS_5APIntEELj4EED2Ev.exit.i.i.i
  %i.air = load ptr, ptr %53, align 8, !tbaa !668, !noalias !658
  %i.ais = zext i32 %i.aip to i64                 ; 2 uses
  %i.ait = shl nuw nsw i64 %i.ais, 4
  %i.aiu = add nuw nsw i64 %i.ais, 31
  %i.aiv = lshr i64 %i.aiu, 3
  %i.aiw = and i64 %i.aiv, 1073741820
  %i.aix = add nuw nsw i64 %i.aiw, %i.ait
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.air, i64 noundef %i.aix, i64 noundef 8) #20
  br label %_ZL23computeGEPToVectorIndexPN4llvm17GetElementPtrInstEPNS_10AllocaInstEPNS_4TypeERKNS_10DataLayoutE.exit.i

_ZL23computeGEPToVectorIndexPN4llvm17GetElementPtrInstEPNS_10AllocaInstEPNS_4TypeERKNS_10DataLayoutE.exit.i: ; preds = %bb.ft, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueENS_5APIntEELj4EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #20, !noalias !658
  %.val144.i = load i8, ptr %i.mt, align 8, !tbaa !660, !range !33, !noundef !34
  %i.aiy = trunc nuw i8 %.val144.i to i1
  br i1 %i.aiy, label %_ZNRSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEE5valueEv.exit.i, label %bb.fu

bb.fu:                                            ; preds = %_ZL23computeGEPToVectorIndexPN4llvm17GetElementPtrInstEPNS_10AllocaInstEPNS_4TypeERKNS_10DataLayoutE.exit.i
  store ptr null, ptr %i.ln, align 8, !tbaa !189
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit169.i

_ZNRSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEE5valueEv.exit.i: ; preds = %_ZL23computeGEPToVectorIndexPN4llvm17GetElementPtrInstEPNS_10AllocaInstEPNS_4TypeERKNS_10DataLayoutE.exit.i
  %i.aiz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17GetElementPtrInstEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.lw, ptr noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !669 ; 2 uses
  %.fca.0.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.aiz, 0
  %.fca.1.extract.i.i.i.i.i = extractvalue { ptr, i8 } %i.aiz, 1
  %i.aja = trunc nuw i8 %.fca.1.extract.i.i.i.i.i to i1
  %i.ajb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i, i64 8 ; 2 uses
  br i1 %i.aja, label %bb.fv, label %bb.fy

bb.fv:                                            ; preds = %_ZNRSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEE5valueEv.exit.i
  %i.ajc = load i32, ptr %i.lz, align 8, !tbaa !94 ; 3 uses
  store i32 %i.ajc, ptr %i.ajb, align 8, !tbaa !671
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #20
  store ptr %i.j, ptr %52, align 8, !tbaa !206, !alias.scope !672
  %i.ajd = load i32, ptr %i.ni, align 4, !tbaa !95
  %.not.i.i.i166.i = icmp ult i32 %i.ajc, %i.ajd
  br i1 %.not.i.i.i166.i, label %bb.fx, label %bb.fw, !prof !106

bb.fw:                                            ; preds = %bb.fv
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.lx, ptr noundef nonnull readonly align 8 dereferenceable(8) %52)
  %.val6.pre.i.i.i = load i32, ptr %i.lz, align 8, !tbaa !94
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_.exit.i.i.i

bb.fx:                                            ; preds = %bb.fv
  %i.aje = zext i32 %i.ajc to i64
  %.val.i.i.i.i = load ptr, ptr %i.lx, align 8, !tbaa !37
  %i.ajf = getelementptr inbounds nuw [64 x i8], ptr %.val.i.i.i.i, i64 %i.aje ; 3 uses
  %.val7.val.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !191
  store ptr %.val7.val.i.i.i.i, ptr %i.ajf, align 8, !tbaa !208
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  store i64 6, ptr %i.ajg, align 8
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajf, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ajh, i8 0, i64 48, i1 false)
  %i.aji = load i32, ptr %i.lz, align 8, !tbaa !94
  %i.ajj = add i32 %i.aji, 1                      ; 2 uses
  store i32 %i.ajj, ptr %i.lz, align 8, !tbaa !94
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_.exit.i.i.i

_ZN4llvm15SmallVectorImplISt4pairIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_.exit.i.i.i: ; preds = %bb.fx, %bb.fw
  %.val6.i.i.i = phi i32 [ %.val6.pre.i.i.i, %bb.fw ], [ %i.ajj, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  %.val.i.i.i = load ptr, ptr %i.lx, align 8, !tbaa !37
  %i.ajk = zext i32 %.val6.i.i.i to i64
  %i.ajl = getelementptr inbounds nuw [64 x i8], ptr %.val.i.i.i, i64 %i.ajk
  %i.ajm = getelementptr inbounds i8, ptr %i.ajl, i64 -64
  br label %_ZN4llvm9MapVectorIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EEixERKS2_.exit.i

bb.fy:                                            ; preds = %_ZNRSt8optionalIN12_GLOBAL__N_116GEPToVectorIndexEE5valueEv.exit.i
  %.val11.i.i.i = load ptr, ptr %i.lx, align 8, !tbaa !37
  %i.ajn = load i32, ptr %i.ajb, align 8, !tbaa !671
  %i.ajo = zext i32 %i.ajn to i64
  %i.ajp = getelementptr inbounds nuw [64 x i8], ptr %.val11.i.i.i, i64 %i.ajo
  br label %_ZN4llvm9MapVectorIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EEixERKS2_.exit.i

_ZN4llvm9MapVectorIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EEixERKS2_.exit.i: ; preds = %bb.fy, %_ZN4llvm15SmallVectorImplISt4pairIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_.exit.i.i.i
  %.sroa.014.0.i.i.i = phi ptr [ %i.ajm, %_ZN4llvm15SmallVectorImplISt4pairIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_.exit.i.i.i ], [ %i.ajp, %bb.fy ] ; 3 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i, i64 8 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i, i64 24 ; 2 uses
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !204 ; 2 uses
  %i.ajt = load ptr, ptr %i.ne, align 8, !tbaa !204 ; 2 uses
  %i.aju = icmp eq ptr %i.ajs, %i.ajt
  br i1 %i.aju, label %_ZN12_GLOBAL__N_116GEPToVectorIndexaSEOS0_.exit.i, label %bb.fz

bb.fz:                                            ; preds = %_ZN4llvm9MapVectorIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EEixERKS2_.exit.i
  %.not.i.i.i167.i = icmp eq ptr %i.ajs, null
  br i1 %.not.i.i.i167.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ajq) #20
  %.pr.i.i.i.i = load ptr, ptr %i.ne, align 8, !tbaa !204
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.ajv = phi ptr [ %.pr.i.i.i.i, %bb.ga ], [ %i.ajt, %bb.fz ] ; 2 uses
  store ptr %i.ajv, ptr %i.ajr, align 8, !tbaa !204
  %.not6.i.i.i.i = icmp eq ptr %i.ajv, null
  br i1 %.not6.i.i.i.i, label %_ZN12_GLOBAL__N_116GEPToVectorIndexaSEOS0_.exit.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %61, align 8
  %i.ajw = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.ajx = inttoptr i64 %i.ajw to ptr
  call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ajq, ptr noundef %i.ajx) #20
  br label %_ZN12_GLOBAL__N_116GEPToVectorIndexaSEOS0_.exit.i

_ZN12_GLOBAL__N_116GEPToVectorIndexaSEOS0_.exit.i: ; preds = %bb.gc, %bb.gb, %_ZN4llvm9MapVectorIPNS_17GetElementPtrInstEN12_GLOBAL__N_116GEPToVectorIndexENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EEixERKS2_.exit.i
  %i.ajy = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajy, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.nf, i64 32, i1 false)
  %i.ajz = load i32, ptr %i.lu, align 8, !tbaa !94 ; 2 uses
  %i.aka = load i32, ptr %i.lv, align 4, !tbaa !95
  %.not.i168.i = icmp ult i32 %i.ajz, %i.aka
  br i1 %.not.i168.i, label %bb.ge, label %bb.gd, !prof !106

bb.gd:                                            ; preds = %_ZN12_GLOBAL__N_116GEPToVectorIndexaSEOS0_.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, ptr noundef nonnull %i.abg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit169.i

bb.ge:                                            ; preds = %_ZN12_GLOBAL__N_116GEPToVectorIndexaSEOS0_.exit.i
  %i.akb = zext i32 %i.ajz to i64
  %i.akc = load ptr, ptr %i.ls, align 8, !tbaa !37
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %i.akc, i64 %i.akb
  store ptr %i.abg, ptr %i.akd, align 1
  %i.ake = load i32, ptr %i.lu, align 8, !tbaa !94
  %i.akf = add i32 %i.ake, 1
  store i32 %i.akf, ptr %i.lu, align 8, !tbaa !94
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit169.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit169.i: ; preds = %bb.ge, %bb.gd, %bb.fu
  %.3.i = phi i32 [ 1, %bb.fu ], [ 5, %bb.gd ], [ 5, %bb.ge ]
  %i.akg = load i8, ptr %i.mt, align 8, !tbaa !660, !range !33, !noundef !34
  %i.akh = trunc nuw i8 %i.akg to i1
  store i8 0, ptr %i.mt, align 8, !tbaa !660
  %71 = load ptr, ptr %i.ne, align 8
  %.not.i.i.i.i.i.i.i = icmp ne ptr %71, null
  %or.cond.not.i.i.i.i = select i1 %i.akh, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit169.i
  call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(64) %61) #20
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit169.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit176.i

bb.gh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  %i.aki = load i8, ptr %i.abg, align 8, !tbaa !105
  %i.akj = icmp eq i8 %i.aki, 88
  br i1 %i.akj, label %bb.gi, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i

bb.gi:                                            ; preds = %bb.gh
  %i.akk = getelementptr inbounds i8, ptr %i.abg, i64 -32
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.akl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.akm = load i8, ptr %i.akl, align 8, !tbaa !105
  %i.akn = icmp eq i8 %i.akm, 14
  br i1 %i.akn, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.gj
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akl, i64 32
  %i.akp = load i32, ptr %i.ako, align 8
  %i.akq = and i32 %i.akp, 8192
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.akq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i, label %_ZN4llvm14CastIsPossibleINS_10MemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i

_ZN4llvm14CastIsPossibleINS_10MemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akl, i64 36
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !209
  %i.akt = and i32 %i.aks, -3
  %switch.selectcmp.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.akt, 260
  br i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.i, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i

_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.i: ; preds = %_ZN4llvm14CastIsPossibleINS_10MemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i
  %i.aku = load ptr, ptr %68, align 8, !tbaa !160 ; 2 uses
  %i.akv = load ptr, ptr %i.mn, align 8, !tbaa !107, !nonnull !34, !align !46
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aku, i64 72
  %i.akx = load ptr, ptr %i.akw, align 8, !tbaa !657
  %i.aky = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.akv, ptr noundef %i.akx) ; 2 uses
  %.fca.0.extract.i.i.i171.i = extractvalue { i64, i8 } %i.aky, 0
  %.fca.1.extract.i.i.i172.i = extractvalue { i64, i8 } %i.aky, 1
  %i.akz = add i64 %.fca.0.extract.i.i.i171.i, 7
  %i.ala = lshr i64 %i.akz, 3
  %i.alb = trunc nuw i8 %.fca.1.extract.i.i.i172.i to i1
  br i1 %i.alb, label %bb.gk, label %_ZNK4llvm8TypeSizecvmEv.exit.i173.i

bb.gk:                                            ; preds = %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.35) #21
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i173.i:              ; preds = %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.i
  %i.alc = getelementptr inbounds nuw i8, ptr %i.abg, i64 4 ; 2 uses
  %i.ald = load i32, ptr %i.alc, align 4
  %i.ale = and i32 %i.ald, 268435455
  %i.alf = zext nneg i32 %i.ale to i64
  %i.alg = sub nsw i64 0, %i.alf
  %i.alh = getelementptr inbounds [32 x i8], ptr %i.abg, i64 %i.alg ; 2 uses
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !172
  %i.alj = icmp eq ptr %i.ali, %i.aku
  br i1 %i.alj, label %bb.gl, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i

bb.gl:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i173.i
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alh, i64 64
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !172 ; 4 uses
  %i.alm = and i64 %i.ala, 4294967295
  %i.aln = load i8, ptr %i.all, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i174.i = icmp eq i8 %i.aln, 5
  br i1 %.not.i.i.i174.i, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i.i.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.alo = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !100
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  %i.alr = load i32, ptr %i.alq, align 8
  %i.als = and i32 %i.alr, 254
  %spec.select.i.i.i.i.i = icmp ne i32 %i.als, 18
  %i.alt = icmp ugt i8 %i.aln, 22
  %or.cond.i.i.i.i = or i1 %i.alt, %spec.select.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.alu = call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.all, i1 noundef zeroext false) #20 ; 3 uses
  %.not.i.i.i.i.i.i85 = icmp eq ptr %i.alu, null
  br i1 %.not.i.i.i.i.i.i85, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.alv = load i8, ptr %i.alu, align 8, !tbaa !105
  %i.alw = icmp eq i8 %i.alv, 5
  br i1 %i.alw, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i.i.i.i, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i

_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i.i.i.i: ; preds = %bb.go, %bb.gl
  %.1.i.i.i.i = phi ptr [ %i.all, %bb.gl ], [ %i.alu, %bb.go ] ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 24 ; 3 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 32
  %i.alz = load i32, ptr %i.aly, align 8, !tbaa !194 ; 2 uses
  %i.ama = icmp ult i32 %i.alz, 65                ; 2 uses
  br i1 %i.ama, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_17specific_intval64ILb0EEEEEbPT_RKT0_.exit.i.i, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i:  ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i.i.i.i
  %i.amb = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.alx) #24
  %i.amc = sub i32 %i.alz, %i.amb
  %i.amd = icmp ult i32 %i.amc, 65
  br i1 %i.amd, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_17specific_intval64ILb0EEEEEbPT_RKT0_.exit.i.i, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i

_ZN4llvm12PatternMatch5matchINS_5ValueENS0_17specific_intval64ILb0EEEEEbPT_RKT0_.exit.i.i: ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i.i.i.i
  %i.ame = load ptr, ptr %i.alx, align 8
  %spec.select.i.i15.i.i.i.i = select i1 %i.ama, ptr %i.alx, ptr %i.ame
  %.0.i.i16.i.i.i.i = load i64, ptr %spec.select.i.i15.i.i.i.i, align 8, !tbaa !111
  %i.amf = icmp eq i64 %.0.i.i16.i.i.i.i, %i.alm
  br i1 %i.amf, label %_ZL17isSupportedMemsetPN4llvm10MemSetInstEPNS_10AllocaInstERKNS_10DataLayoutE.exit.i, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i

_ZL17isSupportedMemsetPN4llvm10MemSetInstEPNS_10AllocaInstERKNS_10DataLayoutE.exit.i: ; preds = %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_17specific_intval64ILb0EEEEEbPT_RKT0_.exit.i.i
  %i.amg = load i32, ptr %i.alc, align 4
  %i.amh = and i32 %i.amg, 268435455
  %i.ami = zext nneg i32 %i.amh to i64
  %i.amj = sub nsw i64 0, %i.ami
  %i.amk = getelementptr inbounds [32 x i8], ptr %i.abg, i64 %i.amj
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 96
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !172
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 1
  %i.amo = load i8, ptr %i.amn, align 1
  %i.amp = icmp slt i8 %i.amo, 0
  br i1 %i.amp, label %bb.gp, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i

bb.gp:                                            ; preds = %_ZL17isSupportedMemsetPN4llvm10MemSetInstEPNS_10AllocaInstERKNS_10DataLayoutE.exit.i
  %i.amq = load i32, ptr %i.lq, align 8, !tbaa !94 ; 2 uses
  %i.amr = load i32, ptr %i.lr, align 4, !tbaa !95
  %.not.i175.i = icmp ult i32 %i.amq, %i.amr
  br i1 %.not.i175.i, label %bb.gr, label %bb.gq, !prof !106

bb.gq:                                            ; preds = %bb.gp
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, ptr noundef nonnull %i.abg)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit176.thread298.i

bb.gr:                                            ; preds = %bb.gp
  %i.ams = zext i32 %i.amq to i64
  %i.amt = load ptr, ptr %i.lo, align 8, !tbaa !37
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.amt, i64 %i.ams
  store ptr %i.abg, ptr %i.amu, align 1
  %i.amv = load i32, ptr %i.lq, align 8, !tbaa !94
  %i.amw = add i32 %i.amv, 1
  store i32 %i.amw, ptr %i.lq, align 8, !tbaa !94
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit176.thread298.i

_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i: ; preds = %_ZL17isSupportedMemsetPN4llvm10MemSetInstEPNS_10AllocaInstERKNS_10DataLayoutE.exit.i, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_17specific_intval64ILb0EEEEEbPT_RKT0_.exit.i.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i.i.i, %bb.go, %bb.gn, %bb.gm, %_ZNK4llvm8TypeSizecvmEv.exit.i173.i, %_ZN4llvm14CastIsPossibleINS_10MemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i, %bb.gj, %bb.gi, %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %i.amx = load i8, ptr %i.abg, align 8, !tbaa !105
  %i.amy = icmp eq i8 %i.amx, 88
  br i1 %i.amy, label %bb.gs, label %bb.hj

bb.gs:                                            ; preds = %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.thread.i
  %i.amz = getelementptr inbounds i8, ptr %i.abg, i64 -32
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !172 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i178.i = icmp eq ptr %i.ana, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i178.i, label %bb.hj, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.anb = load i8, ptr %i.ana, align 8, !tbaa !105
  %i.anc = icmp eq i8 %i.anb, 14
  br i1 %i.anc, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i179.i, label %bb.hj

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i179.i: ; preds = %bb.gt
  %i.and = getelementptr inbounds nuw i8, ptr %i.ana, i64 32
  %i.ane = load i32, ptr %i.and, align 8
  %i.anf = and i32 %i.ane, 8192
  %.not.i.i.i.i.i.i.i.i180.i = icmp eq i32 %i.anf, 0
  br i1 %.not.i.i.i.i.i.i.i.i180.i, label %bb.hj, label %bb.gu

bb.gu:                                            ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i179.i
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ana, i64 36
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !209
  switch i32 %i.anh, label %bb.hj [
    i32 255, label %bb.gv
    i32 258, label %bb.gv
    i32 257, label %bb.gv
  ]

bb.gv:                                            ; preds = %bb.gu, %bb.gu, %bb.gu
  store ptr %i.abg, ptr %i.k, align 8, !tbaa !211
  %i.ani = getelementptr inbounds nuw i8, ptr %i.abg, i64 4
  %i.anj = load i32, ptr %i.ani, align 4
  %i.ank = and i32 %i.anj, 268435455
  %i.anl = zext nneg i32 %i.ank to i64
  %i.anm = sub nsw i64 0, %i.anl
  %i.ann = getelementptr inbounds [32 x i8], ptr %i.abg, i64 %i.anm ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 96
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !172
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 1
  %i.anr = load i8, ptr %i.anq, align 1
  %i.ans = icmp sgt i8 %i.anr, -1
  br i1 %i.ans, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  store ptr null, ptr %i.ln, align 8, !tbaa !189
  br label %.thread286.i

bb.gx:                                            ; preds = %bb.gv
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ann, i64 64
end_hunk_0
