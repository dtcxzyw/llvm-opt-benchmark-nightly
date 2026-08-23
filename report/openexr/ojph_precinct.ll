Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_precinct?download=true
inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct16prepare_precinctEiPjPNS_21mem_elastic_allocatorE:bb.a
  %i.bhv = load ptr, ptr %i.a, align 8, !tbaa !8  ; 3 uses
  store ptr %i.bhv, ptr %i.o, align 8, !tbaa !11
  %i.bhw = icmp sgt i32 %.0253580, 0
  br i1 %i.bhw, label %.lr.ph.i360, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366

.lr.ph.i360:                                      ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364
  %.sroa.42.17 = phi i32 [ %.sroa.42.18, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ], [ 7, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 2 uses
  %.sroa.0.17 = phi ptr [ %.sroa.0.18, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ], [ %i.bhv, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 5 uses
  %.18 = phi i32 [ %.19, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ], [ %.0507578, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 3 uses
  %i.bhx = phi i64 [ %.sroa.81494.16, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ], [ 128, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 2 uses
  %.0.in8.i362 = phi i32 [ %.0.i363, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ], [ %.0253580, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ] ; 2 uses
  %.0.i363 = add nsw i32 %.0.in8.i362, -1
  %i.bhy = add nsw i32 %.sroa.42.17, -1
  %i.bhz = icmp slt i32 %.sroa.42.17, 2
  br i1 %i.bhz, label %bb.u, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364

bb.u:                                             ; preds = %.lr.ph.i360
  %i.bia = trunc nuw i64 %i.bhx to i8
  %i.bib = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 16
  %i.bic = load ptr, ptr %i.bib, align 8, !tbaa !96
  %i.bid = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 8
  %i.bie = load i32, ptr %i.bid, align 8, !tbaa !98
  %i.bif = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 12 ; 3 uses
  %i.big = load i32, ptr %i.bif, align 4, !tbaa !99
  %i.bih = sub i32 %i.bie, %i.big
  %i.bii = zext i32 %i.bih to i64
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bic, i64 %i.bii
  store i8 %i.bia, ptr %i.bij, align 1, !tbaa !44
  %i.bik = load i32, ptr %i.bif, align 4, !tbaa !99
  %i.bil = add i32 %i.bik, -1                     ; 2 uses
  store i32 %i.bil, ptr %i.bif, align 4, !tbaa !99
  %i.bim = icmp eq i32 %i.bil, 0
  br i1 %i.bim, label %bb.v, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364

bb.v:                                             ; preds = %bb.u
  %i.bin = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bin)
  %i.bio = load ptr, ptr %i.bin, align 8, !tbaa !8
  %i.bip = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !100
  store ptr %i.biq, ptr %i.a, align 8, !tbaa !8
  %i.bir = add i32 %.18, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364: ; preds = %bb.v, %bb.u, %.lr.ph.i360
  %.sroa.81494.16 = phi i64 [ 0, %bb.v ], [ 0, %bb.u ], [ %i.bhx, %.lr.ph.i360 ] ; 2 uses
  %.sroa.42.18 = phi i32 [ 8, %bb.v ], [ 8, %bb.u ], [ %i.bhy, %.lr.ph.i360 ] ; 2 uses
  %.sroa.0.18 = phi ptr [ %i.bio, %bb.v ], [ %.sroa.0.17, %bb.u ], [ %.sroa.0.17, %.lr.ph.i360 ] ; 2 uses
  %.19 = phi i32 [ %i.bir, %bb.v ], [ %.18, %bb.u ], [ %.18, %.lr.ph.i360 ] ; 2 uses
  %i.bis = icmp samesign ugt i32 %.0.in8.i362, 1
  br i1 %i.bis, label %.lr.ph.i360, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366, !llvm.loop !101

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, %bb.t
  %.sroa.81494.1 = phi i64 [ %.sroa.81494.0575, %bb.t ], [ 128, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ], [ %.sroa.81494.16, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ] ; 2 uses
  %.sroa.42.1 = phi i32 [ %.sroa.42.0576, %bb.t ], [ 7, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ], [ %.sroa.42.18, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0577, %bb.t ], [ %i.bhv, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ], [ %.sroa.0.18, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ] ; 2 uses
  %.1508 = phi i32 [ %.0507578, %bb.t ], [ %.0507578, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ], [ %.19, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ] ; 2 uses
  %.2255 = phi i32 [ %.0253580, %bb.t ], [ 0, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ], [ 0, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i364 ] ; 2 uses
  %i.bit = load i32, ptr %i.v, align 8, !tbaa !30 ; 2 uses
  %i.biu = load i32, ptr %i.y, align 4, !tbaa !31 ; 2 uses
  %.not586 = icmp eq i32 %i.biu, 0
  br i1 %.not586, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, label %.lr.ph569

.lr.ph569:                                        ; preds = %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366
  %.not587 = icmp eq i32 %i.bit, 0
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph569, %._crit_edge558
  %.1568 = phi i32 [ %.0251581, %.lr.ph569 ], [ %.2.lcssa, %._crit_edge558 ] ; 2 uses
  %.0260567 = phi i32 [ 0, %.lr.ph569 ], [ %i.bjg, %._crit_edge558 ] ; 6 uses
  %.2509566 = phi i32 [ %.1508, %.lr.ph569 ], [ %.3510.lcssa, %._crit_edge558 ] ; 2 uses
  %.sroa.0.2565 = phi ptr [ %.sroa.0.1, %.lr.ph569 ], [ %.sroa.0.3.lcssa, %._crit_edge558 ] ; 2 uses
  %.sroa.42.2564 = phi i32 [ %.sroa.42.1, %.lr.ph569 ], [ %.sroa.42.3.lcssa, %._crit_edge558 ] ; 2 uses
  %.sroa.81494.2563 = phi i64 [ %.sroa.81494.1, %.lr.ph569 ], [ %.sroa.81494.3.lcssa, %._crit_edge558 ] ; 2 uses
  br i1 %.not587, label %._crit_edge558, label %.preheader528.preheader

.preheader528.preheader:                          ; preds = %bb.w
  %i.biv = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.biw = getelementptr inbounds nuw [120 x i8], ptr %i.biv, i64 %indvars.iv607
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biw, i64 104
  %i.biy = load ptr, ptr %i.bix, align 8, !tbaa !57
  %i.biz = load i32, ptr %i.jc, align 4, !tbaa !58
  %i.bja = add i32 %i.biz, %.0260567
  %i.bjb = mul i32 %i.bja, %i.jb
  %i.bjc = load i32, ptr %i.u, align 8, !tbaa !59
  %i.bjd = add i32 %i.bjb, %i.bjc
  %i.bje = zext i32 %i.bjd to i64
  %i.bjf = getelementptr inbounds nuw [32 x i8], ptr %i.biy, i64 %i.bje
  br label %.preheader528

.preheader528:                                    ; preds = %.preheader528.preheader, %bb.bi
  %.2557 = phi i32 [ %.3, %bb.bi ], [ %.1568, %.preheader528.preheader ] ; 2 uses
  %.0259556 = phi i32 [ %i.bzr, %bb.bi ], [ 0, %.preheader528.preheader ] ; 5 uses
  %.1268555 = phi ptr [ %i.bzs, %bb.bi ], [ %i.bjf, %.preheader528.preheader ] ; 8 uses
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
  %i.bjg = add nuw i32 %.0260567, 1               ; 2 uses
  %exitcond606.not = icmp eq i32 %i.bjg, %i.biu
  br i1 %exitcond606.not, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, label %bb.w, !llvm.loop !102

bb.x:                                             ; preds = %._crit_edge612, %.preheader528
  %.4511665 = phi i32 [ %.3510554, %.preheader528 ], [ %.5512, %._crit_edge612 ] ; 4 uses
  %.sroa.0.4664 = phi ptr [ %.sroa.0.3553, %.preheader528 ], [ %.sroa.0.5, %._crit_edge612 ] ; 6 uses
  %.sroa.42.4663 = phi i32 [ %.sroa.42.3552, %.preheader528 ], [ %.sroa.42.5, %._crit_edge612 ] ; 3 uses
  %.sroa.81494.4662 = phi i64 [ %.sroa.81494.3551, %.preheader528 ], [ %.sroa.81494.5, %._crit_edge612 ] ; 2 uses
  %indvars.iv601661 = phi i64 [ %wide.trip.count40.i, %.preheader528 ], [ %indvars.iv.next602.a, %._crit_edge612 ] ; 3 uses
  %i.bjh = trunc nuw i64 %indvars.iv601661 to i32 ; 5 uses
  %i.bji = add nsw i32 %i.bjh, -1                 ; 6 uses
  %i.bjj = lshr i32 %.0259556, %i.bji             ; 2 uses
  %i.bjk = lshr i32 %.0260567, %i.bji             ; 2 uses
  %i.bjl = zext i32 %i.bji to i64                 ; 2 uses
  %i.bjm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bjl
  %i.bjn = load ptr, ptr %i.bjm, align 8, !tbaa !34
  %notmask.i367 = shl nsw i32 -1, %i.bji
  %i.bjo = xor i32 %notmask.i367, -1              ; 2 uses
  %i.bjp = add i32 %i.dc, %i.bjo
  %i.bjq = lshr i32 %i.bjp, %i.bji
  %i.bjr = mul i32 %i.bjq, %i.bjk
  %i.bjs = add i32 %i.bjr, %i.bjj
  %i.bjt = zext i32 %i.bjs to i64
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjn, i64 %i.bjt ; 2 uses
  %i.bjv = load i8, ptr %i.bju, align 1, !tbaa !44
  %i.bjw = icmp eq i8 %i.bjv, 0
  %i.bjx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bjl
  %i.bjy = load ptr, ptr %i.bjx, align 8, !tbaa !34 ; 2 uses
  %i.bjz = add i32 %i.ax, %i.bjo
  %i.bka = lshr i32 %i.bjz, %i.bji
  %i.bkb = mul i32 %i.bka, %i.bjk
  %i.bkc = add i32 %i.bkb, %i.bjj
  %i.bkd = zext i32 %i.bkc to i64                 ; 2 uses
  br i1 %i.bjw, label %bb.y, label %._crit_edge612

bb.y:                                             ; preds = %bb.x
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bjy, i64 %i.bkd
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !44
  %i.bkg = zext i8 %i.bkf to i32
  %i.bkh = lshr i32 %.0259556, %i.bjh
  %i.bki = lshr i32 %.0260567, %i.bjh
  %i.bkj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv601661
  %i.bkk = load ptr, ptr %i.bkj, align 8, !tbaa !34
  %notmask.i369 = shl nsw i32 -1, %i.bjh
  %i.bkl = xor i32 %notmask.i369, -1
  %i.bkm = add i32 %i.ax, %i.bkl
  %i.bkn = lshr i32 %i.bkm, %i.bjh
  %i.bko = mul i32 %i.bkn, %i.bki
  %i.bkp = add i32 %i.bko, %i.bkh
  %i.bkq = zext i32 %i.bkp to i64
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkk, i64 %i.bkq
  %i.bks = load i8, ptr %i.bkr, align 1, !tbaa !44
  %i.bkt = zext i8 %i.bks to i32
  %i.bku = xor i32 %i.bkt, -1
  %i.bkv = add nsw i32 %i.bku, %i.bkg
  %i.bkw = add nsw i32 %.sroa.42.4663, -1         ; 2 uses
  %i.bkx = and i32 %i.bkv, 1
  %i.bky = shl nuw i32 %i.bkx, %i.bkw
  %i.bkz = zext i32 %i.bky to i64
  %i.bla = or i64 %.sroa.81494.4662, %i.bkz       ; 3 uses
  %i.blb = icmp slt i32 %.sroa.42.4663, 2
  br i1 %i.blb, label %bb.z, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374

bb.z:                                             ; preds = %bb.y
  %.not.i.i376 = icmp eq i64 %i.bla, 255
  %i.blc = select i1 %.not.i.i376, i32 7, i32 8   ; 2 uses
  %i.bld = trunc i64 %i.bla to i8
  %i.ble = getelementptr inbounds nuw i8, ptr %.sroa.0.4664, i64 16
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !96
  %i.blg = getelementptr inbounds nuw i8, ptr %.sroa.0.4664, i64 8
  %i.blh = load i32, ptr %i.blg, align 8, !tbaa !98
  %i.bli = getelementptr inbounds nuw i8, ptr %.sroa.0.4664, i64 12 ; 3 uses
  %i.blj = load i32, ptr %i.bli, align 4, !tbaa !99
  %i.blk = sub i32 %i.blh, %i.blj
  %i.bll = zext i32 %i.blk to i64
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blf, i64 %i.bll
  store i8 %i.bld, ptr %i.blm, align 1, !tbaa !44
  %i.bln = load i32, ptr %i.bli, align 4, !tbaa !99
  %i.blo = add i32 %i.bln, -1                     ; 2 uses
  store i32 %i.blo, ptr %i.bli, align 4, !tbaa !99
  %i.blp = icmp eq i32 %i.blo, 0
  br i1 %i.blp, label %bb.aa, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374

bb.aa:                                            ; preds = %bb.z
  %i.blq = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.blq)
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !8
  %i.bls = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.blt = load ptr, ptr %i.bls, align 8, !tbaa !100
  store ptr %i.blt, ptr %i.a, align 8, !tbaa !8
  %i.blu = add i32 %.4511665, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374: ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.81494.18 = phi i64 [ 0, %bb.aa ], [ 0, %bb.z ], [ %i.bla, %bb.y ]
  %.sroa.42.21 = phi i32 [ %i.blc, %bb.aa ], [ %i.blc, %bb.z ], [ %i.bkw, %bb.y ]
  %.sroa.0.21 = phi ptr [ %i.blr, %bb.aa ], [ %.sroa.0.4664, %bb.z ], [ %.sroa.0.4664, %bb.y ]
  %.22 = phi i32 [ %i.blu, %bb.aa ], [ %.4511665, %bb.z ], [ %.4511665, %bb.y ]
  store i8 1, ptr %i.bju, align 1, !tbaa !44
  br label %._crit_edge612

._crit_edge612:                                   ; preds = %bb.x, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374
  %.sroa.81494.5 = phi i64 [ %.sroa.81494.18, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374 ], [ %.sroa.81494.4662, %bb.x ] ; 3 uses
  %.sroa.42.5 = phi i32 [ %.sroa.42.21, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374 ], [ %.sroa.42.4663, %bb.x ] ; 3 uses
  %.sroa.0.5 = phi ptr [ %.sroa.0.21, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374 ], [ %.sroa.0.4664, %bb.x ] ; 3 uses
  %.5512 = phi i32 [ %.22, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i374 ], [ %.4511665, %bb.x ] ; 3 uses
  %i.blv = getelementptr inbounds nuw i8, ptr %i.bjy, i64 %i.bkd
  %i.blw = load i8, ptr %i.blv, align 1, !tbaa !44
  %.not276 = icmp ne i8 %i.blw, 0
  %indvars.iv.next602.a = add nsw i64 %indvars.iv601661, -1 ; 2 uses
  %.not275 = icmp eq i64 %indvars.iv.next602.a, 0
  %or.cond = select i1 %.not276, i1 true, i1 %.not275
  br i1 %or.cond, label %bb.ab, label %bb.x, !llvm.loop !103

bb.ab:                                            ; preds = %._crit_edge612
  %i.blx = getelementptr inbounds nuw i8, ptr %.1268555, i64 8 ; 4 uses
  %i.bly = load i32, ptr %i.blx, align 8, !tbaa !104
  %i.blz = icmp eq i32 %i.bly, 0
  br i1 %i.blz, label %bb.bi, label %.preheader527

bb.ac:                                            ; preds = %bb.ai
  %i.bma = load i32, ptr %i.blx, align 8, !tbaa !104
  switch i32 %i.bma, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403 [
    i32 3, label %.preheader.preheader
    i32 2, label %.preheader523.preheader
    i32 1, label %.preheader525.preheader
  ]

.preheader525.preheader:                          ; preds = %bb.ac
  %8 = add nsw i32 %.sroa.42.8, -1
  %9 = icmp slt i32 %.sroa.42.8, 2
  br i1 %9, label %bb.av, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

.preheader523.preheader:                          ; preds = %bb.ac
  %i.bmb = add nsw i32 %.sroa.42.8, -1
  %i.bmc = shl nuw i32 1, %i.bmb
  %i.bmd = zext i32 %i.bmc to i64
  %i.bme = or i64 %.sroa.81494.8, %i.bmd          ; 5 uses
  %i.bmf = icmp slt i32 %.sroa.42.8, 2
  br i1 %i.bmf, label %bb.ar, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408

.preheader.preheader:                             ; preds = %bb.ac
  %i.bmg = add nsw i32 %.sroa.42.8, -1
  %i.bmh = shl nuw i32 1, %i.bmg
  %i.bmi = zext i32 %i.bmh to i64
  %i.bmj = or i64 %.sroa.81494.8, %i.bmi          ; 3 uses
  %i.bmk = icmp slt i32 %.sroa.42.8, 2
  br i1 %i.bmk, label %bb.aj, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400

.preheader527:                                    ; preds = %bb.ab, %bb.ai
  %indvars.iv603 = phi i64 [ %indvars.iv.next604, %bb.ai ], [ %wide.trip.count40.i, %bb.ab ] ; 3 uses
  %.7549 = phi i32 [ %.8, %bb.ai ], [ %.5512, %bb.ab ] ; 3 uses
  %.sroa.0.7548 = phi ptr [ %.sroa.0.8, %bb.ai ], [ %.sroa.0.5, %bb.ab ] ; 3 uses
  %.sroa.42.7547 = phi i32 [ %.sroa.42.8, %bb.ai ], [ %.sroa.42.5, %bb.ab ] ; 3 uses
  %.sroa.81494.7546 = phi i64 [ %.sroa.81494.8, %bb.ai ], [ %.sroa.81494.5, %bb.ab ] ; 3 uses
  %indvars.iv.next604 = add nsw i64 %indvars.iv603, -1 ; 5 uses
  %i.bml = trunc nuw i64 %indvars.iv.next604 to i32 ; 5 uses
  %i.bmm = lshr i32 %.0259556, %i.bml             ; 2 uses
  %i.bmn = lshr i32 %.0260567, %i.bml             ; 2 uses
  %i.bmo = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next604
  %i.bmp = load ptr, ptr %i.bmo, align 8, !tbaa !34
  %notmask.i380 = shl nsw i32 -1, %i.bml
  %i.bmq = xor i32 %notmask.i380, -1              ; 2 uses
  %i.bmr = add i32 %i.hj, %i.bmq
  %i.bms = lshr i32 %i.bmr, %i.bml
  %i.bmt = mul i32 %i.bms, %i.bmn
  %i.bmu = add i32 %i.bmt, %i.bmm
  %i.bmv = zext i32 %i.bmu to i64
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmp, i64 %i.bmv ; 2 uses
  %i.bmx = load i8, ptr %i.bmw, align 1, !tbaa !44
  %i.bmy = icmp eq i8 %i.bmx, 0
  br i1 %i.bmy, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %.preheader527
  %i.bmz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next604
  %i.bna = load ptr, ptr %i.bmz, align 8, !tbaa !34
  %i.bnb = add i32 %i.ff, %i.bmq
  %i.bnc = lshr i32 %i.bnb, %i.bml
  %i.bnd = mul i32 %i.bnc, %i.bmn
  %i.bne = add i32 %i.bnd, %i.bmm
  %i.bnf = zext i32 %i.bne to i64
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bna, i64 %i.bnf
  %i.bnh = load i8, ptr %i.bng, align 1, !tbaa !44
  %i.bni = zext i8 %i.bnh to i32
  %i.bnj = trunc nuw i64 %indvars.iv603 to i32    ; 4 uses
  %i.bnk = lshr i32 %.0259556, %i.bnj
  %i.bnl = lshr i32 %.0260567, %i.bnj
  %i.bnm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv603
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !34
  %notmask.i382 = shl nsw i32 -1, %i.bnj
  %i.bno = xor i32 %notmask.i382, -1
  %i.bnp = add i32 %i.ff, %i.bno
  %i.bnq = lshr i32 %i.bnp, %i.bnj
  %i.bnr = mul i32 %i.bnq, %i.bnl
  %i.bns = add i32 %i.bnr, %i.bnk
  %i.bnt = zext i32 %i.bns to i64
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnn, i64 %i.bnt
  %i.bnv = load i8, ptr %i.bnu, align 1, !tbaa !44
  %i.bnw = zext i8 %i.bnv to i32
  %i.bnx = sub nsw i32 %i.bni, %i.bnw             ; 2 uses
  %i.bny = icmp sgt i32 %i.bnx, 0
  br i1 %i.bny, label %.lr.ph.i384, label %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit

.lr.ph.i384:                                      ; preds = %bb.ad, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385
  %.sroa.81494.19 = phi i64 [ %.sroa.81494.20, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ], [ %.sroa.81494.7546, %bb.ad ] ; 3 uses
  %.sroa.42.22 = phi i32 [ %.sroa.42.23, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ], [ %.sroa.42.7547, %bb.ad ] ; 2 uses
  %.sroa.0.22 = phi ptr [ %.sroa.0.23, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ], [ %.sroa.0.7548, %bb.ad ] ; 5 uses
  %.23 = phi i32 [ %.24, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ], [ %.7549, %bb.ad ] ; 3 uses
  %.06.i = phi i32 [ %i.bou, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ], [ %i.bnx, %bb.ad ] ; 2 uses
  %i.bnz = add nsw i32 %.sroa.42.22, -1
  %i.boa = icmp slt i32 %.sroa.42.22, 2
  br i1 %i.boa, label %bb.ae, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385

bb.ae:                                            ; preds = %.lr.ph.i384
  %.not.i.i386 = icmp eq i64 %.sroa.81494.19, 255
  %i.bob = select i1 %.not.i.i386, i32 7, i32 8   ; 2 uses
  %i.boc = trunc i64 %.sroa.81494.19 to i8
  %i.bod = getelementptr inbounds nuw i8, ptr %.sroa.0.22, i64 16
  %i.boe = load ptr, ptr %i.bod, align 8, !tbaa !96
  %i.bof = getelementptr inbounds nuw i8, ptr %.sroa.0.22, i64 8
  %i.bog = load i32, ptr %i.bof, align 8, !tbaa !98
  %i.boh = getelementptr inbounds nuw i8, ptr %.sroa.0.22, i64 12 ; 3 uses
  %i.boi = load i32, ptr %i.boh, align 4, !tbaa !99
  %i.boj = sub i32 %i.bog, %i.boi
  %i.bok = zext i32 %i.boj to i64
  %i.bol = getelementptr inbounds nuw i8, ptr %i.boe, i64 %i.bok
  store i8 %i.boc, ptr %i.bol, align 1, !tbaa !44
  %i.bom = load i32, ptr %i.boh, align 4, !tbaa !99
  %i.bon = add i32 %i.bom, -1                     ; 2 uses
  store i32 %i.bon, ptr %i.boh, align 4, !tbaa !99
  %i.boo = icmp eq i32 %i.bon, 0
  br i1 %i.boo, label %bb.af, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385

bb.af:                                            ; preds = %bb.ae
  %i.bop = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bop)
  %i.boq = load ptr, ptr %i.bop, align 8, !tbaa !8
  %i.bor = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bos = load ptr, ptr %i.bor, align 8, !tbaa !100
  store ptr %i.bos, ptr %i.a, align 8, !tbaa !8
  %i.bot = add i32 %.23, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385: ; preds = %bb.af, %bb.ae, %.lr.ph.i384
  %.sroa.81494.20 = phi i64 [ 0, %bb.af ], [ 0, %bb.ae ], [ %.sroa.81494.19, %.lr.ph.i384 ] ; 2 uses
  %.sroa.42.23 = phi i32 [ %i.bob, %bb.af ], [ %i.bob, %bb.ae ], [ %i.bnz, %.lr.ph.i384 ] ; 2 uses
  %.sroa.0.23 = phi ptr [ %i.boq, %bb.af ], [ %.sroa.0.22, %bb.ae ], [ %.sroa.0.22, %.lr.ph.i384 ] ; 2 uses
  %.24 = phi i32 [ %i.bot, %bb.af ], [ %.23, %bb.ae ], [ %.23, %.lr.ph.i384 ] ; 2 uses
  %i.bou = add nsw i32 %.06.i, -1
  %i.bov = icmp sgt i32 %.06.i, 1
  br i1 %i.bov, label %.lr.ph.i384, label %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit, !llvm.loop !105

_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385, %bb.ad
  %.sroa.81494.21 = phi i64 [ %.sroa.81494.7546, %bb.ad ], [ %.sroa.81494.20, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ]
  %.sroa.42.24 = phi i32 [ %.sroa.42.7547, %bb.ad ], [ %.sroa.42.23, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ] ; 2 uses
  %.sroa.0.24 = phi ptr [ %.sroa.0.7548, %bb.ad ], [ %.sroa.0.23, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ] ; 5 uses
  %.25 = phi i32 [ %.7549, %bb.ad ], [ %.24, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i385 ] ; 3 uses
  %i.bow = add nsw i32 %.sroa.42.24, -1           ; 2 uses
  %i.box = shl nuw i32 1, %i.bow
  %i.boy = zext i32 %i.box to i64
  %i.boz = or i64 %.sroa.81494.21, %i.boy         ; 3 uses
  %i.bpa = icmp slt i32 %.sroa.42.24, 2
  br i1 %i.bpa, label %bb.ag, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391

bb.ag:                                            ; preds = %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit
  %.not.i.i393 = icmp eq i64 %i.boz, 255
  %i.bpb = select i1 %.not.i.i393, i32 7, i32 8   ; 2 uses
  %i.bpc = trunc i64 %i.boz to i8
  %i.bpd = getelementptr inbounds nuw i8, ptr %.sroa.0.24, i64 16
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !96
  %i.bpf = getelementptr inbounds nuw i8, ptr %.sroa.0.24, i64 8
  %i.bpg = load i32, ptr %i.bpf, align 8, !tbaa !98
  %i.bph = getelementptr inbounds nuw i8, ptr %.sroa.0.24, i64 12 ; 3 uses
  %i.bpi = load i32, ptr %i.bph, align 4, !tbaa !99
  %i.bpj = sub i32 %i.bpg, %i.bpi
  %i.bpk = zext i32 %i.bpj to i64
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpe, i64 %i.bpk
  store i8 %i.bpc, ptr %i.bpl, align 1, !tbaa !44
  %i.bpm = load i32, ptr %i.bph, align 4, !tbaa !99
  %i.bpn = add i32 %i.bpm, -1                     ; 2 uses
  store i32 %i.bpn, ptr %i.bph, align 4, !tbaa !99
  %i.bpo = icmp eq i32 %i.bpn, 0
  br i1 %i.bpo, label %bb.ah, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391

bb.ah:                                            ; preds = %bb.ag
  %i.bpp = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bpp)
  %i.bpq = load ptr, ptr %i.bpp, align 8, !tbaa !8
  %i.bpr = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bps = load ptr, ptr %i.bpr, align 8, !tbaa !100
  store ptr %i.bps, ptr %i.a, align 8, !tbaa !8
  %i.bpt = add i32 %.25, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391: ; preds = %bb.ah, %bb.ag, %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit
  %.sroa.81494.22 = phi i64 [ 0, %bb.ah ], [ 0, %bb.ag ], [ %i.boz, %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ]
  %.sroa.42.26 = phi i32 [ %i.bpb, %bb.ah ], [ %i.bpb, %bb.ag ], [ %i.bow, %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ]
  %.sroa.0.26 = phi ptr [ %i.bpq, %bb.ah ], [ %.sroa.0.24, %bb.ag ], [ %.sroa.0.24, %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ]
  %.27 = phi i32 [ %i.bpt, %bb.ah ], [ %.25, %bb.ag ], [ %.25, %_ZN4ojph5localL12bb_put_zerosEPNS0_13bit_write_bufEiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit ]
  store i8 1, ptr %i.bmw, align 1, !tbaa !44
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391, %.preheader527
  %.sroa.81494.8 = phi i64 [ %.sroa.81494.22, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391 ], [ %.sroa.81494.7546, %.preheader527 ] ; 7 uses
  %.sroa.42.8 = phi i32 [ %.sroa.42.26, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391 ], [ %.sroa.42.7547, %.preheader527 ] ; 15 uses
  %.sroa.0.8 = phi ptr [ %.sroa.0.26, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391 ], [ %.sroa.0.7548, %.preheader527 ] ; 33 uses
  %.8 = phi i32 [ %.27, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i391 ], [ %.7549, %.preheader527 ] ; 19 uses
  %.not277 = icmp eq i64 %indvars.iv.next604, 0
  br i1 %.not277, label %bb.ac, label %.preheader527, !llvm.loop !106

