Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowdec?download=true
inline.NumInlined: 37
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_frame:bb.a
bb.gf:                                            ; preds = %get_rac.exit184.us.i
  %i.bfr = load ptr, ptr %i.rm, align 8, !tbaa !62
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bfr, i32 noundef 16, ptr noundef nonnull @.str.16) #9
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %get_rac.exit184.us.i
  %.3.us.i = phi i32 [ 1, %bb.gf ], [ %i.bfq, %get_rac.exit184.us.i ] ; 2 uses
  %i.bfs = trunc i32 %.0123195.us.i to i16
  store i16 %i.bfs, ptr %.1145189.us.i, align 2, !tbaa !164
  %i.bft = trunc nuw i32 %.3.us.i to i16
  %i.bfu = getelementptr inbounds nuw i8, ptr %.1145189.us.i, i64 4
  %i.bfv = getelementptr inbounds nuw i8, ptr %.1145189.us.i, i64 2
  store i16 %i.bft, ptr %i.bfv, align 2, !tbaa !166
  br label %get_rac.exit.thread.us.i

get_rac.exit.thread.us.i:                         ; preds = %bb.gg, %bb.ft, %bb.fm, %bb.fl, %bb.fj, %bb.fi
  %.4155.us.i = phi i32 [ %.3154.us.i, %bb.gg ], [ %i.bdw, %bb.ft ], [ %.2153187.us.i, %bb.fi ], [ %.2153187.us.i, %bb.fj ], [ %.2153187.us.i, %bb.fl ], [ %.2153187.us.i, %bb.fm ] ; 2 uses
  %.2150.us.i = phi i32 [ %i.bdx, %bb.gg ], [ %.1149188.us.i, %bb.ft ], [ %.1149188.us.i, %bb.fi ], [ %.1149188.us.i, %bb.fj ], [ %.1149188.us.i, %bb.fl ], [ %.1149188.us.i, %bb.fm ] ; 2 uses
  %.3147.us.i = phi ptr [ %i.bfu, %bb.gg ], [ %.1145189.us.i, %bb.ft ], [ %i.bct, %bb.fi ], [ %.1145189.us.i, %bb.fj ], [ %.1145189.us.i, %bb.fl ], [ %.1145189.us.i, %bb.fm ] ; 3 uses
  %.4.us.i = phi i32 [ %.3.us.i, %bb.gg ], [ 0, %bb.ft ], [ %.1129.us.i, %bb.fi ], [ 0, %bb.fj ], [ 0, %bb.fl ], [ 0, %bb.fm ]
  %.1124.us.i = phi i32 [ %.0123195.us.i, %bb.gg ], [ %i.bdv, %bb.ft ], [ %.0123195.us.i, %bb.fi ], [ %.0123195.us.i, %bb.fj ], [ %.0123195.us.i, %bb.fl ], [ %.0123195.us.i, %bb.fm ]
  %i.bfw = add nsw i32 %.1124.us.i, 1             ; 2 uses
  %i.bfx = icmp slt i32 %i.bfw, %i.awr
  br i1 %i.bfx, label %.lr.ph.us.i, label %._crit_edge.us.i, !llvm.loop !167

bb.gh:                                            ; preds = %._crit_edge.us.i
  %i.bfy = and i32 %.0131205.us.i, 1
  %.not169.us.i = icmp eq i32 %i.bfy, 0
  br i1 %.not169.us.i, label %.loopexit.i, label %.preheader.us.i

bb.gi:                                            ; preds = %.preheader.us.i, %bb.gi
  %.4138.us.i = phi ptr [ %i.bgb, %bb.gi ], [ %.3137.us.i, %.preheader.us.i ] ; 2 uses
  %i.bfz = load i16, ptr %.4138.us.i, align 2, !tbaa !164
  %i.bga = sext i16 %i.bfz to i32
  %.not170.us.i = icmp eq i32 %i.bge, %i.bga
  %i.bgb = getelementptr inbounds nuw i8, ptr %.4138.us.i, i64 4 ; 3 uses
  br i1 %.not170.us.i, label %.loopexit.i, label %bb.gi, !llvm.loop !168

