inline.NumInlined: 10360
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a
  %xtraiter5429 = and i64 %i.bim, 7               ; 2 uses
  %lcmp.mod5430.not = icmp eq i64 %xtraiter5429, 0
  br i1 %lcmp.mod5430.not, label %.prol.loopexit5427, label %.prol.preheader5426

.prol.preheader5426:                              ; preds = %bb.ht, %.prol.preheader5426
  %i.biz = phi ptr [ %i.bjb, %.prol.preheader5426 ], [ %i.biu, %bb.ht ] ; 3 uses
  %prol.iter5431 = phi i64 [ %prol.iter5431.next, %.prol.preheader5426 ], [ 0, %bb.ht ]
  store i32 0, ptr %i.biz, align 8
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biz, i64 8
  store ptr null, ptr %i.bja, align 8
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.biz, i64 16 ; 2 uses
  %prol.iter5431.next = add i64 %prol.iter5431, 1 ; 2 uses
  %prol.iter5431.cmp.not = icmp eq i64 %prol.iter5431.next, %xtraiter5429
  br i1 %prol.iter5431.cmp.not, label %.prol.loopexit5427, label %.prol.preheader5426, !llvm.loop !84

.prol.loopexit5427:                               ; preds = %.prol.preheader5426, %bb.ht
  %.unr5432 = phi ptr [ %i.biu, %bb.ht ], [ %i.bjb, %.prol.preheader5426 ]
  %i.bjc = icmp samesign ult i64 %i.biy, 7
  br i1 %i.bjc, label %.loopexit1126, label %.new5428

.new5428:                                         ; preds = %.prol.loopexit5427, %.new5428
  %i.bjd = phi ptr [ %i.bjt, %.new5428 ], [ %.unr5432, %.prol.loopexit5427 ] ; 17 uses
  store i32 0, ptr %i.bjd, align 8
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 8
  store ptr null, ptr %i.bje, align 8
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bjd, i64 16
  store i32 0, ptr %i.bjf, align 8
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjd, i64 24
  store ptr null, ptr %i.bjg, align 8
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjd, i64 32
  store i32 0, ptr %i.bjh, align 8
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjd, i64 40
  store ptr null, ptr %i.bji, align 8
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjd, i64 48
  store i32 0, ptr %i.bjj, align 8
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjd, i64 56
  store ptr null, ptr %i.bjk, align 8
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjd, i64 64
  store i32 0, ptr %i.bjl, align 8
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjd, i64 72
  store ptr null, ptr %i.bjm, align 8
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjd, i64 80
  store i32 0, ptr %i.bjn, align 8
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjd, i64 88
  store ptr null, ptr %i.bjo, align 8
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjd, i64 96
  store i32 0, ptr %i.bjp, align 8
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjd, i64 104
  store ptr null, ptr %i.bjq, align 8
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjd, i64 112
  store i32 0, ptr %i.bjr, align 8
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjd, i64 120
  store ptr null, ptr %i.bjs, align 8
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjd, i64 128 ; 2 uses
  %i.bju = icmp eq ptr %i.bjt, %i.biw
  br i1 %i.bju, label %.loopexit1126, label %.new5428

.loopexit1126:                                    ; preds = %.prol.loopexit5427, %.new5428, %bb.hs
  %.not2253 = icmp eq i32 %.0408, 0
  br i1 %.not2253, label %.loopexit1112, label %.lr.ph2161

.lr.ph2161:                                       ; preds = %.loopexit1126, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit707
  %.04062159 = phi i32 [ %i.bkc, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit707 ], [ 0, %.loopexit1126 ] ; 3 uses
  %.82158 = phi ptr [ %.26, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit707 ], [ %i.biu, %.loopexit1126 ] ; 4 uses
  %i.bjv = load i32, ptr %i.pm, align 4
  %i.bjw = or disjoint i32 %.04062159, 1          ; 2 uses
  %.not12.i704 = icmp ult i32 %i.bjw, %i.bjv
  br i1 %.not12.i704, label %bb.hu, label %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit707

bb.hu:                                            ; preds = %.lr.ph2161
  store i32 2, ptr %.82158, align 8
  %i.bjx = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #37
          to label %.noexc706 unwind label %bb.hv ; 2 uses

.noexc706:                                        ; preds = %bb.hu
  %i.bjy = getelementptr inbounds nuw i8, ptr %.82158, i64 8 ; 2 uses
  store ptr %i.bjx, ptr %i.bjy, align 8
  store i32 %.04062159, ptr %i.bjx, align 4
  %i.bjz = load ptr, ptr %i.bjy, align 8
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 4
  store i32 %i.bjw, ptr %i.bka, align 4
  %i.bkb = getelementptr inbounds nuw i8, ptr %.82158, i64 16
  br label %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit707

