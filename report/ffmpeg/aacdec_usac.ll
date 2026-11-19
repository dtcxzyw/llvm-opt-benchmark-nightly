Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec_usac?download=true
inline.NumInlined: 226
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@decode_usac_core_coder:bb.a
  %indvars.iv23.i.i = phi i64 [ 0, %.preheader.lr.ph.preheader.i.i ], [ %indvars.iv.next24.i.i, %..loopexit_crit_edge.split.i.i ]
  %i.bhg = zext i16 %i.bhf to i32
  %indvars.iv.next24.i.i = add nuw nsw i64 %indvars.iv23.i.i, 1 ; 3 uses
  %i.bhh = getelementptr inbounds nuw [2 x i8], ptr %i.bdg, i64 %indvars.iv.next24.i.i
  %i.bhi = load i16, ptr %i.bhh, align 2, !tbaa !249 ; 2 uses
  %i.bhj = zext i16 %i.bhi to i32
  %i.bhk = sub nsw i32 %i.bhj, %i.bhg             ; 3 uses
  %i.bhl = icmp sgt i32 %i.bhk, 0
  br i1 %i.bhl, label %.preheader.preheader.i.i, label %..loopexit_crit_edge.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.bhm = zext i16 %i.bhf to i64                 ; 3 uses
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %.0529.i.i, i64 %i.bhm
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %.05013.i.i, i64 %i.bhm
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %.05111.i.i, i64 %i.bhm
  %wide.trip.count.i104.i = zext nneg i32 %i.bhk to i64 ; 5 uses
  %min.iters.check473 = icmp ult i32 %i.bhk, 8
  %n.vec479 = and i64 %wide.trip.count.i104.i, 2147483640 ; 3 uses
  %cmp.n490 = icmp eq i64 %n.vec479, %wide.trip.count.i104.i
  %xtraiter610 = and i64 %wide.trip.count.i104.i, 1
  %lcmp.mod611.not = icmp eq i64 %xtraiter610, 0
  %i.bhq = add nsw i64 %wide.trip.count.i104.i, -1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i249, %.preheader.preheader.i.i
  %.0445.i.i = phi i32 [ %i.bik, %._crit_edge.i.i249 ], [ 0, %.preheader.preheader.i.i ]
  %.0454.i.i = phi ptr [ %i.bin, %._crit_edge.i.i249 ], [ %i.bhn, %.preheader.preheader.i.i ] ; 5 uses
  %.0463.i.i = phi ptr [ %i.bim, %._crit_edge.i.i249 ], [ %i.bho, %.preheader.preheader.i.i ] ; 5 uses
  %.0472.i.i = phi ptr [ %i.bil, %._crit_edge.i.i249 ], [ %i.bhp, %.preheader.preheader.i.i ] ; 5 uses
  %brmerge619 = select i1 %min.iters.check473, i1 true, i1 %conflict.rdx477
  br i1 %brmerge619, label %scalar.ph472.preheader, label %vector.body482

vector.body482:                                   ; preds = %.preheader.i.i, %vector.body482
  %index483 = phi i64 [ %index.next488, %vector.body482 ], [ 0, %.preheader.i.i ] ; 4 uses
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %.0472.i.i, i64 %index483 ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 16
  %wide.load484 = load <4 x float>, ptr %i.bhr, align 4, !tbaa !102
  %wide.load485 = load <4 x float>, ptr %i.bhs, align 4, !tbaa !102
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %.0463.i.i, i64 %index483 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 16
  %wide.load486 = load <4 x float>, ptr %i.bht, align 4, !tbaa !102
  %wide.load487 = load <4 x float>, ptr %i.bhu, align 4, !tbaa !102
  %i.bhv = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat481, <4 x float> %wide.load486, <4 x float> %wide.load484)
  %i.bhw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat481, <4 x float> %wide.load487, <4 x float> %wide.load485)
  %i.bhx = fmul nsz <4 x float> %i.bhv, splat (float 5.000000e-01)
  %i.bhy = fmul nsz <4 x float> %i.bhw, splat (float 5.000000e-01)
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %.0454.i.i, i64 %index483 ; 2 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 16
  store <4 x float> %i.bhx, ptr %i.bhz, align 4, !tbaa !102
  store <4 x float> %i.bhy, ptr %i.bia, align 4, !tbaa !102
  %index.next488 = add nuw i64 %index483, 8       ; 2 uses
  %i.bib = icmp eq i64 %index.next488, %n.vec479
  br i1 %i.bib, label %middle.block489, label %vector.body482, !llvm.loop !221

middle.block489:                                  ; preds = %vector.body482
  br i1 %cmp.n490, label %._crit_edge.i.i249, label %scalar.ph472.preheader

