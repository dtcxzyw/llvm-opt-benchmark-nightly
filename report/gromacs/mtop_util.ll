Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/mtop_util?download=true
inline.NumInlined: 1155
inline.NumDeleted: 535
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_Z27gmx_mtop_generate_local_topRK10gmx_mtop_tP14gmx_localtop_tb:bb.a
bb.cc:                                            ; preds = %.noexc15.i.i
  %i.aub = load ptr, ptr %i.arj, align 8, !tbaa !97, !alias.scope !299
  %i.auc = ptrtoint ptr %i.aub to i64
  %i.aud = ptrtoint ptr %i.atw to i64
  %i.aue = sub i64 %i.auc, %i.aud
  %i.auf = ashr exact i64 %i.aue, 2               ; 3 uses
  %i.aug = load ptr, ptr %i.aru, align 8, !tbaa !97
  %i.auh = load ptr, ptr %i.art, align 8, !tbaa !98
  %i.aui = ptrtoint ptr %i.aug to i64
  %i.auj = ptrtoint ptr %i.auh to i64
  %i.auk = sub i64 %i.aui, %i.auj                 ; 2 uses
  %i.aul = ashr exact i64 %i.auk, 2               ; 7 uses
  %i.aum = sub nsw i64 %i.auf, %i.aul             ; 6 uses
  %i.aun = icmp ult i64 %i.aum, %i.auf
  br i1 %i.aun, label %iter.check409, label %_ZN3gmx11ListOfListsIiE17appendListOfListsERKS1_i.exit.i.i

iter.check409:                                    ; preds = %bb.cc
  %min.iters.check391 = icmp ult i64 %i.aul, 8
  br i1 %min.iters.check391, label %.lr.ph30.i.i.i.preheader, label %vector.main.loop.iter.check392

vector.main.loop.iter.check392:                   ; preds = %iter.check409
  %min.iters.check393 = icmp ult i64 %i.aul, 32
  br i1 %min.iters.check393, label %vec.epilog.ph413, label %vector.ph394

vector.ph394:                                     ; preds = %vector.main.loop.iter.check392
  %n.vec395 = and i64 %i.aul, -32                 ; 4 uses
  %i.auo = add nsw i64 %i.aum, %n.vec395
  %broadcast.splatinsert396 = insertelement <8 x i32> poison, i32 %.121.i.i, i64 0
  %broadcast.splat397 = shufflevector <8 x i32> %broadcast.splatinsert396, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.atw, i64 %i.aum
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph394
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.aup, i64 %index399 ; 5 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 32 ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auq, i64 64 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.auq, i64 96 ; 2 uses
  %wide.load400 = load <8 x i32>, ptr %i.auq, align 4, !tbaa !89
  %wide.load401 = load <8 x i32>, ptr %i.aur, align 4, !tbaa !89
  %wide.load402 = load <8 x i32>, ptr %i.aus, align 4, !tbaa !89
  %wide.load403 = load <8 x i32>, ptr %i.aut, align 4, !tbaa !89
  %i.auu = add nsw <8 x i32> %wide.load400, %broadcast.splat397
  %i.auv = add nsw <8 x i32> %wide.load401, %broadcast.splat397
  %i.auw = add nsw <8 x i32> %wide.load402, %broadcast.splat397
  %i.aux = add nsw <8 x i32> %wide.load403, %broadcast.splat397
  store <8 x i32> %i.auu, ptr %i.auq, align 4, !tbaa !89
  store <8 x i32> %i.auv, ptr %i.aur, align 4, !tbaa !89
  store <8 x i32> %i.auw, ptr %i.aus, align 4, !tbaa !89
  store <8 x i32> %i.aux, ptr %i.aut, align 4, !tbaa !89
  %index.next404 = add nuw i64 %index399, 32      ; 2 uses
  %i.auy = icmp eq i64 %index.next404, %n.vec395
  br i1 %i.auy, label %middle.block405, label %vector.body398, !llvm.loop !277

middle.block405:                                  ; preds = %vector.body398
  %cmp.n406 = icmp eq i64 %i.aul, %n.vec395
  br i1 %cmp.n406, label %_ZN3gmx11ListOfListsIiE17appendListOfListsERKS1_i.exit.i.i, label %vec.epilog.iter.check411

