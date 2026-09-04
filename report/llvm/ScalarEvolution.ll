Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ScalarEvolution?download=true
inline.NumInlined: 24488
inline.NumDeleted: 8078
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN4llvm15ScalarEvolution10getMulExprERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEENS_15SCEVNoWrapFlagsEj:bb.a
  %i.aag = icmp eq ptr %i.aaf, %i.to
  br i1 %i.aag, label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj4EED2Ev.exit449, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @free(ptr noundef %i.aaf) #29
  br label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj4EED2Ev.exit449

_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj4EED2Ev.exit449: ; preds = %bb.ep, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %.loopexit

.lr.ph823:                                        ; preds = %.preheader, %.thread681
  %i.aah = phi i32 [ %i.ais, %.thread681 ], [ %i.vf, %.preheader ] ; 4 uses
  %.0311822 = phi i32 [ %.0311, %.thread681 ], [ %.0311816, %.preheader ] ; 6 uses
  %.0311.in820 = phi i32 [ %.4315689, %.thread681 ], [ %.2342832, %.preheader ]
  %.0316819 = phi i1 [ %.4320688, %.thread681 ], [ false, %.preheader ] ; 6 uses
  %.0333818 = phi ptr [ %.4337687, %.thread681 ], [ %i.vc, %.preheader ] ; 9 uses
  %i.aai = zext i32 %.0311822 to i64              ; 3 uses
  %i.aaj = load ptr, ptr %1, align 8, !tbaa !107
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %i.aai
  %.0.copyload.i.i.i.i.i.i.i450 = load i64, ptr %i.aak, align 8
  %i.aal = and i64 %.0.copyload.i.i.i.i.i.i.i450, -8
  %i.aam = inttoptr i64 %i.aal to ptr             ; 5 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  %i.aao = load i16, ptr %i.aan, align 8, !tbaa !132
  %i.aap = icmp eq i16 %i.aao, 8
  br i1 %i.aap, label %bb.er, label %.critedge23.thread

bb.er:                                            ; preds = %.lr.ph823
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aam, i64 56
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !144
  %i.aas = getelementptr inbounds nuw i8, ptr %.0333818, i64 56 ; 2 uses
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !144
  %.not377 = icmp eq ptr %i.aar, %i.aat
  br i1 %.not377, label %bb.es, label %.thread681

bb.es:                                            ; preds = %bb.er
  %i.aau = getelementptr inbounds nuw i8, ptr %.0333818, i64 48 ; 3 uses
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !139
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aam, i64 48 ; 3 uses
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !139
  %i.aay = add i64 %i.aav, -1
  %i.aaz = add i64 %i.aay, %i.aax
  %i.aba = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL13MaxAddRecSize, i64 120), align 8, !tbaa !259
  %i.abb = zext i32 %i.aba to i64
  %i.abc = icmp ugt i64 %i.aaz, %i.abb
  br i1 %i.abc, label %.thread681, label %bb.et

bb.et:                                            ; preds = %bb.es
  %.pre.i.i.i.i.i.i.i465 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL17HugeExprThreshold, i64 120), align 8, !tbaa !259 ; 2 uses
  %i.abd = getelementptr i8, ptr %.0333818, i64 26
  %.val.i37.i.i.i.i.i.i.i468 = load i16, ptr %i.abd, align 2, !tbaa !287
  %i.abe = zext i16 %.val.i37.i.i.i.i.i.i.i468 to i32
  %.not39.i.i.i.i.i.i.i469 = icmp ugt i32 %.pre.i.i.i.i.i.i.i465, %i.abe
  br i1 %.not39.i.i.i.i.i.i.i469, label %bb.eu, label %.thread681

bb.eu:                                            ; preds = %bb.et
  %i.abf = getelementptr i8, ptr %i.aam, i64 26
  %.val.i38.i.i.i.i.i.i.i461 = load i16, ptr %i.abf, align 2, !tbaa !287
  %i.abg = zext i16 %.val.i38.i.i.i.i.i.i.i461 to i32
  %.not40.i.i.i.i.i.i.i462 = icmp ugt i32 %.pre.i.i.i.i.i.i.i465, %i.abg
  br i1 %.not40.i.i.i.i.i.i.i462, label %_ZL17hasHugeExpressionN4llvm8ArrayRefINS_8SCEVUseTIPKNS_4SCEVEEEEE.exit473, label %.thread681