scalar.ph472.preheader:                           ; preds = %.preheader.i.i, %middle.block489
  %indvars.iv.i105.i.ph = phi i64 [ %n.vec479, %middle.block489 ], [ 0, %.preheader.i.i ] ; 6 uses
  br i1 %lcmp.mod611.not, label %scalar.ph472.prol.loopexit, label %scalar.ph472.prol

scalar.ph472.prol:                                ; preds = %scalar.ph472.preheader
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %.0472.i.i, i64 %indvars.iv.i105.i.ph
  %i.bid = load float, ptr %i.bic, align 4, !tbaa !102
  %i.bie = getelementptr inbounds nuw [4 x i8], ptr %.0463.i.i, i64 %indvars.iv.i105.i.ph
  %i.bif = load float, ptr %i.bie, align 4, !tbaa !102
  %i.big = call nsz float @llvm.fmuladd.f32(float %i.bdd, float %i.bif, float %i.bid)
  %i.bih = fmul nsz float %i.big, 5.000000e-01
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %.0454.i.i, i64 %indvars.iv.i105.i.ph
  store float %i.bih, ptr %i.bii, align 4, !tbaa !102
  %indvars.iv.next.i106.i.prol = or disjoint i64 %indvars.iv.i105.i.ph, 1
  br label %scalar.ph472.prol.loopexit

scalar.ph472.prol.loopexit:                       ; preds = %scalar.ph472.prol, %scalar.ph472.preheader
  %indvars.iv.i105.i.unr = phi i64 [ %indvars.iv.i105.i.ph, %scalar.ph472.preheader ], [ %indvars.iv.next.i106.i.prol, %scalar.ph472.prol ]
  %i.bij = icmp eq i64 %indvars.iv.i105.i.ph, %i.bhq
  br i1 %i.bij, label %._crit_edge.i.i249, label %scalar.ph472

._crit_edge.i.i249:                               ; preds = %scalar.ph472.prol.loopexit, %scalar.ph472, %middle.block489
  %i.bik = add nuw nsw i32 %.0445.i.i, 1          ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %.0472.i.i, i64 512
  %i.bim = getelementptr inbounds nuw i8, ptr %.0463.i.i, i64 512
  %i.bin = getelementptr inbounds nuw i8, ptr %.0454.i.i, i64 512
  %exitcond22.not.i.i = icmp eq i32 %i.bik, %i.bgx
  br i1 %exitcond22.not.i.i, label %..loopexit_crit_edge.split.i.i, label %.preheader.i.i, !llvm.loop !222

scalar.ph472:                                     ; preds = %scalar.ph472.prol.loopexit, %scalar.ph472
  %indvars.iv.i105.i = phi i64 [ %indvars.iv.next.i106.i.1, %scalar.ph472 ], [ %indvars.iv.i105.i.unr, %scalar.ph472.prol.loopexit ] ; 5 uses
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
  br i1 %exitcond.not.i107.i.1, label %._crit_edge.i.i249, label %scalar.ph472, !llvm.loop !223

complex_stereo_downmix_prev.exit.i:               ; preds = %._crit_edge8.split.i.i, %.lr.ph17.i.thread.i, %complex_stereo_downmix_cur.exit.thread126.i
  %i.bjc = phi ptr [ %i.bcw, %complex_stereo_downmix_cur.exit.thread126.i ], [ %i.bde, %.lr.ph17.i.thread.i ], [ %i.bgu, %._crit_edge8.split.i.i ]
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
  %.010643.i.i = phi ptr [ %i.bjo, %.lr.ph47.split.i.i ], [ %i.bno, %._crit_edge18.i.i ] ; 4 uses
  %.010740.i.i = phi ptr [ %i.bcs, %.lr.ph47.split.i.i ], [ %i.bnn, %._crit_edge18.i.i ] ; 4 uses
  %.010837.i.i = phi ptr [ %i.bcr, %.lr.ph47.split.i.i ], [ %i.bnm, %._crit_edge18.i.i ] ; 4 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkf, i64 %indvars.iv78.i.i
  %i.bkq = load i8, ptr %i.bkp, align 1, !tbaa !41
  %.fr48.i.i = freeze i8 %i.bkq                   ; 2 uses
  %i.bkr = zext i8 %.fr48.i.i to i32              ; 3 uses
  %i.bks = mul nuw nsw i64 %indvars.iv78.i.i, %i.bko
  %.not50.i.i = icmp eq i8 %.fr48.i.i, 0
  br i1 %.not50.i.i, label %._crit_edge18.i.i, label %.lr.ph.split.us.preheader.i112.i