vec.epilog.iter.check411:                         ; preds = %middle.block405
  %i.auz = and i64 %i.auk, 96
  %min.epilog.iters.check412 = icmp eq i64 %i.auz, 0
  br i1 %min.epilog.iters.check412, label %.lr.ph30.i.i.i.preheader, label %vec.epilog.ph413, !prof !93

vec.epilog.ph413:                                 ; preds = %vector.main.loop.iter.check392, %vec.epilog.iter.check411
  %vec.epilog.resume.val407 = phi i64 [ %n.vec395, %vec.epilog.iter.check411 ], [ 0, %vector.main.loop.iter.check392 ]
  %n.vec414 = and i64 %i.aul, -8                  ; 3 uses
  %i.ava = add nsw i64 %i.aum, %n.vec414
  %broadcast.splatinsert415 = insertelement <8 x i32> poison, i32 %.121.i.i, i64 0
  %broadcast.splat416 = shufflevector <8 x i32> %broadcast.splatinsert415, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.atw, i64 %i.aum
  br label %vec.epilog.vector.body417

vec.epilog.vector.body417:                        ; preds = %vec.epilog.vector.body417, %vec.epilog.ph413
  %index418 = phi i64 [ %vec.epilog.resume.val407, %vec.epilog.ph413 ], [ %index.next420, %vec.epilog.vector.body417 ] ; 2 uses
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %index418 ; 2 uses
  %wide.load419 = load <8 x i32>, ptr %i.avc, align 4, !tbaa !89
  %i.avd = add nsw <8 x i32> %wide.load419, %broadcast.splat416
  store <8 x i32> %i.avd, ptr %i.avc, align 4, !tbaa !89
  %index.next420 = add nuw i64 %index418, 8       ; 2 uses
  %i.ave = icmp eq i64 %index.next420, %n.vec414
  br i1 %i.ave, label %vec.epilog.middle.block421, label %vec.epilog.vector.body417, !llvm.loop !278

vec.epilog.middle.block421:                       ; preds = %vec.epilog.vector.body417
  %cmp.n422 = icmp eq i64 %i.aul, %n.vec414
  br i1 %cmp.n422, label %_ZN3gmx11ListOfListsIiE17appendListOfListsERKS1_i.exit.i.i, label %.lr.ph30.i.i.i.preheader

.lr.ph30.i.i.i.preheader:                         ; preds = %iter.check409, %vec.epilog.iter.check411, %vec.epilog.middle.block421
  %.028.i.i.i.ph = phi i64 [ %i.aum, %iter.check409 ], [ %i.auo, %vec.epilog.iter.check411 ], [ %i.ava, %vec.epilog.middle.block421 ]
  br label %.lr.ph30.i.i.i

.lr.ph30.i.i.i:                                   ; preds = %.lr.ph30.i.i.i.preheader, %.lr.ph30.i.i.i
  %.028.i.i.i = phi i64 [ %i.avi, %.lr.ph30.i.i.i ], [ %.028.i.i.i.ph, %.lr.ph30.i.i.i.preheader ] ; 2 uses
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.atw, i64 %.028.i.i.i ; 2 uses
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !89
  %i.avh = add nsw i32 %i.avg, %.121.i.i
  store i32 %i.avh, ptr %i.avf, align 4, !tbaa !89
  %i.avi = add nuw i64 %.028.i.i.i, 1             ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %i.avi, %i.auf
  br i1 %exitcond31.not.i.i.i, label %_ZN3gmx11ListOfListsIiE17appendListOfListsERKS1_i.exit.i.i, label %.lr.ph30.i.i.i, !llvm.loop !279

_ZN3gmx11ListOfListsIiE17appendListOfListsERKS1_i.exit.i.i: ; preds = %.lr.ph30.i.i.i, %middle.block405, %vec.epilog.middle.block421, %bb.cc, %.noexc15.i.i
  %i.avj = load i32, ptr %i.arv, align 8, !tbaa !118
  %i.avk = add nsw i32 %i.avj, %.121.i.i          ; 2 uses
  %i.avl = add nuw nsw i32 %.01420.i.i, 1         ; 2 uses
  %i.avm = load i32, ptr %i.ark, align 4, !tbaa !88
  %i.avn = icmp slt i32 %i.avl, %i.avm
  br i1 %i.avn, label %bb.cb, label %._crit_edge.i17.i, !llvm.loop !280