_ZL17hasHugeExpressionN4llvm8ArrayRefINS_8SCEVUseTIPKNS_4SCEVEEEEE.exit473: ; preds = %bb.eu
  %i.abh = getelementptr inbounds nuw i8, ptr %.0333818, i64 40 ; 2 uses
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !138
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.backedge, %_ZL17hasHugeExpressionN4llvm8ArrayRefINS_8SCEVUseTIPKNS_4SCEVEEEEE.exit473
  %.tr.i.in.in.in.i = phi ptr [ %i.abi, %_ZL17hasHugeExpressionN4llvm8ArrayRefINS_8SCEVUseTIPKNS_4SCEVEEEEE.exit473 ], [ %.tr.i.in.in.in.i.be, %tailrecurse.i.i.backedge ]
  %.tr.i.in.in.i = load i64, ptr %.tr.i.in.in.in.i, align 8
  %.tr.i.in.i = and i64 %.tr.i.in.in.i, -8
  %.tr.i.i = inttoptr i64 %.tr.i.in.i to ptr      ; 11 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 24
  %i.abk = load i16, ptr %i.abj, align 8, !tbaa !132
  switch i16 %i.abk, label %bb.ff [
    i16 0, label %bb.ev
    i16 1, label %bb.ew
    i16 14, label %bb.ex
    i16 15, label %bb.ex
    i16 2, label %bb.ex
    i16 3, label %bb.ex
    i16 4, label %bb.ex
    i16 8, label %bb.ey
    i16 6, label %bb.ez
    i16 9, label %bb.fa
    i16 10, label %bb.fa
    i16 11, label %bb.fa
    i16 12, label %bb.fa
    i16 13, label %bb.fb
    i16 5, label %bb.fc
    i16 7, label %bb.fd
    i16 16, label %bb.fe
  ]

bb.ev:                                            ; preds = %tailrecurse.i.i
  %i.abl = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 40
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !223
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  br label %_ZNK4llvm14SCEVAddRecExpr7getTypeEv.exit

bb.ew:                                            ; preds = %tailrecurse.i.i
  %i.abo = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 40
  br label %_ZNK4llvm14SCEVAddRecExpr7getTypeEv.exit

bb.ex:                                            ; preds = %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i
  %i.abp = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 48
  br label %_ZNK4llvm14SCEVAddRecExpr7getTypeEv.exit

bb.ey:                                            ; preds = %tailrecurse.i.i
  %i.abq = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 40
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !138
  br label %tailrecurse.i.i.backedge

bb.ez:                                            ; preds = %tailrecurse.i.i
  %i.abs = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 40
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !138
  br label %tailrecurse.i.i.backedge

bb.fa:                                            ; preds = %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i, %tailrecurse.i.i
  %i.abu = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 40
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !138
  br label %tailrecurse.i.i.backedge

bb.fb:                                            ; preds = %tailrecurse.i.i
  %i.abw = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 40
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !138
  br label %tailrecurse.i.i.backedge

bb.fc:                                            ; preds = %tailrecurse.i.i
  %i.aby = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 56
  br label %_ZNK4llvm14SCEVAddRecExpr7getTypeEv.exit

bb.fd:                                            ; preds = %tailrecurse.i.i
  %i.abz = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 48
  br label %tailrecurse.i.i.backedge

tailrecurse.i.i.backedge:                         ; preds = %bb.fd, %bb.fb, %bb.fa, %bb.ez, %bb.ey
  %.tr.i.in.in.in.i.be = phi ptr [ %i.abr, %bb.ey ], [ %i.abt, %bb.ez ], [ %i.abv, %bb.fa ], [ %i.abx, %bb.fb ], [ %i.abz, %bb.fd ]
  br label %tailrecurse.i.i

bb.fe:                                            ; preds = %tailrecurse.i.i
  %i.aca = getelementptr inbounds i8, ptr %.tr.i.i, i64 -8
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !229
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  br label %_ZNK4llvm14SCEVAddRecExpr7getTypeEv.exit

bb.ff:                                            ; preds = %tailrecurse.i.i
  unreachable

_ZNK4llvm14SCEVAddRecExpr7getTypeEv.exit:         ; preds = %bb.ev, %bb.ew, %bb.ex, %bb.fc, %bb.fe
  %.0.in.i.i = phi ptr [ %i.abn, %bb.ev ], [ %i.abo, %bb.ew ], [ %i.abp, %bb.ex ], [ %i.acc, %bb.fe ], [ %i.aby, %bb.fc ]
  %.0.i.i474 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !231 ; 7 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.0.i.i474, i64 8 ; 3 uses
  %i.ace = load i32, ptr %i.acd, align 8
  %i.acf = and i32 %i.ace, 255
  %i.acg = icmp eq i32 %i.acf, 15
  %i.ach = load ptr, ptr %i.uf, align 8, !tbaa !219, !nonnull !104, !align !220 ; 2 uses
  br i1 %i.acg, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %_ZNK4llvm14SCEVAddRecExpr7getTypeEv.exit
  %i.aci = call noundef i32 @_ZNK4llvm10DataLayout22getIndexTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ach, ptr noundef nonnull %.0.i.i474) #29
  %i.acj = zext i32 %i.aci to i64
  br label %_ZNK4llvm15ScalarEvolution17getTypeSizeInBitsEPNS_4TypeE.exit