.lr.ph.split.us.preheader.i112.i:                 ; preds = %.lr.ph.i111.i
  %.pre.i113.i = load i16, ptr %i.bkn, align 2, !tbaa !249
  br label %.lr.ph.split.us.i114.i

.lr.ph.split.us.i114.i:                           ; preds = %.loopexit4.us.i.i, %.lr.ph.split.us.preheader.i112.i
  %i.bkt = phi i16 [ %.pre.i113.i, %.lr.ph.split.us.preheader.i112.i ], [ %i.bkw, %.loopexit4.us.i.i ] ; 2 uses
  %indvars.iv62.i.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i112.i ], [ %indvars.iv.next63.i.i, %.loopexit4.us.i.i ] ; 2 uses
  %i.bku = zext i16 %i.bkt to i32
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1 ; 3 uses
  %i.bkv = getelementptr inbounds nuw [2 x i8], ptr %i.bkn, i64 %indvars.iv.next63.i.i
  %i.bkw = load i16, ptr %i.bkv, align 2, !tbaa !249 ; 2 uses
  %i.bkx = zext i16 %i.bkw to i32
  %i.bky = sub nsw i32 %i.bkx, %i.bku             ; 5 uses
  %i.bkz = add nuw nsw i64 %indvars.iv62.i.i, %i.bks ; 3 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkk, i64 %i.bkz
  %i.blb = load i8, ptr %i.bla, align 1, !tbaa !41
  %.not.us.i.i = icmp eq i8 %i.blb, 0
  br i1 %.not.us.i.i, label %.loopexit4.us.i.i, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph.split.us.i114.i
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %i.bkj, i64 %i.bkz
  %i.bld = load float, ptr %i.blc, align 4, !tbaa !41
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %i.bki, i64 %i.bkz
  %i.blf = load float, ptr %i.ble, align 4, !tbaa !41
  %i.blg = zext i16 %i.bkt to i64                 ; 5 uses
  %i.blh = getelementptr [4 x i8], ptr %.010643.i.i, i64 %i.blg ; 6 uses
  %i.bli = getelementptr [4 x i8], ptr %.010740.i.i, i64 %i.blg ; 6 uses
  %i.blj = getelementptr [4 x i8], ptr %.010837.i.i, i64 %i.blg ; 6 uses
  %i.blk = load i8, ptr %i.bkl, align 2, !tbaa !260
  %.not110.us.i.i = icmp eq i8 %i.blk, 0
  %i.bll = icmp sgt i32 %i.bky, 0                 ; 2 uses
  %i.blm = fneg nsz float %i.blf                  ; 4 uses
  %i.bln = fneg nsz float %i.bld                  ; 4 uses
  br i1 %.not110.us.i.i, label %.preheader2.us.i123.i, label %.preheader1.lr.ph.us.i115.i

scalar.ph561:                                     ; preds = %scalar.ph561.preheader, %scalar.ph561
  %indvars.iv.i119.i = phi i64 [ %indvars.iv.next.i120.i, %scalar.ph561 ], [ %indvars.iv.i119.i.ph, %scalar.ph561.preheader ] ; 4 uses
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %.11017.us.i.i, i64 %indvars.iv.i119.i ; 2 uses
  %i.blp = load float, ptr %i.blo, align 4, !tbaa !102
  %i.blq = getelementptr inbounds nuw [4 x i8], ptr %.11036.us.i.i, i64 %indvars.iv.i119.i ; 2 uses
  %i.blr = load float, ptr %i.blq, align 4, !tbaa !102 ; 3 uses
  %i.bls = call nsz float @llvm.fmuladd.f32(float %i.blm, float %i.blr, float %i.blp)
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %.18.us.i.i, i64 %indvars.iv.i119.i
  %i.blu = load float, ptr %i.blt, align 4, !tbaa !102
  %i.blv = call nsz float @llvm.fmuladd.f32(float %i.bln, float %i.blu, float %i.bls) ; 2 uses
  %i.blw = fsub nsz float %i.blv, %i.blr
  store float %i.blw, ptr %i.blo, align 4, !tbaa !102
  %i.blx = fadd nsz float %i.blr, %i.blv
  store float %i.blx, ptr %i.blq, align 4, !tbaa !102
  %indvars.iv.next.i120.i = add nuw nsw i64 %indvars.iv.i119.i, 1 ; 2 uses
  %exitcond.not.i121.i = icmp eq i64 %indvars.iv.next.i120.i, %wide.trip.count.i117.i
  br i1 %exitcond.not.i121.i, label %._crit_edge.us.i122.i, label %scalar.ph561, !llvm.loop !224

