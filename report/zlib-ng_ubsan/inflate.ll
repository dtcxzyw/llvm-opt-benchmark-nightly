Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/inflate?download=true
begin_hunk_0_@zng_inflate:bb.a
  br i1 %.pre-phi27712823, label %bb.bcf, label %bb.bce, !prof !14, !nosanitize !13

bb.bce:                                           ; preds = %bb.bcd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @802, i64 %i.d) #8, !nosanitize !13
  br label %bb.bcf, !nosanitize !13

bb.bcf:                                           ; preds = %bb.bcd, %bb.bce
  store ptr @.str.18, ptr %i.az, align 8, !tbaa !29
  br label %.backedge

bb.bcg:                                           ; preds = %bb.bby, %bb.bbt, %bb.bai
  %.581030 = phi ptr [ %.0972, %bb.bai ], [ %.571029.lcssa, %bb.bbt ], [ %.571029.lcssa, %bb.bby ]
  %.58965 = phi i32 [ %.0907, %bb.bai ], [ %.57964.lcssa, %bb.bbt ], [ %.57964.lcssa, %bb.bby ]
  %.54898 = phi i64 [ %.0844, %bb.bai ], [ 0, %bb.bbt ], [ 0, %bb.bby ]
  %.54 = phi i32 [ %.0833, %bb.bai ], [ 0, %bb.bbt ], [ 0, %bb.bby ]
  %.1828 = phi i32 [ %.0827, %bb.bai ], [ %.0905, %bb.bbt ], [ %.0905, %bb.bby ]
  br i1 %i.y, label %bb.bci, label %bb.bch, !prof !14, !nosanitize !13

bb.bch:                                           ; preds = %bb.bcg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @803, i64 %i.v) #8, !nosanitize !13
  br label %bb.bci, !nosanitize !13

bb.bci:                                           ; preds = %bb.bch, %bb.bcg
  br i1 %i.ac, label %bb.bck, label %bb.bcj, !prof !14, !nosanitize !13

bb.bcj:                                           ; preds = %bb.bci
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @804, i64 %i.aa) #8, !nosanitize !13
  br label %bb.bck, !nosanitize !13

bb.bck:                                           ; preds = %bb.bcj, %bb.bci
  store i32 16207, ptr %i.z, align 8, !tbaa !32
  br label %bb.bcl

bb.bcl:                                           ; preds = %bb.bck, %bb.ax
  %.591031 = phi ptr [ %.581030, %bb.bck ], [ %.0972, %bb.ax ] ; 4 uses
  %.59966 = phi i32 [ %.58965, %bb.bck ], [ %.0907, %bb.ax ] ; 4 uses
  %.55899 = phi i64 [ %.54898, %bb.bck ], [ %.0844, %bb.ax ] ; 4 uses
  %.55 = phi i32 [ %.54, %bb.bck ], [ %.0833, %bb.ax ] ; 5 uses
  %.2829 = phi i32 [ %.1828, %bb.bck ], [ %.0827, %bb.ax ] ; 3 uses
  br i1 %i.y, label %bb.bcn, label %bb.bcm, !prof !14, !nosanitize !13

bb.bcm:                                           ; preds = %bb.bcl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @805, i64 %i.v) #8, !nosanitize !13
  br label %bb.bcn, !nosanitize !13

bb.bcn:                                           ; preds = %bb.bcl, %bb.bcm
  %i.bnc = load i32, ptr %i.as, align 16, !tbaa !30
  %.not1084 = icmp eq i32 %i.bnc, 0
  br i1 %.not1084, label %bb.bdk, label %bb.bco

bb.bco:                                           ; preds = %bb.bcn
  br i1 %i.y, label %bb.bcq, label %bb.bcp, !prof !14, !nosanitize !13

bb.bcp:                                           ; preds = %bb.bco
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @806, i64 %i.v) #8, !nosanitize !13
  br label %bb.bcq, !nosanitize !13

bb.bcq:                                           ; preds = %bb.bco, %bb.bcp
  %i.bnd = load i32, ptr %i.av, align 8, !tbaa !36
  %.not1085 = icmp eq i32 %i.bnd, 0
  br i1 %.not1085, label %bb.bdk, label %.preheader1348

.preheader1348:                                   ; preds = %bb.bcq
  %i.bne = icmp ult i32 %.55, 32
  br i1 %i.bne, label %.lr.ph1832.preheader, label %._crit_edge1833

.lr.ph1832.preheader:                             ; preds = %.preheader1348
  %i.bnf = zext nneg i32 %.55 to i64
  br label %.lr.ph1832

