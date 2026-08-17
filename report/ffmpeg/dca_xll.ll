inline.NumInlined: 155
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@parse_frame:bb.a
  %i.buz = add i32 %i.bup, %i.bjz
  %i.bva = tail call i32 @llvm.umin.i32(i32 %i.buf, i32 %i.buz)
  %i.bvb = or i32 %i.buy, %i.buq
  store i32 %i.bva, ptr %i.h, align 16, !tbaa !194
  %i.bvc = shl i32 %i.bvb, %.pre.i.i.i
  %i.bvd = ashr exact i32 %i.bvc, %.pre.i.i.i
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bnx, i64 28
  store i32 %i.bvd, ptr %i.bve, align 4, !tbaa !76
  %indvars.iv.next315.i.i = add nuw nsw i64 %indvars.iv314.i.i, 1 ; 2 uses
  %exitcond318.not.i.i = icmp eq i64 %indvars.iv.next315.i.i, %wide.trip.count326.i.i
  br i1 %exitcond318.not.i.i, label %.loopexit257.i.i, label %.preheader.i75.i, !llvm.loop !253

.loopexit257.i.i:                                 ; preds = %.preheader.i75.i, %.preheader.us.i.i, %bb.gw, %._crit_edge.i72.i
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.axp, i64 636
  %i.bvg = load i32, ptr %i.bvf, align 4, !tbaa !221 ; 2 uses
  %.not207.i.i = icmp eq i32 %i.bvg, 0
  %.val8.i239.i.pre144.i = load i32, ptr %i.h, align 16, !tbaa !194 ; 2 uses
  br i1 %.not207.i.i, label %.loopexit.i73.i, label %bb.gx

bb.gx:                                            ; preds = %.loopexit257.i.i
  %i.bvh = shl nsw i32 %i.bvg, 3
  %i.bvi = sub nsw i32 %i.axi, %i.bvh             ; 4 uses
  %i.bvj = icmp slt i32 %i.bvi, %.val8.i239.i.pre144.i
  br i1 %i.bvj, label %.loopexit.sink.split.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.bvk = load i32, ptr %i.e, align 4, !tbaa !192
  %i.bvl = icmp sgt i32 %i.bvi, %i.bvk
  br i1 %i.bvl, label %.loopexit.sink.split.i, label %ff_dca_seek_bits.exit.i.i

ff_dca_seek_bits.exit.i.i:                        ; preds = %bb.gy
  %i.bvm = load i32, ptr %i.g, align 8, !tbaa !193
  %i.bvn = icmp slt i32 %i.bvi, 0
  %i.bvo = tail call i32 @llvm.smin.i32(i32 %i.bvi, i32 %i.bvm)
  %.0.i.i.v.i.i.i59 = select i1 %i.bvn, i32 0, i32 %i.bvo ; 2 uses
  store i32 %.0.i.i.v.i.i.i59, ptr %i.h, align 16, !tbaa !194
  %i.bvp = load i32, ptr %.1111.i, align 16, !tbaa !69 ; 2 uses
  %i.bvq = icmp sgt i32 %i.bvp, 0
  br i1 %i.bvq, label %.lr.ph282.i.i, label %.loopexit.i73.i

.lr.ph282.i.i:                                    ; preds = %ff_dca_seek_bits.exit.i.i
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.axp, i64 640
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.axp, i64 768
  br label %bb.gz

