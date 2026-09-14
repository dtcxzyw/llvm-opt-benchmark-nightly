Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TailDuplicator?download=true
inline.NumInlined: 2131
inline.NumDeleted: 1079
begin_hunk_0_@_ZN4llvm14TailDuplicator13tailDuplicateEbPNS_17MachineBasicBlockES2_RNS_15SmallVectorImplIS2_EERNS3_IPNS_12MachineInstrEEEPS4_:bb.a
  %i.my = load ptr, ptr %i.f, align 8, !tbaa !267 ; 2 uses
  %i.mz = call ptr @_ZN4llvm17MachineBasicBlock14getFirstNonPHIEv(ptr noundef nonnull align 8 dereferenceable(360) %2) #19 ; 2 uses
  %.not245283 = icmp eq ptr %i.my, %i.mz
  br i1 %.not245283, label %._crit_edge287, label %.lr.ph286

._crit_edge287:                                   ; preds = %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit207, %bb.be
  call void @_ZN4llvm14TailDuplicator12appendCopiesEPNS_17MachineBasicBlockERNS_15SmallVectorImplISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEEEERNS3_IPNS_12MachineInstrEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %i.lp, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.na = load ptr, ptr %16, align 8, !tbaa !33   ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.ll
  br i1 %i.nb, label %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEELj4EED2Ev.exit196, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge287
  call void @free(ptr noundef %i.na) #19
  br label %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEELj4EED2Ev.exit196

_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEELj4EED2Ev.exit196: ; preds = %._crit_edge287, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.nc = load i32, ptr %i.lo, align 4, !tbaa !280 ; 2 uses
  %i.nd = icmp eq i32 %i.nc, 0
  br i1 %i.nd, label %_ZN4llvm8DenseMapINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit197, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEELj4EED2Ev.exit196
  %i.ne = load ptr, ptr %15, align 8, !tbaa !281
  %i.nf = zext i32 %i.nc to i64                   ; 2 uses
  %i.ng = mul nuw nsw i64 %i.nf, 12
  %i.nh = add nuw nsw i64 %i.nf, 31
  %i.ni = lshr i64 %i.nh, 3
  %i.nj = and i64 %i.ni, 1073741820
  %i.nk = add nuw nsw i64 %i.nj, %i.ng
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ne, i64 noundef %i.nk, i64 noundef 4) #19
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit197

_ZN4llvm8DenseMapINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit197: ; preds = %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEELj4EED2Ev.exit196, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.bh

.lr.ph286:                                        ; preds = %bb.be, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit207
  %.sroa.0208.0284 = phi ptr [ %i.nv, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit207 ], [ %i.my, %bb.be ] ; 6 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i199 = load i64, ptr %.sroa.0208.0284, align 8
  %i.nl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i199, 4
  %.not.i.i.i.i.i200 = icmp eq i64 %i.nl, 0
  br i1 %.not.i.i.i.i.i200, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i202, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit207

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i202: ; preds = %.lr.ph286
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0208.0284, i64 44
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !274
  %i.no = and i32 %i.nn, 8
  %.not34.i.i.i.i.i203 = icmp eq i32 %i.no, 0
  br i1 %.not34.i.i.i.i.i203, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit207, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i204

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i204: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i202, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i204
  %.sroa.0.05.i.i.i.i.i205 = phi ptr [ %i.nq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i204 ], [ %.sroa.0208.0284, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i202 ]
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i205, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !267 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 44
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !274
  %i.nt = and i32 %i.ns, 8
  %.not3.i.i.i.i.i206 = icmp eq i32 %i.nt, 0
  br i1 %.not3.i.i.i.i.i206, label %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit207, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i204, !llvm.loop !4

