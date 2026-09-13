Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec_usac?download=true
inline.NumInlined: 226
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@decode_usac_core_coder:bb.a
  br i1 %i.bhl, label %.preheader.preheader.i.i, label %..loopexit_crit_edge.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.bhm = zext i16 %i.bhf to i64                 ; 3 uses
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %.0529.i.i, i64 %i.bhm
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %.05011.i.i, i64 %i.bhm
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %.05110.i.i, i64 %i.bhm
  %wide.trip.count.i104.i = zext nneg i32 %i.bhk to i64 ; 5 uses
  %min.iters.check464 = icmp ult i32 %i.bhk, 8
  %n.vec466 = and i64 %wide.trip.count.i104.i, 2147483640 ; 3 uses
  %cmp.n477 = icmp eq i64 %n.vec466, %wide.trip.count.i104.i
  %xtraiter565 = and i64 %wide.trip.count.i104.i, 1
  %lcmp.mod566.not = icmp eq i64 %xtraiter565, 0
  %i.bhq = add nsw i64 %wide.trip.count.i104.i, -1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i249, %.preheader.preheader.i.i
  %.0445.i.i = phi i32 [ %i.bik, %._crit_edge.i.i249 ], [ 0, %.preheader.preheader.i.i ]
  %.0454.i.i = phi ptr [ %i.bin, %._crit_edge.i.i249 ], [ %i.bhn, %.preheader.preheader.i.i ] ; 5 uses
  %.0463.i.i = phi ptr [ %i.bim, %._crit_edge.i.i249 ], [ %i.bho, %.preheader.preheader.i.i ] ; 5 uses
  %.0472.i.i = phi ptr [ %i.bil, %._crit_edge.i.i249 ], [ %i.bhp, %.preheader.preheader.i.i ] ; 5 uses
  %brmerge574 = select i1 %min.iters.check464, i1 true, i1 %conflict.rdx462
  br i1 %brmerge574, label %scalar.ph463.preheader, label %vector.body469

vector.body469:                                   ; preds = %.preheader.i.i, %vector.body469
  %index470 = phi i64 [ %index.next475, %vector.body469 ], [ 0, %.preheader.i.i ] ; 4 uses
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %.0472.i.i, i64 %index470 ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 16
  %wide.load471 = load <4 x float>, ptr %i.bhr, align 4, !tbaa !102
  %wide.load472 = load <4 x float>, ptr %i.bhs, align 4, !tbaa !102
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %.0463.i.i, i64 %index470 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 16
  %wide.load473 = load <4 x float>, ptr %i.bht, align 4, !tbaa !102
  %wide.load474 = load <4 x float>, ptr %i.bhu, align 4, !tbaa !102
  %i.bhv = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat468, <4 x float> %wide.load473, <4 x float> %wide.load471)
  %i.bhw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat468, <4 x float> %wide.load474, <4 x float> %wide.load472)
  %i.bhx = fmul nsz <4 x float> %i.bhv, splat (float 5.000000e-01)
  %i.bhy = fmul nsz <4 x float> %i.bhw, splat (float 5.000000e-01)
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %.0454.i.i, i64 %index470 ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 16
  store <4 x float> %i.bhx, ptr %i.bhz, align 4, !tbaa !102
  store <4 x float> %i.bhy, ptr %i.bia, align 4, !tbaa !102
  %index.next475 = add nuw i64 %index470, 8       ; 2 uses
  %i.bib = icmp eq i64 %index.next475, %n.vec466
  br i1 %i.bib, label %middle.block476, label %vector.body469, !llvm.loop !221

middle.block476:                                  ; preds = %vector.body469
  br i1 %cmp.n477, label %._crit_edge.i.i249, label %scalar.ph463.preheader

scalar.ph463.preheader:                           ; preds = %.preheader.i.i, %middle.block476
  %indvars.iv.i105.i.ph = phi i64 [ %n.vec466, %middle.block476 ], [ 0, %.preheader.i.i ] ; 6 uses
  br i1 %lcmp.mod566.not, label %scalar.ph463.prol.loopexit, label %scalar.ph463.prol

scalar.ph463.prol:                                ; preds = %scalar.ph463.preheader
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %.0472.i.i, i64 %indvars.iv.i105.i.ph
  %i.bid = load float, ptr %i.bic, align 4, !tbaa !102
  %i.bie = getelementptr inbounds nuw [4 x i8], ptr %.0463.i.i, i64 %indvars.iv.i105.i.ph
  %i.bif = load float, ptr %i.bie, align 4, !tbaa !102
  %i.big = call nsz float @llvm.fmuladd.f32(float %i.bdd, float %i.bif, float %i.bid)
  %i.bih = fmul nsz float %i.big, 5.000000e-01
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %.0454.i.i, i64 %indvars.iv.i105.i.ph
  store float %i.bih, ptr %i.bii, align 4, !tbaa !102
  %indvars.iv.next.i106.i.prol = or disjoint i64 %indvars.iv.i105.i.ph, 1
  br label %scalar.ph463.prol.loopexit

scalar.ph463.prol.loopexit:                       ; preds = %scalar.ph463.prol, %scalar.ph463.preheader
  %indvars.iv.i105.i.unr = phi i64 [ %indvars.iv.i105.i.ph, %scalar.ph463.preheader ], [ %indvars.iv.next.i106.i.prol, %scalar.ph463.prol ]
  %i.bij = icmp eq i64 %indvars.iv.i105.i.ph, %i.bhq
  br i1 %i.bij, label %._crit_edge.i.i249, label %scalar.ph463

._crit_edge.i.i249:                               ; preds = %scalar.ph463.prol.loopexit, %scalar.ph463, %middle.block476
  %i.bik = add nuw nsw i32 %.0445.i.i, 1          ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %.0472.i.i, i64 512
  %i.bim = getelementptr inbounds nuw i8, ptr %.0463.i.i, i64 512
  %i.bin = getelementptr inbounds nuw i8, ptr %.0454.i.i, i64 512
  %exitcond19.not.i.i = icmp eq i32 %i.bik, %i.bgx
  br i1 %exitcond19.not.i.i, label %..loopexit_crit_edge.split.i.i, label %.preheader.i.i, !llvm.loop !222

