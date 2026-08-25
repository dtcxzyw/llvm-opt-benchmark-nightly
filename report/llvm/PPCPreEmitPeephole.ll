Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCPreEmitPeephole?download=true
inline.NumInlined: 1068
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_118PPCPreEmitPeephole20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a

bb.cs:                                            ; preds = %.lr.ph438
  %i.abo = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0313.0436, i32 %i.aas, ptr noundef %i.ep, i1 noundef zeroext false) #17
  %.not387 = icmp ne i32 %i.abo, -1
  %spec.select = select i1 %.not387, i1 true, i1 %.0177437
  %.0.copyload.i.i.i.i.i.i.i.i.i.i263 = load i64, ptr %.sroa.0313.0436, align 8
  %i.abp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i263, -8
  %i.abq = inttoptr i64 %i.abp to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abq) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i264 = load i64, ptr %i.abq, align 8
  %i.abr = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i264, 4
  %.not.i.i.i.i.i265 = icmp eq i64 %i.abr, 0
  br i1 %.not.i.i.i.i.i265, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i267, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit273

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i267: ; preds = %bb.cs
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 44
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !283
  %i.abu = and i32 %i.abt, 4
  %.not45.i.i.i.i.i268 = icmp eq i32 %i.abu, 0
  br i1 %.not45.i.i.i.i.i268, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit273, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i269

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i269: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i267, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i269
  %.sroa.0.06.i.i.i.i.i270 = phi ptr [ %i.abw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i269 ], [ %i.abq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i267 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i271 = load i64, ptr %.sroa.0.06.i.i.i.i.i270, align 8
  %i.abv = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i271, -8
  %i.abw = inttoptr i64 %i.abv to ptr             ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 44
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !283
  %i.abz = and i32 %i.aby, 4
  %.not4.i.i.i.i.i272 = icmp eq i32 %i.abz, 0
  br i1 %.not4.i.i.i.i.i272, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit273, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i269, !llvm.loop !397

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit273: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i269, %bb.cs, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i267
  %.sroa.0.1.i.i.i.i.i266 = phi ptr [ %i.abq, %bb.cs ], [ %i.abq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i267 ], [ %i.abw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i269 ] ; 2 uses
  %.not385 = icmp eq ptr %.sroa.0.1.i.i.i.i.i266, %i.go
  br i1 %.not385, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit291, label %.lr.ph438, !llvm.loop !398

.critedge8:                                       ; preds = %bb.cr
  %i.aca = load i32, ptr %i.aan, align 4, !tbaa !273 ; 2 uses
  %i.acb = icmp eq i32 %i.aca, 607
  %i.acc = icmp eq i32 %i.abi, 731
  %or.cond = and i1 %i.acc, %i.acb
  br i1 %or.cond, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.critedge8
  %i.acd = icmp eq i32 %i.aca, 556
  %i.ace = icmp eq i32 %i.abi, 732
  %or.cond11 = and i1 %i.ace, %i.acd
  br i1 %or.cond11, label %bb.cu, label %.lr.ph441

bb.cu:                                            ; preds = %bb.ct, %.critedge8
  %i.acf = load i32, ptr %i.er, align 8, !tbaa !182 ; 2 uses
  %i.acg = load i32, ptr %i.es, align 4, !tbaa !183
  %.not.i274 = icmp ult i32 %i.acf, %i.acg
  br i1 %.not.i274, label %bb.cw, label %bb.cv, !prof !282

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.xm)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit275

bb.cw:                                            ; preds = %bb.cu
  %i.ach = zext i32 %i.acf to i64
  %i.aci = load ptr, ptr %20, align 8, !tbaa !21
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.ach
  store ptr %i.xm, ptr %i.acj, align 1
  %i.ack = load i32, ptr %i.er, align 8, !tbaa !182
  %i.acl = add i32 %i.ack, 1
  store i32 %i.acl, ptr %i.er, align 8, !tbaa !182
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit275

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit275: ; preds = %bb.cv, %bb.cw
  %i.acm = load ptr, ptr %i.aap, align 8, !tbaa !310
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 48
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !211
  br label %.loopexit.sink.split

