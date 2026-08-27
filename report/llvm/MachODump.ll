Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachODump?download=true
inline.NumInlined: 10905
inline.NumDeleted: 3317
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL12ProcessMachON4llvm9StringRefEPNS_6object15MachOObjectFileES0_S0_:bb.a
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4findERKm.exit77.i

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4findERKm.exit77.loopexit.i: ; preds = %.lr.ph.i.i.i.i75.i
  %.pre190.i163 = zext i32 %i.ago to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4findERKm.exit77.i

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4findERKm.exit77.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4findERKm.exit77.loopexit.i, %.loopexit.i.i72.i
  %.pre-phi191.i = phi i64 [ %.pre190.i163, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4findERKm.exit77.loopexit.i ], [ %i.ahq, %.loopexit.i.i72.i ]
  %.lcssa.sink.i.i73.i = phi ptr [ %i.ahe, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4findERKm.exit77.loopexit.i ], [ %i.ahr, %.loopexit.i.i72.i ] ; 3 uses
  %i.ahs = getelementptr inbounds nuw [24 x i8], ptr %i.agm, i64 %.pre-phi191.i
  %.not157.i = icmp eq ptr %.lcssa.sink.i.i73.i, %i.ahs
  %i.aht = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 5 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !78 ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aht, i64 32 ; 5 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !79 ; 4 uses
  br i1 %.not157.i, label %bb.fz, label %bb.ft

bb.ft:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4findERKm.exit77.i
  %i.ahy = icmp eq ptr %i.ahv, %i.ahx
  br i1 %i.ahy, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.ahz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aht, ptr noundef nonnull @.str.68, i64 noundef 1) #27 ; 2 uses
  %.phi.trans.insert.i161 = getelementptr inbounds nuw i8, ptr %i.ahz, i64 32
  %.pre186.i162 = load ptr, ptr %.phi.trans.insert.i161, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit80.i

bb.fv:                                            ; preds = %bb.ft
  store i8 32, ptr %i.ahx, align 1
  %i.aia = load ptr, ptr %i.ahw, align 8, !tbaa !79
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 1 ; 2 uses
  store ptr %i.aib, ptr %i.ahw, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit80.i

_ZN4llvm11raw_ostreamlsEPKc.exit80.i:             ; preds = %bb.fv, %bb.fu
  %i.aic = phi ptr [ %.pre186.i162, %bb.fu ], [ %i.aib, %bb.fv ] ; 2 uses
  %.0.i.i79.i = phi ptr [ %i.ahz, %bb.fu ], [ %i.aht, %bb.fv ] ; 3 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i73.i, i64 8
  %.sroa.0.0.copyload.i158 = load ptr, ptr %i.aid, align 8, !tbaa !32 ; 2 uses
  %.sroa.2.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i73.i, i64 16
  %.sroa.2.0.copyload.i160 = load i64, ptr %.sroa.2.0..sroa_idx.i159, align 8, !tbaa !29 ; 5 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %.0.i.i79.i, i64 24
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !78
  %i.aig = getelementptr inbounds nuw i8, ptr %.0.i.i79.i, i64 32 ; 2 uses
  %i.aih = ptrtoint ptr %i.aif to i64
  %i.aii = ptrtoint ptr %i.aic to i64
  %i.aij = sub i64 %i.aih, %i.aii
  %i.aik = icmp ugt i64 %.sroa.2.0.copyload.i160, %i.aij
  br i1 %i.aik, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit80.i
  %i.ail = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i79.i, ptr noundef %.sroa.0.0.copyload.i158, i64 noundef %.sroa.2.0.copyload.i160) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit83.i

bb.fx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit80.i
  %.not.i81.i = icmp eq i64 %.sroa.2.0.copyload.i160, 0
  br i1 %.not.i81.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit83.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aic, ptr align 1 %.sroa.0.0.copyload.i158, i64 %.sroa.2.0.copyload.i160, i1 false)
  %i.aim = load ptr, ptr %i.aig, align 8, !tbaa !79
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 %.sroa.2.0.copyload.i160
  store ptr %i.ain, ptr %i.aig, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit83.i

bb.fz:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4findERKm.exit77.i
  %i.aio = ptrtoint ptr %i.ahv to i64
  %i.aip = ptrtoint ptr %i.ahx to i64
  %i.aiq = sub i64 %i.aio, %i.aip
  %i.air = icmp ult i64 %i.aiq, 2
  br i1 %i.air, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.ais = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aht, ptr noundef nonnull @.str.169, i64 noundef 2) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit83.i

bb.gb:                                            ; preds = %bb.fz
  store i16 16160, ptr %i.ahx, align 1
  %i.ait = load ptr, ptr %i.ahw, align 8, !tbaa !79
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 2
  store ptr %i.aiu, ptr %i.ahw, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit83.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit83.i:  ; preds = %bb.gb, %bb.ga, %bb.fy, %bb.fx, %bb.fw, %bb.fp
  %i.aiv = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 24
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !78
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiv, i64 32 ; 3 uses
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !79 ; 2 uses
  %i.aja = icmp eq ptr %i.aix, %i.aiz
  br i1 %i.aja, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit83.i
  %i.ajb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aiv, ptr noundef nonnull @.str.25, i64 noundef 1) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i157