bb.gz:                                            ; preds = %get_array.exit.i.i, %.lr.ph282.i.i
  %i.bvt = phi i32 [ %i.bvp, %.lr.ph282.i.i ], [ %i.bws, %get_array.exit.i.i ] ; 2 uses
  %indvars.iv328.i.i = phi i64 [ 0, %.lr.ph282.i.i ], [ %indvars.iv.next329.i.i, %get_array.exit.i.i ] ; 3 uses
  %i.bvu = getelementptr inbounds nuw [4 x i8], ptr %i.bvr, i64 %indvars.iv328.i.i
  %i.bvv = load i32, ptr %i.bvu, align 4, !tbaa !76 ; 3 uses
  %.not210.i.i = icmp eq i32 %i.bvv, 0
  br i1 %.not210.i.i, label %get_array.exit.i.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bvw = getelementptr inbounds nuw [8 x i8], ptr %i.bvs, i64 %indvars.iv328.i.i
  %i.bvx = load ptr, ptr %i.bvw, align 8, !tbaa !79
  %i.bvy = load i32, ptr %i.ek, align 16, !tbaa !200 ; 3 uses
  %i.bvz = mul nsw i32 %i.bvy, %.054118.i
  %i.bwa = sext i32 %i.bvz to i64
  %i.bwb = getelementptr inbounds [4 x i8], ptr %i.bvx, i64 %i.bwa
  %i.bwc = icmp sgt i32 %i.bvy, 0
  br i1 %i.bwc, label %.lr.ph.i234.i.i, label %get_array.exit.i.i

.lr.ph.i234.i.i:                                  ; preds = %bb.ha
  %i.bwd = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.bwe = sub nsw i32 32, %i.bvv
  %wide.trip.count.i235.i.i = zext nneg i32 %i.bvy to i64
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hb, %.lr.ph.i234.i.i
  %indvars.iv.i236.i.i = phi i64 [ 0, %.lr.ph.i234.i.i ], [ %indvars.iv.next.i237.i.i, %bb.hb ] ; 2 uses
  %i.bwf = load i32, ptr %i.h, align 16, !tbaa !194 ; 3 uses
  %i.bwg = load i32, ptr %i.g, align 8, !tbaa !193
  %i.bwh = lshr i32 %i.bwf, 3
  %i.bwi = zext nneg i32 %i.bwh to i64
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwd, i64 %i.bwi
  %i.bwk = load i32, ptr %i.bwj, align 1, !tbaa !195
  %i.bwl = tail call i32 @llvm.bswap.i32(i32 %i.bwk)
  %i.bwm = and i32 %i.bwf, 7
  %i.bwn = shl i32 %i.bwl, %i.bwm
  %i.bwo = lshr i32 %i.bwn, %i.bwe
  %i.bwp = add i32 %i.bwf, %i.bvv
  %i.bwq = tail call i32 @llvm.umin.i32(i32 %i.bwg, i32 %i.bwp)
  store i32 %i.bwq, ptr %i.h, align 16, !tbaa !194
  %i.bwr = getelementptr inbounds nuw [4 x i8], ptr %i.bwb, i64 %indvars.iv.i236.i.i
  store i32 %i.bwo, ptr %i.bwr, align 4, !tbaa !76
  %indvars.iv.next.i237.i.i = add nuw nsw i64 %indvars.iv.i236.i.i, 1 ; 2 uses
  %exitcond.not.i238.i.i = icmp eq i64 %indvars.iv.next.i237.i.i, %wide.trip.count.i235.i.i
  br i1 %exitcond.not.i238.i.i, label %get_array.exit.loopexit.i.i, label %bb.hb, !llvm.loop !254

get_array.exit.loopexit.i.i:                      ; preds = %bb.hb
  %.pre336.i.i = load i32, ptr %.1111.i, align 16, !tbaa !69
  br label %get_array.exit.i.i

get_array.exit.i.i:                               ; preds = %get_array.exit.loopexit.i.i, %bb.ha, %bb.gz
  %i.bws = phi i32 [ %.pre336.i.i, %get_array.exit.loopexit.i.i ], [ %i.bvt, %bb.ha ], [ %i.bvt, %bb.gz ] ; 2 uses
  %indvars.iv.next329.i.i = add nuw nsw i64 %indvars.iv328.i.i, 1 ; 2 uses
  %i.bwt = sext i32 %i.bws to i64
  %i.bwu = icmp slt i64 %indvars.iv.next329.i.i, %i.bwt
  br i1 %i.bwu, label %bb.gz, label %.loopexit.i73.loopexit.i, !llvm.loop !255