.lr.ph1832:                                       ; preds = %.lr.ph1832.preheader, %bb.bcx
  %indvars.iv2698 = phi i64 [ %i.bnf, %.lr.ph1832.preheader ], [ %indvars.iv.next2699, %bb.bcx ] ; 4 uses
  %.569001830 = phi i64 [ %.55899, %.lr.ph1832.preheader ], [ %i.bns, %bb.bcx ] ; 3 uses
  %.609671829 = phi i32 [ %.59966, %.lr.ph1832.preheader ], [ %i.bnh, %bb.bcx ] ; 2 uses
  %.6010321828 = phi ptr [ %.591031, %.lr.ph1832.preheader ], [ %i.bni, %bb.bcx ] ; 5 uses
  %i.bng = icmp eq i32 %.609671829, 0
  br i1 %i.bng, label %.loopexit1310.loopexit2286, label %bb.bcr

bb.bcr:                                           ; preds = %.lr.ph1832
  %i.bnh = add i32 %.609671829, -1                ; 2 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %.6010321828, i64 1 ; 2 uses
  %i.bnj = ptrtoint ptr %.6010321828 to i64, !nosanitize !13 ; 3 uses
  %i.bnk = add i64 %i.bnj, 1, !nosanitize !13     ; 2 uses
  %i.bnl = icmp ne ptr %.6010321828, null, !nosanitize !13 ; 2 uses
  %i.bnm = icmp ne i64 %i.bnk, 0
  %i.bnn = and i1 %i.bnl, %i.bnm, !nosanitize !13
  br i1 %i.bnn, label %bb.bct, label %bb.bcs, !prof !14, !nosanitize !13

bb.bcs:                                           ; preds = %bb.bcr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @807, i64 %i.bnj, i64 %i.bnk) #8, !nosanitize !13
  br label %bb.bct, !nosanitize !13

bb.bct:                                           ; preds = %bb.bcs, %bb.bcr
  br i1 %i.bnl, label %bb.bcv, label %bb.bcu, !prof !14, !nosanitize !13

bb.bcu:                                           ; preds = %bb.bct
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @808, i64 %i.bnj) #8, !nosanitize !13
  br label %bb.bcv, !nosanitize !13

bb.bcv:                                           ; preds = %bb.bct, %bb.bcu
  %i.bno = load i8, ptr %.6010321828, align 1, !tbaa !63
  %i.bnp = zext i8 %i.bno to i64
  %i.bnq = shl nuw nsw i64 %i.bnp, %indvars.iv2698 ; 2 uses
  %i.bnr = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.569001830, i64 %i.bnq), !nosanitize !13 ; 2 uses
  %i.bns = extractvalue { i64, i1 } %i.bnr, 0, !nosanitize !13 ; 2 uses
  %i.bnt = extractvalue { i64, i1 } %i.bnr, 1, !nosanitize !13
  br i1 %i.bnt, label %bb.bcw, label %bb.bcx, !prof !54, !nosanitize !13

bb.bcw:                                           ; preds = %bb.bcv
  call void @__ubsan_handle_add_overflow(ptr nonnull @809, i64 %.569001830, i64 %i.bnq) #9, !nosanitize !13
  br label %bb.bcx, !nosanitize !13

bb.bcx:                                           ; preds = %bb.bcv, %bb.bcw
  %indvars.iv.next2699 = add nuw nsw i64 %indvars.iv2698, 8 ; 2 uses
  %i.bnu = icmp samesign ult i64 %indvars.iv2698, 24
  br i1 %i.bnu, label %.lr.ph1832, label %._crit_edge1833.loopexit, !llvm.loop !106

._crit_edge1833.loopexit:                         ; preds = %bb.bcx
  %i.bnv = trunc nuw nsw i64 %indvars.iv.next2699 to i32
  br label %._crit_edge1833

._crit_edge1833:                                  ; preds = %._crit_edge1833.loopexit, %.preheader1348
  %.601032.lcssa = phi ptr [ %.591031, %.preheader1348 ], [ %i.bni, %._crit_edge1833.loopexit ] ; 3 uses
  %.60967.lcssa = phi i32 [ %.59966, %.preheader1348 ], [ %i.bnh, %._crit_edge1833.loopexit ] ; 3 uses
  %.56900.lcssa = phi i64 [ %.55899, %.preheader1348 ], [ %i.bns, %._crit_edge1833.loopexit ] ; 2 uses
  %.56.lcssa = phi i32 [ %.55, %.preheader1348 ], [ %i.bnv, %._crit_edge1833.loopexit ]
  br i1 %i.y, label %bb.bcz, label %bb.bcy, !prof !14, !nosanitize !13

bb.bcy:                                           ; preds = %._crit_edge1833
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @810, i64 %i.v) #8, !nosanitize !13
  br label %bb.bcz, !nosanitize !13