.lr.ph441:                                        ; preds = %bb.ct, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit
  %.sroa.0308.0440 = phi ptr [ %i.adi, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit ], [ %i.xm, %bb.ct ] ; 8 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.0308.0440, i64 52
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !273
  %.off.i = add i32 %i.acq, -14
  %switch.i = icmp ult i32 %.off.i, 5
  br i1 %switch.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit277, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph441
  %i.acr = load i32, ptr %i.er, align 8, !tbaa !182 ; 2 uses
  %i.acs = load i32, ptr %i.es, align 4, !tbaa !183
  %.not.i276 = icmp ult i32 %i.acr, %i.acs
  br i1 %.not.i276, label %bb.cz, label %bb.cy, !prof !282

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %.sroa.0308.0440)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit277

bb.cz:                                            ; preds = %bb.cx
  %i.act = zext i32 %i.acr to i64
  %i.acu = load ptr, ptr %20, align 8, !tbaa !21
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %i.act
  store ptr %.sroa.0308.0440, ptr %i.acv, align 1
  %i.acw = load i32, ptr %i.er, align 8, !tbaa !182
  %i.acx = add i32 %i.acw, 1
  store i32 %i.acx, ptr %i.er, align 8, !tbaa !182
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit277

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit277: ; preds = %bb.cz, %bb.cy, %.lr.ph441
  %.0.copyload.i.i.i.i.i.i.i.i.i.i279 = load i64, ptr %.sroa.0308.0440, align 8
  %i.acy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i279, 4
  %.not.i.i.i.i280 = icmp eq i64 %i.acy, 0
  br i1 %.not.i.i.i.i280, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i283, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i283: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit277
  %i.acz = getelementptr inbounds nuw i8, ptr %.sroa.0308.0440, i64 44
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !283
  %i.adb = and i32 %i.ada, 8
  %.not34.i.i.i.i284 = icmp eq i32 %i.adb, 0
  br i1 %.not34.i.i.i.i284, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i285

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i285: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i283, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i285
  %.sroa.0.05.i.i.i.i286 = phi ptr [ %i.add, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i285 ], [ %.sroa.0308.0440, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i283 ]
  %i.adc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i286, i64 8
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !196 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 44
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !283
  %i.adg = and i32 %i.adf, 8
  %.not3.i.i.i.i287 = icmp eq i32 %i.adg, 0
  br i1 %.not3.i.i.i.i287, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i285, !llvm.loop !284

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i285, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit277, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i283
  %.sroa.0.1.i.i.i.i282 = phi ptr [ %.sroa.0308.0440, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit277 ], [ %.sroa.0308.0440, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i283 ], [ %i.add, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i285 ]
  %i.adh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i282, i64 8
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !196 ; 2 uses
  %.not388 = icmp eq ptr %i.adi, %i.go
  br i1 %.not388, label %._crit_edge442, label %.lr.ph441, !llvm.loop !399

._crit_edge442:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit
  %i.adj = load ptr, ptr %i.aap, align 8, !tbaa !310
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 48
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !211
  %i.adm = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock17isLayoutSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0338.0457, ptr noundef %i.adl) #17
  br i1 %i.adm, label %bb.db, label %bb.da

bb.da:                                            ; preds = %._crit_edge442
  %i.adn = load ptr, ptr %i.aap, align 8, !tbaa !310
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 48
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !211
  %i.adq = getelementptr inbounds nuw i8, ptr %i.xm, i64 72
  %i.adr = load ptr, ptr %i.ek, align 8, !tbaa !8
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 320
  %i.adt = load ptr, ptr %i.ads, align 8
  %i.adu = call noundef i32 %i.adt(ptr noundef nonnull align 8 dereferenceable(1080) %i.ek, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0338.0457, ptr noundef %i.adp, ptr noundef null, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.adq, ptr noundef null) #17 ; 0 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %._crit_edge442
  %i.adv = getelementptr inbounds nuw i8, ptr %.sroa.0338.0457, i64 112
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !21 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.sroa.0338.0457, i64 120
  %i.ady = load i32, ptr %i.adx, align 8, !tbaa !182 ; 2 uses
  %i.adz = zext i32 %i.ady to i64
  %.idx470 = shl nuw nsw i64 %i.adz, 3
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adw, i64 %.idx470
  %.not191443 = icmp eq i32 %i.ady, 0
  br i1 %.not191443, label %.loopexit, label %.critedge199.lr.ph

