Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/vsite_parm?download=true
inline.NumInlined: 1614
inline.NumDeleted: 662
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z10set_vsitesbP7t_atomsP22PreprocessingAtomTypesRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS5_95EEERKNS3_8MDLoggerE:bb.a

_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit72.i: ; preds = %bb.hq, %bb.hp, %.noexc312
  %.2.i71.i = phi float [ %i.bgg, %bb.hp ], [ -4.092030e+05, %.noexc312 ], [ -4.092030e+05, %bb.hq ] ; 2 uses
  %i.bgi = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc313 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc313:                                        ; preds = %_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit72.i
  %i.bgj = load i32, ptr %i.bgi, align 4, !tbaa !37 ; 2 uses
  %i.bgk = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2alEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc314 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc314:                                        ; preds = %.noexc313
  %i.bgl = load i32, ptr %i.bgk, align 4, !tbaa !37 ; 2 uses
  br i1 %.not22.i.i286, label %_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit81.i, label %.lr.ph.i74.i

.lr.ph.i74.i:                                     ; preds = %.noexc314, %bb.hs
  %.sroa.0.023.i75.i = phi ptr [ %i.bgv, %bb.hs ], [ %i.bfc, %.noexc314 ] ; 4 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i75.i, i64 4
  %i.bgn = load i32, ptr %i.bgm, align 4, !tbaa !37 ; 2 uses
  %i.bgo = icmp eq i32 %i.bgj, %i.bgn
  %i.bgp = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i75.i, i64 8
  %i.bgq = load i32, ptr %i.bgp, align 4, !tbaa !37 ; 2 uses
  %i.bgr = icmp eq i32 %i.bgl, %i.bgq
  %or.cond29.i76.i = select i1 %i.bgo, i1 %i.bgr, i1 false
  br i1 %or.cond29.i76.i, label %bb.hr, label %.lr.ph._crit_edge.i77.i

.lr.ph._crit_edge.i77.i:                          ; preds = %.lr.ph.i74.i
  %i.bgs = icmp eq i32 %i.bgj, %i.bgq
  %i.bgt = icmp eq i32 %i.bgl, %i.bgn
  %or.cond.i78.i = and i1 %i.bgt, %i.bgs
  br i1 %or.cond.i78.i, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %.lr.ph._crit_edge.i77.i, %.lr.ph.i74.i
  %i.bgu = load float, ptr %.sroa.0.023.i75.i, align 4, !tbaa !134
  br label %_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit81.i

bb.hs:                                            ; preds = %.lr.ph._crit_edge.i77.i
  %i.bgv = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i75.i, i64 20 ; 2 uses
  %.not.i79.i = icmp eq ptr %i.bgv, %i.bfd
  br i1 %.not.i79.i, label %_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit81.i, label %.lr.ph.i74.i

_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit81.i: ; preds = %bb.hs, %bb.hr, %.noexc314
  %.2.i80.i = phi float [ %i.bgu, %bb.hr ], [ -4.092030e+05, %.noexc314 ], [ -4.092030e+05, %bb.hs ] ; 2 uses
  %i.bgw = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc315 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc315:                                        ; preds = %_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit81.i
  %i.bgx = load i32, ptr %i.bgw, align 4, !tbaa !37 ; 2 uses
  %i.bgy = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2amEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc316 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc316:                                        ; preds = %.noexc315
  %i.bgz = load i32, ptr %i.bgy, align 4, !tbaa !37 ; 2 uses
  br i1 %.not22.i.i286, label %_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit90.i, label %.lr.ph.i83.i

.lr.ph.i83.i:                                     ; preds = %.noexc316, %bb.hu
  %.sroa.0.023.i84.i = phi ptr [ %i.bhj, %bb.hu ], [ %i.bfc, %.noexc316 ] ; 4 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i84.i, i64 4
  %i.bhb = load i32, ptr %i.bha, align 4, !tbaa !37 ; 2 uses
  %i.bhc = icmp eq i32 %i.bgx, %i.bhb
  %i.bhd = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i84.i, i64 8
  %i.bhe = load i32, ptr %i.bhd, align 4, !tbaa !37 ; 2 uses
  %i.bhf = icmp eq i32 %i.bgz, %i.bhe
  %or.cond29.i85.i = select i1 %i.bhc, i1 %i.bhf, i1 false
  br i1 %or.cond29.i85.i, label %bb.ht, label %.lr.ph._crit_edge.i86.i