.loopexit.i73.loopexit.i:                         ; preds = %get_array.exit.i.i
  %.val8.i239.i.pre.i = load i32, ptr %i.h, align 16, !tbaa !194
  br label %.loopexit.i73.i

.loopexit.i73.i:                                  ; preds = %.loopexit.i73.loopexit.i, %ff_dca_seek_bits.exit.i.i, %.loopexit257.i.i
  %.val8.i239.i.i = phi i32 [ %.val8.i239.i.pre.i, %.loopexit.i73.loopexit.i ], [ %.0.i.i.v.i.i.i59, %ff_dca_seek_bits.exit.i.i ], [ %.val8.i239.i.pre144.i, %.loopexit257.i.i ]
  %i.bwv = icmp slt i32 %i.axi, %.val8.i239.i.i
  br i1 %i.bwv, label %.loopexit.sink.split.i, label %bb.hc

bb.hc:                                            ; preds = %.loopexit.i73.i
  %i.bww = load i32, ptr %i.e, align 4, !tbaa !192
  %i.bwx = icmp sgt i32 %i.axi, %i.bww
  br i1 %i.bwx, label %.loopexit.sink.split.i, label %chs_parse_band_data.exit.i

.loopexit.sink.split.i:                           ; preds = %bb.gk, %bb.hc, %.loopexit.i73.i, %bb.gy, %bb.gx
  %.str.39.sink.i = phi ptr [ @.str.39, %.loopexit.i73.i ], [ @.str.39, %bb.gx ], [ @.str.39, %bb.gy ], [ @.str.39, %bb.hc ], [ @.str.38, %bb.gk ]
  %i.bwy = load ptr, ptr %0, align 16, !tbaa !28
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bwy, i32 noundef 16, ptr noundef nonnull %.str.39.sink.i) #12
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.fy, %bb.gc, %bb.gu, %.loopexit.sink.split.i
  %i.bwz = load ptr, ptr %0, align 16, !tbaa !28
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwz, i64 528
  %i.bxb = load i32, ptr %i.bxa, align 8, !tbaa !196
  %i.bxc = and i32 %i.bxb, 8
  %.not.i60 = icmp eq i32 %i.bxc, 0
  br i1 %.not.i60, label %bb.hd, label %parse_common_header.exit.thread

bb.hd:                                            ; preds = %.loopexit.i
  tail call fastcc void @chs_clear_band_data(ptr noundef nonnull %0, ptr noundef nonnull %.1111.i, i32 noundef %i.awv, i32 noundef %.054118.i) #13
  br label %chs_parse_band_data.exit.i

chs_parse_band_data.exit.i:                       ; preds = %bb.hd, %bb.hc, %bb.fg
  %i.bxd = load i32, ptr %i.g, align 8, !tbaa !193
  %i.bxe = icmp slt i32 %i.axi, 0
  %i.bxf = tail call i32 @llvm.smin.i32(i32 %i.axi, i32 %i.bxd)
  %.0.i.i.v.i = select i1 %i.bxe, i32 0, i32 %i.bxf ; 2 uses
  store i32 %.0.i.i.v.i, ptr %i.h, align 16, !tbaa !194
  %.pre.i56 = load i32, ptr %i.dj, align 4, !tbaa !58
  br label %bb.he

