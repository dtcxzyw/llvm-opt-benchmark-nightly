inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE:bb.a
  %i.bhz = load ptr, ptr %i.a, align 8, !tbaa !8  ; 3 uses
  store ptr %i.bhz, ptr %i.o, align 8, !tbaa !11
  %i.bia = icmp sgt i32 %.0253580, 0
  br i1 %i.bia, label %.lr.ph.i360, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366

.lr.ph.i360:                                      ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364
  %.sroa.42.17 = phi i32 [ %.sroa.42.18, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ], [ 7, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 2 uses
  %.sroa.0.17 = phi ptr [ %.sroa.0.18, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ], [ %i.bhz, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 5 uses
  %.18 = phi i32 [ %.19, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ], [ %.0507578, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 3 uses
  %i.bib = phi i64 [ %.sroa.81494.16, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ], [ 128, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 2 uses
  %.0.in8.i362 = phi i32 [ %.0.i363, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ], [ %.0253580, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 2 uses
  %.0.i363 = add nsw i32 %.0.in8.i362, -1
  %i.bic = add nsw i32 %.sroa.42.17, -1
  %i.bid = icmp slt i32 %.sroa.42.17, 2
  br i1 %i.bid, label %bb.u, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364

bb.u:                                             ; preds = %.lr.ph.i360
  %i.bie = trunc nuw i64 %i.bib to i8
  %i.bif = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 16
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !96
  %i.bih = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 8
  %i.bii = load i32, ptr %i.bih, align 8, !tbaa !98
  %i.bij = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 12 ; 3 uses
  %i.bik = load i32, ptr %i.bij, align 4, !tbaa !99
  %i.bil = sub i32 %i.bii, %i.bik
  %i.bim = zext i32 %i.bil to i64
  %i.bin = getelementptr inbounds nuw i8, ptr %i.big, i64 %i.bim
  store i8 %i.bie, ptr %i.bin, align 1, !tbaa !44
  %i.bio = load i32, ptr %i.bij, align 4, !tbaa !99
  %i.bip = add i32 %i.bio, -1                     ; 2 uses
  store i32 %i.bip, ptr %i.bij, align 4, !tbaa !99
  %i.biq = icmp eq i32 %i.bip, 0
  br i1 %i.biq, label %bb.v, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364

bb.v:                                             ; preds = %bb.u
  %i.bir = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bir)
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !8
  %i.bit = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !100
  store ptr %i.biu, ptr %i.a, align 8, !tbaa !8
  %i.biv = add i32 %.18, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364: ; preds = %bb.v, %bb.u, %.lr.ph.i360
  %.sroa.81494.16 = phi i64 [ 0, %bb.v ], [ 0, %bb.u ], [ %i.bib, %.lr.ph.i360 ] ; 2 uses
  %.sroa.42.18 = phi i32 [ 8, %bb.v ], [ 8, %bb.u ], [ %i.bic, %.lr.ph.i360 ] ; 2 uses
  %.sroa.0.18 = phi ptr [ %i.bis, %bb.v ], [ %.sroa.0.17, %bb.u ], [ %.sroa.0.17, %.lr.ph.i360 ] ; 2 uses
  %.19 = phi i32 [ %i.biv, %bb.v ], [ %.18, %bb.u ], [ %.18, %.lr.ph.i360 ] ; 2 uses
  %i.biw = icmp samesign ugt i32 %.0.in8.i362, 1
  br i1 %i.biw, label %.lr.ph.i360, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366, !llvm.loop !101

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, %bb.t
  %.sroa.81494.1 = phi i64 [ %.sroa.81494.0575, %bb.t ], [ 128, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ], [ %.sroa.81494.16, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ] ; 2 uses
  %.sroa.42.1 = phi i32 [ %.sroa.42.0576, %bb.t ], [ 7, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ], [ %.sroa.42.18, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0577, %bb.t ], [ %i.bhz, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ], [ %.sroa.0.18, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ] ; 2 uses
  %.1508 = phi i32 [ %.0507578, %bb.t ], [ %.0507578, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ], [ %.19, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ] ; 2 uses
  %.2255 = phi i32 [ %.0253580, %bb.t ], [ 0, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ], [ 0, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ] ; 2 uses
  %i.bix = load i32, ptr %i.v, align 8, !tbaa !30 ; 2 uses
  %i.biy = load i32, ptr %i.y, align 4, !tbaa !31 ; 2 uses
  %.not586 = icmp eq i32 %i.biy, 0
  br i1 %.not586, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, label %.lr.ph569

.lr.ph569:                                        ; preds = %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366
  %.not587 = icmp eq i32 %i.bix, 0
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph569, %._crit_edge558
  %.1568 = phi i32 [ %.0251581, %.lr.ph569 ], [ %.2.lcssa, %._crit_edge558 ] ; 2 uses
  %.0260567 = phi i32 [ 0, %.lr.ph569 ], [ %i.bjk, %._crit_edge558 ] ; 6 uses
  %.2509566 = phi i32 [ %.1508, %.lr.ph569 ], [ %.3510.lcssa, %._crit_edge558 ] ; 2 uses
  %.sroa.0.2565 = phi ptr [ %.sroa.0.1, %.lr.ph569 ], [ %.sroa.0.3.lcssa, %._crit_edge558 ] ; 2 uses
  %.sroa.42.2564 = phi i32 [ %.sroa.42.1, %.lr.ph569 ], [ %.sroa.42.3.lcssa, %._crit_edge558 ] ; 2 uses
  %.sroa.81494.2563 = phi i64 [ %.sroa.81494.1, %.lr.ph569 ], [ %.sroa.81494.3.lcssa, %._crit_edge558 ] ; 2 uses
  br i1 %.not587, label %._crit_edge558, label %.preheader528.preheader

.preheader528.preheader:                          ; preds = %bb.w
  %i.biz = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.bja = getelementptr inbounds nuw [120 x i8], ptr %i.biz, i64 %indvars.iv607
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 104
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !57
  %i.bjd = load i32, ptr %i.jc, align 4, !tbaa !58
  %i.bje = add i32 %i.bjd, %.0260567
  %i.bjf = mul i32 %i.bje, %i.jb
  %i.bjg = load i32, ptr %i.u, align 8, !tbaa !59
  %i.bjh = add i32 %i.bjf, %i.bjg
  %i.bji = zext i32 %i.bjh to i64
  %i.bjj = getelementptr inbounds nuw [32 x i8], ptr %i.bjc, i64 %i.bji
  br label %.preheader528

.preheader528:                                    ; preds = %.preheader528.preheader, %bb.bi
  %.2557 = phi i32 [ %.3, %bb.bi ], [ %.1568, %.preheader528.preheader ] ; 2 uses
  %.0259556 = phi i32 [ %i.bzv, %bb.bi ], [ 0, %.preheader528.preheader ] ; 5 uses
  %.1268555 = phi ptr [ %i.bzw, %bb.bi ], [ %i.bjj, %.preheader528.preheader ] ; 8 uses
  %.3510554 = phi i32 [ %.11, %bb.bi ], [ %.2509566, %.preheader528.preheader ]
  %.sroa.0.3553 = phi ptr [ %.sroa.0.11, %bb.bi ], [ %.sroa.0.2565, %.preheader528.preheader ]
  %.sroa.42.3552 = phi i32 [ %.sroa.42.11, %bb.bi ], [ %.sroa.42.2564, %.preheader528.preheader ]
  %.sroa.81494.3551 = phi i64 [ %.sroa.81494.11, %bb.bi ], [ %.sroa.81494.2563, %.preheader528.preheader ]
  br label %bb.x

._crit_edge558:                                   ; preds = %bb.bi, %bb.w
  %.sroa.81494.3.lcssa = phi i64 [ %.sroa.81494.2563, %bb.w ], [ %.sroa.81494.11, %bb.bi ] ; 2 uses
  %.sroa.42.3.lcssa = phi i32 [ %.sroa.42.2564, %bb.w ], [ %.sroa.42.11, %bb.bi ] ; 2 uses
  %.sroa.0.3.lcssa = phi ptr [ %.sroa.0.2565, %bb.w ], [ %.sroa.0.11, %bb.bi ] ; 2 uses
  %.3510.lcssa = phi i32 [ %.2509566, %bb.w ], [ %.11, %bb.bi ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1568, %bb.w ], [ %.3, %bb.bi ] ; 2 uses
  %i.bjk = add nuw i32 %.0260567, 1               ; 2 uses
  %exitcond606.not = icmp eq i32 %i.bjk, %i.biy
  br i1 %exitcond606.not, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, label %bb.w, !llvm.loop !102

bb.x:                                             ; preds = %._crit_edge612, %.preheader528
  %.4511665 = phi i32 [ %.3510554, %.preheader528 ], [ %.5512, %._crit_edge612 ] ; 4 uses
  %.sroa.0.4664 = phi ptr [ %.sroa.0.3553, %.preheader528 ], [ %.sroa.0.5, %._crit_edge612 ] ; 6 uses
  %.sroa.42.4663 = phi i32 [ %.sroa.42.3552, %.preheader528 ], [ %.sroa.42.5, %._crit_edge612 ] ; 3 uses
  %.sroa.81494.4662 = phi i64 [ %.sroa.81494.3551, %.preheader528 ], [ %.sroa.81494.5, %._crit_edge612 ] ; 2 uses
  %indvars.iv601661 = phi i64 [ %wide.trip.count40.i, %.preheader528 ], [ %indvars.iv.next602.a, %._crit_edge612 ] ; 3 uses
  %i.bjl = trunc nuw i64 %indvars.iv601661 to i32 ; 5 uses
  %i.bjm = add nsw i32 %i.bjl, -1                 ; 6 uses
  %i.bjn = lshr i32 %.0259556, %i.bjm             ; 2 uses
  %i.bjo = lshr i32 %.0260567, %i.bjm             ; 2 uses
  %i.bjp = zext i32 %i.bjm to i64                 ; 2 uses
  %i.bjq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bjp
  %i.bjr = load ptr, ptr %i.bjq, align 8, !tbaa !34
  %notmask.i367 = shl nsw i32 -1, %i.bjm
  %i.bjs = xor i32 %notmask.i367, -1              ; 2 uses
  %i.bjt = add i32 %i.dc, %i.bjs
  %i.bju = lshr i32 %i.bjt, %i.bjm
  %i.bjv = mul i32 %i.bju, %i.bjo
  %i.bjw = add i32 %i.bjv, %i.bjn
  %i.bjx = zext i32 %i.bjw to i64
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjr, i64 %i.bjx ; 2 uses
  %i.bjz = load i8, ptr %i.bjy, align 1, !tbaa !44
  %i.bka = icmp eq i8 %i.bjz, 0
  %i.bkb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bjp
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !34 ; 2 uses
  %i.bkd = add i32 %i.ax, %i.bjs
  %i.bke = lshr i32 %i.bkd, %i.bjm
  %i.bkf = mul i32 %i.bke, %i.bjo
  %i.bkg = add i32 %i.bkf, %i.bjn
  %i.bkh = zext i32 %i.bkg to i64                 ; 2 uses
  br i1 %i.bka, label %bb.y, label %._crit_edge612

bb.y:                                             ; preds = %bb.x
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkc, i64 %i.bkh
  %i.bkj = load i8, ptr %i.bki, align 1, !tbaa !44
  %i.bkk = zext i8 %i.bkj to i32
  %i.bkl = lshr i32 %.0259556, %i.bjl
  %i.bkm = lshr i32 %.0260567, %i.bjl
  %i.bkn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv601661
  %i.bko = load ptr, ptr %i.bkn, align 8, !tbaa !34
  %notmask.i369 = shl nsw i32 -1, %i.bjl
  %i.bkp = xor i32 %notmask.i369, -1
  %i.bkq = add i32 %i.ax, %i.bkp
  %i.bkr = lshr i32 %i.bkq, %i.bjl
  %i.bks = mul i32 %i.bkr, %i.bkm
  %i.bkt = add i32 %i.bks, %i.bkl
  %i.bku = zext i32 %i.bkt to i64
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bko, i64 %i.bku
  %i.bkw = load i8, ptr %i.bkv, align 1, !tbaa !44
  %i.bkx = zext i8 %i.bkw to i32
  %i.bky = xor i32 %i.bkx, -1
  %i.bkz = add nsw i32 %i.bky, %i.bkk
  %i.bla = add nsw i32 %.sroa.42.4663, -1         ; 2 uses
  %i.blb = and i32 %i.bkz, 1
  %i.blc = shl nuw i32 %i.blb, %i.bla
  %i.bld = zext i32 %i.blc to i64
  %i.ble = or i64 %.sroa.81494.4662, %i.bld       ; 3 uses
  %i.blf = icmp slt i32 %.sroa.42.4663, 2
  br i1 %i.blf, label %bb.z, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374

bb.z:                                             ; preds = %bb.y
  %.not.i.i376 = icmp eq i64 %i.ble, 255
  %i.blg = select i1 %.not.i.i376, i32 7, i32 8   ; 2 uses
  %i.blh = trunc i64 %i.ble to i8
  %i.bli = getelementptr inbounds nuw i8, ptr %.sroa.0.4664, i64 16
  %i.blj = load ptr, ptr %i.bli, align 8, !tbaa !96
  %i.blk = getelementptr inbounds nuw i8, ptr %.sroa.0.4664, i64 8
  %i.bll = load i32, ptr %i.blk, align 8, !tbaa !98
  %i.blm = getelementptr inbounds nuw i8, ptr %.sroa.0.4664, i64 12 ; 3 uses
  %i.bln = load i32, ptr %i.blm, align 4, !tbaa !99
  %i.blo = sub i32 %i.bll, %i.bln
  %i.blp = zext i32 %i.blo to i64
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blj, i64 %i.blp
  store i8 %i.blh, ptr %i.blq, align 1, !tbaa !44
  %i.blr = load i32, ptr %i.blm, align 4, !tbaa !99
  %i.bls = add i32 %i.blr, -1                     ; 2 uses
  store i32 %i.bls, ptr %i.blm, align 4, !tbaa !99
  %i.blt = icmp eq i32 %i.bls, 0
  br i1 %i.blt, label %bb.aa, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374

bb.aa:                                            ; preds = %bb.z
  %i.blu = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.blu)
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !8
  %i.blw = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !100
  store ptr %i.blx, ptr %i.a, align 8, !tbaa !8
  %i.bly = add i32 %.4511665, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374: ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.81494.18 = phi i64 [ 0, %bb.aa ], [ 0, %bb.z ], [ %i.ble, %bb.y ]
  %.sroa.42.21 = phi i32 [ %i.blg, %bb.aa ], [ %i.blg, %bb.z ], [ %i.bla, %bb.y ]
  %.sroa.0.21 = phi ptr [ %i.blv, %bb.aa ], [ %.sroa.0.4664, %bb.z ], [ %.sroa.0.4664, %bb.y ]
  %.22 = phi i32 [ %i.bly, %bb.aa ], [ %.4511665, %bb.z ], [ %.4511665, %bb.y ]
  store i8 1, ptr %i.bjy, align 1, !tbaa !44
  br label %._crit_edge612

._crit_edge612:                                   ; preds = %bb.x, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374
  %.sroa.81494.5 = phi i64 [ %.sroa.81494.18, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374 ], [ %.sroa.81494.4662, %bb.x ] ; 3 uses
  %.sroa.42.5 = phi i32 [ %.sroa.42.21, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374 ], [ %.sroa.42.4663, %bb.x ] ; 3 uses
  %.sroa.0.5 = phi ptr [ %.sroa.0.21, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374 ], [ %.sroa.0.4664, %bb.x ] ; 3 uses
  %.5512 = phi i32 [ %.22, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374 ], [ %.4511665, %bb.x ] ; 3 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bkc, i64 %i.bkh
  %i.bma = load i8, ptr %i.blz, align 1, !tbaa !44
  %.not276 = icmp ne i8 %i.bma, 0
  %indvars.iv.next602.a = add nsw i64 %indvars.iv601661, -1 ; 2 uses
  %.not275 = icmp eq i64 %indvars.iv.next602.a, 0
  %or.cond = select i1 %.not276, i1 true, i1 %.not275
  br i1 %or.cond, label %bb.ab, label %bb.x, !llvm.loop !103

bb.ab:                                            ; preds = %._crit_edge612
  %i.bmb = getelementptr inbounds nuw i8, ptr %.1268555, i64 8 ; 4 uses
  %i.bmc = load i32, ptr %i.bmb, align 8, !tbaa !104
  %i.bmd = icmp eq i32 %i.bmc, 0
  br i1 %i.bmd, label %bb.bi, label %.preheader527

bb.ac:                                            ; preds = %bb.ai
  %i.bme = load i32, ptr %i.bmb, align 8, !tbaa !104
  switch i32 %i.bme, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403 [
    i32 3, label %.preheader.preheader
    i32 2, label %.preheader523.preheader
    i32 1, label %.preheader525
  ]

.preheader523.preheader:                          ; preds = %bb.ac
  %i.bmf = add nsw i32 %.sroa.42.8, -1
  %i.bmg = shl nuw i32 1, %i.bmf
  %i.bmh = zext i32 %i.bmg to i64
  %i.bmi = or i64 %.sroa.81494.8, %i.bmh          ; 5 uses
  %i.bmj = icmp slt i32 %.sroa.42.8, 2
  br i1 %i.bmj, label %bb.ar, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408

.preheader.preheader:                             ; preds = %bb.ac
  %i.bmk = add nsw i32 %.sroa.42.8, -1
  %i.bml = shl nuw i32 1, %i.bmk
  %i.bmm = zext i32 %i.bml to i64
  %i.bmn = or i64 %.sroa.81494.8, %i.bmm          ; 3 uses
  %i.bmo = icmp slt i32 %.sroa.42.8, 2
  br i1 %i.bmo, label %bb.aj, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400

.preheader527:                                    ; preds = %bb.ab, %bb.ai
  %indvars.iv603 = phi i64 [ %indvars.iv.next604, %bb.ai ], [ %wide.trip.count40.i, %bb.ab ] ; 3 uses
  %.7549 = phi i32 [ %.8, %bb.ai ], [ %.5512, %bb.ab ] ; 3 uses
  %.sroa.0.7548 = phi ptr [ %.sroa.0.8, %bb.ai ], [ %.sroa.0.5, %bb.ab ] ; 3 uses
  %.sroa.42.7547 = phi i32 [ %.sroa.42.8, %bb.ai ], [ %.sroa.42.5, %bb.ab ] ; 3 uses
  %.sroa.81494.7546 = phi i64 [ %.sroa.81494.8, %bb.ai ], [ %.sroa.81494.5, %bb.ab ] ; 3 uses
  %indvars.iv.next604 = add nsw i64 %indvars.iv603, -1 ; 5 uses
  %i.bmp = trunc nuw i64 %indvars.iv.next604 to i32 ; 5 uses
  %i.bmq = lshr i32 %.0259556, %i.bmp             ; 2 uses
  %i.bmr = lshr i32 %.0260567, %i.bmp             ; 2 uses
  %i.bms = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next604
  %i.bmt = load ptr, ptr %i.bms, align 8, !tbaa !34
  %notmask.i380 = shl nsw i32 -1, %i.bmp
  %i.bmu = xor i32 %notmask.i380, -1              ; 2 uses
  %i.bmv = add i32 %i.hj, %i.bmu
  %i.bmw = lshr i32 %i.bmv, %i.bmp
  %i.bmx = mul i32 %i.bmw, %i.bmr
  %i.bmy = add i32 %i.bmx, %i.bmq
  %i.bmz = zext i32 %i.bmy to i64
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmt, i64 %i.bmz ; 2 uses
  %i.bnb = load i8, ptr %i.bna, align 1, !tbaa !44
  %i.bnc = icmp eq i8 %i.bnb, 0
  br i1 %i.bnc, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %.preheader527
  %i.bnd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next604
  %i.bne = load ptr, ptr %i.bnd, align 8, !tbaa !34
  %i.bnf = add i32 %i.ff, %i.bmu
  %i.bng = lshr i32 %i.bnf, %i.bmp
  %i.bnh = mul i32 %i.bng, %i.bmr
  %i.bni = add i32 %i.bnh, %i.bmq
  %i.bnj = zext i32 %i.bni to i64
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bne, i64 %i.bnj
  %i.bnl = load i8, ptr %i.bnk, align 1, !tbaa !44
  %i.bnm = zext i8 %i.bnl to i32
  %i.bnn = trunc nuw i64 %indvars.iv603 to i32    ; 4 uses
  %i.bno = lshr i32 %.0259556, %i.bnn
  %i.bnp = lshr i32 %.0260567, %i.bnn
  %i.bnq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv603
  %i.bnr = load ptr, ptr %i.bnq, align 8, !tbaa !34
  %notmask.i382 = shl nsw i32 -1, %i.bnn
  %i.bns = xor i32 %notmask.i382, -1
  %i.bnt = add i32 %i.ff, %i.bns
  %i.bnu = lshr i32 %i.bnt, %i.bnn
  %i.bnv = mul i32 %i.bnu, %i.bnp
  %i.bnw = add i32 %i.bnv, %i.bno
  %i.bnx = zext i32 %i.bnw to i64
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnr, i64 %i.bnx
  %i.bnz = load i8, ptr %i.bny, align 1, !tbaa !44
  %i.boa = zext i8 %i.bnz to i32
  %i.bob = sub nsw i32 %i.bnm, %i.boa             ; 2 uses
  %i.boc = icmp sgt i32 %i.bob, 0
  br i1 %i.boc, label %.lr.ph.i384, label %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit

.lr.ph.i384:                                      ; preds = %bb.ad, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385
  %.sroa.81494.19 = phi i64 [ %.sroa.81494.20, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ], [ %.sroa.81494.7546, %bb.ad ] ; 3 uses
  %.sroa.42.22 = phi i32 [ %.sroa.42.23, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ], [ %.sroa.42.7547, %bb.ad ] ; 2 uses
  %.sroa.0.22 = phi ptr [ %.sroa.0.23, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ], [ %.sroa.0.7548, %bb.ad ] ; 5 uses
  %.23 = phi i32 [ %.24, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ], [ %.7549, %bb.ad ] ; 3 uses
  %.06.i = phi i32 [ %i.boy, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ], [ %i.bob, %bb.ad ] ; 2 uses
  %i.bod = add nsw i32 %.sroa.42.22, -1
  %i.boe = icmp slt i32 %.sroa.42.22, 2
  br i1 %i.boe, label %bb.ae, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385

bb.ae:                                            ; preds = %.lr.ph.i384
  %.not.i.i386 = icmp eq i64 %.sroa.81494.19, 255
  %i.bof = select i1 %.not.i.i386, i32 7, i32 8   ; 2 uses
  %i.bog = trunc i64 %.sroa.81494.19 to i8
  %i.boh = getelementptr inbounds nuw i8, ptr %.sroa.0.22, i64 16
  %i.boi = load ptr, ptr %i.boh, align 8, !tbaa !96
  %i.boj = getelementptr inbounds nuw i8, ptr %.sroa.0.22, i64 8
  %i.bok = load i32, ptr %i.boj, align 8, !tbaa !98
  %i.bol = getelementptr inbounds nuw i8, ptr %.sroa.0.22, i64 12 ; 3 uses
  %i.bom = load i32, ptr %i.bol, align 4, !tbaa !99
  %i.bon = sub i32 %i.bok, %i.bom
  %i.boo = zext i32 %i.bon to i64
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boi, i64 %i.boo
  store i8 %i.bog, ptr %i.bop, align 1, !tbaa !44
  %i.boq = load i32, ptr %i.bol, align 4, !tbaa !99
  %i.bor = add i32 %i.boq, -1                     ; 2 uses
  store i32 %i.bor, ptr %i.bol, align 4, !tbaa !99
  %i.bos = icmp eq i32 %i.bor, 0
  br i1 %i.bos, label %bb.af, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385

bb.af:                                            ; preds = %bb.ae
  %i.bot = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bot)
  %i.bou = load ptr, ptr %i.bot, align 8, !tbaa !8
  %i.bov = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !100
  store ptr %i.bow, ptr %i.a, align 8, !tbaa !8
  %i.box = add i32 %.23, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385: ; preds = %bb.af, %bb.ae, %.lr.ph.i384
  %.sroa.81494.20 = phi i64 [ 0, %bb.af ], [ 0, %bb.ae ], [ %.sroa.81494.19, %.lr.ph.i384 ] ; 2 uses
  %.sroa.42.23 = phi i32 [ %i.bof, %bb.af ], [ %i.bof, %bb.ae ], [ %i.bod, %.lr.ph.i384 ] ; 2 uses
  %.sroa.0.23 = phi ptr [ %i.bou, %bb.af ], [ %.sroa.0.22, %bb.ae ], [ %.sroa.0.22, %.lr.ph.i384 ] ; 2 uses
  %.24 = phi i32 [ %i.box, %bb.af ], [ %.23, %bb.ae ], [ %.23, %.lr.ph.i384 ] ; 2 uses
  %i.boy = add nsw i32 %.06.i, -1
  %i.boz = icmp sgt i32 %.06.i, 1
  br i1 %i.boz, label %.lr.ph.i384, label %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, !llvm.loop !105

_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385, %bb.ad
  %.sroa.81494.21 = phi i64 [ %.sroa.81494.7546, %bb.ad ], [ %.sroa.81494.20, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ]
  %.sroa.42.24 = phi i32 [ %.sroa.42.7547, %bb.ad ], [ %.sroa.42.23, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ] ; 2 uses
  %.sroa.0.24 = phi ptr [ %.sroa.0.7548, %bb.ad ], [ %.sroa.0.23, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ] ; 5 uses
  %.25 = phi i32 [ %.7549, %bb.ad ], [ %.24, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ] ; 3 uses
  %i.bpa = add nsw i32 %.sroa.42.24, -1           ; 2 uses
  %i.bpb = shl nuw i32 1, %i.bpa
  %i.bpc = zext i32 %i.bpb to i64
  %i.bpd = or i64 %.sroa.81494.21, %i.bpc         ; 3 uses
  %i.bpe = icmp slt i32 %.sroa.42.24, 2
  br i1 %i.bpe, label %bb.ag, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391

bb.ag:                                            ; preds = %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit
  %.not.i.i393 = icmp eq i64 %i.bpd, 255
  %i.bpf = select i1 %.not.i.i393, i32 7, i32 8   ; 2 uses
  %i.bpg = trunc i64 %i.bpd to i8
  %i.bph = getelementptr inbounds nuw i8, ptr %.sroa.0.24, i64 16
  %i.bpi = load ptr, ptr %i.bph, align 8, !tbaa !96
  %i.bpj = getelementptr inbounds nuw i8, ptr %.sroa.0.24, i64 8
  %i.bpk = load i32, ptr %i.bpj, align 8, !tbaa !98
  %i.bpl = getelementptr inbounds nuw i8, ptr %.sroa.0.24, i64 12 ; 3 uses
  %i.bpm = load i32, ptr %i.bpl, align 4, !tbaa !99
  %i.bpn = sub i32 %i.bpk, %i.bpm
  %i.bpo = zext i32 %i.bpn to i64
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpi, i64 %i.bpo
  store i8 %i.bpg, ptr %i.bpp, align 1, !tbaa !44
  %i.bpq = load i32, ptr %i.bpl, align 4, !tbaa !99
  %i.bpr = add i32 %i.bpq, -1                     ; 2 uses
  store i32 %i.bpr, ptr %i.bpl, align 4, !tbaa !99
  %i.bps = icmp eq i32 %i.bpr, 0
  br i1 %i.bps, label %bb.ah, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391

bb.ah:                                            ; preds = %bb.ag
  %i.bpt = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bpt)
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !8
  %i.bpv = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !100
  store ptr %i.bpw, ptr %i.a, align 8, !tbaa !8
  %i.bpx = add i32 %.25, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391: ; preds = %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, %bb.ag, %bb.ah
  %.sroa.81494.22 = phi i64 [ 0, %bb.ah ], [ 0, %bb.ag ], [ %i.bpd, %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ]
  %.sroa.42.26 = phi i32 [ %i.bpf, %bb.ah ], [ %i.bpf, %bb.ag ], [ %i.bpa, %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ]
  %.sroa.0.26 = phi ptr [ %i.bpu, %bb.ah ], [ %.sroa.0.24, %bb.ag ], [ %.sroa.0.24, %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ]
  %.27 = phi i32 [ %i.bpx, %bb.ah ], [ %.25, %bb.ag ], [ %.25, %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ]
  store i8 1, ptr %i.bna, align 1, !tbaa !44
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391, %.preheader527
  %.sroa.81494.8 = phi i64 [ %.sroa.81494.22, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391 ], [ %.sroa.81494.7546, %.preheader527 ] ; 7 uses
  %.sroa.42.8 = phi i32 [ %.sroa.42.26, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391 ], [ %.sroa.42.7547, %.preheader527 ] ; 15 uses
  %.sroa.0.8 = phi ptr [ %.sroa.0.26, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391 ], [ %.sroa.0.7548, %.preheader527 ] ; 33 uses
  %.8 = phi i32 [ %.27, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391 ], [ %.7549, %.preheader527 ] ; 19 uses
  %.not277 = icmp eq i64 %indvars.iv.next604, 0
  br i1 %.not277, label %bb.ac, label %.preheader527, !llvm.loop !106

bb.aj:                                            ; preds = %.preheader.preheader
  %.not.i.i402 = icmp eq i64 %i.bmn, 255
  %i.bpy = trunc i64 %i.bmn to i8
  %i.bpz = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !96
  %i.bqb = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bqc = load i32, ptr %i.bqb, align 8, !tbaa !98
  %i.bqd = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !99
  %i.bqf = sub i32 %i.bqc, %i.bqe
  %i.bqg = zext i32 %i.bqf to i64
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqa, i64 %i.bqg
  store i8 %i.bpy, ptr %i.bqh, align 1, !tbaa !44
  %i.bqi = load i32, ptr %i.bqd, align 4, !tbaa !99
  %i.bqj = add i32 %i.bqi, -1                     ; 2 uses
  store i32 %i.bqj, ptr %i.bqd, align 4, !tbaa !99
  %i.bqk = icmp eq i32 %i.bqj, 0
  br i1 %i.bqk, label %bb.ak, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bql = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bql)
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !8
  %i.bqn = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !100
  store ptr %i.bqo, ptr %i.a, align 8, !tbaa !8
  %i.bqp = add i32 %.8, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread: ; preds = %bb.ak, %bb.aj
  %.sroa.0.28.ph = phi ptr [ %.sroa.0.8, %bb.aj ], [ %i.bqm, %bb.ak ]
  %.29.ph = phi i32 [ %.8, %bb.aj ], [ %i.bqp, %bb.ak ]
  %i.bqq = select i1 %.not.i.i402, i32 6, i32 7   ; 2 uses
  %i.bqr = shl nuw nsw i32 1, %i.bqq
  %i.bqs = zext nneg i32 %i.bqr to i64
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400: ; preds = %.preheader.preheader
  %i.bqt = add nsw i32 %.sroa.42.8, -2
  %i.bqu = shl nuw i32 1, %i.bqt
  %i.bqv = zext i32 %i.bqu to i64
  %i.bqw = or i64 %i.bmn, %i.bqv                  ; 7 uses
  %i.bqx = icmp eq i32 %.sroa.42.8, 2
  br i1 %i.bqx, label %bb.al, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1