scalar.ph511:                                     ; preds = %scalar.ph511.preheader, %scalar.ph511
  %indvars.iv56.i.i = phi i64 [ %indvars.iv.next57.i.i, %scalar.ph511 ], [ %indvars.iv56.i.i.ph, %scalar.ph511.preheader ] ; 4 uses
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %.010013.us.i.i, i64 %indvars.iv56.i.i ; 2 uses
  %i.blz = load float, ptr %i.bly, align 4, !tbaa !102
  %i.bma = getelementptr inbounds nuw [4 x i8], ptr %.010212.us.i.i, i64 %indvars.iv56.i.i ; 2 uses
  %i.bmb = load float, ptr %i.bma, align 4, !tbaa !102 ; 3 uses
  %i.bmc = call nsz float @llvm.fmuladd.f32(float %i.blm, float %i.bmb, float %i.blz)
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %.09914.us.i.i, i64 %indvars.iv56.i.i
  %i.bme = load float, ptr %i.bmd, align 4, !tbaa !102
  %i.bmf = call nsz float @llvm.fmuladd.f32(float %i.bln, float %i.bme, float %i.bmc) ; 2 uses
  %i.bmg = fsub nsz float %i.bmb, %i.bmf
  store float %i.bmg, ptr %i.bly, align 4, !tbaa !102
  %i.bmh = fadd nsz float %i.bmb, %i.bmf
  store float %i.bmh, ptr %i.bma, align 4, !tbaa !102
  %indvars.iv.next57.i.i = add nuw nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %indvars.iv.next57.i.i, %wide.trip.count59.i.i
  br i1 %exitcond60.not.i.i, label %._crit_edge11.us.i.i, label %scalar.ph511, !llvm.loop !225

.loopexit4.us.i.i:                                ; preds = %._crit_edge.us.i122.i, %._crit_edge11.us.i.i, %.preheader1.lr.ph.us.i115.i, %.preheader2.us.i123.i, %.lr.ph.split.us.i114.i
  %exitcond66.not.i.i = icmp eq i64 %indvars.iv.next63.i.i, %i.bko
  br i1 %exitcond66.not.i.i, label %._crit_edge18.i.i, label %.lr.ph.split.us.i114.i, !llvm.loop !226

.preheader.us.i125.i:                             ; preds = %._crit_edge11.us.i.i, %.preheader.us.preheader.i124.i
  %.09815.us.i.i = phi i32 [ %i.bng, %._crit_edge11.us.i.i ], [ 0, %.preheader.us.preheader.i124.i ]
  %.09914.us.i.i = phi ptr [ %i.bnj, %._crit_edge11.us.i.i ], [ %i.blh, %.preheader.us.preheader.i124.i ] ; 3 uses
  %.010013.us.i.i = phi ptr [ %i.bni, %._crit_edge11.us.i.i ], [ %i.bli, %.preheader.us.preheader.i124.i ] ; 3 uses
  %.010212.us.i.i = phi ptr [ %i.bnh, %._crit_edge11.us.i.i ], [ %i.blj, %.preheader.us.preheader.i124.i ] ; 3 uses
  %brmerge620 = select i1 %min.iters.check512, i1 true, i1 %conflict.rdx521
  br i1 %brmerge620, label %scalar.ph511.preheader, label %vector.body528

vector.body528:                                   ; preds = %.preheader.us.i125.i, %vector.body528
  %index529 = phi i64 [ %index.next533, %vector.body528 ], [ 0, %.preheader.us.i125.i ] ; 4 uses
  %i.bmi = getelementptr inbounds nuw [4 x i8], ptr %.010013.us.i.i, i64 %index529 ; 2 uses
  %wide.load530 = load <4 x float>, ptr %i.bmi, align 4, !tbaa !102, !alias.scope !261, !noalias !262
  %i.bmj = getelementptr inbounds nuw [4 x i8], ptr %.010212.us.i.i, i64 %index529 ; 2 uses
  %wide.load531 = load <4 x float>, ptr %i.bmj, align 4, !tbaa !102, !alias.scope !263, !noalias !264 ; 3 uses
  %i.bmk = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat525, <4 x float> %wide.load531, <4 x float> %wide.load530)
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %.09914.us.i.i, i64 %index529
  %wide.load532 = load <4 x float>, ptr %i.bml, align 4, !tbaa !102, !alias.scope !264
  %i.bmm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat527, <4 x float> %wide.load532, <4 x float> %i.bmk) ; 2 uses
  %i.bmn = fsub nsz <4 x float> %wide.load531, %i.bmm
  store <4 x float> %i.bmn, ptr %i.bmi, align 4, !tbaa !102, !alias.scope !261, !noalias !262
  %i.bmo = fadd nsz <4 x float> %wide.load531, %i.bmm
  store <4 x float> %i.bmo, ptr %i.bmj, align 4, !tbaa !102, !alias.scope !263, !noalias !264
  %index.next533 = add nuw i64 %index529, 4       ; 2 uses
  %i.bmp = icmp eq i64 %index.next533, %n.vec523
  br i1 %i.bmp, label %middle.block534, label %vector.body528, !llvm.loop !231