bb.he:                                            ; preds = %chs_parse_band_data.exit.i, %bb.fd
  %i.bxg = phi i32 [ %.pre.i56, %chs_parse_band_data.exit.i ], [ %i.axb, %bb.fd ] ; 4 uses
  %i.bxh = phi i32 [ %.0.i.i.v.i, %chs_parse_band_data.exit.i ], [ %.pre.i.i55, %bb.fd ] ; 2 uses
  %.3.i = phi i32 [ %i.axi, %chs_parse_band_data.exit.i ], [ %.252109.i, %bb.fd ] ; 2 uses
  %i.bxi = getelementptr inbounds nuw i8, ptr %.2110.i, i64 4 ; 2 uses
  %i.bxj = add nuw nsw i32 %.156108.i, 1          ; 2 uses
  %i.bxk = getelementptr inbounds nuw i8, ptr %.1111.i, i64 2864
  %i.bxl = icmp slt i32 %i.bxj, %i.bxg
  br i1 %i.bxl, label %bb.fd, label %._crit_edge116.loopexit.i, !llvm.loop !256

._crit_edge116.loopexit.i:                        ; preds = %bb.he
  %.pre146.i = load i32, ptr %i.dw, align 8, !tbaa !198
  br label %._crit_edge116.i

._crit_edge116.i:                                 ; preds = %._crit_edge116.loopexit.i, %.preheader.i52
  %i.bxm = phi i32 [ %i.aww, %.preheader.i52 ], [ %.pre146.i, %._crit_edge116.loopexit.i ] ; 4 uses
  %i.bxn = phi i32 [ %i.awx, %.preheader.i52 ], [ %i.bxg, %._crit_edge116.loopexit.i ]
  %i.bxo = phi i32 [ %i.awy, %.preheader.i52 ], [ %i.bxh, %._crit_edge116.loopexit.i ] ; 2 uses
  %i.bxp = phi i32 [ %i.awz, %.preheader.i52 ], [ %i.bxg, %._crit_edge116.loopexit.i ]
  %.252.lcssa.i = phi i32 [ %.151119.i, %.preheader.i52 ], [ %.3.i, %._crit_edge116.loopexit.i ] ; 2 uses
  %.2.lcssa.i53 = phi ptr [ %.149120.i, %.preheader.i52 ], [ %i.bxi, %._crit_edge116.loopexit.i ] ; 2 uses
  %i.bxq = add nuw nsw i32 %.054118.i, 1          ; 2 uses
  %i.bxr = icmp slt i32 %i.bxq, %i.bxm
  br i1 %i.bxr, label %.preheader.i52, label %._crit_edge121.loopexit.i, !llvm.loop !257

._crit_edge121.loopexit.i:                        ; preds = %._crit_edge116.i
  %.pre147.i = load i32, ptr %i.gy, align 4, !tbaa !136
  br label %._crit_edge121.i