.lr.ph._crit_edge.i86.i:                          ; preds = %.lr.ph.i83.i
  %i.bhg = icmp eq i32 %i.bgx, %i.bhe
  %i.bhh = icmp eq i32 %i.bgz, %i.bhb
  %or.cond.i87.i = and i1 %i.bhh, %i.bhg
  br i1 %or.cond.i87.i, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %.lr.ph._crit_edge.i86.i, %.lr.ph.i83.i
  %i.bhi = load float, ptr %.sroa.0.023.i84.i, align 4, !tbaa !134
  br label %_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit90.i

bb.hu:                                            ; preds = %.lr.ph._crit_edge.i86.i
  %i.bhj = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i84.i, i64 20 ; 2 uses
  %.not.i88.i = icmp eq ptr %i.bhj, %i.bfd
  br i1 %.not.i88.i, label %_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit90.i, label %.lr.ph.i83.i

_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit90.i: ; preds = %bb.hu, %bb.ht, %.noexc316
  %.2.i89.i = phi float [ %i.bhi, %bb.ht ], [ -4.092030e+05, %.noexc316 ], [ -4.092030e+05, %bb.hu ] ; 2 uses
  %i.bhk = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc317 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc317:                                        ; preds = %_ZL15get_bond_lengthN3gmx8ArrayRefIK22VsiteBondedInteractionEEii.exit90.i
  %i.bhl = load i32, ptr %i.bhk, align 4, !tbaa !37 ; 2 uses
  %i.bhm = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc318 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc318:                                        ; preds = %.noexc317
  %i.bhn = load i32, ptr %i.bhm, align 4, !tbaa !37 ; 2 uses
  %i.bho = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2akEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc319 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc319:                                        ; preds = %.noexc318
  %i.bhp = load i32, ptr %i.bho, align 4, !tbaa !37 ; 2 uses
  %.not26.i.i295 = icmp eq ptr %i.bfe, %i.bff     ; 3 uses
  br i1 %.not26.i.i295, label %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit.i297, label %.lr.ph.i91.i

.lr.ph.i91.i:                                     ; preds = %.noexc319, %bb.ia
  %.sroa.0.027.i.i296 = phi ptr [ %i.bik, %bb.ia ], [ %i.bfe, %.noexc319 ] ; 7 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i296, i64 4
  %i.bhr = load i32, ptr %i.bhq, align 4, !tbaa !37 ; 2 uses
  %i.bhs = icmp eq i32 %i.bhl, %i.bhr
  br i1 %i.bhs, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %.lr.ph.i91.i
  %i.bht = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i296, i64 8
  %i.bhu = load i32, ptr %i.bht, align 4, !tbaa !37
  %i.bhv = icmp eq i32 %i.bhn, %i.bhu
  br i1 %i.bhv, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.bhw = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i296, i64 12
  %i.bhx = load i32, ptr %i.bhw, align 4, !tbaa !37
  %i.bhy = icmp eq i32 %i.bhp, %i.bhx
  br i1 %i.bhy, label %bb.hz, label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %.lr.ph.i91.i
  %i.bhz = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i296, i64 12
  %i.bia = load i32, ptr %i.bhz, align 4, !tbaa !37
  %i.bib = icmp eq i32 %i.bhl, %i.bia
  br i1 %i.bib, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  %i.bic = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i296, i64 8
  %i.bid = load i32, ptr %i.bic, align 4, !tbaa !37
  %i.bie = icmp eq i32 %i.bhn, %i.bid
  %i.bif = icmp eq i32 %i.bhp, %i.bhr
  %or.cond.i94.i = and i1 %i.bif, %i.bie
  br i1 %or.cond.i94.i, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy, %bb.hw
  %i.big = load float, ptr %.sroa.0.027.i.i296, align 4, !tbaa !134
  %i.bih = fpext float %i.big to double
  %i.bii = fmul double %i.bih, f0x3F91DF46A2529D39
  %i.bij = fptrunc double %i.bii to float
  br label %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit.i297

bb.ia:                                            ; preds = %bb.hy, %bb.hx
  %i.bik = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i296, i64 20 ; 2 uses
  %.not.i92.i = icmp eq ptr %i.bik, %i.bff
  br i1 %.not.i92.i, label %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit.i297, label %.lr.ph.i91.i