_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit707:      ; preds = %.noexc706, %.lr.ph2161
  %.26 = phi ptr [ %i.bkb, %.noexc706 ], [ %.82158, %.lr.ph2161 ] ; 2 uses
  %i.bkc = add i32 %.04062159, 2                  ; 2 uses
  %i.bkd = icmp ult i32 %i.bkc, %.0408
  br i1 %i.bkd, label %.lr.ph2161, label %.loopexit1112, !llvm.loop !85

bb.hv:                                            ; preds = %bb.hu
  %i.bke = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.hw:                                            ; preds = %bb.hg, %bb.hg
  %i.bkf = icmp eq i32 %i.bgy, 3
  %.neg = sext i1 %i.bkf to i32
  %i.bkg = add i32 %i.bgx, %.neg                  ; 2 uses
  %i.bkh = zext i32 %i.bkg to i64                 ; 8 uses
  %i.bki = shl nuw nsw i64 %i.bkh, 4
  %i.bkj = or disjoint i64 %i.bki, 8
  %i.bkk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bkj) #37
          to label %bb.hx unwind label %bb.hk     ; 4 uses

bb.hx:                                            ; preds = %bb.hw
  store i64 %i.bkh, ptr %i.bkk, align 16
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkk, i64 8 ; 8 uses
  %i.bkm = icmp eq i32 %i.bkg, 0
  br i1 %i.bkm, label %.loopexit1127, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.bkn = getelementptr inbounds nuw [16 x i8], ptr %i.bkl, i64 %i.bkh
  %i.bko = add nuw nsw i64 %i.bkh, 1152921504606846975
  %i.bkp = and i64 %i.bko, 1152921504606846975
  %xtraiter5422 = and i64 %i.bkh, 7               ; 2 uses
  %lcmp.mod5423.not = icmp eq i64 %xtraiter5422, 0
  br i1 %lcmp.mod5423.not, label %.prol.loopexit5420, label %.prol.preheader5419

.prol.preheader5419:                              ; preds = %bb.hy, %.prol.preheader5419
  %i.bkq = phi ptr [ %i.bks, %.prol.preheader5419 ], [ %i.bkl, %bb.hy ] ; 3 uses
  %prol.iter5424 = phi i64 [ %prol.iter5424.next, %.prol.preheader5419 ], [ 0, %bb.hy ]
  store i32 0, ptr %i.bkq, align 8
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 8
  store ptr null, ptr %i.bkr, align 8
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkq, i64 16 ; 2 uses
  %prol.iter5424.next = add i64 %prol.iter5424, 1 ; 2 uses
  %prol.iter5424.cmp.not = icmp eq i64 %prol.iter5424.next, %xtraiter5422
  br i1 %prol.iter5424.cmp.not, label %.prol.loopexit5420, label %.prol.preheader5419, !llvm.loop !86

.prol.loopexit5420:                               ; preds = %.prol.preheader5419, %bb.hy
  %.unr5425 = phi ptr [ %i.bkl, %bb.hy ], [ %i.bks, %.prol.preheader5419 ]
  %i.bkt = icmp samesign ult i64 %i.bkp, 7
  br i1 %i.bkt, label %.loopexit1127, label %.new5421

.new5421:                                         ; preds = %.prol.loopexit5420, %.new5421
  %i.bku = phi ptr [ %i.blk, %.new5421 ], [ %.unr5425, %.prol.loopexit5420 ] ; 17 uses
  store i32 0, ptr %i.bku, align 8
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 8
  store ptr null, ptr %i.bkv, align 8
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bku, i64 16
  store i32 0, ptr %i.bkw, align 8
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bku, i64 24
  store ptr null, ptr %i.bkx, align 8
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bku, i64 32
  store i32 0, ptr %i.bky, align 8
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bku, i64 40
  store ptr null, ptr %i.bkz, align 8
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bku, i64 48
  store i32 0, ptr %i.bla, align 8
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bku, i64 56
  store ptr null, ptr %i.blb, align 8
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bku, i64 64
  store i32 0, ptr %i.blc, align 8
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bku, i64 72
  store ptr null, ptr %i.bld, align 8
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bku, i64 80
  store i32 0, ptr %i.ble, align 8
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bku, i64 88
  store ptr null, ptr %i.blf, align 8
  %i.blg = getelementptr inbounds nuw i8, ptr %i.bku, i64 96
  store i32 0, ptr %i.blg, align 8
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bku, i64 104
  store ptr null, ptr %i.blh, align 8
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bku, i64 112
  store i32 0, ptr %i.bli, align 8
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bku, i64 120
  store ptr null, ptr %i.blj, align 8
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bku, i64 128 ; 2 uses
  %i.bll = icmp eq ptr %i.blk, %i.bkn
  br i1 %i.bll, label %.loopexit1127, label %.new5421