._crit_edge121.i:                                 ; preds = %._crit_edge121.loopexit.i, %.preheader.lr.ph.i51, %.preheader89.i
  %i.bxs = phi i32 [ %i.awn, %.preheader89.i ], [ %.pre147.i, %._crit_edge121.loopexit.i ], [ %i.awn, %.preheader.lr.ph.i51 ] ; 2 uses
  %i.bxt = phi i32 [ %i.awo, %.preheader89.i ], [ %i.bxm, %._crit_edge121.loopexit.i ], [ %i.awo, %.preheader.lr.ph.i51 ]
  %i.bxu = phi i32 [ %i.awp, %.preheader89.i ], [ %i.bxo, %._crit_edge121.loopexit.i ], [ %i.awp, %.preheader.lr.ph.i51 ] ; 2 uses
  %i.bxv = phi i32 [ %i.awq, %.preheader89.i ], [ %i.bxm, %._crit_edge121.loopexit.i ], [ %i.awq, %.preheader.lr.ph.i51 ]
  %.151.lcssa.i = phi i32 [ %.050127.i, %.preheader89.i ], [ %.252.lcssa.i, %._crit_edge121.loopexit.i ], [ %.050127.i, %.preheader.lr.ph.i51 ]
  %.149.lcssa.i = phi ptr [ %.048128.i, %.preheader89.i ], [ %.2.lcssa.i53, %._crit_edge121.loopexit.i ], [ %.048128.i, %.preheader.lr.ph.i51 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bxw = sext i32 %i.bxs to i64
  %i.bxx = icmp slt i64 %indvars.iv.next.i, %i.bxw
  br i1 %i.bxx, label %.preheader89.i, label %parse_band_data.exit, !llvm.loop !258

parse_band_data.exit:                             ; preds = %._crit_edge121.i, %._crit_edge.i49.parse_band_data.exit_crit_edge, %.preheader89.lr.ph.i
  %.val32 = phi i32 [ %.val32.pre, %._crit_edge.i49.parse_band_data.exit_crit_edge ], [ %.val32.pre419, %.preheader89.lr.ph.i ], [ %i.bxu, %._crit_edge121.i ] ; 6 uses
  %i.bxy = load i32, ptr %i.cw, align 16, !tbaa !24 ; 2 uses
  %i.bxz = shl nsw i32 %i.bxy, 3                  ; 4 uses
  %i.bya = add nsw i32 %.val32, 31
  %i.byb = and i32 %i.bya, -32
  %i.byc = icmp sgt i32 %i.bxz, %i.byb
  br i1 %i.byc, label %bb.hf, label %bb.hi

bb.hf:                                            ; preds = %parse_band_data.exit
  %i.byd = sub nsw i32 0, %.val32                 ; 2 uses
  %i.bye = and i32 %i.byd, 31
  %i.byf = load i32, ptr %i.g, align 8, !tbaa !193 ; 2 uses
  %i.byg = sub nsw i32 %i.byf, %.val32
  %i.byh = icmp slt i32 %.val32, -31
  %..i.i74 = tail call i32 @llvm.smin.i32(i32 %i.bye, i32 %i.byg)
  %.0.i.i75 = select i1 %i.byh, i32 %i.byd, i32 %..i.i74
  %i.byi = add nsw i32 %.0.i.i75, %.val32         ; 7 uses
  store i32 %i.byi, ptr %i.h, align 16, !tbaa !194
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  %i.byj = lshr i32 %i.byi, 3
  %i.byk = zext nneg i32 %i.byj to i64
  %i.byl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.byk
  %i.bym = load i32, ptr %i.byl, align 1, !tbaa !195
  %i.byn = tail call i32 @llvm.bswap.i32(i32 %i.bym)
  %i.byo = and i32 %i.byi, 7
  %i.byp = shl i32 %i.byn, %i.byo
  %i.byq = and i32 %i.byp, -65536
  %i.byr = add i32 %i.byi, 16
  %i.bys = tail call i32 @llvm.umin.i32(i32 %i.byf, i32 %i.byr) ; 2 uses
  %i.byt = lshr i32 %i.bys, 3
  %i.byu = zext nneg i32 %i.byt to i64
  %i.byv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.byu
  %i.byw = load i32, ptr %i.byv, align 1, !tbaa !195
  %i.byx = tail call i32 @llvm.bswap.i32(i32 %i.byw)
  %i.byy = and i32 %i.bys, 7
  %i.byz = shl i32 %i.byx, %i.byy
  %i.bza = lshr i32 %i.byz, 16
  %i.bzb = or disjoint i32 %i.bza, %i.byq         ; 2 uses
  %i.bzc = icmp eq i32 %i.bzb, 33556560
  br i1 %i.bzc, label %4, label %bb.hg

4:                                                ; preds = %bb.hf
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8728
  store i32 1, ptr %5, align 8, !tbaa !148
  br label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  %.mask = and i32 %i.bzb, -2
  %i.bzd = icmp eq i32 %.mask, -247463728
  br i1 %i.bzd, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.bze = getelementptr inbounds nuw i8, ptr %0, i64 8732
  store i32 1, ptr %i.bze, align 4, !tbaa !146
  br label %bb.hi

bb.hi:                                            ; preds = %4, %bb.hh, %bb.hg, %parse_band_data.exit
  %.val8.i = phi i32 [ %i.byi, %4 ], [ %i.byi, %bb.hh ], [ %i.byi, %bb.hg ], [ %.val32, %parse_band_data.exit ]
  %i.bzf = icmp slt i32 %i.bxz, %.val8.i
  br i1 %i.bzf, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bzg = load i32, ptr %i.e, align 4, !tbaa !192
  %i.bzh = icmp sgt i32 %i.bxz, %i.bzg
  br i1 %i.bzh, label %bb.hk, label %ff_dca_seek_bits.exit

ff_dca_seek_bits.exit:                            ; preds = %bb.hj
  %i.bzi = load i32, ptr %i.g, align 8, !tbaa !193
  %i.bzj = icmp slt i32 %i.bxy, 0
  %i.bzk = tail call i32 @llvm.smin.i32(i32 %i.bxz, i32 %i.bzi)
  %.0.i.i.v.i76 = select i1 %i.bzj, i32 0, i32 %i.bzk
  store i32 %.0.i.i.v.i76, ptr %i.h, align 16, !tbaa !194
  br label %parse_common_header.exit.thread

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.bzl = load ptr, ptr %0, align 16, !tbaa !28
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bzl, i32 noundef 16, ptr noundef nonnull @.str) #12
  br label %parse_common_header.exit.thread

