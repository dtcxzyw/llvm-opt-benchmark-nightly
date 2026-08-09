inline.NumInlined: 155
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@parse_frame:bb.a
._crit_edge252.i:                                 ; preds = %prescale_down_mix.exit.i, %._crit_edge.i
  %i.anh = getelementptr inbounds nuw i8, ptr %.val.i, i64 77944
  %i.ani = load i32, ptr %i.anh, align 8, !tbaa !141
  switch i32 %i.ani, label %bb.eh [
    i32 6, label %parse_sub_headers.exit
    i32 31, label %bb.ef
    i32 63, label %bb.ef
  ]

bb.ef:                                            ; preds = %._crit_edge252.i, %._crit_edge252.i
  %i.anj = load i32, ptr %.ptr73.i, align 16, !tbaa !69
  %i.ank = icmp slt i32 %i.anj, 5
  br i1 %i.ank, label %bb.eg, label %parse_sub_headers.exit

bb.eg:                                            ; preds = %bb.ef
  %i.anl = load i32, ptr %i.dj, align 4, !tbaa !58
  %i.anm = icmp sgt i32 %i.anl, 1
  %i.ann = select i1 %i.anm, i32 2, i32 1
  br label %parse_sub_headers.exit

bb.eh:                                            ; preds = %._crit_edge252.i
  %i.ano = load i32, ptr %i.dj, align 4, !tbaa !58
  br label %parse_sub_headers.exit

parse_sub_headers.exit:                           ; preds = %bb.ef, %bb.eg, %._crit_edge252.i, %bb.eh
  %.sink = phi i32 [ %i.ano, %bb.eh ], [ 1, %._crit_edge252.i ], [ 1, %bb.ef ], [ %i.ann, %bb.eg ]
  %i.anp = getelementptr inbounds nuw i8, ptr %0, i64 8696
  store i32 %.sink, ptr %i.anp, align 8, !tbaa !59
  %i.anq = load i32, ptr %i.gy, align 4, !tbaa !136
  %i.anr = load i32, ptr %i.dw, align 8, !tbaa !198
  %i.ans = mul nsw i32 %i.anr, %i.anq
  %i.ant = load i32, ptr %i.dj, align 4, !tbaa !58
  %i.anu = mul nsw i32 %i.ans, %i.ant             ; 3 uses
  %i.anv = icmp sgt i32 %i.anu, 1024
  br i1 %i.anv, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %parse_sub_headers.exit
  %i.anw = load ptr, ptr %0, align 16, !tbaa !28
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.anw, i32 noundef 16, ptr noundef nonnull @.str.34, i32 noundef %i.anu) #12
  br label %parse_common_header.exit.thread

bb.ej:                                            ; preds = %parse_sub_headers.exit
  %i.anx = getelementptr inbounds nuw i8, ptr %0, i64 8672 ; 3 uses
  %i.any = getelementptr inbounds nuw i8, ptr %0, i64 8680
  %i.anz = sext i32 %i.anu to i64
  %i.aoa = shl nsw i64 %i.anz, 2
  tail call void @av_fast_malloc(ptr noundef nonnull %i.anx, ptr noundef nonnull %i.any, i64 noundef %i.aoa) #12
  %i.aob = load ptr, ptr %i.anx, align 16, !tbaa !232 ; 2 uses
  %.not.i40 = icmp eq ptr %i.aob, null
  br i1 %.not.i40, label %parse_common_header.exit.thread, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %.val62.i = load i32, ptr %i.h, align 16, !tbaa !194 ; 6 uses
  %i.aoc = load i32, ptr %i.gy, align 4, !tbaa !136 ; 4 uses
  %i.aod = icmp sgt i32 %i.aoc, 0
  br i1 %i.aod, label %.preheader.lr.ph.i, label %._crit_edge79.i