bb.fh:                                            ; preds = %_ZNK4llvm14SCEVAddRecExpr7getTypeEv.exit
  %i.ack = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ach, ptr noundef nonnull %.0.i.i474) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.ack, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.ack, 1
  %i.acl = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.acl, label %bb.fi, label %_ZNK4llvm15ScalarEvolution17getTypeSizeInBitsEPNS_4TypeE.exit

bb.fi:                                            ; preds = %bb.fh
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.150) #31
  unreachable

_ZNK4llvm15ScalarEvolution17getTypeSizeInBitsEPNS_4TypeE.exit: ; preds = %bb.fg, %bb.fh
  %.0.i475 = phi i64 [ %i.acj, %bb.fg ], [ %.fca.0.extract.i, %bb.fh ]
  %i.acm = icmp ugt i64 %.0.i475, 64
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  store ptr %i.ug, ptr %24, align 8, !tbaa !107
  store i32 0, ptr %i.uh, align 8, !tbaa !134
  store i32 7, ptr %i.ui, align 4, !tbaa !135
  %i.acn = load i64, ptr %i.aau, align 8, !tbaa !139
  %i.aco = load i64, ptr %i.aaw, align 8, !tbaa !139
  %i.acp = add i64 %i.aco, %i.acn
  %i.acq = trunc i64 %i.acp to i32
  %i.acr = add i32 %i.acq, -1                     ; 2 uses
  %i.acs = icmp eq i32 %i.acr, 0
  br i1 %i.acs, label %.critedge840, label %.lr.ph813

.lr.ph813:                                        ; preds = %_ZNK4llvm15ScalarEvolution17getTypeSizeInBitsEPNS_4TypeE.exit
  %i.act = getelementptr inbounds nuw i8, ptr %i.aam, i64 40
  %zext = zext i32 %i.acr to i64
  br label %.lr.ph809

._crit_edge814:                                   ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj7EED2Ev.exit
  br i1 %i.ahp, label %.thread668.jt0, label %.critedge840