_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit.i297: ; preds = %bb.ia, %bb.hz, %.noexc319
  %.2.i93.i = phi float [ %i.bij, %bb.hz ], [ -4.092030e+05, %.noexc319 ], [ -4.092030e+05, %bb.ia ] ; 3 uses
  %i.bil = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc320 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc320:                                        ; preds = %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit.i297
  %i.bim = load i32, ptr %i.bil, align 4, !tbaa !37 ; 2 uses
  %i.bin = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc321 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc321:                                        ; preds = %.noexc320
  %i.bio = load i32, ptr %i.bin, align 4, !tbaa !37 ; 2 uses
  %i.bip = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2alEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc322 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc322:                                        ; preds = %.noexc321
  %i.biq = load i32, ptr %i.bip, align 4, !tbaa !37 ; 2 uses
  br i1 %.not26.i.i295, label %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit101.i, label %.lr.ph.i96.i

.lr.ph.i96.i:                                     ; preds = %.noexc322, %bb.ig
  %.sroa.0.027.i97.i = phi ptr [ %i.bjl, %bb.ig ], [ %i.bfe, %.noexc322 ] ; 7 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i97.i, i64 4
  %i.bis = load i32, ptr %i.bir, align 4, !tbaa !37 ; 2 uses
  %i.bit = icmp eq i32 %i.bim, %i.bis
  br i1 %i.bit, label %bb.ib, label %bb.id

bb.ib:                                            ; preds = %.lr.ph.i96.i
  %i.biu = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i97.i, i64 8
  %i.biv = load i32, ptr %i.biu, align 4, !tbaa !37
  %i.biw = icmp eq i32 %i.bio, %i.biv
  br i1 %i.biw, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.bix = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i97.i, i64 12
  %i.biy = load i32, ptr %i.bix, align 4, !tbaa !37
  %i.biz = icmp eq i32 %i.biq, %i.biy
  br i1 %i.biz, label %bb.if, label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib, %.lr.ph.i96.i
  %i.bja = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i97.i, i64 12
  %i.bjb = load i32, ptr %i.bja, align 4, !tbaa !37
  %i.bjc = icmp eq i32 %i.bim, %i.bjb
  br i1 %i.bjc, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %bb.id
  %i.bjd = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i97.i, i64 8
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !37
  %i.bjf = icmp eq i32 %i.bio, %i.bje
  %i.bjg = icmp eq i32 %i.biq, %i.bis
  %or.cond.i100.i = and i1 %i.bjg, %i.bjf
  br i1 %or.cond.i100.i, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie, %bb.ic
  %i.bjh = load float, ptr %.sroa.0.027.i97.i, align 4, !tbaa !134
  %.fr1148 = freeze float %i.bjh
  %i.bji = fpext float %.fr1148 to double
  %i.bjj = fmul double %i.bji, f0x3F91DF46A2529D39
  %i.bjk = fptrunc double %i.bjj to float
  br label %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit101.i

bb.ig:                                            ; preds = %bb.ie, %bb.id
  %i.bjl = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i97.i, i64 20 ; 2 uses
  %.not.i98.i = icmp eq ptr %i.bjl, %i.bff
  br i1 %.not.i98.i, label %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit101.i, label %.lr.ph.i96.i

_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit101.i: ; preds = %bb.ig, %bb.if, %.noexc322
  %.2.i99.i = phi float [ %i.bjk, %bb.if ], [ -4.092030e+05, %.noexc322 ], [ -4.092030e+05, %bb.ig ] ; 3 uses
  %i.bjm = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc323 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc323:                                        ; preds = %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit101.i
  %i.bjn = load i32, ptr %i.bjm, align 4, !tbaa !37 ; 2 uses
  %i.bjo = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc324 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc324:                                        ; preds = %.noexc323
  %i.bjp = load i32, ptr %i.bjo, align 4, !tbaa !37 ; 2 uses
  %i.bjq = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2amEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %.noexc325 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc325:                                        ; preds = %.noexc324
  %i.bjr = load i32, ptr %i.bjq, align 4, !tbaa !37 ; 2 uses
  br i1 %.not26.i.i295, label %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit108.i, label %.lr.ph.i103.i