bb.bcz:                                           ; preds = %._crit_edge1833, %bb.bcy
  %i.bnw = load i32, ptr %i.as, align 16, !tbaa !30
  %i.bnx = and i32 %i.bnw, 4
  %.not1086 = icmp eq i32 %i.bnx, 0
  br i1 %.not1086, label %bb.bdk, label %bb.bda

bb.bda:                                           ; preds = %bb.bcz
  br i1 %i.y, label %bb.bdc, label %bb.bdb, !prof !14, !nosanitize !13

bb.bdb:                                           ; preds = %bb.bda
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @811, i64 %i.v) #8, !nosanitize !13
  br label %bb.bdc, !nosanitize !13

bb.bdc:                                           ; preds = %bb.bda, %bb.bdb
  %i.bny = load i64, ptr %i.au, align 8, !tbaa !26
  %i.bnz = and i64 %i.bny, 4294967295
  %.not1087 = icmp eq i64 %.56900.lcssa, %i.bnz
  br i1 %.not1087, label %bb.bdk, label %bb.bdd

bb.bdd:                                           ; preds = %bb.bdc
  br i1 %i.y, label %bb.bdf, label %bb.bde, !prof !14, !nosanitize !13

bb.bde:                                           ; preds = %bb.bdd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @812, i64 %i.v) #8, !nosanitize !13
  br label %bb.bdf, !nosanitize !13

bb.bdf:                                           ; preds = %bb.bde, %bb.bdd
  br i1 %i.ac, label %bb.bdh, label %bb.bdg, !prof !14, !nosanitize !13

bb.bdg:                                           ; preds = %bb.bdf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @813, i64 %i.aa) #8, !nosanitize !13
  br label %bb.bdh, !nosanitize !13

bb.bdh:                                           ; preds = %bb.bdg, %bb.bdf
  store i32 16209, ptr %i.z, align 8, !tbaa !32
  br i1 %.pre-phi27712823, label %bb.bdj, label %bb.bdi, !prof !14, !nosanitize !13

bb.bdi:                                           ; preds = %bb.bdh
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @814, i64 %i.d) #8, !nosanitize !13
  br label %bb.bdj, !nosanitize !13

bb.bdj:                                           ; preds = %bb.bdh, %bb.bdi
  store ptr @.str.19, ptr %i.az, align 8, !tbaa !29
  br label %.backedge

bb.bdk:                                           ; preds = %bb.bdc, %bb.bcz, %bb.bcq, %bb.bcn
  %.611033 = phi ptr [ %.591031, %bb.bcn ], [ %.591031, %bb.bcq ], [ %.601032.lcssa, %bb.bcz ], [ %.601032.lcssa, %bb.bdc ]
  %.61 = phi i32 [ %.59966, %bb.bcn ], [ %.59966, %bb.bcq ], [ %.60967.lcssa, %bb.bcz ], [ %.60967.lcssa, %bb.bdc ]
  %.57901 = phi i64 [ %.55899, %bb.bcn ], [ %.55899, %bb.bcq ], [ 0, %bb.bcz ], [ 0, %bb.bdc ]
  %.57 = phi i32 [ %.55, %bb.bcn ], [ %.55, %bb.bcq ], [ 0, %bb.bcz ], [ 0, %bb.bdc ]
  br i1 %i.y, label %bb.bdm, label %bb.bdl, !prof !14, !nosanitize !13

bb.bdl:                                           ; preds = %bb.bdk
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @815, i64 %i.v) #8, !nosanitize !13
  br label %bb.bdm, !nosanitize !13

bb.bdm:                                           ; preds = %bb.bdl, %bb.bdk
  br i1 %i.ac, label %bb.bdo, label %bb.bdn, !prof !14, !nosanitize !13

bb.bdn:                                           ; preds = %bb.bdm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @816, i64 %i.aa) #8, !nosanitize !13
  br label %bb.bdo, !nosanitize !13

bb.bdo:                                           ; preds = %bb.bdn, %bb.bdm
  store i32 16208, ptr %i.z, align 8, !tbaa !32
  br label %.loopexit1310