middle.block534:                                  ; preds = %vector.body528
  br i1 %cmp.n535, label %._crit_edge11.us.i.i, label %scalar.ph511.preheader

scalar.ph511.preheader:                           ; preds = %.preheader.us.i125.i, %middle.block534
  %indvars.iv56.i.i.ph = phi i64 [ %n.vec523, %middle.block534 ], [ 0, %.preheader.us.i125.i ]
  br label %scalar.ph511

.preheader1.us.i118.i:                            ; preds = %.preheader1.us.preheader.i116.i, %._crit_edge.us.i122.i
  %.0969.us.i.i = phi i32 [ %i.bna, %._crit_edge.us.i122.i ], [ 0, %.preheader1.us.preheader.i116.i ]
  %.18.us.i.i = phi ptr [ %i.bnd, %._crit_edge.us.i122.i ], [ %i.blh, %.preheader1.us.preheader.i116.i ] ; 3 uses
  %.11017.us.i.i = phi ptr [ %i.bnc, %._crit_edge.us.i122.i ], [ %i.bli, %.preheader1.us.preheader.i116.i ] ; 3 uses
  %.11036.us.i.i = phi ptr [ %i.bnb, %._crit_edge.us.i122.i ], [ %i.blj, %.preheader1.us.preheader.i116.i ] ; 3 uses
  %brmerge621 = select i1 %min.iters.check562, i1 true, i1 %conflict.rdx574
  br i1 %brmerge621, label %scalar.ph561.preheader, label %vector.body581

vector.body581:                                   ; preds = %.preheader1.us.i118.i, %vector.body581
  %index582 = phi i64 [ %index.next586, %vector.body581 ], [ 0, %.preheader1.us.i118.i ] ; 4 uses
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %.11017.us.i.i, i64 %index582 ; 2 uses
  %wide.load583 = load <4 x float>, ptr %i.bmq, align 4, !tbaa !102, !alias.scope !265, !noalias !266
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %.11036.us.i.i, i64 %index582 ; 2 uses
  %wide.load584 = load <4 x float>, ptr %i.bmr, align 4, !tbaa !102, !alias.scope !267, !noalias !268 ; 3 uses
  %i.bms = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat578, <4 x float> %wide.load584, <4 x float> %wide.load583)
  %i.bmt = getelementptr inbounds nuw [4 x i8], ptr %.18.us.i.i, i64 %index582
  %wide.load585 = load <4 x float>, ptr %i.bmt, align 4, !tbaa !102, !alias.scope !268
  %i.bmu = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat580, <4 x float> %wide.load585, <4 x float> %i.bms) ; 2 uses
  %i.bmv = fsub nsz <4 x float> %i.bmu, %wide.load584
  store <4 x float> %i.bmv, ptr %i.bmq, align 4, !tbaa !102, !alias.scope !265, !noalias !266
  %i.bmw = fadd nsz <4 x float> %wide.load584, %i.bmu
  store <4 x float> %i.bmw, ptr %i.bmr, align 4, !tbaa !102, !alias.scope !267, !noalias !268
  %index.next586 = add nuw i64 %index582, 4       ; 2 uses
  %i.bmx = icmp eq i64 %index.next586, %n.vec576
  br i1 %i.bmx, label %middle.block587, label %vector.body581, !llvm.loop !236

middle.block587:                                  ; preds = %vector.body581
  br i1 %cmp.n588, label %._crit_edge.us.i122.i, label %scalar.ph561.preheader

scalar.ph561.preheader:                           ; preds = %.preheader1.us.i118.i, %middle.block587
  %indvars.iv.i119.i.ph = phi i64 [ %n.vec576, %middle.block587 ], [ 0, %.preheader1.us.i118.i ]
  br label %scalar.ph561

.preheader2.us.i123.i:                            ; preds = %bb.eb
  br i1 %i.bll, label %.preheader.us.preheader.i124.i, label %.loopexit4.us.i.i