.lr.ph809:                                        ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj7EED2Ev.exit, %.lr.ph813
  %indvars.iv882 = phi i64 [ 0, %.lr.ph813 ], [ %indvars.iv.next883, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj7EED2Ev.exit ] ; 12 uses
  %indvars.iv875 = phi i32 [ 1, %.lr.ph813 ], [ %indvars.iv.next876, %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj7EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  store ptr %i.uj, ptr %25, align 8, !tbaa !107
  store i32 0, ptr %i.uk, align 8, !tbaa !134
  store i32 7, ptr %i.ul, align 4, !tbaa !135
  %i.acu = shl nuw nsw i64 %indvars.iv882, 1      ; 3 uses
  %26 = icmp eq i64 %indvars.iv882, 0
  %i.acv = lshr i64 %indvars.iv882, 1
  %.neg.i = add nuw nsw i64 %indvars.iv882, 1     ; 3 uses
  %i.acw = trunc nsw i64 %.neg.i to i32
  br label %bb.fj

._crit_edge810:                                   ; preds = %._crit_edge805
  %.pre893 = load i32, ptr %i.uk, align 8, !tbaa !134
  %.not.i476 = icmp eq i32 %.pre893, 0
  br i1 %.not.i476, label %bb.fu, label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit501

bb.fj:                                            ; preds = %.lr.ph809, %._crit_edge805
  %indvars.iv884 = phi i64 [ %indvars.iv882, %.lr.ph809 ], [ %indvars.iv.next885, %._crit_edge805 ] ; 6 uses
  %indvars.iv877 = phi i32 [ %indvars.iv875, %.lr.ph809 ], [ %indvars.iv.next878, %._crit_edge805 ] ; 2 uses
  %indvars.iv873 = phi i32 [ 0, %.lr.ph809 ], [ %indvars.iv.next874, %._crit_edge805 ] ; 2 uses
  %i.acx = sub nsw i64 %i.acu, %indvars.iv884     ; 11 uses
  %i.acy = icmp eq i64 %i.acx, %indvars.iv882
  %or.cond.i = or i1 %26, %i.acy
  br i1 %or.cond.i, label %_ZL6ChoosemmRb.exit, label %27

27:                                               ; preds = %bb.fj
  %28 = and i64 %i.acx, 4294967295
  %29 = icmp samesign ugt i64 %28, %indvars.iv882
  br i1 %29, label %_ZL6ChoosemmRb.exit, label %bb.fk

bb.fk:                                            ; preds = %27
  %i.acz = icmp samesign ult i64 %i.acv, %i.acx
  %i.ada = sub nuw nsw i64 %indvars.iv882, %i.acx
  %spec.select.i477 = select i1 %i.acz, i64 %i.ada, i64 %i.acx ; 5 uses
  %.not24.i = icmp eq i64 %spec.select.i477, 0
  br i1 %.not24.i, label %_ZL6ChoosemmRb.exit, label %_ZL7umul_ovmmRb.exit.i.preheader

_ZL7umul_ovmmRb.exit.i.preheader:                 ; preds = %bb.fk
  %xtraiter = and i64 %spec.select.i477, 1
  %i.adb = icmp eq i64 %spec.select.i477, 1
  br i1 %i.adb, label %_ZL7umul_ovmmRb.exit.i.epil.preheader, label %_ZL7umul_ovmmRb.exit.i.preheader.new

_ZL7umul_ovmmRb.exit.i.preheader.new:             ; preds = %_ZL7umul_ovmmRb.exit.i.preheader
  %unroll_iter = and i64 %spec.select.i477, -2
  br label %_ZL7umul_ovmmRb.exit.i

_ZL7umul_ovmmRb.exit.i:                           ; preds = %_ZL7umul_ovmmRb.exit.i, %_ZL7umul_ovmmRb.exit.i.preheader.new
  %.4618 = phi i8 [ 0, %_ZL7umul_ovmmRb.exit.i.preheader.new ], [ %.5619.1, %_ZL7umul_ovmmRb.exit.i ]
  %.026.i = phi i64 [ 1, %_ZL7umul_ovmmRb.exit.i.preheader.new ], [ %i.adm, %_ZL7umul_ovmmRb.exit.i ] ; 5 uses
  %.01925.i = phi i64 [ 1, %_ZL7umul_ovmmRb.exit.i.preheader.new ], [ %i.adl, %_ZL7umul_ovmmRb.exit.i ]
  %niter = phi i64 [ 0, %_ZL7umul_ovmmRb.exit.i.preheader.new ], [ %niter.next.1, %_ZL7umul_ovmmRb.exit.i ]
  %i.adc = sub i64 %.neg.i, %.026.i               ; 2 uses
  %mul.i.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.adc, i64 %.01925.i) ; 2 uses
  %i.add = icmp ugt i64 %i.adc, 1
  %mul.ov.i.i = extractvalue { i64, i1 } %mul.i.i, 1
  %i.ade = select i1 %i.add, i1 %mul.ov.i.i, i1 false
  %mul.val.i.i = extractvalue { i64, i1 } %mul.i.i, 0
  %i.adf = udiv i64 %mul.val.i.i, %.026.i
  %i.adg = add nuw i64 %.026.i, 1
  %i.adh = sub i64 %indvars.iv882, %.026.i        ; 2 uses
  %mul.i.i.1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.adh, i64 %i.adf) ; 2 uses
  %i.adi = icmp ugt i64 %i.adh, 1
  %mul.ov.i.i.1 = extractvalue { i64, i1 } %mul.i.i.1, 1
  %i.adj = select i1 %i.adi, i1 %mul.ov.i.i.1, i1 false
  %i.adk = select i1 %i.adj, i1 true, i1 %i.ade
  %.5619.1 = select i1 %i.adk, i8 1, i8 %.4618    ; 3 uses
  %mul.val.i.i.1 = extractvalue { i64, i1 } %mul.i.i.1, 0
  %i.adl = udiv i64 %mul.val.i.i.1, %i.adg        ; 3 uses
  %i.adm = add nuw i64 %.026.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL6ChoosemmRb.exit.loopexit.unr-lcssa, label %_ZL7umul_ovmmRb.exit.i, !llvm.loop !1053

_ZL6ChoosemmRb.exit.loopexit.unr-lcssa:           ; preds = %_ZL7umul_ovmmRb.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL6ChoosemmRb.exit, label %_ZL7umul_ovmmRb.exit.i.epil.preheader

_ZL7umul_ovmmRb.exit.i.epil.preheader:            ; preds = %_ZL6ChoosemmRb.exit.loopexit.unr-lcssa, %_ZL7umul_ovmmRb.exit.i.preheader
  %.4618.epil.init = phi i8 [ 0, %_ZL7umul_ovmmRb.exit.i.preheader ], [ %.5619.1, %_ZL6ChoosemmRb.exit.loopexit.unr-lcssa ]
  %.026.i.epil.init = phi i64 [ 1, %_ZL7umul_ovmmRb.exit.i.preheader ], [ %i.adm, %_ZL6ChoosemmRb.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01925.i.epil.init = phi i64 [ 1, %_ZL7umul_ovmmRb.exit.i.preheader ], [ %i.adl, %_ZL6ChoosemmRb.exit.loopexit.unr-lcssa ]
  %lcmp.mod1068 = trunc i64 %spec.select.i477 to i1
  call void @llvm.assume(i1 %lcmp.mod1068)
  %i.adn = sub i64 %.neg.i, %.026.i.epil.init     ; 2 uses
  %mul.i.i.epil = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.adn, i64 %.01925.i.epil.init) ; 2 uses
  %i.ado = icmp ugt i64 %i.adn, 1
  %mul.ov.i.i.epil = extractvalue { i64, i1 } %mul.i.i.epil, 1
  %i.adp = select i1 %i.ado, i1 %mul.ov.i.i.epil, i1 false
  %.5619.epil = select i1 %i.adp, i8 1, i8 %.4618.epil.init
  %mul.val.i.i.epil = extractvalue { i64, i1 } %mul.i.i.epil, 0
  %i.adq = udiv i64 %mul.val.i.i.epil, %.026.i.epil.init
  br label %_ZL6ChoosemmRb.exit