.loopexit1310.loopexit:                           ; preds = %.lr.ph2024
  %i.boa = trunc nuw i64 %indvars.iv2718 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2267:                       ; preds = %.lr.ph2014
  %i.bob = trunc nuw i64 %indvars.iv2713 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2268:                       ; preds = %.lr.ph2004
  %i.boc = trunc nuw i64 %indvars.iv2708 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2269:                       ; preds = %bb.afg
  %i.bod = trunc nuw nsw i64 %indvars.iv2704 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2270:                       ; preds = %.lr.ph2261
  %i.boe = trunc nuw nsw i64 %indvars.iv2761 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2271:                       ; preds = %.lr.ph2251
  %i.bof = trunc nuw nsw i64 %indvars.iv2758 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2272:                       ; preds = %.lr.ph2242
  %i.bog = trunc nuw nsw i64 %indvars.iv2749 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2273:                       ; preds = %.lr.ph2233
  %i.boh = trunc nuw nsw i64 %indvars.iv2746 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2274:                       ; preds = %.lr.ph2223
  %i.boi = trunc nuw nsw i64 %indvars.iv2743 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2275:                       ; preds = %.lr.ph2212
  %i.boj = trunc nuw nsw i64 %indvars.iv2740 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2276:                       ; preds = %.lr.ph2048
  %i.bok = trunc nuw nsw i64 %indvars.iv2737 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2277:                       ; preds = %.lr.ph2038
  %i.bol = trunc nuw nsw i64 %indvars.iv2735 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2279:                       ; preds = %bb.atc
  %i.bom = trunc nuw nsw i64 %indvars.iv2732 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2280:                       ; preds = %bb.asf
  %i.bon = trunc nuw nsw i64 %indvars.iv2728 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2282:                       ; preds = %bb.aod
  %i.boo = trunc nuw nsw i64 %indvars.iv2725 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2283:                       ; preds = %bb.ang
  %i.bop = trunc nuw nsw i64 %indvars.iv2721 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2285:                       ; preds = %.lr.ph1842
  %i.boq = trunc nuw nsw i64 %indvars.iv2701 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2286:                       ; preds = %.lr.ph1832
  %i.bor = trunc nuw nsw i64 %indvars.iv2698 to i32
  br label %.loopexit1310

.loopexit1310.loopexit2287:                       ; preds = %.lr.ph
  %i.bos = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit1310

.loopexit1310.loopexit3719:                       ; preds = %bb.ax
  br label %.loopexit1310

