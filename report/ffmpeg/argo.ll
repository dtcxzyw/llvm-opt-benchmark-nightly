Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/argo?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@decode_frame:bb.a

.preheader.i111:                                  ; preds = %._crit_edge.i112, %.preheader.preheader.i110
  %i.atb = phi i32 [ %i.atg, %._crit_edge.i112 ], [ %i.asn, %.preheader.preheader.i110 ]
  %i.atc = phi i32 [ %i.ath, %._crit_edge.i112 ], [ %i.asb, %.preheader.preheader.i110 ]
  %i.atd = phi i32 [ %i.ati, %._crit_edge.i112 ], [ %i.ask, %.preheader.preheader.i110 ] ; 2 uses
  %i.ate = phi i32 [ %i.atj, %._crit_edge.i112 ], [ %i.ask, %.preheader.preheader.i110 ] ; 2 uses
  %.04211.i = phi i32 [ %i.atn, %._crit_edge.i112 ], [ 0, %.preheader.preheader.i110 ]
  %.04310.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i112 ], [ 0, %.preheader.preheader.i110 ] ; 2 uses
  %.0449.i = phi i8 [ %.145.lcssa.i, %._crit_edge.i112 ], [ 0, %.preheader.preheader.i110 ] ; 2 uses
  %.0478.i = phi ptr [ %i.atm, %._crit_edge.i112 ], [ %i.asu, %.preheader.preheader.i110 ] ; 3 uses
  %.sroa.0.07.i = phi ptr [ %.sroa.0.1.lcssa.i, %._crit_edge.i112 ], [ %i.asv, %.preheader.preheader.i110 ] ; 2 uses
  %i.atf = icmp sgt i32 %i.ate, 0
  br i1 %i.atf, label %.lr.ph.preheader.i113, label %._crit_edge.i112

.lr.ph.preheader.i113:                            ; preds = %.preheader.i111
  %invariant.gep.i114 = getelementptr i8, ptr %.0478.i, i64 %i.ata
  br label %.lr.ph.i115

._crit_edge.loopexit.i124:                        ; preds = %bb.hg
  %.pre14.i = load i32, ptr %i.asa, align 8, !tbaa !35
  %.pre15.i = load i32, ptr %i.asm, align 4, !tbaa !94
  br label %._crit_edge.i112

._crit_edge.i112:                                 ; preds = %._crit_edge.loopexit.i124, %.preheader.i111
  %i.atg = phi i32 [ %i.atb, %.preheader.i111 ], [ %.pre15.i, %._crit_edge.loopexit.i124 ] ; 2 uses
  %i.ath = phi i32 [ %i.atc, %.preheader.i111 ], [ %.pre14.i, %._crit_edge.loopexit.i124 ] ; 2 uses
  %i.ati = phi i32 [ %i.atd, %.preheader.i111 ], [ %i.auo, %._crit_edge.loopexit.i124 ]
  %i.atj = phi i32 [ %i.ate, %.preheader.i111 ], [ %i.auo, %._crit_edge.loopexit.i124 ]
  %.sroa.0.1.lcssa.i = phi ptr [ %.sroa.0.07.i, %.preheader.i111 ], [ %.sroa.0.2.i, %._crit_edge.loopexit.i124 ]
  %.145.lcssa.i = phi i8 [ %.0449.i, %.preheader.i111 ], [ %i.aup, %._crit_edge.loopexit.i124 ]
  %.1.lcssa.i = phi i32 [ %.04310.i, %.preheader.i111 ], [ %i.auq, %._crit_edge.loopexit.i124 ]
  %i.atk = shl nsw i32 %i.ath, 1
  %i.atl = sext i32 %i.atk to i64
  %i.atm = getelementptr inbounds i8, ptr %.0478.i, i64 %i.atl
  %i.atn = add nuw nsw i32 %.04211.i, 2           ; 2 uses
  %i.ato = icmp slt i32 %i.atn, %i.atg
  br i1 %i.ato, label %.preheader.i111, label %decode_mad1.exit, !llvm.loop !74

.lr.ph.i115:                                      ; preds = %bb.hg, %.lr.ph.preheader.i113
  %i.atp = phi i32 [ %i.atd, %.lr.ph.preheader.i113 ], [ %i.auo, %bb.hg ]
  %indvars.iv.i116 = phi i64 [ 0, %.lr.ph.preheader.i113 ], [ %indvars.iv.next.i123, %bb.hg ] ; 3 uses
  %.13.i117 = phi i32 [ %.04310.i, %.lr.ph.preheader.i113 ], [ %i.auq, %bb.hg ] ; 2 uses
  %.1452.i = phi i8 [ %.0449.i, %.lr.ph.preheader.i113 ], [ %i.aup, %bb.hg ]
  %.sroa.0.11.i = phi ptr [ %.sroa.0.07.i, %.lr.ph.preheader.i113 ], [ %.sroa.0.2.i, %bb.hg ] ; 3 uses
  %i.atq = icmp eq i32 %.13.i117, 0
  br i1 %i.atq, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %.lr.ph.i115
  %i.atr = getelementptr inbounds nuw i8, ptr %.sroa.0.11.i, i64 1
  %i.ats = load i8, ptr %.sroa.0.11.i, align 1, !tbaa !89
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %.lr.ph.i115
  %.sroa.0.2.i = phi ptr [ %i.atr, %bb.hb ], [ %.sroa.0.11.i, %.lr.ph.i115 ] ; 2 uses
  %.246.i = phi i8 [ %i.ats, %bb.hb ], [ %.1452.i, %.lr.ph.i115 ] ; 2 uses
  %.2.i = phi i32 [ 8, %bb.hb ], [ %.13.i117, %.lr.ph.i115 ]
  %.not.i118 = icmp sgt i8 %.246.i, -1
  br i1 %.not.i118, label %bb.hg, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.att = load ptr, ptr %i.asd, align 8, !tbaa !87 ; 2 uses
  %i.atu = load ptr, ptr %.val70, align 8, !tbaa !85 ; 3 uses
  %i.atv = ptrtoint ptr %i.att to i64
  %i.atw = ptrtoint ptr %i.atu to i64
  %i.atx = sub i64 %i.atv, %i.atw
  %i.aty = icmp slt i64 %i.atx, 1
  br i1 %i.aty, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  store ptr %i.att, ptr %.val70, align 8, !tbaa !85
  br label %bytestream2_get_byte.exit.i119