scalar.ph463:                                     ; preds = %scalar.ph463.prol.loopexit, %scalar.ph463
  %indvars.iv.i105.i = phi i64 [ %indvars.iv.next.i106.i.1, %scalar.ph463 ], [ %indvars.iv.i105.i.unr, %scalar.ph463.prol.loopexit ] ; 5 uses
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %.0472.i.i, i64 %indvars.iv.i105.i
  %i.bip = load float, ptr %i.bio, align 4, !tbaa !102
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %.0463.i.i, i64 %indvars.iv.i105.i
  %i.bir = load float, ptr %i.biq, align 4, !tbaa !102
  %i.bis = call nsz float @llvm.fmuladd.f32(float %i.bdd, float %i.bir, float %i.bip)
  %i.bit = fmul nsz float %i.bis, 5.000000e-01
  %i.biu = getelementptr inbounds nuw [4 x i8], ptr %.0454.i.i, i64 %indvars.iv.i105.i
  store float %i.bit, ptr %i.biu, align 4, !tbaa !102
  %indvars.iv.next.i106.i = add nuw nsw i64 %indvars.iv.i105.i, 1 ; 3 uses
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %.0472.i.i, i64 %indvars.iv.next.i106.i
  %i.biw = load float, ptr %i.biv, align 4, !tbaa !102
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %.0463.i.i, i64 %indvars.iv.next.i106.i
  %i.biy = load float, ptr %i.bix, align 4, !tbaa !102
  %i.biz = call nsz float @llvm.fmuladd.f32(float %i.bdd, float %i.biy, float %i.biw)
  %i.bja = fmul nsz float %i.biz, 5.000000e-01
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %.0454.i.i, i64 %indvars.iv.next.i106.i
  store float %i.bja, ptr %i.bjb, align 4, !tbaa !102
  %indvars.iv.next.i106.i.1 = add nuw nsw i64 %indvars.iv.i105.i, 2 ; 2 uses
  %exitcond.not.i107.i.1 = icmp eq i64 %indvars.iv.next.i106.i.1, %wide.trip.count.i104.i
  br i1 %exitcond.not.i107.i.1, label %._crit_edge.i.i249, label %scalar.ph463, !llvm.loop !223

complex_stereo_downmix_prev.exit.i:               ; preds = %._crit_edge8.split.i.i, %.lr.ph14.i.thread.i, %complex_stereo_downmix_cur.exit.thread126.i
  %i.bjc = phi ptr [ %i.bcw, %complex_stereo_downmix_cur.exit.thread126.i ], [ %i.bde, %.lr.ph14.i.thread.i ], [ %i.bgu, %._crit_edge8.split.i.i ]
  %i.bjd = getelementptr inbounds nuw i8, ptr %3, i64 148 ; 2 uses
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !42 ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %i.bje, 1
  %switch.select.i.i = zext i1 %switch.selectcmp.i.i to i64
  %switch.selectcmp14.i.i = icmp eq i32 %i.bje, 3
  %switch.select15.i.i = select i1 %switch.selectcmp14.i.i, i64 2, i64 %switch.select.i.i
  %i.bjf = getelementptr inbounds nuw i8, ptr %3, i64 156
  %i.bjg = load i8, ptr %i.bjf, align 4, !tbaa !41
  switch i8 %i.bjg, label %.thread16.i.i [
    i8 0, label %bb.dx
    i8 1, label %bb.dy
  ]

bb.dx:                                            ; preds = %complex_stereo_downmix_prev.exit.i
  %i.bjh = getelementptr inbounds nuw i8, ptr %3, i64 157
  %i.bji = load i8, ptr %i.bjh, align 1, !tbaa !41 ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.bji, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i64 2, i64 3
  %switch.selectcmp127.i = icmp eq i8 %i.bji, 0
  %switch.select128.i = select i1 %switch.selectcmp127.i, i64 0, i64 %switch.select.i
  br label %complex_stereo_get_filter.exit.i

bb.dy:                                            ; preds = %complex_stereo_downmix_prev.exit.i
  %i.bjj = getelementptr inbounds nuw i8, ptr %3, i64 157
  %i.bjk = load i8, ptr %i.bjj, align 1, !tbaa !41
  %i.bjl = icmp eq i8 %i.bjk, 1
  br i1 %i.bjl, label %complex_stereo_get_filter.exit.i, label %.thread16.i.i

.thread16.i.i:                                    ; preds = %bb.dy, %complex_stereo_downmix_prev.exit.i
  br label %complex_stereo_get_filter.exit.i

complex_stereo_get_filter.exit.i:                 ; preds = %.thread16.i.i, %bb.dy, %bb.dx
  %.0.i.i = phi i64 [ %switch.select128.i, %bb.dx ], [ 3, %.thread16.i.i ], [ 1, %bb.dy ]
  %i.bjm = getelementptr inbounds nuw [112 x i8], ptr @ff_aac_usac_mdst_filt_cur, i64 %switch.select15.i.i
  %i.bjn = getelementptr inbounds nuw [28 x i8], ptr %i.bjm, i64 %.0.i.i
  %i.bjo = getelementptr inbounds nuw i8, ptr %3, i64 118960 ; 3 uses
  %i.bjp = load i16, ptr %i.ky, align 2, !tbaa !45
  %i.bjq = zext i16 %i.bjp to i32
  call fastcc void @complex_stereo_interpolate_imag(ptr noundef nonnull %i.bjo, ptr noundef nonnull %i.bcq, ptr noundef nonnull %i.bjn, i32 noundef %i.bjq, i32 noundef 1)
  %i.bjr = getelementptr inbounds nuw i8, ptr %3, i64 88645
  %i.bjs = load i8, ptr %i.bjr, align 1, !tbaa !103
  %.not86.i = icmp eq i8 %i.bjs, 0
  br i1 %.not86.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %complex_stereo_get_filter.exit.i
  %i.bjt = load i32, ptr %i.bjd, align 4, !tbaa !42
  %i.bju = icmp eq i32 %i.bjt, 3
  %i.bjv = zext i1 %i.bju to i64
  %i.bjw = getelementptr inbounds nuw i8, ptr %3, i64 157
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !41
  %i.bjy = zext i8 %i.bjx to i64
  %i.bjz = getelementptr inbounds nuw [112 x i8], ptr @ff_aac_usac_mdst_filt_cur, i64 %i.bjv
  %i.bka = getelementptr inbounds nuw [28 x i8], ptr %i.bjz, i64 %i.bjy
  %i.bkb = load i16, ptr %i.ky, align 2, !tbaa !45
  %i.bkc = zext i16 %i.bkb to i32
  call fastcc void @complex_stereo_interpolate_imag(ptr noundef nonnull %i.bjo, ptr noundef nonnull %i.bjc, ptr noundef nonnull %i.bka, i32 noundef %i.bkc, i32 noundef -1)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %complex_stereo_get_filter.exit.i
  %i.bkd = load i32, ptr %i.bct, align 16, !tbaa !98 ; 2 uses
  %i.bke = icmp sgt i32 %i.bkd, 0
  br i1 %i.bke, label %.lr.ph47.i.i, label %apply_complex_stereo.exit.i