.preheader.lr.ph.i:                               ; preds = %bb.ek
  %i.aoe = load i32, ptr %i.dw, align 8, !tbaa !198 ; 3 uses
  %i.aof = icmp sgt i32 %i.aoe, 0
  br i1 %i.aof, label %.preheader.i, label %._crit_edge79.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge74.i
  %i.aog = phi i32 [ %i.aqm, %._crit_edge74.i ], [ %i.aoc, %.preheader.lr.ph.i ] ; 2 uses
  %i.aoh = phi i32 [ %i.aqn, %._crit_edge74.i ], [ %i.aoe, %.preheader.lr.ph.i ] ; 3 uses
  %i.aoi = phi i32 [ %i.aqo, %._crit_edge74.i ], [ %i.aoe, %.preheader.lr.ph.i ] ; 3 uses
  %.04678.i = phi ptr [ %.1.lcssa.i, %._crit_edge74.i ], [ %i.aob, %.preheader.lr.ph.i ] ; 3 uses
  %.05276.i = phi i32 [ %i.aqp, %._crit_edge74.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %i.aoj = icmp sgt i32 %i.aoi, 0
  br i1 %i.aoj, label %.lr.ph73.i, label %._crit_edge74.i

.lr.ph73.i:                                       ; preds = %.preheader.i
  %i.aok = load i32, ptr %i.dj, align 4, !tbaa !58 ; 2 uses
  %i.aol = icmp sgt i32 %i.aok, 0
  br i1 %i.aol, label %.lr.ph73.split.i, label %._crit_edge74.i

.lr.ph73.split.i:                                 ; preds = %.lr.ph73.i, %._crit_edge.i42
  %i.aom = phi i32 [ %i.aqi, %._crit_edge.i42 ], [ %i.aoh, %.lr.ph73.i ]
  %i.aon = phi i32 [ %i.aqj, %._crit_edge.i42 ], [ %i.aok, %.lr.ph73.i ] ; 2 uses
  %.172.i = phi ptr [ %.2.lcssa.i, %._crit_edge.i42 ], [ %.04678.i, %.lr.ph73.i ] ; 2 uses
  %.05371.i = phi i32 [ %i.aqk, %._crit_edge.i42 ], [ 0, %.lr.ph73.i ]
  %i.aoo = icmp sgt i32 %i.aon, 0
  br i1 %i.aoo, label %.lr.ph.i43, label %._crit_edge.i42

.lr.ph.i43:                                       ; preds = %.lr.ph73.split.i, %bb.ep
  %.04570.i = phi ptr [ %i.aqf, %bb.ep ], [ %.ptr73.i, %.lr.ph73.split.i ] ; 2 uses
  %.269.i = phi ptr [ %i.aqd, %bb.ep ], [ %.172.i, %.lr.ph73.split.i ] ; 2 uses
  %.05168.i = phi i32 [ %i.aqe, %bb.ep ], [ 0, %.lr.ph73.split.i ]
  %i.aop = getelementptr inbounds nuw i8, ptr %.04570.i, i64 720
  %i.aoq = load i32, ptr %i.aop, align 16, !tbaa !108
  %i.aor = icmp sgt i32 %i.aoq, %.05276.i
  br i1 %i.aor, label %bb.el, label %bb.ep

bb.el:                                            ; preds = %.lr.ph.i43
  %i.aos = load i32, ptr %i.fc, align 4, !tbaa !202 ; 6 uses
  %.not.i.i46 = icmp eq i32 %i.aos, 0
  br i1 %.not.i.i46, label %get_bits_long.exit.thread.i48, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aot = icmp slt i32 %i.aos, 26
  %i.aou = load i32, ptr %i.h, align 16, !tbaa !194 ; 4 uses
  %i.aov = load i32, ptr %i.g, align 8, !tbaa !193 ; 3 uses
  %i.aow = load ptr, ptr %i.a, align 8, !tbaa !191 ; 2 uses
  %i.aox = lshr i32 %i.aou, 3
  %i.aoy = zext nneg i32 %i.aox to i64
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aow, i64 %i.aoy
  %i.apa = load i32, ptr %i.aoz, align 1, !tbaa !195
  %i.apb = tail call i32 @llvm.bswap.i32(i32 %i.apa)
  %i.apc = and i32 %i.aou, 7
  %i.apd = shl i32 %i.apb, %i.apc                 ; 2 uses
  br i1 %i.aot, label %bb.en, label %get_bits_long.exit.i47

bb.en:                                            ; preds = %bb.em
  %i.ape = sub nsw i32 32, %i.aos
  %i.apf = lshr i32 %i.apd, %i.ape
  %i.apg = add i32 %i.aou, %i.aos
  %i.aph = tail call i32 @llvm.umin.i32(i32 %i.aov, i32 %i.apg)
  store i32 %i.aph, ptr %i.h, align 16, !tbaa !194
  br label %get_bits_long.exit.thread.i48

get_bits_long.exit.i47:                           ; preds = %bb.em
  %i.api = lshr i32 %i.apd, 16
  %i.apj = add i32 %i.aou, 16
  %i.apk = tail call i32 @llvm.umin.i32(i32 %i.aov, i32 %i.apj) ; 4 uses
  store i32 %i.apk, ptr %i.h, align 16, !tbaa !194
  %i.apl = add nsw i32 %i.aos, -16                ; 2 uses
  %i.apm = shl i32 %i.api, %i.apl
  %i.apn = lshr i32 %i.apk, 3
  %i.apo = zext nneg i32 %i.apn to i64
  %i.app = getelementptr inbounds nuw i8, ptr %i.aow, i64 %i.apo
  %i.apq = load i32, ptr %i.app, align 1, !tbaa !195
  %i.apr = tail call i32 @llvm.bswap.i32(i32 %i.apq)
  %i.aps = and i32 %i.apk, 7
  %i.apt = shl i32 %i.apr, %i.aps
  %i.apu = sub nsw i32 48, %i.aos
  %i.apv = lshr i32 %i.apt, %i.apu
  %i.apw = add i32 %i.apk, %i.apl
  %i.apx = tail call i32 @llvm.umin.i32(i32 %i.aov, i32 %i.apw)
  store i32 %i.apx, ptr %i.h, align 16, !tbaa !194
  %i.apy = or i32 %i.apv, %i.apm                  ; 3 uses
  %i.apz = icmp slt i32 %i.apy, 0
  br i1 %i.apz, label %.critedge.i, label %get_bits_long.exit.thread.i48

get_bits_long.exit.thread.i48:                    ; preds = %get_bits_long.exit.i47, %bb.en, %bb.el
  %.0.i64.i = phi i32 [ %i.apy, %get_bits_long.exit.i47 ], [ 0, %bb.el ], [ %i.apf, %bb.en ] ; 3 uses
  %i.aqa = load i32, ptr %i.cw, align 16, !tbaa !24
  %.not58.i = icmp slt i32 %.0.i64.i, %i.aqa
  br i1 %.not58.i, label %bb.eo, label %.critedge.i

.critedge.i:                                      ; preds = %get_bits_long.exit.thread.i48, %get_bits_long.exit.i47
  %.0.i65.i = phi i32 [ %.0.i64.i, %get_bits_long.exit.thread.i48 ], [ %i.apy, %get_bits_long.exit.i47 ]
  %i.aqb = load ptr, ptr %0, align 16, !tbaa !28
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aqb, i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %.0.i65.i) #12
  br label %parse_common_header.exit.thread