bb.gd:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit83.i
  store i8 10, ptr %i.aiz, align 1
  %i.ajc = load ptr, ptr %i.aiy, align 8, !tbaa !79
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 1
  store ptr %i.ajd, ptr %i.aiy, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i157

_ZN4llvm11raw_ostreamlsEPKc.exit.i157:            ; preds = %bb.gd, %bb.gc, %bb.fl, %bb.fk, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4findERKm.exit.i
  %i.aje = getelementptr inbounds nuw i8, ptr %.047177.i, i64 8 ; 2 uses
  %.not56.i = icmp eq ptr %i.aje, %i.add
  br i1 %.not56.i, label %._crit_edge180.i, label %bb.fc

_ZL19PrintFunctionStartsPN4llvm6object15MachOObjectFileE.exit: ; preds = %_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit.i, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %164)
  call void @llvm.lifetime.end.p0(ptr nonnull %165)
  br label %bb.ge

bb.ge:                                            ; preds = %_ZL19PrintFunctionStartsPN4llvm6object15MachOObjectFileE.exit, %bb.ek
  %i.ajf = load i8, ptr @_ZN4llvm7objdump12LinkOptHintsE, align 1, !tbaa !22, !range !190, !noundef !191
  %i.ajg = trunc nuw i8 %i.ajf to i1
  br i1 %i.ajg, label %bb.gf, label %bb.ii

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.start.p0(ptr nonnull %154)
  %i.ajh = call { i64, i64 } @_ZNK4llvm6object15MachOObjectFile26getLinkOptHintsLoadCommandEv(ptr noundef nonnull align 8 dereferenceable(360) %2) #27
  %i.aji = extractvalue { i64, i64 } %i.ajh, 1    ; 2 uses
  %i.ajj = call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #27 ; 2 uses
  %i.ajk = extractvalue { ptr, i64 } %i.ajj, 0    ; 4 uses
  %i.ajl = extractvalue { ptr, i64 } %i.ajj, 1
  %i.ajm = and i64 %i.aji, 4294967295
  %.sroa.speculated4.i.i = call i64 @llvm.umin.i64(i64 %i.ajl, i64 %i.ajm)
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %.sroa.speculated4.i.i ; 3 uses
  %.sroa.3.12.extract.shift.i = lshr i64 %i.aji, 32 ; 3 uses
  %.sroa.3.12.extract.trunc.i = trunc nuw i64 %.sroa.3.12.extract.shift.i to i32 ; 3 uses
  %i.ajo = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 4 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 24
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !78
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajo, i64 32 ; 3 uses
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !79 ; 2 uses
  %i.ajt = ptrtoint ptr %i.ajq to i64
  %i.aju = ptrtoint ptr %i.ajs to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  %i.ajw = icmp ult i64 %i.ajv, 26
  br i1 %i.ajw, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.ajx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ajo, ptr noundef nonnull @.str.170, i64 noundef 26) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i171

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ajs, ptr noundef nonnull align 1 dereferenceable(26) @.str.170, i64 26, i1 false)
  %i.ajy = load ptr, ptr %i.ajr, align 8, !tbaa !79
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 26
  store ptr %i.ajz, ptr %i.ajr, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i171

_ZN4llvm11raw_ostreamlsEPKc.exit.i171:            ; preds = %bb.gh, %bb.gg
  %.0.i.i.i172 = phi ptr [ %i.ajx, %bb.gg ], [ %i.ajo, %bb.gh ]
  %i.aka = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i172, i64 noundef %.sroa.3.12.extract.shift.i) #27 ; 3 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 24
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !78
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aka, i64 32 ; 3 uses
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !79 ; 2 uses
  %i.akf = ptrtoint ptr %i.akc to i64
  %i.akg = ptrtoint ptr %i.ake to i64
  %i.akh = sub i64 %i.akf, %i.akg
  %i.aki = icmp ult i64 %i.akh, 14
  br i1 %i.aki, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i171
  %i.akj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aka, ptr noundef nonnull @.str.171, i64 noundef 14) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48.i

bb.gj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ake, ptr noundef nonnull align 1 dereferenceable(14) @.str.171, i64 14, i1 false)
  %i.akk = load ptr, ptr %i.akd, align 8, !tbaa !79
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 14
  store ptr %i.akl, ptr %i.akd, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit48.i

_ZN4llvm11raw_ostreamlsEPKc.exit48.i:             ; preds = %bb.gj, %bb.gi
  %i.akm = getelementptr inbounds nuw i8, ptr %154, i64 8
  %i.akn = ptrtoint ptr %153 to i64
  %.not420 = icmp eq i64 %.sroa.3.12.extract.shift.i, 0
  br i1 %.not420, label %_ZL17PrintLinkOptHintsPN4llvm6object15MachOObjectFileE.exit, label %.lr.ph403.preheader

.lr.ph403.preheader:                              ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit48.i
  %i.ako = icmp eq ptr %i.ajk, null
  %i.akp = icmp eq ptr %i.ajk, null
  %i.akq = icmp eq ptr %i.ajk, null
  br label %.lr.ph403