bb.hf:                                            ; preds = %bb.hd
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atu, i64 1
  store ptr %i.atz, ptr %.val70, align 8, !tbaa !88
  %i.aua = load i8, ptr %i.atu, align 1, !tbaa !89
  %i.aub = zext i8 %i.aua to i64
  %i.auc = shl nuw nsw i64 %i.aub, 2
  br label %bytestream2_get_byte.exit.i119

bytestream2_get_byte.exit.i119:                   ; preds = %bb.hf, %bb.he
  %.0.i.i120 = phi i64 [ 0, %bb.he ], [ %i.auc, %bb.hf ]
  %i.aud = getelementptr inbounds nuw i8, ptr %i.asc, i64 %.0.i.i120 ; 4 uses
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !89
  %i.auf = getelementptr inbounds nuw i8, ptr %.0478.i, i64 %indvars.iv.i116 ; 2 uses
  store i8 %i.aue, ptr %i.auf, align 1, !tbaa !89
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aud, i64 1
  %i.auh = load i8, ptr %i.aug, align 1, !tbaa !89
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auf, i64 1
  store i8 %i.auh, ptr %i.aui, align 1, !tbaa !89
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aud, i64 2
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !89
  %gep.i121 = getelementptr i8, ptr %invariant.gep.i114, i64 %indvars.iv.i116 ; 2 uses
  store i8 %i.auk, ptr %gep.i121, align 1, !tbaa !89
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aud, i64 3
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !89
  %i.aun = getelementptr i8, ptr %gep.i121, i64 1
  store i8 %i.aum, ptr %i.aun, align 1, !tbaa !89
  %.pre.i122 = load i32, ptr %i.asj, align 8, !tbaa !95
  br label %bb.hg

bb.hg:                                            ; preds = %bytestream2_get_byte.exit.i119, %bb.hc
  %i.auo = phi i32 [ %.pre.i122, %bytestream2_get_byte.exit.i119 ], [ %i.atp, %bb.hc ] ; 4 uses
  %i.aup = shl i8 %.246.i, 1                      ; 2 uses
  %i.auq = add nsw i32 %.2.i, -1                  ; 2 uses
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i116, 2 ; 2 uses
  %i.aur = sext i32 %i.auo to i64
  %i.aus = icmp slt i64 %indvars.iv.next.i123, %i.aur
  br i1 %i.aus, label %.lr.ph.i115, label %._crit_edge.loopexit.i124, !llvm.loop !75

bb.hh:                                            ; preds = %bytestream2_get_be32.exit
  %.phi.trans.insert322 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre323 = load i32, ptr %.phi.trans.insert322, align 8, !tbaa !33
  %i.aut = icmp eq i32 %.pre323, 11
  br i1 %i.aut, label %bb.hi, label %.thread386

bb.hi:                                            ; preds = %bb.hh
  %i.auu = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 1, ptr %i.auu, align 4, !tbaa !97
  %.val72 = load ptr, ptr %i.a, align 8, !tbaa !28 ; 6 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.auw = load i32, ptr %i.auv, align 8, !tbaa !95 ; 5 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !94 ; 3 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ava = load i32, ptr %i.auz, align 8, !tbaa !35
  %i.avb = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.avc = getelementptr inbounds nuw i8, ptr %.val72, i64 8 ; 2 uses
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !87 ; 2 uses
  %i.ave = load ptr, ptr %.val72, align 8, !tbaa !85 ; 2 uses
  %i.avf = ptrtoint ptr %i.avd to i64             ; 2 uses
  %i.avg = ptrtoint ptr %i.ave to i64
  %i.avh = sub i64 %i.avf, %i.avg                 ; 2 uses
  %i.avi = trunc i64 %i.avh to i32
  %i.avj = icmp sgt i32 %i.avi, 0
  br i1 %i.avj, label %.lr.ph.i125.preheader, label %decode_mad1.exit