.lr.ph47.i.i:                                     ; preds = %bb.ea
  %i.bkf = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.bkg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bkh = load i8, ptr %i.bkg, align 4, !tbaa !97 ; 2 uses
  %.not.i110.i = icmp eq i8 %i.bkh, 0
  %i.bki = getelementptr inbounds nuw i8, ptr %3, i64 94384
  %i.bkj = getelementptr inbounds nuw i8, ptr %3, i64 98480
  %i.bkk = getelementptr inbounds nuw i8, ptr %3, i64 88648
  %i.bkl = getelementptr inbounds nuw i8, ptr %3, i64 88646
  br i1 %.not.i110.i, label %apply_complex_stereo.exit.i, label %.lr.ph47.split.i.i

.lr.ph47.split.i.i:                               ; preds = %.lr.ph47.i.i
  %i.bkm = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.bkn = load ptr, ptr %i.bkm, align 16, !tbaa !101 ; 2 uses
  %i.bko = zext i8 %i.bkh to i64                  ; 2 uses
  %wide.trip.count81.i.i = zext nneg i32 %i.bkd to i64
  br label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %._crit_edge18.i.i, %.lr.ph47.split.i.i
  %indvars.iv78.i.i = phi i64 [ 0, %.lr.ph47.split.i.i ], [ %indvars.iv.next79.i.i, %._crit_edge18.i.i ] ; 3 uses
  %.010643.i.i = phi ptr [ %i.bjo, %.lr.ph47.split.i.i ], [ %i.bnt, %._crit_edge18.i.i ] ; 4 uses
  %.010740.i.i = phi ptr [ %i.bcs, %.lr.ph47.split.i.i ], [ %i.bns, %._crit_edge18.i.i ] ; 4 uses
  %.010837.i.i = phi ptr [ %i.bcr, %.lr.ph47.split.i.i ], [ %i.bnr, %._crit_edge18.i.i ] ; 4 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkf, i64 %indvars.iv78.i.i
  %i.bkq = load i8, ptr %i.bkp, align 1, !tbaa !41
  %.fr48.i.i = freeze i8 %i.bkq                   ; 2 uses
  %i.bkr = zext i8 %.fr48.i.i to i32              ; 4 uses
  %i.bks = mul nuw nsw i64 %indvars.iv78.i.i, %i.bko
  %.not50.i.i = icmp eq i8 %.fr48.i.i, 0
  br i1 %.not50.i.i, label %._crit_edge18.i.i, label %.lr.ph.split.us.preheader.i112.i

.lr.ph.split.us.preheader.i112.i:                 ; preds = %.lr.ph.i111.i
  %.pre.i113.i = load i16, ptr %i.bkn, align 2, !tbaa !249
  %i.bkt = add nsw i32 %i.bkr, -1                 ; 2 uses
  %i.bku = zext nneg i32 %i.bkt to i64
  %i.bkv = shl nuw nsw i64 %i.bku, 9              ; 3 uses
  %scevgep = getelementptr i8, ptr %.010740.i.i, i64 %i.bkv
  %scevgep481 = getelementptr i8, ptr %.010837.i.i, i64 %i.bkv
  %scevgep483 = getelementptr i8, ptr %.010643.i.i, i64 %i.bkv
  %i.bkw = zext nneg i32 %i.bkt to i64
  %i.bkx = shl nuw nsw i64 %i.bkw, 9              ; 3 uses
  %scevgep511 = getelementptr i8, ptr %.010740.i.i, i64 %i.bkx
  %scevgep513 = getelementptr i8, ptr %.010837.i.i, i64 %i.bkx
  %scevgep515 = getelementptr i8, ptr %.010643.i.i, i64 %i.bkx
  br label %.lr.ph.split.us.i114.i

.lr.ph.split.us.i114.i:                           ; preds = %.loopexit4.us.i.i, %.lr.ph.split.us.preheader.i112.i
  %i.bky = phi i16 [ %.pre.i113.i, %.lr.ph.split.us.preheader.i112.i ], [ %i.blb, %.loopexit4.us.i.i ] ; 2 uses
  %indvars.iv62.i.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i112.i ], [ %indvars.iv.next63.i.i, %.loopexit4.us.i.i ] ; 2 uses
  %i.bkz = zext i16 %i.bky to i32
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1 ; 3 uses
  %i.bla = getelementptr inbounds nuw [2 x i8], ptr %i.bkn, i64 %indvars.iv.next63.i.i
  %i.blb = load i16, ptr %i.bla, align 2, !tbaa !249 ; 2 uses
  %i.blc = zext i16 %i.blb to i32
  %i.bld = sub nsw i32 %i.blc, %i.bkz             ; 5 uses
  %i.ble = add nuw nsw i64 %indvars.iv62.i.i, %i.bks ; 3 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bkk, i64 %i.ble
  %i.blg = load i8, ptr %i.blf, align 1, !tbaa !41
  %.not.us.i.i = icmp eq i8 %i.blg, 0
  br i1 %.not.us.i.i, label %.loopexit4.us.i.i, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph.split.us.i114.i
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %i.bkj, i64 %i.ble
  %i.bli = load float, ptr %i.blh, align 4, !tbaa !41
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %i.bki, i64 %i.ble
  %i.blk = load float, ptr %i.blj, align 4, !tbaa !41
  %i.bll = zext i16 %i.bky to i64                 ; 5 uses
  %i.blm = getelementptr [4 x i8], ptr %.010643.i.i, i64 %i.bll ; 6 uses
  %i.bln = getelementptr [4 x i8], ptr %.010740.i.i, i64 %i.bll ; 6 uses
  %i.blo = getelementptr [4 x i8], ptr %.010837.i.i, i64 %i.bll ; 6 uses
  %i.blp = load i8, ptr %i.bkl, align 2, !tbaa !260
  %.not110.us.i.i = icmp eq i8 %i.blp, 0
  %i.blq = icmp sgt i32 %i.bld, 0                 ; 2 uses
  %i.blr = fneg nsz float %i.blk                  ; 4 uses
  %i.bls = fneg nsz float %i.bli                  ; 4 uses
  br i1 %.not110.us.i.i, label %.preheader2.us.i123.i, label %.preheader1.lr.ph.us.i115.i