bb.eo:                                            ; preds = %get_bits_long.exit.thread.i48
  %i.aqc = add nuw nsw i32 %.0.i64.i, 1
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %.lr.ph.i43
  %.0.i44 = phi i32 [ %i.aqc, %bb.eo ], [ 0, %.lr.ph.i43 ]
  %i.aqd = getelementptr inbounds nuw i8, ptr %.269.i, i64 4 ; 2 uses
  store i32 %.0.i44, ptr %.269.i, align 4, !tbaa !76
  %i.aqe = add nuw nsw i32 %.05168.i, 1           ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %.04570.i, i64 2864
  %i.aqg = load i32, ptr %i.dj, align 4, !tbaa !58 ; 2 uses
  %i.aqh = icmp slt i32 %i.aqe, %i.aqg
  br i1 %i.aqh, label %.lr.ph.i43, label %._crit_edge.loopexit.i, !llvm.loop !233

._crit_edge.loopexit.i:                           ; preds = %bb.ep
  %.pre.i45 = load i32, ptr %i.dw, align 8, !tbaa !198
  br label %._crit_edge.i42

._crit_edge.i42:                                  ; preds = %._crit_edge.loopexit.i, %.lr.ph73.split.i
  %i.aqi = phi i32 [ %i.aom, %.lr.ph73.split.i ], [ %.pre.i45, %._crit_edge.loopexit.i ] ; 4 uses
  %i.aqj = phi i32 [ %i.aon, %.lr.ph73.split.i ], [ %i.aqg, %._crit_edge.loopexit.i ]
  %.2.lcssa.i = phi ptr [ %.172.i, %.lr.ph73.split.i ], [ %i.aqd, %._crit_edge.loopexit.i ] ; 2 uses
  %i.aqk = add nuw nsw i32 %.05371.i, 1           ; 2 uses
  %i.aql = icmp slt i32 %i.aqk, %i.aqi
  br i1 %i.aql, label %.lr.ph73.split.i, label %._crit_edge74.loopexit.i, !llvm.loop !234