.lr.ph.i125.preheader:                            ; preds = %bb.hi
  %i.avk = sub i32 0, %i.auw                      ; 4 uses
  %broadcast.splatinsert558 = insertelement <16 x i32> poison, i32 %i.auw, i64 0
  %broadcast.splat559 = shufflevector <16 x i32> %broadcast.splatinsert558, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert562 = insertelement <16 x i32> poison, i32 %i.avk, i64 0
  %broadcast.splat563 = shufflevector <16 x i32> %broadcast.splatinsert562, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.avl = mul <16 x i32> %broadcast.splat563, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avm = shl i32 %i.avk, 4
  %broadcast.splatinsert565 = insertelement <16 x i32> poison, i32 %i.avm, i64 0
  %broadcast.splat566 = shufflevector <16 x i32> %broadcast.splatinsert565, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader, %.loopexit.i131
  %i.avn = phi ptr [ %i.axg, %.loopexit.i131 ], [ %i.avd, %.lr.ph.i125.preheader ] ; 5 uses
  %i.avo = phi i64 [ %i.axj, %.loopexit.i131 ], [ %i.avh, %.lr.ph.i125.preheader ]
  %i.avp = phi i64 [ %i.axh, %.loopexit.i131 ], [ %i.avf, %.lr.ph.i125.preheader ]
  %i.avq = phi ptr [ %i.axf, %.loopexit.i131 ], [ %i.ave, %.lr.ph.i125.preheader ] ; 2 uses
  %.03412.i = phi i32 [ %.5.i, %.loopexit.i131 ], [ 0, %.lr.ph.i125.preheader ] ; 6 uses
  %.03511.i = phi i32 [ %.540.i, %.loopexit.i131 ], [ 0, %.lr.ph.i125.preheader ] ; 2 uses
  %i.avr = icmp slt i64 %i.avo, 1
  br i1 %i.avr, label %bytestream2_get_byte.exit56.i, label %bb.hj

bb.hj:                                            ; preds = %.lr.ph.i125
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avq, i64 1 ; 2 uses
  store ptr %i.avs, ptr %.val72, align 8, !tbaa !88
  %i.avt = load i8, ptr %i.avq, align 1, !tbaa !89
  %i.avu = zext i8 %i.avt to i32
  br label %bytestream2_get_byte.exit56.i

bytestream2_get_byte.exit56.i:                    ; preds = %bb.hj, %.lr.ph.i125
  %i.avv = phi ptr [ %i.avs, %bb.hj ], [ %i.avn, %.lr.ph.i125 ] ; 3 uses
  %.0.i55.i = phi i32 [ %i.avu, %bb.hj ], [ 0, %.lr.ph.i125 ] ; 2 uses
  %i.avw = ptrtoint ptr %i.avv to i64
  %i.avx = sub i64 %i.avp, %i.avw
  %i.avy = icmp slt i64 %i.avx, 1
  br i1 %i.avy, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bytestream2_get_byte.exit56.i
  store ptr %i.avn, ptr %.val72, align 8, !tbaa !85
  br label %bytestream2_get_byte.exit.i126

bb.hl:                                            ; preds = %bytestream2_get_byte.exit56.i
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avv, i64 1 ; 2 uses
  store ptr %i.avz, ptr %.val72, align 8, !tbaa !88
  %i.awa = load i8, ptr %i.avv, align 1, !tbaa !89
  %i.awb = zext i8 %i.awa to i32
  br label %bytestream2_get_byte.exit.i126

bytestream2_get_byte.exit.i126:                   ; preds = %bb.hl, %bb.hk
  %i.awc = phi ptr [ %i.avn, %bb.hk ], [ %i.avz, %bb.hl ] ; 2 uses
  %.0.i.i127 = phi i32 [ 0, %bb.hk ], [ %i.awb, %bb.hl ] ; 2 uses
  %.not.i128 = icmp eq i32 %.0.i55.i, 0
  br i1 %.not.i128, label %bb.hm, label %.preheader.i129

.preheader.i129:                                  ; preds = %bytestream2_get_byte.exit.i126
  %i.awd = trunc nuw i32 %.0.i.i127 to i8
  br label %bb.ho

bb.hm:                                            ; preds = %bytestream2_get_byte.exit.i126
  %i.awe = add nsw i32 %.0.i.i127, %.03511.i      ; 4 uses
  %i.awf = add i32 %.03412.i, 1
  %i.awg = tail call i32 @llvm.smax.i32(i32 %i.auy, i32 %i.awf)
  %i.awh = sub i32 %i.awg, %.03412.i              ; 3 uses
  %min.iters.check555 = icmp ult i32 %i.awh, 32
  br i1 %min.iters.check555, label %scalar.ph554.preheader, label %vector.ph556

vector.ph556:                                     ; preds = %bb.hm
  %n.vec557 = and i32 %i.awh, -16                 ; 4 uses
  %i.awi = mul i32 %n.vec557, %i.avk
  %i.awj = add i32 %i.awe, %i.awi
  %i.awk = add i32 %.03412.i, %n.vec557
  %broadcast.splatinsert560 = insertelement <16 x i32> poison, i32 %i.awe, i64 0
  %broadcast.splat561 = shufflevector <16 x i32> %broadcast.splatinsert560, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction564 = add <16 x i32> %broadcast.splat561, %i.avl
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body.interim572, %vector.ph556
  %index568 = phi i32 [ 0, %vector.ph556 ], [ %index.next570, %vector.body.interim572 ] ; 2 uses
  %vec.ind569 = phi <16 x i32> [ %induction564, %vector.ph556 ], [ %vec.ind.next571, %vector.body.interim572 ] ; 2 uses
  %i.awl = icmp slt <16 x i32> %vec.ind569, %broadcast.splat559
  %i.awm = freeze <16 x i1> %i.awl                ; 2 uses
  %i.awn = bitcast <16 x i1> %i.awm to i16
  %.not581 = icmp eq i16 %i.awn, 0
  br i1 %.not581, label %vector.body.interim572, label %vector.early.exit575