bb.aj:                                            ; preds = %.preheader.preheader
  %.not.i.i402 = icmp eq i64 %i.bmj, 255
  %i.bpu = trunc i64 %i.bmj to i8
  %i.bpv = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !96
  %i.bpx = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bpy = load i32, ptr %i.bpx, align 8, !tbaa !98
  %i.bpz = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.bqa = load i32, ptr %i.bpz, align 4, !tbaa !99
  %i.bqb = sub i32 %i.bpy, %i.bqa
  %i.bqc = zext i32 %i.bqb to i64
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpw, i64 %i.bqc
  store i8 %i.bpu, ptr %i.bqd, align 1, !tbaa !44
  %i.bqe = load i32, ptr %i.bpz, align 4, !tbaa !99
  %i.bqf = add i32 %i.bqe, -1                     ; 2 uses
  store i32 %i.bqf, ptr %i.bpz, align 4, !tbaa !99
  %i.bqg = icmp eq i32 %i.bqf, 0
  br i1 %i.bqg, label %bb.ak, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bqh = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bqh)
  %i.bqi = load ptr, ptr %i.bqh, align 8, !tbaa !8
  %i.bqj = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bqk = load ptr, ptr %i.bqj, align 8, !tbaa !100
  store ptr %i.bqk, ptr %i.a, align 8, !tbaa !8
  %i.bql = add i32 %.8, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread: ; preds = %bb.ak, %bb.aj
  %.sroa.0.28.ph = phi ptr [ %.sroa.0.8, %bb.aj ], [ %i.bqi, %bb.ak ]
  %.29.ph = phi i32 [ %.8, %bb.aj ], [ %i.bql, %bb.ak ]
  %i.bqm = select i1 %.not.i.i402, i32 6, i32 7   ; 2 uses
  %i.bqn = shl nuw nsw i32 1, %i.bqm
  %i.bqo = zext nneg i32 %i.bqn to i64
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400: ; preds = %.preheader.preheader
  %i.bqp = add nsw i32 %.sroa.42.8, -2
  %i.bqq = shl nuw i32 1, %i.bqp
  %i.bqr = zext i32 %i.bqq to i64
  %i.bqs = or i64 %i.bmj, %i.bqr                  ; 7 uses
  %i.bqt = icmp eq i32 %.sroa.42.8, 2
  br i1 %i.bqt, label %bb.al, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1

