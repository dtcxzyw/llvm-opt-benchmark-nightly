Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/diracdec?download=true
inline.NumInlined: 153
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 34
begin_hunk_0_@dirac_decode_picture_header:bb.a
  %i.ceh = phi i32 [ %.val.i.i208, %bb.hd ], [ %i.ceg, %bb.he ] ; 5 uses
  %i.cei = load ptr, ptr %i.d, align 8, !tbaa !66 ; 13 uses
  %.not.i211 = icmp eq i32 %i.ceb, 0
  br i1 %.not.i211, label %.thread.i, label %bb.hf

.thread.i:                                        ; preds = %align_get_bits.exit.i210
  %i.cej = getelementptr inbounds nuw i8, ptr %0, i64 4624
  store i32 0, ptr %i.cej, align 16, !tbaa !112
  %.pre.i254 = load i32, ptr %i.g, align 8, !tbaa !68
  br label %bb.hg

bb.hf:                                            ; preds = %align_get_bits.exit.i210
  %i.cek = lshr i32 %i.ceh, 3
  %i.cel = zext nneg i32 %i.cek to i64
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.cel
  %i.cen = load i8, ptr %i.cem, align 1, !tbaa !65
  %i.ceo = load i32, ptr %i.g, align 8, !tbaa !68 ; 2 uses
  %i.cep = icmp slt i32 %i.ceh, %i.ceo
  %i.ceq = zext i1 %i.cep to i32
  %spec.select.i.i212 = add i32 %i.ceh, %i.ceq    ; 2 uses
  %i.cer = zext i8 %i.cen to i32
  %i.ces = and i32 %i.ceh, 7
  %i.cet = shl nuw nsw i32 %i.cer, %i.ces
  %i.ceu = lshr i32 %i.cet, 7
  store i32 %spec.select.i.i212, ptr %i.e, align 16, !tbaa !69
  %i.cev = and i32 %i.ceu, 1                      ; 2 uses
  %i.cew = getelementptr inbounds nuw i8, ptr %0, i64 4624
  store i32 %i.cev, ptr %i.cew, align 16, !tbaa !112
  %.not129.i = icmp eq i32 %i.cev, 0
  br i1 %.not129.i, label %bb.hg, label %dirac_unpack_idwt_params.exit

bb.hg:                                            ; preds = %bb.hf, %.thread.i
  %i.cex = phi i32 [ %.pre.i254, %.thread.i ], [ %i.ceo, %bb.hf ] ; 19 uses
  %i.cey = phi i32 [ %i.ceh, %.thread.i ], [ %spec.select.i.i212, %bb.hf ] ; 4 uses
  %i.cez = lshr i32 %i.cey, 3
  %i.cfa = zext nneg i32 %i.cez to i64
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.cfa
  %i.cfc = load i32, ptr %i.cfb, align 1, !tbaa !65
  %i.cfd = call i32 @llvm.bswap.i32(i32 %i.cfc)
  %i.cfe = and i32 %i.cey, 7
  %i.cff = shl i32 %i.cfd, %i.cfe                 ; 3 uses
  %i.cfg = and i32 %i.cff, -1434451968
  %.not.i139.i = icmp eq i32 %i.cfg, 0
  br i1 %.not.i139.i, label %.preheader.i.i244, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.cfh = lshr i32 %i.cff, 24
  %i.cfi = zext nneg i32 %i.cfh to i64            ; 2 uses
  %i.cfj = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cfi
  %i.cfk = load i8, ptr %i.cfj, align 1, !tbaa !65
  %i.cfl = zext i8 %i.cfk to i32
  %i.cfm = add i32 %i.cey, %i.cfl
  %..i.i214 = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.cfm) ; 2 uses
  store i32 %..i.i214, ptr %i.e, align 16, !tbaa !69
  %i.cfn = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.cfi
  %i.cfo = load i8, ptr %i.cfn, align 1, !tbaa !65
  %i.cfp = zext i8 %i.cfo to i32
  br label %get_interleaved_ue_golomb.exit.i215

.preheader.i.i244:                                ; preds = %bb.hg, %bb.hj
  %.044.i.i245 = phi i32 [ %i.cgo, %bb.hj ], [ %i.cff, %bb.hg ]
  %.043.i.i246 = phi i32 [ %spec.select56.i.i249, %bb.hj ], [ %i.cey, %bb.hg ]
  %.0.i.i247 = phi i32 [ %i.cgh, %bb.hj ], [ 1, %bb.hg ] ; 2 uses
  %i.cfq = lshr i32 %.044.i.i245, 24
  %i.cfr = zext nneg i32 %i.cfq to i64            ; 3 uses
  %i.cfs = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cfr
  %i.cft = load i8, ptr %i.cfs, align 1, !tbaa !65 ; 3 uses
  %spec.select57.i.i248 = call i8 @llvm.umin.i8(i8 %i.cft, i8 8)
  %spec.select.i140.i = zext nneg i8 %spec.select57.i.i248 to i32
  %i.cfu = add i32 %.043.i.i246, %spec.select.i140.i ; 2 uses
  %spec.select56.i.i249 = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.cfu) ; 5 uses
  %.not54.i.i250 = icmp eq i8 %i.cft, 9
  br i1 %.not54.i.i250, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %.preheader.i.i244
  %i.cfv = zext i8 %i.cft to i32
  %i.cfw = add nsw i32 %i.cfv, -1
  %i.cfx = ashr i32 %i.cfw, 1
  %i.cfy = shl i32 %.0.i.i247, %i.cfx
  %i.cfz = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.cfr
  %i.cga = load i8, ptr %i.cfz, align 1, !tbaa !65
  %i.cgb = zext i8 %i.cga to i32
  %i.cgc = or i32 %i.cfy, %i.cgb
  br label %.loopexit.i.i251

bb.hj:                                            ; preds = %.preheader.i.i244
  %i.cgd = shl i32 %.0.i.i247, 4                  ; 2 uses
  %i.cge = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.cfr
  %i.cgf = load i8, ptr %i.cge, align 1, !tbaa !65
  %i.cgg = zext i8 %i.cgf to i32
  %i.cgh = or i32 %i.cgd, %i.cgg                  ; 2 uses
  %i.cgi = lshr i32 %spec.select56.i.i249, 3
  %i.cgj = zext nneg i32 %i.cgi to i64
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.cgj
  %i.cgl = load i32, ptr %i.cgk, align 1, !tbaa !65
  %i.cgm = call i32 @llvm.bswap.i32(i32 %i.cgl)
  %i.cgn = and i32 %spec.select56.i.i249, 7
  %i.cgo = shl i32 %i.cgm, %i.cgn
  %i.cgp = icmp ult i32 %i.cgd, 134217728
  %i.cgq = icmp ult i32 %i.cfu, %i.cex
  %i.cgr = select i1 %i.cgp, i1 %i.cgq, i1 false
  br i1 %i.cgr, label %.preheader.i.i244, label %.loopexit.i.i251, !llvm.loop !3

.loopexit.i.i251:                                 ; preds = %bb.hj, %bb.hi
  %.1.i.i252 = phi i32 [ %i.cgc, %bb.hi ], [ %i.cgh, %bb.hj ]
  store i32 %spec.select56.i.i249, ptr %i.e, align 16, !tbaa !69
  %i.cgs = add i32 %.1.i.i252, -1
  br label %get_interleaved_ue_golomb.exit.i215

get_interleaved_ue_golomb.exit.i215:              ; preds = %.loopexit.i.i251, %bb.hh
  %i.cgt = phi i32 [ %..i.i214, %bb.hh ], [ %spec.select56.i.i249, %.loopexit.i.i251 ] ; 4 uses
  %.045.i.i216 = phi i32 [ %i.cfp, %bb.hh ], [ %i.cgs, %.loopexit.i.i251 ] ; 2 uses
  %i.cgu = icmp ugt i32 %.045.i.i216, 6
  br i1 %i.cgu, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %get_interleaved_ue_golomb.exit.i215
  %i.cgv = load ptr, ptr %0, align 16, !tbaa !52
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cgv, i32 noundef 16, ptr noundef nonnull @.str.28) #14
  br label %init_planes.exit

bb.hl:                                            ; preds = %get_interleaved_ue_golomb.exit.i215
  %i.cgw = getelementptr inbounds nuw i8, ptr %0, i64 4664 ; 2 uses
  store i32 %.045.i.i216, ptr %i.cgw, align 8, !tbaa !113
  %i.cgx = lshr i32 %i.cgt, 3
  %i.cgy = zext nneg i32 %i.cgx to i64
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.cgy
  %i.cha = load i32, ptr %i.cgz, align 1, !tbaa !65
  %i.chb = call i32 @llvm.bswap.i32(i32 %i.cha)
  %i.chc = and i32 %i.cgt, 7
  %i.chd = shl i32 %i.chb, %i.chc                 ; 3 uses
  %i.che = and i32 %i.chd, -1434451968
  %.not.i141.i217 = icmp eq i32 %i.che, 0
  br i1 %.not.i141.i217, label %.preheader.i144.i234, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.chf = lshr i32 %i.chd, 24
  %i.chg = zext nneg i32 %i.chf to i64            ; 2 uses
  %i.chh = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.chg
  %i.chi = load i8, ptr %i.chh, align 1, !tbaa !65
  %i.chj = zext i8 %i.chi to i32
  %i.chk = add i32 %i.cgt, %i.chj
  %..i142.i218 = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.chk) ; 2 uses
  store i32 %..i142.i218, ptr %i.e, align 16, !tbaa !69
  %i.chl = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.chg
  %i.chm = load i8, ptr %i.chl, align 1, !tbaa !65
  %i.chn = zext i8 %i.chm to i32
  br label %get_interleaved_ue_golomb.exit154.i219