parse_common_header.exit.thread:                  ; preds = %bb.fb, %.lr.ph.i63, %.loopexit.i, %bb.ff, %bb.ej, %ff_dca_check_crc.exit.thread, %.critedge.i, %bb.ei, %parse_dmix_coeffs.exit, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.ao, %bb.as, %bb.bp, %bb.bj, %bb.bs, %bb.by, %bb.cn, %bb.cs, %bb.df, %bb.dk, %.thread346.i.i, %bb.dt, %ff_dca_check_crc.exit.thread.i.i, %bb.be, %bb.au, %bb.p, %bb.x, %bb.t, %bb.r, %bb.n, %bb.l, %bb.j, %ff_dca_check_crc.exit.thread.i, %bb.e, %bb.c, %ff_dca_seek_bits.exit, %bb.a, %bb.hk
  %.0 = phi i32 [ -1094995529, %bb.ei ], [ -1094995529, %bb.a ], [ 0, %ff_dca_seek_bits.exit ], [ -11, %bb.c ], [ -1163346256, %bb.au ], [ -1094995529, %bb.hk ], [ -1094995529, %bb.p ], [ -1094995529, %bb.x ], [ -1094995529, %bb.t ], [ -1094995529, %bb.r ], [ -1094995529, %bb.n ], [ -1163346256, %bb.l ], [ -1094995529, %bb.j ], [ -1094995529, %ff_dca_check_crc.exit.thread.i ], [ -1163346256, %bb.e ], [ -1094995529, %parse_dmix_coeffs.exit ], [ -1163346256, %bb.ab ], [ -1163346256, %bb.ad ], [ -1094995529, %bb.af ], [ -1163346256, %bb.ah ], [ -1163346256, %bb.aj ], [ -1163346256, %bb.al ], [ -1094995529, %bb.ao ], [ -1094995529, %bb.as ], [ -1163346256, %bb.bp ], [ -1094995529, %bb.bj ], [ -1163346256, %bb.bs ], [ -1163346256, %bb.by ], [ -1094995529, %bb.cn ], [ -1094995529, %bb.cs ], [ -1094995529, %bb.df ], [ -1094995529, %bb.dk ], [ -1094995529, %.thread346.i.i ], [ -1094995529, %bb.dt ], [ -1094995529, %ff_dca_check_crc.exit.thread.i.i ], [ -1163346256, %bb.be ], [ -12, %bb.ej ], [ -1094995529, %ff_dca_check_crc.exit.thread ], [ -1094995529, %.critedge.i ], [ -1094995529, %bb.ff ], [ -1094995529, %.loopexit.i ], [ -12, %.lr.ph.i63 ], [ -12, %bb.fb ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @av_crc(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @av_fast_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @chs_clear_band_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [832 x i8], ptr %i.a, i64 %i.b ; 4 uses
  %i.d = icmp slt i32 %3, 0                       ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !70
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 16, !tbaa !200 ; 2 uses
  %i.i = mul nsw i32 %i.h, %3
  %i.j = sext i32 %i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.025 = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ]   ; 2 uses
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.k = load i32, ptr %1, align 16, !tbaa !69
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.n = sext i32 %.0 to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 636
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.025
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 0, i64 %i.o, i1 false)
  %i.u = load i32, ptr %i.p, align 4, !tbaa !221
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.025
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %1, align 16, !tbaa !69
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.e, label %._crit_edge, !llvm.loop !259

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %i.ab = icmp slt i32 %3, 1
  %i.ac = icmp ne i32 %2, 0
  %or.cond = and i1 %i.ac, %i.ab
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.ad, i8 0, i64 256, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  br i1 %i.d, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i8 0, i64 64, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @get_linear_array(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.c = icmp slt i32 %3, 26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !191    ; 3 uses
  %i.g = add nsw i32 %3, -16                      ; 2 uses
  %i.h = sub nsw i32 48, %3
  %i.i = sub nsw i32 32, %3
  %wide.trip.count16 = zext nneg i32 %2 to i64    ; 2 uses
  br i1 %i.c, label %get_linear.exit.us, label %get_linear.exit

get_linear.exit.us:                               ; preds = %.lr.ph, %get_linear.exit.us
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %get_linear.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !194  ; 3 uses
  %i.k = load i32, ptr %i.e, align 8, !tbaa !193
  %i.l = lshr i32 %i.j, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.o = load i32, ptr %i.n, align 1, !tbaa !195
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = and i32 %i.j, 7
  %i.r = shl i32 %i.p, %i.q
  %i.s = lshr i32 %i.r, %i.i                      ; 2 uses
  %i.t = add i32 %i.j, %3
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.t)
  store i32 %i.u, ptr %i.d, align 8, !tbaa !194
  %i.v = lshr i32 %i.s, 1
  %i.w = and i32 %i.s, 1
  %i.x = sub nsw i32 0, %i.w
  %i.y = xor i32 %i.v, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv13
  store i32 %i.y, ptr %i.z, align 4, !tbaa !76
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1 ; 2 uses
  %exitcond17.not = icmp eq i64 %indvars.iv.next14, %wide.trip.count16
  br i1 %exitcond17.not, label %.loopexit, label %get_linear.exit.us, !llvm.loop !260

bb.b:                                             ; preds = %bb.a
  %i.aa = sext i32 %2 to i64
  %i.ab = shl nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.ab, i1 false)
  br label %.loopexit

get_linear.exit:                                  ; preds = %.lr.ph, %get_linear.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %get_linear.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !194 ; 3 uses
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !193 ; 2 uses
  %i.ae = lshr i32 %i.ac, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !195
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = and i32 %i.ac, 7
  %i.ak = shl i32 %i.ai, %i.aj
  %i.al = lshr i32 %i.ak, 16
  %i.am = add i32 %i.ac, 16
  %i.an = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.am) ; 4 uses
  store i32 %i.an, ptr %i.d, align 8, !tbaa !194
  %i.ao = shl i32 %i.al, %i.g
  %i.ap = lshr i32 %i.an, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !195
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = and i32 %i.an, 7
  %i.av = shl i32 %i.at, %i.au
  %i.aw = lshr i32 %i.av, %i.h
  %i.ax = add i32 %i.an, %i.g
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.ax)
  store i32 %i.ay, ptr %i.d, align 8, !tbaa !194
end_hunk_0