.loopexit.i:                                      ; preds = %bb.gi, %._crit_edge.us.i, %bb.gh
  %.5.us.i = phi ptr [ %.0132204.us.i, %bb.gh ], [ null, %._crit_edge.us.i ], [ %i.bgb, %bb.gi ]
  %.1133.us.i = phi ptr [ %.0132204.us.i, %bb.gh ], [ %.0132204.us.i, %._crit_edge.us.i ], [ %i.bgb, %bb.gi ]
  %i.bgc = add nuw nsw i32 %.0131205.us.i, 1      ; 2 uses
  %exitcond212.not.i = icmp eq i32 %i.bgc, %i.awt
  br i1 %exitcond212.not.i, label %unpack_coeffs.exit, label %.lr.ph207.split.us.i, !llvm.loop !169

.preheader.us.i:                                  ; preds = %bb.gh
  %i.bgd = load i32, ptr %i.axn, align 8, !tbaa !161
  %i.bge = add nsw i32 %i.bgd, 1
  br label %bb.gi

._crit_edge.us.i:                                 ; preds = %get_rac.exit.thread.us.i
  %i.bgf = getelementptr inbounds nuw i8, ptr %.3147.us.i, i64 4 ; 2 uses
  store i16 %i.axm, ptr %.3147.us.i, align 2, !tbaa !164
  %.not168.us.i = icmp eq ptr %.3137.us.i, null
  br i1 %.not168.us.i, label %.loopexit.i, label %bb.gh

.lr.ph207.split.i:                                ; preds = %.lr.ph207.i, %.loopexit235.i
  %.0131205.i = phi i32 [ %i.bgn, %.loopexit235.i ], [ 0, %.lr.ph207.i ] ; 2 uses
  %.0132204.i = phi ptr [ %.1133.i, %.loopexit235.i ], [ %i.awy, %.lr.ph207.i ] ; 3 uses
  %.0134203.i = phi ptr [ %.5.i, %.loopexit235.i ], [ %i.awy, %.lr.ph207.i ] ; 2 uses
  %.0139202.i = phi ptr [ %i.bgg, %.loopexit235.i ], [ %i.awv, %.lr.ph207.i ] ; 2 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %.0139202.i, i64 4 ; 2 uses
  store i16 %i.axm, ptr %.0139202.i, align 2, !tbaa !164
  %.not168.i = icmp eq ptr %.0134203.i, null
  br i1 %.not168.i, label %.loopexit235.i, label %bb.gj

bb.gj:                                            ; preds = %.lr.ph207.split.i
  %i.bgh = and i32 %.0131205.i, 1
  %.not169.i = icmp eq i32 %i.bgh, 0
  br i1 %.not169.i, label %.loopexit235.i, label %.preheader.i516

.preheader.i516:                                  ; preds = %bb.gj
  %i.bgi = load i32, ptr %i.axn, align 8, !tbaa !161
  %i.bgj = add nsw i32 %i.bgi, 1
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %.preheader.i516
  %.4138.i = phi ptr [ %i.bgm, %bb.gk ], [ %.0134203.i, %.preheader.i516 ] ; 2 uses
  %i.bgk = load i16, ptr %.4138.i, align 2, !tbaa !164
  %i.bgl = sext i16 %i.bgk to i32
  %.not170.i = icmp eq i32 %i.bgj, %i.bgl
  %i.bgm = getelementptr inbounds nuw i8, ptr %.4138.i, i64 4 ; 3 uses
  br i1 %.not170.i, label %.loopexit235.i, label %bb.gk, !llvm.loop !168

.loopexit235.i:                                   ; preds = %bb.gk, %bb.gj, %.lr.ph207.split.i
  %.5.i = phi ptr [ %.0132204.i, %bb.gj ], [ null, %.lr.ph207.split.i ], [ %i.bgm, %bb.gk ]
  %.1133.i = phi ptr [ %.0132204.i, %bb.gj ], [ %.0132204.i, %.lr.ph207.split.i ], [ %i.bgm, %bb.gk ]
  %i.bgn = add nuw nsw i32 %.0131205.i, 1         ; 2 uses
  %exitcond.not.i517 = icmp eq i32 %i.bgn, %i.awt
  br i1 %exitcond.not.i517, label %unpack_coeffs.exit, label %.lr.ph207.split.i, !llvm.loop !169