.lr.ph403:                                        ; preds = %.lr.ph403.backedge, %.lr.ph403.preheader
  %.034.i402 = phi i32 [ 0, %.lr.ph403.preheader ], [ %.034.i402.be, %.lr.ph403.backedge ] ; 2 uses
  %i.akr = zext i32 %.034.i402 to i64
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %i.akr ; 4 uses
  %i.akt = ptrtoaddr ptr %i.aks to i64
  %i.aku = sub i64 0, %i.akt
  %scevgep.i.i = getelementptr i8, ptr %i.aks, i64 %i.aku
  br i1 %i.ako, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %.lr.ph906, !prof !481

bb.gk:                                            ; preds = %bb.gm
  %191 = add i32 %.028.i.i905, 7
  br label %.lr.ph906, !llvm.loop !482

.lr.ph906:                                        ; preds = %.lr.ph403, %bb.gk
  %.028.i.i905 = phi i32 [ %191, %bb.gk ], [ 0, %.lr.ph403 ] ; 5 uses
  %.029.i.i904 = phi i64 [ %.130.i.i, %bb.gk ], [ 0, %.lr.ph403 ]
  %.031.i.i903 = phi ptr [ %i.ald, %bb.gk ], [ %i.aks, %.lr.ph403 ] ; 3 uses
  %i.akv = load i8, ptr %.031.i.i903, align 1, !tbaa !18 ; 2 uses
  %i.akw = and i8 %i.akv, 127                     ; 3 uses
  %i.akx = zext nneg i8 %i.akw to i64
  %i.aky = icmp ugt i32 %.028.i.i905, 62
  br i1 %i.aky, label %bb.gl, label %bb.gm, !prof !483

bb.gl:                                            ; preds = %.lr.ph906
  %.not44.i.i = icmp eq i32 %.028.i.i905, 63
  %.not.i.i177 = icmp samesign ugt i8 %i.akw, 1
  %i.akz = icmp ne i8 %i.akw, 0
  %or.cond43.i.i = select i1 %.not44.i.i, i1 %.not.i.i177, i1 %i.akz
  br i1 %or.cond43.i.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %.lr.ph906
  %i.ala = icmp ult i32 %.028.i.i905, 64
  %192 = zext nneg i32 %.028.i.i905 to i64
  %i.alb = shl i64 %i.akx, %192
  %i.alc = select i1 %i.ala, i64 %i.alb, i64 0, !prof !88
  %.130.i.i = add i64 %i.alc, %.029.i.i904        ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.031.i.i903, i64 1 ; 2 uses
  %i.ale = icmp slt i8 %i.akv, 0
  br i1 %i.ale, label %bb.gk, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge, !llvm.loop !482

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge: ; preds = %bb.gm
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, !llvm.loop !482

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i:      ; preds = %bb.gl, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge, %.lr.ph403
  %.132.i.i = phi ptr [ %i.ald, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge ], [ %scevgep.i.i, %.lr.ph403 ], [ %.031.i.i903, %bb.gl ]
  %.3.i.i = phi i64 [ %.130.i.i, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge ], [ 0, %.lr.ph403 ], [ 0, %bb.gl ] ; 2 uses
  %i.alf = ptrtoint ptr %.132.i.i to i64
  %i.alg = ptrtoint ptr %i.aks to i64
  %i.alh = sub i64 %i.alf, %i.alg
  %i.ali = trunc i64 %i.alh to i32
  %i.alj = add i32 %.034.i402, %i.ali             ; 3 uses
  %i.alk = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 4 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 24
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !78
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alk, i64 32 ; 3 uses
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !79 ; 2 uses
  %i.alp = ptrtoint ptr %i.alm to i64
  %i.alq = ptrtoint ptr %i.alo to i64
  %i.alr = sub i64 %i.alp, %i.alq
  %i.als = icmp ult i64 %i.alr, 15
  br i1 %i.als, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i
  %i.alt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.alk, ptr noundef nonnull @.str.172, i64 noundef 15) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51.i

bb.go:                                            ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.alo, ptr noundef nonnull align 1 dereferenceable(15) @.str.172, i64 15, i1 false)
  %i.alu = load ptr, ptr %i.aln, align 8, !tbaa !79
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 15
  store ptr %i.alv, ptr %i.aln, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51.i

_ZN4llvm11raw_ostreamlsEPKc.exit51.i:             ; preds = %bb.go, %bb.gn
  %.0.i.i50.i = phi ptr [ %i.alt, %bb.gn ], [ %i.alk, %bb.go ]
  %i.alw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i50.i, i64 noundef %.3.i.i) #27 ; 3 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !78
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 32 ; 3 uses
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !79 ; 2 uses
  %i.amb = icmp eq ptr %i.aly, %i.ama
  br i1 %i.amb, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit51.i
  %i.amc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.alw, ptr noundef nonnull @.str.68, i64 noundef 1) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit54.i

bb.gq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit51.i
  store i8 32, ptr %i.ama, align 1
  %i.amd = load ptr, ptr %i.alz, align 8, !tbaa !79
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 1
  store ptr %i.ame, ptr %i.alz, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit54.i

_ZN4llvm11raw_ostreamlsEPKc.exit54.i:             ; preds = %bb.gq, %bb.gp
  %.not.i174 = icmp ult i32 %i.alj, %.sroa.3.12.extract.trunc.i
  br i1 %.not.i174, label %bb.gr, label %_ZL17PrintLinkOptHintsPN4llvm6object15MachOObjectFileE.exit