.loopexit1127:                                    ; preds = %.prol.loopexit5420, %.new5421, %bb.hx
  %.not12.i709 = icmp ugt i32 %i.bgx, 1
  br i1 %.not12.i709, label %bb.hz, label %._crit_edge2156

bb.hz:                                            ; preds = %.loopexit1127
  store i32 2, ptr %i.bkl, align 8
  %i.blm = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #37
          to label %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit712 unwind label %bb.hk ; 3 uses

_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit712:      ; preds = %bb.hz
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bkk, i64 16
  store ptr %i.blm, ptr %i.bln, align 16
  store i32 0, ptr %i.blm, align 4
  %i.blo = getelementptr inbounds nuw i8, ptr %i.blm, i64 4
  store i32 1, ptr %i.blo, align 4
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bkk, i64 24 ; 2 uses
  %.not3871 = icmp eq i32 %i.bgx, 2
  br i1 %.not3871, label %._crit_edge2156, label %.lr.ph2155

._crit_edge2156:                                  ; preds = %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit717, %.loopexit1127, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit712
  %.9.lcssa = phi ptr [ %i.blp, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit712 ], [ %i.bkl, %.loopexit1127 ], [ %.28, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit717 ] ; 5 uses
  %i.blq = load i32, ptr %i.hb, align 8
  %i.blr = icmp eq i32 %i.blq, 2
  br i1 %i.blr, label %bb.ic, label %.loopexit1112

.lr.ph2155:                                       ; preds = %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit712, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit717
  %.04052154 = phi i32 [ %i.blz, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit717 ], [ 2, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit712 ] ; 4 uses
  %.92153 = phi ptr [ %.28, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit717 ], [ %i.blp, %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit712 ] ; 4 uses
  %i.bls = load i32, ptr %i.pm, align 4           ; 2 uses
  %i.blt = add i32 %.04052154, -1                 ; 2 uses
  %.not.i713 = icmp ult i32 %i.blt, %i.bls
  %.not12.i714 = icmp ult i32 %.04052154, %i.bls
  %or.cond.i715 = and i1 %.not.i713, %.not12.i714
  br i1 %or.cond.i715, label %bb.ia, label %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit717

bb.ia:                                            ; preds = %.lr.ph2155
  store i32 2, ptr %.92153, align 8
  %i.blu = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #37
          to label %.noexc716 unwind label %bb.ib ; 2 uses

.noexc716:                                        ; preds = %bb.ia
  %i.blv = getelementptr inbounds nuw i8, ptr %.92153, i64 8 ; 2 uses
  store ptr %i.blu, ptr %i.blv, align 8
  store i32 %i.blt, ptr %i.blu, align 4
  %i.blw = load ptr, ptr %i.blv, align 8
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blw, i64 4
  store i32 %.04052154, ptr %i.blx, align 4
  %i.bly = getelementptr inbounds nuw i8, ptr %.92153, i64 16
  br label %_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit717

_ZL18SetFaceAndAdvance2RP6aiFacejjj.exit717:      ; preds = %.noexc716, %.lr.ph2155
  %.28 = phi ptr [ %i.bly, %.noexc716 ], [ %.92153, %.lr.ph2155 ] ; 2 uses
  %i.blz = add nuw i32 %.04052154, 1              ; 2 uses
  %exitcond2934.not = icmp eq i32 %i.blz, %i.bgx
  br i1 %exitcond2934.not, label %._crit_edge2156, label %.lr.ph2155, !llvm.loop !87

bb.ib:                                            ; preds = %bb.ia
  %i.bma = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.ic:                                            ; preds = %._crit_edge2156
  %i.bmb = load i32, ptr %i.pm, align 4
  %i.bmc = add i32 %i.bgx, -1                     ; 2 uses
  %.not.i718 = icmp ult i32 %i.bmc, %i.bmb
  br i1 %.not.i718, label %bb.id, label %.loopexit1112

bb.id:                                            ; preds = %bb.ic
  store i32 2, ptr %.9.lcssa, align 8
  %i.bmd = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #37
          to label %.noexc721 unwind label %bb.hk ; 2 uses