._crit_edge74.loopexit.i:                         ; preds = %._crit_edge.i42
  %.pre82.i = load i32, ptr %i.gy, align 4, !tbaa !136
  br label %._crit_edge74.i

._crit_edge74.i:                                  ; preds = %._crit_edge74.loopexit.i, %.lr.ph73.i, %.preheader.i
  %i.aqm = phi i32 [ %i.aog, %.preheader.i ], [ %.pre82.i, %._crit_edge74.loopexit.i ], [ %i.aog, %.lr.ph73.i ] ; 3 uses
  %i.aqn = phi i32 [ %i.aoh, %.preheader.i ], [ %i.aqi, %._crit_edge74.loopexit.i ], [ %i.aoh, %.lr.ph73.i ]
  %i.aqo = phi i32 [ %i.aoi, %.preheader.i ], [ %i.aqi, %._crit_edge74.loopexit.i ], [ %i.aoi, %.lr.ph73.i ]
  %.1.lcssa.i = phi ptr [ %.04678.i, %.preheader.i ], [ %.2.lcssa.i, %._crit_edge74.loopexit.i ], [ %.04678.i, %.lr.ph73.i ]
  %i.aqp = add nuw nsw i32 %.05276.i, 1           ; 2 uses
  %i.aqq = icmp slt i32 %i.aqp, %i.aqm
  br i1 %i.aqq, label %.preheader.i, label %._crit_edge79.loopexit.i, !llvm.loop !235

._crit_edge79.loopexit.i:                         ; preds = %._crit_edge74.i
  %.val61.pre.i = load i32, ptr %i.h, align 16, !tbaa !194
  br label %._crit_edge79.i

._crit_edge79.i:                                  ; preds = %._crit_edge79.loopexit.i, %.preheader.lr.ph.i, %bb.ek
  %i.aqr = phi i32 [ %i.aoc, %bb.ek ], [ %i.aqm, %._crit_edge79.loopexit.i ], [ %i.aoc, %.preheader.lr.ph.i ]
  %.val61.i = phi i32 [ %.val62.i, %bb.ek ], [ %.val61.pre.i, %._crit_edge79.loopexit.i ], [ %.val62.i, %.preheader.lr.ph.i ] ; 2 uses
  %4 = sub nsw i32 0, %.val61.i
  %5 = and i32 %4, 7
  %i.aqs = load i32, ptr %i.g, align 8, !tbaa !193 ; 2 uses
  %i.aqt = add i32 %5, %.val61.i
  %i.aqu = tail call i32 @llvm.umin.i32(i32 %i.aqs, i32 %i.aqt)
  %i.aqv = add i32 %i.aqu, 16
  %i.aqw = tail call i32 @llvm.umin.i32(i32 %i.aqs, i32 %i.aqv) ; 4 uses
  store i32 %i.aqw, ptr %i.h, align 16, !tbaa !194
  %i.aqx = load ptr, ptr %0, align 16, !tbaa !28  ; 3 uses
  %i.aqy = getelementptr i8, ptr %i.aqx, i64 32
  %.val.i41 = load ptr, ptr %i.aqy, align 8, !tbaa !29
  %i.aqz = getelementptr i8, ptr %i.aqx, i64 528
  %.val59.i = load i32, ptr %i.aqz, align 8, !tbaa !196
  %i.ara = and i32 %.val59.i, 65537
  %.not.i88 = icmp eq i32 %i.ara, 0
  br i1 %.not.i88, label %parse_navi_table.exit, label %bb.eq