common.resume.i20.i:                              ; preds = %._crit_edge.i.i.i, %bb.cb
  %i.avo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx11ListOfListsIiED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #22
  br label %common.resume.i

_ZL20globalExclusionListsRK10gmx_mtop_t.exit.loopexit.i: ; preds = %._crit_edge.i17.i
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !98
  %.pre53.i = load ptr, ptr %i.are, align 8, !tbaa !97
  %.pre54.i = load ptr, ptr %i.ard, align 8, !tbaa !120
  br label %_ZL20globalExclusionListsRK10gmx_mtop_t.exit.i

_ZL20globalExclusionListsRK10gmx_mtop_t.exit.i:   ; preds = %_ZL20globalExclusionListsRK10gmx_mtop_t.exit.loopexit.i, %_ZL31sortFreeEnergyInteractionsAtEndRK10gmx_mtop_tP22InteractionDefinitions.exit.i
  %i.avp = phi ptr [ %.pre54.i, %_ZL20globalExclusionListsRK10gmx_mtop_t.exit.loopexit.i ], [ %i.arc, %_ZL31sortFreeEnergyInteractionsAtEndRK10gmx_mtop_tP22InteractionDefinitions.exit.i ]
  %i.avq = phi ptr [ %.pre53.i, %_ZL20globalExclusionListsRK10gmx_mtop_t.exit.loopexit.i ], [ %i.arc, %_ZL31sortFreeEnergyInteractionsAtEndRK10gmx_mtop_tP22InteractionDefinitions.exit.i ]
  %i.avr = phi ptr [ %.pre.i, %_ZL20globalExclusionListsRK10gmx_mtop_t.exit.loopexit.i ], [ %i.arb, %_ZL31sortFreeEnergyInteractionsAtEndRK10gmx_mtop_tP22InteractionDefinitions.exit.i ]
  %i.avs = getelementptr inbounds nuw i8, ptr %1, i64 2760 ; 5 uses
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !98 ; 3 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %1, i64 2768 ; 3 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %1, i64 2776 ; 2 uses
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !120
  store ptr %i.avr, ptr %i.avs, align 8, !tbaa !98
  store ptr %i.avq, ptr %i.avu, align 8, !tbaa !97
  store ptr %i.avp, ptr %i.avv, align 8, !tbaa !120
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.avt, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %_ZL20globalExclusionListsRK10gmx_mtop_t.exit.i
  %i.avx = ptrtoint ptr %i.avw to i64
  %i.avy = ptrtoint ptr %i.avt to i64
  %i.avz = sub i64 %i.avx, %i.avy
  call void @_ZdlPvm(ptr noundef nonnull %i.avt, i64 noundef %i.avz) #25
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i:             ; preds = %bb.cd, %_ZL20globalExclusionListsRK10gmx_mtop_t.exit.i
  %i.awa = getelementptr inbounds nuw i8, ptr %1, i64 2784 ; 2 uses
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !98 ; 3 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %1, i64 2800 ; 2 uses
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !120
  %i.awe = load <2 x ptr>, ptr %i.arf, align 8, !tbaa !119
  store <2 x ptr> %i.awe, ptr %i.awa, align 8, !tbaa !119
  %i.awf = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !120
  store ptr %i.awg, ptr %i.awc, align 8, !tbaa !120
  %.not.i.i.i.i.i3.i.i = icmp eq ptr %i.awb, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arf, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i3.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %_ZN3gmx11ListOfListsIiEaSEOS1_.exit.i

_ZN3gmx11ListOfListsIiEaSEOS1_.exit.i:            ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i
  %i.awh = ptrtoint ptr %i.awd to i64
  %i.awi = ptrtoint ptr %i.awb to i64
  %i.awj = sub i64 %i.awh, %i.awi
  call void @_ZdlPvm(ptr noundef nonnull %i.awb, i64 noundef %i.awj) #25
  %.pr.i = load ptr, ptr %i.arf, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i.i25.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i25.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN3gmx11ListOfListsIiEaSEOS1_.exit.i
  %i.awk = load ptr, ptr %i.awf, align 8, !tbaa !120
  %i.awl = ptrtoint ptr %i.awk to i64
  %i.awm = ptrtoint ptr %.pr.i to i64
  %i.awn = sub i64 %i.awl, %i.awm
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.awn) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.ce, %_ZN3gmx11ListOfListsIiEaSEOS1_.exit.i, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i
  %i.awo = load ptr, ptr %11, align 8, !tbaa !98  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.awo, null
  br i1 %.not.i.i.i1.i.i, label %_ZN3gmx11ListOfListsIiED2Ev.exit.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.awp = load ptr, ptr %i.ard, align 8, !tbaa !120
  %i.awq = ptrtoint ptr %i.awp to i64
  %i.awr = ptrtoint ptr %i.awo to i64
  %i.aws = sub i64 %i.awq, %i.awr
  call void @_ZdlPvm(ptr noundef nonnull %i.awo, i64 noundef %i.aws) #25
  br label %_ZN3gmx11ListOfListsIiED2Ev.exit.i