unpack_coeffs.exit:                               ; preds = %.loopexit235.i, %.loopexit.i, %.._crit_edge208_crit_edge.i
  %.pre-phi214.i = phi i16 [ %.pre213.i, %.._crit_edge208_crit_edge.i ], [ %i.axm, %.loopexit.i ], [ %i.axm, %.loopexit235.i ]
  %.0139.lcssa.i = phi ptr [ %i.awv, %.._crit_edge208_crit_edge.i ], [ %i.bgf, %.loopexit.i ], [ %i.bgg, %.loopexit235.i ]
  store i16 %.pre-phi214.i, ptr %.0139.lcssa.i, align 2, !tbaa !164
  %indvars.iv.next752 = add nuw nsw i64 %indvars.iv751, 1 ; 2 uses
  %exitcond754.not = icmp eq i64 %indvars.iv.next752, 4
  br i1 %exitcond754.not, label %bb.gl, label %bb.eh, !llvm.loop !170

bb.gl:                                            ; preds = %unpack_coeffs.exit
  %indvars.iv.next756 = add nuw nsw i64 %indvars.iv755, 1 ; 2 uses
  %i.bgo = load i32, ptr %i.ry, align 8, !tbaa !66 ; 2 uses
  %i.bgp = sext i32 %i.bgo to i64
  %i.bgq = icmp slt i64 %indvars.iv.next756, %i.bgp
  br i1 %i.bgq, label %bb.eg, label %._crit_edge664, !llvm.loop !171

._crit_edge664:                                   ; preds = %bb.gl, %.loopexit624
  %.lcssa631 = phi i32 [ %i.awi, %.loopexit624 ], [ %i.bgo, %bb.gl ]
  %i.bgr = load i32, ptr %i.wv, align 4, !tbaa !102
  %i.bgs = load i32, ptr %i.sr, align 8, !tbaa !57 ; 2 uses
  %i.bgt = shl i32 %i.bgr, %i.bgs                 ; 2 uses
  %i.bgu = lshr i32 16, %i.bgs                    ; 2 uses
  %.not369 = icmp eq i64 %indvars.iv795, 0        ; 3 uses
  br i1 %.not369, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %._crit_edge664
  %i.bgv = load i32, ptr %i.rv, align 8, !tbaa !69
  %i.bgw = lshr i32 %i.bgu, %i.bgv
  br label %bb.gn