.loopexit1310:                                    ; preds = %bb.ok, %bb.ot, %bb.qt, %bb.rm, %bb.tm, %bb.xz, %bb.aal, %bb.aau, %bb.aku, %bb.awk, %bb.azu, %.lr.ph2057, %.lr.ph1852, %bb.aqi, %bb.aux, %bb.ax, %.loopexit1310.loopexit3719, %.loopexit1310.loopexit2287, %.loopexit1310.loopexit2286, %.loopexit1310.loopexit2285, %.loopexit1310.loopexit2283, %.loopexit1310.loopexit2282, %.loopexit1310.loopexit2280, %.loopexit1310.loopexit2279, %.loopexit1310.loopexit2277, %.loopexit1310.loopexit2276, %.loopexit1310.loopexit2275, %.loopexit1310.loopexit2274, %.loopexit1310.loopexit2273, %.loopexit1310.loopexit2272, %.loopexit1310.loopexit2271, %.loopexit1310.loopexit2270, %.loopexit1310.loopexit2269, %.loopexit1310.loopexit2268, %.loopexit1310.loopexit2267, %.loopexit1310.loopexit, %bb.bdo, %bb.zc
  %.09052611 = phi i32 [ %.0905, %.loopexit1310.loopexit2268 ], [ %.0905, %.loopexit1310.loopexit2272 ], [ %.0905, %.loopexit1310.loopexit2271 ], [ %.0905, %.loopexit1310.loopexit2270 ], [ %.0905, %.loopexit1310.loopexit2269 ], [ %.0905, %.loopexit1310.loopexit2277 ], [ %.0905, %.loopexit1310.loopexit2279 ], [ %.0905, %.loopexit1310.loopexit2280 ], [ %.0905, %bb.aux ], [ %.0905, %bb.bdo ], [ %.0905, %.loopexit1310.loopexit2283 ], [ %.0905, %.loopexit1310.loopexit2274 ], [ %.0905, %.loopexit1310.loopexit ], [ %.0905, %.loopexit1310.loopexit2273 ], [ %.0905, %bb.zc ], [ %.0905, %.loopexit1310.loopexit2276 ], [ %.0905, %.loopexit1310.loopexit2285 ], [ %.0905, %bb.ax ], [ %.0905, %.lr.ph1852 ], [ %.0905, %.loopexit1310.loopexit2267 ], [ %.0905, %.loopexit1310.loopexit2287 ], [ %.0905, %.loopexit1310.loopexit2282 ], [ %.0905, %bb.aqi ], [ %.0905, %.loopexit1310.loopexit2275 ], [ %.0905, %.loopexit1310.loopexit2286 ], [ %.0905, %bb.ok ], [ %.0905, %bb.ot ], [ %.0905, %bb.qt ], [ %.0905, %bb.rm ], [ %.0905, %bb.tm ], [ %.0905, %bb.xz ], [ %.0905, %bb.aal ], [ %.0905, %bb.aau ], [ %.0905, %bb.aku ], [ 0, %bb.awk ], [ 0, %bb.azu ], [ %.0905, %.lr.ph2057 ], [ %.0905, %.loopexit1310.loopexit3719 ] ; 2 uses
  %.641036 = phi ptr [ %.3610082000, %.loopexit1310.loopexit2268 ], [ %.89802238, %.loopexit1310.loopexit2272 ], [ %.189902247, %.loopexit1310.loopexit2271 ], [ %.19732257, %.loopexit1310.loopexit2270 ], [ %.341006, %.loopexit1310.loopexit2269 ], [ %.259972033, %.loopexit1310.loopexit2277 ], [ %.511023, %.loopexit1310.loopexit2279 ], [ %.501022, %.loopexit1310.loopexit2280 ], [ %.541026, %bb.aux ], [ %.611033, %bb.bdo ], [ %.431015, %.loopexit1310.loopexit2283 ], [ %.49762218, %.loopexit1310.loopexit2274 ], [ %.3710092020, %.loopexit1310.loopexit ], [ %.69782228, %.loopexit1310.loopexit2273 ], [ %.24996.lcssa, %bb.zc ], [ %.209922044, %.loopexit1310.loopexit2276 ], [ %.2810001838, %.loopexit1310.loopexit2285 ], [ %.0972, %bb.ax ], [ %.301002, %.lr.ph1852 ], [ %.3510072010, %.loopexit1310.loopexit2267 ], [ %.5710291821, %.loopexit1310.loopexit2287 ], [ %.441016, %.loopexit1310.loopexit2282 ], [ %.471019, %bb.aqi ], [ %.29742208, %.loopexit1310.loopexit2275 ], [ %.6010321828, %.loopexit1310.loopexit2286 ], [ %.11983, %bb.ok ], [ %.13985, %bb.ot ], [ %i.um, %bb.qt ], [ %.15987, %bb.rm ], [ %i.yc, %bb.tm ], [ %.22994, %bb.xz ], [ %.25997.lcssa, %bb.aal ], [ %.27999, %bb.aau ], [ %.401012, %bb.aku ], [ %.561028, %bb.awk ], [ %.0972, %bb.azu ], [ %.23995, %.lr.ph2057 ], [ %.0972, %.loopexit1310.loopexit3719 ]
  %.64 = phi i32 [ 0, %.loopexit1310.loopexit2268 ], [ 0, %.loopexit1310.loopexit2272 ], [ 0, %.loopexit1310.loopexit2271 ], [ 0, %.loopexit1310.loopexit2270 ], [ 0, %.loopexit1310.loopexit2269 ], [ 0, %.loopexit1310.loopexit2277 ], [ 0, %.loopexit1310.loopexit2279 ], [ 0, %.loopexit1310.loopexit2280 ], [ 0, %bb.aux ], [ %.61, %bb.bdo ], [ 0, %.loopexit1310.loopexit2283 ], [ 0, %.loopexit1310.loopexit2274 ], [ 0, %.loopexit1310.loopexit ], [ 0, %.loopexit1310.loopexit2273 ], [ %.24931.lcssa, %bb.zc ], [ 0, %.loopexit1310.loopexit2276 ], [ 0, %.loopexit1310.loopexit2285 ], [ %.0907, %bb.ax ], [ 0, %.lr.ph1852 ], [ 0, %.loopexit1310.loopexit2267 ], [ 0, %.loopexit1310.loopexit2287 ], [ 0, %.loopexit1310.loopexit2282 ], [ 0, %bb.aqi ], [ 0, %.loopexit1310.loopexit2275 ], [ 0, %.loopexit1310.loopexit2286 ], [ %.11918, %bb.ok ], [ 0, %bb.ot ], [ %i.ul, %bb.qt ], [ 0, %bb.rm ], [ %i.yb, %bb.tm ], [ %.22929, %bb.xz ], [ %.25932.lcssa, %bb.aal ], [ %.27934, %bb.aau ], [ %.40947, %bb.aku ], [ %.56963, %bb.awk ], [ %.0907, %bb.azu ], [ 0, %.lr.ph2057 ], [ %.0907, %.loopexit1310.loopexit3719 ]
  %.60904 = phi i64 [ %.328762002, %.loopexit1310.loopexit2268 ], [ %.88522240, %.loopexit1310.loopexit2272 ], [ %.148582249, %.loopexit1310.loopexit2271 ], [ %.18452259, %.loopexit1310.loopexit2270 ], [ %.30874, %.loopexit1310.loopexit2269 ], [ %.218652035, %.loopexit1310.loopexit2277 ], [ %.47891, %.loopexit1310.loopexit2279 ], [ %.46890, %.loopexit1310.loopexit2280 ], [ %.50894, %bb.aux ], [ %.57901, %bb.bdo ], [ %.39883, %.loopexit1310.loopexit2283 ], [ %.48482220, %.loopexit1310.loopexit2274 ], [ %.338772022, %.loopexit1310.loopexit ], [ %.68502230, %.loopexit1310.loopexit2273 ], [ %i.adc, %bb.zc ], [ %.168602046, %.loopexit1310.loopexit2276 ], [ %.248681840, %.loopexit1310.loopexit2285 ], [ %.0844, %bb.ax ], [ %.26870, %.lr.ph1852 ], [ %.318752012, %.loopexit1310.loopexit2267 ], [ %.538971823, %.loopexit1310.loopexit2287 ], [ %.40884, %.loopexit1310.loopexit2282 ], [ %.43887, %bb.aqi ], [ %.28462210, %.loopexit1310.loopexit2275 ], [ %.569001830, %.loopexit1310.loopexit2286 ], [ %.10854, %bb.ok ], [ %.11855, %bb.ot ], [ %.11855, %bb.qt ], [ %.12856, %bb.rm ], [ %.12856, %bb.tm ], [ %.18862, %bb.xz ], [ 0, %bb.aal ], [ %.23867, %bb.aau ], [ %.36880, %bb.aku ], [ %.52896, %bb.awk ], [ %.0844, %bb.azu ], [ %.19863, %.lr.ph2057 ], [ %.0844, %.loopexit1310.loopexit3719 ] ; 2 uses
  %.60 = phi i32 [ %i.boc, %.loopexit1310.loopexit2268 ], [ %i.bog, %.loopexit1310.loopexit2272 ], [ %i.bof, %.loopexit1310.loopexit2271 ], [ %i.boe, %.loopexit1310.loopexit2270 ], [ %i.bod, %.loopexit1310.loopexit2269 ], [ %i.bol, %.loopexit1310.loopexit2277 ], [ %i.bom, %.loopexit1310.loopexit2279 ], [ %i.bon, %.loopexit1310.loopexit2280 ], [ %.50, %bb.aux ], [ %.57, %bb.bdo ], [ %i.bop, %.loopexit1310.loopexit2283 ], [ %i.boi, %.loopexit1310.loopexit2274 ], [ %i.boa, %.loopexit1310.loopexit ], [ %i.boh, %.loopexit1310.loopexit2273 ], [ %i.adb, %bb.zc ], [ %i.bok, %.loopexit1310.loopexit2276 ], [ %i.boq, %.loopexit1310.loopexit2285 ], [ %.0833, %bb.ax ], [ %.26, %.lr.ph1852 ], [ %i.bob, %.loopexit1310.loopexit2267 ], [ %i.bos, %.loopexit1310.loopexit2287 ], [ %i.boo, %.loopexit1310.loopexit2282 ], [ %.43, %bb.aqi ], [ %i.boj, %.loopexit1310.loopexit2275 ], [ %i.bor, %.loopexit1310.loopexit2286 ], [ %.10843, %bb.ok ], [ %.11, %bb.ot ], [ %.11, %bb.qt ], [ %.12, %bb.rm ], [ %.12, %bb.tm ], [ %.18, %bb.xz ], [ 0, %bb.aal ], [ %.23, %bb.aau ], [ %.36, %bb.aku ], [ %.52, %bb.awk ], [ %.0833, %bb.azu ], [ %.19, %.lr.ph2057 ], [ %.0833, %.loopexit1310.loopexit3719 ]
  %.5832 = phi i32 [ %.0827, %.loopexit1310.loopexit2268 ], [ %.0827, %.loopexit1310.loopexit2272 ], [ %.0827, %.loopexit1310.loopexit2271 ], [ %.0827, %.loopexit1310.loopexit2270 ], [ %.0827, %.loopexit1310.loopexit2269 ], [ %.0827, %.loopexit1310.loopexit2277 ], [ %.0827, %.loopexit1310.loopexit2279 ], [ %.0827, %.loopexit1310.loopexit2280 ], [ %.0827, %bb.aux ], [ %.2829, %bb.bdo ], [ %.0827, %.loopexit1310.loopexit2283 ], [ %.0827, %.loopexit1310.loopexit2274 ], [ %.0827, %.loopexit1310.loopexit ], [ %.0827, %.loopexit1310.loopexit2273 ], [ %.0827, %bb.zc ], [ %.0827, %.loopexit1310.loopexit2276 ], [ %.0827, %.loopexit1310.loopexit2285 ], [ %.0827, %bb.ax ], [ %.0827, %.lr.ph1852 ], [ %.0827, %.loopexit1310.loopexit2267 ], [ %.0827, %.loopexit1310.loopexit2287 ], [ %.0827, %.loopexit1310.loopexit2282 ], [ %.0827, %bb.aqi ], [ %.0827, %.loopexit1310.loopexit2275 ], [ %.2829, %.loopexit1310.loopexit2286 ], [ %.0827, %.lr.ph2057 ], [ %.0827, %bb.azu ], [ %.0827, %bb.awk ], [ %.0827, %bb.aku ], [ %.0827, %bb.aau ], [ %.0827, %bb.aal ], [ %.0827, %bb.xz ], [ %.0827, %bb.tm ], [ %.0827, %bb.rm ], [ %.0827, %bb.qt ], [ %.0827, %bb.ot ], [ %.0827, %bb.ok ], [ %.0827, %.loopexit1310.loopexit3719 ] ; 5 uses
  %.9 = phi i32 [ %.1, %.loopexit1310.loopexit2268 ], [ %.0818, %.loopexit1310.loopexit2272 ], [ %.0818, %.loopexit1310.loopexit2271 ], [ %.0818, %.loopexit1310.loopexit2270 ], [ %.1, %.loopexit1310.loopexit2269 ], [ %.0818, %.loopexit1310.loopexit2277 ], [ %.5, %.loopexit1310.loopexit2279 ], [ %.5, %.loopexit1310.loopexit2280 ], [ %.6, %bb.aux ], [ 1, %bb.bdo ], [ %.3, %.loopexit1310.loopexit2283 ], [ %.0818, %.loopexit1310.loopexit2274 ], [ %.1, %.loopexit1310.loopexit ], [ %.0818, %.loopexit1310.loopexit2273 ], [ %.0818, %bb.zc ], [ %.0818, %.loopexit1310.loopexit2276 ], [ %.0818, %.loopexit1310.loopexit2285 ], [ -3, %bb.ax ], [ %.0818, %.lr.ph1852 ], [ %.1, %.loopexit1310.loopexit2267 ], [ %.0818, %.loopexit1310.loopexit2287 ], [ %.3, %.loopexit1310.loopexit2282 ], [ %.4, %bb.aqi ], [ %.0818, %.loopexit1310.loopexit2275 ], [ %.0818, %.loopexit1310.loopexit2286 ], [ %.0818, %bb.ok ], [ %.0818, %bb.ot ], [ %.0818, %bb.qt ], [ %.0818, %bb.rm ], [ %.0818, %bb.tm ], [ %.0818, %bb.xz ], [ %.0818, %bb.aal ], [ %.0818, %bb.aau ], [ 0, %bb.aku ], [ %.7, %bb.awk ], [ %.0818, %bb.azu ], [ %.0818, %.lr.ph2057 ], [ 1, %.loopexit1310.loopexit3719 ] ; 2 uses
  br i1 %.pre-phi27712823, label %bb.bdq, label %bb.bdp, !prof !14, !nosanitize !13