_ZN3gmx11ListOfListsIiED2Ev.exit.i:               ; preds = %bb.cf, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.awt = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !119 ; 15 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.aww = load ptr, ptr %i.awv, align 8, !tbaa !119 ; 2 uses
  %i.awx = icmp eq ptr %i.awu, %i.aww
  br i1 %i.awx, label %_ZL13gen_local_topRK10gmx_mtop_tbbP14gmx_localtop_t.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZN3gmx11ListOfListsIiED2Ev.exit.i
  %i.awy = ptrtoint ptr %i.aww to i64
  %i.awz = ptrtoint ptr %i.awu to i64             ; 2 uses
  %i.axa = sub i64 %i.awy, %i.awz                 ; 4 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awu, i64 %i.axa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @_Z11init_blockaP8t_blocka(ptr noundef nonnull %3)
  %i.axc = ashr exact i64 %i.axa, 2               ; 15 uses
  %i.axd = load ptr, ptr %i.avu, align 8, !tbaa !97
  %i.axe = load ptr, ptr %i.avs, align 8, !tbaa !98
  %i.axf = ptrtoint ptr %i.axd to i64
  %i.axg = ptrtoint ptr %i.axe to i64
  %i.axh = sub i64 %i.axf, %i.axg
  %i.axi = ashr exact i64 %i.axh, 2               ; 2 uses
  %i.axj = trunc i64 %i.axi to i32
  %i.axk = add i32 %i.axj, -1
  store i32 %i.axk, ptr %3, align 8, !tbaa !301
  %i.axl = mul i64 %i.axc, %i.axc                 ; 2 uses
  %i.axm = trunc i64 %i.axl to i32                ; 3 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.axm, ptr %i.axn, align 8, !tbaa !302
  %i.axo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.axp = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 615, i64 noundef %i.axi, i64 noundef 4)
  store ptr %i.axp, ptr %i.axo, align 8, !tbaa !119
  %i.axq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.axr = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 616, i64 noundef %i.axl, i64 noundef 4) ; 3 uses
  %i.axs = ptrtoaddr ptr %i.axr to i64
  store ptr %i.axr, ptr %i.axq, align 8, !tbaa !119
  %i.axt = load i32, ptr %3, align 8, !tbaa !301
  %i.axu = icmp sgt i32 %i.axt, 0
  %.pre.pre.i.i = load ptr, ptr %i.axo, align 8, !tbaa !303 ; 6 uses
  br i1 %i.axu, label %.lr.ph.i30.i, label %._crit_edge.i26.i

.preheader.i33.i:                                 ; preds = %.lr.ph.i30.i
  %i.axv = icmp sgt i32 %i.bap, 0
  br i1 %i.axv, label %.lr.ph63.i.i, label %._crit_edge.i26.i

.lr.ph63.i.i:                                     ; preds = %.preheader.i33.i
  %i.axw = icmp sgt i64 %i.axc, 0
  br i1 %i.axw, label %.lr.ph60.us.i.i.preheader, label %.lr.ph63.split.i.i

.lr.ph60.us.i.i.preheader:                        ; preds = %.lr.ph63.i.i
  %i.axx = sub i64 %i.axs, %i.awz
  %min.iters.check461 = icmp ult i64 %i.axc, 4
  %invariant.op544 = add i64 %i.axx, -1
  %min.iters.check463 = icmp ult i64 %i.axc, 32
  %n.vec465 = and i64 %i.axc, 9223372036854775776 ; 4 uses
  %cmp.n474 = icmp eq i64 %i.axc, %n.vec465
  %i.axy = and i64 %i.axa, 112
  %min.epilog.iters.check479 = icmp eq i64 %i.axy, 0
  %n.vec481 = and i64 %i.axc, 9223372036854775804 ; 3 uses
  %cmp.n487 = icmp eq i64 %i.axc, %n.vec481
  br label %.lr.ph60.us.i.i