bb.gr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit54.i
  %i.amf = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 11 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 24
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !78
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amf, i64 32 ; 19 uses
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !79 ; 10 uses
  %i.amk = ptrtoint ptr %i.amh to i64
  %i.aml = ptrtoint ptr %i.amj to i64
  %i.amm = sub i64 %i.amk, %i.aml                 ; 9 uses
  switch i64 %.3.i.i, label %bb.hq [
    i64 1, label %bb.gs
    i64 2, label %bb.gv
    i64 3, label %bb.gy
    i64 4, label %bb.hb
    i64 5, label %bb.he
    i64 6, label %bb.hh
    i64 7, label %bb.hk
    i64 8, label %bb.hn
  ]

bb.gs:                                            ; preds = %bb.gr
  %i.amn = icmp ult i64 %i.amm, 9
  br i1 %i.amn, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.amo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amf, ptr noundef nonnull @.str.173, i64 noundef 9) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.gu:                                            ; preds = %bb.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.amj, ptr noundef nonnull align 1 dereferenceable(9) @.str.173, i64 9, i1 false)
  %i.amp = load ptr, ptr %i.ami, align 8, !tbaa !79
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 9
  store ptr %i.amq, ptr %i.ami, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.gv:                                            ; preds = %bb.gr
  %i.amr = icmp ult i64 %i.amm, 8
  br i1 %i.amr, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.ams = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amf, ptr noundef nonnull @.str.174, i64 noundef 8) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.gx:                                            ; preds = %bb.gv
  store i64 752774367191131201, ptr %i.amj, align 1
  %i.amt = load ptr, ptr %i.ami, align 8, !tbaa !79
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  store ptr %i.amu, ptr %i.ami, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.gy:                                            ; preds = %bb.gr
  %i.amv = icmp ult i64 %i.amm, 11
  br i1 %i.amv, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.amw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amf, ptr noundef nonnull @.str.175, i64 noundef 11) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.ha:                                            ; preds = %bb.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.amj, ptr noundef nonnull align 1 dereferenceable(11) @.str.175, i64 11, i1 false)
  %i.amx = load ptr, ptr %i.ami, align 8, !tbaa !79
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 11
  store ptr %i.amy, ptr %i.ami, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hb:                                            ; preds = %bb.gr
  %i.amz = icmp ult i64 %i.amm, 14
  br i1 %i.amz, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.ana = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amf, ptr noundef nonnull @.str.176, i64 noundef 14) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.amj, ptr noundef nonnull align 1 dereferenceable(14) @.str.176, i64 14, i1 false)
  %i.anb = load ptr, ptr %i.ami, align 8, !tbaa !79
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 14
  store ptr %i.anc, ptr %i.ami, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.he:                                            ; preds = %bb.gr
  %i.and = icmp ult i64 %i.amm, 11
  br i1 %i.and, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.ane = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amf, ptr noundef nonnull @.str.177, i64 noundef 11) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hg:                                            ; preds = %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.amj, ptr noundef nonnull align 1 dereferenceable(11) @.str.177, i64 11, i1 false)
  %i.anf = load ptr, ptr %i.ami, align 8, !tbaa !79
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 11
  store ptr %i.ang, ptr %i.ami, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hh:                                            ; preds = %bb.gr
  %i.anh = icmp ult i64 %i.amm, 14
  br i1 %i.anh, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.ani = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amf, ptr noundef nonnull @.str.178, i64 noundef 14) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hj:                                            ; preds = %bb.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.amj, ptr noundef nonnull align 1 dereferenceable(14) @.str.178, i64 14, i1 false)
  %i.anj = load ptr, ptr %i.ami, align 8, !tbaa !79
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 14
  store ptr %i.ank, ptr %i.ami, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hk:                                            ; preds = %bb.gr
  %i.anl = icmp ult i64 %i.amm, 8
  br i1 %i.anl, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.anm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amf, ptr noundef nonnull @.str.179, i64 noundef 8) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hm:                                            ; preds = %bb.hk
  store i64 748833670272541761, ptr %i.amj, align 1
  %i.ann = load ptr, ptr %i.ami, align 8, !tbaa !79
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  store ptr %i.ano, ptr %i.ami, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hn:                                            ; preds = %bb.gr
  %i.anp = icmp ult i64 %i.amm, 11
  br i1 %i.anp, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.anq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amf, ptr noundef nonnull @.str.180, i64 noundef 11) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hp:                                            ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.amj, ptr noundef nonnull align 1 dereferenceable(11) @.str.180, i64 11, i1 false)
  %i.anr = load ptr, ptr %i.ami, align 8, !tbaa !79
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 11
  store ptr %i.ans, ptr %i.ami, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hq:                                            ; preds = %bb.gr
  %i.ant = icmp ult i64 %i.amm, 25
  br i1 %i.ant, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.anu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.amf, ptr noundef nonnull @.str.181, i64 noundef 25) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.hs:                                            ; preds = %bb.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.amj, ptr noundef nonnull align 1 dereferenceable(25) @.str.181, i64 25, i1 false)
  %i.anv = load ptr, ptr %i.ami, align 8, !tbaa !79
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 25
  store ptr %i.anw, ptr %i.ami, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