_ZL6ChoosemmRb.exit:                              ; preds = %_ZL7umul_ovmmRb.exit.i.epil.preheader, %_ZL6ChoosemmRb.exit.loopexit.unr-lcssa, %bb.fj, %27, %bb.fk
  %.6620 = phi i8 [ 0, %bb.fj ], [ 0, %27 ], [ 0, %bb.fk ], [ %.5619.1, %_ZL6ChoosemmRb.exit.loopexit.unr-lcssa ], [ %.5619.epil, %_ZL7umul_ovmmRb.exit.i.epil.preheader ] ; 2 uses
  %.020.i = phi i64 [ 1, %bb.fj ], [ 0, %27 ], [ 1, %bb.fk ], [ %i.adl, %_ZL6ChoosemmRb.exit.loopexit.unr-lcssa ], [ %i.adq, %_ZL7umul_ovmmRb.exit.i.epil.preheader ] ; 2 uses
  %i.adr = sub nuw nsw i64 %indvars.iv884, %indvars.iv882
  %i.ads = load i64, ptr %i.aau, align 8, !tbaa !139
  %i.adt = trunc i64 %i.ads to i32                ; 2 uses
  %indvars.iv.next885 = add nuw nsw i64 %indvars.iv884, 1 ; 2 uses
  %i.adu = trunc nuw i64 %indvars.iv.next885 to i32
  %i.adv = sub i32 %i.adu, %i.adt
  %i.adw = trunc nuw nsw i64 %i.adr to i32
  %.sroa.speculated535 = call i32 @llvm.smax.i32(i32 %i.adw, i32 %i.adv)
  %i.adx = load i64, ptr %i.aaw, align 8, !tbaa !139
  %i.ady = trunc i64 %i.adx to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.acw, i32 %i.ady) ; 2 uses
  %i.adz = icmp sge i32 %.sroa.speculated535, %.sroa.speculated
  %i.aea = trunc nuw i8 %.6620 to i1              ; 2 uses
  %.not384802 = select i1 %i.adz, i1 true, i1 %i.aea
  br i1 %.not384802, label %._crit_edge805, label %.lr.ph804

.lr.ph804:                                        ; preds = %_ZL6ChoosemmRb.exit
  %i.aeb = icmp eq i64 %i.acu, %indvars.iv884
  %i.aec = lshr i64 %i.acx, 1
  %.neg.i483 = add nsw i64 %i.acx, 1              ; 2 uses
  %i.aed = sub i32 %indvars.iv877, %i.adt
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv873, i32 %i.aed)
  %i.aee = zext nneg i32 %smax to i64
  %i.aef = sext i32 %.sroa.speculated to i64
  br label %bb.fl

._crit_edge805:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit499, %_ZL6ChoosemmRb.exit
  %.pre-phi = phi i1 [ %i.aea, %_ZL6ChoosemmRb.exit ], [ %i.agl, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit499 ]
  %.2616.lcssa = phi i8 [ %.6620, %_ZL6ChoosemmRb.exit ], [ %.3617, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit499 ]
  %i.aeg = icmp eq i64 %indvars.iv884, %i.acu
  %.not382 = select i1 %i.aeg, i1 true, i1 %.pre-phi
  %indvars.iv.next874 = add nuw i32 %indvars.iv873, 1
  %indvars.iv.next878 = add i32 %indvars.iv877, 1
  br i1 %.not382, label %._crit_edge810, label %bb.fj, !llvm.loop !1054

