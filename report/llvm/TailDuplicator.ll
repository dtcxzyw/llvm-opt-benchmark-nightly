Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TailDuplicator?download=true
inline.NumInlined: 2131
inline.NumDeleted: 1079
begin_hunk_0_@_ZN4llvm14TailDuplicator13tailDuplicateEbPNS_17MachineBasicBlockES2_RNS_15SmallVectorImplIS2_EERNS3_IPNS_12MachineInstrEEEPS4_:bb.a
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !21
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 296
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call noundef zeroext i1 %i.if(ptr noundef nonnull align 8 dereferenceable(112) %i.ic, ptr noundef nonnull align 8 dereferenceable(360) %.0132, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %12, i1 noundef zeroext false) #19
  %i.ih = load i32, ptr %i.ht, align 8
  %.not.i166 = icmp ne i32 %i.ih, 0
  %or.cond240.not = select i1 %i.ig, i1 true, i1 %.not.i166
  br i1 %or.cond240.not, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ii = load ptr, ptr %i.c, align 8, !tbaa !275 ; 2 uses
  %.not142 = icmp eq ptr %i.ii, null
  %i.ij = icmp eq ptr %i.ii, %2
  %or.cond = or i1 %.not142, %i.ij
  br i1 %or.cond, label %bb.ai, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !175
  %i.im = icmp eq i32 %i.il, 1
  br i1 %i.im, label %bb.aj, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 217
  %i.io = load i8, ptr %i.in, align 1, !tbaa !227, !range !29, !noundef !30
  %i.ip = trunc nuw i8 %i.io to i1
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ir = load ptr, ptr %i.iq, align 8
  %.not.i167 = icmp ne ptr %i.ir, null
  %or.cond.not.i168 = select i1 %i.ip, i1 true, i1 %.not.i167
  br i1 %or.cond.not.i168, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit

_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit: ; preds = %bb.aj
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 330
  %i.it = load i8, ptr %i.is, align 2, !tbaa !228, !range !29, !noundef !30
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit
  %i.iv = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !21
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 312
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call noundef i32 %i.iy(ptr noundef nonnull align 8 dereferenceable(112) %i.iv, ptr noundef nonnull align 8 dereferenceable(360) %.0132, ptr noundef null) #19
  %i.ja = call ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360) %.0132) #19
  %i.jb = getelementptr inbounds nuw i8, ptr %.0132, i64 48 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.je = load i8, ptr %i.jd, align 8, !tbaa !174, !range !29, !noundef !30
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.jg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.jg, ptr %14, align 8, !tbaa !33
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.jh, align 8, !tbaa !175
  %i.ji = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 4, ptr %i.ji, align 4, !tbaa !176
  %i.jj = load ptr, ptr %i.f, align 8, !tbaa !267 ; 3 uses
  %.not242264 = icmp eq ptr %i.jj, %i.g
  br i1 %.not242264, label %.critedge, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.am, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit
  %.sroa.0220.0265 = phi ptr [ %i.jw, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit ], [ %i.jj, %bb.am ] ; 8 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0220.0265, i64 52
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !261
  switch i32 %i.jl, label %.critedge [
    i32 74, label %bb.an
    i32 0, label %bb.an
  ]