.lr.ph60.us.i.i:                                  ; preds = %.lr.ph60.us.i.i.preheader, %._crit_edge.split.us.us.i.i
  %indvars.iv71.i.i = phi i64 [ %indvars.iv.next72.i.i, %._crit_edge.split.us.us.i.i ], [ 0, %.lr.ph60.us.i.i.preheader ] ; 3 uses
  %.04361.us.i.i = phi i32 [ %.2.us.us.i.i, %._crit_edge.split.us.us.i.i ], [ 0, %.lr.ph60.us.i.i.preheader ] ; 2 uses
  %i.axz = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv71.i.i
  store i32 %.04361.us.i.i, ptr %i.axz, align 4, !tbaa !89
  br label %bb.ch

bb.ch:                                            ; preds = %..loopexit_crit_edge.us.us.i.i, %.lr.ph60.us.i.i
  %.04159.us.us.i.i = phi i64 [ 0, %.lr.ph60.us.i.i ], [ %i.bak, %..loopexit_crit_edge.us.us.i.i ] ; 4 uses
  %.158.us.us.i.i = phi i32 [ %.04361.us.i.i, %.lr.ph60.us.i.i ], [ %.2.us.us.i.i, %..loopexit_crit_edge.us.us.i.i ]
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %.04159.us.us.i.i
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !89 ; 2 uses
  %i.ayc = zext i32 %i.ayb to i64
  %.not.us.us.i.i = icmp eq i64 %indvars.iv71.i.i, %i.ayc
  br i1 %.not.us.us.i.i, label %iter.check476, label %..loopexit_crit_edge.us.us.i.i

iter.check476:                                    ; preds = %bb.ch
  %i.ayd = mul i64 %i.axa, %.04159.us.us.i.i
  %i.aye = mul i64 %.04159.us.us.i.i, %i.axc      ; 3 uses
  %i.ayf = trunc i64 %i.aye to i32
  %i.ayg = sext i32 %i.ayb to i64
  %i.ayh = getelementptr inbounds [4 x i8], ptr %.pre.pre.i.i, i64 %i.ayg
  store i32 %i.ayf, ptr %i.ayh, align 4, !tbaa !89
  %i.ayi = getelementptr [4 x i8], ptr %i.axr, i64 %i.aye ; 11 uses
  %.reass545 = add i64 %i.ayd, %invariant.op544
  %diff.check459 = icmp ult i64 %.reass545, 127
  %or.cond = or i1 %min.iters.check461, %diff.check459
  br i1 %or.cond, label %vec.epilog.scalar.ph477.preheader, label %vector.main.loop.iter.check462

vector.main.loop.iter.check462:                   ; preds = %iter.check476
  br i1 %min.iters.check463, label %vec.epilog.ph480, label %vector.body466

vector.body466:                                   ; preds = %vector.main.loop.iter.check462, %vector.body466
  %index467 = phi i64 [ %index.next472, %vector.body466 ], [ 0, %vector.main.loop.iter.check462 ] ; 3 uses
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %index467 ; 4 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 32
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayj, i64 64
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayj, i64 96
  %wide.load468 = load <8 x i32>, ptr %i.ayj, align 4, !tbaa !89
  %wide.load469 = load <8 x i32>, ptr %i.ayk, align 4, !tbaa !89
  %wide.load470 = load <8 x i32>, ptr %i.ayl, align 4, !tbaa !89
  %wide.load471 = load <8 x i32>, ptr %i.aym, align 4, !tbaa !89
  %i.ayn = getelementptr [4 x i8], ptr %i.ayi, i64 %index467 ; 4 uses
  %i.ayo = getelementptr i8, ptr %i.ayn, i64 32
  %i.ayp = getelementptr i8, ptr %i.ayn, i64 64
  %i.ayq = getelementptr i8, ptr %i.ayn, i64 96
  store <8 x i32> %wide.load468, ptr %i.ayn, align 4, !tbaa !89
  store <8 x i32> %wide.load469, ptr %i.ayo, align 4, !tbaa !89
  store <8 x i32> %wide.load470, ptr %i.ayp, align 4, !tbaa !89
  store <8 x i32> %wide.load471, ptr %i.ayq, align 4, !tbaa !89
  %index.next472 = add nuw i64 %index467, 32      ; 2 uses
  %i.ayr = icmp eq i64 %index.next472, %n.vec465
  br i1 %i.ayr, label %middle.block473, label %vector.body466, !llvm.loop !281