_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit207: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i204, %.lr.ph286, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i202
  %.sroa.0.1.i.i.i.i.i201 = phi ptr [ %.sroa.0208.0284, %.lr.ph286 ], [ %.sroa.0208.0284, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i202 ], [ %i.nq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i204 ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i201, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !267 ; 2 uses
  call void @_ZN4llvm14TailDuplicator10processPHIEPNS_12MachineInstrEPNS_17MachineBasicBlockES4_RNS_8DenseMapINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEERNS_15SmallVectorImplISt4pairIS6_S8_EEERKNS_8DenseSetIS6_SA_EEb(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %.sroa.0208.0284, ptr noundef nonnull %2, ptr noundef %i.lp, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext false)
  %.not245 = icmp eq ptr %i.nv, %i.mz
  br i1 %.not245, label %._crit_edge287, label %.lr.ph286

bb.bh:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.thread, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit, %_ZN4llvm8DenseMapINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev.exit197
  %i.nw = getelementptr inbounds nuw i8, ptr %.0125289, i64 8 ; 2 uses
  %.not143 = icmp eq ptr %i.nw, %i.lj
  br i1 %.not143, label %.loopexit, label %bb.av

.loopexit:                                        ; preds = %bb.bh, %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread, %bb.au, %bb.at
  %.1 = phi i1 [ %.mux, %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread ], [ %i.kz, %bb.at ], [ true, %bb.au ], [ true, %bb.bh ]
  %i.nx = load ptr, ptr %12, align 8, !tbaa !33   ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.hs
  br i1 %i.ny, label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.nx) #19
  br label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit: ; preds = %.loopexit, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.nz = load ptr, ptr %i.de, align 8, !tbaa !33 ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.df
  br i1 %i.oa, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit
  call void @free(ptr noundef %i.nz) #19
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit.i: ; preds = %bb.bj, %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit
  %i.ob = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !265 ; 2 uses
  %i.od = icmp eq i32 %i.oc, 0
  br i1 %i.od, label %_ZN4llvm9SetVectorIPNS_17MachineBasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit.i
  %i.oe = load ptr, ptr %9, align 8, !tbaa !266
  %i.of = zext i32 %i.oc to i64                   ; 2 uses
  %i.og = shl nuw nsw i64 %i.of, 3
  %i.oh = add nuw nsw i64 %i.of, 31
  %i.oi = lshr i64 %i.oh, 3
  %i.oj = and i64 %i.oi, 1073741820
  %i.ok = add nuw nsw i64 %i.oj, %i.og
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.oe, i64 noundef %i.ok, i64 noundef 8) #19
  br label %_ZN4llvm9SetVectorIPNS_17MachineBasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EED2Ev.exit

_ZN4llvm9SetVectorIPNS_17MachineBasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj8EED2Ev.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm9SetVectorIPNS_17MachineBasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EED2Ev.exit, %bb.i
  %.2 = phi i1 [ %i.dd, %bb.i ], [ %.1, %_ZN4llvm9SetVectorIPNS_17MachineBasicBlockENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EED2Ev.exit ]
  %i.ol = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !270 ; 2 uses
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oo = load ptr, ptr %8, align 8, !tbaa !272
  %i.op = zext i32 %i.om to i64                   ; 2 uses
  %i.oq = add nuw nsw i64 %i.op, 31
  %i.or = lshr i64 %i.oq, 5
  %i.os = add nuw nsw i64 %i.or, %i.op
  %i.ot = shl nuw nsw i64 %i.os, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.oo, i64 noundef %i.ot, i64 noundef 4) #19
  br label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret i1 %.2
}

declare void @_ZN4llvm17MachineSSAUpdaterC1ERNS_15MachineFunctionEPNS_15SmallVectorImplIPNS_12MachineInstrEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14TailDuplicator20updateSuccessorsPHIsEPNS_17MachineBasicBlockEbRNS_15SmallVectorImplIS2_EERNS_14SmallSetVectorIS2_Lj8EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef readonly captures(address) %1, i1 noundef zeroext %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 10 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 11 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !175  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not151 = icmp eq i32 %i.d, 0
  br i1 %.not151, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.b

._crit_edge155:                                   ; preds = %.critedge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph154, %.critedge
  %.0152 = phi ptr [ %i.b, %.lr.ph154 ], [ %i.dp, %.critedge ] ; 2 uses
  %i.v = load ptr, ptr %.0152, align 8, !tbaa !275 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %.sroa.0115.0145 = load ptr, ptr %i.w, align 8, !tbaa !267 ; 2 uses
  %.not117146 = icmp eq ptr %.sroa.0115.0145, %i.x
  br i1 %.not117146, label %.critedge, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.b, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.0115.0147 = phi ptr [ %.sroa.0115.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.0115.0145, %bb.b ] ; 20 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0115.0147, i64 52
  %i.z = load i32, ptr %i.y, align 4, !tbaa !261
  switch i32 %i.z, label %.critedge [
    i32 74, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph149, %.lr.ph149
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !276 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0115.0147, i64 40
  %i.ac = load i24, ptr %i.ab, align 8            ; 2 uses
  %i.ad = zext i24 %i.ac to i32                   ; 3 uses
  %.not87124 = icmp eq i24 %i.ac, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0115.0147, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !262 ; 2 uses
  br i1 %.not87124, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.083125 = phi i32 [ %i.aj, %bb.d ], [ 1, %bb.c ] ; 3 uses
  %i.ae = add i32 %.083125, 1
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !255
  %.not88 = icmp eq ptr %i.ai, %1
  br i1 %.not88, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aj = add i32 %.083125, 2                     ; 2 uses
  %.not87 = icmp eq i32 %i.aj, %i.ad
  br i1 %.not87, label %._crit_edge, label %.lr.ph, !llvm.loop !361

._crit_edge:                                      ; preds = %.lr.ph, %bb.d, %bb.c
  %.286 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %.083125, %.lr.ph ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0115.0147, i64 32 ; 5 uses
  %i.al = zext i32 %.286 to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !255 ; 5 uses
  br i1 %2, label %.preheader, label %.loopexit121

.preheader:                                       ; preds = %._crit_edge
  %.082128 = add nsw i32 %i.ad, -2                ; 2 uses
  %.not89129 = icmp eq i32 %.082128, %.286
  br i1 %.not89129, label %.loopexit121, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader, %bb.f
  %.082131 = phi i32 [ %.082, %bb.f ], [ %.082128, %.preheader ] ; 3 uses
  %.082.in130 = phi i32 [ %.082131, %bb.f ], [ %i.ad, %.preheader ]
  %i.ap = add i32 %.082.in130, -1                 ; 2 uses
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !262
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !255
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph132
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0115.0147, i32 noundef %i.ap) #19
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0115.0147, i32 noundef %.082131) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph132
  %.082 = add i32 %.082131, -2                    ; 2 uses
  %.not89 = icmp eq i32 %.082, %.286
  br i1 %.not89, label %.loopexit121, label %.lr.ph132, !llvm.loop !362