bb.gn:                                            ; preds = %._crit_edge664, %bb.gm
  %i.bgx = phi i32 [ %i.bgw, %bb.gm ], [ %i.bgu, %._crit_edge664 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.bgy = load i32, ptr %i.ri, align 4, !tbaa !61
  call void @ff_spatial_idwt_buffered_init(ptr noundef nonnull %4, ptr noundef nonnull %i.tr, i32 noundef %i.ya, i32 noundef %.fr, i32 noundef 1, i32 noundef %i.bgy, i32 noundef %.lcssa631) #9
  %.not370696 = icmp slt i32 %i.bgt, 0
  br i1 %.not370696, label %._crit_edge702, label %.lr.ph701

.lr.ph701:                                        ; preds = %bb.gn
  %i.bgz = lshr i32 %i.bgx, 1                     ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.xz, i64 16 ; 4 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.xz, i64 40
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.xz, i64 24 ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.xz, i64 56 ; 6 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.xz, i64 52 ; 6 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.xz, i64 48 ; 4 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.xz, i64 64
  %i.bhi = icmp sgt i32 %i.ya, 0
  %wide.trip.count769 = zext i32 %i.ya to i64     ; 6 uses
  %i.bhj = trunc nuw nsw i64 %indvars.iv795 to i32 ; 4 uses
  %min.iters.check1018 = icmp ult i32 %i.ya, 4
  %min.iters.check1019 = icmp ult i32 %i.ya, 16
  %i.bhk = and i64 %wide.trip.count769, 12
  %n.vec1021 = and i64 %wide.trip.count769, 2147483632 ; 4 uses
  %cmp.n1028 = icmp eq i64 %n.vec1021, %wide.trip.count769
  %min.epilog.iters.check = icmp eq i64 %i.bhk, 0
  %n.vec1029 = and i64 %wide.trip.count769, 2147483644 ; 3 uses
  %cmp.n1033 = icmp eq i64 %n.vec1029, %wide.trip.count769
  br label %bb.go

.loopexit:                                        ; preds = %.lr.ph695, %predict_slice_buffered.exit
  %exitcond794.not = icmp eq i32 %.0319697, %i.bgt
  br i1 %exitcond794.not, label %._crit_edge702, label %bb.go, !llvm.loop !172

bb.go:                                            ; preds = %.lr.ph701, %.loopexit
  %.0316699 = phi i32 [ 0, %.lr.ph701 ], [ %.2, %.loopexit ] ; 4 uses
  %.0317698 = phi i32 [ 0, %.lr.ph701 ], [ %.1318.lcssa, %.loopexit ] ; 3 uses
  %.0319697 = phi i32 [ 0, %.lr.ph701 ], [ %i.bhm, %.loopexit ] ; 13 uses
  %i.bhl = mul nsw i32 %.0319697, %i.bgx          ; 4 uses
  %i.bhm = add nuw i32 %.0319697, 1               ; 3 uses
  %i.bhn = mul nsw i32 %i.bhm, %i.bgx             ; 4 uses
  %i.bho = load i32, ptr %i.vl, align 8, !tbaa !55
  %.not371 = icmp eq i32 %i.bho, 0
  br i1 %.not371, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %bb.go
  %i.bhp = load ptr, ptr %i.rm, align 8, !tbaa !62
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 524
  %i.bhr = load i32, ptr %i.bhq, align 4, !tbaa !90
  %i.bhs = and i32 %i.bhr, 512
  %.not372 = icmp eq i32 %i.bhs, 0
  br i1 %.not372, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.bht = sub nsw i32 %i.bhl, %i.bgz
  %i.bhu = call i32 @llvm.smax.i32(i32 %i.bht, i32 0)
  %i.bhv = sub nsw i32 %i.bhn, %i.bgz
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %bb.go
  %.0314 = phi i32 [ %i.bhl, %bb.go ], [ %i.bhl, %bb.gp ], [ %i.bhu, %bb.gq ] ; 2 uses
  %.0313 = phi i32 [ %i.bhn, %bb.go ], [ %i.bhn, %bb.gp ], [ %i.bhv, %bb.gq ] ; 4 uses
  %i.bhw = load i32, ptr %i.ry, align 8, !tbaa !66
  %i.bhx = icmp sgt i32 %i.bhw, 0
  br i1 %i.bhx, label %.lr.ph669, label %.preheader620

.lr.ph669:                                        ; preds = %bb.gr
  %.not375 = icmp eq i32 %.0319697, 0
  br label %bb.gs

.preheader620:                                    ; preds = %bb.ig, %bb.gr
  %i.bhy = icmp slt i32 %.0317698, %.0313
  br i1 %i.bhy, label %.lr.ph671, label %._crit_edge672

bb.gs:                                            ; preds = %.lr.ph669, %bb.ig
  %indvars.iv762 = phi i64 [ 0, %.lr.ph669 ], [ %indvars.iv.next763, %bb.ig ] ; 6 uses
  %.1334.neg667 = phi i32 [ 0, %.lr.ph669 ], [ %.1334.neg, %bb.ig ] ; 2 uses
  %.not374 = icmp ne i64 %indvars.iv762, 0
  %i.bhz = getelementptr inbounds nuw [4640 x i8], ptr %i.bha, i64 %indvars.iv762
  %i.bia = add nuw nsw i32 %.1334.neg667, 3       ; 2 uses
  %i.bib = add nuw nsw i32 %.1334.neg667, 1
  %i.bic = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv762
  %i.bid = zext i1 %.not374 to i64
  %i.bie = trunc nuw nsw i64 %indvars.iv762 to i32 ; 2 uses
  %.pre821 = trunc nuw nsw i64 %indvars.iv762 to i32 ; 2 uses
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %dequantize_slice_buffered.exit
  %indvars.iv758 = phi i64 [ %i.bid, %bb.gs ], [ %indvars.iv.next759, %dequantize_slice_buffered.exit ] ; 4 uses
  %i.bif = getelementptr inbounds nuw [1160 x i8], ptr %i.bhz, i64 %indvars.iv758 ; 8 uses
  %.pre807 = load i32, ptr %i.ry, align 8, !tbaa !66 ; 5 uses
  br i1 %.not375, label %._crit_edge820, label %bb.gu

._crit_edge820:                                   ; preds = %bb.gt
  %.pre822 = sub nsw i32 %.pre807, %.pre821
  %.pre824 = add i32 %i.bia, %.pre807
  br label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.big = sub nsw i32 %.pre807, %i.bie           ; 2 uses
  %i.bih = ashr i32 %i.bhl, %i.big
  %i.bii = add i32 %i.bia, %.pre807               ; 2 uses
  %i.bij = add i32 %i.bii, %i.bih
  br label %bb.gv

bb.gv:                                            ; preds = %._crit_edge820, %bb.gu
  %.pre-phi825 = phi i32 [ %.pre824, %._crit_edge820 ], [ %i.bii, %bb.gu ]
  %.pre-phi823 = phi i32 [ %.pre822, %._crit_edge820 ], [ %i.big, %bb.gu ]
  %.pre-phi = phi i32 [ %.pre821, %._crit_edge820 ], [ %i.bie, %bb.gu ]
  %i.bik = phi i32 [ 0, %._crit_edge820 ], [ %i.bij, %bb.gu ] ; 3 uses
  %i.bil = ashr i32 %i.bhn, %.pre-phi823
  %i.bim = add i32 %.pre-phi825, %i.bil           ; 3 uses
  %i.bin = load i32, ptr %i.vl, align 8, !tbaa !55
  %.not376 = icmp eq i32 %i.bin, 0
  br i1 %.not376, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  %i.bio = load ptr, ptr %i.rm, align 8, !tbaa !62
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 524
  %i.biq = load i32, ptr %i.bip, align 4, !tbaa !90
  %i.bir = and i32 %i.biq, 512
  %.not377 = icmp eq i32 %i.bir, 0
  br i1 %.not377, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.bis = add i32 %i.bib, %.pre807
  %i.bit = lshr i32 %i.bgx, %i.bis                ; 2 uses
  %i.biu = sub nsw i32 %i.bik, %i.bit
  %spec.select = call i32 @llvm.smax.i32(i32 %i.biu, i32 0)
  %i.biv = sub nsw i32 %i.bim, %i.bit
  %i.biw = call i32 @llvm.smax.i32(i32 %i.biv, i32 0)
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %bb.gv
  %.0312 = phi i32 [ %i.bik, %bb.gv ], [ %i.bik, %bb.gw ], [ %spec.select, %bb.gx ] ; 3 uses
  %.0 = phi i32 [ %i.bim, %bb.gv ], [ %i.bim, %bb.gw ], [ %i.biw, %bb.gx ]
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bif, i64 12
  %i.biy = load i32, ptr %i.bix, align 4, !tbaa !162 ; 4 uses
  %.0312. = call i32 @llvm.smin.i32(i32 %i.biy, i32 %.0312) ; 7 uses
  %i.biz = call i32 @llvm.smin.i32(i32 %i.biy, i32 %.0) ; 7 uses
  %.not378 = icmp eq i32 %.0312., %i.biz
  br i1 %.not378, label %dequantize_slice_buffered.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.bja = icmp eq i64 %indvars.iv758, 0
  br i1 %i.bja, label %bb.ha, label %bb.hx

bb.ha:                                            ; preds = %bb.gz
  %i.bjb = add nsw i32 %i.biz, 1
  %.383 = call i32 @llvm.smin.i32(i32 %i.biy, i32 %i.bjb) ; 4 uses
  %.not379 = icmp eq i32 %.0312., 0
  %i.bjc = add nsw i32 %.0312., 1
  %i.bjd = select i1 %.not379, i32 0, i32 %i.bjc  ; 2 uses
  %i.bje = call i32 @llvm.smin.i32(i32 %i.biy, i32 %i.bjd) ; 5 uses
  %i.bjf = load i32, ptr %i.bhb, align 8, !tbaa !161 ; 3 uses
  %i.bjg = load ptr, ptr %i.bhc, align 8, !tbaa !173
  %i.bjh = load ptr, ptr %i.uc, align 8, !tbaa !96
  %i.bji = icmp eq ptr %i.bjg, %i.bjh
  br i1 %i.bji, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bjj = load i32, ptr %i.sn, align 8, !tbaa !59
  %i.bjk = load i32, ptr %i.sf, align 8, !tbaa !60 ; 2 uses
  %i.bjl = load i32, ptr %i.bhd, align 8, !tbaa !74
  %i.bjm = add i32 %i.bjl, %i.bjk
  %i.bjn = call i32 @llvm.smax.i32(i32 %i.bjm, i32 0)
  %i.bjo = call i32 @llvm.umin.i32(i32 %i.bjn, i32 512) ; 2 uses
  %i.bjp = and i32 %i.bjo, 31
  %i.bjq = zext nneg i32 %i.bjp to i64
  %i.bjr = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.bjq
  %i.bjs = load i8, ptr %i.bjr, align 1, !tbaa !53
  %i.bjt = zext i8 %i.bjs to i32
  %i.bju = lshr i32 %i.bjo, 5
  %i.bjv = shl nuw nsw i32 %i.bjt, %i.bju         ; 2 uses
  %i.bjw = mul nsw i32 %i.bjv, %i.bjj
  %i.bjx = ashr i32 %i.bjw, 3
  %i.bjy = icmp eq i32 %i.bjk, -128
  br i1 %i.bjy, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.055.i = phi i32 [ 2048, %bb.hc ], [ %i.bjv, %bb.hb ]
  %.054.i = phi i32 [ 0, %bb.hc ], [ %i.bjx, %bb.hb ]
  %.not.i518 = icmp eq i32 %i.bje, 0              ; 2 uses
  %i.bjz = load i32, ptr %i.c, align 16
  %spec.select609 = select i1 %.not.i518, i32 0, i32 %i.bjz ; 2 uses
  %i.bka = icmp slt i32 %i.bjd, %.383             ; 2 uses
  br i1 %i.bka, label %.lr.ph69.i, label %decode_subband_slice_buffered.exit

.lr.ph69.i:                                       ; preds = %bb.hd, %._crit_edge.i519
  %.067.i = phi i32 [ %i.blj, %._crit_edge.i519 ], [ %i.bje, %bb.hd ] ; 2 uses
  %.166.i = phi i32 [ %.2.lcssa.i, %._crit_edge.i519 ], [ %spec.select609, %bb.hd ] ; 2 uses
  %i.bkb = load ptr, ptr %i.tr, align 8, !tbaa !174
  %i.bkc = load i32, ptr %i.bhe, align 8, !tbaa !175
  %i.bkd = mul nsw i32 %i.bkc, %.067.i
  %i.bke = load i32, ptr %i.bhf, align 4, !tbaa !176
  %i.bkf = add nsw i32 %i.bkd, %i.bke             ; 2 uses
  %i.bkg = sext i32 %i.bkf to i64
  %i.bkh = getelementptr inbounds [8 x i8], ptr %i.bkb, i64 %i.bkg
  %i.bki = load ptr, ptr %i.bkh, align 8, !tbaa !177 ; 2 uses
  %.not57.i = icmp eq ptr %i.bki, null
  br i1 %.not57.i, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %.lr.ph69.i
  %i.bkj = call ptr @ff_slice_buffer_load_line(ptr noundef nonnull %i.tr, i32 noundef %i.bkf) #9
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.lr.ph69.i
  %i.bkk = phi ptr [ %i.bkj, %bb.he ], [ %i.bki, %.lr.ph69.i ]
  %i.bkl = load i32, ptr %i.bhg, align 8, !tbaa !178
  %i.bkm = sext i32 %i.bkl to i64
  %i.bkn = getelementptr inbounds [2 x i8], ptr %i.bkk, i64 %i.bkm ; 2 uses
  %i.bko = load i32, ptr %i.bhb, align 8, !tbaa !161
  %i.bkp = sext i32 %i.bko to i64
  %i.bkq = shl nsw i64 %i.bkp, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.bkn, i8 0, i64 %i.bkq, i1 false)
  %i.bkr = load ptr, ptr %i.bhh, align 8, !tbaa !163 ; 3 uses
  %.pn58.i = sext i32 %.166.i to i64              ; 2 uses
  %.052.in.in59.i = getelementptr inbounds [4 x i8], ptr %i.bkr, i64 %.pn58.i
  %.052.in60.i = load i16, ptr %.052.in.in59.i, align 2, !tbaa !164 ; 2 uses
  %.05261.i = sext i16 %.052.in60.i to i32
  %.262.i = add i32 %.166.i, 1                    ; 2 uses
  %i.bks = icmp sgt i32 %i.bjf, %.05261.i
  br i1 %i.bks, label %.lr.ph.preheader.i, label %._crit_edge.i519