.lr.ph.i103.i:                                    ; preds = %.noexc325, %bb.im
  %.sroa.0.027.i104.i = phi ptr [ %i.bkm, %bb.im ], [ %i.bfe, %.noexc325 ] ; 7 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i104.i, i64 4
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !37 ; 2 uses
  %i.bju = icmp eq i32 %i.bjn, %i.bjt
  br i1 %i.bju, label %bb.ih, label %bb.ij

bb.ih:                                            ; preds = %.lr.ph.i103.i
  %i.bjv = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i104.i, i64 8
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !37
  %i.bjx = icmp eq i32 %i.bjp, %i.bjw
  br i1 %i.bjx, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.bjy = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i104.i, i64 12
  %i.bjz = load i32, ptr %i.bjy, align 4, !tbaa !37
  %i.bka = icmp eq i32 %i.bjr, %i.bjz
  br i1 %i.bka, label %bb.il, label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih, %.lr.ph.i103.i
  %i.bkb = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i104.i, i64 12
  %i.bkc = load i32, ptr %i.bkb, align 4, !tbaa !37
  %i.bkd = icmp eq i32 %i.bjn, %i.bkc
  br i1 %i.bkd, label %bb.ik, label %bb.im

bb.ik:                                            ; preds = %bb.ij
  %i.bke = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i104.i, i64 8
  %i.bkf = load i32, ptr %i.bke, align 4, !tbaa !37
  %i.bkg = icmp eq i32 %i.bjp, %i.bkf
  %i.bkh = icmp eq i32 %i.bjr, %i.bjt
  %or.cond.i107.i = and i1 %i.bkh, %i.bkg
  br i1 %or.cond.i107.i, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik, %bb.ii
  %i.bki = load float, ptr %.sroa.0.027.i104.i, align 4, !tbaa !134
  %i.bkj = fpext float %i.bki to double
  %i.bkk = fmul double %i.bkj, f0x3F91DF46A2529D39
  %i.bkl = fptrunc double %i.bkk to float
  br label %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit108.i

bb.im:                                            ; preds = %bb.ik, %bb.ij
  %i.bkm = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i104.i, i64 20 ; 2 uses
  %.not.i105.i = icmp eq ptr %i.bkm, %i.bff
  br i1 %.not.i105.i, label %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit108.i, label %.lr.ph.i103.i

_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit108.i: ; preds = %bb.im, %bb.il, %.noexc325
  %.2.i106.i = phi float [ %i.bkl, %bb.il ], [ -4.092030e+05, %.noexc325 ], [ -4.092030e+05, %bb.im ] ; 3 uses
  %i.bkn = insertelement <4 x float> poison, float %.2.i.i294, i64 0
  %i.bko = insertelement <4 x float> %i.bkn, float %.2.i71.i, i64 1
  %i.bkp = insertelement <4 x float> %i.bko, float %.2.i80.i, i64 2
  %i.bkq = insertelement <4 x float> %i.bkp, float %.2.i89.i, i64 3
  %.fr = freeze <4 x float> %i.bkq
  %i.bkr = fcmp oeq <4 x float> %.fr, splat (float -4.092030e+05)
  %i.bks = fcmp oeq float %.2.i93.i, -4.092030e+05
  %i.bkt = fcmp oeq float %.2.i99.i, -4.092030e+05
  %i.bku = fcmp oeq float %.2.i106.i, -4.092030e+05
  %i.bkv = bitcast <4 x i1> %i.bkr to i4
  %i.bkw = icmp ne i4 %i.bkv, 0
  %op.rdx1143 = select i1 %i.bkw, i1 true, i1 %i.bks
  %23 = or i1 %op.rdx1143, %i.bkt
  %op.rdx1145 = select i1 %23, i1 true, i1 %i.bku
  br i1 %op.rdx1145, label %_ZL17calc_vsite3_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit.thread, label %bb.in

bb.in:                                            ; preds = %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit108.i
  %i.bkx = call noundef float @cosf(float noundef %.2.i93.i) #24
  %i.bky = fneg float %.2.i80.i
  %i.bkz = call noundef float @cosf(float noundef %.2.i99.i) #24
  %i.bla = fmul float %i.bkz, %i.bky              ; 3 uses
  %i.blb = fneg float %.2.i89.i
  %i.blc = call noundef float @cosf(float noundef %.2.i106.i) #24
  %i.bld = fmul float %i.blc, %i.blb              ; 3 uses
  %i.ble = call noundef float @llvm.fabs.f32(float %i.bla)
  %i.blf = fcmp olt float %i.ble, f0x057A0000
  %i.blg = call float @llvm.fabs.f32(float %i.bld)
  %i.blh = fcmp olt float %i.blg, f0x057A0000
  %or.cond139.i = select i1 %i.blf, i1 true, i1 %i.blh
  br i1 %or.cond139.i, label %bb.io, label %bb.ix