bb.fl:                                            ; preds = %.lr.ph804, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit499
  %indvars.iv879 = phi i64 [ %i.aee, %.lr.ph804 ], [ %indvars.iv.next880, %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit499 ] ; 4 uses
  %i.aeh = sub nsw i64 %indvars.iv882, %indvars.iv879 ; 5 uses
  %i.aei = icmp eq i64 %i.acx, %i.aeh
  %or.cond.i479 = or i1 %i.aeb, %i.aei
  br i1 %or.cond.i479, label %_ZL6ChoosemmRb.exit493, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aej = icmp ugt i64 %i.aeh, %i.acx
  br i1 %i.aej, label %_ZL6ChoosemmRb.exit493, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aek = icmp ult i64 %i.aec, %i.aeh
  %i.ael = sub nuw nsw i64 %i.acx, %i.aeh
  %spec.select.i480 = select i1 %i.aek, i64 %i.ael, i64 %i.aeh ; 2 uses
  %.not24.i481 = icmp eq i64 %spec.select.i480, 0
  br i1 %.not24.i481, label %_ZL6ChoosemmRb.exit493, label %.lr.ph.i482

.lr.ph.i482:                                      ; preds = %bb.fn
  %i.aem = add nsw i64 %spec.select.i480, 1       ; 2 uses
  %umax.i484 = call i64 @llvm.umax.i64(i64 %i.aem, i64 2)
  %i.aen = add i64 %umax.i484, -1                 ; 3 uses
  %xtraiter1069 = and i64 %i.aen, 1
  %i.aeo = icmp ult i64 %i.aem, 3
  br i1 %i.aeo, label %_ZL7umul_ovmmRb.exit.i488.epil.preheader, label %.lr.ph.i482.new

.lr.ph.i482.new:                                  ; preds = %.lr.ph.i482
  %unroll_iter1074 = and i64 %i.aen, -2
  br label %_ZL7umul_ovmmRb.exit.i488

_ZL7umul_ovmmRb.exit.i488:                        ; preds = %_ZL7umul_ovmmRb.exit.i488, %.lr.ph.i482.new
  %.7621 = phi i8 [ 0, %.lr.ph.i482.new ], [ %.8622.1, %_ZL7umul_ovmmRb.exit.i488 ]
  %.026.i485 = phi i64 [ 1, %.lr.ph.i482.new ], [ %i.aez, %_ZL7umul_ovmmRb.exit.i488 ] ; 5 uses
  %.01925.i486 = phi i64 [ 1, %.lr.ph.i482.new ], [ %i.aey, %_ZL7umul_ovmmRb.exit.i488 ]
  %niter1075 = phi i64 [ 0, %.lr.ph.i482.new ], [ %niter1075.next.1, %_ZL7umul_ovmmRb.exit.i488 ]
  %i.aep = sub i64 %.neg.i483, %.026.i485         ; 2 uses
  %mul.i.i487 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aep, i64 %.01925.i486) ; 2 uses
  %i.aeq = icmp ugt i64 %i.aep, 1
  %mul.ov.i.i492 = extractvalue { i64, i1 } %mul.i.i487, 1
  %i.aer = select i1 %i.aeq, i1 %mul.ov.i.i492, i1 false
  %mul.val.i.i489 = extractvalue { i64, i1 } %mul.i.i487, 0
  %i.aes = udiv i64 %mul.val.i.i489, %.026.i485
  %i.aet = add nuw i64 %.026.i485, 1
  %i.aeu = sub i64 %i.acx, %.026.i485             ; 2 uses
  %mul.i.i487.1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aeu, i64 %i.aes) ; 2 uses
  %i.aev = icmp ugt i64 %i.aeu, 1
  %mul.ov.i.i492.1 = extractvalue { i64, i1 } %mul.i.i487.1, 1
  %i.aew = select i1 %i.aev, i1 %mul.ov.i.i492.1, i1 false
  %i.aex = select i1 %i.aew, i1 true, i1 %i.aer
  %.8622.1 = select i1 %i.aex, i8 1, i8 %.7621    ; 3 uses
  %mul.val.i.i489.1 = extractvalue { i64, i1 } %mul.i.i487.1, 0
  %i.aey = udiv i64 %mul.val.i.i489.1, %i.aet     ; 3 uses
  %i.aez = add nuw i64 %.026.i485, 2              ; 2 uses
  %niter1075.next.1 = add nuw i64 %niter1075, 2   ; 2 uses
  %niter1075.ncmp.1 = icmp eq i64 %niter1075.next.1, %unroll_iter1074
  br i1 %niter1075.ncmp.1, label %_ZL6ChoosemmRb.exit493.loopexit.unr-lcssa, label %_ZL7umul_ovmmRb.exit.i488, !llvm.loop !1053

_ZL6ChoosemmRb.exit493.loopexit.unr-lcssa:        ; preds = %_ZL7umul_ovmmRb.exit.i488
  %lcmp.mod1070.not = icmp eq i64 %xtraiter1069, 0
  br i1 %lcmp.mod1070.not, label %_ZL6ChoosemmRb.exit493, label %_ZL7umul_ovmmRb.exit.i488.epil.preheader