bb.bdp:                                           ; preds = %.loopexit1310
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @817, i64 %i.d) #8, !nosanitize !13
  br label %bb.bdq, !nosanitize !13

bb.bdq:                                           ; preds = %bb.bdp, %.loopexit1310
  br i1 %i.k, label %bb.bds, label %bb.bdr, !prof !14, !nosanitize !13

bb.bdr:                                           ; preds = %bb.bdq
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @818, i64 %i.i) #8, !nosanitize !13
  br label %bb.bds, !nosanitize !13

bb.bds:                                           ; preds = %bb.bdr, %bb.bdq
  store ptr %.0969, ptr %i.h, align 8, !tbaa !107
  br i1 %.pre-phi27712823, label %.critedge3713, label %bb.bdt, !prof !14, !nosanitize !13

bb.bdt:                                           ; preds = %bb.bds
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @819, i64 %i.d) #8, !nosanitize !13
  store i32 %.09052611, ptr %i.ag, align 8, !tbaa !108
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @820, i64 %i.d) #8, !nosanitize !13
  br label %bb.bdu, !nosanitize !13

.critedge3713:                                    ; preds = %bb.bds
  store i32 %.09052611, ptr %i.ag, align 8, !tbaa !108
  br label %bb.bdu

bb.bdu:                                           ; preds = %.critedge3713, %bb.bdt
  br i1 %i.f, label %bb.bdw, label %bb.bdv, !prof !14, !nosanitize !13