.preheader.i144.i234:                             ; preds = %bb.hl, %bb.ho
  %.044.i145.i235 = phi i32 [ %i.cim, %bb.ho ], [ %i.chd, %bb.hl ]
  %.043.i146.i236 = phi i32 [ %spec.select56.i150.i240, %bb.ho ], [ %i.cgt, %bb.hl ]
  %.0.i147.i237 = phi i32 [ %i.cif, %bb.ho ], [ 1, %bb.hl ] ; 2 uses
  %i.cho = lshr i32 %.044.i145.i235, 24
  %i.chp = zext nneg i32 %i.cho to i64            ; 3 uses
  %i.chq = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.chp
  %i.chr = load i8, ptr %i.chq, align 1, !tbaa !65 ; 3 uses
  %spec.select57.i148.i238 = call i8 @llvm.umin.i8(i8 %i.chr, i8 8)
  %spec.select.i149.i239 = zext nneg i8 %spec.select57.i148.i238 to i32
  %i.chs = add i32 %.043.i146.i236, %spec.select.i149.i239 ; 2 uses
  %spec.select56.i150.i240 = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.chs) ; 5 uses
  %.not54.i151.i241 = icmp eq i8 %i.chr, 9
  br i1 %.not54.i151.i241, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %.preheader.i144.i234
  %i.cht = zext i8 %i.chr to i32
  %i.chu = add nsw i32 %i.cht, -1
  %i.chv = ashr i32 %i.chu, 1
  %i.chw = shl i32 %.0.i147.i237, %i.chv
  %i.chx = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.chp
  %i.chy = load i8, ptr %i.chx, align 1, !tbaa !65
  %i.chz = zext i8 %i.chy to i32
  %i.cia = or i32 %i.chw, %i.chz
  br label %.loopexit.i152.i242

bb.ho:                                            ; preds = %.preheader.i144.i234
  %i.cib = shl i32 %.0.i147.i237, 4               ; 2 uses
  %i.cic = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.chp
  %i.cid = load i8, ptr %i.cic, align 1, !tbaa !65
  %i.cie = zext i8 %i.cid to i32
  %i.cif = or i32 %i.cib, %i.cie                  ; 2 uses
  %i.cig = lshr i32 %spec.select56.i150.i240, 3
  %i.cih = zext nneg i32 %i.cig to i64
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.cih
  %i.cij = load i32, ptr %i.cii, align 1, !tbaa !65
  %i.cik = call i32 @llvm.bswap.i32(i32 %i.cij)
  %i.cil = and i32 %spec.select56.i150.i240, 7
  %i.cim = shl i32 %i.cik, %i.cil
  %i.cin = icmp ult i32 %i.cib, 134217728
  %i.cio = icmp ult i32 %i.chs, %i.cex
  %i.cip = select i1 %i.cin, i1 %i.cio, i1 false
  br i1 %i.cip, label %.preheader.i144.i234, label %.loopexit.i152.i242, !llvm.loop !3

.loopexit.i152.i242:                              ; preds = %bb.ho, %bb.hn
  %.1.i153.i243 = phi i32 [ %i.cia, %bb.hn ], [ %i.cif, %bb.ho ]
  store i32 %spec.select56.i150.i240, ptr %i.e, align 16, !tbaa !69
  %i.ciq = add i32 %.1.i153.i243, -1
  br label %get_interleaved_ue_golomb.exit154.i219

get_interleaved_ue_golomb.exit154.i219:           ; preds = %.loopexit.i152.i242, %bb.hm
  %i.cir = phi i32 [ %..i142.i218, %bb.hm ], [ %spec.select56.i150.i240, %.loopexit.i152.i242 ] ; 7 uses
  %.045.i143.i220 = phi i32 [ %i.chn, %bb.hm ], [ %i.ciq, %.loopexit.i152.i242 ] ; 4 uses
  %i.cis = add i32 %.045.i143.i220, -6
  %or.cond.i221 = icmp ult i32 %i.cis, -5
  br i1 %or.cond.i221, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %get_interleaved_ue_golomb.exit154.i219
  %i.cit = load ptr, ptr %0, align 16, !tbaa !52
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cit, i32 noundef 16, ptr noundef nonnull @.str.29) #14
  br label %init_planes.exit

bb.hq:                                            ; preds = %get_interleaved_ue_golomb.exit154.i219
  %i.ciu = getelementptr inbounds nuw i8, ptr %0, i64 4660 ; 3 uses
  store i32 %.045.i143.i220, ptr %i.ciu, align 4, !tbaa !114
  %i.civ = getelementptr inbounds nuw i8, ptr %0, i64 4636
  %i.ciw = load i32, ptr %i.civ, align 4, !tbaa !115
  %.not130.i222 = icmp eq i32 %i.ciw, 0
  %i.cix = lshr i32 %i.cir, 3
  %i.ciy = zext nneg i32 %i.cix to i64
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.ciy ; 2 uses
  br i1 %.not130.i222, label %bb.hr, label %bb.ii

bb.hr:                                            ; preds = %bb.hq
  %i.cja = load i8, ptr %i.ciz, align 1, !tbaa !65
  %i.cjb = icmp slt i32 %i.cir, %i.cex
  %i.cjc = zext i1 %i.cjb to i32
  %spec.select.i155.i = add i32 %i.cir, %i.cjc    ; 2 uses
  %i.cjd = zext i8 %i.cja to i32
  %i.cje = and i32 %i.cir, 7
  store i32 %spec.select.i155.i, ptr %i.e, align 16, !tbaa !69
  %i.cjf = lshr exact i32 128, %i.cje
  %i.cjg = and i32 %i.cjf, %i.cjd
  %.not131.i232 = icmp eq i32 %i.cjg, 0
  %i.cjh = getelementptr inbounds nuw i8, ptr %0, i64 4716 ; 2 uses
  %i.cji = add nuw nsw i32 %.045.i143.i220, 1     ; 5 uses
  %wide.trip.count398.i = zext nneg i32 %i.cji to i64
  br i1 %.not131.i232, label %.preheader.i233.1, label %.preheader228.i

.preheader228.i:                                  ; preds = %bb.hr
  %.pre402.i = load ptr, ptr %0, align 16, !tbaa !52 ; 4 uses
  %i.cjj = getelementptr inbounds nuw i8, ptr %.pre402.i, i64 112
  %i.cjk = getelementptr inbounds nuw i8, ptr %.pre402.i, i64 116
  br label %bb.hs

bb.hs:                                            ; preds = %bb.ie, %.preheader228.i
  %indvars.iv390.i = phi i64 [ 0, %.preheader228.i ], [ %indvars.iv.next391.i, %bb.ie ] ; 3 uses
  %spec.select56.i165234298301.i = phi i32 [ %spec.select.i155.i, %.preheader228.i ], [ %spec.select56.i165234299.i, %bb.ie ] ; 4 uses
  %i.cjl = lshr i32 %spec.select56.i165234298301.i, 3
  %i.cjm = zext nneg i32 %i.cjl to i64
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.cjm
  %i.cjo = load i32, ptr %i.cjn, align 1, !tbaa !65
  %i.cjp = call i32 @llvm.bswap.i32(i32 %i.cjo)
  %i.cjq = and i32 %spec.select56.i165234298301.i, 7
  %i.cjr = shl i32 %i.cjp, %i.cjq                 ; 3 uses
  %i.cjs = and i32 %i.cjr, -1434451968
  %.not.i156.i = icmp eq i32 %i.cjs, 0
  br i1 %.not.i156.i, label %.preheader.i159.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.cjt = lshr i32 %i.cjr, 24
  %i.cju = zext nneg i32 %i.cjt to i64            ; 2 uses
  %i.cjv = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cju
  %i.cjw = load i8, ptr %i.cjv, align 1, !tbaa !65
  %i.cjx = zext i8 %i.cjw to i32
  %i.cjy = add i32 %spec.select56.i165234298301.i, %i.cjx
  %..i157.i = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.cjy) ; 2 uses
  store i32 %..i157.i, ptr %i.e, align 16, !tbaa !69
  %i.cjz = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.cju
  %i.cka = load i8, ptr %i.cjz, align 1, !tbaa !65
  %i.ckb = zext i8 %i.cka to i32
  br label %get_interleaved_ue_golomb.exit169.i