_ZL7umul_ovmmRb.exit.i488.epil.preheader:         ; preds = %_ZL6ChoosemmRb.exit493.loopexit.unr-lcssa, %.lr.ph.i482
  %.7621.epil.init = phi i8 [ 0, %.lr.ph.i482 ], [ %.8622.1, %_ZL6ChoosemmRb.exit493.loopexit.unr-lcssa ]
  %.026.i485.epil.init = phi i64 [ 1, %.lr.ph.i482 ], [ %i.aez, %_ZL6ChoosemmRb.exit493.loopexit.unr-lcssa ] ; 2 uses
  %.01925.i486.epil.init = phi i64 [ 1, %.lr.ph.i482 ], [ %i.aey, %_ZL6ChoosemmRb.exit493.loopexit.unr-lcssa ]
  %lcmp.mod1073 = trunc i64 %i.aen to i1
  call void @llvm.assume(i1 %lcmp.mod1073)
  %i.afa = sub i64 %.neg.i483, %.026.i485.epil.init ; 2 uses
  %mul.i.i487.epil = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.afa, i64 %.01925.i486.epil.init) ; 2 uses
  %i.afb = icmp ugt i64 %i.afa, 1
  %mul.ov.i.i492.epil = extractvalue { i64, i1 } %mul.i.i487.epil, 1
  %i.afc = select i1 %i.afb, i1 %mul.ov.i.i492.epil, i1 false
  %.8622.epil = select i1 %i.afc, i8 1, i8 %.7621.epil.init
  %mul.val.i.i489.epil = extractvalue { i64, i1 } %mul.i.i487.epil, 0
  %i.afd = udiv i64 %mul.val.i.i489.epil, %.026.i485.epil.init
  br label %_ZL6ChoosemmRb.exit493

_ZL6ChoosemmRb.exit493:                           ; preds = %_ZL7umul_ovmmRb.exit.i488.epil.preheader, %_ZL6ChoosemmRb.exit493.loopexit.unr-lcssa, %bb.fl, %bb.fm, %bb.fn
  %.9 = phi i8 [ 0, %bb.fl ], [ 0, %bb.fm ], [ 0, %bb.fn ], [ %.8622.1, %_ZL6ChoosemmRb.exit493.loopexit.unr-lcssa ], [ %.8622.epil, %_ZL7umul_ovmmRb.exit.i488.epil.preheader ] ; 2 uses
  %.020.i491 = phi i64 [ 1, %bb.fl ], [ 0, %bb.fm ], [ 1, %bb.fn ], [ %i.aey, %_ZL6ChoosemmRb.exit493.loopexit.unr-lcssa ], [ %i.afd, %_ZL7umul_ovmmRb.exit.i488.epil.preheader ] ; 3 uses
  br i1 %i.acm, label %_ZL7umul_ovmmRb.exit, label %bb.fo

_ZL7umul_ovmmRb.exit:                             ; preds = %_ZL6ChoosemmRb.exit493
  %mul.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.020.i491, i64 %.020.i) ; 2 uses
  %i.afe = icmp ugt i64 %.020.i491, 1
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %i.aff = select i1 %i.afe, i1 %mul.ov.i, i1 false
  %.10623 = select i1 %i.aff, i8 1, i8 %.9
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0
  br label %bb.fp

bb.fo:                                            ; preds = %_ZL6ChoosemmRb.exit493
  %i.afg = mul i64 %.020.i491, %.020.i
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %_ZL7umul_ovmmRb.exit
  %.3617 = phi i8 [ %.10623, %_ZL7umul_ovmmRb.exit ], [ %.9, %bb.fo ] ; 2 uses
  %.0307 = phi i64 [ %mul.val.i, %_ZL7umul_ovmmRb.exit ], [ %i.afg, %bb.fo ]
  %i.afh = load i32, ptr %i.acd, align 8
  %i.afi = and i32 %i.afh, 255
  %i.afj = icmp eq i32 %i.afi, 12
  br i1 %i.afj, label %_ZNK4llvm15ScalarEvolution20getEffectiveSCEVTypeEPNS_4TypeE.exit, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afk = load ptr, ptr %i.uf, align 8, !tbaa !219, !nonnull !104, !align !220
  %i.afl = call noundef ptr @_ZNK4llvm10DataLayout12getIndexTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.afk, ptr noundef nonnull %.0.i.i474) #29
  br label %_ZNK4llvm15ScalarEvolution20getEffectiveSCEVTypeEPNS_4TypeE.exit