bb.al:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400
  %.not.i.i402.1 = icmp eq i64 %i.bqs, 255
  %i.bqu = select i1 %.not.i.i402.1, i32 7, i32 8 ; 2 uses
  %i.bqv = trunc i64 %i.bqs to i8
  %i.bqw = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !96
  %i.bqy = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bqz = load i32, ptr %i.bqy, align 8, !tbaa !98
  %i.bra = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.brb = load i32, ptr %i.bra, align 4, !tbaa !99
  %i.brc = sub i32 %i.bqz, %i.brb
  %i.brd = zext i32 %i.brc to i64
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bqx, i64 %i.brd
  store i8 %i.bqv, ptr %i.bre, align 1, !tbaa !44
  %i.brf = load i32, ptr %i.bra, align 4, !tbaa !99
  %i.brg = add i32 %i.brf, -1                     ; 2 uses
  store i32 %i.brg, ptr %i.bra, align 4, !tbaa !99
  %i.brh = icmp eq i32 %i.brg, 0
  br i1 %i.brh, label %bb.am, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread

bb.am:                                            ; preds = %bb.al
  %i.bri = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bri)
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !8
  %i.brk = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !100
  store ptr %i.brl, ptr %i.a, align 8, !tbaa !8
  %i.brm = add i32 %.8, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread: ; preds = %bb.am, %bb.al, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread
  %.sroa.81494.23.1.ph = phi i64 [ %i.bqo, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread ], [ 0, %bb.al ], [ 0, %bb.am ]
  %.sroa.42.28.1.ph = phi i32 [ %i.bqm, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread ], [ %i.bqu, %bb.al ], [ %i.bqu, %bb.am ]
  %.sroa.0.28.1.ph = phi ptr [ %.sroa.0.28.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread ], [ %.sroa.0.8, %bb.al ], [ %i.brj, %bb.am ]
  %.29.1.ph = phi i32 [ %.29.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.thread ], [ %.8, %bb.al ], [ %i.brm, %bb.am ]
  %i.brn = add nsw i32 %.sroa.42.28.1.ph, -1
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400
  %i.bro = icmp slt i32 %.sroa.42.8, 4
  br i1 %i.bro, label %bb.an, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2