vector.body.interim572:                           ; preds = %vector.body567
  %vec.ind.next571 = add <16 x i32> %vec.ind569, %broadcast.splat566
  %index.next570 = add nuw i32 %index568, 16      ; 2 uses
  %i.awo = icmp eq i32 %index.next570, %n.vec557
  br i1 %i.awo, label %middle.block573, label %vector.body567, !llvm.loop !76

middle.block573:                                  ; preds = %vector.body.interim572
  %cmp.n574 = icmp eq i32 %i.awh, %n.vec557
  br i1 %cmp.n574, label %decode_mad1.exit, label %scalar.ph554.preheader

scalar.ph554.preheader:                           ; preds = %bb.hm, %middle.block573
  %.136.i.ph = phi i32 [ %i.awe, %bb.hm ], [ %i.awj, %middle.block573 ]
  %.1.i.ph = phi i32 [ %.03412.i, %bb.hm ], [ %i.awk, %middle.block573 ]
  br label %scalar.ph554

vector.early.exit575:                             ; preds = %vector.body567
  %i.awp = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.awm, i1 false)
  %i.awq = trunc i64 %i.awp to i32
  %i.awr = add i32 %index568, %i.awq              ; 2 uses
  %i.aws = mul i32 %i.awr, %i.avk
  %i.awt = add i32 %i.awe, %i.aws
  %i.awu = add i32 %.03412.i, %i.awr
  br label %.loopexit.i131

scalar.ph554:                                     ; preds = %scalar.ph554.preheader, %bb.hn
  %.136.i = phi i32 [ %i.awv, %bb.hn ], [ %.136.i.ph, %scalar.ph554.preheader ] ; 3 uses
  %.1.i = phi i32 [ %i.aww, %bb.hn ], [ %.1.i.ph, %scalar.ph554.preheader ] ; 2 uses
  %.not51.i = icmp slt i32 %.136.i, %i.auw
  br i1 %.not51.i, label %.loopexit.i131, label %bb.hn

bb.hn:                                            ; preds = %scalar.ph554
  %i.awv = sub nsw i32 %.136.i, %i.auw
  %i.aww = add nsw i32 %.1.i, 1                   ; 2 uses
  %.not52.i = icmp slt i32 %i.aww, %i.auy
  br i1 %.not52.i, label %scalar.ph554, label %decode_mad1.exit, !llvm.loop !77

bb.ho:                                            ; preds = %bb.hq, %.preheader.i129
  %.03310.i = phi i32 [ %.0.i55.i, %.preheader.i129 ], [ %i.axb, %bb.hq ] ; 2 uses
  %.29.i = phi i32 [ %.03412.i, %.preheader.i129 ], [ %.3.i, %bb.hq ] ; 3 uses
  %.2378.i = phi i32 [ %.03511.i, %.preheader.i129 ], [ %.338.i, %bb.hq ] ; 2 uses
  %i.awx = mul nsw i32 %.29.i, %i.ava
  %i.awy = add nsw i32 %i.awx, %.2378.i
  %i.awz = sext i32 %i.awy to i64
  %i.axa = getelementptr inbounds i8, ptr %i.avb, i64 %i.awz
  store i8 %i.awd, ptr %i.axa, align 1, !tbaa !89
  %i.axb = add nsw i32 %.03310.i, -1
  %i.axc = add nsw i32 %.2378.i, 1                ; 2 uses
  %.not53.i = icmp slt i32 %i.axc, %i.auw
  br i1 %.not53.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.axd = add nsw i32 %.29.i, 1                  ; 2 uses
  %.not54.i = icmp slt i32 %i.axd, %i.auy
  br i1 %.not54.i, label %bb.hq, label %decode_mad1.exit

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %.338.i = phi i32 [ 0, %bb.hp ], [ %i.axc, %bb.ho ] ; 2 uses
  %.3.i = phi i32 [ %i.axd, %bb.hp ], [ %.29.i, %bb.ho ] ; 2 uses
  %i.axe = icmp samesign ugt i32 %.03310.i, 1
  br i1 %i.axe, label %bb.ho, label %.loopexit.loopexit14.i, !llvm.loop !78

.loopexit.loopexit14.i:                           ; preds = %bb.hq
  %.pre.i130 = load ptr, ptr %i.avc, align 8, !tbaa !87
  %.pre18.i = load ptr, ptr %.val72, align 8, !tbaa !85
  br label %.loopexit.i131