.preheader.i159.i:                                ; preds = %bb.hs, %bb.hv
  %.044.i160.i = phi i32 [ %i.cla, %bb.hv ], [ %i.cjr, %bb.hs ]
  %.043.i161.i = phi i32 [ %spec.select56.i165.i, %bb.hv ], [ %spec.select56.i165234298301.i, %bb.hs ]
  %.0.i162.i = phi i32 [ %i.ckt, %bb.hv ], [ 1, %bb.hs ] ; 2 uses
  %i.ckc = lshr i32 %.044.i160.i, 24
  %i.ckd = zext nneg i32 %i.ckc to i64            ; 3 uses
  %i.cke = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.ckd
  %i.ckf = load i8, ptr %i.cke, align 1, !tbaa !65 ; 3 uses
  %spec.select57.i163.i = call i8 @llvm.umin.i8(i8 %i.ckf, i8 8)
  %spec.select.i164.i = zext nneg i8 %spec.select57.i163.i to i32
  %i.ckg = add i32 %.043.i161.i, %spec.select.i164.i ; 2 uses
  %spec.select56.i165.i = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.ckg) ; 5 uses
  %.not54.i166.i = icmp eq i8 %i.ckf, 9
  br i1 %.not54.i166.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %.preheader.i159.i
  %i.ckh = zext i8 %i.ckf to i32
  %i.cki = add nsw i32 %i.ckh, -1
  %i.ckj = ashr i32 %i.cki, 1
  %i.ckk = shl i32 %.0.i162.i, %i.ckj
  %i.ckl = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.ckd
  %i.ckm = load i8, ptr %i.ckl, align 1, !tbaa !65
  %i.ckn = zext i8 %i.ckm to i32
  %i.cko = or i32 %i.ckk, %i.ckn
  br label %.loopexit.i167.i

bb.hv:                                            ; preds = %.preheader.i159.i
  %i.ckp = shl i32 %.0.i162.i, 4                  ; 2 uses
  %i.ckq = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.ckd
  %i.ckr = load i8, ptr %i.ckq, align 1, !tbaa !65
  %i.cks = zext i8 %i.ckr to i32
  %i.ckt = or i32 %i.ckp, %i.cks                  ; 2 uses
  %i.cku = lshr i32 %spec.select56.i165.i, 3
  %i.ckv = zext nneg i32 %i.cku to i64
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.ckv
  %i.ckx = load i32, ptr %i.ckw, align 1, !tbaa !65
  %i.cky = call i32 @llvm.bswap.i32(i32 %i.ckx)
  %i.ckz = and i32 %spec.select56.i165.i, 7
  %i.cla = shl i32 %i.cky, %i.ckz
  %i.clb = icmp ult i32 %i.ckp, 134217728
  %i.clc = icmp ult i32 %i.ckg, %i.cex
  %i.cld = select i1 %i.clb, i1 %i.clc, i1 false
  br i1 %i.cld, label %.preheader.i159.i, label %.loopexit.i167.i, !llvm.loop !3

.loopexit.i167.i:                                 ; preds = %bb.hv, %bb.hu
  %.1.i168.i = phi i32 [ %i.cko, %bb.hu ], [ %i.ckt, %bb.hv ]
  store i32 %spec.select56.i165.i, ptr %i.e, align 16, !tbaa !69
  %i.cle = add i32 %.1.i168.i, -1
  br label %get_interleaved_ue_golomb.exit169.i

get_interleaved_ue_golomb.exit169.i:              ; preds = %.loopexit.i167.i, %bb.ht
  %spec.select56.i165234300.i = phi i32 [ %..i157.i, %bb.ht ], [ %spec.select56.i165.i, %.loopexit.i167.i ] ; 4 uses
  %.045.i158.i = phi i32 [ %i.ckb, %bb.ht ], [ %i.cle, %.loopexit.i167.i ] ; 3 uses
  %i.clf = icmp eq i32 %.045.i158.i, 0
  br i1 %i.clf, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %get_interleaved_ue_golomb.exit169.i
  %i.clg = load i32, ptr %i.cjj, align 8, !tbaa !216
  %i.clh = trunc i64 %indvars.iv390.i to i32
  %i.cli = sub i32 %.045.i143.i220, %i.clh        ; 2 uses
  %i.clj = ashr i32 %i.clg, %i.cli
  %i.clk = icmp ugt i32 %.045.i158.i, %i.clj
  br i1 %i.clk, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw, %get_interleaved_ue_golomb.exit169.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %.pre402.i, i32 noundef 16, ptr noundef nonnull @.str.30) #14
  br label %init_planes.exit

bb.hy:                                            ; preds = %bb.hw
  %i.cll = getelementptr inbounds nuw [8 x i8], ptr %i.cjh, i64 %indvars.iv390.i ; 2 uses
  store i32 %.045.i158.i, ptr %i.cll, align 4, !tbaa !117
  %i.clm = lshr i32 %spec.select56.i165234300.i, 3
  %i.cln = zext nneg i32 %i.clm to i64
  %i.clo = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.cln
  %i.clp = load i32, ptr %i.clo, align 1, !tbaa !65
  %i.clq = call i32 @llvm.bswap.i32(i32 %i.clp)
  %i.clr = and i32 %spec.select56.i165234300.i, 7
  %i.cls = shl i32 %i.clq, %i.clr                 ; 3 uses
  %i.clt = and i32 %i.cls, -1434451968
  %.not.i170.i = icmp eq i32 %i.clt, 0
  br i1 %.not.i170.i, label %.preheader.i173.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.clu = lshr i32 %i.cls, 24
  %i.clv = zext nneg i32 %i.clu to i64            ; 2 uses
  %i.clw = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.clv
  %i.clx = load i8, ptr %i.clw, align 1, !tbaa !65
  %i.cly = zext i8 %i.clx to i32
  %i.clz = add i32 %spec.select56.i165234300.i, %i.cly
  %..i171.i = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.clz) ; 2 uses
  store i32 %..i171.i, ptr %i.e, align 16, !tbaa !69
  %i.cma = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.clv
  %i.cmb = load i8, ptr %i.cma, align 1, !tbaa !65
  %i.cmc = zext i8 %i.cmb to i32
  br label %get_interleaved_ue_golomb.exit183.i

.preheader.i173.i:                                ; preds = %bb.hy, %bb.ib
  %.044.i174.i = phi i32 [ %i.cnb, %bb.ib ], [ %i.cls, %bb.hy ]
  %.043.i175.i = phi i32 [ %spec.select56.i179.i, %bb.ib ], [ %spec.select56.i165234300.i, %bb.hy ]
  %.0.i176.i = phi i32 [ %i.cmu, %bb.ib ], [ 1, %bb.hy ] ; 2 uses
  %i.cmd = lshr i32 %.044.i174.i, 24
  %i.cme = zext nneg i32 %i.cmd to i64            ; 3 uses
  %i.cmf = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cme
  %i.cmg = load i8, ptr %i.cmf, align 1, !tbaa !65 ; 3 uses
  %spec.select57.i177.i = call i8 @llvm.umin.i8(i8 %i.cmg, i8 8)
  %spec.select.i178.i = zext nneg i8 %spec.select57.i177.i to i32
  %i.cmh = add i32 %.043.i175.i, %spec.select.i178.i ; 2 uses
  %spec.select56.i179.i = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.cmh) ; 5 uses
  %.not54.i180.i = icmp eq i8 %i.cmg, 9
  br i1 %.not54.i180.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %.preheader.i173.i
  %i.cmi = zext i8 %i.cmg to i32
  %i.cmj = add nsw i32 %i.cmi, -1
  %i.cmk = ashr i32 %i.cmj, 1
  %i.cml = shl i32 %.0.i176.i, %i.cmk
  %i.cmm = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.cme
  %i.cmn = load i8, ptr %i.cmm, align 1, !tbaa !65
  %i.cmo = zext i8 %i.cmn to i32
  %i.cmp = or i32 %i.cml, %i.cmo
  br label %.loopexit.i181.i

bb.ib:                                            ; preds = %.preheader.i173.i
  %i.cmq = shl i32 %.0.i176.i, 4                  ; 2 uses
  %i.cmr = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.cme
  %i.cms = load i8, ptr %i.cmr, align 1, !tbaa !65
  %i.cmt = zext i8 %i.cms to i32
  %i.cmu = or i32 %i.cmq, %i.cmt                  ; 2 uses
  %i.cmv = lshr i32 %spec.select56.i179.i, 3
  %i.cmw = zext nneg i32 %i.cmv to i64
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.cmw
  %i.cmy = load i32, ptr %i.cmx, align 1, !tbaa !65
  %i.cmz = call i32 @llvm.bswap.i32(i32 %i.cmy)
  %i.cna = and i32 %spec.select56.i179.i, 7
  %i.cnb = shl i32 %i.cmz, %i.cna
  %i.cnc = icmp ult i32 %i.cmq, 134217728
  %i.cnd = icmp ult i32 %i.cmh, %i.cex
  %i.cne = select i1 %i.cnc, i1 %i.cnd, i1 false
  br i1 %i.cne, label %.preheader.i173.i, label %.loopexit.i181.i, !llvm.loop !3

.loopexit.i181.i:                                 ; preds = %bb.ib, %bb.ia
  %.1.i182.i = phi i32 [ %i.cmp, %bb.ia ], [ %i.cmu, %bb.ib ]
  store i32 %spec.select56.i179.i, ptr %i.e, align 16, !tbaa !69
  %i.cnf = add i32 %.1.i182.i, -1
  br label %get_interleaved_ue_golomb.exit183.i