bb.al:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400
  %.not.i.i402.1 = icmp eq i64 %i.bqw, 255
  %i.bqy = select i1 %.not.i.i402.1, i32 7, i32 8 ; 2 uses
  %i.bqz = trunc i64 %i.bqw to i8
  %i.bra = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.brb = load ptr, ptr %i.bra, align 8, !tbaa !96
  %i.brc = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.brd = load i32, ptr %i.brc, align 8, !tbaa !98
  %i.bre = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.brf = load i32, ptr %i.bre, align 4, !tbaa !99
  %i.brg = sub i32 %i.brd, %i.brf
  %i.brh = zext i32 %i.brg to i64
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.brh
  store i8 %i.bqz, ptr %i.bri, align 1, !tbaa !44
  %i.brj = load i32, ptr %i.bre, align 4, !tbaa !99
  %i.brk = add i32 %i.brj, -1                     ; 2 uses
  store i32 %i.brk, ptr %i.bre, align 4, !tbaa !99
  %i.brl = icmp eq i32 %i.brk, 0
  br i1 %i.brl, label %bb.am, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread

bb.am:                                            ; preds = %bb.al
  %i.brm = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.brm)
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !8
  %i.bro = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.brp = load ptr, ptr %i.bro, align 8, !tbaa !100
  store ptr %i.brp, ptr %i.a, align 8, !tbaa !8
  %i.brq = add i32 %.8, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread: ; preds = %bb.am, %bb.al, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread
  %.sroa.81494.23.1.ph = phi i64 [ %i.bqs, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread ], [ 0, %bb.al ], [ 0, %bb.am ]
  %.sroa.42.28.1.ph = phi i32 [ %i.bqq, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread ], [ %i.bqy, %bb.al ], [ %i.bqy, %bb.am ]
  %.sroa.0.28.1.ph = phi ptr [ %.sroa.0.28.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread ], [ %.sroa.0.8, %bb.al ], [ %i.brn, %bb.am ]
  %.29.1.ph = phi i32 [ %.29.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread ], [ %.8, %bb.al ], [ %i.brq, %bb.am ]
  %i.brr = add nsw i32 %.sroa.42.28.1.ph, -1
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400
  %i.brs = icmp slt i32 %.sroa.42.8, 4
  br i1 %i.brs, label %bb.an, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2