bb.eq:                                            ; preds = %._crit_edge79.i
  %i.arb = or i32 %i.aqw, %.val62.i
  %i.arc = and i32 %i.arb, 7
  %i.ard = icmp ne i32 %i.arc, 0
  %i.are = icmp slt i32 %.val62.i, 0
  %or.cond.i89 = or i1 %i.are, %i.ard
  br i1 %or.cond.i89, label %ff_dca_check_crc.exit.thread, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.arf = load i32, ptr %i.e, align 4, !tbaa !192
  %i.arg = icmp sgt i32 %i.aqw, %i.arf
  br i1 %i.arg, label %ff_dca_check_crc.exit.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.arh = sub nsw i32 %i.aqw, %.val62.i          ; 2 uses
  %i.ari = icmp slt i32 %i.arh, 16
  br i1 %i.ari, label %ff_dca_check_crc.exit.thread, label %ff_dca_check_crc.exit

ff_dca_check_crc.exit:                            ; preds = %bb.es
  %i.arj = getelementptr inbounds nuw i8, ptr %.val.i41, i64 77920
  %i.ark = load ptr, ptr %i.arj, align 16, !tbaa !197
  %i.arl = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.arm = lshr i32 %.val62.i, 3
  %i.arn = zext nneg i32 %i.arm to i64
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.arn
  %i.arp = lshr i32 %i.arh, 3
  %i.arq = zext nneg i32 %i.arp to i64
  %i.arr = tail call i32 @av_crc(ptr noundef %i.ark, i32 noundef 65535, ptr noundef %i.aro, i64 noundef %i.arq) #14
  %.not18.i.not = icmp eq i32 %i.arr, 0
  br i1 %.not18.i.not, label %parse_navi_table.exit, label %ff_dca_check_crc.exit.thread

ff_dca_check_crc.exit.thread:                     ; preds = %bb.er, %bb.es, %bb.eq, %ff_dca_check_crc.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.aqx, i32 noundef 16, ptr noundef nonnull @.str.36) #12
  br label %parse_common_header.exit.thread

parse_navi_table.exit:                            ; preds = %._crit_edge79.i, %ff_dca_check_crc.exit
  %i.ars = getelementptr inbounds nuw i8, ptr %0, i64 8696 ; 3 uses
  %i.art = load i32, ptr %i.ars, align 8, !tbaa !59
  %i.aru = icmp sgt i32 %i.art, 0
  br i1 %i.aru, label %.lr.ph.i63, label %._crit_edge.i49

.lr.ph.i63:                                       ; preds = %parse_navi_table.exit, %.thread.i65
  %.0106.i = phi ptr [ %i.awe, %.thread.i65 ], [ %.ptr73.i, %parse_navi_table.exit ] ; 15 uses
  %.055105.i = phi i32 [ %i.awd, %.thread.i65 ], [ 0, %parse_navi_table.exit ]
  %.val63.i = load i32, ptr %i.ep, align 8, !tbaa !70
  %i.arv = getelementptr inbounds nuw i8, ptr %.0106.i, i64 720 ; 3 uses
  %i.arw = load i32, ptr %i.arv, align 16, !tbaa !108 ; 2 uses
  %i.arx = icmp sgt i32 %i.arw, 1
  %i.ary = select i1 %i.arx, i32 8, i32 0         ; 2 uses
  %i.arz = add nsw i32 %i.ary, %.val63.i          ; 2 uses
  %i.asa = load i32, ptr %.0106.i, align 16, !tbaa !69
  %i.asb = mul i32 %i.asa, %i.arw
  %i.asc = mul i32 %i.asb, %i.arz
  %i.asd = getelementptr inbounds nuw i8, ptr %.0106.i, i64 2832 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %.0106.i, i64 2816
  %i.asf = sext i32 %i.asc to i64
  %i.asg = shl nsw i64 %i.asf, 2
  tail call void @av_fast_malloc(ptr noundef nonnull %i.asd, ptr noundef nonnull %i.ase, i64 noundef %i.asg) #12
  %i.ash = load ptr, ptr %i.asd, align 16, !tbaa !79 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.ash, null
  br i1 %.not.i.i64, label %parse_common_header.exit.thread, label %bb.et

bb.et:                                            ; preds = %.lr.ph.i63
  %i.asi = load i32, ptr %i.arv, align 16, !tbaa !108 ; 3 uses
  %i.asj = icmp sgt i32 %i.asi, 0
  br i1 %i.asj, label %.preheader.lr.ph.i.i66, label %.thread.i65