get_interleaved_ue_golomb.exit183.i:              ; preds = %.loopexit.i181.i, %bb.hz
  %spec.select56.i165234299.i = phi i32 [ %..i171.i, %bb.hz ], [ %spec.select56.i179.i, %.loopexit.i181.i ]
  %.045.i172.i = phi i32 [ %i.cmc, %bb.hz ], [ %i.cnf, %.loopexit.i181.i ] ; 3 uses
  %i.cng = icmp eq i32 %.045.i172.i, 0
  br i1 %i.cng, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %get_interleaved_ue_golomb.exit183.i
  %i.cnh = load i32, ptr %i.cjk, align 4, !tbaa !217
  %i.cni = ashr i32 %i.cnh, %i.cli
  %i.cnj = icmp ugt i32 %.045.i172.i, %i.cni
  br i1 %i.cnj, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic, %get_interleaved_ue_golomb.exit183.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %.pre402.i, i32 noundef 16, ptr noundef nonnull @.str.31) #14
  br label %init_planes.exit

bb.ie:                                            ; preds = %bb.ic
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cll, i64 4
  store i32 %.045.i172.i, ptr %i.cnk, align 4, !tbaa !118
  %indvars.iv.next391.i = add nuw nsw i64 %indvars.iv390.i, 1 ; 2 uses
  %exitcond394.not.i = icmp eq i64 %indvars.iv.next391.i, %wide.trip.count398.i
  br i1 %exitcond394.not.i, label %bb.if, label %bb.hs, !llvm.loop !203

bb.if:                                            ; preds = %bb.ie
  %i.cnl = call fastcc i32 @get_interleaved_ue_golomb(ptr noundef nonnull %i.d) ; 2 uses
  %i.cnm = icmp ugt i32 %i.cnl, 1
  br i1 %i.cnm, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.cnn = load ptr, ptr %0, align 16, !tbaa !52
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cnn, i32 noundef 16, ptr noundef nonnull @.str.32) #14
  br label %init_planes.exit

bb.ih:                                            ; preds = %bb.if
  %i.cno = getelementptr inbounds nuw i8, ptr %0, i64 4672
  store i32 %i.cnl, ptr %i.cno, align 16, !tbaa !119
  br label %dirac_unpack_idwt_params.exit

.preheader.i233.1:                                ; preds = %bb.hr
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4720
  store i32 1, ptr %2, align 16, !tbaa !118
  store i32 1, ptr %i.cjh, align 4, !tbaa !117
  %i.cnp = getelementptr inbounds nuw i8, ptr %0, i64 4724
  %i.cnq = getelementptr inbounds nuw i8, ptr %0, i64 4728
  store i32 1, ptr %i.cnq, align 8, !tbaa !118
  store i32 1, ptr %i.cnp, align 4, !tbaa !117
  %exitcond399.not.i.1 = icmp eq i32 %i.cji, 2
  br i1 %exitcond399.not.i.1, label %dirac_unpack_idwt_params.exit, label %.preheader.i233.2

.preheader.i233.2:                                ; preds = %.preheader.i233.1
  %i.cnr = getelementptr inbounds nuw i8, ptr %0, i64 4732
  %i.cns = getelementptr inbounds nuw i8, ptr %0, i64 4736
  store i32 1, ptr %i.cns, align 16, !tbaa !118
  store i32 1, ptr %i.cnr, align 4, !tbaa !117
  %exitcond399.not.i.2 = icmp eq i32 %i.cji, 3
  br i1 %exitcond399.not.i.2, label %dirac_unpack_idwt_params.exit, label %.preheader.i233.3

.preheader.i233.3:                                ; preds = %.preheader.i233.2
  %i.cnt = getelementptr inbounds nuw i8, ptr %0, i64 4740
  %i.cnu = getelementptr inbounds nuw i8, ptr %0, i64 4744
  store i32 1, ptr %i.cnu, align 8, !tbaa !118
  store i32 1, ptr %i.cnt, align 4, !tbaa !117
  %exitcond399.not.i.3 = icmp eq i32 %i.cji, 4
  br i1 %exitcond399.not.i.3, label %dirac_unpack_idwt_params.exit, label %.preheader.i233.4

.preheader.i233.4:                                ; preds = %.preheader.i233.3
  %i.cnv = getelementptr inbounds nuw i8, ptr %0, i64 4748
  %i.cnw = getelementptr inbounds nuw i8, ptr %0, i64 4752
  store i32 1, ptr %i.cnw, align 16, !tbaa !118
  store i32 1, ptr %i.cnv, align 4, !tbaa !117
  %exitcond399.not.i.4 = icmp eq i32 %i.cji, 5
  br i1 %exitcond399.not.i.4, label %dirac_unpack_idwt_params.exit, label %.preheader.i233.5

.preheader.i233.5:                                ; preds = %.preheader.i233.4
  %i.cnx = getelementptr inbounds nuw i8, ptr %0, i64 4756
  %i.cny = getelementptr inbounds nuw i8, ptr %0, i64 4760
  store i32 1, ptr %i.cny, align 8, !tbaa !118
  store i32 1, ptr %i.cnx, align 4, !tbaa !117
  br label %dirac_unpack_idwt_params.exit

bb.ii:                                            ; preds = %bb.hq
  %i.cnz = load i32, ptr %i.ciz, align 1, !tbaa !65
  %i.coa = call i32 @llvm.bswap.i32(i32 %i.cnz)
  %i.cob = and i32 %i.cir, 7
  %i.coc = shl i32 %i.coa, %i.cob                 ; 3 uses
  %i.cod = and i32 %i.coc, -1434451968
  %.not.i184.i = icmp eq i32 %i.cod, 0
  br i1 %.not.i184.i, label %.preheader.i187.i, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.coe = lshr i32 %i.coc, 24
  %i.cof = zext nneg i32 %i.coe to i64            ; 2 uses
  %i.cog = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cof
  %i.coh = load i8, ptr %i.cog, align 1, !tbaa !65
  %i.coi = zext i8 %i.coh to i32
  %i.coj = add i32 %i.cir, %i.coi
  %..i185.i = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.coj) ; 2 uses
  store i32 %..i185.i, ptr %i.e, align 16, !tbaa !69
  %i.cok = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.cof
  %i.col = load i8, ptr %i.cok, align 1, !tbaa !65
  %i.com = zext i8 %i.col to i32
  br label %get_interleaved_ue_golomb.exit197.i

.preheader.i187.i:                                ; preds = %bb.ii, %bb.il
  %.044.i188.i = phi i32 [ %i.cpl, %bb.il ], [ %i.coc, %bb.ii ]
  %.043.i189.i = phi i32 [ %spec.select56.i193.i, %bb.il ], [ %i.cir, %bb.ii ]
  %.0.i190.i = phi i32 [ %i.cpe, %bb.il ], [ 1, %bb.ii ] ; 2 uses
  %i.con = lshr i32 %.044.i188.i, 24
  %i.coo = zext nneg i32 %i.con to i64            ; 3 uses
  %i.cop = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.coo
  %i.coq = load i8, ptr %i.cop, align 1, !tbaa !65 ; 3 uses
  %spec.select57.i191.i = call i8 @llvm.umin.i8(i8 %i.coq, i8 8)
  %spec.select.i192.i = zext nneg i8 %spec.select57.i191.i to i32
  %i.cor = add i32 %.043.i189.i, %spec.select.i192.i ; 2 uses
  %spec.select56.i193.i = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.cor) ; 5 uses
  %.not54.i194.i = icmp eq i8 %i.coq, 9
  br i1 %.not54.i194.i, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %.preheader.i187.i
  %i.cos = zext i8 %i.coq to i32
  %i.cot = add nsw i32 %i.cos, -1
  %i.cou = ashr i32 %i.cot, 1
  %i.cov = shl i32 %.0.i190.i, %i.cou
  %i.cow = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.coo
  %i.cox = load i8, ptr %i.cow, align 1, !tbaa !65
  %i.coy = zext i8 %i.cox to i32
  %i.coz = or i32 %i.cov, %i.coy
  br label %.loopexit.i195.i

bb.il:                                            ; preds = %.preheader.i187.i
  %i.cpa = shl i32 %.0.i190.i, 4                  ; 2 uses
  %i.cpb = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.coo
  %i.cpc = load i8, ptr %i.cpb, align 1, !tbaa !65
  %i.cpd = zext i8 %i.cpc to i32
  %i.cpe = or i32 %i.cpa, %i.cpd                  ; 2 uses
  %i.cpf = lshr i32 %spec.select56.i193.i, 3
  %i.cpg = zext nneg i32 %i.cpf to i64
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.cpg
  %i.cpi = load i32, ptr %i.cph, align 1, !tbaa !65
  %i.cpj = call i32 @llvm.bswap.i32(i32 %i.cpi)
  %i.cpk = and i32 %spec.select56.i193.i, 7
  %i.cpl = shl i32 %i.cpj, %i.cpk
  %i.cpm = icmp ult i32 %i.cpa, 134217728
  %i.cpn = icmp ult i32 %i.cor, %i.cex
  %i.cpo = select i1 %i.cpm, i1 %i.cpn, i1 false
  br i1 %i.cpo, label %.preheader.i187.i, label %.loopexit.i195.i, !llvm.loop !3

.loopexit.i195.i:                                 ; preds = %bb.il, %bb.ik
  %.1.i196.i = phi i32 [ %i.coz, %bb.ik ], [ %i.cpe, %bb.il ]
  store i32 %spec.select56.i193.i, ptr %i.e, align 16, !tbaa !69
  %i.cpp = add i32 %.1.i196.i, -1
  br label %get_interleaved_ue_golomb.exit197.i