bb.an:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1
  %.not.i.i402.2 = icmp eq i64 %i.bqw, 255
  %i.brt = select i1 %.not.i.i402.2, i32 7, i32 8 ; 2 uses
  %i.bru = trunc i64 %i.bqw to i8
  %i.brv = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.brw = load ptr, ptr %i.brv, align 8, !tbaa !96
  %i.brx = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bry = load i32, ptr %i.brx, align 8, !tbaa !98
  %i.brz = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.bsa = load i32, ptr %i.brz, align 4, !tbaa !99
  %i.bsb = sub i32 %i.bry, %i.bsa
  %i.bsc = zext i32 %i.bsb to i64
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.brw, i64 %i.bsc
  store i8 %i.bru, ptr %i.bsd, align 1, !tbaa !44
  %i.bse = load i32, ptr %i.brz, align 4, !tbaa !99
  %i.bsf = add i32 %i.bse, -1                     ; 2 uses
  store i32 %i.bsf, ptr %i.brz, align 4, !tbaa !99
  %i.bsg = icmp eq i32 %i.bsf, 0
  br i1 %i.bsg, label %bb.ao, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread

bb.ao:                                            ; preds = %bb.an
  %i.bsh = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bsh)
  %i.bsi = load ptr, ptr %i.bsh, align 8, !tbaa !8
  %i.bsj = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bsk = load ptr, ptr %i.bsj, align 8, !tbaa !100
  store ptr %i.bsk, ptr %i.a, align 8, !tbaa !8
  %i.bsl = add i32 %.8, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread: ; preds = %bb.ao, %bb.an, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread
  %.sroa.81494.23.2.ph = phi i64 [ %.sroa.81494.23.1.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread ], [ 0, %bb.an ], [ 0, %bb.ao ]
  %.sroa.42.28.2.ph = phi i32 [ %i.brr, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread ], [ %i.brt, %bb.an ], [ %i.brt, %bb.ao ]
  %.sroa.0.28.2.ph = phi ptr [ %.sroa.0.28.1.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread ], [ %.sroa.0.8, %bb.an ], [ %i.bsi, %bb.ao ]
  %.29.2.ph = phi i32 [ %.29.1.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread ], [ %.8, %bb.an ], [ %i.bsl, %bb.ao ]
  %i.bsm = add nsw i32 %.sroa.42.28.2.ph, -1
  br label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1
  %i.bsn = add nsw i32 %.sroa.42.8, -4
  %i.bso = icmp eq i32 %.sroa.42.8, 4
  br i1 %i.bso, label %bb.ap, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.ap:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2
  %.not.i.i402.3 = icmp eq i64 %i.bqw, 255
  %i.bsp = select i1 %.not.i.i402.3, i32 7, i32 8 ; 2 uses
  %i.bsq = trunc i64 %i.bqw to i8
  %i.bsr = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.bss = load ptr, ptr %i.bsr, align 8, !tbaa !96
  %i.bst = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bsu = load i32, ptr %i.bst, align 8, !tbaa !98
  %i.bsv = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.bsw = load i32, ptr %i.bsv, align 4, !tbaa !99
  %i.bsx = sub i32 %i.bsu, %i.bsw
  %i.bsy = zext i32 %i.bsx to i64
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bss, i64 %i.bsy
  store i8 %i.bsq, ptr %i.bsz, align 1, !tbaa !44
  %i.bta = load i32, ptr %i.bsv, align 4, !tbaa !99
  %i.btb = add i32 %i.bta, -1                     ; 2 uses
  store i32 %i.btb, ptr %i.bsv, align 4, !tbaa !99
  %i.btc = icmp eq i32 %i.btb, 0
  br i1 %i.btc, label %bb.aq, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.aq:                                            ; preds = %bb.ap
  %i.btd = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.btd)
  %i.bte = load ptr, ptr %i.btd, align 8, !tbaa !8
  %i.btf = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.btg = load ptr, ptr %i.btf, align 8, !tbaa !100
  store ptr %i.btg, ptr %i.a, align 8, !tbaa !8
  %i.bth = add i32 %.8, 512
  br label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.ar:                                            ; preds = %.preheader523.preheader
  %.not.i.i410 = icmp eq i64 %i.bmi, 255
  %i.bti = trunc i64 %i.bmi to i8
  %i.btj = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.btk = load ptr, ptr %i.btj, align 8, !tbaa !96
  %i.btl = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.btm = load i32, ptr %i.btl, align 8, !tbaa !98
  %i.btn = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.bto = load i32, ptr %i.btn, align 4, !tbaa !99
  %i.btp = sub i32 %i.btm, %i.bto
  %i.btq = zext i32 %i.btp to i64
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btk, i64 %i.btq
  store i8 %i.bti, ptr %i.btr, align 1, !tbaa !44
  %i.bts = load i32, ptr %i.btn, align 4, !tbaa !99
  %i.btt = add i32 %i.bts, -1                     ; 2 uses
  store i32 %i.btt, ptr %i.btn, align 4, !tbaa !99
  %i.btu = icmp eq i32 %i.btt, 0
  br i1 %i.btu, label %bb.as, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread

bb.as:                                            ; preds = %bb.ar
  %i.btv = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.btv)
  %i.btw = load ptr, ptr %i.btv, align 8, !tbaa !8
  %i.btx = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !100
  store ptr %i.bty, ptr %i.a, align 8, !tbaa !8
  %i.btz = add i32 %.8, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread: ; preds = %bb.as, %bb.ar
  %.sroa.0.30.ph = phi ptr [ %.sroa.0.8, %bb.ar ], [ %i.btw, %bb.as ]
  %.31.ph = phi i32 [ %.8, %bb.ar ], [ %i.btz, %bb.as ]
  %i.bua = select i1 %.not.i.i410, i32 6, i32 7
  br label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408: ; preds = %.preheader523.preheader
  %i.bub = add nsw i32 %.sroa.42.8, -2
  %i.buc = icmp eq i32 %.sroa.42.8, 2
  br i1 %i.buc, label %bb.at, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.at:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408
  %.not.i.i410.1 = icmp eq i64 %i.bmi, 255
  %i.bud = select i1 %.not.i.i410.1, i32 7, i32 8 ; 2 uses
  %i.bue = trunc i64 %i.bmi to i8
  %i.buf = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.bug = load ptr, ptr %i.buf, align 8, !tbaa !96
  %i.buh = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bui = load i32, ptr %i.buh, align 8, !tbaa !98
  %i.buj = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.buk = load i32, ptr %i.buj, align 4, !tbaa !99
  %i.bul = sub i32 %i.bui, %i.buk
  %i.bum = zext i32 %i.bul to i64
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bug, i64 %i.bum
  store i8 %i.bue, ptr %i.bun, align 1, !tbaa !44
  %i.buo = load i32, ptr %i.buj, align 4, !tbaa !99
  %i.bup = add i32 %i.buo, -1                     ; 2 uses
  store i32 %i.bup, ptr %i.buj, align 4, !tbaa !99
  %i.buq = icmp eq i32 %i.bup, 0
  br i1 %i.buq, label %bb.au, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.au:                                            ; preds = %bb.at
  %i.bur = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bur)
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !8
  %i.but = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.buu = load ptr, ptr %i.but, align 8, !tbaa !100
  store ptr %i.buu, ptr %i.a, align 8, !tbaa !8
  %i.buv = add i32 %.8, 512
  br label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