.lr.ph.preheader.i:                               ; preds = %bb.hf
  %i.bkt = sext i32 %.262.i to i64
  br label %.lr.ph.i521

.lr.ph.i521:                                      ; preds = %.lr.ph.i521, %.lr.ph.preheader.i
  %indvars.iv.i522 = phi i64 [ %i.bkt, %.lr.ph.preheader.i ], [ %indvars.iv.next.i523, %.lr.ph.i521 ] ; 3 uses
  %.052.in64.i = phi i16 [ %.052.in60.i, %.lr.ph.preheader.i ], [ %.052.in.i, %.lr.ph.i521 ]
  %i.bku = phi i64 [ %.pn58.i, %.lr.ph.preheader.i ], [ %indvars.iv.i522, %.lr.ph.i521 ]
  %i.bkv = getelementptr inbounds [4 x i8], ptr %i.bkr, i64 %i.bku
  %.051.in.in.i = getelementptr inbounds nuw i8, ptr %i.bkv, i64 2
  %.051.in.i = load i16, ptr %.051.in.in.i, align 2, !tbaa !166
  %.051.i = zext i16 %.051.in.i to i32            ; 2 uses
  %i.bkw = lshr i32 %.051.i, 1
  %i.bkx = mul i32 %i.bkw, %.055.i
  %i.bky = add i32 %i.bkx, %.054.i
  %i.bkz = lshr i32 %i.bky, 11
  %i.bla = and i32 %.051.i, 1                     ; 2 uses
  %i.blb = sub nsw i32 0, %i.bla
  %i.blc = xor i32 %i.bkz, %i.blb
  %i.bld = add nsw i32 %i.blc, %i.bla
  %i.ble = trunc i32 %i.bld to i16
  %i.blf = sext i16 %.052.in64.i to i64
  %i.blg = getelementptr inbounds [2 x i8], ptr %i.bkn, i64 %i.blf
  store i16 %i.ble, ptr %i.blg, align 2, !tbaa !112
  %.052.in.in.i = getelementptr inbounds [4 x i8], ptr %i.bkr, i64 %indvars.iv.i522
  %.052.in.i = load i16, ptr %.052.in.in.i, align 2, !tbaa !164 ; 2 uses
  %.052.i = sext i16 %.052.in.i to i32
  %indvars.iv.next.i523 = add nsw i64 %indvars.iv.i522, 1 ; 2 uses
  %i.blh = icmp sgt i32 %i.bjf, %.052.i
  br i1 %i.blh, label %.lr.ph.i521, label %._crit_edge.loopexit.i524, !llvm.loop !179