get_interleaved_ue_golomb.exit197.i:              ; preds = %.loopexit.i195.i, %bb.ij
  %i.cpq = phi i32 [ %..i185.i, %bb.ij ], [ %spec.select56.i193.i, %.loopexit.i195.i ] ; 4 uses
  %.045.i186.i = phi i32 [ %i.com, %bb.ij ], [ %i.cpp, %.loopexit.i195.i ] ; 4 uses
  %i.cpr = getelementptr inbounds nuw i8, ptr %0, i64 4676 ; 2 uses
  store i32 %.045.i186.i, ptr %i.cpr, align 4, !tbaa !120
  %i.cps = lshr i32 %i.cpq, 3
  %i.cpt = zext nneg i32 %i.cps to i64
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.cpt
  %i.cpv = load i32, ptr %i.cpu, align 1, !tbaa !65
  %i.cpw = call i32 @llvm.bswap.i32(i32 %i.cpv)
  %i.cpx = and i32 %i.cpq, 7
  %i.cpy = shl i32 %i.cpw, %i.cpx                 ; 3 uses
  %i.cpz = and i32 %i.cpy, -1434451968
  %.not.i198.i = icmp eq i32 %i.cpz, 0
  br i1 %.not.i198.i, label %.preheader.i201.i, label %bb.im

bb.im:                                            ; preds = %get_interleaved_ue_golomb.exit197.i
  %i.cqa = lshr i32 %i.cpy, 24
  %i.cqb = zext nneg i32 %i.cqa to i64            ; 2 uses
  %i.cqc = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cqb
  %i.cqd = load i8, ptr %i.cqc, align 1, !tbaa !65
  %i.cqe = zext i8 %i.cqd to i32
  %i.cqf = add i32 %i.cpq, %i.cqe
  %..i199.i = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.cqf)
  store i32 %..i199.i, ptr %i.e, align 16, !tbaa !69
  %i.cqg = getelementptr inbounds nuw i8, ptr @ff_interleaved_ue_golomb_vlc_code, i64 %i.cqb
  %i.cqh = load i8, ptr %i.cqg, align 1, !tbaa !65
  %i.cqi = zext i8 %i.cqh to i32
  br label %get_interleaved_ue_golomb.exit211.i

.preheader.i201.i:                                ; preds = %get_interleaved_ue_golomb.exit197.i, %bb.io
  %.044.i202.i = phi i32 [ %i.crh, %bb.io ], [ %i.cpy, %get_interleaved_ue_golomb.exit197.i ]
  %.043.i203.i = phi i32 [ %spec.select56.i207.i, %bb.io ], [ %i.cpq, %get_interleaved_ue_golomb.exit197.i ]
  %.0.i204.i = phi i32 [ %i.cra, %bb.io ], [ 1, %get_interleaved_ue_golomb.exit197.i ] ; 2 uses
  %i.cqj = lshr i32 %.044.i202.i, 24
  %i.cqk = zext nneg i32 %i.cqj to i64            ; 3 uses
  %i.cql = getelementptr inbounds nuw i8, ptr @ff_interleaved_golomb_vlc_len, i64 %i.cqk
  %i.cqm = load i8, ptr %i.cql, align 1, !tbaa !65 ; 3 uses
  %spec.select57.i205.i = call i8 @llvm.umin.i8(i8 %i.cqm, i8 8)
  %spec.select.i206.i = zext nneg i8 %spec.select57.i205.i to i32
  %i.cqn = add i32 %.043.i203.i, %spec.select.i206.i ; 2 uses
  %spec.select56.i207.i = call i32 @llvm.umin.i32(i32 %i.cex, i32 %i.cqn) ; 4 uses
  %.not54.i208.i = icmp eq i8 %i.cqm, 9
  br i1 %.not54.i208.i, label %bb.io, label %bb.in

bb.in:                                            ; preds = %.preheader.i201.i
  %i.cqo = zext i8 %i.cqm to i32
  %i.cqp = add nsw i32 %i.cqo, -1
  %i.cqq = ashr i32 %i.cqp, 1
  %i.cqr = shl i32 %.0.i204.i, %i.cqq
  %i.cqs = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.cqk
  %i.cqt = load i8, ptr %i.cqs, align 1, !tbaa !65
  %i.cqu = zext i8 %i.cqt to i32
  %i.cqv = or i32 %i.cqr, %i.cqu
  br label %.loopexit.i209.i

bb.io:                                            ; preds = %.preheader.i201.i
  %i.cqw = shl i32 %.0.i204.i, 4                  ; 2 uses
  %i.cqx = getelementptr inbounds nuw i8, ptr @ff_interleaved_dirac_golomb_vlc_code, i64 %i.cqk
  %i.cqy = load i8, ptr %i.cqx, align 1, !tbaa !65
  %i.cqz = zext i8 %i.cqy to i32
  %i.cra = or i32 %i.cqw, %i.cqz                  ; 2 uses
  %i.crb = lshr i32 %spec.select56.i207.i, 3
  %i.crc = zext nneg i32 %i.crb to i64
  %i.crd = getelementptr inbounds nuw i8, ptr %i.cei, i64 %i.crc
  %i.cre = load i32, ptr %i.crd, align 1, !tbaa !65
  %i.crf = call i32 @llvm.bswap.i32(i32 %i.cre)
  %i.crg = and i32 %spec.select56.i207.i, 7
  %i.crh = shl i32 %i.crf, %i.crg
  %i.cri = icmp ult i32 %i.cqw, 134217728
  %i.crj = icmp ult i32 %i.cqn, %i.cex
  %i.crk = select i1 %i.cri, i1 %i.crj, i1 false
  br i1 %i.crk, label %.preheader.i201.i, label %.loopexit.i209.i, !llvm.loop !3

.loopexit.i209.i:                                 ; preds = %bb.io, %bb.in
  %.1.i210.i = phi i32 [ %i.cqv, %bb.in ], [ %i.cra, %bb.io ]
  store i32 %spec.select56.i207.i, ptr %i.e, align 16, !tbaa !69
  %i.crl = add i32 %.1.i210.i, -1
  br label %get_interleaved_ue_golomb.exit211.i

get_interleaved_ue_golomb.exit211.i:              ; preds = %.loopexit.i209.i, %bb.im
  %.045.i200.i = phi i32 [ %i.cqi, %bb.im ], [ %i.crl, %.loopexit.i209.i ] ; 4 uses
  %i.crm = getelementptr inbounds nuw i8, ptr %0, i64 4680 ; 2 uses
  store i32 %.045.i200.i, ptr %i.crm, align 8, !tbaa !121
  %i.crn = mul i32 %.045.i200.i, %.045.i186.i
  %i.cro = icmp eq i32 %i.crn, 0
  br i1 %i.cro, label %get_interleaved_ue_golomb.exit211._crit_edge.i, label %bb.ip

get_interleaved_ue_golomb.exit211._crit_edge.i:   ; preds = %get_interleaved_ue_golomb.exit211.i
end_hunk_0
begin_hunk_1_@dirac_decode_picture_header:bb.a
.preheader230.i:                                  ; preds = %bb.jq
  %.not305.i = icmp eq i32 %i.daz, 0
  br i1 %.not305.i, label %dirac_unpack_idwt_params.exit, label %.preheader229.lr.ph.i