.preheader525:                                    ; preds = %bb.ac
  %8 = add nsw i32 %.sroa.42.8, -1
  %9 = icmp slt i32 %.sroa.42.8, 2
  br i1 %9, label %bb.av, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.av:                                            ; preds = %.preheader525
  %.not.i.i418 = icmp eq i64 %.sroa.81494.8, 255
  %i.buw = select i1 %.not.i.i418, i32 7, i32 8   ; 2 uses
  %i.bux = trunc i64 %.sroa.81494.8 to i8
  %i.buy = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !96
  %i.bva = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bvb = load i32, ptr %i.bva, align 8, !tbaa !98
  %i.bvc = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !99
  %i.bve = sub i32 %i.bvb, %i.bvd
  %i.bvf = zext i32 %i.bve to i64
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.buz, i64 %i.bvf
  store i8 %i.bux, ptr %i.bvg, align 1, !tbaa !44
  %i.bvh = load i32, ptr %i.bvc, align 4, !tbaa !99
  %i.bvi = add i32 %i.bvh, -1                     ; 2 uses
  store i32 %i.bvi, ptr %i.bvc, align 4, !tbaa !99
  %i.bvj = icmp eq i32 %i.bvi, 0
  br i1 %i.bvj, label %bb.aw, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.aw:                                            ; preds = %bb.av
  %i.bvk = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bvk)
  %i.bvl = load ptr, ptr %i.bvk, align 8, !tbaa !8
  %i.bvm = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bvn = load ptr, ptr %i.bvm, align 8, !tbaa !100
  store ptr %i.bvn, ptr %i.a, align 8, !tbaa !8
  %i.bvo = add i32 %.8, 512
  br label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408, %bb.at, %bb.au, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2, %bb.ap, %bb.aq, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread, %bb.aw, %bb.av, %.preheader525, %bb.ac
  %.sroa.81494.9 = phi i64 [ %.sroa.81494.8, %bb.ac ], [ %.sroa.81494.23.2.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread ], [ %.sroa.81494.8, %.preheader525 ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ %i.bqw, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2 ], [ 0, %bb.au ], [ 0, %bb.at ], [ %i.bmi, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408 ], [ 0, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread ]
  %.sroa.42.9 = phi i32 [ %.sroa.42.8, %bb.ac ], [ %i.bsm, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread ], [ %8, %.preheader525 ], [ %i.buw, %bb.aw ], [ %i.buw, %bb.av ], [ %i.bsp, %bb.aq ], [ %i.bsp, %bb.ap ], [ %i.bsn, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2 ], [ %i.bud, %bb.au ], [ %i.bud, %bb.at ], [ %i.bub, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408 ], [ %i.bua, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread ]
  %.sroa.0.9 = phi ptr [ %.sroa.0.8, %bb.ac ], [ %.sroa.0.28.2.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread ], [ %.sroa.0.8, %.preheader525 ], [ %i.bvl, %bb.aw ], [ %.sroa.0.8, %bb.av ], [ %i.bte, %bb.aq ], [ %.sroa.0.8, %bb.ap ], [ %.sroa.0.8, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2 ], [ %i.bus, %bb.au ], [ %.sroa.0.8, %bb.at ], [ %.sroa.0.8, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408 ], [ %.sroa.0.30.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread ]
  %.9 = phi i32 [ %.8, %bb.ac ], [ %.29.2.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread ], [ %.8, %.preheader525 ], [ %i.bvo, %bb.aw ], [ %.8, %bb.av ], [ %i.bth, %bb.aq ], [ %.8, %bb.ap ], [ %.8, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2 ], [ %i.buv, %bb.au ], [ %.8, %bb.at ], [ %.8, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408 ], [ %.31.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread ]
  %i.bvp = load i32, ptr %.1268555, align 8, !tbaa !33
  %i.bvq = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bvp, i1 true)
  %i.bvr = sub nuw nsw i32 32, %i.bvq
  %i.bvs = load i32, ptr %i.bmb, align 8, !tbaa !104 ; 2 uses
  %i.bvt = icmp ugt i32 %i.bvs, 2
  %i.bvu = zext i1 %i.bvt to i32                  ; 2 uses
  %i.bvv = icmp ugt i32 %i.bvs, 1
  br i1 %i.bvv, label %bb.ax, label %.lr.ph.i421