.loopexit.i131:                                   ; preds = %scalar.ph554, %vector.early.exit575, %.loopexit.loopexit14.i
  %i.axf = phi ptr [ %.pre18.i, %.loopexit.loopexit14.i ], [ %i.awc, %vector.early.exit575 ], [ %i.awc, %scalar.ph554 ] ; 2 uses
  %i.axg = phi ptr [ %.pre.i130, %.loopexit.loopexit14.i ], [ %i.avn, %vector.early.exit575 ], [ %i.avn, %scalar.ph554 ] ; 2 uses
  %.540.i = phi i32 [ %.338.i, %.loopexit.loopexit14.i ], [ %i.awt, %vector.early.exit575 ], [ %.136.i, %scalar.ph554 ]
  %.5.i = phi i32 [ %.3.i, %.loopexit.loopexit14.i ], [ %i.awu, %vector.early.exit575 ], [ %.1.i, %scalar.ph554 ]
  %i.axh = ptrtoint ptr %i.axg to i64             ; 2 uses
  %i.axi = ptrtoint ptr %i.axf to i64
  %i.axj = sub i64 %i.axh, %i.axi                 ; 2 uses
  %i.axk = trunc i64 %i.axj to i32
  %i.axl = icmp sgt i32 %i.axk, 0
  br i1 %i.axl, label %.lr.ph.i125, label %decode_mad1.exit, !llvm.loop !79

bb.hr:                                            ; preds = %bytestream2_get_be32.exit
  %.phi.trans.insert325 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre326 = load i32, ptr %.phi.trans.insert325, align 8, !tbaa !33
  %i.axm = icmp eq i32 %.pre326, 11
  br i1 %i.axm, label %bb.hs, label %.thread386

bb.hs:                                            ; preds = %bb.hr
  %i.axn = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 0, ptr %i.axn, align 4, !tbaa !97
  %.val71 = load ptr, ptr %i.a, align 8, !tbaa !28 ; 6 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.axp = load i32, ptr %i.axo, align 8, !tbaa !95 ; 5 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !94 ; 3 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.axt = load i32, ptr %i.axs, align 8, !tbaa !35
  %i.axu = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.axv = getelementptr inbounds nuw i8, ptr %.val71, i64 8 ; 2 uses
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !87 ; 2 uses
  %i.axx = load ptr, ptr %.val71, align 8, !tbaa !85 ; 2 uses
  %i.axy = ptrtoint ptr %i.axw to i64             ; 2 uses
  %i.axz = ptrtoint ptr %i.axx to i64
  %i.aya = sub i64 %i.axy, %i.axz                 ; 2 uses
  %i.ayb = trunc i64 %i.aya to i32
  %i.ayc = icmp sgt i32 %i.ayb, 0
  br i1 %i.ayc, label %.lr.ph.i132.preheader, label %decode_mad1.exit

.lr.ph.i132.preheader:                            ; preds = %bb.hs
  %i.ayd = sub i32 0, %i.axp                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.axp, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert549 = insertelement <16 x i32> poison, i32 %i.ayd, i64 0
  %broadcast.splat550 = shufflevector <16 x i32> %broadcast.splatinsert549, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aye = mul <16 x i32> %broadcast.splat550, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ayf = shl i32 %i.ayd, 4
  %broadcast.splatinsert551 = insertelement <16 x i32> poison, i32 %i.ayf, i64 0
  %broadcast.splat552 = shufflevector <16 x i32> %broadcast.splatinsert551, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.lr.ph.i132.preheader, %.loopexit.i151
  %i.ayg = phi ptr [ %i.azz, %.loopexit.i151 ], [ %i.axw, %.lr.ph.i132.preheader ] ; 5 uses
  %i.ayh = phi i64 [ %i.bac, %.loopexit.i151 ], [ %i.aya, %.lr.ph.i132.preheader ]
  %i.ayi = phi i64 [ %i.baa, %.loopexit.i151 ], [ %i.axy, %.lr.ph.i132.preheader ]
  %i.ayj = phi ptr [ %i.azy, %.loopexit.i151 ], [ %i.axx, %.lr.ph.i132.preheader ] ; 2 uses
  %.03412.i133 = phi i32 [ %.5.i153, %.loopexit.i151 ], [ 0, %.lr.ph.i132.preheader ] ; 6 uses
  %.03511.i134 = phi i32 [ %.540.i152, %.loopexit.i151 ], [ 0, %.lr.ph.i132.preheader ] ; 2 uses
  %i.ayk = icmp slt i64 %i.ayh, 1
  br i1 %i.ayk, label %bytestream2_get_byte.exit56.i135, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph.i132
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayj, i64 1 ; 2 uses
  store ptr %i.ayl, ptr %.val71, align 8, !tbaa !88
  %i.aym = load i8, ptr %i.ayj, align 1, !tbaa !89
  %i.ayn = zext i8 %i.aym to i32
  br label %bytestream2_get_byte.exit56.i135

bytestream2_get_byte.exit56.i135:                 ; preds = %bb.ht, %.lr.ph.i132
  %i.ayo = phi ptr [ %i.ayl, %bb.ht ], [ %i.ayg, %.lr.ph.i132 ] ; 3 uses
  %.0.i55.i136 = phi i32 [ %i.ayn, %bb.ht ], [ 0, %.lr.ph.i132 ] ; 2 uses
  %i.ayp = ptrtoint ptr %i.ayo to i64
  %i.ayq = sub i64 %i.ayi, %i.ayp
  %i.ayr = icmp slt i64 %i.ayq, 1
  br i1 %i.ayr, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bytestream2_get_byte.exit56.i135
  store ptr %i.ayg, ptr %.val71, align 8, !tbaa !85
  br label %bytestream2_get_byte.exit.i137