.preheader229.lr.ph.i:                            ; preds = %.preheader230.i
  %i.dbb = load i32, ptr %i.cgw, align 8, !tbaa !113
  %.fr306.i = freeze i32 %i.dbb                   ; 2 uses
  %i.dbc = zext i32 %.fr306.i to i64
  %i.dbd = getelementptr inbounds nuw [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.dbc ; 32 uses
  %i.dbe = getelementptr inbounds nuw i8, ptr %0, i64 4772 ; 2 uses
  %i.dbf = icmp eq i32 %.fr306.i, 3
  br i1 %i.dbf, label %.preheader229.us.i, label %.preheader229.i

.preheader229.us.i:                               ; preds = %.preheader229.lr.ph.i
  %i.dbg = trunc nuw i32 %i.daz to i8
  %.tr.us.i = shl nuw nsw i8 %i.dbg, 2
  %i.dbh = add nsw i8 %.tr.us.i, -4               ; 4 uses
  %i.dbi = load i8, ptr %i.dbd, align 16, !tbaa !65
  %i.dbj = add i8 %i.dbh, %i.dbi
  store i8 %i.dbj, ptr %i.dbe, align 4, !tbaa !65
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.dbd, i64 1
  %i.dbl = load i8, ptr %i.dbk, align 1, !tbaa !65
  %i.dbm = getelementptr inbounds nuw i8, ptr %0, i64 4773
  %i.dbn = add i8 %i.dbh, %i.dbl
  store i8 %i.dbn, ptr %i.dbm, align 1, !tbaa !65
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbd, i64 2
  %i.dbp = load i8, ptr %i.dbo, align 2, !tbaa !65
  %i.dbq = getelementptr inbounds nuw i8, ptr %0, i64 4774
  %i.dbr = add i8 %i.dbp, %i.dbh
  store i8 %i.dbr, ptr %i.dbq, align 2, !tbaa !65
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.dbd, i64 3
  %i.dbt = load i8, ptr %i.dbs, align 1, !tbaa !65
  %i.dbu = getelementptr inbounds nuw i8, ptr %0, i64 4775
  %i.dbv = add i8 %i.dbt, %i.dbh
  store i8 %i.dbv, ptr %i.dbu, align 1, !tbaa !65
  %exitcond389.not.i = icmp eq i32 %i.daz, 1
  br i1 %exitcond389.not.i, label %dirac_unpack_idwt_params.exit, label %.preheader229.us.i.1

.preheader229.us.i.1:                             ; preds = %.preheader229.us.i
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.dbd, i64 4
  %i.dbx = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.dby = trunc nuw i32 %i.daz to i8
  %.tr.us.i.1 = shl nuw nsw i8 %i.dby, 2
  %i.dbz = add nsw i8 %.tr.us.i.1, -8             ; 4 uses
  %i.dca = load i8, ptr %i.dbw, align 4, !tbaa !65
  %i.dcb = add i8 %i.dbz, %i.dca
  store i8 %i.dcb, ptr %i.dbx, align 8, !tbaa !65
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.dbd, i64 5
  %i.dcd = load i8, ptr %i.dcc, align 1, !tbaa !65
  %i.dce = getelementptr inbounds nuw i8, ptr %0, i64 4777
  %i.dcf = add i8 %i.dbz, %i.dcd
  store i8 %i.dcf, ptr %i.dce, align 1, !tbaa !65
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.dbd, i64 6
  %i.dch = load i8, ptr %i.dcg, align 2, !tbaa !65
  %i.dci = getelementptr inbounds nuw i8, ptr %0, i64 4778
  %i.dcj = add i8 %i.dch, %i.dbz
  store i8 %i.dcj, ptr %i.dci, align 2, !tbaa !65
  %i.dck = getelementptr inbounds nuw i8, ptr %i.dbd, i64 7
  %i.dcl = load i8, ptr %i.dck, align 1, !tbaa !65
  %i.dcm = getelementptr inbounds nuw i8, ptr %0, i64 4779
  %i.dcn = add i8 %i.dcl, %i.dbz
  store i8 %i.dcn, ptr %i.dcm, align 1, !tbaa !65
  %exitcond389.not.i.1 = icmp eq i32 %i.daz, 2
  br i1 %exitcond389.not.i.1, label %dirac_unpack_idwt_params.exit, label %.preheader229.us.i.2

.preheader229.us.i.2:                             ; preds = %.preheader229.us.i.1
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dbd, i64 8
  %i.dcp = getelementptr inbounds nuw i8, ptr %0, i64 4780
  %i.dcq = trunc nuw i32 %i.daz to i8
  %.tr.us.i.2 = shl nuw nsw i8 %i.dcq, 2
  %i.dcr = add nsw i8 %.tr.us.i.2, -12            ; 4 uses
  %i.dcs = load i8, ptr %i.dco, align 8, !tbaa !65
  %i.dct = add i8 %i.dcr, %i.dcs
  store i8 %i.dct, ptr %i.dcp, align 4, !tbaa !65
  %i.dcu = getelementptr inbounds nuw i8, ptr %i.dbd, i64 9
  %i.dcv = load i8, ptr %i.dcu, align 1, !tbaa !65
  %i.dcw = getelementptr inbounds nuw i8, ptr %0, i64 4781
  %i.dcx = add i8 %i.dcr, %i.dcv
  store i8 %i.dcx, ptr %i.dcw, align 1, !tbaa !65
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dbd, i64 10
  %i.dcz = load i8, ptr %i.dcy, align 2, !tbaa !65
  %i.dda = getelementptr inbounds nuw i8, ptr %0, i64 4782
  %i.ddb = add i8 %i.dcz, %i.dcr
  store i8 %i.ddb, ptr %i.dda, align 2, !tbaa !65
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.dbd, i64 11
  %i.ddd = load i8, ptr %i.ddc, align 1, !tbaa !65
  %i.dde = getelementptr inbounds nuw i8, ptr %0, i64 4783
  %i.ddf = add i8 %i.ddd, %i.dcr
  store i8 %i.ddf, ptr %i.dde, align 1, !tbaa !65
  %exitcond389.not.i.2 = icmp eq i32 %i.daz, 3
  br i1 %exitcond389.not.i.2, label %dirac_unpack_idwt_params.exit, label %.preheader229.us.i.3

.preheader229.us.i.3:                             ; preds = %.preheader229.us.i.2
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.dbd, i64 12
  %i.ddh = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.ddi = trunc nuw i32 %i.daz to i8
  %.tr.us.i.3 = shl nuw nsw i8 %i.ddi, 2
  %i.ddj = add nsw i8 %.tr.us.i.3, -16            ; 4 uses
  %i.ddk = load i8, ptr %i.ddg, align 4, !tbaa !65
  %i.ddl = add i8 %i.ddj, %i.ddk
  store i8 %i.ddl, ptr %i.ddh, align 16, !tbaa !65
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.dbd, i64 13
  %i.ddn = load i8, ptr %i.ddm, align 1, !tbaa !65
  %i.ddo = getelementptr inbounds nuw i8, ptr %0, i64 4785
  %i.ddp = add i8 %i.ddj, %i.ddn
  store i8 %i.ddp, ptr %i.ddo, align 1, !tbaa !65
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.dbd, i64 14
  %i.ddr = load i8, ptr %i.ddq, align 2, !tbaa !65
  %i.dds = getelementptr inbounds nuw i8, ptr %0, i64 4786
  %i.ddt = add i8 %i.ddr, %i.ddj
  store i8 %i.ddt, ptr %i.dds, align 2, !tbaa !65
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.dbd, i64 15
  %i.ddv = load i8, ptr %i.ddu, align 1, !tbaa !65
  %i.ddw = getelementptr inbounds nuw i8, ptr %0, i64 4787
  %i.ddx = add i8 %i.ddv, %i.ddj
  store i8 %i.ddx, ptr %i.ddw, align 1, !tbaa !65
  br label %dirac_unpack_idwt_params.exit

bb.jr:                                            ; preds = %bb.jq
  %i.ddy = load ptr, ptr %0, align 16, !tbaa !52
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ddy, i32 noundef 16, ptr noundef nonnull @.str.37, i32 noundef %i.daz) #14
  br label %init_planes.exit

.preheader229.i:                                  ; preds = %.preheader229.lr.ph.i
  %i.ddz = load i8, ptr %i.dbd, align 16, !tbaa !65
  store i8 %i.ddz, ptr %i.dbe, align 4, !tbaa !65
  %i.dea = getelementptr inbounds nuw i8, ptr %i.dbd, i64 1
  %i.deb = load i8, ptr %i.dea, align 1, !tbaa !65
  %i.dec = getelementptr inbounds nuw i8, ptr %0, i64 4773
  store i8 %i.deb, ptr %i.dec, align 1, !tbaa !65
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dbd, i64 2
  %i.dee = load i8, ptr %i.ded, align 2, !tbaa !65
  %i.def = getelementptr inbounds nuw i8, ptr %0, i64 4774
  store i8 %i.dee, ptr %i.def, align 2, !tbaa !65
  %i.deg = getelementptr inbounds nuw i8, ptr %i.dbd, i64 3
  %i.deh = load i8, ptr %i.deg, align 1, !tbaa !65
  %i.dei = getelementptr inbounds nuw i8, ptr %0, i64 4775
  store i8 %i.deh, ptr %i.dei, align 1, !tbaa !65
  %exitcond380.not.i = icmp eq i32 %i.daz, 1
  br i1 %exitcond380.not.i, label %dirac_unpack_idwt_params.exit, label %.preheader229.i.1

.preheader229.i.1:                                ; preds = %.preheader229.i
  %i.dej = getelementptr inbounds nuw i8, ptr %i.dbd, i64 4
  %i.dek = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.del = load i8, ptr %i.dej, align 4, !tbaa !65
  store i8 %i.del, ptr %i.dek, align 8, !tbaa !65
  %i.dem = getelementptr inbounds nuw i8, ptr %i.dbd, i64 5
  %i.den = load i8, ptr %i.dem, align 1, !tbaa !65
  %i.deo = getelementptr inbounds nuw i8, ptr %0, i64 4777
  store i8 %i.den, ptr %i.deo, align 1, !tbaa !65
  %i.dep = getelementptr inbounds nuw i8, ptr %i.dbd, i64 6
  %i.deq = load i8, ptr %i.dep, align 2, !tbaa !65
  %i.der = getelementptr inbounds nuw i8, ptr %0, i64 4778
  store i8 %i.deq, ptr %i.der, align 2, !tbaa !65
  %i.des = getelementptr inbounds nuw i8, ptr %i.dbd, i64 7
  %i.det = load i8, ptr %i.des, align 1, !tbaa !65
  %i.deu = getelementptr inbounds nuw i8, ptr %0, i64 4779
  store i8 %i.det, ptr %i.deu, align 1, !tbaa !65
  %exitcond380.not.i.1 = icmp eq i32 %i.daz, 2
  br i1 %exitcond380.not.i.1, label %dirac_unpack_idwt_params.exit, label %.preheader229.i.2