bb.ax:                                            ; preds = %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403
  %i.bvw = getelementptr inbounds nuw i8, ptr %.1268555, i64 4
  %i.bvx = load i32, ptr %i.bvw, align 4, !tbaa !33
  %i.bvy = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bvx, i1 true)
  %i.bvz = sub nuw nsw i32 32, %i.bvy
  br label %.lr.ph.i421

.lr.ph.i421:                                      ; preds = %bb.ax, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403
  %.0 = phi i32 [ %i.bvz, %bb.ax ], [ 0, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403 ]
  %i.bwa = sub nsw i32 %.0, %i.bvu
  %i.bwb = call i32 @llvm.smax.i32(i32 %i.bvr, i32 %i.bwa)
  %i.bwc = call i32 @llvm.umax.i32(i32 %i.bwb, i32 3) ; 3 uses
  %i.bwd = add nsw i32 %i.bwc, -2
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425, %.lr.ph.i421
  %.sroa.42.33 = phi i32 [ %.sroa.42.9, %.lr.ph.i421 ], [ %.sroa.42.34, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425 ] ; 2 uses
  %.sroa.0.33 = phi ptr [ %.sroa.0.9, %.lr.ph.i421 ], [ %.sroa.0.34, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425 ] ; 5 uses
  %.34 = phi i32 [ %.9, %.lr.ph.i421 ], [ %.35, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425 ] ; 3 uses
  %i.bwe = phi i64 [ %.sroa.81494.9, %.lr.ph.i421 ], [ %.sroa.81494.26, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425 ]
  %.0.in8.i423 = phi i32 [ %i.bwd, %.lr.ph.i421 ], [ %.0.i424, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425 ] ; 2 uses
  %.0.i424 = add nsw i32 %.0.in8.i423, -1         ; 2 uses
  %i.bwf = lshr i32 -2, %.0.i424
  %i.bwg = add nsw i32 %.sroa.42.33, -1           ; 2 uses
  %i.bwh = and i32 %i.bwf, 1
  %i.bwi = shl nuw i32 %i.bwh, %i.bwg
  %i.bwj = zext i32 %i.bwi to i64
  %i.bwk = or i64 %i.bwe, %i.bwj                  ; 3 uses
  %i.bwl = icmp slt i32 %.sroa.42.33, 2
  br i1 %i.bwl, label %bb.az, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425

bb.az:                                            ; preds = %bb.ay
  %.not.i.i426 = icmp eq i64 %i.bwk, 255
  %i.bwm = select i1 %.not.i.i426, i32 7, i32 8   ; 2 uses
  %i.bwn = trunc i64 %i.bwk to i8
  %i.bwo = getelementptr inbounds nuw i8, ptr %.sroa.0.33, i64 16
  %i.bwp = load ptr, ptr %i.bwo, align 8, !tbaa !96
  %i.bwq = getelementptr inbounds nuw i8, ptr %.sroa.0.33, i64 8
  %i.bwr = load i32, ptr %i.bwq, align 8, !tbaa !98
  %i.bws = getelementptr inbounds nuw i8, ptr %.sroa.0.33, i64 12 ; 3 uses
  %i.bwt = load i32, ptr %i.bws, align 4, !tbaa !99
  %i.bwu = sub i32 %i.bwr, %i.bwt
  %i.bwv = zext i32 %i.bwu to i64
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwp, i64 %i.bwv
  store i8 %i.bwn, ptr %i.bww, align 1, !tbaa !44
  %i.bwx = load i32, ptr %i.bws, align 4, !tbaa !99
  %i.bwy = add i32 %i.bwx, -1                     ; 2 uses
  store i32 %i.bwy, ptr %i.bws, align 4, !tbaa !99
  %i.bwz = icmp eq i32 %i.bwy, 0
  br i1 %i.bwz, label %bb.ba, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425

bb.ba:                                            ; preds = %bb.az
  %i.bxa = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bxa)
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !8
  %i.bxc = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bxd = load ptr, ptr %i.bxc, align 8, !tbaa !100
  store ptr %i.bxd, ptr %i.a, align 8, !tbaa !8
  %i.bxe = add i32 %.34, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425: ; preds = %bb.ba, %bb.az, %bb.ay
  %.sroa.81494.26 = phi i64 [ 0, %bb.ba ], [ 0, %bb.az ], [ %i.bwk, %bb.ay ] ; 2 uses
  %.sroa.42.34 = phi i32 [ %i.bwm, %bb.ba ], [ %i.bwm, %bb.az ], [ %i.bwg, %bb.ay ] ; 2 uses
  %.sroa.0.34 = phi ptr [ %i.bxb, %bb.ba ], [ %.sroa.0.33, %bb.az ], [ %.sroa.0.33, %bb.ay ] ; 2 uses
  %.35 = phi i32 [ %i.bxe, %bb.ba ], [ %.34, %bb.az ], [ %.34, %bb.ay ] ; 2 uses
  %i.bxf = icmp samesign ugt i32 %.0.in8.i423, 1
  br i1 %i.bxf, label %bb.ay, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427, !llvm.loop !101

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425
  %i.bxg = load i32, ptr %.1268555, align 8, !tbaa !33
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427
  %.sroa.42.36 = phi i32 [ %.sroa.42.34, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427 ], [ %.sroa.42.37, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433 ] ; 2 uses
  %.sroa.0.36 = phi ptr [ %.sroa.0.34, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427 ], [ %.sroa.0.37, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433 ] ; 5 uses
  %.37 = phi i32 [ %.35, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427 ], [ %.38, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433 ] ; 3 uses
  %i.bxh = phi i64 [ %.sroa.81494.26, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427 ], [ %.sroa.81494.28, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433 ]
  %.0.in8.i431 = phi i32 [ %i.bwc, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427 ], [ %.0.i432, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433 ] ; 2 uses
  %.0.i432 = add nsw i32 %.0.in8.i431, -1         ; 2 uses
  %i.bxi = lshr i32 %i.bxg, %.0.i432
  %i.bxj = add nsw i32 %.sroa.42.36, -1           ; 2 uses
  %i.bxk = and i32 %i.bxi, 1
  %i.bxl = shl nuw i32 %i.bxk, %i.bxj
  %i.bxm = zext i32 %i.bxl to i64
  %i.bxn = or i64 %i.bxh, %i.bxm                  ; 3 uses
  %i.bxo = icmp slt i32 %.sroa.42.36, 2
  br i1 %i.bxo, label %bb.bc, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i434 = icmp eq i64 %i.bxn, 255
  %i.bxp = select i1 %.not.i.i434, i32 7, i32 8   ; 2 uses
  %i.bxq = trunc i64 %i.bxn to i8
  %i.bxr = getelementptr inbounds nuw i8, ptr %.sroa.0.36, i64 16
  %i.bxs = load ptr, ptr %i.bxr, align 8, !tbaa !96
  %i.bxt = getelementptr inbounds nuw i8, ptr %.sroa.0.36, i64 8
  %i.bxu = load i32, ptr %i.bxt, align 8, !tbaa !98
  %i.bxv = getelementptr inbounds nuw i8, ptr %.sroa.0.36, i64 12 ; 3 uses
  %i.bxw = load i32, ptr %i.bxv, align 4, !tbaa !99
  %i.bxx = sub i32 %i.bxu, %i.bxw
  %i.bxy = zext i32 %i.bxx to i64
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxs, i64 %i.bxy
  store i8 %i.bxq, ptr %i.bxz, align 1, !tbaa !44
  %i.bya = load i32, ptr %i.bxv, align 4, !tbaa !99
  %i.byb = add i32 %i.bya, -1                     ; 2 uses
  store i32 %i.byb, ptr %i.bxv, align 4, !tbaa !99
  %i.byc = icmp eq i32 %i.byb, 0
  br i1 %i.byc, label %bb.bd, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433