scalar.ph528:                                     ; preds = %scalar.ph528.preheader, %scalar.ph528
  %indvars.iv.i119.i = phi i64 [ %indvars.iv.next.i120.i, %scalar.ph528 ], [ %indvars.iv.i119.i.ph, %scalar.ph528.preheader ] ; 4 uses
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %.11017.us.i.i, i64 %indvars.iv.i119.i ; 2 uses
  %i.blu = load float, ptr %i.blt, align 4, !tbaa !102
  %i.blv = getelementptr inbounds nuw [4 x i8], ptr %.11036.us.i.i, i64 %indvars.iv.i119.i ; 2 uses
  %i.blw = load float, ptr %i.blv, align 4, !tbaa !102 ; 3 uses
  %i.blx = call nsz float @llvm.fmuladd.f32(float %i.blr, float %i.blw, float %i.blu)
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %.18.us.i.i, i64 %indvars.iv.i119.i
  %i.blz = load float, ptr %i.bly, align 4, !tbaa !102
  %i.bma = call nsz float @llvm.fmuladd.f32(float %i.bls, float %i.blz, float %i.blx) ; 2 uses
  %i.bmb = fsub nsz float %i.bma, %i.blw
  store float %i.bmb, ptr %i.blt, align 4, !tbaa !102
  %i.bmc = fadd nsz float %i.blw, %i.bma
  store float %i.bmc, ptr %i.blv, align 4, !tbaa !102
  %indvars.iv.next.i120.i = add nuw nsw i64 %indvars.iv.i119.i, 1 ; 2 uses
  %exitcond.not.i121.i = icmp eq i64 %indvars.iv.next.i120.i, %wide.trip.count.i117.i
  br i1 %exitcond.not.i121.i, label %._crit_edge.us.i122.i, label %scalar.ph528, !llvm.loop !224

scalar.ph493:                                     ; preds = %scalar.ph493.preheader, %scalar.ph493
  %indvars.iv56.i.i = phi i64 [ %indvars.iv.next57.i.i, %scalar.ph493 ], [ %indvars.iv56.i.i.ph, %scalar.ph493.preheader ] ; 4 uses
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %.010013.us.i.i, i64 %indvars.iv56.i.i ; 2 uses
  %i.bme = load float, ptr %i.bmd, align 4, !tbaa !102
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %.010212.us.i.i, i64 %indvars.iv56.i.i ; 2 uses
  %i.bmg = load float, ptr %i.bmf, align 4, !tbaa !102 ; 3 uses
  %i.bmh = call nsz float @llvm.fmuladd.f32(float %i.blr, float %i.bmg, float %i.bme)
  %i.bmi = getelementptr inbounds nuw [4 x i8], ptr %.09914.us.i.i, i64 %indvars.iv56.i.i
  %i.bmj = load float, ptr %i.bmi, align 4, !tbaa !102
  %i.bmk = call nsz float @llvm.fmuladd.f32(float %i.bls, float %i.bmj, float %i.bmh) ; 2 uses
  %i.bml = fsub nsz float %i.bmg, %i.bmk
  store float %i.bml, ptr %i.bmd, align 4, !tbaa !102
  %i.bmm = fadd nsz float %i.bmg, %i.bmk
  store float %i.bmm, ptr %i.bmf, align 4, !tbaa !102
  %indvars.iv.next57.i.i = add nuw nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %indvars.iv.next57.i.i, %wide.trip.count59.i.i
  br i1 %exitcond60.not.i.i, label %._crit_edge11.us.i.i, label %scalar.ph493, !llvm.loop !225

.loopexit4.us.i.i:                                ; preds = %._crit_edge.us.i122.i, %._crit_edge11.us.i.i, %.preheader1.lr.ph.us.i115.i, %.preheader2.us.i123.i, %.lr.ph.split.us.i114.i
  %exitcond66.not.i.i = icmp eq i64 %indvars.iv.next63.i.i, %i.bko
  br i1 %exitcond66.not.i.i, label %._crit_edge18.i.i, label %.lr.ph.split.us.i114.i, !llvm.loop !226

.preheader.us.i125.i:                             ; preds = %._crit_edge11.us.i.i, %.preheader.us.preheader.i124.i
  %.09815.us.i.i = phi i32 [ %i.bnl, %._crit_edge11.us.i.i ], [ 0, %.preheader.us.preheader.i124.i ]
  %.09914.us.i.i = phi ptr [ %i.bno, %._crit_edge11.us.i.i ], [ %i.blm, %.preheader.us.preheader.i124.i ] ; 3 uses
  %.010013.us.i.i = phi ptr [ %i.bnn, %._crit_edge11.us.i.i ], [ %i.bln, %.preheader.us.preheader.i124.i ] ; 3 uses
  %.010212.us.i.i = phi ptr [ %i.bnm, %._crit_edge11.us.i.i ], [ %i.blo, %.preheader.us.preheader.i124.i ] ; 3 uses
  %brmerge575 = select i1 %min.iters.check494, i1 true, i1 %conflict.rdx492
  br i1 %brmerge575, label %scalar.ph493.preheader, label %vector.body501

vector.body501:                                   ; preds = %.preheader.us.i125.i, %vector.body501
  %index502 = phi i64 [ %index.next506, %vector.body501 ], [ 0, %.preheader.us.i125.i ] ; 4 uses
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %.010013.us.i.i, i64 %index502 ; 2 uses
  %wide.load503 = load <4 x float>, ptr %i.bmn, align 4, !tbaa !102, !alias.scope !261, !noalias !262
  %i.bmo = getelementptr inbounds nuw [4 x i8], ptr %.010212.us.i.i, i64 %index502 ; 2 uses
  %wide.load504 = load <4 x float>, ptr %i.bmo, align 4, !tbaa !102, !alias.scope !263, !noalias !264 ; 3 uses
  %i.bmp = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat498, <4 x float> %wide.load504, <4 x float> %wide.load503)
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %.09914.us.i.i, i64 %index502
  %wide.load505 = load <4 x float>, ptr %i.bmq, align 4, !tbaa !102, !alias.scope !264
  %i.bmr = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat500, <4 x float> %wide.load505, <4 x float> %i.bmp) ; 2 uses
  %i.bms = fsub nsz <4 x float> %wide.load504, %i.bmr
  store <4 x float> %i.bms, ptr %i.bmn, align 4, !tbaa !102, !alias.scope !261, !noalias !262
  %i.bmt = fadd nsz <4 x float> %wide.load504, %i.bmr
  store <4 x float> %i.bmt, ptr %i.bmo, align 4, !tbaa !102, !alias.scope !263, !noalias !264
  %index.next506 = add nuw i64 %index502, 4       ; 2 uses
  %i.bmu = icmp eq i64 %index.next506, %n.vec496
  br i1 %i.bmu, label %middle.block507, label %vector.body501, !llvm.loop !231

middle.block507:                                  ; preds = %vector.body501
  br i1 %cmp.n508, label %._crit_edge11.us.i.i, label %scalar.ph493.preheader

scalar.ph493.preheader:                           ; preds = %.preheader.us.i125.i, %middle.block507
  %indvars.iv56.i.i.ph = phi i64 [ %n.vec496, %middle.block507 ], [ 0, %.preheader.us.i125.i ]
  br label %scalar.ph493