.preheader229.i.2:                                ; preds = %.preheader229.i.1
  %i.dev = getelementptr inbounds nuw i8, ptr %i.dbd, i64 8
  %i.dew = getelementptr inbounds nuw i8, ptr %0, i64 4780
  %i.dex = load i8, ptr %i.dev, align 8, !tbaa !65
  store i8 %i.dex, ptr %i.dew, align 4, !tbaa !65
  %i.dey = getelementptr inbounds nuw i8, ptr %i.dbd, i64 9
  %i.dez = load i8, ptr %i.dey, align 1, !tbaa !65
  %i.dfa = getelementptr inbounds nuw i8, ptr %0, i64 4781
  store i8 %i.dez, ptr %i.dfa, align 1, !tbaa !65
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.dbd, i64 10
  %i.dfc = load i8, ptr %i.dfb, align 2, !tbaa !65
  %i.dfd = getelementptr inbounds nuw i8, ptr %0, i64 4782
  store i8 %i.dfc, ptr %i.dfd, align 2, !tbaa !65
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.dbd, i64 11
  %i.dff = load i8, ptr %i.dfe, align 1, !tbaa !65
  %i.dfg = getelementptr inbounds nuw i8, ptr %0, i64 4783
  store i8 %i.dff, ptr %i.dfg, align 1, !tbaa !65
  %exitcond380.not.i.2 = icmp eq i32 %i.daz, 3
  br i1 %exitcond380.not.i.2, label %dirac_unpack_idwt_params.exit, label %.preheader229.i.3

.preheader229.i.3:                                ; preds = %.preheader229.i.2
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.dbd, i64 12
  %i.dfi = getelementptr inbounds nuw i8, ptr %0, i64 4784
  %i.dfj = load i8, ptr %i.dfh, align 4, !tbaa !65
  store i8 %i.dfj, ptr %i.dfi, align 16, !tbaa !65
  %i.dfk = getelementptr inbounds nuw i8, ptr %i.dbd, i64 13
  %i.dfl = load i8, ptr %i.dfk, align 1, !tbaa !65
  %i.dfm = getelementptr inbounds nuw i8, ptr %0, i64 4785
  store i8 %i.dfl, ptr %i.dfm, align 1, !tbaa !65
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dbd, i64 14
  %i.dfo = load i8, ptr %i.dfn, align 2, !tbaa !65
  %i.dfp = getelementptr inbounds nuw i8, ptr %0, i64 4786
  store i8 %i.dfo, ptr %i.dfp, align 2, !tbaa !65
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dbd, i64 15
  %i.dfr = load i8, ptr %i.dfq, align 1, !tbaa !65
  %i.dfs = getelementptr inbounds nuw i8, ptr %0, i64 4787
  store i8 %i.dfr, ptr %i.dfs, align 1, !tbaa !65
  br label %dirac_unpack_idwt_params.exit

dirac_unpack_idwt_params.exit:                    ; preds = %bb.jp, %.preheader229.i, %.preheader229.i.1, %.preheader229.i.2, %.preheader229.i.3, %.preheader229.us.i, %.preheader229.us.i.1, %.preheader229.us.i.2, %.preheader229.us.i.3, %.preheader.i233.1, %.preheader.i233.2, %.preheader.i233.3, %.preheader.i233.4, %.preheader.i233.5, %.preheader230.i, %bb.ja, %bb.ih, %bb.hf
  %i.dft = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.dfu = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dfv = load i32, ptr %i.dfu, align 16, !tbaa !75 ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.dfw = load i32, ptr %.in.i, align 4, !tbaa !76
  %i.dfx = getelementptr inbounds nuw i8, ptr %0, i64 4660
  %i.dfy = load i32, ptr %i.dfx, align 4, !tbaa !114 ; 4 uses
  %notmask.i255 = shl nsw i32 -1, %i.dfy          ; 3 uses
  %i.dfz = xor i32 %notmask.i255, -1              ; 2 uses
  %i.dga = getelementptr inbounds nuw i8, ptr %0, i64 4620
  %i.dgb = load i32, ptr %i.dga, align 4, !tbaa !74 ; 8 uses
  %i.dgc = add nsw i32 %i.dgb, 1                  ; 3 uses
  %.08291.i = add i32 %i.dfy, -1                  ; 4 uses
  %i.dgd = icmp sgt i32 %.08291.i, -1
  %i.dge = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 2 uses
  %i.dgf = getelementptr inbounds nuw i8, ptr %0, i64 4612 ; 2 uses
  %i.dgg = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.dgh = getelementptr inbounds nuw i8, ptr %0, i64 633
  %i.dgi = getelementptr inbounds nuw i8, ptr %0, i64 634
  %i.dgj = getelementptr inbounds nuw i8, ptr %0, i64 635
  %i.dgk = zext i32 %.08291.i to i64              ; 2 uses
  %i.dgl = zext i32 %i.dfy to i64
  %.not120.i1276 = icmp eq i32 %.08291.i, 0
  br label %bb.js

bb.js:                                            ; preds = %bb.jv, %dirac_unpack_idwt_params.exit
  %indvars.iv110.i = phi i64 [ 0, %dirac_unpack_idwt_params.exit ], [ %indvars.iv.next111.i, %bb.jv ] ; 3 uses
  %i.dgm = getelementptr inbounds nuw [1344 x i8], ptr %i.dft, i64 %indvars.iv110.i ; 17 uses
  %.not.i256 = icmp eq i64 %indvars.iv110.i, 0    ; 2 uses
  br i1 %.not.i256, label %.thread.i257, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.dgn = load i32, ptr %i.dge, align 16, !tbaa !80
  %i.dgo = lshr i32 %i.dfv, %i.dgn
  %i.dgp = load i32, ptr %i.dgf, align 4, !tbaa !81
  br label %.thread.i257

.thread.i257:                                     ; preds = %bb.jt, %bb.js
  %.sink.i258 = phi i32 [ %i.dgo, %bb.jt ], [ %i.dfv, %bb.js ] ; 2 uses
  %i.dgq = phi i32 [ %i.dgp, %bb.jt ], [ 0, %bb.js ]
  %i.dgr = getelementptr inbounds nuw i8, ptr %i.dgm, i64 40
  store i32 %.sink.i258, ptr %i.dgr, align 8, !tbaa !127
  %i.dgs = lshr i32 %i.dfw, %i.dgq                ; 2 uses
  %i.dgt = getelementptr inbounds nuw i8, ptr %i.dgm, i64 44
  store i32 %i.dgs, ptr %i.dgt, align 4, !tbaa !128
  %i.dgu = add i32 %.sink.i258, %i.dfz
  %i.dgv = and i32 %i.dgu, %notmask.i255          ; 3 uses
  store i32 %i.dgv, ptr %i.dgm, align 8, !tbaa !218
  %i.dgw = add i32 %i.dgs, %i.dfz
  %i.dgx = and i32 %i.dgw, %notmask.i255          ; 2 uses
  %i.dgy = getelementptr inbounds nuw i8, ptr %i.dgm, i64 4
  store i32 %i.dgx, ptr %i.dgy, align 4, !tbaa !129
  %i.dgz = add nsw i32 %i.dgv, 7
  %i.dha = and i32 %i.dgz, -8
  %i.dhb = shl i32 %i.dha, %i.dgc                 ; 3 uses
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dgm, i64 8
  store i32 %i.dhb, ptr %i.dhc, align 8, !tbaa !130
  br i1 %i.dgd, label %.lr.ph.i263, label %._crit_edge.i259

.lr.ph.i263:                                      ; preds = %.thread.i257
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.dgm, i64 64 ; 3 uses
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dgm, i64 16
  %i.dhf = load ptr, ptr %i.dhe, align 8, !tbaa !79 ; 5 uses
  %i.dhg = ashr i32 %i.dgv, 1                     ; 3 uses
  %i.dhh = ashr i32 %i.dgx, 1                     ; 2 uses
  %i.dhi = getelementptr inbounds nuw [256 x i8], ptr %i.dhd, i64 %i.dgk ; 2 uses
  %i.dhj = shl i32 %i.dhb, 1                      ; 3 uses
  %i.dhk = shl i32 %i.dhg, %i.dgc
  %i.dhl = sext i32 %i.dhk to i64
  %i.dhm = getelementptr inbounds i8, ptr %i.dhf, i64 %i.dhl ; 2 uses
  %i.dhn = ashr exact i32 %i.dhj, 1
  %i.dho = sext i32 %i.dhn to i64                 ; 2 uses
  br i1 %.not120.i1276, label %._crit_edge.i259.loopexit, label %.loopexit.i264