bb.bdv:                                           ; preds = %bb.bdu
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @821, i64 %i.d) #8, !nosanitize !13
  br label %bb.bdw, !nosanitize !13

bb.bdw:                                           ; preds = %bb.bdv, %bb.bdu
  store ptr %.641036, ptr %0, align 8, !tbaa !66
  br i1 %.pre-phi27712823, label %bb.bdy, label %bb.bdx, !prof !14, !nosanitize !13

bb.bdx:                                           ; preds = %bb.bdw
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @822, i64 %i.d) #8, !nosanitize !13
  br label %bb.bdy, !nosanitize !13

bb.bdy:                                           ; preds = %bb.bdw, %bb.bdx
  store i32 %.64, ptr %i.aj, align 8, !tbaa !67
  br i1 %i.y, label %.critedge3715, label %bb.bdz, !prof !14, !nosanitize !13

bb.bdz:                                           ; preds = %bb.bdy
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @823, i64 %i.v) #8, !nosanitize !13
  store i64 %.60904, ptr %i.al, align 8, !tbaa !38
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @824, i64 %i.v) #8, !nosanitize !13
  br label %bb.bea, !nosanitize !13

.critedge3715:                                    ; preds = %bb.bdy
  store i64 %.60904, ptr %i.al, align 8, !tbaa !38
  br label %bb.bea