bb.an:                                            ; preds = %.lr.ph267, %.lr.ph267
  %.0.copyload.i.i.i.i.i.i.i.i.i.i171 = load i64, ptr %.sroa.0220.0265, align 8
  %i.jm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i171, 4
  %.not.i.i.i.i172 = icmp eq i64 %i.jm, 0
  br i1 %.not.i.i.i.i172, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.an
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0220.0265, i64 44
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !274
  %i.jp = and i32 %i.jo, 8
  %.not34.i.i.i.i174 = icmp eq i32 %i.jp, 0
  br i1 %.not34.i.i.i.i174, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i175 = phi ptr [ %i.jr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.0220.0265, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i175, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !267 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 44
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !274
  %i.ju = and i32 %i.jt, 8
  %.not3.i.i.i.i176 = icmp eq i32 %i.ju, 0
  br i1 %.not3.i.i.i.i176, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %bb.an, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i
  %.sroa.0.1.i.i.i.i173 = phi ptr [ %.sroa.0220.0265, %bb.an ], [ %.sroa.0220.0265, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.jr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i173, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !267 ; 3 uses
  call void @_ZN4llvm14TailDuplicator10processPHIEPNS_12MachineInstrEPNS_17MachineBasicBlockES4_RNS_8DenseMapINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEERNS_15SmallVectorImplISt4pairIS6_S8_EEERKNS_8DenseSetIS6_SA_EEb(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %.sroa.0220.0265, ptr noundef nonnull %2, ptr noundef nonnull %.0132, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext true)
  %.not242 = icmp eq ptr %i.jw, %i.g
  br i1 %.not242, label %.critedge, label %.lr.ph267, !llvm.loop !353

.critedge:                                        ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit, %.lr.ph267, %bb.am
  %.sroa.0220.0.lcssa = phi ptr [ %i.jj, %bb.am ], [ %.sroa.0220.0265, %.lr.ph267 ], [ %i.jw, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit ] ; 2 uses
  %.not243271 = icmp eq ptr %.sroa.0220.0.lcssa, %i.g
  br i1 %.not243271, label %._crit_edge274, label %.lr.ph273

.lr.ph273:                                        ; preds = %.critedge, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit186
  %.sroa.0220.1272 = phi ptr [ %i.kh, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit186 ], [ %.sroa.0220.0.lcssa, %.critedge ] ; 7 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i178 = load i64, ptr %.sroa.0220.1272, align 8
  %i.jx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i178, 4
  %.not.i.i.i.i179 = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.i.i179, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i181, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit186

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i181: ; preds = %.lr.ph273
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0220.1272, i64 44
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !274
  %i.ka = and i32 %i.jz, 8
  %.not34.i.i.i.i182 = icmp eq i32 %i.ka, 0
  br i1 %.not34.i.i.i.i182, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit186, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i183

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i183: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i181, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i183
  %.sroa.0.05.i.i.i.i184 = phi ptr [ %i.kc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i183 ], [ %.sroa.0220.1272, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i181 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i184, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !267 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 44
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !274
  %i.kf = and i32 %i.ke, 8
  %.not3.i.i.i.i185 = icmp eq i32 %i.kf, 0
  br i1 %.not3.i.i.i.i185, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit186, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i183, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit186: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i183, %.lr.ph273, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i181
  %.sroa.0.1.i.i.i.i180 = phi ptr [ %.sroa.0220.1272, %.lr.ph273 ], [ %.sroa.0220.1272, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i181 ], [ %i.kc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i183 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i180, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !267 ; 2 uses
  call void @_ZN4llvm14TailDuplicator20duplicateInstructionEPNS_12MachineInstrEPNS_17MachineBasicBlockES4_RNS_8DenseMapINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEERKNS_8DenseSetIS6_SA_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %.sroa.0220.1272, ptr noundef nonnull %2, ptr noundef nonnull %.0132, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %8)
  %i.ki = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0220.1272) #19 ; 0 uses
  %.not243 = icmp eq ptr %i.kh, %i.g
  br i1 %.not243, label %._crit_edge274, label %.lr.ph273, !llvm.loop !354

._crit_edge274:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit186, %.critedge
  call void @_ZN4llvm14TailDuplicator12appendCopiesEPNS_17MachineBasicBlockERNS_15SmallVectorImplISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEEEERNS3_IPNS_12MachineInstrEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %.0132, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.kj = load ptr, ptr %14, align 8, !tbaa !33   ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.jg
  br i1 %i.kk, label %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEELj4EED2Ev.exit187, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge274
  call void @free(ptr noundef %i.kj) #19
  br label %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEELj4EED2Ev.exit187

_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEELj4EED2Ev.exit187: ; preds = %._crit_edge274, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZN4llvm8DenseMapINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.kl = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !21
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 312
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = call noundef i32 %i.ko(ptr noundef nonnull align 8 dereferenceable(112) %i.kl, ptr noundef nonnull align 8 dereferenceable(360) %.0132, ptr noundef null) #19 ; 0 uses
  %i.kq = load ptr, ptr %i.f, align 8, !tbaa !267
  call void @_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_(ptr noundef nonnull align 8 dereferenceable(360) %.0132, ptr nonnull %i.jb, ptr noundef nonnull %2, ptr %i.kq, ptr nonnull %i.g)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_15TargetInstrInfo13RegSubRegPairEELj4EED2Ev.exit187
  %i.kr = load ptr, ptr %i.hy, align 8, !tbaa !33
  %i.ks = call noundef ptr @_ZN4llvm17MachineBasicBlock15removeSuccessorEPPS0_b(ptr noundef nonnull align 8 dereferenceable(360) %.0132, ptr noundef %i.kr, i1 noundef zeroext false) #19 ; 0 uses
  call void @_ZN4llvm17MachineBasicBlock18transferSuccessorsEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %.0132, ptr noundef nonnull %2) #19
  br i1 %i.e, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !276
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 296
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !277 ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.kv
  %spec.select.i.i188 = select i1 %i.ky, ptr null, ptr %i.kx
  call void @_ZN4llvm17MachineBasicBlock16updateTerminatorEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %.0132, ptr noundef %spec.select.i.i188) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %.0132)
  br label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread

bb.at:                                            ; preds = %bb.ak
  %i.kz = icmp ne i32 %i.iz, 0
  %i.la = trunc nuw i8 %.0128.lcssa to i1
  br i1 %i.la, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread, label %.loopexit