.loopexit.i264:                                   ; preds = %.lr.ph.i263, %.loopexit.i264
  %i.dhp = phi i64 [ %i.djk, %.loopexit.i264 ], [ %i.dho, %.lr.ph.i263 ] ; 2 uses
  %i.dhq = phi ptr [ %i.dji, %.loopexit.i264 ], [ %i.dhm, %.lr.ph.i263 ] ; 2 uses
  %i.dhr = phi i32 [ %i.djf, %.loopexit.i264 ], [ %i.dhj, %.lr.ph.i263 ] ; 3 uses
  %i.dhs = phi i32 [ %i.djd, %.loopexit.i264 ], [ %.08291.i, %.lr.ph.i263 ] ; 3 uses
  %i.dht = phi ptr [ %i.djc, %.loopexit.i264 ], [ %i.dhi, %.lr.ph.i263 ] ; 24 uses
  %i.dhu = phi i32 [ %i.djb, %.loopexit.i264 ], [ %i.dhh, %.lr.ph.i263 ] ; 4 uses
  %i.dhv = phi i32 [ %i.dja, %.loopexit.i264 ], [ %i.dhg, %.lr.ph.i263 ] ; 4 uses
  %indvars.iv103.i1278 = phi i64 [ %indvars.iv.next104.i, %.loopexit.i264 ], [ %i.dgk, %.lr.ph.i263 ]
  %indvars.iv105.i1277 = phi i64 [ %indvars.iv.next106.i, %.loopexit.i264 ], [ %i.dgl, %.lr.ph.i263 ] ; 2 uses
  %i.dhw = add nsw i64 %indvars.iv105.i1277, 4294967294
  %i.dhx = and i64 %i.dhw, 4294967295
  %i.dhy = getelementptr inbounds nuw [256 x i8], ptr %i.dhd, i64 %i.dhx ; 3 uses
  %i.dhz = getelementptr inbounds nuw i8, ptr %i.dht, i64 64
  %i.dia = getelementptr inbounds nuw i8, ptr %i.dht, i64 84
  store i32 %i.dgb, ptr %i.dia, align 4, !tbaa !133
  %i.dib = getelementptr inbounds nuw i8, ptr %i.dht, i64 96
  store i32 %i.dhs, ptr %i.dhz, align 8, !tbaa !134
  %i.dic = getelementptr inbounds nuw i8, ptr %i.dht, i64 72
  store i32 %i.dhr, ptr %i.dic, align 8, !tbaa !135
  %i.did = getelementptr inbounds nuw i8, ptr %i.dht, i64 76
  store i32 %i.dhv, ptr %i.did, align 4, !tbaa !136
  %i.die = getelementptr inbounds nuw i8, ptr %i.dht, i64 80
  store i32 %i.dhu, ptr %i.die, align 8, !tbaa !137
  %i.dif = getelementptr inbounds nuw i8, ptr %i.dht, i64 68
  store i32 1, ptr %i.dif, align 4, !tbaa !138
  store ptr %i.dhq, ptr %i.dib, align 8, !tbaa !139
  %i.dig = getelementptr inbounds nuw i8, ptr %i.dhy, i64 64
  %i.dih = getelementptr inbounds nuw i8, ptr %i.dht, i64 104
  store ptr %i.dig, ptr %i.dih, align 8, !tbaa !140
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dht, i64 128
  %i.dij = getelementptr inbounds nuw i8, ptr %i.dht, i64 148
  store i32 %i.dgb, ptr %i.dij, align 4, !tbaa !133
  %i.dik = getelementptr inbounds nuw i8, ptr %i.dht, i64 160
  store i32 %i.dhs, ptr %i.dii, align 8, !tbaa !134
  %i.dil = getelementptr inbounds nuw i8, ptr %i.dht, i64 136
  store i32 %i.dhr, ptr %i.dil, align 8, !tbaa !135
  %i.dim = getelementptr inbounds nuw i8, ptr %i.dht, i64 140
  store i32 %i.dhv, ptr %i.dim, align 4, !tbaa !136
  %i.din = getelementptr inbounds nuw i8, ptr %i.dht, i64 144
  store i32 %i.dhu, ptr %i.din, align 8, !tbaa !137
  %i.dio = getelementptr inbounds nuw i8, ptr %i.dht, i64 132
  store i32 2, ptr %i.dio, align 4, !tbaa !138
  %simplifycfg.merge.i.1 = getelementptr inbounds i8, ptr %i.dhf, i64 %i.dhp
  store ptr %simplifycfg.merge.i.1, ptr %i.dik, align 8, !tbaa !139
  %i.dip = getelementptr inbounds nuw i8, ptr %i.dhy, i64 128
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dht, i64 168
  store ptr %i.dip, ptr %i.diq, align 8, !tbaa !140
  %i.dir = getelementptr inbounds nuw i8, ptr %i.dht, i64 192
  %i.dis = getelementptr inbounds nuw i8, ptr %i.dht, i64 212
  store i32 %i.dgb, ptr %i.dis, align 4, !tbaa !133
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dht, i64 224
  store i32 %i.dhs, ptr %i.dir, align 8, !tbaa !134
  %i.diu = getelementptr inbounds nuw i8, ptr %i.dht, i64 200
  store i32 %i.dhr, ptr %i.diu, align 8, !tbaa !135
  %i.div = getelementptr inbounds nuw i8, ptr %i.dht, i64 204
  store i32 %i.dhv, ptr %i.div, align 4, !tbaa !136
  %i.diw = getelementptr inbounds nuw i8, ptr %i.dht, i64 208
  store i32 %i.dhu, ptr %i.diw, align 8, !tbaa !137
  %i.dix = getelementptr inbounds nuw i8, ptr %i.dht, i64 196
  store i32 3, ptr %i.dix, align 4, !tbaa !138
  %simplifycfg.merge.i.2 = getelementptr inbounds i8, ptr %i.dhq, i64 %i.dhp
  store ptr %simplifycfg.merge.i.2, ptr %i.dit, align 8, !tbaa !139
  %i.diy = getelementptr inbounds nuw i8, ptr %i.dhy, i64 192
  %i.diz = getelementptr inbounds nuw i8, ptr %i.dht, i64 232
  store ptr %i.diy, ptr %i.diz, align 8, !tbaa !140
  %indvars.iv.next104.i = add nsw i64 %indvars.iv103.i1278, -1 ; 4 uses
  %indvars.iv.next106.i = add nsw i64 %indvars.iv105.i1277, -1
  %i.dja = ashr i32 %i.dhv, 1                     ; 3 uses
  %i.djb = ashr i32 %i.dhu, 1                     ; 2 uses
  %.not120.i = icmp eq i64 %indvars.iv.next104.i, 0
  %i.djc = getelementptr inbounds nuw [256 x i8], ptr %i.dhd, i64 %indvars.iv.next104.i ; 2 uses
  %i.djd = trunc nuw nsw i64 %indvars.iv.next104.i to i32 ; 2 uses
  %i.dje = sub i32 %i.dfy, %i.djd
  %i.djf = shl i32 %i.dhb, %i.dje                 ; 3 uses
  %i.djg = shl i32 %i.dja, %i.dgc
  %i.djh = sext i32 %i.djg to i64
  %i.dji = getelementptr inbounds i8, ptr %i.dhf, i64 %i.djh ; 2 uses
  %i.djj = ashr exact i32 %i.djf, 1
  %i.djk = sext i32 %i.djj to i64                 ; 2 uses
  br i1 %.not120.i, label %._crit_edge.i259.loopexit, label %.loopexit.i264, !llvm.loop !205

._crit_edge.i259.loopexit:                        ; preds = %.loopexit.i264, %.lr.ph.i263
  %.lcssa1051 = phi i32 [ %i.dhg, %.lr.ph.i263 ], [ %i.dja, %.loopexit.i264 ] ; 4 uses
  %.lcssa1050 = phi i32 [ %i.dhh, %.lr.ph.i263 ], [ %i.djb, %.loopexit.i264 ] ; 4 uses
  %.lcssa1049 = phi ptr [ %i.dhi, %.lr.ph.i263 ], [ %i.djc, %.loopexit.i264 ] ; 28 uses
  %.lcssa1048 = phi i32 [ %i.dhj, %.lr.ph.i263 ], [ %i.djf, %.loopexit.i264 ] ; 4 uses
  %.lcssa1047 = phi ptr [ %i.dhm, %.lr.ph.i263 ], [ %i.dji, %.loopexit.i264 ] ; 2 uses
  %.lcssa = phi i64 [ %i.dho, %.lr.ph.i263 ], [ %i.djk, %.loopexit.i264 ] ; 2 uses
  %i.djl = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 20
  store i32 %i.dgb, ptr %i.djl, align 4, !tbaa !133
  %i.djm = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 32
  store ptr %i.dhf, ptr %i.djm, align 8, !tbaa !139
  store i32 0, ptr %.lcssa1049, align 8, !tbaa !134
  %i.djn = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 8
  store i32 %.lcssa1048, ptr %i.djn, align 8, !tbaa !135
  %i.djo = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 12
  store i32 %.lcssa1051, ptr %i.djo, align 4, !tbaa !136
  %i.djp = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 16
  store i32 %.lcssa1050, ptr %i.djp, align 8, !tbaa !137
  %i.djq = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 4
  store i32 0, ptr %i.djq, align 4, !tbaa !138
  %i.djr = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 64
  %i.djs = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 84
  store i32 %i.dgb, ptr %i.djs, align 4, !tbaa !133
  %i.djt = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 96
  store i32 0, ptr %i.djr, align 8, !tbaa !134
  %i.dju = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 72
  store i32 %.lcssa1048, ptr %i.dju, align 8, !tbaa !135
  %i.djv = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 76
  store i32 %.lcssa1051, ptr %i.djv, align 4, !tbaa !136
  %i.djw = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 80
  store i32 %.lcssa1050, ptr %i.djw, align 8, !tbaa !137
  %i.djx = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 68
  store i32 1, ptr %i.djx, align 4, !tbaa !138
  store ptr %.lcssa1047, ptr %i.djt, align 8, !tbaa !139
  %i.djy = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 128
  %i.djz = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 148
  store i32 %i.dgb, ptr %i.djz, align 4, !tbaa !133
  %i.dka = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 160
  store i32 0, ptr %i.djy, align 8, !tbaa !134
  %i.dkb = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 136
  store i32 %.lcssa1048, ptr %i.dkb, align 8, !tbaa !135
  %i.dkc = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 140
  store i32 %.lcssa1051, ptr %i.dkc, align 4, !tbaa !136
  %i.dkd = getelementptr inbounds nuw i8, ptr %.lcssa1049, i64 144
end_hunk_1