.noexc721:                                        ; preds = %bb.id
  %i.bme = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 8 ; 2 uses
  store ptr %i.bmd, ptr %i.bme, align 8
  store i32 %i.bmc, ptr %i.bmd, align 4
  br label %.loopexit1112.sink.split

bb.ie:                                            ; preds = %bb.hg
  %i.bmf = udiv i32 %i.bgx, 3                     ; 2 uses
  %i.bmg = zext nneg i32 %i.bmf to i64            ; 8 uses
  %i.bmh = mul nuw nsw i64 %i.bmg, 3
  %i.bmi = zext i32 %i.bgx to i64
  %.not516 = icmp eq i64 %i.bmh, %i.bmi
  br i1 %.not516, label %bb.ii, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.bmj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ig unwind label %bb.hk

bb.ig:                                            ; preds = %bb.if
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bmj, ptr noundef nonnull @.str.23)
          to label %bb.ih unwind label %bb.hk

bb.ih:                                            ; preds = %bb.ig
  %i.bmk = mul nuw i32 %i.bmf, 3
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ie
  %.1409 = phi i32 [ %i.bmk, %bb.ih ], [ %i.bgx, %bb.ie ] ; 2 uses
  %i.bml = shl nuw nsw i64 %i.bmg, 4
  %i.bmm = or disjoint i64 %i.bml, 8
  %i.bmn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bmm) #37
          to label %bb.ij unwind label %bb.hk     ; 2 uses

bb.ij:                                            ; preds = %bb.ii
  store i64 %i.bmg, ptr %i.bmn, align 16
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 8 ; 7 uses
  %i.bmp = icmp ult i32 %i.bgx, 3
  br i1 %i.bmp, label %.loopexit1129, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bmq = getelementptr inbounds nuw [16 x i8], ptr %i.bmo, i64 %i.bmg
  %i.bmr = add nuw nsw i64 %i.bmg, 1152921504606846975
  %i.bms = and i64 %i.bmr, 1152921504606846975
  %xtraiter5415 = and i64 %i.bmg, 7               ; 2 uses
  %lcmp.mod5416.not = icmp eq i64 %xtraiter5415, 0
  br i1 %lcmp.mod5416.not, label %.prol.loopexit5413, label %.prol.preheader5412

.prol.preheader5412:                              ; preds = %bb.ik, %.prol.preheader5412
  %i.bmt = phi ptr [ %i.bmv, %.prol.preheader5412 ], [ %i.bmo, %bb.ik ] ; 3 uses
  %prol.iter5417 = phi i64 [ %prol.iter5417.next, %.prol.preheader5412 ], [ 0, %bb.ik ]
  store i32 0, ptr %i.bmt, align 8
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmt, i64 8
  store ptr null, ptr %i.bmu, align 8
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmt, i64 16 ; 2 uses
  %prol.iter5417.next = add i64 %prol.iter5417, 1 ; 2 uses
  %prol.iter5417.cmp.not = icmp eq i64 %prol.iter5417.next, %xtraiter5415
  br i1 %prol.iter5417.cmp.not, label %.prol.loopexit5413, label %.prol.preheader5412, !llvm.loop !88

.prol.loopexit5413:                               ; preds = %.prol.preheader5412, %bb.ik
  %.unr5418 = phi ptr [ %i.bmo, %bb.ik ], [ %i.bmv, %.prol.preheader5412 ]
  %i.bmw = icmp samesign ult i64 %i.bms, 7
  br i1 %i.bmw, label %.loopexit1129, label %.new5414

.new5414:                                         ; preds = %.prol.loopexit5413, %.new5414
  %i.bmx = phi ptr [ %i.bnn, %.new5414 ], [ %.unr5418, %.prol.loopexit5413 ] ; 17 uses
  store i32 0, ptr %i.bmx, align 8
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 8
  store ptr null, ptr %i.bmy, align 8
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmx, i64 16
  store i32 0, ptr %i.bmz, align 8
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmx, i64 24
  store ptr null, ptr %i.bna, align 8
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmx, i64 32
  store i32 0, ptr %i.bnb, align 8
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmx, i64 40
  store ptr null, ptr %i.bnc, align 8
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bmx, i64 48
  store i32 0, ptr %i.bnd, align 8
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bmx, i64 56
  store ptr null, ptr %i.bne, align 8
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bmx, i64 64
  store i32 0, ptr %i.bnf, align 8
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bmx, i64 72
  store ptr null, ptr %i.bng, align 8
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bmx, i64 80
  store i32 0, ptr %i.bnh, align 8
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bmx, i64 88
  store ptr null, ptr %i.bni, align 8
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bmx, i64 96
  store i32 0, ptr %i.bnj, align 8
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bmx, i64 104
  store ptr null, ptr %i.bnk, align 8
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bmx, i64 112
  store i32 0, ptr %i.bnl, align 8
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bmx, i64 120
  store ptr null, ptr %i.bnm, align 8
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bmx, i64 128 ; 2 uses
  %i.bno = icmp eq ptr %i.bnn, %i.bmq
  br i1 %i.bno, label %.loopexit1129, label %.new5414