bb.an:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1
  %.not.i.i402.2 = icmp eq i64 %i.bqs, 255
  %i.brp = select i1 %.not.i.i402.2, i32 7, i32 8 ; 2 uses
  %i.brq = trunc i64 %i.bqs to i8
  %i.brr = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.brs = load ptr, ptr %i.brr, align 8, !tbaa !96
  %i.brt = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bru = load i32, ptr %i.brt, align 8, !tbaa !98
  %i.brv = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.brw = load i32, ptr %i.brv, align 4, !tbaa !99
  %i.brx = sub i32 %i.bru, %i.brw
  %i.bry = zext i32 %i.brx to i64
  %i.brz = getelementptr inbounds nuw i8, ptr %i.brs, i64 %i.bry
  store i8 %i.brq, ptr %i.brz, align 1, !tbaa !44
  %i.bsa = load i32, ptr %i.brv, align 4, !tbaa !99
  %i.bsb = add i32 %i.bsa, -1                     ; 2 uses
  store i32 %i.bsb, ptr %i.brv, align 4, !tbaa !99
  %i.bsc = icmp eq i32 %i.bsb, 0
  br i1 %i.bsc, label %bb.ao, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread

bb.ao:                                            ; preds = %bb.an
  %i.bsd = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bsd)
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !8
  %i.bsf = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !100
  store ptr %i.bsg, ptr %i.a, align 8, !tbaa !8
  %i.bsh = add i32 %.8, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread: ; preds = %bb.ao, %bb.an, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread
  %.sroa.81494.23.2.ph = phi i64 [ %.sroa.81494.23.1.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread ], [ 0, %bb.an ], [ 0, %bb.ao ]
  %.sroa.42.28.2.ph = phi i32 [ %i.brn, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread ], [ %i.brp, %bb.an ], [ %i.brp, %bb.ao ]
  %.sroa.0.28.2.ph = phi ptr [ %.sroa.0.28.1.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread ], [ %.sroa.0.8, %bb.an ], [ %i.bse, %bb.ao ]
  %.29.2.ph = phi i32 [ %.29.1.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1.thread ], [ %.8, %bb.an ], [ %i.bsh, %bb.ao ]
  %i.bsi = add nsw i32 %.sroa.42.28.2.ph, -1
  br label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.1
  %i.bsj = add nsw i32 %.sroa.42.8, -4
  %i.bsk = icmp eq i32 %.sroa.42.8, 4
  br i1 %i.bsk, label %bb.ap, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.ap:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2
  %.not.i.i402.3 = icmp eq i64 %i.bqs, 255
  %i.bsl = select i1 %.not.i.i402.3, i32 7, i32 8 ; 2 uses
  %i.bsm = trunc i64 %i.bqs to i8
  %i.bsn = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !96
  %i.bsp = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bsq = load i32, ptr %i.bsp, align 8, !tbaa !98
  %i.bsr = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.bss = load i32, ptr %i.bsr, align 4, !tbaa !99
  %i.bst = sub i32 %i.bsq, %i.bss
  %i.bsu = zext i32 %i.bst to i64
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bso, i64 %i.bsu
  store i8 %i.bsm, ptr %i.bsv, align 1, !tbaa !44
  %i.bsw = load i32, ptr %i.bsr, align 4, !tbaa !99
  %i.bsx = add i32 %i.bsw, -1                     ; 2 uses
  store i32 %i.bsx, ptr %i.bsr, align 4, !tbaa !99
  %i.bsy = icmp eq i32 %i.bsx, 0
  br i1 %i.bsy, label %bb.aq, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.aq:                                            ; preds = %bb.ap
  %i.bsz = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bsz)
  %i.bta = load ptr, ptr %i.bsz, align 8, !tbaa !8
  %i.btb = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.btc = load ptr, ptr %i.btb, align 8, !tbaa !100
  store ptr %i.btc, ptr %i.a, align 8, !tbaa !8
  %i.btd = add i32 %.8, 512
  br label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.ar:                                            ; preds = %.preheader523.preheader
  %.not.i.i410 = icmp eq i64 %i.bme, 255
  %i.bte = trunc i64 %i.bme to i8
  %i.btf = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.btg = load ptr, ptr %i.btf, align 8, !tbaa !96
  %i.bth = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bti = load i32, ptr %i.bth, align 8, !tbaa !98
  %i.btj = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.btk = load i32, ptr %i.btj, align 4, !tbaa !99
  %i.btl = sub i32 %i.bti, %i.btk
  %i.btm = zext i32 %i.btl to i64
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btg, i64 %i.btm
  store i8 %i.bte, ptr %i.btn, align 1, !tbaa !44
  %i.bto = load i32, ptr %i.btj, align 4, !tbaa !99
  %i.btp = add i32 %i.bto, -1                     ; 2 uses
  store i32 %i.btp, ptr %i.btj, align 4, !tbaa !99
  %i.btq = icmp eq i32 %i.btp, 0
  br i1 %i.btq, label %bb.as, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread

bb.as:                                            ; preds = %bb.ar
  %i.btr = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.btr)
  %i.bts = load ptr, ptr %i.btr, align 8, !tbaa !8
  %i.btt = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.btu = load ptr, ptr %i.btt, align 8, !tbaa !100
  store ptr %i.btu, ptr %i.a, align 8, !tbaa !8
  %i.btv = add i32 %.8, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread: ; preds = %bb.as, %bb.ar
  %.sroa.0.30.ph = phi ptr [ %.sroa.0.8, %bb.ar ], [ %i.bts, %bb.as ]
  %.31.ph = phi i32 [ %.8, %bb.ar ], [ %i.btv, %bb.as ]
  %i.btw = select i1 %.not.i.i410, i32 6, i32 7
  br label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408: ; preds = %.preheader523.preheader
  %i.btx = add nsw i32 %.sroa.42.8, -2
  %i.bty = icmp eq i32 %.sroa.42.8, 2
  br i1 %i.bty, label %bb.at, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.at:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408
  %.not.i.i410.1 = icmp eq i64 %i.bme, 255
  %i.btz = select i1 %.not.i.i410.1, i32 7, i32 8 ; 2 uses
  %i.bua = trunc i64 %i.bme to i8
  %i.bub = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.buc = load ptr, ptr %i.bub, align 8, !tbaa !96
  %i.bud = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bue = load i32, ptr %i.bud, align 8, !tbaa !98
  %i.buf = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.bug = load i32, ptr %i.buf, align 4, !tbaa !99
  %i.buh = sub i32 %i.bue, %i.bug
  %i.bui = zext i32 %i.buh to i64
  %i.buj = getelementptr inbounds nuw i8, ptr %i.buc, i64 %i.bui
  store i8 %i.bua, ptr %i.buj, align 1, !tbaa !44
  %i.buk = load i32, ptr %i.buf, align 4, !tbaa !99
  %i.bul = add i32 %i.buk, -1                     ; 2 uses
  store i32 %i.bul, ptr %i.buf, align 4, !tbaa !99
  %i.bum = icmp eq i32 %i.bul, 0
  br i1 %i.bum, label %bb.au, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.au:                                            ; preds = %bb.at
  %i.bun = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bun)
  %i.buo = load ptr, ptr %i.bun, align 8, !tbaa !8
  %i.bup = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.buq = load ptr, ptr %i.bup, align 8, !tbaa !100
  store ptr %i.buq, ptr %i.a, align 8, !tbaa !8
  %i.bur = add i32 %.8, 512
  br label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.av:                                            ; preds = %.preheader525.preheader
  %.not.i.i418 = icmp eq i64 %.sroa.81494.8, 255
  %i.bus = select i1 %.not.i.i418, i32 7, i32 8   ; 2 uses
  %i.but = trunc i64 %.sroa.81494.8 to i8
  %i.buu = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.buv = load ptr, ptr %i.buu, align 8, !tbaa !96
  %i.buw = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.bux = load i32, ptr %i.buw, align 8, !tbaa !98
  %i.buy = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 12 ; 3 uses
  %i.buz = load i32, ptr %i.buy, align 4, !tbaa !99
  %i.bva = sub i32 %i.bux, %i.buz
  %i.bvb = zext i32 %i.bva to i64
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.buv, i64 %i.bvb
  store i8 %i.but, ptr %i.bvc, align 1, !tbaa !44
  %i.bvd = load i32, ptr %i.buy, align 4, !tbaa !99
  %i.bve = add i32 %i.bvd, -1                     ; 2 uses
  store i32 %i.bve, ptr %i.buy, align 4, !tbaa !99
  %i.bvf = icmp eq i32 %i.bve, 0
  br i1 %i.bvf, label %bb.aw, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