.preheader.us.preheader.i124.i:                   ; preds = %.preheader2.us.i123.i
  %wide.trip.count59.i.i = zext nneg i32 %i.bky to i64 ; 4 uses
  %i.bmy = add nuw nsw i64 %i.blg, %wide.trip.count59.i.i
  %i.bmz = shl nuw nsw i64 %i.bmy, 2              ; 3 uses
  %scevgep506 = getelementptr i8, ptr %.010643.i.i, i64 %i.bmz ; 2 uses
  %scevgep508 = getelementptr i8, ptr %.010837.i.i, i64 %i.bmz ; 2 uses
  %scevgep510 = getelementptr i8, ptr %.010740.i.i, i64 %i.bmz ; 2 uses
  %min.iters.check512 = icmp ult i32 %i.bky, 4
  %bound0 = icmp ult ptr %i.bli, %scevgep508
  %bound1 = icmp ult ptr %i.blj, %scevgep510
  %found.conflict = and i1 %bound0, %bound1
  %bound0514 = icmp ult ptr %i.bli, %scevgep506
  %bound1515 = icmp ult ptr %i.blh, %scevgep510
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %found.conflict, %found.conflict516
  %bound0518 = icmp ult ptr %i.blj, %scevgep506
  %bound1519 = icmp ult ptr %i.blh, %scevgep508
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %conflict.rdx517, %found.conflict520
  %n.vec523 = and i64 %wide.trip.count59.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert524 = insertelement <4 x float> poison, float %i.blm, i64 0
  %broadcast.splat525 = shufflevector <4 x float> %broadcast.splatinsert524, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert526 = insertelement <4 x float> poison, float %i.bln, i64 0
  %broadcast.splat527 = shufflevector <4 x float> %broadcast.splatinsert526, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n535 = icmp eq i64 %n.vec523, %wide.trip.count59.i.i
  br label %.preheader.us.i125.i

._crit_edge.us.i122.i:                            ; preds = %scalar.ph561, %middle.block587
  %i.bna = add nuw nsw i32 %.0969.us.i.i, 1       ; 2 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %.11036.us.i.i, i64 512
  %i.bnc = getelementptr inbounds nuw i8, ptr %.11017.us.i.i, i64 512
  %i.bnd = getelementptr inbounds nuw i8, ptr %.18.us.i.i, i64 512
  %exitcond55.not.i.i = icmp eq i32 %i.bna, %i.bkr
  br i1 %exitcond55.not.i.i, label %.loopexit4.us.i.i, label %.preheader1.us.i118.i, !llvm.loop !237

.preheader1.lr.ph.us.i115.i:                      ; preds = %bb.eb
  br i1 %i.bll, label %.preheader1.us.preheader.i116.i, label %.loopexit4.us.i.i

.preheader1.us.preheader.i116.i:                  ; preds = %.preheader1.lr.ph.us.i115.i
  %wide.trip.count.i117.i = zext nneg i32 %i.bky to i64 ; 4 uses
  %i.bne = add nuw nsw i64 %i.blg, %wide.trip.count.i117.i
  %i.bnf = shl nuw nsw i64 %i.bne, 2              ; 3 uses
  %scevgep556 = getelementptr i8, ptr %.010643.i.i, i64 %i.bnf ; 2 uses
  %scevgep558 = getelementptr i8, ptr %.010837.i.i, i64 %i.bnf ; 2 uses
  %scevgep560 = getelementptr i8, ptr %.010740.i.i, i64 %i.bnf ; 2 uses
  %min.iters.check562 = icmp ult i32 %i.bky, 4
  %bound0564 = icmp ult ptr %i.bli, %scevgep558
  %bound1565 = icmp ult ptr %i.blj, %scevgep560
  %found.conflict566 = and i1 %bound0564, %bound1565
  %bound0567 = icmp ult ptr %i.bli, %scevgep556
  %bound1568 = icmp ult ptr %i.blh, %scevgep560
  %found.conflict569 = and i1 %bound0567, %bound1568
  %conflict.rdx570 = or i1 %found.conflict566, %found.conflict569
  %bound0571 = icmp ult ptr %i.blj, %scevgep556
  %bound1572 = icmp ult ptr %i.blh, %scevgep558
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx574 = or i1 %conflict.rdx570, %found.conflict573
  %n.vec576 = and i64 %wide.trip.count.i117.i, 2147483644 ; 3 uses
  %broadcast.splatinsert577 = insertelement <4 x float> poison, float %i.blm, i64 0
  %broadcast.splat578 = shufflevector <4 x float> %broadcast.splatinsert577, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert579 = insertelement <4 x float> poison, float %i.bln, i64 0
  %broadcast.splat580 = shufflevector <4 x float> %broadcast.splatinsert579, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n588 = icmp eq i64 %n.vec576, %wide.trip.count.i117.i
  br label %.preheader1.us.i118.i