.preheader1.us.i118.i:                            ; preds = %.preheader1.us.preheader.i116.i, %._crit_edge.us.i122.i
  %.0969.us.i.i = phi i32 [ %i.bnf, %._crit_edge.us.i122.i ], [ 0, %.preheader1.us.preheader.i116.i ]
  %.18.us.i.i = phi ptr [ %i.bni, %._crit_edge.us.i122.i ], [ %i.blm, %.preheader1.us.preheader.i116.i ] ; 3 uses
  %.11017.us.i.i = phi ptr [ %i.bnh, %._crit_edge.us.i122.i ], [ %i.bln, %.preheader1.us.preheader.i116.i ] ; 3 uses
  %.11036.us.i.i = phi ptr [ %i.bng, %._crit_edge.us.i122.i ], [ %i.blo, %.preheader1.us.preheader.i116.i ] ; 3 uses
  %brmerge576 = select i1 %min.iters.check529, i1 true, i1 %conflict.rdx527
  br i1 %brmerge576, label %scalar.ph528.preheader, label %vector.body536

vector.body536:                                   ; preds = %.preheader1.us.i118.i, %vector.body536
  %index537 = phi i64 [ %index.next541, %vector.body536 ], [ 0, %.preheader1.us.i118.i ] ; 4 uses
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %.11017.us.i.i, i64 %index537 ; 2 uses
  %wide.load538 = load <4 x float>, ptr %i.bmv, align 4, !tbaa !102, !alias.scope !265, !noalias !266
  %i.bmw = getelementptr inbounds nuw [4 x i8], ptr %.11036.us.i.i, i64 %index537 ; 2 uses
  %wide.load539 = load <4 x float>, ptr %i.bmw, align 4, !tbaa !102, !alias.scope !267, !noalias !268 ; 3 uses
  %i.bmx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat533, <4 x float> %wide.load539, <4 x float> %wide.load538)
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %.18.us.i.i, i64 %index537
  %wide.load540 = load <4 x float>, ptr %i.bmy, align 4, !tbaa !102, !alias.scope !268
  %i.bmz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat535, <4 x float> %wide.load540, <4 x float> %i.bmx) ; 2 uses
  %i.bna = fsub nsz <4 x float> %i.bmz, %wide.load539
  store <4 x float> %i.bna, ptr %i.bmv, align 4, !tbaa !102, !alias.scope !265, !noalias !266
  %i.bnb = fadd nsz <4 x float> %wide.load539, %i.bmz
  store <4 x float> %i.bnb, ptr %i.bmw, align 4, !tbaa !102, !alias.scope !267, !noalias !268
  %index.next541 = add nuw i64 %index537, 4       ; 2 uses
  %i.bnc = icmp eq i64 %index.next541, %n.vec531
  br i1 %i.bnc, label %middle.block542, label %vector.body536, !llvm.loop !236

middle.block542:                                  ; preds = %vector.body536
  br i1 %cmp.n543, label %._crit_edge.us.i122.i, label %scalar.ph528.preheader

scalar.ph528.preheader:                           ; preds = %.preheader1.us.i118.i, %middle.block542
  %indvars.iv.i119.i.ph = phi i64 [ %n.vec531, %middle.block542 ], [ 0, %.preheader1.us.i118.i ]
  br label %scalar.ph528

.preheader2.us.i123.i:                            ; preds = %bb.eb
  br i1 %i.blq, label %.preheader.us.preheader.i124.i, label %.loopexit4.us.i.i

.preheader.us.preheader.i124.i:                   ; preds = %.preheader2.us.i123.i
  %wide.trip.count59.i.i = zext nneg i32 %i.bld to i64 ; 4 uses
  %i.bnd = add nuw nsw i64 %i.bll, %wide.trip.count59.i.i
  %i.bne = shl nuw nsw i64 %i.bnd, 2              ; 3 uses
  %scevgep480 = getelementptr i8, ptr %scevgep, i64 %i.bne ; 2 uses
  %scevgep482 = getelementptr i8, ptr %scevgep481, i64 %i.bne ; 2 uses
  %scevgep484 = getelementptr i8, ptr %scevgep483, i64 %i.bne ; 2 uses
  %min.iters.check494 = icmp ult i32 %i.bld, 4
  %bound0 = icmp ult ptr %i.bln, %scevgep482
  %bound1 = icmp ult ptr %i.blo, %scevgep480
  %found.conflict = and i1 %bound0, %bound1
  %bound0485 = icmp ult ptr %i.bln, %scevgep484
  %bound1486 = icmp ult ptr %i.blm, %scevgep480
  %found.conflict487 = and i1 %bound0485, %bound1486
  %conflict.rdx488 = or i1 %found.conflict, %found.conflict487
  %bound0489 = icmp ult ptr %i.blo, %scevgep484
  %bound1490 = icmp ult ptr %i.blm, %scevgep482
  %found.conflict491 = and i1 %bound0489, %bound1490
  %conflict.rdx492 = or i1 %conflict.rdx488, %found.conflict491
  %n.vec496 = and i64 %wide.trip.count59.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert497 = insertelement <4 x float> poison, float %i.blr, i64 0
  %broadcast.splat498 = shufflevector <4 x float> %broadcast.splatinsert497, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert499 = insertelement <4 x float> poison, float %i.bls, i64 0
  %broadcast.splat500 = shufflevector <4 x float> %broadcast.splatinsert499, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n508 = icmp eq i64 %n.vec496, %wide.trip.count59.i.i
  br label %.preheader.us.i125.i

._crit_edge.us.i122.i:                            ; preds = %scalar.ph528, %middle.block542
  %i.bnf = add nuw nsw i32 %.0969.us.i.i, 1       ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %.11036.us.i.i, i64 512
  %i.bnh = getelementptr inbounds nuw i8, ptr %.11017.us.i.i, i64 512
  %i.bni = getelementptr inbounds nuw i8, ptr %.18.us.i.i, i64 512
  %exitcond55.not.i.i = icmp eq i32 %i.bnf, %i.bkr
  br i1 %exitcond55.not.i.i, label %.loopexit4.us.i.i, label %.preheader1.us.i118.i, !llvm.loop !237

.preheader1.lr.ph.us.i115.i:                      ; preds = %bb.eb
  br i1 %i.blq, label %.preheader1.us.preheader.i116.i, label %.loopexit4.us.i.i

.preheader1.us.preheader.i116.i:                  ; preds = %.preheader1.lr.ph.us.i115.i
  %wide.trip.count.i117.i = zext nneg i32 %i.bld to i64 ; 4 uses
  %i.bnj = add nuw nsw i64 %i.bll, %wide.trip.count.i117.i
  %i.bnk = shl nuw nsw i64 %i.bnj, 2              ; 3 uses
  %scevgep512 = getelementptr i8, ptr %scevgep511, i64 %i.bnk ; 2 uses
  %scevgep514 = getelementptr i8, ptr %scevgep513, i64 %i.bnk ; 2 uses
  %scevgep516 = getelementptr i8, ptr %scevgep515, i64 %i.bnk ; 2 uses
  %min.iters.check529 = icmp ult i32 %i.bld, 4
  %bound0517 = icmp ult ptr %i.bln, %scevgep514
  %bound1518 = icmp ult ptr %i.blo, %scevgep512
  %found.conflict519 = and i1 %bound0517, %bound1518
  %bound0520 = icmp ult ptr %i.bln, %scevgep516
  %bound1521 = icmp ult ptr %i.blm, %scevgep512
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx523 = or i1 %found.conflict519, %found.conflict522
  %bound0524 = icmp ult ptr %i.blo, %scevgep516