bb.aw:                                            ; preds = %bb.av
  %i.bvg = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bvg)
  %i.bvh = load ptr, ptr %i.bvg, align 8, !tbaa !8
  %i.bvi = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bvj = load ptr, ptr %i.bvi, align 8, !tbaa !100
  store ptr %i.bvj, ptr %i.a, align 8, !tbaa !8
  %i.bvk = add i32 %.8, 512
  br label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403: ; preds = %.preheader525.preheader, %bb.av, %bb.aw, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408, %bb.at, %bb.au, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2, %bb.ap, %bb.aq, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread, %bb.ac
  %.sroa.81494.9 = phi i64 [ %.sroa.81494.8, %bb.ac ], [ 0, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread ], [ %.sroa.81494.23.2.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ %i.bqs, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2 ], [ 0, %bb.au ], [ 0, %bb.at ], [ %i.bme, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408 ], [ 0, %bb.aw ], [ 0, %bb.av ], [ %.sroa.81494.8, %.preheader525.preheader ]
  %.sroa.42.9 = phi i32 [ %.sroa.42.8, %bb.ac ], [ %i.btw, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread ], [ %i.bsi, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread ], [ %i.bsl, %bb.aq ], [ %i.bsl, %bb.ap ], [ %i.bsj, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2 ], [ %i.btz, %bb.au ], [ %i.btz, %bb.at ], [ %i.btx, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408 ], [ %i.bus, %bb.aw ], [ %i.bus, %bb.av ], [ %8, %.preheader525.preheader ]
  %.sroa.0.9 = phi ptr [ %.sroa.0.8, %bb.ac ], [ %.sroa.0.30.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread ], [ %.sroa.0.28.2.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread ], [ %i.bta, %bb.aq ], [ %.sroa.0.8, %bb.ap ], [ %.sroa.0.8, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2 ], [ %i.buo, %bb.au ], [ %.sroa.0.8, %bb.at ], [ %.sroa.0.8, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408 ], [ %i.bvh, %bb.aw ], [ %.sroa.0.8, %bb.av ], [ %.sroa.0.8, %.preheader525.preheader ]
  %.9 = phi i32 [ %.8, %bb.ac ], [ %.31.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408.thread ], [ %.29.2.ph, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2.thread ], [ %i.btd, %bb.aq ], [ %.8, %bb.ap ], [ %.8, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i400.2 ], [ %i.bur, %bb.au ], [ %.8, %bb.at ], [ %.8, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i408 ], [ %i.bvk, %bb.aw ], [ %.8, %bb.av ], [ %.8, %.preheader525.preheader ]
  %i.bvl = load i32, ptr %.1268555, align 8, !tbaa !33
  %i.bvm = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bvl, i1 true)
  %i.bvn = sub nuw nsw i32 32, %i.bvm
  %i.bvo = load i32, ptr %i.blx, align 8, !tbaa !104 ; 2 uses
  %i.bvp = icmp ugt i32 %i.bvo, 2
  %i.bvq = zext i1 %i.bvp to i32                  ; 2 uses
  %i.bvr = icmp ugt i32 %i.bvo, 1
  br i1 %i.bvr, label %bb.ax, label %.lr.ph.i421

bb.ax:                                            ; preds = %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403
  %i.bvs = getelementptr inbounds nuw i8, ptr %.1268555, i64 4
  %i.bvt = load i32, ptr %i.bvs, align 4, !tbaa !33
  %i.bvu = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bvt, i1 true)
  %i.bvv = sub nuw nsw i32 32, %i.bvu
  br label %.lr.ph.i421

.lr.ph.i421:                                      ; preds = %bb.ax, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403
  %.0 = phi i32 [ %i.bvv, %bb.ax ], [ 0, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit403 ]
  %i.bvw = sub nsw i32 %.0, %i.bvq
  %i.bvx = call i32 @llvm.smax.i32(i32 %i.bvn, i32 %i.bvw)
  %i.bvy = call i32 @llvm.umax.i32(i32 %i.bvx, i32 3) ; 3 uses
  %i.bvz = add nsw i32 %i.bvy, -2
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425, %.lr.ph.i421
  %.sroa.42.33 = phi i32 [ %.sroa.42.9, %.lr.ph.i421 ], [ %.sroa.42.34, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425 ] ; 2 uses
  %.sroa.0.33 = phi ptr [ %.sroa.0.9, %.lr.ph.i421 ], [ %.sroa.0.34, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425 ] ; 5 uses
  %.34 = phi i32 [ %.9, %.lr.ph.i421 ], [ %.35, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425 ] ; 3 uses
  %i.bwa = phi i64 [ %.sroa.81494.9, %.lr.ph.i421 ], [ %.sroa.81494.26, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425 ]
  %.0.in8.i423 = phi i32 [ %i.bvz, %.lr.ph.i421 ], [ %.0.i424, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425 ] ; 2 uses
  %.0.i424 = add nsw i32 %.0.in8.i423, -1         ; 2 uses
  %i.bwb = lshr i32 -2, %.0.i424
  %i.bwc = add nsw i32 %.sroa.42.33, -1           ; 2 uses
  %i.bwd = and i32 %i.bwb, 1
  %i.bwe = shl nuw i32 %i.bwd, %i.bwc
  %i.bwf = zext i32 %i.bwe to i64
  %i.bwg = or i64 %i.bwa, %i.bwf                  ; 3 uses
  %i.bwh = icmp slt i32 %.sroa.42.33, 2
  br i1 %i.bwh, label %bb.az, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425

bb.az:                                            ; preds = %bb.ay
  %.not.i.i426 = icmp eq i64 %i.bwg, 255
  %i.bwi = select i1 %.not.i.i426, i32 7, i32 8   ; 2 uses
  %i.bwj = trunc i64 %i.bwg to i8
  %i.bwk = getelementptr inbounds nuw i8, ptr %.sroa.0.33, i64 16
  %i.bwl = load ptr, ptr %i.bwk, align 8, !tbaa !96
  %i.bwm = getelementptr inbounds nuw i8, ptr %.sroa.0.33, i64 8
  %i.bwn = load i32, ptr %i.bwm, align 8, !tbaa !98
  %i.bwo = getelementptr inbounds nuw i8, ptr %.sroa.0.33, i64 12 ; 3 uses
  %i.bwp = load i32, ptr %i.bwo, align 4, !tbaa !99
  %i.bwq = sub i32 %i.bwn, %i.bwp
  %i.bwr = zext i32 %i.bwq to i64
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwl, i64 %i.bwr
  store i8 %i.bwj, ptr %i.bws, align 1, !tbaa !44
  %i.bwt = load i32, ptr %i.bwo, align 4, !tbaa !99
  %i.bwu = add i32 %i.bwt, -1                     ; 2 uses
  store i32 %i.bwu, ptr %i.bwo, align 4, !tbaa !99
  %i.bwv = icmp eq i32 %i.bwu, 0
  br i1 %i.bwv, label %bb.ba, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425