.critedge199.lr.ph:                               ; preds = %bb.db
  %i.aeb = load ptr, ptr %i.aap, align 8, !tbaa !310
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 48
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !211
  br label %.critedge199

bb.dc:                                            ; preds = %.critedge199
  %i.aee = getelementptr inbounds nuw i8, ptr %.0182444, i64 8 ; 2 uses
  %.not191 = icmp eq ptr %i.aee, %i.aea
  br i1 %.not191, label %.loopexit, label %.critedge199

.critedge199:                                     ; preds = %.critedge199.lr.ph, %bb.dc
  %.0182444 = phi ptr [ %i.adw, %.critedge199.lr.ph ], [ %i.aee, %bb.dc ] ; 2 uses
  %i.aef = load ptr, ptr %.0182444, align 8, !tbaa !400 ; 2 uses
  %.not192 = icmp eq ptr %i.aef, %i.aed
  br i1 %.not192, label %bb.dc, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.critedge199, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit275
  %.lcssa599.sink = phi ptr [ %i.aco, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit275 ], [ %i.aef, %.critedge199 ]
  call void @_ZN4llvm17MachineBasicBlock15removeSuccessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0338.0457, ptr noundef %.lcssa599.sink, i1 noundef zeroext false) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.dc, %.loopexit.sink.split, %bb.db
  br i1 %.0177437, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit291, label %bb.dd

bb.dd:                                            ; preds = %.loopexit
  %i.aeg = getelementptr inbounds nuw i8, ptr %.sroa.0338.0457, i64 112
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !21 ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.sroa.0338.0457, i64 120
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !182 ; 2 uses
  %i.aek = zext i32 %i.aej to i64
  %.idx471 = shl nuw nsw i64 %i.aek, 3
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %.idx471
  %.not193445 = icmp eq i32 %i.aej, 0
  br i1 %.not193445, label %.critedge, label %.lr.ph449

.lr.ph449:                                        ; preds = %bb.dd, %bb.de
  %.0169447 = phi ptr [ %i.aeq, %bb.de ], [ %i.aeh, %bb.dd ] ; 3 uses
  %.2180446 = phi i1 [ %spec.select200, %bb.de ], [ false, %bb.dd ]
  %i.aem = load ptr, ptr %.0169447, align 8, !tbaa !400
  %i.aen = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.aem, i32 %i.aas, i64 -1) #17
  br i1 %i.aen, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit291, label %bb.de

bb.de:                                            ; preds = %.lr.ph449
  %i.aeo = load ptr, ptr %.0169447, align 8, !tbaa !400
  %i.aep = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.aeo, i32 %.0.i260, i64 -1) #17 ; 2 uses
  %spec.select200 = select i1 %i.aep, i1 true, i1 %.2180446 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.0169447, i64 8 ; 2 uses
  %.not193 = icmp eq ptr %i.aeq, %i.ael
  %or.cond469 = select i1 %i.aep, i1 true, i1 %.not193
  br i1 %or.cond469, label %._crit_edge450, label %.lr.ph449

._crit_edge450:                                   ; preds = %bb.de
  br i1 %spec.select200, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit291, label %.critedge

.critedge:                                        ; preds = %bb.dd, %._crit_edge450
  %i.aer = load i32, ptr %i.er, align 8, !tbaa !182 ; 2 uses
  %i.aes = load i32, ptr %i.es, align 4, !tbaa !183
  %.not.i290 = icmp ult i32 %i.aer, %i.aes
  br i1 %.not.i290, label %bb.dg, label %bb.df, !prof !282

bb.df:                                            ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %.sroa.0313.0436)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit291