bb.hv:                                            ; preds = %bytestream2_get_byte.exit56.i135
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayo, i64 1 ; 2 uses
  store ptr %i.ays, ptr %.val71, align 8, !tbaa !88
  %i.ayt = load i8, ptr %i.ayo, align 1, !tbaa !89
  %i.ayu = zext i8 %i.ayt to i32
  br label %bytestream2_get_byte.exit.i137

bytestream2_get_byte.exit.i137:                   ; preds = %bb.hv, %bb.hu
  %i.ayv = phi ptr [ %i.ayg, %bb.hu ], [ %i.ays, %bb.hv ] ; 2 uses
  %.0.i.i138 = phi i32 [ 0, %bb.hu ], [ %i.ayu, %bb.hv ] ; 2 uses
  %.not.i139 = icmp eq i32 %.0.i55.i136, 0
  br i1 %.not.i139, label %bb.hw, label %.preheader.i140

.preheader.i140:                                  ; preds = %bytestream2_get_byte.exit.i137
  %i.ayw = trunc nuw i32 %.0.i.i138 to i8
  br label %bb.hy

bb.hw:                                            ; preds = %bytestream2_get_byte.exit.i137
  %i.ayx = add nsw i32 %.0.i.i138, %.03511.i134   ; 4 uses
  %i.ayy = add i32 %.03412.i133, 1
  %i.ayz = tail call i32 @llvm.smax.i32(i32 %i.axr, i32 %i.ayy)
  %i.aza = sub i32 %i.ayz, %.03412.i133           ; 3 uses
  %min.iters.check = icmp ult i32 %i.aza, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.hw
  %n.vec = and i32 %i.aza, -16                    ; 4 uses
  %i.azb = mul i32 %n.vec, %i.ayd
  %i.azc = add i32 %i.ayx, %i.azb
  %i.azd = add i32 %.03412.i133, %n.vec
  %broadcast.splatinsert547 = insertelement <16 x i32> poison, i32 %i.ayx, i64 0
  %broadcast.splat548 = shufflevector <16 x i32> %broadcast.splatinsert547, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i32> %broadcast.splat548, %i.aye
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.aze = icmp slt <16 x i32> %vec.ind, %broadcast.splat
  %i.azf = freeze <16 x i1> %i.aze                ; 2 uses
  %i.azg = bitcast <16 x i1> %i.azf to i16
  %.not580 = icmp eq i16 %i.azg, 0
  br i1 %.not580, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, %broadcast.splat552
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.azh = icmp eq i32 %index.next, %n.vec
  br i1 %i.azh, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.aza, %n.vec
  br i1 %cmp.n, label %decode_mad1.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.hw, %middle.block
  %.136.i154.ph = phi i32 [ %i.ayx, %bb.hw ], [ %i.azc, %middle.block ]
  %.1.i155.ph = phi i32 [ %.03412.i133, %bb.hw ], [ %i.azd, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.azi = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.azf, i1 false)
  %i.azj = trunc i64 %i.azi to i32
  %i.azk = add i32 %index, %i.azj                 ; 2 uses
  %i.azl = mul i32 %i.azk, %i.ayd
  %i.azm = add i32 %i.ayx, %i.azl
  %i.azn = add i32 %.03412.i133, %i.azk
  br label %.loopexit.i151

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.hx
  %.136.i154 = phi i32 [ %i.azo, %bb.hx ], [ %.136.i154.ph, %scalar.ph.preheader ] ; 3 uses
  %.1.i155 = phi i32 [ %i.azp, %bb.hx ], [ %.1.i155.ph, %scalar.ph.preheader ] ; 2 uses
  %.not51.i156 = icmp slt i32 %.136.i154, %i.axp
  br i1 %.not51.i156, label %.loopexit.i151, label %bb.hx

bb.hx:                                            ; preds = %scalar.ph
  %i.azo = sub nsw i32 %.136.i154, %i.axp
  %i.azp = add nsw i32 %.1.i155, 1                ; 2 uses
  %.not52.i157 = icmp slt i32 %i.azp, %i.axr
  br i1 %.not52.i157, label %scalar.ph, label %decode_mad1.exit, !llvm.loop !81