.loopexit121:                                     ; preds = %bb.f, %.preheader, %._crit_edge
  %.3 = phi i32 [ 0, %._crit_edge ], [ %.286, %.preheader ], [ %.286, %bb.f ] ; 6 uses
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !231, !noalias !380 ; 3 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !232, !noalias !380 ; 2 uses
  %i.ay = load i32, ptr %i.j, align 4, !tbaa !230, !noalias !380 ; 4 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit121
  %i.ba = add i32 %i.ay, -1                       ; 2 uses
  %i.bb = mul i32 %i.ao, 37
  %.017.i.i.i.i = and i32 %i.ba, %i.bb            ; 3 uses
  %i.bc = zext i32 %.017.i.i.i.i to i64           ; 2 uses
  %i.bd = lshr i64 %i.bc, 5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !233, !noalias !381
  %i.bg = and i32 %.017.i.i.i.i, 31
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !248

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = add nuw i32 %.018.i.i.i.i, 1
  %.0.i.i.i.i = and i32 %i.bj, %i.ba              ; 3 uses
  %i.bk = zext i32 %.0.i.i.i.i to i64             ; 2 uses
  %i.bl = lshr i64 %i.bk, 5
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !233, !noalias !381
  %i.bo = and i32 %.0.i.i.i.i, 31
  %i.bp = lshr i32 %i.bn, %i.bo
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !249

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %i.br = phi i64 [ %i.bk, %bb.h ], [ %i.bc, %bb.g ]
  %.018.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.h ], [ %.017.i.i.i.i, %bb.g ]
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !251, !noalias !381
  %i.bu = icmp eq i32 %i.ao, %i.bt
  br i1 %i.bu, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt6vectorISt4pairIPNS_17MachineBasicBlockES2_ESaIS7_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E4findERKS2_.exit.loopexit, label %bb.h, !prof !252