bb.dg:                                            ; preds = %.critedge
  %i.aet = zext i32 %i.aer to i64
  %i.aeu = load ptr, ptr %20, align 8, !tbaa !21
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.aeu, i64 %i.aet
  store ptr %.sroa.0313.0436, ptr %i.aev, align 1
  %i.aew = load i32, ptr %i.er, align 8, !tbaa !182
  %i.aex = add i32 %i.aew, 1
  store i32 %i.aex, ptr %i.er, align 8, !tbaa !182
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit291

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit291: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit273, %.lr.ph449, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit, %bb.cq, %bb.co, %bb.cr, %._crit_edge450, %.loopexit, %bb.df, %bb.dg, %._crit_edge434
  %i.aey = getelementptr inbounds nuw i8, ptr %.sroa.0338.0457, i64 8
  %.sroa.0338.0 = load ptr, ptr %i.aey, align 8, !tbaa !194 ; 2 uses
  %.not383 = icmp eq ptr %.sroa.0338.0, %i.eu
  br i1 %.not383, label %._crit_edge462, label %bb.o

._crit_edge468.loopexit:                          ; preds = %.lr.ph467
  %.pre504 = load ptr, ptr %20, align 8, !tbaa !21
  br label %._crit_edge468

._crit_edge468:                                   ; preds = %._crit_edge468.loopexit, %._crit_edge462
  %i.aez = phi ptr [ %.pre504, %._crit_edge468.loopexit ], [ %.pre502, %._crit_edge462 ] ; 2 uses
  %i.afa = icmp eq ptr %i.aez, %i.eq
  br i1 %i.afa, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit292, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge468
  call void @free(ptr noundef %i.aez) #17
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit292

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit292: ; preds = %bb.n, %._crit_edge468, %bb.dh
  %.0170.lcssa572574 = phi i1 [ %.1171.lcssa, %bb.dh ], [ %.1171.lcssa, %._crit_edge468 ], [ false, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.di

.lr.ph467:                                        ; preds = %._crit_edge462, %.lr.ph467
  %.0169465 = phi ptr [ %i.afd, %.lr.ph467 ], [ %.pre502, %._crit_edge462 ] ; 2 uses
  %i.afb = load ptr, ptr %.0169465, align 8, !tbaa !286
  %i.afc = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.afb) #17 ; 0 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.0169465, i64 8 ; 2 uses
  %.not187 = icmp eq ptr %i.afd, %i.gm
  br i1 %.not187, label %._crit_edge468.loopexit, label %.lr.ph467

bb.di:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit292, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit
  %.0 = phi i1 [ false, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit ], [ %.0170.lcssa572574, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj4EED2Ev.exit292 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK12_GLOBAL__N_118PPCPreEmitPeephole21getRequiredPropertiesEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #6

declare { ptr, i64 } @_ZNK4llvm15MachineFunction7getNameEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #6

declare void @_ZN4llvm12RegScavenger15enterBasicBlockERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #6

declare i32 @_ZNK4llvm12RegScavenger13FindUnusedRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218  ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %2, align 8, !tbaa !401
  %i.c = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload, i1 noundef zeroext false) #17 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.c) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !196
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !196
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.m = or disjoint i64 %i.l, %i.k
  store i64 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !402  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.o) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !406  ; 2 uses
  %.not7.i = icmp eq ptr %i.q, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.q) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !407  ; 2 uses
  %.not8.i = icmp eq ptr %i.s, null
  br i1 %.not8.i, label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.s) #17
  br label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit

_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !208, !alias.scope !408
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %4, ptr %i.u, align 4, !tbaa !211, !alias.scope !408
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !alias.scope !408
  store i32 16777216, ptr %5, align 8, !alias.scope !408
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.c, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #6

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo22convertToImmediateFormERNS_12MachineInstrERNS_8SmallSetINS_8RegisterELj4ESt4lessIS4_EEEPPS1_(ptr noundef nonnull align 8 dereferenceable(1080), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo15foldFrameOffsetERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1080), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm12PPCInstrInfo17optimizeCmpPostRAERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1080), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare ptr @_ZN4llvm17MachineBasicBlock23getFirstInstrTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #6

declare void @_ZN4llvm17MachineBasicBlock15removeSuccessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock17isLayoutSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360), i32, i64) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !182
end_hunk_0