bb.bd:                                            ; preds = %bb.bc
  %i.byd = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.byd)
  %i.bye = load ptr, ptr %i.byd, align 8, !tbaa !8
  %i.byf = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.byg = load ptr, ptr %i.byf, align 8, !tbaa !100
  store ptr %i.byg, ptr %i.a, align 8, !tbaa !8
  %i.byh = add i32 %.37, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433: ; preds = %bb.bd, %bb.bc, %bb.bb
  %.sroa.81494.28 = phi i64 [ 0, %bb.bd ], [ 0, %bb.bc ], [ %i.bxn, %bb.bb ] ; 3 uses
  %.sroa.42.37 = phi i32 [ %i.bxp, %bb.bd ], [ %i.bxp, %bb.bc ], [ %i.bxj, %bb.bb ] ; 3 uses
  %.sroa.0.37 = phi ptr [ %i.bye, %bb.bd ], [ %.sroa.0.36, %bb.bc ], [ %.sroa.0.36, %bb.bb ] ; 3 uses
  %.38 = phi i32 [ %i.byh, %bb.bd ], [ %.37, %bb.bc ], [ %.37, %bb.bb ] ; 3 uses
  %i.byi = icmp samesign ugt i32 %.0.in8.i431, 1
  br i1 %i.byi, label %bb.bb, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435, !llvm.loop !101

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433
  %i.byj = load i32, ptr %i.bmb, align 8, !tbaa !104
  %i.byk = icmp ugt i32 %i.byj, 1
  br i1 %i.byk, label %bb.be, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443

bb.be:                                            ; preds = %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435
  %i.byl = getelementptr inbounds nuw i8, ptr %.1268555, i64 4
  %i.bym = load i32, ptr %i.byl, align 4, !tbaa !33
  %i.byn = add nuw nsw i32 %i.bwc, %i.bvu
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441, %bb.be
  %.sroa.42.38 = phi i32 [ %.sroa.42.37, %bb.be ], [ %.sroa.42.39, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ] ; 2 uses
  %.sroa.0.38 = phi ptr [ %.sroa.0.37, %bb.be ], [ %.sroa.0.39, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ] ; 5 uses
  %.39 = phi i32 [ %.38, %bb.be ], [ %.40, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ] ; 3 uses
  %i.byo = phi i64 [ %.sroa.81494.28, %bb.be ], [ %.sroa.81494.29, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ]
  %.0.in8.i439 = phi i32 [ %i.byn, %bb.be ], [ %.0.i440, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ] ; 2 uses
  %.0.i440 = add nsw i32 %.0.in8.i439, -1         ; 2 uses
  %i.byp = lshr i32 %i.bym, %.0.i440
  %i.byq = add nsw i32 %.sroa.42.38, -1           ; 2 uses
  %i.byr = and i32 %i.byp, 1
  %i.bys = shl nuw i32 %i.byr, %i.byq
  %i.byt = zext i32 %i.bys to i64
  %i.byu = or i64 %i.byo, %i.byt                  ; 3 uses
  %i.byv = icmp slt i32 %.sroa.42.38, 2
  br i1 %i.byv, label %bb.bg, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i442 = icmp eq i64 %i.byu, 255
  %i.byw = select i1 %.not.i.i442, i32 7, i32 8   ; 2 uses
  %i.byx = trunc i64 %i.byu to i8
  %i.byy = getelementptr inbounds nuw i8, ptr %.sroa.0.38, i64 16
  %i.byz = load ptr, ptr %i.byy, align 8, !tbaa !96
  %i.bza = getelementptr inbounds nuw i8, ptr %.sroa.0.38, i64 8
  %i.bzb = load i32, ptr %i.bza, align 8, !tbaa !98
  %i.bzc = getelementptr inbounds nuw i8, ptr %.sroa.0.38, i64 12 ; 3 uses
  %i.bzd = load i32, ptr %i.bzc, align 4, !tbaa !99
  %i.bze = sub i32 %i.bzb, %i.bzd
  %i.bzf = zext i32 %i.bze to i64
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.byz, i64 %i.bzf
  store i8 %i.byx, ptr %i.bzg, align 1, !tbaa !44
  %i.bzh = load i32, ptr %i.bzc, align 4, !tbaa !99
  %i.bzi = add i32 %i.bzh, -1                     ; 2 uses
  store i32 %i.bzi, ptr %i.bzc, align 4, !tbaa !99
  %i.bzj = icmp eq i32 %i.bzi, 0
  br i1 %i.bzj, label %bb.bh, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441