_ZN4llvm11raw_ostreamlsEPKc.exit57.i:             ; preds = %bb.hs, %bb.hr, %bb.hp, %bb.ho, %bb.hm, %bb.hl, %bb.hj, %bb.hi, %bb.hg, %bb.hf, %bb.hd, %bb.hc, %bb.ha, %bb.gz, %bb.gx, %bb.gw, %bb.gu, %bb.gt
  %i.anx = zext i32 %i.alj to i64
  %i.any = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %i.anx ; 4 uses
  %i.anz = ptrtoaddr ptr %i.any to i64
  %i.aoa = sub i64 0, %i.anz
  %scevgep.i82.i = getelementptr i8, ptr %i.any, i64 %i.aoa
  br i1 %i.akp, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i, label %.lr.ph917, !prof !481

bb.ht:                                            ; preds = %bb.hv
  %193 = add i32 %.028.i85.i916, 7
  br label %.lr.ph917, !llvm.loop !482

.lr.ph917:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit57.i, %bb.ht
  %.028.i85.i916 = phi i32 [ %193, %bb.ht ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit57.i ] ; 5 uses
  %.029.i84.i915 = phi i64 [ %.130.i86.i, %bb.ht ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit57.i ]
  %.031.i83.i914 = phi ptr [ %i.aoj, %bb.ht ], [ %i.any, %_ZN4llvm11raw_ostreamlsEPKc.exit57.i ] ; 3 uses
  %i.aob = load i8, ptr %.031.i83.i914, align 1, !tbaa !18 ; 2 uses
  %i.aoc = and i8 %i.aob, 127                     ; 3 uses
  %i.aod = zext nneg i8 %i.aoc to i64
  %i.aoe = icmp ugt i32 %.028.i85.i916, 62
  br i1 %i.aoe, label %bb.hu, label %bb.hv, !prof !483

bb.hu:                                            ; preds = %.lr.ph917
  %.not44.i89.i = icmp eq i32 %.028.i85.i916, 63
  %.not.i90.i = icmp samesign ugt i8 %i.aoc, 1
  %i.aof = icmp ne i8 %i.aoc, 0
  %or.cond43.i91.i = select i1 %.not44.i89.i, i1 %.not.i90.i, i1 %i.aof
  br i1 %or.cond43.i91.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %.lr.ph917
  %i.aog = icmp ult i32 %.028.i85.i916, 64
  %194 = zext nneg i32 %.028.i85.i916 to i64
  %i.aoh = shl i64 %i.aod, %194
  %i.aoi = select i1 %i.aog, i64 %i.aoh, i64 0, !prof !88
  %.130.i86.i = add i64 %i.aoi, %.029.i84.i915    ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %.031.i83.i914, i64 1 ; 2 uses
  %i.aok = icmp slt i8 %i.aob, 0
  br i1 %i.aok, label %bb.ht, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i_crit_edge, !llvm.loop !482

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i_crit_edge: ; preds = %bb.hv
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i, !llvm.loop !482

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i:    ; preds = %bb.hu, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i_crit_edge, %_ZN4llvm11raw_ostreamlsEPKc.exit57.i
  %.132.i87.i = phi ptr [ %i.aoj, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i_crit_edge ], [ %scevgep.i82.i, %_ZN4llvm11raw_ostreamlsEPKc.exit57.i ], [ %.031.i83.i914, %bb.hu ]
  %.3.i88.i = phi i64 [ %.130.i86.i, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i_crit_edge ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit57.i ], [ 0, %bb.hu ] ; 3 uses
  %i.aol = ptrtoint ptr %.132.i87.i to i64
  %i.aom = ptrtoint ptr %i.any to i64
  %i.aon = sub i64 %i.aol, %i.aom
  %i.aoo = trunc i64 %i.aon to i32
  %i.aop = add i32 %i.alj, %i.aoo                 ; 3 uses
  %i.aoq = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 4 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 24
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !78
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoq, i64 32 ; 3 uses
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !79 ; 2 uses
  %i.aov = ptrtoint ptr %i.aos to i64
  %i.aow = ptrtoint ptr %i.aou to i64
  %i.aox = sub i64 %i.aov, %i.aow
  %i.aoy = icmp ult i64 %i.aox, 15
  br i1 %i.aoy, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i
  %i.aoz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aoq, ptr noundef nonnull @.str.182, i64 noundef 15) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit95.i

bb.hx:                                            ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit92.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.aou, ptr noundef nonnull align 1 dereferenceable(15) @.str.182, i64 15, i1 false)
  %i.apa = load ptr, ptr %i.aot, align 8, !tbaa !79
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 15
  store ptr %i.apb, ptr %i.aot, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit95.i

_ZN4llvm11raw_ostreamlsEPKc.exit95.i:             ; preds = %bb.hx, %bb.hw
  %.0.i.i94.i = phi ptr [ %i.aoz, %bb.hw ], [ %i.aoq, %bb.hx ]
  %i.apc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i94.i, i64 noundef %.3.i88.i) #27 ; 3 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 24
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !78
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apc, i64 32 ; 3 uses
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !79 ; 2 uses
  %i.aph = icmp eq ptr %i.ape, %i.apg
  br i1 %i.aph, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit95.i
  %i.api = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.apc, ptr noundef nonnull @.str.25, i64 noundef 1) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit98.i