bb.ba:                                            ; preds = %bb.az
  %i.bww = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bww)
  %i.bwx = load ptr, ptr %i.bww, align 8, !tbaa !8
  %i.bwy = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bwz = load ptr, ptr %i.bwy, align 8, !tbaa !100
  store ptr %i.bwz, ptr %i.a, align 8, !tbaa !8
  %i.bxa = add i32 %.34, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425: ; preds = %bb.ba, %bb.az, %bb.ay
  %.sroa.81494.26 = phi i64 [ 0, %bb.ba ], [ 0, %bb.az ], [ %i.bwg, %bb.ay ] ; 2 uses
  %.sroa.42.34 = phi i32 [ %i.bwi, %bb.ba ], [ %i.bwi, %bb.az ], [ %i.bwc, %bb.ay ] ; 2 uses
  %.sroa.0.34 = phi ptr [ %i.bwx, %bb.ba ], [ %.sroa.0.33, %bb.az ], [ %.sroa.0.33, %bb.ay ] ; 2 uses
  %.35 = phi i32 [ %i.bxa, %bb.ba ], [ %.34, %bb.az ], [ %.34, %bb.ay ] ; 2 uses
  %i.bxb = icmp samesign ugt i32 %.0.in8.i423, 1
  br i1 %i.bxb, label %bb.ay, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427, !llvm.loop !101

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i425
  %i.bxc = load i32, ptr %.1268555, align 8, !tbaa !33
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427
  %.sroa.42.36 = phi i32 [ %.sroa.42.34, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427 ], [ %.sroa.42.37, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433 ] ; 2 uses
  %.sroa.0.36 = phi ptr [ %.sroa.0.34, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427 ], [ %.sroa.0.37, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433 ] ; 5 uses
  %.37 = phi i32 [ %.35, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427 ], [ %.38, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433 ] ; 3 uses
  %i.bxd = phi i64 [ %.sroa.81494.26, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427 ], [ %.sroa.81494.28, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433 ]
  %.0.in8.i431 = phi i32 [ %i.bvy, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit427 ], [ %.0.i432, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433 ] ; 2 uses
  %.0.i432 = add nsw i32 %.0.in8.i431, -1         ; 2 uses
  %i.bxe = lshr i32 %i.bxc, %.0.i432
  %i.bxf = add nsw i32 %.sroa.42.36, -1           ; 2 uses
  %i.bxg = and i32 %i.bxe, 1
  %i.bxh = shl nuw i32 %i.bxg, %i.bxf
  %i.bxi = zext i32 %i.bxh to i64
  %i.bxj = or i64 %i.bxd, %i.bxi                  ; 3 uses
  %i.bxk = icmp slt i32 %.sroa.42.36, 2
  br i1 %i.bxk, label %bb.bc, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i434 = icmp eq i64 %i.bxj, 255
  %i.bxl = select i1 %.not.i.i434, i32 7, i32 8   ; 2 uses
  %i.bxm = trunc i64 %i.bxj to i8
  %i.bxn = getelementptr inbounds nuw i8, ptr %.sroa.0.36, i64 16
  %i.bxo = load ptr, ptr %i.bxn, align 8, !tbaa !96
  %i.bxp = getelementptr inbounds nuw i8, ptr %.sroa.0.36, i64 8
  %i.bxq = load i32, ptr %i.bxp, align 8, !tbaa !98
  %i.bxr = getelementptr inbounds nuw i8, ptr %.sroa.0.36, i64 12 ; 3 uses
  %i.bxs = load i32, ptr %i.bxr, align 4, !tbaa !99
  %i.bxt = sub i32 %i.bxq, %i.bxs
  %i.bxu = zext i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxo, i64 %i.bxu
  store i8 %i.bxm, ptr %i.bxv, align 1, !tbaa !44
  %i.bxw = load i32, ptr %i.bxr, align 4, !tbaa !99
  %i.bxx = add i32 %i.bxw, -1                     ; 2 uses
  store i32 %i.bxx, ptr %i.bxr, align 4, !tbaa !99
  %i.bxy = icmp eq i32 %i.bxx, 0
  br i1 %i.bxy, label %bb.bd, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433

bb.bd:                                            ; preds = %bb.bc
  %i.bxz = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bxz)
  %i.bya = load ptr, ptr %i.bxz, align 8, !tbaa !8
  %i.byb = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.byc = load ptr, ptr %i.byb, align 8, !tbaa !100
  store ptr %i.byc, ptr %i.a, align 8, !tbaa !8
  %i.byd = add i32 %.37, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433: ; preds = %bb.bd, %bb.bc, %bb.bb
  %.sroa.81494.28 = phi i64 [ 0, %bb.bd ], [ 0, %bb.bc ], [ %i.bxj, %bb.bb ] ; 3 uses
  %.sroa.42.37 = phi i32 [ %i.bxl, %bb.bd ], [ %i.bxl, %bb.bc ], [ %i.bxf, %bb.bb ] ; 3 uses
  %.sroa.0.37 = phi ptr [ %i.bya, %bb.bd ], [ %.sroa.0.36, %bb.bc ], [ %.sroa.0.36, %bb.bb ] ; 3 uses
  %.38 = phi i32 [ %i.byd, %bb.bd ], [ %.37, %bb.bc ], [ %.37, %bb.bb ] ; 3 uses
  %i.bye = icmp samesign ugt i32 %.0.in8.i431, 1
  br i1 %i.bye, label %bb.bb, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435, !llvm.loop !101

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i433
  %i.byf = load i32, ptr %i.blx, align 8, !tbaa !104
  %i.byg = icmp ugt i32 %i.byf, 1
  br i1 %i.byg, label %bb.be, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443

bb.be:                                            ; preds = %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435
  %i.byh = getelementptr inbounds nuw i8, ptr %.1268555, i64 4
  %i.byi = load i32, ptr %i.byh, align 4, !tbaa !33
  %i.byj = add nuw nsw i32 %i.bvy, %i.bvq
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441, %bb.be
  %.sroa.42.38 = phi i32 [ %.sroa.42.37, %bb.be ], [ %.sroa.42.39, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ] ; 2 uses
  %.sroa.0.38 = phi ptr [ %.sroa.0.37, %bb.be ], [ %.sroa.0.39, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ] ; 5 uses
  %.39 = phi i32 [ %.38, %bb.be ], [ %.40, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ] ; 3 uses
  %i.byk = phi i64 [ %.sroa.81494.28, %bb.be ], [ %.sroa.81494.29, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ]
  %.0.in8.i439 = phi i32 [ %i.byj, %bb.be ], [ %.0.i440, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ] ; 2 uses
  %.0.i440 = add nsw i32 %.0.in8.i439, -1         ; 2 uses
  %i.byl = lshr i32 %i.byi, %.0.i440
  %i.bym = add nsw i32 %.sroa.42.38, -1           ; 2 uses
  %i.byn = and i32 %i.byl, 1
  %i.byo = shl nuw i32 %i.byn, %i.bym
  %i.byp = zext i32 %i.byo to i64
  %i.byq = or i64 %i.byk, %i.byp                  ; 3 uses
  %i.byr = icmp slt i32 %.sroa.42.38, 2
  br i1 %i.byr, label %bb.bg, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i442 = icmp eq i64 %i.byq, 255
  %i.bys = select i1 %.not.i.i442, i32 7, i32 8   ; 2 uses
  %i.byt = trunc i64 %i.byq to i8
  %i.byu = getelementptr inbounds nuw i8, ptr %.sroa.0.38, i64 16
  %i.byv = load ptr, ptr %i.byu, align 8, !tbaa !96
  %i.byw = getelementptr inbounds nuw i8, ptr %.sroa.0.38, i64 8
  %i.byx = load i32, ptr %i.byw, align 8, !tbaa !98
  %i.byy = getelementptr inbounds nuw i8, ptr %.sroa.0.38, i64 12 ; 3 uses
  %i.byz = load i32, ptr %i.byy, align 4, !tbaa !99
  %i.bza = sub i32 %i.byx, %i.byz
  %i.bzb = zext i32 %i.bza to i64
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.byv, i64 %i.bzb
  store i8 %i.byt, ptr %i.bzc, align 1, !tbaa !44
  %i.bzd = load i32, ptr %i.byy, align 4, !tbaa !99
  %i.bze = add i32 %i.bzd, -1                     ; 2 uses
  store i32 %i.bze, ptr %i.byy, align 4, !tbaa !99
  %i.bzf = icmp eq i32 %i.bze, 0
  br i1 %i.bzf, label %bb.bh, label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441