middle.block473:                                  ; preds = %vector.body466
  br i1 %cmp.n474, label %..loopexit_crit_edge.us.us.loopexit.i.i, label %vec.epilog.iter.check478

vec.epilog.iter.check478:                         ; preds = %middle.block473
  br i1 %min.epilog.iters.check479, label %vec.epilog.scalar.ph477.preheader, label %vec.epilog.ph480, !prof !121

vec.epilog.ph480:                                 ; preds = %vector.main.loop.iter.check462, %vec.epilog.iter.check478
  %vec.epilog.resume.val475 = phi i64 [ %n.vec465, %vec.epilog.iter.check478 ], [ 0, %vector.main.loop.iter.check462 ]
  br label %vec.epilog.vector.body482

vec.epilog.vector.body482:                        ; preds = %vec.epilog.vector.body482, %vec.epilog.ph480
  %index483 = phi i64 [ %vec.epilog.resume.val475, %vec.epilog.ph480 ], [ %index.next485, %vec.epilog.vector.body482 ] ; 3 uses
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %index483
  %wide.load484 = load <4 x i32>, ptr %i.ays, align 4, !tbaa !89
  %i.ayt = getelementptr [4 x i8], ptr %i.ayi, i64 %index483
  store <4 x i32> %wide.load484, ptr %i.ayt, align 4, !tbaa !89
  %index.next485 = add nuw i64 %index483, 4       ; 2 uses
  %i.ayu = icmp eq i64 %index.next485, %n.vec481
  br i1 %i.ayu, label %vec.epilog.middle.block486, label %vec.epilog.vector.body482, !llvm.loop !282

vec.epilog.middle.block486:                       ; preds = %vec.epilog.vector.body482
  br i1 %cmp.n487, label %..loopexit_crit_edge.us.us.loopexit.i.i, label %vec.epilog.scalar.ph477.preheader

vec.epilog.scalar.ph477.preheader:                ; preds = %iter.check476, %vec.epilog.iter.check478, %vec.epilog.middle.block486
  %.04056.us.us.i.i.ph = phi i64 [ 0, %iter.check476 ], [ %n.vec465, %vec.epilog.iter.check478 ], [ %n.vec481, %vec.epilog.middle.block486 ] ; 4 uses
  %i.ayv = sub nsw i64 %i.axc, %.04056.us.us.i.i.ph
  %xtraiter525 = and i64 %i.ayv, 7                ; 2 uses
  %lcmp.mod526.not = icmp eq i64 %xtraiter525, 0
  br i1 %lcmp.mod526.not, label %vec.epilog.scalar.ph477.prol.loopexit, label %vec.epilog.scalar.ph477.prol

vec.epilog.scalar.ph477.prol:                     ; preds = %vec.epilog.scalar.ph477.preheader, %vec.epilog.scalar.ph477.prol
  %.04056.us.us.i.i.prol = phi i64 [ %i.ayz, %vec.epilog.scalar.ph477.prol ], [ %.04056.us.us.i.i.ph, %vec.epilog.scalar.ph477.preheader ] ; 3 uses
  %prol.iter527 = phi i64 [ %prol.iter527.next, %vec.epilog.scalar.ph477.prol ], [ 0, %vec.epilog.scalar.ph477.preheader ]
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %.04056.us.us.i.i.prol
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !89
  %i.ayy = getelementptr [4 x i8], ptr %i.ayi, i64 %.04056.us.us.i.i.prol
  store i32 %i.ayx, ptr %i.ayy, align 4, !tbaa !89
  %i.ayz = add nuw nsw i64 %.04056.us.us.i.i.prol, 1 ; 2 uses
  %prol.iter527.next = add i64 %prol.iter527, 1   ; 2 uses
  %prol.iter527.cmp.not = icmp eq i64 %prol.iter527.next, %xtraiter525
  br i1 %prol.iter527.cmp.not, label %vec.epilog.scalar.ph477.prol.loopexit, label %vec.epilog.scalar.ph477.prol, !llvm.loop !283