bb.bh:                                            ; preds = %bb.bg
  %i.bzk = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bzk)
  %i.bzl = load ptr, ptr %i.bzk, align 8, !tbaa !8
  %i.bzm = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bzn = load ptr, ptr %i.bzm, align 8, !tbaa !100
  store ptr %i.bzn, ptr %i.a, align 8, !tbaa !8
  %i.bzo = add i32 %.39, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441: ; preds = %bb.bh, %bb.bg, %bb.bf
  %.sroa.81494.29 = phi i64 [ 0, %bb.bh ], [ 0, %bb.bg ], [ %i.byu, %bb.bf ] ; 2 uses
  %.sroa.42.39 = phi i32 [ %i.byw, %bb.bh ], [ %i.byw, %bb.bg ], [ %i.byq, %bb.bf ] ; 2 uses
  %.sroa.0.39 = phi ptr [ %i.bzl, %bb.bh ], [ %.sroa.0.38, %bb.bg ], [ %.sroa.0.38, %bb.bf ] ; 2 uses
  %.40 = phi i32 [ %i.bzo, %bb.bh ], [ %.39, %bb.bg ], [ %.39, %bb.bf ] ; 2 uses
  %i.bzp = icmp samesign ugt i32 %.0.in8.i439, 1
  br i1 %i.bzp, label %bb.bf, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443, !llvm.loop !101

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435
  %.sroa.81494.10 = phi i64 [ %.sroa.81494.28, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435 ], [ %.sroa.81494.29, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ]
  %.sroa.42.10 = phi i32 [ %.sroa.42.37, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435 ], [ %.sroa.42.39, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ]
  %.sroa.0.10 = phi ptr [ %.sroa.0.37, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435 ], [ %.sroa.0.39, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ]
  %.10 = phi i32 [ %.38, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435 ], [ %.40, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ]
  %i.bzq = load i32, ptr %.1268555, align 8, !tbaa !33
  %i.bzr = getelementptr inbounds nuw i8, ptr %.1268555, i64 4
  %i.bzs = load i32, ptr %i.bzr, align 4, !tbaa !33
  %i.bzt = add i32 %i.bzq, %.2557
  %i.bzu = add i32 %i.bzt, %i.bzs
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ab, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443
  %.sroa.81494.11 = phi i64 [ %.sroa.81494.5, %bb.ab ], [ %.sroa.81494.10, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443 ] ; 2 uses
  %.sroa.42.11 = phi i32 [ %.sroa.42.5, %bb.ab ], [ %.sroa.42.10, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443 ] ; 2 uses
  %.sroa.0.11 = phi ptr [ %.sroa.0.5, %bb.ab ], [ %.sroa.0.10, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443 ] ; 2 uses
  %.11 = phi i32 [ %.5512, %bb.ab ], [ %.10, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443 ] ; 2 uses
  %.3 = phi i32 [ %.2557, %bb.ab ], [ %i.bzu, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443 ] ; 2 uses
  %i.bzv = add nuw i32 %.0259556, 1               ; 2 uses
  %i.bzw = getelementptr inbounds nuw i8, ptr %.1268555, i64 32
  %exitcond605.not = icmp eq i32 %i.bzv, %i.bix
  br i1 %exitcond605.not, label %._crit_edge558, label %.preheader528, !llvm.loop !107

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit: ; preds = %._crit_edge558, %bb.r, %bb.q, %.preheader531.preheader, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366, %bb.s
  %.sroa.81494.12 = phi i64 [ %.sroa.81494.0575, %.preheader531.preheader ], [ %.sroa.81494.0575, %bb.s ], [ %.sroa.81494.1, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ 0, %bb.r ], [ 0, %bb.q ], [ %.sroa.81494.3.lcssa, %._crit_edge558 ]
  %.sroa.42.12 = phi i32 [ %i.bhd, %.preheader531.preheader ], [ %.sroa.42.0576, %bb.s ], [ %.sroa.42.1, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ %i.bhf, %bb.r ], [ %i.bhf, %bb.q ], [ %.sroa.42.3.lcssa, %._crit_edge558 ]
  %.sroa.0.12 = phi ptr [ %.sroa.0.0577, %.preheader531.preheader ], [ %.sroa.0.0577, %bb.s ], [ %.sroa.0.1, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ %i.bhu, %bb.r ], [ %.sroa.0.0577, %bb.q ], [ %.sroa.0.3.lcssa, %._crit_edge558 ]
  %.12 = phi i32 [ %.0507578, %.preheader531.preheader ], [ %.0507578, %bb.s ], [ %.1508, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ %i.bhx, %bb.r ], [ %.0507578, %bb.q ], [ %.3510.lcssa, %._crit_edge558 ]
  %.3256 = phi i32 [ %.0253580, %.preheader531.preheader ], [ %i.bhy, %bb.s ], [ %.2255, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ %.0253580, %bb.r ], [ %.0253580, %bb.q ], [ %.2255, %._crit_edge558 ]
  %.4 = phi i32 [ %.0251581, %.preheader531.preheader ], [ %.0251581, %bb.s ], [ %.0251581, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ %.0251581, %bb.r ], [ %.0251581, %bb.q ], [ %.2.lcssa, %._crit_edge558 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, %bb.d, %bb.e, %bb.c
  %.sroa.81494.13 = phi i64 [ %.sroa.81494.0575, %bb.c ], [ %.sroa.81494.0575, %bb.d ], [ %.sroa.81494.0575, %bb.e ], [ %.sroa.81494.12, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 2 uses
  %.sroa.42.13 = phi i32 [ %.sroa.42.0576, %bb.c ], [ %.sroa.42.0576, %bb.d ], [ %.sroa.42.0576, %bb.e ], [ %.sroa.42.12, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 2 uses
  %.sroa.0.13 = phi ptr [ %.sroa.0.0577, %bb.c ], [ %.sroa.0.0577, %bb.d ], [ %.sroa.0.0577, %bb.e ], [ %.sroa.0.12, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 4 uses
  %.13 = phi i32 [ %.0507578, %bb.c ], [ %.0507578, %bb.d ], [ %.0507578, %bb.e ], [ %.12, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 3 uses
  %.4257 = phi i32 [ %.0253580, %bb.c ], [ %.0253580, %bb.d ], [ %.0253580, %bb.e ], [ %.3256, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ]
  %.5 = phi i32 [ %.0251581, %bb.c ], [ %.0251581, %bb.d ], [ %.0251581, %bb.e ], [ %.4, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 3 uses
  %indvars.iv.next608 = add nuw nsw i64 %indvars.iv607, 1 ; 2 uses
  %exitcond610.not = icmp eq i64 %indvars.iv.next608, 4
  br i1 %exitcond610.not, label %bb.b, label %bb.c, !llvm.loop !108

bb.bk:                                            ; preds = %bb.b
  %i.bzx = icmp slt i32 %.sroa.42.13, 8
  br i1 %i.bzx, label %bb.bl, label %.thread658

.thread658:                                       ; preds = %bb.bk
  %i.bzy = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzy, i64 8
  %i.caa = load i32, ptr %i.bzz, align 8, !tbaa !98
  %i.cab = getelementptr inbounds nuw i8, ptr %i.bzy, i64 12
  %i.cac = load i32, ptr %i.cab, align 4, !tbaa !99
  %i.cad = add i32 %i.caa, %.13
  %i.cae = sub i32 %i.cad, %i.cac
  %i.caf = add i32 %i.cae, %.5
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.cag = trunc i64 %.sroa.81494.13 to i8
  %i.cah = getelementptr inbounds nuw i8, ptr %.sroa.0.13, i64 16
  %i.cai = load ptr, ptr %i.cah, align 8, !tbaa !96
  %i.caj = getelementptr inbounds nuw i8, ptr %.sroa.0.13, i64 8
  %i.cak = load i32, ptr %i.caj, align 8, !tbaa !98
  %i.cal = getelementptr inbounds nuw i8, ptr %.sroa.0.13, i64 12 ; 3 uses
  %i.cam = load i32, ptr %i.cal, align 4, !tbaa !99
  %i.can = sub i32 %i.cak, %i.cam
  %i.cao = zext i32 %i.can to i64
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cai, i64 %i.cao
  store i8 %i.cag, ptr %i.cap, align 1, !tbaa !44
  %i.caq = load i32, ptr %i.cal, align 4, !tbaa !99
  %i.car = add i32 %i.caq, -1
  store i32 %i.car, ptr %i.cal, align 4, !tbaa !99
  %.pre614.pre = load ptr, ptr %i.o, align 8, !tbaa !11
  %.pre614.pre.fr = freeze ptr %.pre614.pre
  %i.cas = icmp eq ptr %.pre614.pre.fr, null
  %i.cat = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cat, i64 8
  %i.cav = load i32, ptr %i.cau, align 8, !tbaa !98
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cat, i64 12
  %i.cax = load i32, ptr %i.caw, align 4, !tbaa !99
  %i.cay = add i32 %i.cav, %.13
  %i.caz = sub i32 %i.cay, %i.cax
  %i.cba = add i32 %i.caz, %.5
  br i1 %i.cas, label %.thread, label %bb.bm

.thread:                                          ; preds = %bb.b, %bb.bl
  br label %bb.bm

bb.bm:                                            ; preds = %.thread658, %bb.bl, %.thread
  %i.cbb = phi i32 [ 1, %.thread ], [ %i.cba, %bb.bl ], [ %i.caf, %.thread658 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.cbb
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local8precinct5writeEPNS_12outfile_baseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(98) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %.preheader42

.preheader:                                       ; preds = %.preheader42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17   ; 5 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !18, !range !28, !noundef !29
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.loopexit, label %bb.b

.preheader42:                                     ; preds = %bb.a, %.preheader42
  %.03743 = phi ptr [ %i.u, %.preheader42 ], [ %i.c, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.03743, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %.03743, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %.03743, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !99
  %i.o = sub i32 %i.l, %i.n
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %1, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.j, i64 noundef %i.p) ; 0 uses
  %i.u = load ptr, ptr %.03743, align 8, !tbaa !100 ; 2 uses
  %.not39 = icmp eq ptr %i.u, null
  br i1 %.not39, label %.preheader, label %.preheader42, !llvm.loop !111

bb.b:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31  ; 2 uses
  %.not56 = icmp eq i32 %i.aa, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.not57 = icmp eq i32 %i.y, 0
  br i1 %.not57, label %.loopexit, label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph54, %._crit_edge51
  %.03552 = phi i32 [ %i.am, %._crit_edge51 ], [ 0, %.lr.ph54 ] ; 2 uses
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.af = load i32, ptr %i.e, align 8, !tbaa !59
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ah = add i32 %i.ag, %.03552
  %i.ai = mul i32 %i.ah, %i.w
  %i.aj = add i32 %i.ai, %i.af
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ak
  br label %bb.c

._crit_edge51:                                    ; preds = %._crit_edge
  %i.am = add nuw i32 %.03552, 1                  ; 2 uses
  %exitcond58.not = icmp eq i32 %i.am, %i.aa
  br i1 %exitcond58.not, label %.loopexit.loopexit, label %.lr.ph50, !llvm.loop !112

bb.c:                                             ; preds = %.lr.ph50, %._crit_edge
  %.03348 = phi i32 [ 0, %.lr.ph50 ], [ %i.ba, %._crit_edge ]
  %.03447 = phi ptr [ %i.al, %.lr.ph50 ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03447, i64 24
  %.044 = load ptr, ptr %i.an, align 8, !tbaa !8  ; 2 uses
  %.not4045 = icmp eq ptr %.044, null
  br i1 %.not4045, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.046 = phi ptr [ %.0, %.lr.ph ], [ %.044, %bb.c ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.046, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw i8, ptr %.046, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !99
  %i.au = sub i32 %i.ar, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = load ptr, ptr %1, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ap, i64 noundef %i.av) ; 0 uses
  %.0 = load ptr, ptr %.046, align 8, !tbaa !8    ; 2 uses
  %.not40 = icmp eq ptr %.0, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph, !llvm.loop !113

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.ba = add nuw i32 %.03348, 1                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03447, i64 32
  %exitcond.not = icmp eq i32 %i.ba, %i.y
  br i1 %exitcond.not, label %._crit_edge51, label %bb.c, !llvm.loop !114

.loopexit.loopexit:                               ; preds = %._crit_edge51
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %.lr.ph54, %.preheader
  %i.bc = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.f, %bb.b ], [ %i.f, %.lr.ph54 ], [ %i.f, %.preheader ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !18, !range !28, !noundef !29
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.loopexit.1, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 176
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !30 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 44
end_hunk_0