.preheader.lr.ph.i.i66:                           ; preds = %bb.et
  %i.ask = load i32, ptr %.0106.i, align 16, !tbaa !69 ; 6 uses
  %i.asl = icmp sgt i32 %i.ask, 0
  %i.asm = sext i32 %i.arz to i64                 ; 9 uses
  br i1 %i.asl, label %.preheader.preheader.i.i, label %.preheader.lr.ph.i.i66..lr.ph.i.i67_crit_edge

.preheader.lr.ph.i.i66..lr.ph.i.i67_crit_edge:    ; preds = %.preheader.lr.ph.i.i66
  %.pre422 = zext nneg i32 %i.asi to i64
  br label %.lr.ph.i.i67

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i66
  %i.asn = zext nneg i32 %i.ary to i64
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.ash, i64 %i.asn
  %wide.trip.count9.i.i = zext nneg i32 %i.asi to i64 ; 2 uses
  %wide.trip.count.i.i68 = zext nneg i32 %i.ask to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i68, 7   ; 3 uses
  %i.asp = icmp ult i32 %i.ask, 8
  %unroll_iter = and i64 %wide.trip.count.i.i68, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod938 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i.i69

.preheader.i.i69:                                 ; preds = %._crit_edge.i.i73, %.preheader.preheader.i.i
  %indvars.iv6.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next7.i.i, %._crit_edge.i.i73 ] ; 2 uses
  %.04.i.i = phi ptr [ %i.aso, %.preheader.preheader.i.i ], [ %.lcssa813, %._crit_edge.i.i73 ] ; 2 uses
  %i.asq = getelementptr inbounds nuw [832 x i8], ptr %.0106.i, i64 %indvars.iv6.i.i
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 1432 ; 9 uses
  br i1 %i.asp, label %.epil.preheader, label %.preheader.i.i69.new

.preheader.i.i69.new:                             ; preds = %.preheader.i.i69, %.preheader.i.i69.new
  %indvars.iv.i.i70 = phi i64 [ %indvars.iv.next.i.i71.7, %.preheader.i.i69.new ], [ 0, %.preheader.i.i69 ] ; 9 uses
  %.12.i.i = phi ptr [ %i.ato, %.preheader.i.i69.new ], [ %.04.i.i, %.preheader.i.i69 ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %.preheader.i.i69.new ], [ 0, %.preheader.i.i69 ]
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %indvars.iv.i.i70
  store ptr %.12.i.i, ptr %i.ass, align 8, !tbaa !79
  %i.ast = getelementptr inbounds [4 x i8], ptr %.12.i.i, i64 %i.asm ; 2 uses
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %indvars.iv.i.i70
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 8
  store ptr %i.ast, ptr %i.asv, align 8, !tbaa !79
  %i.asw = getelementptr inbounds [4 x i8], ptr %i.ast, i64 %i.asm ; 2 uses
  %i.asx = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %indvars.iv.i.i70
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 16
  store ptr %i.asw, ptr %i.asy, align 8, !tbaa !79
  %i.asz = getelementptr inbounds [4 x i8], ptr %i.asw, i64 %i.asm ; 2 uses
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %indvars.iv.i.i70
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 24
  store ptr %i.asz, ptr %i.atb, align 8, !tbaa !79
  %i.atc = getelementptr inbounds [4 x i8], ptr %i.asz, i64 %i.asm ; 2 uses
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %indvars.iv.i.i70
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 32
  store ptr %i.atc, ptr %i.ate, align 8, !tbaa !79
  %i.atf = getelementptr inbounds [4 x i8], ptr %i.atc, i64 %i.asm ; 2 uses
  %i.atg = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %indvars.iv.i.i70
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 40
  store ptr %i.atf, ptr %i.ath, align 8, !tbaa !79
  %i.ati = getelementptr inbounds [4 x i8], ptr %i.atf, i64 %i.asm ; 2 uses
  %i.atj = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %indvars.iv.i.i70
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 48
  store ptr %i.ati, ptr %i.atk, align 8, !tbaa !79
  %i.atl = getelementptr inbounds [4 x i8], ptr %i.ati, i64 %i.asm ; 2 uses
  %i.atm = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %indvars.iv.i.i70
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atm, i64 56
  store ptr %i.atl, ptr %i.atn, align 8, !tbaa !79
  %i.ato = getelementptr inbounds [4 x i8], ptr %i.atl, i64 %i.asm ; 3 uses
  %indvars.iv.next.i.i71.7 = add nuw nsw i64 %indvars.iv.i.i70, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i73.unr-lcssa, label %.preheader.i.i69.new, !llvm.loop !236