bb.hy:                                            ; preds = %bb.ia, %.preheader.i140
  %.03310.i141 = phi i32 [ %.0.i55.i136, %.preheader.i140 ], [ %i.azu, %bb.ia ] ; 2 uses
  %.29.i142 = phi i32 [ %.03412.i133, %.preheader.i140 ], [ %.3.i147, %bb.ia ] ; 3 uses
  %.2378.i143 = phi i32 [ %.03511.i134, %.preheader.i140 ], [ %.338.i146, %bb.ia ] ; 2 uses
  %i.azq = mul nsw i32 %.29.i142, %i.axt
  %i.azr = add nsw i32 %i.azq, %.2378.i143
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds i8, ptr %i.axu, i64 %i.azs
  store i8 %i.ayw, ptr %i.azt, align 1, !tbaa !89
  %i.azu = add nsw i32 %.03310.i141, -1
  %i.azv = add nsw i32 %.2378.i143, 1             ; 2 uses
  %.not53.i144 = icmp slt i32 %i.azv, %i.axp
  br i1 %.not53.i144, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.azw = add nsw i32 %.29.i142, 1               ; 2 uses
  %.not54.i145 = icmp slt i32 %i.azw, %i.axr
  br i1 %.not54.i145, label %bb.ia, label %decode_mad1.exit

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %.338.i146 = phi i32 [ 0, %bb.hz ], [ %i.azv, %bb.hy ] ; 2 uses
  %.3.i147 = phi i32 [ %i.azw, %bb.hz ], [ %.29.i142, %bb.hy ] ; 2 uses
  %i.azx = icmp samesign ugt i32 %.03310.i141, 1
  br i1 %i.azx, label %bb.hy, label %.loopexit.loopexit14.i148, !llvm.loop !78

.loopexit.loopexit14.i148:                        ; preds = %bb.ia
  %.pre.i149 = load ptr, ptr %i.axv, align 8, !tbaa !87
  %.pre18.i150 = load ptr, ptr %.val71, align 8, !tbaa !85
  br label %.loopexit.i151

.loopexit.i151:                                   ; preds = %scalar.ph, %vector.early.exit, %.loopexit.loopexit14.i148
  %i.azy = phi ptr [ %.pre18.i150, %.loopexit.loopexit14.i148 ], [ %i.ayv, %vector.early.exit ], [ %i.ayv, %scalar.ph ] ; 2 uses
  %i.azz = phi ptr [ %.pre.i149, %.loopexit.loopexit14.i148 ], [ %i.ayg, %vector.early.exit ], [ %i.ayg, %scalar.ph ] ; 2 uses
  %.540.i152 = phi i32 [ %.338.i146, %.loopexit.loopexit14.i148 ], [ %i.azm, %vector.early.exit ], [ %.136.i154, %scalar.ph ]
  %.5.i153 = phi i32 [ %.3.i147, %.loopexit.loopexit14.i148 ], [ %i.azn, %vector.early.exit ], [ %.1.i155, %scalar.ph ]
  %i.baa = ptrtoint ptr %i.azz to i64             ; 2 uses
  %i.bab = ptrtoint ptr %i.azy to i64
  %i.bac = sub i64 %i.baa, %i.bab                 ; 2 uses
  %i.bad = trunc i64 %i.bac to i32
  %i.bae = icmp sgt i32 %i.bad, 0
  br i1 %i.bae, label %.lr.ph.i132, label %decode_mad1.exit, !llvm.loop !79

.thread386:                                       ; preds = %bb.gv, %bb.gy, %bb.hh, %bytestream2_get_be32.exit.thread, %bb.hr, %bytestream2_get_be32.exit
  %.0.i160 = phi i32 [ 0, %bytestream2_get_be32.exit.thread ], [ 1380730180, %bb.hr ], [ %i.x, %bytestream2_get_be32.exit ], [ 1380730182, %bb.hh ], [ 1095516996, %bb.gy ], [ 1096172358, %bb.gv ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.4, i32 noundef %.0.i160) #9
  br label %decode_mad1.exit

decode_mad1.exit:                                 ; preds = %.loopexit.i151, %middle.block, %bb.hz, %bb.hx, %.loopexit.i131, %middle.block573, %bb.hp, %bb.hn, %._crit_edge.i112, %._crit_edge.i100, %bytestream2_get_byte.exit390.i, %bytestream2_get_byte.exit376.i, %.loopexit432.i, %bb.bc, %bb.bl, %bb.bv, %bb.cf, %bb.cp, %bb.az, %.thread386, %bb.n, %bb.gx, %bb.ha, %bb.hi, %bb.hs
  %i.baf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bag = load i32, ptr %i.baf, align 8, !tbaa !33
  %i.bah = icmp eq i32 %i.bag, 11
  br i1 %i.bah, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %decode_mad1.exit
  %i.bai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.baj = load ptr, ptr %i.bai, align 8, !tbaa !88
  %i.bak = getelementptr inbounds nuw i8, ptr %i.b, i64 1184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.baj, ptr noundef nonnull align 8 dereferenceable(1024) %i.bak, i64 1024, i1 false)
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %decode_mad1.exit
  %i.bal = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.bam = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.bal) #9 ; 2 uses
  %i.ban = icmp slt i32 %i.bam, 0
  br i1 %i.ban, label %decode_pal8.exit, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.bao = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bap = load i32, ptr %i.bao, align 4, !tbaa !97
  %.not = icmp eq i32 %i.bap, 0                   ; 2 uses
  %i.baq = select i1 %.not, i32 2, i32 1
  %i.bar = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i32 %i.baq, ptr %i.bar, align 8, !tbaa !99
  %i.bas = getelementptr inbounds nuw i8, ptr %i.d, i64 276 ; 2 uses
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !100
  %i.bau = and i32 %i.bat, -3
  %masksel = select i1 %.not, i32 0, i32 2
  %.sink = or disjoint i32 %i.bau, %masksel
  store i32 %.sink, ptr %i.bas, align 4, !tbaa !100
  store i32 1, ptr %2, align 4, !tbaa !35
  %i.bav = load i32, ptr %i.e, align 8, !tbaa !83
  br label %decode_pal8.exit