bb.hz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit95.i
  store i8 10, ptr %i.apg, align 1
  %i.apj = load ptr, ptr %i.apf, align 8, !tbaa !79
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 1
  store ptr %i.apk, ptr %i.apf, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit98.i

_ZN4llvm11raw_ostreamlsEPKc.exit98.i:             ; preds = %bb.hz, %bb.hy
  %.not43.i = icmp ult i32 %i.aop, %.sroa.3.12.extract.trunc.i
  br i1 %.not43.i, label %.preheader.i, label %_ZL17PrintLinkOptHintsPN4llvm6object15MachOObjectFileE.exit

.preheader.i:                                     ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit98.i
  %.not45.not121.not.i = icmp eq i64 %.3.i88.i, 0
  br i1 %.not45.not121.not.i, label %.lr.ph403.backedge, label %.lr.ph.i175

.lr.ph403.backedge:                               ; preds = %bb.ia, %.preheader.i
  %.034.i402.be = phi i32 [ %i.aop, %.preheader.i ], [ %i.aqf, %bb.ia ]
  br label %.lr.ph403

bb.ia:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit115.i
  %i.apl = add i32 %.0123.i, 1                    ; 2 uses
  %i.apm = zext i32 %i.apl to i64
  %.not45.not.i = icmp ugt i64 %.3.i88.i, %i.apm
  br i1 %.not45.not.i, label %.lr.ph.i175, label %.lr.ph403.backedge, !llvm.loop !484

.lr.ph.i175:                                      ; preds = %.preheader.i, %bb.ia
  %.0123.i = phi i32 [ %i.apl, %bb.ia ], [ 0, %.preheader.i ]
  %.135122.i = phi i32 [ %i.aqf, %bb.ia ], [ %i.aop, %.preheader.i ] ; 2 uses
  %i.apn = zext i32 %.135122.i to i64
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %i.apn ; 4 uses
  %i.app = ptrtoaddr ptr %i.apo to i64
  %i.apq = sub i64 0, %i.app
  %scevgep.i99.i = getelementptr i8, ptr %i.apo, i64 %i.apq
  br i1 %i.akq, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i, label %.lr.ph929, !prof !481

bb.ib:                                            ; preds = %bb.id
  %195 = add i32 %.028.i102.i928, 7
  br label %.lr.ph929, !llvm.loop !482

.lr.ph929:                                        ; preds = %.lr.ph.i175, %bb.ib
  %.028.i102.i928 = phi i32 [ %195, %bb.ib ], [ 0, %.lr.ph.i175 ] ; 5 uses
  %.029.i101.i927 = phi i64 [ %.130.i103.i, %bb.ib ], [ 0, %.lr.ph.i175 ]
  %.031.i100.i926 = phi ptr [ %i.apz, %bb.ib ], [ %i.apo, %.lr.ph.i175 ] ; 3 uses
  %i.apr = load i8, ptr %.031.i100.i926, align 1, !tbaa !18 ; 2 uses
  %i.aps = and i8 %i.apr, 127                     ; 3 uses
  %i.apt = zext nneg i8 %i.aps to i64
  %i.apu = icmp ugt i32 %.028.i102.i928, 62
  br i1 %i.apu, label %bb.ic, label %bb.id, !prof !483

bb.ic:                                            ; preds = %.lr.ph929
  %.not44.i106.i = icmp eq i32 %.028.i102.i928, 63
  %.not.i107.i = icmp samesign ugt i8 %i.aps, 1
  %i.apv = icmp ne i8 %i.aps, 0
  %or.cond43.i108.i = select i1 %.not44.i106.i, i1 %.not.i107.i, i1 %i.apv
  br i1 %or.cond43.i108.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i, label %bb.id

bb.id:                                            ; preds = %bb.ic, %.lr.ph929
  %i.apw = icmp ult i32 %.028.i102.i928, 64
  %196 = zext nneg i32 %.028.i102.i928 to i64
  %i.apx = shl i64 %i.apt, %196
  %i.apy = select i1 %i.apw, i64 %i.apx, i64 0, !prof !88
  %.130.i103.i = add i64 %i.apy, %.029.i101.i927  ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %.031.i100.i926, i64 1 ; 2 uses
  %i.aqa = icmp slt i8 %i.apr, 0
  br i1 %i.aqa, label %bb.ib, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i_crit_edge, !llvm.loop !482

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i_crit_edge: ; preds = %bb.id
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i, !llvm.loop !482

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i:   ; preds = %bb.ic, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i_crit_edge, %.lr.ph.i175
  %.132.i104.i = phi ptr [ %i.apz, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i_crit_edge ], [ %scevgep.i99.i, %.lr.ph.i175 ], [ %.031.i100.i926, %bb.ic ]
  %.3.i105.i = phi i64 [ %.130.i103.i, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i_crit_edge ], [ 0, %.lr.ph.i175 ], [ 0, %bb.ic ]
  %i.aqb = ptrtoint ptr %.132.i104.i to i64
  %i.aqc = ptrtoint ptr %i.apo to i64
  %i.aqd = sub i64 %i.aqb, %i.aqc
  %i.aqe = trunc i64 %i.aqd to i32
  %i.aqf = add i32 %.135122.i, %i.aqe             ; 3 uses
  %i.aqg = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 4 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 24
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !78
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqg, i64 32 ; 3 uses
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !79 ; 2 uses
  %i.aql = ptrtoint ptr %i.aqi to i64
  %i.aqm = ptrtoint ptr %i.aqk to i64
  %i.aqn = sub i64 %i.aql, %i.aqm
  %i.aqo = icmp ult i64 %i.aqn, 7
  br i1 %i.aqo, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i
  %i.aqp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aqg, ptr noundef nonnull @.str.183, i64 noundef 7) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit112.i