bb.io:                                            ; preds = %bb.in
  %i.bli = load ptr, ptr %4, align 8, !tbaa !57   ; 3 uses
  %i.blj = icmp eq ptr %i.bli, null
  br i1 %i.blj, label %bb.it, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.blk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.blk, i8 0, i64 24, i1 false)
  store ptr %i.blk, ptr %5, align 8, !tbaa !59
  %i.bll = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bll, align 8, !tbaa !62
  %i.blm = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.blm, align 8, !tbaa !65
  %i.bln = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %bb.iq unwind label %bb.is

bb.iq:                                            ; preds = %bb.ip
  %i.blo = load i32, ptr %i.bln, align 4, !tbaa !37
  %i.blp = add nsw i32 %i.blo, 1
  %i.blq = fpext float %.2.i93.i to double
  %i.blr = fmul double %i.blq, f0x404CA5DC1A63C1F8
  %i.bls = fpext float %.2.i99.i to double
  %i.blt = fmul double %i.bls, f0x404CA5DC1A63C1F8
  %i.blu = fpext float %.2.i106.i to double
  %i.blv = fmul double %i.blu, f0x404CA5DC1A63C1F8
  %i.blw = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @.str.30, i32 noundef %i.blp, double noundef %i.blr, double noundef %i.blt, double noundef %i.blv)
          to label %bb.ir unwind label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.blx = load ptr, ptr %i.bli, align 8, !tbaa !67
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blx, i64 16
  %i.blz = load ptr, ptr %i.bly, align 8
  invoke void %i.blz(ptr noundef nonnull align 8 dereferenceable(8) %i.bli, ptr noundef nonnull align 8 dereferenceable(40) %i.blw)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i305 unwind label %bb.is, !inline_history !1

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i305: ; preds = %bb.ir
  %i.bma = load ptr, ptr %5, align 8, !tbaa !68   ; 2 uses
  %i.bmb = icmp eq ptr %i.bma, %i.blk
  br i1 %i.bmb, label %_ZN3gmx14LogEntryWriterD2Ev.exit.i307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i305
  %i.bmc = load i64, ptr %i.blk, align 8, !tbaa !69
  %i.bmd = add i64 %i.bmc, 1
  call void @_ZdlPvm(ptr noundef %i.bma, i64 noundef %i.bmd) #27
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit.i307

_ZN3gmx14LogEntryWriterD2Ev.exit.i307:            ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.it

bb.is:                                            ; preds = %bb.ir, %bb.iq, %bb.ip
  %i.bme = landingpad { ptr, i32 }
          cleanup
  %i.bmf = load ptr, ptr %5, align 8, !tbaa !68   ; 2 uses
  %i.bmg = icmp eq ptr %i.bmf, %i.blk
  br i1 %i.bmg, label %_ZN3gmx14LogEntryWriterD2Ev.exit111.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i109.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i109.i: ; preds = %bb.is
  %i.bmh = load i64, ptr %i.blk, align 8, !tbaa !69
  %i.bmi = add i64 %i.bmh, 1
  call void @_ZdlPvm(ptr noundef %i.bmf, i64 noundef %i.bmi) #27
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit111.i

_ZN3gmx14LogEntryWriterD2Ev.exit111.i:            ; preds = %bb.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body140

bb.it:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit.i307, %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA73_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(73) @.str.3, i8 noundef zeroext 2)
          to label %.noexc326 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc326:                                        ; preds = %bb.it
  %i.bmj = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %bb.iu unwind label %bb.iw

bb.iu:                                            ; preds = %.noexc326
  %i.bmk = load i32, ptr %i.bmj, align 4, !tbaa !37
  %i.bml = add nsw i32 %i.bmk, 1
  %i.bmm = fpext float %i.bla to double
  %i.bmn = fpext float %i.bld to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 768, ptr noundef nonnull @.str.32, i32 noundef %i.bml, double noundef %i.bmm, double noundef %i.bmn) #25
          to label %bb.iv unwind label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  unreachable

bb.iw:                                            ; preds = %bb.iu, %.noexc326
  %i.bmo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body140