_ZNK4llvm15ScalarEvolution20getEffectiveSCEVTypeEPNS_4TypeE.exit: ; preds = %bb.fp, %bb.fq
  %.0.i519 = phi ptr [ %i.afl, %bb.fq ], [ %.0.i.i474, %bb.fp ]
  %i.afm = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %.0.i519, i64 noundef %.0307, i1 noundef zeroext false, i1 noundef zeroext true) #29, !inline_history !288
  %i.afn = call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantEPNS_11ConstantIntE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %i.afm), !inline_history !288
  %i.afo = sub nsw i64 %indvars.iv884, %indvars.iv879
  %i.afp = load ptr, ptr %i.abh, align 8, !tbaa !138
  %i.afq = and i64 %i.afo, 4294967295
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.afp, i64 %i.afq
  %.sroa.0.0.copyload.i494 = load i64, ptr %i.afr, align 8
  %i.afs = and i64 %.sroa.0.0.copyload.i494, -8
  %i.aft = load ptr, ptr %i.act, align 8, !tbaa !138
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %indvars.iv879
  %.sroa.0.0.copyload.i496 = load i64, ptr %i.afu, align 8
  %i.afv = and i64 %.sroa.0.0.copyload.i496, -8
  %i.afw = ptrtoint ptr %i.afn to i64
  %i.afx = and i64 %i.afw, -7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.um, ptr %4, align 8, !tbaa !107
  store i32 3, ptr %i.uo, align 4, !tbaa !135
  store i64 %i.afx, ptr %i.um, align 8
  store i64 %i.afs, ptr %.sroa.4613.0..sroa_idx, align 8
  store i64 %i.afv, ptr %.sroa.5614.0..sroa_idx, align 8
  store i32 3, ptr %i.un, align 8, !tbaa !134
  %i.afy = call noundef ptr @_ZN4llvm15ScalarEvolution10getMulExprERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEENS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i32 noundef %i.tr), !inline_history !1055
  %i.afz = load ptr, ptr %4, align 8, !tbaa !107  ; 2 uses
  %i.aga = icmp eq ptr %i.afz, %i.um
  br i1 %i.aga, label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EED2Ev.exit, label %bb.fr

bb.fr:                                            ; preds = %_ZNK4llvm15ScalarEvolution20getEffectiveSCEVTypeEPNS_4TypeE.exit
  call void @free(ptr noundef %i.afz) #29
  br label %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EED2Ev.exit: ; preds = %_ZNK4llvm15ScalarEvolution20getEffectiveSCEVTypeEPNS_4TypeE.exit, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.agb = ptrtoint ptr %i.afy to i64
  %i.agc = and i64 %i.agb, -7                     ; 2 uses
  %i.agd = load i32, ptr %i.uk, align 8, !tbaa !134 ; 2 uses
  %i.age = load i32, ptr %i.ul, align 4, !tbaa !135
  %.not.i498 = icmp ult i32 %i.agd, %i.age
  br i1 %.not.i498, label %bb.ft, label %bb.fs, !prof !140

bb.fs:                                            ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EED2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %25, i64 %i.agc)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit499

bb.ft:                                            ; preds = %_ZN4llvm11SmallVectorINS_8SCEVUseTIPKNS_4SCEVEEELj3EED2Ev.exit
  %i.agf = zext i32 %i.agd to i64
  %i.agg = load ptr, ptr %25, align 8, !tbaa !107
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %i.agf
  store i64 %i.agc, ptr %i.agh, align 1
  %i.agi = load i32, ptr %i.uk, align 8, !tbaa !134
  %i.agj = add i32 %i.agi, 1
  store i32 %i.agj, ptr %i.uk, align 8, !tbaa !134
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit499

_ZN4llvm23SmallVectorTemplateBaseINS_8SCEVUseTIPKNS_4SCEVEEELb1EE9push_backES5_.exit499: ; preds = %bb.fs, %bb.ft
  %indvars.iv.next880 = add nuw nsw i64 %indvars.iv879, 1 ; 2 uses
  %i.agk = icmp sge i64 %indvars.iv.next880, %i.aef
  %i.agl = trunc nuw i8 %.3617 to i1              ; 2 uses
  %.not384 = select i1 %i.agk, i1 true, i1 %i.agl
  br i1 %.not384, label %._crit_edge805, label %bb.fl, !llvm.loop !1056

bb.fu:                                            ; preds = %._crit_edge810
  %i.agm = load i32, ptr %i.acd, align 8
  %i.agn = and i32 %i.agm, 255
  %i.ago = icmp eq i32 %i.agn, 12
  br i1 %i.ago, label %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.agp = load ptr, ptr %i.uf, align 8, !tbaa !219, !nonnull !104, !align !220
  %i.agq = call noundef ptr @_ZNK4llvm10DataLayout12getIndexTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.agp, ptr noundef nonnull %.0.i.i474) #29, !inline_history !2
  br label %_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit

_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb.exit: ; preds = %bb.fu, %bb.fv
  %.0.i.i520 = phi ptr [ %i.agq, %bb.fv ], [ %.0.i.i474, %bb.fu ]
  %i.agr = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %.0.i.i520, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true) #29, !inline_history !2
  %i.ags = call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantEPNS_11ConstantIntE(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %i.agr), !inline_history !2
end_hunk_0