._crit_edge.i.i73.unr-lcssa:                      ; preds = %.preheader.i.i69.new
  br i1 %lcmp.mod.not, label %._crit_edge.i.i73, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i73.unr-lcssa, %.preheader.i.i69
  %indvars.iv.i.i70.epil.init = phi i64 [ 0, %.preheader.i.i69 ], [ %indvars.iv.next.i.i71.7, %._crit_edge.i.i73.unr-lcssa ]
  %.12.i.i.epil.init = phi ptr [ %.04.i.i, %.preheader.i.i69 ], [ %i.ato, %._crit_edge.i.i73.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod938)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eu, %.epil.preheader
  %indvars.iv.i.i70.epil = phi i64 [ %indvars.iv.i.i70.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i71.epil, %bb.eu ] ; 2 uses
  %.12.i.i.epil = phi ptr [ %.12.i.i.epil.init, %.epil.preheader ], [ %i.atq, %bb.eu ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.eu ]
  %i.atp = getelementptr inbounds nuw [8 x i8], ptr %i.asr, i64 %indvars.iv.i.i70.epil
  store ptr %.12.i.i.epil, ptr %i.atp, align 8, !tbaa !79
  %i.atq = getelementptr inbounds [4 x i8], ptr %.12.i.i.epil, i64 %i.asm ; 2 uses
  %indvars.iv.next.i.i71.epil = add nuw nsw i64 %indvars.iv.i.i70.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i73, label %bb.eu, !llvm.loop !237

._crit_edge.i.i73:                                ; preds = %bb.eu, %._crit_edge.i.i73.unr-lcssa
  %.lcssa813 = phi ptr [ %i.ato, %._crit_edge.i.i73.unr-lcssa ], [ %i.atq, %bb.eu ]
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv6.i.i, 1 ; 2 uses
  %exitcond10.not.i.i = icmp eq i64 %indvars.iv.next7.i.i, %wide.trip.count9.i.i
  br i1 %exitcond10.not.i.i, label %.lr.ph.i.i67, label %.preheader.i.i69, !llvm.loop !238

.lr.ph.i.i67:                                     ; preds = %._crit_edge.i.i73, %.preheader.lr.ph.i.i66..lr.ph.i.i67_crit_edge
  %wide.trip.count.i64.i.pre-phi = phi i64 [ %.pre422, %.preheader.lr.ph.i.i66..lr.ph.i.i67_crit_edge ], [ %wide.trip.count9.i.i, %._crit_edge.i.i73 ] ; 4 uses
  %xtraiter940 = and i64 %wide.trip.count.i64.i.pre-phi, 1
  %i.atr = icmp eq i64 %wide.trip.count.i64.i.pre-phi, 1
  br i1 %i.atr, label %.epil.preheader939, label %.lr.ph.i.i67.new

.lr.ph.i.i67.new:                                 ; preds = %.lr.ph.i.i67
  %unroll_iter945 = and i64 %wide.trip.count.i64.i.pre-phi, 2147483646
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ez, %.lr.ph.i.i67.new
  %indvars.iv.i65.i = phi i64 [ 0, %.lr.ph.i.i67.new ], [ %indvars.iv.next.i66.i.1, %bb.ez ] ; 3 uses
  %.03450.i.i = phi i32 [ 0, %.lr.ph.i.i67.new ], [ %.135.i.i.1, %bb.ez ] ; 2 uses
  %niter946 = phi i64 [ 0, %.lr.ph.i.i67.new ], [ %niter946.next.1, %bb.ez ]
  %i.ats = getelementptr inbounds nuw [832 x i8], ptr %.0106.i, i64 %indvars.iv.i65.i
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 1364
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !221
  %.not44.i.i = icmp eq i32 %i.atu, 0
  br i1 %.not44.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.atv = load i32, ptr %i.ep, align 8, !tbaa !70
  %i.atw = mul nsw i32 %i.atv, %i.ask
  %i.atx = add nsw i32 %i.atw, %.03450.i.i
  br label %bb.ex
end_hunk_0