bb.ix:                                            ; preds = %bb.in
  %i.bmp = fneg float %.2.i71.i
  %i.bmq = fmul float %i.bkx, %i.bmp              ; 2 uses
  %i.bmr = fdiv float %i.bmq, %i.bla
  invoke void @_ZN17InteractionOfType17setForceParameterEif(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591, i32 noundef 0, float noundef %i.bmr)
          to label %.noexc327 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc327:                                        ; preds = %bb.ix
  %i.bms = fdiv float %i.bmq, %i.bld
  invoke void @_ZN17InteractionOfType17setForceParameterEif(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591, i32 noundef 1, float noundef %i.bms)
          to label %.noexc282.invoke unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.iy:                                            ; preds = %_ZL9print_badP8_IO_FILEN3gmx8ArrayRefIK22VsiteBondedInteractionEES5_S5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA73_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 1 dereferenceable(73) @.str.3, i8 noundef zeroext 2)
          to label %bb.iz unwind label %bb.jc

bb.iz:                                            ; preds = %bb.iy
  %i.bmt = load ptr, ptr %i.gf, align 8, !tbaa !75
  %i.bmu = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %bb.ja unwind label %bb.jd

bb.ja:                                            ; preds = %bb.iz
  %i.bmv = load i32, ptr %i.bmu, align 4, !tbaa !37
  %i.bmw = add nsw i32 %i.bmv, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 886, ptr noundef nonnull @.str.4, ptr noundef %i.bmt, i32 noundef %i.bmw) #25
          to label %bb.jb unwind label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  unreachable

bb.jc:                                            ; preds = %bb.iy
  %i.bmx = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.jd:                                            ; preds = %bb.ja, %bb.iz
  %i.bmy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #24
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %.pn86 = phi { ptr, i32 } [ %i.bmy, %bb.jd ], [ %i.bmx, %bb.jc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %.body140

_ZL17calc_vsite3_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit: ; preds = %.noexc168, %.noexc137
  %.076.in = phi i1 [ %op.rdx, %.noexc168 ], [ %.0131.i, %.noexc137 ]
  br i1 %.076.in, label %_ZL17calc_vsite3_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit.thread, label %_ZL17calc_vsite3_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit.thread387

_ZL17calc_vsite3_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit.thread: ; preds = %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit108.i, %_ZL9get_angleN3gmx8ArrayRefIK22VsiteBondedInteractionEEiii.exit174.i, %_ZL20calc_vsite3fad_paramP17InteractionOfTypeN3gmx8ArrayRefIK22VsiteBondedInteractionEES5_.exit, %_ZL20calc_vsite3out_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit, %_ZL17calc_vsite3_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA73_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 1 dereferenceable(73) @.str.3, i8 noundef zeroext 2)
          to label %bb.jf unwind label %bb.ji

bb.jf:                                            ; preds = %_ZL17calc_vsite3_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit.thread
  %i.bmz = load ptr, ptr %i.gf, align 8, !tbaa !75
  %i.bna = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0378.0591)
          to label %bb.jg unwind label %bb.jj

bb.jg:                                            ; preds = %bb.jf
  %i.bnb = load i32, ptr %i.bna, align 4, !tbaa !37
  %i.bnc = add nsw i32 %i.bnb, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 895, ptr noundef nonnull @.str.5, ptr noundef %i.bmz, i32 noundef %i.bnc) #25
          to label %bb.jh unwind label %bb.jj

bb.jh:                                            ; preds = %bb.jg
  unreachable

bb.ji:                                            ; preds = %_ZL17calc_vsite3_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit.thread
  %i.bnd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jj:                                            ; preds = %bb.jg, %bb.jf
  %i.bne = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #24
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.pn84 = phi { ptr, i32 } [ %i.bne, %bb.jj ], [ %i.bnd, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %.body140

_ZL17calc_vsite3_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit.thread387: ; preds = %.noexc282.invoke, %_ZL20calc_vsite3fad_paramP17InteractionOfTypeN3gmx8ArrayRefIK22VsiteBondedInteractionEES5_.exit, %_ZL20calc_vsite3out_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit, %_ZL17calc_vsite3_paramP22PreprocessingAtomTypesP17InteractionOfTypeP7t_atomsN3gmx8ArrayRefIK22VsiteBondedInteractionEES9_.exit
end_hunk_0