._crit_edge.loopexit.i524:                        ; preds = %.lr.ph.i521
  %i.bli = trunc nsw i64 %indvars.iv.next.i523 to i32
  br label %._crit_edge.i519

._crit_edge.i519:                                 ; preds = %._crit_edge.loopexit.i524, %bb.hf
  %.2.lcssa.i = phi i32 [ %.262.i, %bb.hf ], [ %i.bli, %._crit_edge.loopexit.i524 ] ; 2 uses
  %i.blj = add i32 %.067.i, 1                     ; 2 uses
  %exitcond.not.i520 = icmp eq i32 %i.blj, %.383
  br i1 %exitcond.not.i520, label %decode_subband_slice_buffered.exit.loopexit, label %.lr.ph69.i, !llvm.loop !180

decode_subband_slice_buffered.exit.loopexit:      ; preds = %._crit_edge.i519
  %.pre808 = load i32, ptr %i.bhb, align 8, !tbaa !161
  br label %decode_subband_slice_buffered.exit

decode_subband_slice_buffered.exit:               ; preds = %decode_subband_slice_buffered.exit.loopexit, %bb.hd
  %i.blk = phi i32 [ %i.bjf, %bb.hd ], [ %.pre808, %decode_subband_slice_buffered.exit.loopexit ]
  %.1.lcssa.i = phi i32 [ %spec.select609, %bb.hd ], [ %.2.lcssa.i, %decode_subband_slice_buffered.exit.loopexit ]
  store i32 %.1.lcssa.i, ptr %i.c, align 16, !tbaa !99
  %.fr15.i = freeze i32 %i.blk                    ; 4 uses
  br i1 %.not.i518, label %bb.hj, label %bb.hg

bb.hg:                                            ; preds = %decode_subband_slice_buffered.exit
  %i.bll = load ptr, ptr %i.tr, align 8, !tbaa !174
end_hunk_0