decode_pal8.exit.loopexit.unr-lcssa:              ; preds = %bb.l
  %lcmp.mod702.not = icmp eq i64 %xtraiter698, 0
  br i1 %lcmp.mod702.not, label %decode_pal8.exit, label %.epil.preheader697

.epil.preheader697:                               ; preds = %decode_pal8.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %decode_pal8.exit.loopexit.unr-lcssa ]
  %.epil.init701 = phi ptr [ %.32.val.promoted.i, %.lr.ph.i ], [ %i.ck, %decode_pal8.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod703 = trunc i32 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod703)
  %i.baw = getelementptr inbounds nuw i8, ptr %.epil.init701, i64 3
  store ptr %i.baw, ptr %.val, align 8, !tbaa !88
  %i.bax = load i8, ptr %.epil.init701, align 1, !tbaa !89
  %i.bay = zext i8 %i.bax to i32
  %i.baz = shl nuw nsw i32 %i.bay, 16
  %i.bba = getelementptr inbounds nuw i8, ptr %.epil.init701, i64 1
  %i.bbb = load i8, ptr %i.bba, align 1, !tbaa !89
  %i.bbc = zext i8 %i.bbb to i32
  %i.bbd = shl nuw nsw i32 %i.bbc, 8
  %i.bbe = getelementptr inbounds nuw i8, ptr %.epil.init701, i64 2
  %i.bbf = load i8, ptr %i.bbe, align 1, !tbaa !89
  %i.bbg = zext i8 %i.bbf to i32
  %i.bbh = or disjoint i32 %i.baz, %i.bbd
  %i.bbi = or disjoint i32 %i.bbh, %i.bbg
  %i.bbj = or disjoint i32 %i.bbi, -16777216
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  store i32 %i.bbj, ptr %gep.i.epil, align 4, !tbaa !35
  br label %decode_pal8.exit

decode_pal8.exit:                                 ; preds = %bb.do, %bytestream2_get_byte.exit390.i, %.thread12.i, %bytestream2_get_byte.exit380.i, %bb.df, %bb.de, %.lr.ph188.i, %bb.dz, %bb.ej, %bb.es, %bb.fb, %bb.fl, %bb.fj, %bb.fu, %bb.gd, %bb.gm, %bb.eb, %bb.ak, %bytestream2_get_byte.exit376.i, %bb.bd, %bb.bf, %bb.bn, %bb.bp, %bb.bx, %bb.bz, %bb.ch, %bb.cj, %bytestream2_get_byte.exit364.i, %bb.ab, %bb.aa, %.lr.ph510.i, %.epil.preheader697, %decode_pal8.exit.loopexit.unr-lcssa, %bb.gz, %bb.gw, %.thread.i94, %bb.cr, %.thread.i, %bytestream2_get_byte.exit354.i, %.preheader.i, %bb.k, %bytestream2_get_le16.exit.i, %bb.ic, %bytestream2_init.exit, %bb.a, %bb.id
  %.063 = phi i32 [ %i.bam, %bb.ic ], [ -1094995529, %bb.a ], [ %i.n, %bytestream2_init.exit ], [ -1094995529, %bytestream2_get_byte.exit380.i ], [ %i.bav, %bb.id ], [ -1094995529, %bb.k ], [ -1094995529, %bytestream2_get_le16.exit.i ], [ 0, %.preheader.i ], [ -1094995529, %bb.gz ], [ -1094995529, %bb.gw ], [ -1094995529, %bytestream2_get_byte.exit364.i ], [ -1094995529, %bb.ak ], [ -1094995529, %bb.bd ], [ 0, %.epil.preheader697 ], [ -1094995529, %.thread.i94 ], [ -1094995529, %bb.cr ], [ -1094995529, %bb.dz ], [ -1094995529, %.thread.i ], [ -1163346256, %bytestream2_get_byte.exit354.i ], [ 0, %decode_pal8.exit.loopexit.unr-lcssa ], [ -1094995529, %.lr.ph510.i ], [ -1094995529, %bb.aa ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.cj ], [ -1094995529, %bb.ch ], [ -1094995529, %bb.bz ], [ -1094995529, %bb.bx ], [ -1094995529, %bb.bp ], [ -1094995529, %bb.bn ], [ -1094995529, %bb.bf ], [ -1094995529, %bytestream2_get_byte.exit376.i ], [ -1094995529, %bb.eb ], [ -1094995529, %bb.gm ], [ -1094995529, %bb.gd ], [ -1094995529, %bb.fu ], [ -1094995529, %bb.fj ], [ -1094995529, %bb.fl ], [ -1094995529, %bb.fb ], [ -1094995529, %bb.es ], [ -1094995529, %bb.ej ], [ -1094995529, %.lr.ph188.i ], [ -1094995529, %bb.de ], [ -1094995529, %bb.df ], [ -1094995529, %.thread12.i ], [ -1094995529, %bytestream2_get_byte.exit390.i ], [ -1094995529, %bb.do ]
  ret i32 %.063
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2208
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #9
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @decode_flush(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  tail call void @av_frame_unref(ptr noundef %i.d) #9
  ret void
}

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_0