bb.if:                                            ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit109.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aqk, ptr noundef nonnull align 1 dereferenceable(7) @.str.183, i64 7, i1 false)
  %i.aqq = load ptr, ptr %i.aqj, align 8, !tbaa !79
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 7
  store ptr %i.aqr, ptr %i.aqj, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit112.i

_ZN4llvm11raw_ostreamlsEPKc.exit112.i:            ; preds = %bb.if, %bb.ie
  %.0.i.i111.i = phi ptr [ %i.aqp, %bb.ie ], [ %i.aqg, %bb.if ] ; 4 uses
  store ptr @.str.184, ptr %154, align 8, !tbaa !158, !alias.scope !485
  store i64 %.3.i105.i, ptr %i.akm, align 8, !tbaa !166, !alias.scope !485
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #27
  store ptr %154, ptr %153, align 8, !tbaa !167
  %i.aqs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i111.i, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.akn) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #27
  %i.aqt = getelementptr inbounds nuw i8, ptr %.0.i.i111.i, i64 24
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !78
  %i.aqv = getelementptr inbounds nuw i8, ptr %.0.i.i111.i, i64 32 ; 3 uses
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !79 ; 2 uses
  %i.aqx = icmp eq ptr %i.aqu, %i.aqw
  br i1 %i.aqx, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit112.i
  %i.aqy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i111.i, ptr noundef nonnull @.str.25, i64 noundef 1) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit115.i

bb.ih:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit112.i
  store i8 10, ptr %i.aqw, align 1
  %i.aqz = load ptr, ptr %i.aqv, align 8, !tbaa !79
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 1
  store ptr %i.ara, ptr %i.aqv, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit115.i

_ZN4llvm11raw_ostreamlsEPKc.exit115.i:            ; preds = %bb.ih, %bb.ig
  %.not44.not.i = icmp ult i32 %i.aqf, %.sroa.3.12.extract.trunc.i
  br i1 %.not44.not.i, label %bb.ia, label %_ZL17PrintLinkOptHintsPN4llvm6object15MachOObjectFileE.exit

_ZL17PrintLinkOptHintsPN4llvm6object15MachOObjectFileE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit98.i, %_ZN4llvm11raw_ostreamlsEPKc.exit54.i, %_ZN4llvm11raw_ostreamlsEPKc.exit115.i, %_ZN4llvm11raw_ostreamlsEPKc.exit48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %154)
  br label %bb.ii

bb.ii:                                            ; preds = %_ZL17PrintLinkOptHintsPN4llvm6object15MachOObjectFileE.exit, %bb.ge
  %i.arb = load i8, ptr @_ZN4llvm7objdump11RelocationsE, align 1, !tbaa !22, !range !190, !noundef !191
  %i.arc = trunc nuw i8 %i.arb to i1
  br i1 %i.arc, label %bb.ij, label %bb.ky

bb.ij:                                            ; preds = %bb.ii
  %i.ard = load i8, ptr @_ZN4llvm7objdump7VerboseE, align 1, !tbaa !22, !range !190, !noundef !191
  %i.are = trunc nuw i8 %i.ard to i1              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %142)
  call void @llvm.lifetime.start.p0(ptr nonnull %146)
  call void @llvm.lifetime.start.p0(ptr nonnull %147)
  call void @llvm.lifetime.start.p0(ptr nonnull %151)
  call void @llvm.lifetime.start.p0(ptr nonnull %152)
  %i.arf = call noundef nonnull align 4 dereferenceable(28) ptr @_ZNK4llvm6object15MachOObjectFile9getHeaderEv(ptr noundef nonnull align 8 dereferenceable(360) %2) #27
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 4
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !388
  %i.ari = zext i32 %i.arh to i64                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #27
  call void @_ZNK4llvm6object15MachOObjectFile22getDysymtabLoadCommandEv(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::dysymtab_command") align 4 %141, ptr noundef nonnull align 8 dereferenceable(360) %2) #27
  %i.arj = getelementptr inbounds nuw i8, ptr %141, i64 68 ; 2 uses
  %i.ark = load i32, ptr %i.arj, align 4, !tbaa !488
  %.not.i178 = icmp eq i32 %i.ark, 0
  br i1 %.not.i178, label %bb.ir, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.arl = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 4 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 24
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !78
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arl, i64 32 ; 3 uses
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !79 ; 2 uses
  %i.arq = ptrtoint ptr %i.arn to i64
  %i.arr = ptrtoint ptr %i.arp to i64
  %i.ars = sub i64 %i.arq, %i.arr
  %i.art = icmp ult i64 %i.ars, 32
  br i1 %i.art, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.aru = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.arl, ptr noundef nonnull @.str.187, i64 noundef 32) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i179