.loopexit1129:                                    ; preds = %.prol.loopexit5413, %.new5414, %bb.ij
  %.not2252 = icmp eq i32 %.1409, 0
  br i1 %.not2252, label %.loopexit1112, label %.lr.ph2151

.lr.ph2151:                                       ; preds = %.loopexit1129, %_ZL18SetFaceAndAdvance3RP6aiFacejjjj.exit729
  %.04042149 = phi i32 [ %i.bnz, %_ZL18SetFaceAndAdvance3RP6aiFacejjjj.exit729 ], [ 0, %.loopexit1129 ] ; 4 uses
  %.102148 = phi ptr [ %.30, %_ZL18SetFaceAndAdvance3RP6aiFacejjjj.exit729 ], [ %i.bmo, %.loopexit1129 ] ; 4 uses
  %i.bnp = load i32, ptr %i.pm, align 4           ; 2 uses
  %i.bnq = add nuw i32 %.04042149, 1              ; 2 uses
  %i.bnr = add i32 %.04042149, 2                  ; 2 uses
  %.not17.i724 = icmp ult i32 %i.bnq, %i.bnp
  %.not18.i726 = icmp ult i32 %i.bnr, %i.bnp
  %or.cond19.i727 = and i1 %.not17.i724, %.not18.i726
  br i1 %or.cond19.i727, label %bb.il, label %_ZL18SetFaceAndAdvance3RP6aiFacejjjj.exit729

bb.il:                                            ; preds = %.lr.ph2151
  store i32 3, ptr %.102148, align 8
  %i.bns = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #37
          to label %.noexc728 unwind label %bb.im ; 2 uses

.noexc728:                                        ; preds = %bb.il
  %i.bnt = getelementptr inbounds nuw i8, ptr %.102148, i64 8 ; 3 uses
  store ptr %i.bns, ptr %i.bnt, align 8
  store i32 %.04042149, ptr %i.bns, align 4
  %i.bnu = load ptr, ptr %i.bnt, align 8
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 4
  store i32 %i.bnq, ptr %i.bnv, align 4
  %i.bnw = load ptr, ptr %i.bnt, align 8
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 8
  store i32 %i.bnr, ptr %i.bnx, align 4
  %i.bny = getelementptr inbounds nuw i8, ptr %.102148, i64 16
  br label %_ZL18SetFaceAndAdvance3RP6aiFacejjjj.exit729

_ZL18SetFaceAndAdvance3RP6aiFacejjjj.exit729:     ; preds = %.noexc728, %.lr.ph2151
  %.30 = phi ptr [ %i.bny, %.noexc728 ], [ %.102148, %.lr.ph2151 ] ; 2 uses
  %i.bnz = add i32 %.04042149, 3                  ; 2 uses
  %i.boa = icmp ult i32 %i.bnz, %.1409
  br i1 %i.boa, label %.lr.ph2151, label %.loopexit1112, !llvm.loop !89

bb.im:                                            ; preds = %bb.il
  %i.bob = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.in:                                            ; preds = %bb.hg
  %i.boc = add i32 %i.bgx, -2                     ; 3 uses
  %i.bod = zext i32 %i.boc to i64                 ; 6 uses
  %i.boe = shl nuw nsw i64 %i.bod, 4
  %i.bof = or disjoint i64 %i.boe, 8
  %i.bog = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bof) #37
          to label %bb.io unwind label %bb.hk     ; 2 uses

bb.io:                                            ; preds = %bb.in
  store i64 %i.bod, ptr %i.bog, align 16
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 8 ; 7 uses
  %i.boi = icmp eq i32 %i.boc, 0
  br i1 %i.boi, label %.loopexit1112, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.boj = getelementptr inbounds nuw [16 x i8], ptr %i.boh, i64 %i.bod
  %i.bok = add nuw nsw i64 %i.bod, 1152921504606846975
  %i.bol = and i64 %i.bok, 1152921504606846975
end_hunk_0