vec.epilog.scalar.ph477.prol.loopexit:            ; preds = %vec.epilog.scalar.ph477.prol, %vec.epilog.scalar.ph477.preheader
  %.04056.us.us.i.i.unr = phi i64 [ %.04056.us.us.i.i.ph, %vec.epilog.scalar.ph477.preheader ], [ %i.ayz, %vec.epilog.scalar.ph477.prol ]
  %i.aza = sub nsw i64 %.04056.us.us.i.i.ph, %i.axc
  %i.azb = icmp ugt i64 %i.aza, -8
  br i1 %i.azb, label %..loopexit_crit_edge.us.us.loopexit.i.i, label %vec.epilog.scalar.ph477

vec.epilog.scalar.ph477:                          ; preds = %vec.epilog.scalar.ph477.prol.loopexit, %vec.epilog.scalar.ph477
  %.04056.us.us.i.i = phi i64 [ %i.bah, %vec.epilog.scalar.ph477 ], [ %.04056.us.us.i.i.unr, %vec.epilog.scalar.ph477.prol.loopexit ] ; 10 uses
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %.04056.us.us.i.i
  %i.azd = load i32, ptr %i.azc, align 4, !tbaa !89
  %i.aze = getelementptr [4 x i8], ptr %i.ayi, i64 %.04056.us.us.i.i
  store i32 %i.azd, ptr %i.aze, align 4, !tbaa !89
  %i.azf = add nuw nsw i64 %.04056.us.us.i.i, 1   ; 2 uses
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %i.azf
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !89
  %i.azi = getelementptr [4 x i8], ptr %i.ayi, i64 %i.azf
  store i32 %i.azh, ptr %i.azi, align 4, !tbaa !89
  %i.azj = add nuw nsw i64 %.04056.us.us.i.i, 2   ; 2 uses
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %i.azj
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !89
  %i.azm = getelementptr [4 x i8], ptr %i.ayi, i64 %i.azj
  store i32 %i.azl, ptr %i.azm, align 4, !tbaa !89
  %i.azn = add nuw nsw i64 %.04056.us.us.i.i, 3   ; 2 uses
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %i.azn
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !89
  %i.azq = getelementptr [4 x i8], ptr %i.ayi, i64 %i.azn
  store i32 %i.azp, ptr %i.azq, align 4, !tbaa !89
  %i.azr = add nuw nsw i64 %.04056.us.us.i.i, 4   ; 2 uses
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %i.azr
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !89
  %i.azu = getelementptr [4 x i8], ptr %i.ayi, i64 %i.azr
  store i32 %i.azt, ptr %i.azu, align 4, !tbaa !89
  %i.azv = add nuw nsw i64 %.04056.us.us.i.i, 5   ; 2 uses
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %i.azv
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !89
  %i.azy = getelementptr [4 x i8], ptr %i.ayi, i64 %i.azv
  store i32 %i.azx, ptr %i.azy, align 4, !tbaa !89
  %i.azz = add nuw nsw i64 %.04056.us.us.i.i, 6   ; 2 uses
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %i.azz
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !89
  %i.bac = getelementptr [4 x i8], ptr %i.ayi, i64 %i.azz
  store i32 %i.bab, ptr %i.bac, align 4, !tbaa !89
  %i.bad = add nuw nsw i64 %.04056.us.us.i.i, 7   ; 2 uses
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %i.awu, i64 %i.bad
  %i.baf = load i32, ptr %i.bae, align 4, !tbaa !89
  %i.bag = getelementptr [4 x i8], ptr %i.ayi, i64 %i.bad
  store i32 %i.baf, ptr %i.bag, align 4, !tbaa !89
  %i.bah = add nuw nsw i64 %.04056.us.us.i.i, 8   ; 2 uses
  %exitcond.not.i34.i.7 = icmp eq i64 %i.bah, %i.axc
  br i1 %exitcond.not.i34.i.7, label %..loopexit_crit_edge.us.us.loopexit.i.i, label %vec.epilog.scalar.ph477, !llvm.loop !284

..loopexit_crit_edge.us.us.loopexit.i.i:          ; preds = %vec.epilog.scalar.ph477.prol.loopexit, %vec.epilog.scalar.ph477, %vec.epilog.middle.block486, %middle.block473
  %i.bai = add i64 %i.aye, %i.axc
  %i.baj = trunc i64 %i.bai to i32
end_hunk_0