bb.bh:                                            ; preds = %bb.bg
  %i.bzg = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  call void @_ZN4ojph21mem_elastic_allocator10get_bufferEjRPNS_11coded_listsE(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.bzg)
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !8
  %i.bzi = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.bzj = load ptr, ptr %i.bzi, align 8, !tbaa !100
  store ptr %i.bzj, ptr %i.a, align 8, !tbaa !8
  %i.bzk = add i32 %.39, 512
  br label %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441

_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441: ; preds = %bb.bh, %bb.bg, %bb.bf
  %.sroa.81494.29 = phi i64 [ 0, %bb.bh ], [ 0, %bb.bg ], [ %i.byq, %bb.bf ] ; 2 uses
  %.sroa.42.39 = phi i32 [ %i.bys, %bb.bh ], [ %i.bys, %bb.bg ], [ %i.bym, %bb.bf ] ; 2 uses
  %.sroa.0.39 = phi ptr [ %i.bzh, %bb.bh ], [ %.sroa.0.38, %bb.bg ], [ %.sroa.0.38, %bb.bf ] ; 2 uses
  %.40 = phi i32 [ %i.bzk, %bb.bh ], [ %.39, %bb.bg ], [ %.39, %bb.bf ] ; 2 uses
  %i.bzl = icmp samesign ugt i32 %.0.in8.i439, 1
  br i1 %i.bzl, label %bb.bf, label %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443, !llvm.loop !101

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443: ; preds = %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435
  %.sroa.81494.10 = phi i64 [ %.sroa.81494.28, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435 ], [ %.sroa.81494.29, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ]
  %.sroa.42.10 = phi i32 [ %.sroa.42.37, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435 ], [ %.sroa.42.39, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ]
  %.sroa.0.10 = phi ptr [ %.sroa.0.37, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435 ], [ %.sroa.0.39, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ]
  %.10 = phi i32 [ %.38, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit435 ], [ %.40, %_ZN4ojph5localL10bb_put_bitEPNS0_13bit_write_bufEjPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit.i441 ]
  %i.bzm = load i32, ptr %.1268555, align 8, !tbaa !33
  %i.bzn = getelementptr inbounds nuw i8, ptr %.1268555, i64 4
  %i.bzo = load i32, ptr %i.bzn, align 4, !tbaa !33
  %i.bzp = add i32 %i.bzm, %.2557
  %i.bzq = add i32 %i.bzp, %i.bzo
  br label %bb.bi

bb.bi:                                            ; preds = %bb.ab, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443
  %.sroa.81494.11 = phi i64 [ %.sroa.81494.5, %bb.ab ], [ %.sroa.81494.10, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443 ] ; 2 uses
  %.sroa.42.11 = phi i32 [ %.sroa.42.5, %bb.ab ], [ %.sroa.42.10, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443 ] ; 2 uses
  %.sroa.0.11 = phi ptr [ %.sroa.0.5, %bb.ab ], [ %.sroa.0.10, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443 ] ; 2 uses
  %.11 = phi i32 [ %.5512, %bb.ab ], [ %.10, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443 ] ; 2 uses
  %.3 = phi i32 [ %.2557, %bb.ab ], [ %i.bzq, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit443 ] ; 2 uses
  %i.bzr = add nuw i32 %.0259556, 1               ; 2 uses
  %i.bzs = getelementptr inbounds nuw i8, ptr %.1268555, i64 32
  %exitcond605.not = icmp eq i32 %i.bzr, %i.bit
  br i1 %exitcond605.not, label %._crit_edge558, label %.preheader528, !llvm.loop !107

_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit: ; preds = %._crit_edge558, %.preheader531.preheader, %bb.q, %bb.r, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366, %bb.s
  %.sroa.81494.12 = phi i64 [ %.sroa.81494.0575, %.preheader531.preheader ], [ %.sroa.81494.0575, %bb.s ], [ %.sroa.81494.1, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ 0, %bb.r ], [ 0, %bb.q ], [ %.sroa.81494.3.lcssa, %._crit_edge558 ]
  %.sroa.42.12 = phi i32 [ %i.bgz, %.preheader531.preheader ], [ %.sroa.42.0576, %bb.s ], [ %.sroa.42.1, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ %i.bhb, %bb.r ], [ %i.bhb, %bb.q ], [ %.sroa.42.3.lcssa, %._crit_edge558 ]
  %.sroa.0.12 = phi ptr [ %.sroa.0.0577, %.preheader531.preheader ], [ %.sroa.0.0577, %bb.s ], [ %.sroa.0.1, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ %i.bhq, %bb.r ], [ %.sroa.0.0577, %bb.q ], [ %.sroa.0.3.lcssa, %._crit_edge558 ]
  %.12 = phi i32 [ %.0507578, %.preheader531.preheader ], [ %.0507578, %bb.s ], [ %.1508, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ %i.bht, %bb.r ], [ %.0507578, %bb.q ], [ %.3510.lcssa, %._crit_edge558 ]
  %.3256 = phi i32 [ %.0253580, %.preheader531.preheader ], [ %i.bhu, %bb.s ], [ %.2255, %_ZN4ojph5localL11bb_put_bitsEPNS0_13bit_write_bufEjiPNS_21mem_elastic_allocatorERPNS_11coded_listsERj.exit366 ], [ %.0253580, %bb.r ], [ %.0253580, %bb.q ], [ %.2255, %._crit_edge558 ]
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
  %i.bzt = icmp slt i32 %.sroa.42.13, 8
  br i1 %i.bzt, label %bb.bl, label %.thread658

.thread658:                                       ; preds = %bb.bk
  %i.bzu = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bzu, i64 8
  %i.bzw = load i32, ptr %i.bzv, align 8, !tbaa !98
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzu, i64 12
  %i.bzy = load i32, ptr %i.bzx, align 4, !tbaa !99
  %i.bzz = add i32 %i.bzw, %.13
  %i.caa = sub i32 %i.bzz, %i.bzy
  %i.cab = add i32 %i.caa, %.5
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.cac = trunc i64 %.sroa.81494.13 to i8
  %i.cad = getelementptr inbounds nuw i8, ptr %.sroa.0.13, i64 16
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !96
  %i.caf = getelementptr inbounds nuw i8, ptr %.sroa.0.13, i64 8
  %i.cag = load i32, ptr %i.caf, align 8, !tbaa !98
  %i.cah = getelementptr inbounds nuw i8, ptr %.sroa.0.13, i64 12 ; 3 uses
  %i.cai = load i32, ptr %i.cah, align 4, !tbaa !99
  %i.caj = sub i32 %i.cag, %i.cai
  %i.cak = zext i32 %i.caj to i64
  %i.cal = getelementptr inbounds nuw i8, ptr %i.cae, i64 %i.cak
  store i8 %i.cac, ptr %i.cal, align 1, !tbaa !44
  %i.cam = load i32, ptr %i.cah, align 4, !tbaa !99
  %i.can = add i32 %i.cam, -1
  store i32 %i.can, ptr %i.cah, align 4, !tbaa !99
  %.pre614.pre = load ptr, ptr %i.o, align 8, !tbaa !11
  %.pre614.pre.fr = freeze ptr %.pre614.pre
  %i.cao = icmp eq ptr %.pre614.pre.fr, null
  %i.cap = load ptr, ptr %i.a, align 8, !tbaa !8  ; 2 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 8
  %i.car = load i32, ptr %i.caq, align 8, !tbaa !98
  %i.cas = getelementptr inbounds nuw i8, ptr %i.cap, i64 12
  %i.cat = load i32, ptr %i.cas, align 4, !tbaa !99
  %i.cau = add i32 %i.car, %.13
  %i.cav = sub i32 %i.cau, %i.cat
  %i.caw = add i32 %i.cav, %.5
  br i1 %i.cao, label %.thread, label %bb.bm

.thread:                                          ; preds = %bb.b, %bb.bl
  br label %bb.bm

bb.bm:                                            ; preds = %.thread658, %bb.bl, %.thread
  %i.cax = phi i32 [ 1, %.thread ], [ %i.caw, %bb.bl ], [ %i.cab, %.thread658 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.cax
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