._crit_edge11.us.i.i:                             ; preds = %scalar.ph511, %middle.block534
  %i.bng = add nuw nsw i32 %.09815.us.i.i, 1      ; 2 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %.010212.us.i.i, i64 512
  %i.bni = getelementptr inbounds nuw i8, ptr %.010013.us.i.i, i64 512
  %i.bnj = getelementptr inbounds nuw i8, ptr %.09914.us.i.i, i64 512
  %exitcond61.not.i.i = icmp eq i32 %i.bng, %i.bkr
  br i1 %exitcond61.not.i.i, label %.loopexit4.us.i.i, label %.preheader.us.i125.i, !llvm.loop !238

._crit_edge18.i.i:                                ; preds = %.loopexit4.us.i.i, %.lr.ph.i111.i
  %i.bnk = shl nuw nsw i32 %i.bkr, 7
  %i.bnl = zext nneg i32 %i.bnk to i64            ; 3 uses
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %.010837.i.i, i64 %i.bnl
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %.010740.i.i, i64 %i.bnl
  %i.bno = getelementptr inbounds nuw [4 x i8], ptr %.010643.i.i, i64 %i.bnl
  %indvars.iv.next79.i.i = add nuw nsw i64 %indvars.iv78.i.i, 1 ; 2 uses
  %exitcond82.not.i.i = icmp eq i64 %indvars.iv.next79.i.i, %wide.trip.count81.i.i
  br i1 %exitcond82.not.i.i, label %apply_complex_stereo.exit.i, label %.lr.ph.i111.i, !llvm.loop !239

bb.ec:                                            ; preds = %bb.dv
  %i.bnp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !269
  call void %i.bnq(ptr noundef %0, ptr noundef nonnull %3) #13, !inline_history !209
  br label %apply_complex_stereo.exit.i

apply_complex_stereo.exit.i:                      ; preds = %._crit_edge18.i.i, %bb.ec, %.lr.ph47.i.i, %bb.ea, %bb.dv, %bb.dp
  %i.bnr = getelementptr inbounds nuw i8, ptr %3, i64 9760
  %i.bns = getelementptr inbounds nuw i8, ptr %3, i64 5664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.bnr, ptr noundef nonnull align 16 dereferenceable(4096) %i.bns, i64 4096, i1 false)
  %i.bnt = getelementptr inbounds nuw i8, ptr %3, i64 50112
  %i.bnu = getelementptr inbounds nuw i8, ptr %3, i64 46016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.bnt, ptr noundef nonnull align 16 dereferenceable(4096) %i.bnu, i64 4096, i1 false)
  %i.bnv = getelementptr inbounds nuw i8, ptr %3, i64 102576
  %i.bnw = getelementptr inbounds nuw i8, ptr %3, i64 94384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.bnv, ptr noundef nonnull align 16 dereferenceable(4096) %i.bnw, i64 4096, i1 false)
  %i.bnx = getelementptr inbounds nuw i8, ptr %3, i64 106672
  %i.bny = getelementptr inbounds nuw i8, ptr %3, i64 98480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.bnx, ptr noundef nonnull align 16 dereferenceable(4096) %i.bny, i64 4096, i1 false)
  br label %.critedge.i244

.critedge.i244:                                   ; preds = %apply_complex_stereo.exit.i, %bb.db
  %i.bnz = getelementptr inbounds nuw i8, ptr %3, i64 88642
  %i.boa = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ei, %.critedge.i244
  %indvars.iv146.i = phi i64 [ 0, %.critedge.i244 ], [ %indvars.iv.next147.i, %bb.ei ] ; 2 uses
  %i.bob = getelementptr inbounds nuw [40352 x i8], ptr %i.c, i64 %indvars.iv146.i ; 5 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 992 ; 2 uses
  %i.bod = load i32, ptr %i.boc, align 16, !tbaa !242
  %.not87.i = icmp eq i32 %i.bod, 0
  br i1 %.not87.i, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  br i1 %i.kt, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.boe = load i8, ptr %i.bnz, align 2, !tbaa !247
  %.not88.i = icmp eq i8 %i.boe, 0
  br i1 %.not88.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.bof = load ptr, ptr %i.boa, align 8, !tbaa !259
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bob, i64 5520
  call void %i.bof(ptr noundef nonnull %i.bog, ptr noundef nonnull %i.boc, ptr noundef nonnull %i.bob, i32 noundef 1) #13, !inline_history !209
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ed
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bob, i64 168
  %i.boi = load i8, ptr %i.boh, align 8, !tbaa !248
  %.not89.i = icmp eq i8 %i.boi, 0
  br i1 %.not89.i, label %.sink.split.i245, label %bb.ei