bb.im:                                            ; preds = %bb.ik
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.arp, ptr noundef nonnull align 1 dereferenceable(32) @.str.187, i64 32, i1 false)
  %i.arv = load ptr, ptr %i.aro, align 8, !tbaa !79
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 32
  store ptr %i.arw, ptr %i.aro, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i179

_ZN4llvm11raw_ostreamlsEPKc.exit.i179:            ; preds = %bb.im, %bb.il
  %.0.i.i.i180 = phi ptr [ %i.aru, %bb.il ], [ %i.arl, %bb.im ]
  %i.arx = load i32, ptr %i.arj, align 4, !tbaa !488
  %i.ary = zext i32 %i.arx to i64
  %i.arz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i180, i64 noundef %i.ary) #27 ; 3 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 24
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !78
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arz, i64 32 ; 3 uses
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !79 ; 2 uses
  %i.ase = ptrtoint ptr %i.asb to i64
  %i.asf = ptrtoint ptr %i.asd to i64
  %i.asg = sub i64 %i.ase, %i.asf
  %i.ash = icmp ult i64 %i.asg, 8
  br i1 %i.ash, label %bb.in, label %bb.io

bb.in:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i179
  %i.asi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.arz, ptr noundef nonnull @.str.145, i64 noundef 8) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit98.i181

bb.io:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i179
  store i64 8315168227310069024, ptr %i.asd, align 1
  %i.asj = load ptr, ptr %i.asc, align 8, !tbaa !79
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 8
  store ptr %i.ask, ptr %i.asc, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit98.i181

_ZN4llvm11raw_ostreamlsEPKc.exit98.i181:          ; preds = %bb.io, %bb.in
  %i.asl = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 3 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 24
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !78
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asl, i64 32 ; 3 uses
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !79 ; 2 uses
  %i.asq = ptrtoint ptr %i.asn to i64
  %i.asr = ptrtoint ptr %i.asp to i64
  %i.ass = sub i64 %i.asq, %i.asr
  %i.ast = icmp ult i64 %i.ass, 64
  br i1 %i.ast, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit98.i181
  %i.asu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.asl, ptr noundef nonnull @.str.188, i64 noundef 64) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit101.i

bb.iq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit98.i181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.asp, ptr noundef nonnull align 1 dereferenceable(64) @.str.188, i64 64, i1 false)
  %i.asv = load ptr, ptr %i.aso, align 8, !tbaa !79
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 64
  store ptr %i.asw, ptr %i.aso, align 8, !tbaa !79
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit101.i

_ZN4llvm11raw_ostreamlsEPKc.exit101.i:            ; preds = %bb.iq, %bb.ip
  %i.asx = call { i64, ptr } @_ZNK4llvm6object15MachOObjectFile12extrel_beginEv(ptr noundef nonnull align 8 dereferenceable(360) %2) #27 ; 2 uses
  %i.asy = extractvalue { i64, ptr } %i.asx, 0
  %i.asz = extractvalue { i64, ptr } %i.asx, 1
  %i.ata = call { i64, ptr } @_ZNK4llvm6object15MachOObjectFile10extrel_endEv(ptr noundef nonnull align 8 dereferenceable(360) %2) #27
  %i.atb = extractvalue { i64, ptr } %i.ata, 0
  call fastcc void @_ZL22PrintRelocationEntriesPKN4llvm6object15MachOObjectFileENS0_16content_iteratorINS0_13RelocationRefEEES6_mb(ptr noundef nonnull %2, i64 %i.asy, ptr %i.asz, i64 %i.atb, i64 noundef %i.ari, i1 noundef zeroext %i.are)
  br label %bb.ir

bb.ir:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit101.i, %bb.ij
  %i.atc = getelementptr inbounds nuw i8, ptr %141, i64 76 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !490
  %.not92.i = icmp eq i32 %i.atd, 0
  br i1 %.not92.i, label %bb.iv, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.ate = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  store ptr @.str.189, ptr %142, align 8, !tbaa !139, !alias.scope !491
  %i.atf = getelementptr inbounds nuw i8, ptr %142, i64 8
  %i.atg = load i32, ptr %i.atc, align 4, !tbaa !304, !noalias !491
  store i32 %i.atg, ptr %i.atf, align 8, !tbaa !147, !alias.scope !491
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #27
  store ptr %142, ptr %140, align 8, !tbaa !148
  %i.ath = ptrtoint ptr %140 to i64
  %i.ati = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.ate, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.ath) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #27
  %i.atj = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 3 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 24
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !78
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atj, i64 32 ; 3 uses
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !79 ; 2 uses
  %i.ato = ptrtoint ptr %i.atl to i64
  %i.atp = ptrtoint ptr %i.atn to i64
  %i.atq = sub i64 %i.ato, %i.atp
  %i.atr = icmp ult i64 %i.atq, 64
  br i1 %i.atr, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.ats = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.atj, ptr noundef nonnull @.str.188, i64 noundef 64) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit104.i

end_hunk_0