end_hunk_0
begin_hunk_1_@decode_usac_stereo_cplx:bb.a
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !41
  %i.af = load i32, ptr %i.h, align 8, !tbaa !39
  %i.ag = icmp slt i32 %i.z, %i.af
  %i.ah = zext i1 %i.ag to i32
  %spec.select.i155 = add i32 %i.z, %i.ah
  %i.ai = zext i8 %i.ae to i32
  %i.aj = and i32 %i.z, 7
  %i.ak = shl nuw nsw i32 %i.ai, %i.aj
  store i32 %spec.select.i155, ptr %i.a, align 8, !tbaa !38
  %i.al = trunc i32 %i.ak to i8
  %i.am = lshr i8 %i.al, 7                        ; 2 uses
  %i.an = mul nuw nsw i32 %i.y, %.014111
  %i.ao = add nuw nsw i32 %i.an, %.01408
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ap
  store i8 %i.am, ptr %i.aq, align 1, !tbaa !41
  %i.ar = or disjoint i32 %.01408, 1
  %i.as = load i8, ptr %i.s, align 4, !tbaa !97   ; 2 uses
  %i.at = zext i8 %i.as to i32                    ; 3 uses
  %i.au = icmp samesign ult i32 %i.ar, %i.at
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph9
  %i.av = mul nuw nsw i32 %.014111, %i.at
  %i.aw = add nuw nsw i32 %i.av, %.01408
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.am, ptr %i.az, align 1, !tbaa !41
  %.pre25 = load i8, ptr %i.s, align 4, !tbaa !97 ; 2 uses
  %.pre31 = zext i8 %.pre25 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph9
  %.pre-phi32 = phi i32 [ %.pre31, %bb.b ], [ %i.at, %.lr.ph9 ] ; 2 uses
  %i.ba = phi i8 [ %.pre25, %bb.b ], [ %i.as, %.lr.ph9 ]
  %i.bb = add nuw nsw i32 %.01408, 2              ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, %.pre-phi32
  br i1 %i.bc, label %.lr.ph9, label %._crit_edge10, !llvm.loop !279

.preheader3:                                      ; preds = %.preheader3.lr.ph, %._crit_edge
  %i.bd = phi i8 [ %.pre, %.preheader3.lr.ph ], [ %i.bf, %._crit_edge ] ; 2 uses
  %.01397 = phi i32 [ 0, %.preheader3.lr.ph ], [ %i.bg, %._crit_edge ] ; 2 uses
  %.not17 = icmp eq i8 %i.bd, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader3
  %i.be = zext i8 %i.bd to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader3
  %i.bf = phi i8 [ 0, %.preheader3 ], [ %i.bn, %.lr.ph ]
  %i.bg = add nuw nsw i32 %.01397, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %3
  br i1 %exitcond.not, label %.loopexit, label %.preheader3, !llvm.loop !280

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bh = phi i32 [ %i.bo, %.lr.ph ], [ %i.be, %.lr.ph.preheader ]
  %.01386 = phi i32 [ %i.bm, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bi = mul nuw nsw i32 %i.bh, %.01397
  %i.bj = add nuw nsw i32 %i.bi, %.01386
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bk
  store i8 1, ptr %i.bl, align 1, !tbaa !41
  %i.bm = add nuw nsw i32 %.01386, 1              ; 2 uses
  %i.bn = load i8, ptr %i.q, align 4, !tbaa !97   ; 2 uses
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = icmp samesign ult i32 %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !281

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge10, %.preheader4, %.preheader2
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !38  ; 4 uses
  %i.br = load ptr, ptr %2, align 8, !tbaa !40    ; 4 uses
  %i.bs = lshr i32 %i.bq, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !41
  %i.bw = load i32, ptr %i.h, align 8, !tbaa !39  ; 4 uses
  %i.bx = icmp slt i32 %i.bq, %i.bw
  %i.by = zext i1 %i.bx to i32
  %spec.select.i156 = add i32 %i.bq, %i.by        ; 5 uses
  %i.bz = zext i8 %i.bv to i32
  %i.ca = and i32 %i.bq, 7
  %i.cb = shl nuw nsw i32 %i.bz, %i.ca
  store i32 %spec.select.i156, ptr %i.a, align 8, !tbaa !38
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = lshr i8 %i.cc, 7
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.cd, ptr %i.ce, align 2, !tbaa !284
  %i.cf = lshr i32 %spec.select.i156, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !41
  %i.cj = icmp slt i32 %spec.select.i156, %i.bw
  %i.ck = zext i1 %i.cj to i32
  %spec.select.i157 = add i32 %spec.select.i156, %i.ck ; 6 uses
  %i.cl = zext i8 %i.ci to i32
  %i.cm = and i32 %spec.select.i156, 7
  %i.cn = shl nuw nsw i32 %i.cl, %i.cm
  %i.co = lshr i32 %i.cn, 7
  store i32 %spec.select.i157, ptr %i.a, align 8, !tbaa !38
  %i.cp = and i32 %i.co, 1                        ; 2 uses
  %i.cq = trunc nuw nsw i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !285
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  store i8 0, ptr %i.cs, align 1, !tbaa !103
  %i.ct = icmp eq i32 %i.cp, 0                    ; 2 uses
  %i.cu = icmp ne i32 %5, 0                       ; 2 uses
  %or.cond = or i1 %i.cu, %i.ct
  br i1 %or.cond, label %bb.d, label %.thread

.thread:                                          ; preds = %.loopexit
  %i.cv = lshr i32 %spec.select.i157, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !41
  %i.cz = icmp slt i32 %spec.select.i157, %i.bw
  %i.da = zext i1 %i.cz to i32
  %spec.select.i158 = add i32 %spec.select.i157, %i.da ; 2 uses
  %i.db = zext i8 %i.cy to i32
  %i.dc = and i32 %spec.select.i157, 7
  %i.dd = shl nuw nsw i32 %i.db, %i.dc
  store i32 %spec.select.i158, ptr %i.a, align 8, !tbaa !38
  %i.de = trunc i32 %i.dd to i8
  %i.df = lshr i8 %i.de, 7
  store i8 %i.df, ptr %i.cs, align 1, !tbaa !103
  br label %bb.e

bb.d:                                             ; preds = %.loopexit
  br i1 %i.cu, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.dg = phi i32 [ %spec.select.i158, %.thread ], [ %spec.select.i157, %bb.d ] ; 4 uses
  %i.dh = lshr i32 %i.dg, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !41
  %i.dl = icmp slt i32 %i.dg, %i.bw
  %i.dm = zext i1 %i.dl to i32
  %spec.select.i159 = add i32 %i.dg, %i.dm
  %i.dn = zext i8 %i.dk to i32
  %i.do = and i32 %i.dg, 7
  store i32 %spec.select.i159, ptr %i.a, align 8, !tbaa !38
  %i.dp = lshr exact i32 128, %i.do
  %i.dq = and i32 %i.dp, %i.dn
  %i.dr = icmp eq i32 %i.dq, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ %i.dr, %bb.e ]
  %i.ds = icmp sgt i32 %3, 0
  br i1 %i.ds, label %.preheader.lr.ph, label %._crit_edge16

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 5744 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 9840 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 13936 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 18032 ; 2 uses
  %i.ea = add nsw i32 %4, -1
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre26 = load i8, ptr %i.dt, align 4, !tbaa !97
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge14
  %i.ec = phi i8 [ %.pre26, %.preheader.lr.ph ], [ %i.ef, %._crit_edge14 ] ; 2 uses
  %.013715 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.eg, %._crit_edge14 ] ; 8 uses
  %.not19 = icmp eq i8 %i.ec, 0
  br i1 %.not19, label %._crit_edge14, label %.lr.ph13