.sink.split.i245:                                 ; preds = %bb.eh
  %i.boj = load i32, ptr %i.awy, align 4, !tbaa !92
  %.not90.i = icmp eq i32 %i.boj, 0
  %spec.select.v = select i1 %.not90.i, i64 88, i64 96
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.v
  %.sink.i246 = load ptr, ptr %spec.select, align 8, !tbaa !270
  call void %.sink.i246(ptr noundef nonnull %0, ptr noundef nonnull %i.bob) #13, !inline_history !209
  br label %bb.ei

bb.ei:                                            ; preds = %.sink.split.i245, %bb.eh
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, %.0177256
  br i1 %exitcond150.not.i, label %spectrum_decode.exit, label %bb.ed, !llvm.loop !240

spectrum_decode.exit:                             ; preds = %bb.ei
  %i.bok = getelementptr inbounds nuw i8, ptr %0, i64 23272
  %i.bol = load i32, ptr %i.bok, align 8, !tbaa !271
  %i.bom = icmp sgt i32 %i.bol, 0
  br i1 %i.bom, label %bb.ej, label %decode_usac_stereo_info.exit

bb.ej:                                            ; preds = %spectrum_decode.exit
  %i.bon = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.boo = load ptr, ptr %i.bon, align 8, !tbaa !272
  %i.bop = icmp eq i32 %6, 2
  %i.boq = zext i1 %i.bop to i32
  %i.bor = getelementptr inbounds nuw i8, ptr %3, i64 40488
  %i.bos = load ptr, ptr %i.bor, align 8, !tbaa !41
  %i.bot = getelementptr inbounds nuw i8, ptr %3, i64 80840
  %i.bou = load ptr, ptr %i.bot, align 8, !tbaa !41
  call void %i.boo(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %i.boq, i32 noundef 0, ptr noundef %i.bos, ptr noundef %i.bou) #13
  br label %decode_usac_stereo_info.exit

decode_usac_stereo_info.exit:                     ; preds = %bb.bm, %bb.ay, %bb.ae, %bb.an, %decode_usac_scale_factors.exit, %.lr.ph.i.17, %bb.ar, %bb.cr, %bb.ci, %bb.ce, %bb.cc, %bb.y, %bb.u, %bb.o, %bb.n, %spectrum_decode.exit, %bb.ej, %bb.bp
  %.9 = phi i32 [ -1094995529, %decode_usac_scale_factors.exit ], [ 0, %spectrum_decode.exit ], [ %i.atg, %bb.cr ], [ %i.aed, %bb.bp ], [ 0, %bb.ej ], [ %i.fu, %bb.o ], [ %i.fs, %bb.n ], [ %i.jp, %bb.y ], [ -1163346256, %bb.u ], [ %i.alb, %bb.cc ], [ %i.alk, %bb.ce ], [ %i.amx, %bb.ci ], [ -1163346256, %bb.ar ], [ -22, %.lr.ph.i.17 ], [ %i.ud, %bb.ay ], [ %i.adv, %bb.bm ], [ %i.qj, %bb.an ], [ %i.ld, %bb.ae ]
  ret i32 %.9
}

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #6

declare i32 @av_channel_layout_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decode_loudness_info(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 27 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %i.e = load ptr, ptr %1, align 8, !tbaa !40
  %i.f = lshr i32 %i.b, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 1, !tbaa !41
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = and i32 %i.b, 7
  %i.l = shl i32 %i.j, %i.k
  %i.m = lshr i32 %i.l, 26
  %i.n = add i32 %i.b, 6
  %i.o = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.n)
  store i32 %i.o, ptr %i.a, align 8, !tbaa !38
  %i.p = load i32, ptr %0, align 2
  %i.q = and i32 %i.p, -64
  %i.r = or disjoint i32 %i.q, %i.m               ; 2 uses
  store i32 %i.r, ptr %0, align 2
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.t = load i32, ptr %i.c, align 8, !tbaa !39
  %i.u = load ptr, ptr %1, align 8, !tbaa !40
  %i.v = lshr i32 %i.s, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 1, !tbaa !41
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = and i32 %i.s, 7
  %i.ab = shl i32 %i.z, %i.aa
  %i.ac = add i32 %i.s, 6
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.ac)
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !38
  %i.ae = lshr i32 %i.ab, 18
  %i.af = and i32 %i.ae, 16128
  %.pre = load i32, ptr %0, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ag = phi i32 [ %.pre, %bb.b ], [ %i.r, %bb.a ]
  %i.ah = phi i32 [ %i.af, %bb.b ], [ 0, %bb.a ]
  %i.ai = and i32 %i.ag, -16129
  %i.aj = or disjoint i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %0, align 2
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.al = load i32, ptr %i.c, align 8, !tbaa !39
  %i.am = load ptr, ptr %1, align 8, !tbaa !40
  %i.an = lshr i32 %i.ak, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !41
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
end_hunk_0