.loopexit.i.i:                                    ; preds = %bb.h, %bb.g, %.loopexit121
  %i.bv = zext i32 %i.ay to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.bv
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt6vectorISt4pairIPNS_17MachineBasicBlockES2_ESaIS7_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E4findERKS2_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt6vectorISt4pairIPNS_17MachineBasicBlockES2_ESaIS7_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E4findERKS2_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre161 = zext i32 %i.ay to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt6vectorISt4pairIPNS_17MachineBasicBlockES2_ESaIS7_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E4findERKS2_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt6vectorISt4pairIPNS_17MachineBasicBlockES2_ESaIS7_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E4findERKS2_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt6vectorISt4pairIPNS_17MachineBasicBlockES2_ESaIS7_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E4findERKS2_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre161, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt6vectorISt4pairIPNS_17MachineBasicBlockES2_ESaIS7_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E4findERKS2_.exit.loopexit ], [ %i.bv, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.bs, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt6vectorISt4pairIPNS_17MachineBasicBlockES2_ESaIS7_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E4findERKS2_.exit.loopexit ], [ %i.bw, %.loopexit.i.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.pre-phi
  %.not118 = icmp eq ptr %.lcssa.sink.i.i, %i.bx
  br i1 %.not118, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt6vectorISt4pairIPNS_17MachineBasicBlockES2_ESaIS7_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E4findERKS2_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !253 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !253 ; 2 uses
  %.not119133 = icmp eq ptr %i.bz, %i.cb
  br i1 %.not119133, label %.loopexit, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.i, %bb.m
  %.4135 = phi i32 [ %.6, %bb.m ], [ %.3, %bb.i ] ; 4 uses
  %.sroa.094.0134 = phi ptr [ %i.cn, %bb.m ], [ %i.bz, %bb.i ] ; 3 uses
  %i.cc = load ptr, ptr %.sroa.094.0134, align 8, !tbaa !257 ; 3 uses
  %i.cd = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock11isSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.cc, ptr noundef nonnull %i.v) #19
  br i1 %i.cd, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph137
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.094.0134, i64 8
  %.sroa.013.0.copyload = load i32, ptr %i.ce, align 8, !tbaa !233 ; 2 uses
  %.not93 = icmp eq i32 %.4135, 0
  br i1 %.not93, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load ptr, ptr %i.ak, align 8, !tbaa !262
  %i.cg = zext i32 %.4135 to i64
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %i.cg
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i32 %.sroa.013.0.copyload) #19
  %i.ci = add i32 %.4135, 1
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !262
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cc, ptr %i.cm, align 8, !tbaa !255
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr null, ptr %i.k, align 8, !tbaa !260, !alias.scope !382
  store i32 %.sroa.013.0.copyload, ptr %i.l, align 4, !tbaa !255, !alias.scope !382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !alias.scope !382
  store i32 0, ptr %8, align 8, !alias.scope !382
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0115.0147, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr null, ptr %i.n, align 8, !tbaa !260, !alias.scope !383
  store ptr %i.cc, ptr %i.o, align 8, !tbaa !255, !alias.scope !383
  store i32 4, ptr %7, align 8, !alias.scope !383
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0115.0147, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.lr.ph137
  %.6 = phi i32 [ %.4135, %.lr.ph137 ], [ 0, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.094.0134, i64 16 ; 2 uses
  %.not119 = icmp eq ptr %i.cn, %i.cb
  br i1 %.not119, label %.loopexit, label %.lr.ph137

bb.n:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterESt6vectorISt4pairIPNS_17MachineBasicBlockES2_ESaIS7_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEES2_S9_SB_SE_E4findERKS2_.exit
  %i.co = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %i.cp = load i32, ptr %i.p, align 8, !tbaa !175 ; 3 uses
  %i.cq = zext i32 %i.cp to i64
  %.idx156 = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx156
  %.not90139 = icmp eq i32 %i.cp, 0
  br i1 %.not90139, label %.loopexit, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %bb.n
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !275 ; 2 uses
  %.not91.peel = icmp eq i32 %.3, 0
  br i1 %.not91.peel, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph143.preheader
  %i.ct = load ptr, ptr %i.ak, align 8, !tbaa !262
  %i.cu = zext i32 %.3 to i64
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.ct, i64 %i.cu
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i32 %i.ao) #19
  %i.cw = add i32 %.3, 1
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !262
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.cs, ptr %i.da, align 8, !tbaa !255
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph143.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr null, ptr %i.q, align 8, !tbaa !260, !alias.scope !384
  store i32 %i.ao, ptr %i.r, align 4, !tbaa !255, !alias.scope !384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !384
  store i32 0, ptr %6, align 8, !alias.scope !384
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0115.0147, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr null, ptr %i.t, align 8, !tbaa !260, !alias.scope !385
  store ptr %i.cs, ptr %i.u, align 8, !tbaa !255, !alias.scope !385
  store i32 4, ptr %5, align 8, !alias.scope !385
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0115.0147, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not90.peel = icmp eq i32 %i.cp, 1
  br i1 %.not90.peel, label %.loopexit.thread, label %.lr.ph143.peel.next

.lr.ph143.peel.next:                              ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph143.peel.next, %bb.r
  %.080141 = phi ptr [ %i.dd, %bb.r ], [ %i.db, %.lr.ph143.peel.next ] ; 2 uses
  %i.dc = load ptr, ptr %.080141, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr null, ptr %i.q, align 8, !tbaa !260, !alias.scope !384
  store i32 %i.ao, ptr %i.r, align 4, !tbaa !255, !alias.scope !384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !384
  store i32 0, ptr %6, align 8, !alias.scope !384
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0115.0147, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr null, ptr %i.t, align 8, !tbaa !260, !alias.scope !385
  store ptr %i.dc, ptr %i.u, align 8, !tbaa !255, !alias.scope !385
  store i32 4, ptr %5, align 8, !alias.scope !385
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0115.0147, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.dd = getelementptr inbounds nuw i8, ptr %.080141, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.dd, %i.cr
  br i1 %.not90, label %.loopexit.thread, label %bb.r, !llvm.loop !379

.loopexit:                                        ; preds = %bb.m, %bb.i, %bb.n
  %.9 = phi i32 [ %.3, %bb.i ], [ %.3, %bb.n ], [ %.6, %bb.m ] ; 3 uses
  %.not92 = icmp eq i32 %.9, 0
  br i1 %.not92, label %.loopexit.thread, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.de = add i32 %.9, 1
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0115.0147, i32 noundef %i.de) #19
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0115.0147, i32 noundef %.9) #19
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.r, %bb.q, %.loopexit, %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0115.0147) ]
end_hunk_0