_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread: ; preds = %bb.at, %bb.as, %bb.aj, %bb.ah, %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit, %bb.ai, %bb.ag, %bb.af, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.4 = phi i8 [ %.0128.lcssa, %bb.ag ], [ %.0128.lcssa, %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit ], [ %.0128.lcssa, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %.0128.lcssa, %bb.ai ], [ %.0128.lcssa, %bb.ah ], [ %.0128.lcssa, %bb.aj ], [ %.0128.lcssa, %bb.af ], [ 1, %bb.as ], [ 1, %bb.at ]
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lc = load i8, ptr %i.lb, align 8, !tbaa !174, !range !29, !noundef !30
  %i.ld = trunc nuw i8 %i.lc to i1                ; 2 uses
  %i.le = trunc nuw i8 %.4 to i1                  ; 2 uses
  %.not364 = xor i1 %i.ld, true
  %i.lf = select i1 %i.ld, i1 %i.le, i1 false
  %.mux = select i1 %.not364, i1 %i.le, i1 false
  br i1 %i.lf, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit.thread
  %i.lg = load ptr, ptr %i.de, align 8, !tbaa !33 ; 2 uses
  %i.lh = load i32, ptr %i.dg, align 8, !tbaa !175 ; 2 uses
  %i.li = zext i32 %i.lh to i64
  %.idx294 = shl nuw nsw i64 %i.li, 3
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.idx294
  %.not143288 = icmp eq i32 %i.lh, 0
  br i1 %.not143288, label %.loopexit, label %.lr.ph291

.lr.ph291:                                        ; preds = %bb.au
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.lo = getelementptr inbounds nuw i8, ptr %15, i64 20
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph291, %bb.bh
  %.0125289 = phi ptr [ %i.lg, %.lr.ph291 ], [ %i.nw, %bb.bh ] ; 2 uses
  %i.lp = load ptr, ptr %.0125289, align 8, !tbaa !275 ; 10 uses
  %i.lq = load ptr, ptr %4, align 8, !tbaa !33    ; 4 uses
  %i.lr = load i32, ptr %i.lk, align 8, !tbaa !175 ; 3 uses
  %i.ls = zext i32 %i.lr to i64                   ; 2 uses
  %.idx4.i = shl nuw nsw i64 %i.ls, 3             ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 %.idx4.i
  %i.lu = lshr i64 %i.ls, 2                       ; 2 uses
  %.not.i189 = icmp eq i64 %i.lu, 0
  br i1 %.not.i189, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.av
  %i.lv = and i64 %.idx4.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.lq, i64 %i.lv
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.lu, %.lr.ph.i.i.i.i ], [ %i.mi, %bb.ba ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.lq, %.lr.ph.i.i.i.i ], [ %i.mh, %bb.ba ] ; 9 uses
  %i.lw = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !275
  %i.lx = icmp eq ptr %i.lw, %i.lp
  br i1 %i.lx, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ly = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !275
  %i.ma = icmp eq ptr %i.lz, %i.lp
  br i1 %i.ma, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mb = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !275
  %i.md = icmp eq ptr %i.mc, %i.lp
  br i1 %i.md, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit356, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.me = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !275
  %i.mg = icmp eq ptr %i.mf, %i.lp
  br i1 %i.mg, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit358, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.mi = add nsw i64 %.047.i.i.i.i, -1
  %i.mj = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.mj, label %bb.aw, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !5

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.ba
  %i.mk = and i32 %i.lr, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.av
  %.pre-phi56.i.i.i.i = phi i32 [ %i.mk, %._crit_edge.loopexit.i.i.i.i ], [ %i.lr, %bb.av ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.lq, %bb.av ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.thread [
    i32 3, label %bb.bb
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ml = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !275
  %i.mm = icmp eq ptr %i.ml, %i.lp
  br i1 %i.mm, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mn = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.bc
  %.1.i.i.i.i = phi ptr [ %i.mn, %bb.bc ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.mo = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !275
  %i.mp = icmp eq ptr %i.mo, %i.lp
  br i1 %i.mp, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.bd
  %.2.i.i.i.i = phi ptr [ %i.mq, %bb.bd ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.mr = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !275
  %i.ms = icmp eq ptr %i.mr, %i.lp
  br i1 %i.ms, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.ax
  %i.mt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit356: ; preds = %bb.ay
  %i.mu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit358: ; preds = %bb.az
  %i.mv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit: ; preds = %bb.aw, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit356, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit358, %bb.bb, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.bb ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.mv, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit358 ], [ %i.mu, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit356 ], [ %i.mt, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.aw ]
  %.not244 = icmp eq ptr %.028.i.i.i.i, %i.lt
  br i1 %.not244, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.thread, label %bb.bh

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lp, i64 120
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !175
  %.not144 = icmp eq i32 %i.mx, 1
  br i1 %.not144, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPNS_17MachineBasicBlockEEES3_EEbOT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr %i.ll, ptr %16, align 8, !tbaa !33
  store i32 0, ptr %i.lm, align 8, !tbaa !175
  store i32 4, ptr %i.ln, align 4, !tbaa !176
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
end_hunk_0