.lr.ph13:                                         ; preds = %.preheader
  %i.ed = zext i8 %i.ec to i32
  %.not148 = icmp eq i32 %.013715, 0
  %i.ee = add nsw i32 %.013715, -1
  br label %bb.g

._crit_edge16:                                    ; preds = %._crit_edge14, %bb.f
  ret void

._crit_edge14:                                    ; preds = %bb.y, %.preheader
  %i.ef = phi i8 [ 0, %.preheader ], [ %i.lj, %bb.y ]
  %i.eg = add nuw nsw i32 %.013715, 1             ; 2 uses
  %exitcond23.not = icmp eq i32 %i.eg, %3
  br i1 %exitcond23.not, label %._crit_edge16, label %.preheader, !llvm.loop !282

bb.g:                                             ; preds = %.lr.ph13, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next, %bb.y ] ; 12 uses
  %i.eh = phi i32 [ %i.ed, %.lr.ph13 ], [ %.pre-phi, %bb.y ] ; 4 uses
  br i1 %.0, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not148, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ei = mul nuw nsw i32 %i.eh, %i.ee
  %6 = zext i32 %i.ei to i64
  %7 = add nuw nsw i64 %indvars.iv, %6            ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %7
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !41
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %7
  %i.em = load float, ptr %i.el, align 4, !tbaa !41
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.en = load i32, ptr %i.dw, align 4, !tbaa !42
  %i.eo = icmp eq i32 %i.en, 2
  br i1 %i.eo, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ep = load i32, ptr %i.dx, align 4, !tbaa !42
  %i.eq = icmp eq i32 %i.ep, 2
  br i1 %i.eq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.er = mul nsw i32 %i.eh, %i.ea
  %i.es = trunc nuw nsw i64 %indvars.iv to i32
  %i.et = add nsw i32 %i.er, %i.es
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !41
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eu
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !41
  br label %bb.p

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !41
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !41
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  %.not147 = icmp eq i64 %indvars.iv, 0
  br i1 %.not147, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = mul nuw nsw i32 %i.eh, %.013715
  %i.fe = trunc i64 %indvars.iv to i32
  %i.ff = add i32 %i.fe, -1
  %i.fg = add nuw i32 %i.ff, %i.fd
  %8 = zext nneg i32 %i.fg to i64                 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %8
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !41
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %8
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !41
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.i, %bb.m, %bb.l
  %.0135 = phi nsz float [ %i.ek, %bb.i ], [ %i.fa, %bb.m ], [ %i.ew, %bb.l ], [ %i.fi, %bb.o ], [ 0.000000e+00, %bb.n ]
  %.0134 = phi nsz float [ %i.em, %bb.i ], [ %i.fc, %bb.m ], [ %i.ey, %bb.l ], [ %i.fk, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.fl = mul nuw nsw i32 %i.eh, %.013715
  %i.fm = zext i32 %i.fl to i64
  %i.fn = add nuw nsw i64 %indvars.iv, %i.fm      ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !41
  %.not149 = icmp eq i8 %i.fp, 0
  br i1 %.not149, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fq = load i32, ptr %i.a, align 8, !tbaa !38  ; 4 uses
  %i.fr = load i32, ptr %i.h, align 8, !tbaa !39  ; 6 uses
  %i.fs = load ptr, ptr %2, align 8, !tbaa !40    ; 6 uses
  %i.ft = lshr i32 %i.fq, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 1, !tbaa !41
  %i.fx = tail call i32 @llvm.bswap.i32(i32 %i.fw)
  %i.fy = and i32 %i.fq, 7
  %i.fz = shl i32 %i.fx, %i.fy
  %i.ga = lshr i32 %i.fz, 25
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.gb ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !41
  %i.ge = sext i16 %i.gd to i32                   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !41 ; 2 uses
  %i.gh = sext i16 %i.gg to i32                   ; 3 uses
  %i.gi = icmp slt i16 %i.gg, 0
  br i1 %i.gi, label %bb.r, label %get_vlc2.exit154

bb.r:                                             ; preds = %bb.q
  %i.gj = add i32 %i.fq, 7
  %i.gk = tail call i32 @llvm.umin.i32(i32 %i.fr, i32 %i.gj) ; 4 uses
  %i.gl = lshr i32 %i.gk, 3
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 1, !tbaa !41
  %i.gp = tail call i32 @llvm.bswap.i32(i32 %i.go)
  %i.gq = and i32 %i.gk, 7
  %i.gr = shl i32 %i.gp, %i.gq
  %i.gs = add nsw i32 %i.gh, 32
  %i.gt = lshr i32 %i.gr, %i.gs
  %i.gu = add i32 %i.gt, %i.ge
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.gv ; 2 uses
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !41
  %i.gy = sext i16 %i.gx to i32                   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !41 ; 2 uses
  %i.hb = sext i16 %i.ha to i32                   ; 2 uses
  %i.hc = icmp slt i16 %i.ha, 0
  br i1 %i.hc, label %bb.s, label %get_vlc2.exit154

bb.s:                                             ; preds = %bb.r
  %i.hd = sub i32 %i.gk, %i.gh
  %i.he = tail call i32 @llvm.umin.i32(i32 %i.fr, i32 %i.hd) ; 3 uses
  %i.hf = lshr i32 %i.he, 3
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 1, !tbaa !41
  %i.hj = tail call i32 @llvm.bswap.i32(i32 %i.hi)
  %i.hk = and i32 %i.he, 7
  %i.hl = shl i32 %i.hj, %i.hk
  %i.hm = add nsw i32 %i.hb, 32
  %i.hn = lshr i32 %i.hl, %i.hm
  %i.ho = add i32 %i.hn, %i.gy
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.hp ; 2 uses
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !41
  %i.hs = sext i16 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !41
  %i.hv = sext i16 %i.hu to i32
  br label %get_vlc2.exit154

get_vlc2.exit154:                                 ; preds = %bb.q, %bb.r, %bb.s
  %.167.i151 = phi i32 [ %i.ge, %bb.q ], [ %i.hs, %bb.s ], [ %i.gy, %bb.r ]
  %.165.i152 = phi i32 [ %i.fq, %bb.q ], [ %i.he, %bb.s ], [ %i.gk, %bb.r ]
  %.1.i153 = phi i32 [ %i.gh, %bb.q ], [ %i.hv, %bb.s ], [ %i.hb, %bb.r ]
  %i.hw = add i32 %.1.i153, %.165.i152
  %i.hx = tail call i32 @llvm.umin.i32(i32 %i.fr, i32 %i.hw) ; 5 uses
  store i32 %i.hx, ptr %i.a, align 8, !tbaa !38
  %i.hy = sub nsw i32 60, %.167.i151
  %i.hz = sitofp nsz i32 %i.hy to float
  %i.ia = tail call nsz float @llvm.fmuladd.f32(float %i.hz, float 1.000000e-01, float %.0135) ; 2 uses
  br i1 %i.ct, label %bb.w, label %bb.t

bb.t:                                             ; preds = %get_vlc2.exit154
  %i.ib = lshr i32 %i.hx, 3
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 1, !tbaa !41
  %i.if = tail call i32 @llvm.bswap.i32(i32 %i.ie)
  %i.ig = and i32 %i.hx, 7
  %i.ih = shl i32 %i.if, %i.ig
  %i.ii = lshr i32 %i.ih, 25
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.ij ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !41
  %i.im = sext i16 %i.il to i32                   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  %i.io = load i16, ptr %i.in, align 2, !tbaa !41 ; 2 uses
  %i.ip = sext i16 %i.io to i32                   ; 3 uses
  %i.iq = icmp slt i16 %i.io, 0
  br i1 %i.iq, label %bb.u, label %get_vlc2.exit

bb.u:                                             ; preds = %bb.t
  %i.ir = add i32 %i.hx, 7
  %i.is = tail call i32 @llvm.umin.i32(i32 %i.fr, i32 %i.ir) ; 4 uses
  %i.it = lshr i32 %i.is, 3
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 1, !tbaa !41
  %i.ix = tail call i32 @llvm.bswap.i32(i32 %i.iw)
  %i.iy = and i32 %i.is, 7
  %i.iz = shl i32 %i.ix, %i.iy
  %i.ja = add nsw i32 %i.ip, 32
  %i.jb = lshr i32 %i.iz, %i.ja
  %i.jc = add i32 %i.jb, %i.im
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.jd ; 2 uses
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !41
  %i.jg = sext i16 %i.jf to i32                   ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !41 ; 2 uses
  %i.jj = sext i16 %i.ji to i32                   ; 2 uses
  %i.jk = icmp slt i16 %i.ji, 0
  br i1 %i.jk, label %bb.v, label %get_vlc2.exit

bb.v:                                             ; preds = %bb.u
  %i.jl = sub i32 %i.is, %i.ip
  %i.jm = tail call i32 @llvm.umin.i32(i32 %i.fr, i32 %i.jl) ; 3 uses
  %i.jn = lshr i32 %i.jm, 3
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 1, !tbaa !41
  %i.jr = tail call i32 @llvm.bswap.i32(i32 %i.jq)
  %i.js = and i32 %i.jm, 7
  %i.jt = shl i32 %i.jr, %i.js
  %i.ju = add nsw i32 %i.jj, 32
  %i.jv = lshr i32 %i.jt, %i.ju
  %i.jw = add i32 %i.jv, %i.jg
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.jx ; 2 uses
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !41
  %i.ka = sext i16 %i.jz to i32
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !41
  %i.kd = sext i16 %i.kc to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.t, %bb.u, %bb.v
  %.167.i = phi i32 [ %i.im, %bb.t ], [ %i.ka, %bb.v ], [ %i.jg, %bb.u ]
  %.165.i = phi i32 [ %i.hx, %bb.t ], [ %i.jm, %bb.v ], [ %i.is, %bb.u ]
  %.1.i = phi i32 [ %i.ip, %bb.t ], [ %i.kd, %bb.v ], [ %i.jj, %bb.u ]
  %i.ke = add i32 %.1.i, %.165.i
  %i.kf = tail call i32 @llvm.umin.i32(i32 %i.fr, i32 %i.ke)
  store i32 %i.kf, ptr %i.a, align 8, !tbaa !38
  %i.kg = sub nsw i32 60, %.167.i
  %i.kh = sitofp nsz i32 %i.kg to float
  %i.ki = tail call nsz float @llvm.fmuladd.f32(float %i.kh, float 1.000000e-01, float %.0134)
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %get_vlc2.exit154, %get_vlc2.exit
  %.sink52 = phi float [ %i.ia, %get_vlc2.exit154 ], [ %i.ia, %get_vlc2.exit ], [ 0.000000e+00, %bb.p ]
  %.sink = phi float [ %.0134, %get_vlc2.exit154 ], [ %i.ki, %get_vlc2.exit ], [ 0.000000e+00, %bb.p ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.fn
  store float %.sink52, ptr %i.kj, align 4, !tbaa !41
  %i.kk = load i8, ptr %i.dt, align 4, !tbaa !97
  %i.kl = zext i8 %i.kk to i32
  %i.km = mul nuw nsw i32 %.013715, %i.kl
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kn
  store float %.sink, ptr %i.kp, align 4, !tbaa !41
  %i.kq = or disjoint i64 %indvars.iv, 1
  %i.kr = load i8, ptr %i.dt, align 4, !tbaa !97  ; 3 uses
  %i.ks = zext i8 %i.kr to i32                    ; 2 uses
  %i.kt = zext i8 %i.kr to i64                    ; 2 uses
  %i.ku = icmp samesign ult i64 %i.kq, %i.kt
  br i1 %i.ku, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.kv = mul nuw nsw i32 %.013715, %i.ks
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.kw ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !41
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  store float %i.kz, ptr %i.la, align 4, !tbaa !41
  %i.lb = load i8, ptr %i.dt, align 4, !tbaa !97
  %i.lc = zext i8 %i.lb to i32
  %i.ld = mul nuw nsw i32 %.013715, %i.lc
  %i.le = zext nneg i32 %i.ld to i64
end_hunk_1