bb.bea:                                           ; preds = %.critedge3715, %bb.bdz
  br i1 %i.aq, label %bb.bec, label %bb.beb, !prof !14, !nosanitize !13

bb.beb:                                           ; preds = %bb.bea
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @825, i64 %i.ao) #8, !nosanitize !13
  br label %bb.bec, !nosanitize !13

bb.bec:                                           ; preds = %bb.beb, %bb.bea
  store i32 %.60, ptr %i.an, align 32, !tbaa !39
  br i1 %.pre-phi27712823, label %bb.bee, label %bb.bed, !prof !14, !nosanitize !13

bb.bed:                                           ; preds = %bb.bec
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @826, i64 %i.d) #8, !nosanitize !13
  br label %bb.bee, !nosanitize !13

bb.bee:                                           ; preds = %bb.bec, %bb.bed
  %i.bot = load i32, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.bou = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.5832, i32 %i.bot), !nosanitize !13 ; 2 uses
  %i.bov = extractvalue { i32, i1 } %i.bou, 0, !nosanitize !13 ; 3 uses
  %i.bow = extractvalue { i32, i1 } %i.bou, 1, !nosanitize !13
  br i1 %i.bow, label %bb.bef, label %bb.beg, !prof !54, !nosanitize !13

bb.bef:                                           ; preds = %bb.bee
  %i.box = zext i32 %.5832 to i64, !nosanitize !13
  %i.boy = zext i32 %i.bot to i64, !nosanitize !13
  call void @__ubsan_handle_sub_overflow(ptr nonnull @827, i64 %i.box, i64 %i.boy) #9, !nosanitize !13
  br label %bb.beg, !nosanitize !13

bb.beg:                                           ; preds = %bb.bef, %bb.bee
  br i1 %i.y, label %bb.bei, label %bb.beh, !prof !14, !nosanitize !13

bb.beh:                                           ; preds = %bb.beg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @828, i64 %i.v) #8, !nosanitize !13
  br label %bb.bei, !nosanitize !13

bb.bei:                                           ; preds = %bb.beh, %bb.beg
  br i1 %i.ce, label %bb.bek, label %bb.bej, !prof !14, !nosanitize !13

bb.bej:                                           ; preds = %bb.bei
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @829, i64 %i.cc) #8, !nosanitize !13
  br label %bb.bek, !nosanitize !13

bb.bek:                                           ; preds = %bb.bej, %bb.bei
  %i.boz = load i32, ptr %i.cb, align 64, !tbaa !48
  %.not1177 = icmp eq i32 %i.boz, 0
  br i1 %.not1177, label %bb.bel, label %bb.bey

bb.bel:                                           ; preds = %bb.bek
  br i1 %.pre-phi27712823, label %bb.ben, label %bb.bem, !prof !14, !nosanitize !13

bb.bem:                                           ; preds = %bb.bel
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @830, i64 %i.d) #8, !nosanitize !13
  br label %bb.ben, !nosanitize !13

bb.ben:                                           ; preds = %bb.bel, %bb.bem
  %i.bpa = load i32, ptr %i.ag, align 8, !tbaa !108
  %.not1178 = icmp eq i32 %.5832, %i.bpa
  br i1 %.not1178, label %bb.bff, label %bb.beo

bb.beo:                                           ; preds = %bb.ben
  br i1 %i.y, label %bb.beq, label %bb.bep, !prof !14, !nosanitize !13

bb.bep:                                           ; preds = %bb.beo
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @831, i64 %i.v) #8, !nosanitize !13
  br label %bb.beq, !nosanitize !13

bb.beq:                                           ; preds = %bb.bep, %bb.beo
end_hunk_0
