Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/miniz?download=true
inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_j:bb.a
  br i1 %or.cond1619.not, label %bb.ew, label %bb.er

bb.eo:                                            ; preds = %bb.em
  %i.abi = icmp samesign ugt i32 %.62, 10
  br i1 %i.abi, label %.preheader1711, label %bb.er

.preheader1711:                                   ; preds = %bb.eo
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 5896
  br label %bb.ep

bb.ep:                                            ; preds = %.preheader1711, %bb.ep
  %.0992 = phi i32 [ %i.abt, %bb.ep ], [ %i.abe, %.preheader1711 ]
  %.0989 = phi i32 [ %i.abm, %bb.ep ], [ 10, %.preheader1711 ] ; 3 uses
  %i.abk = xor i32 %.0992, -1
  %i.abl = zext nneg i32 %i.abk to i64
  %i.abm = add i32 %.0989, 1
  %i.abn = zext nneg i32 %.0989 to i64
  %i.abo = lshr i64 %.621138, %i.abn
  %i.abp = and i64 %i.abo, 1
  %i.abq = getelementptr [2 x i8], ptr %i.abj, i64 %i.abp
  %i.abr = getelementptr [2 x i8], ptr %i.abq, i64 %i.abl
  %i.abs = load i16, ptr %i.abr, align 2, !tbaa !79 ; 3 uses
  %i.abt = sext i16 %i.abs to i32
  %i.abu = icmp slt i16 %i.abs, 0
  %i.abv = add i32 %.0989, 2
  %i.abw = icmp uge i32 %.62, %i.abv
  %i.abx = and i1 %i.abu, %i.abw
  br i1 %i.abx, label %bb.ep, label %bb.eq, !llvm.loop !221

bb.eq:                                            ; preds = %bb.ep
  %i.aby = icmp sgt i16 %i.abs, -1
  br i1 %i.aby, label %bb.ew, label %bb.er

bb.er:                                            ; preds = %bb.eo, %bb.eq, %bb.en, %bb.et
  %.571423 = phi i64 [ %i.ac, %bb.et ], [ %.561422, %bb.en ], [ %.561422, %bb.eq ], [ %.561422, %bb.eo ] ; 3 uses
  %.581318 = phi ptr [ %4, %bb.et ], [ %.571317, %bb.en ], [ %.571317, %bb.eq ], [ %.571317, %bb.eo ] ; 3 uses
  %.611229 = phi ptr [ %1, %bb.et ], [ %.601228, %bb.en ], [ %.601228, %bb.eq ], [ %.601228, %bb.eo ] ; 4 uses
  %.631139 = phi i64 [ %i.u, %bb.et ], [ %.621138, %bb.en ], [ %.621138, %bb.eq ], [ %.621138, %bb.eo ] ; 2 uses
  %.611056 = phi i32 [ %i.aa, %bb.et ], [ %.601055, %bb.en ], [ %.601055, %bb.eq ], [ %.601055, %bb.eo ] ; 2 uses
  %.61967 = phi i32 [ %i.y, %bb.et ], [ %.60966, %bb.en ], [ %.60966, %bb.eq ], [ %.60966, %bb.eo ] ; 3 uses
  %.59886 = phi i32 [ %i.w, %bb.et ], [ %.58885, %bb.en ], [ %.58885, %bb.eq ], [ %.58885, %bb.eo ] ; 2 uses
  %.63 = phi i32 [ %.84.fr1986, %bb.et ], [ %.62, %bb.en ], [ %.62, %bb.eq ], [ %.62, %bb.eo ] ; 3 uses
  %.not1559 = icmp ult ptr %.611229, %i.e
  br i1 %.not1559, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.abz = and i32 %6, 2
  %.not1560 = icmp eq i32 %i.abz, 0
  store i32 26, ptr %0, align 8, !tbaa !77
  %spec.select1691 = select i1 %.not1560, i32 -4, i32 1
  br label %.thread1645

bb.et:                                            ; preds = %bb.c
  br label %bb.er, !llvm.loop !222

bb.eu:                                            ; preds = %bb.er
  %i.aca = getelementptr inbounds nuw i8, ptr %.611229, i64 1 ; 2 uses
  %i.acb = load i8, ptr %.611229, align 1, !tbaa !18
  %i.acc = zext i8 %i.acb to i64
  %i.acd = zext nneg i32 %.63 to i64
  %i.ace = shl i64 %i.acc, %i.acd
  %i.acf = or i64 %i.ace, %.631139                ; 2 uses
  %i.acg = add i32 %.63, 8                        ; 3 uses
  %i.ach = icmp ult i32 %i.acg, 15
  br i1 %i.ach, label %bb.em, label %bb.ew, !llvm.loop !223

bb.ev:                                            ; preds = %bb.el
  %i.aci = load i8, ptr %.591227, align 1, !tbaa !18
  %i.acj = zext i8 %i.aci to i64
  %i.ack = zext nneg i32 %.61 to i64
  %i.acl = shl nuw nsw i64 %i.acj, %i.ack
  %i.acm = getelementptr inbounds nuw i8, ptr %.591227, i64 1
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !18
  %i.aco = zext i8 %i.acn to i64
  %i.acp = add nuw nsw i32 %.61, 8
  %i.acq = zext nneg i32 %i.acp to i64
  %i.acr = shl nuw nsw i64 %i.aco, %i.acq
  %i.acs = or i64 %i.acl, %i.acr
  %i.act = or i64 %i.acs, %.611137
  %i.acu = getelementptr inbounds nuw i8, ptr %.591227, i64 2
  %i.acv = or disjoint i32 %.61, 16
  br label %bb.ew

bb.ew:                                            ; preds = %bb.en, %bb.ev, %bb.eq, %bb.eu, %bb.ek
  %.581424 = phi i64 [ %.561422, %bb.en ], [ %.571423, %bb.eu ], [ %.561422, %bb.eq ], [ %.551421, %bb.ev ], [ %.551421, %bb.ek ]
  %.591319 = phi ptr [ %.571317, %bb.en ], [ %.581318, %bb.eu ], [ %.571317, %bb.eq ], [ %.561316, %bb.ev ], [ %.561316, %bb.ek ] ; 3 uses
  %.621230 = phi ptr [ %.601228, %bb.en ], [ %i.aca, %bb.eu ], [ %.601228, %bb.eq ], [ %i.acu, %bb.ev ], [ %.591227, %bb.ek ] ; 3 uses
  %.641140 = phi i64 [ %.621138, %bb.en ], [ %i.acf, %bb.eu ], [ %.621138, %bb.eq ], [ %i.act, %bb.ev ], [ %.611137, %bb.ek ] ; 3 uses
  %.62968 = phi i32 [ %.60966, %bb.en ], [ %.61967, %bb.eu ], [ %.60966, %bb.eq ], [ %.59965, %bb.ev ], [ %.59965, %bb.ek ] ; 3 uses
  %.64 = phi i32 [ %.62, %bb.en ], [ %i.acg, %bb.eu ], [ %.62, %bb.eq ], [ %i.acv, %bb.ev ], [ %.61, %bb.ek ]
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 3848
  %i.acx = and i64 %.641140, 1023
  %i.acy = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %i.acx
  %i.acz = load i16, ptr %i.acy, align 2, !tbaa !79 ; 2 uses
  %i.ada = sext i16 %i.acz to i32                 ; 3 uses
  %i.adb = icmp sgt i16 %i.acz, -1
  br i1 %i.adb, label %bb.ex, label %.preheader1709

.preheader1709:                                   ; preds = %bb.ew
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 5896
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.add = lshr i32 %i.ada, 9
  %i.ade = and i32 %i.ada, 511
  br label %.loopexit1710

bb.ey:                                            ; preds = %.preheader1709, %bb.ey
  %.1993 = phi i32 [ %i.ado, %bb.ey ], [ %i.ada, %.preheader1709 ]
  %.1990 = phi i32 [ %i.adh, %bb.ey ], [ 10, %.preheader1709 ] ; 2 uses
  %i.adf = xor i32 %.1993, -1
  %i.adg = zext nneg i32 %i.adf to i64
  %i.adh = add i32 %.1990, 1                      ; 2 uses
  %i.adi = zext nneg i32 %.1990 to i64
  %i.adj = lshr i64 %.641140, %i.adi
  %i.adk = and i64 %i.adj, 1
  %i.adl = getelementptr [2 x i8], ptr %i.adc, i64 %i.adk
  %i.adm = getelementptr [2 x i8], ptr %i.adl, i64 %i.adg
  %i.adn = load i16, ptr %i.adm, align 2, !tbaa !79 ; 2 uses
  %i.ado = sext i16 %i.adn to i32                 ; 2 uses
  %i.adp = icmp slt i16 %i.adn, 0
  br i1 %i.adp, label %bb.ey, label %.loopexit1710, !llvm.loop !224

.loopexit1710:                                    ; preds = %bb.ey, %bb.ex
  %.2994 = phi i32 [ %i.ade, %bb.ex ], [ %i.ado, %bb.ey ] ; 2 uses
  %.2991 = phi i32 [ %i.add, %bb.ex ], [ %i.adh, %bb.ey ] ; 2 uses
  %i.adq = zext nneg i32 %.2991 to i64
  %i.adr = lshr i64 %.641140, %i.adq              ; 3 uses
  %i.ads = sub i32 %.64, %.2991                   ; 4 uses
  %i.adt = zext nneg i32 %.2994 to i64            ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_jE11s_dist_base, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !17 ; 3 uses
  %i.adw = add nsw i32 %.2994, -30
  %.not1561 = icmp ult i32 %i.adw, -26
  br i1 %.not1561, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %.loopexit1710
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr @_ZZN12duckdb_miniz16tinfl_decompressEPNS_22tinfl_decompressor_tagEPKhPmPhS5_S4_jE12s_dist_extra, i64 %i.adt
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !17 ; 3 uses
  %i.adz = icmp ult i32 %i.ads, %i.ady
  br i1 %i.adz, label %.preheader2096, label %.loopexit2097

.preheader2096:                                   ; preds = %bb.fc, %bb.ez
  %.601426.ph = phi i64 [ %.581424, %bb.ez ], [ %i.ac, %bb.fc ]
  %.611321.ph = phi ptr [ %.591319, %bb.ez ], [ %4, %bb.fc ] ; 2 uses
  %.641232.ph = phi ptr [ %.621230, %bb.ez ], [ %1, %bb.fc ]
  %.661142.ph = phi i64 [ %i.adr, %bb.ez ], [ %i.u, %bb.fc ]
  %.631058.ph = phi i32 [ %i.ady, %bb.ez ], [ %i.aa, %bb.fc ] ; 3 uses
  %.64970.ph = phi i32 [ %.62968, %bb.ez ], [ %i.y, %bb.fc ] ; 2 uses
  %.61888.ph = phi i32 [ %i.adv, %bb.ez ], [ %i.w, %bb.fc ] ; 2 uses
  %.66.ph = phi i32 [ %i.ads, %bb.ez ], [ %.84.fr1986, %bb.fc ]
  br label %bb.fa

bb.fa:                                            ; preds = %.preheader2096, %bb.fd
  %.641232 = phi ptr [ %i.aeb, %bb.fd ], [ %.641232.ph, %.preheader2096 ] ; 4 uses
  %.661142 = phi i64 [ %i.aeg, %bb.fd ], [ %.661142.ph, %.preheader2096 ] ; 2 uses
  %.66 = phi i32 [ %i.aeh, %bb.fd ], [ %.66.ph, %.preheader2096 ] ; 3 uses
  %.not1562 = icmp ult ptr %.641232, %i.e
  br i1 %.not1562, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aea = and i32 %6, 2
  %.not1567 = icmp eq i32 %i.aea, 0
  store i32 27, ptr %0, align 8, !tbaa !77
  %spec.select1693 = select i1 %.not1567, i32 -4, i32 1
  br label %.thread1645

bb.fc:                                            ; preds = %bb.c
  br label %.preheader2096, !llvm.loop !225

bb.fd:                                            ; preds = %bb.fa
  %i.aeb = getelementptr inbounds nuw i8, ptr %.641232, i64 1 ; 2 uses
  %i.aec = load i8, ptr %.641232, align 1, !tbaa !18
  %i.aed = zext i8 %i.aec to i64
  %i.aee = zext nneg i32 %.66 to i64
  %i.aef = shl i64 %i.aed, %i.aee
  %i.aeg = or i64 %i.aef, %.661142                ; 2 uses
  %i.aeh = add i32 %.66, 8                        ; 3 uses
  %i.aei = icmp ult i32 %i.aeh, %.631058.ph
  br i1 %i.aei, label %bb.fa, label %.loopexit2097, !llvm.loop !226

.loopexit2097:                                    ; preds = %bb.fd, %bb.ez
  %.621322 = phi ptr [ %.591319, %bb.ez ], [ %.611321.ph, %bb.fd ]
  %.651233 = phi ptr [ %.621230, %bb.ez ], [ %i.aeb, %bb.fd ]
  %.671143 = phi i64 [ %i.adr, %bb.ez ], [ %i.aeg, %bb.fd ] ; 2 uses
  %.641059 = phi i32 [ %i.ady, %bb.ez ], [ %.631058.ph, %bb.fd ] ; 4 uses
  %.65971 = phi i32 [ %.62968, %bb.ez ], [ %.64970.ph, %bb.fd ]
  %.62889 = phi i32 [ %i.adv, %bb.ez ], [ %.61888.ph, %bb.fd ]
  %.67 = phi i32 [ %i.ads, %bb.ez ], [ %i.aeh, %bb.fd ]
  %notmask1563 = shl nsw i32 -1, %.641059
  %i.aej = xor i32 %notmask1563, -1
  %i.aek = trunc i64 %.671143 to i32
  %i.ael = and i32 %i.aej, %i.aek
  %i.aem = zext nneg i32 %.641059 to i64
  %i.aen = lshr i64 %.671143, %i.aem
  %i.aeo = sub i32 %.67, %.641059
  %i.aep = add i32 %.62889, %i.ael
  br label %bb.fe

bb.fe:                                            ; preds = %.loopexit2097, %.loopexit1710
  %.631323 = phi ptr [ %.621322, %.loopexit2097 ], [ %.591319, %.loopexit1710 ] ; 11 uses
  %.661234 = phi ptr [ %.651233, %.loopexit2097 ], [ %.621230, %.loopexit1710 ] ; 4 uses
  %.681144 = phi i64 [ %i.aen, %.loopexit2097 ], [ %i.adr, %.loopexit1710 ] ; 4 uses
  %.651060 = phi i32 [ %.641059, %.loopexit2097 ], [ 0, %.loopexit1710 ] ; 4 uses
  %.66972 = phi i32 [ %.65971, %.loopexit2097 ], [ %.62968, %.loopexit1710 ] ; 8 uses
  %.63890 = phi i32 [ %i.aep, %.loopexit2097 ], [ %i.adv, %.loopexit1710 ] ; 5 uses
  %.68 = phi i32 [ %i.aeo, %.loopexit2097 ], [ %i.ads, %.loopexit1710 ] ; 4 uses
  %i.aeq = ptrtoint ptr %.631323 to i64
  %i.aer = sub i64 %i.aeq, %i.j                   ; 6 uses
  %i.aes = zext i32 %.63890 to i64                ; 2 uses
  %i.aet = icmp uge i64 %i.aer, %i.aes
  %brmerge = or i1 %.not, %i.aet
  br i1 %brmerge, label %bb.ff, label %bb.gf

bb.ff:                                            ; preds = %bb.fe
  %i.aeu = sub i64 %i.aer, %i.aes
  %i.aev = and i64 %i.aeu, %i.n
  %i.aew = getelementptr inbounds nuw i8, ptr %3, i64 %i.aev ; 8 uses
  %i.aex = icmp ugt ptr %.631323, %i.aew
  %i.aey = select i1 %i.aex, ptr %.631323, ptr %i.aew
  %i.aez = zext i32 %.66972 to i64
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.aez
  %i.afb = icmp ugt ptr %i.afa, %i.g
  br i1 %i.afb, label %bb.fg, label %.preheader1708

.preheader1708:                                   ; preds = %bb.ff
  %i.afc = icmp ugt i32 %.66972, 2
  br i1 %i.afc, label %.lr.ph1752.preheader, label %._crit_edge

.lr.ph1752.preheader:                             ; preds = %.preheader1708
  %7 = add i32 %.66972, -3                        ; 2 uses
  %8 = udiv i32 %7, 3
  %9 = and i32 %8, 1
  %lcmp.mod.not.not = icmp eq i32 %9, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph1752.prol, label %.lr.ph1752.prol.loopexit

.lr.ph1752.prol:                                  ; preds = %.lr.ph1752.preheader
  %10 = load i8, ptr %i.aew, align 1, !tbaa !18
  store i8 %10, ptr %.631323, align 1, !tbaa !18
  %11 = getelementptr inbounds nuw i8, ptr %i.aew, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !18
  %13 = getelementptr inbounds nuw i8, ptr %.631323, i64 1
  store i8 %12, ptr %13, align 1, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %i.aew, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %.631323, i64 2
  store i8 %15, ptr %16, align 1, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %.631323, i64 3 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.aew, i64 3 ; 2 uses
  %19 = add i32 %.66972, -3                       ; 2 uses
  br label %.lr.ph1752.prol.loopexit

.lr.ph1752.prol.loopexit:                         ; preds = %.lr.ph1752.prol, %.lr.ph1752.preheader
  %.709761751.unr = phi i32 [ %.66972, %.lr.ph1752.preheader ], [ %19, %.lr.ph1752.prol ]
  %.012591750.unr = phi ptr [ %i.aew, %.lr.ph1752.preheader ], [ %18, %.lr.ph1752.prol ]
  %.6713271749.unr = phi ptr [ %.631323, %.lr.ph1752.preheader ], [ %17, %.lr.ph1752.prol ]
  %.lcssa2095.unr = phi ptr [ poison, %.lr.ph1752.preheader ], [ %17, %.lr.ph1752.prol ]
  %.lcssa2094.unr = phi ptr [ poison, %.lr.ph1752.preheader ], [ %18, %.lr.ph1752.prol ]
  %.lcssa2093.unr = phi i32 [ poison, %.lr.ph1752.preheader ], [ %19, %.lr.ph1752.prol ]
  %20 = icmp ult i32 %7, 3
  br i1 %20, label %._crit_edge, label %.lr.ph1752

bb.fg:                                            ; preds = %bb.ff, %bb.fj
  %.621428 = phi i64 [ %i.aer, %bb.ff ], [ %i.afe, %bb.fj ] ; 2 uses
  %.651325 = phi ptr [ %.631323, %bb.ff ], [ %i.afk, %bb.fj ] ; 2 uses
  %.681236 = phi ptr [ %.661234, %bb.ff ], [ %.691237, %bb.fj ] ; 2 uses
  %.701146 = phi i64 [ %.681144, %bb.ff ], [ %.711147, %bb.fj ] ; 2 uses
  %.671062 = phi i32 [ %.651060, %bb.ff ], [ %.681063, %bb.fj ] ; 2 uses
  %.68974 = phi i32 [ %.66972, %bb.ff ], [ %.69975, %bb.fj ] ; 2 uses
  %.65892 = phi i32 [ %.63890, %bb.ff ], [ %.66893, %bb.fj ] ; 2 uses
  %.70 = phi i32 [ %.68, %bb.ff ], [ %.71, %bb.fj ] ; 2 uses
  %i.afd = add i32 %.68974, -1
  %.not1565 = icmp eq i32 %.68974, 0
  br i1 %.not1565, label %.preheader2118, label %bb.fh, !llvm.loop !227

bb.fh:                                            ; preds = %bb.fg, %bb.fi
  %.631429 = phi i64 [ %.621428, %bb.fg ], [ %i.ac, %bb.fi ] ; 3 uses
  %.661326 = phi ptr [ %.651325, %bb.fg ], [ %4, %bb.fi ] ; 4 uses
  %.691237 = phi ptr [ %.681236, %bb.fg ], [ %1, %bb.fi ] ; 2 uses
  %.711147 = phi i64 [ %.701146, %bb.fg ], [ %i.u, %bb.fi ] ; 2 uses
  %.681063 = phi i32 [ %.671062, %bb.fg ], [ %i.aa, %bb.fi ] ; 2 uses
  %.69975 = phi i32 [ %i.afd, %bb.fg ], [ %i.y, %bb.fi ] ; 2 uses
  %.66893 = phi i32 [ %.65892, %bb.fg ], [ %i.w, %bb.fi ] ; 3 uses
  %.71 = phi i32 [ %.70, %bb.fg ], [ %.84.fr1986, %bb.fi ] ; 2 uses
  %.not1566 = icmp ult ptr %.661326, %i.g
  br i1 %.not1566, label %bb.fj, label %bb.gf

bb.fi:                                            ; preds = %bb.c
  br label %bb.fh, !llvm.loop !228

bb.fj:                                            ; preds = %bb.fh
  %i.afe = add i64 %.631429, 1
  %i.aff = zext i32 %.66893 to i64
  %i.afg = sub i64 %.631429, %i.aff
  %i.afh = and i64 %i.afg, %i.n
  %i.afi = getelementptr inbounds nuw i8, ptr %3, i64 %i.afh
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !18
  %i.afk = getelementptr inbounds nuw i8, ptr %.661326, i64 1
  store i8 %i.afj, ptr %.661326, align 1, !tbaa !18
  br label %bb.fg, !llvm.loop !229

.lr.ph1752:                                       ; preds = %.lr.ph1752.prol.loopexit, %.lr.ph1752
  %.709761751 = phi i32 [ %i.afu, %.lr.ph1752 ], [ %.709761751.unr, %.lr.ph1752.prol.loopexit ]
  %.012591750 = phi ptr [ %i.aft, %.lr.ph1752 ], [ %.012591750.unr, %.lr.ph1752.prol.loopexit ] ; 7 uses
  %.6713271749 = phi ptr [ %i.afs, %.lr.ph1752 ], [ %.6713271749.unr, %.lr.ph1752.prol.loopexit ] ; 7 uses
  %21 = load i8, ptr %.012591750, align 1, !tbaa !18
  store i8 %21, ptr %.6713271749, align 1, !tbaa !18
  %22 = getelementptr inbounds nuw i8, ptr %.012591750, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !18
  %24 = getelementptr inbounds nuw i8, ptr %.6713271749, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !18
  %25 = getelementptr inbounds nuw i8, ptr %.012591750, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !18
  %27 = getelementptr inbounds nuw i8, ptr %.6713271749, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !18
  %28 = getelementptr inbounds nuw i8, ptr %.6713271749, i64 3
  %29 = getelementptr inbounds nuw i8, ptr %.012591750, i64 3
  %i.afl = load i8, ptr %29, align 1, !tbaa !18
  store i8 %i.afl, ptr %28, align 1, !tbaa !18
  %i.afm = getelementptr inbounds nuw i8, ptr %.012591750, i64 4
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !18
  %i.afo = getelementptr inbounds nuw i8, ptr %.6713271749, i64 4
  store i8 %i.afn, ptr %i.afo, align 1, !tbaa !18
  %i.afp = getelementptr inbounds nuw i8, ptr %.012591750, i64 5
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !18
  %i.afr = getelementptr inbounds nuw i8, ptr %.6713271749, i64 5
  store i8 %i.afq, ptr %i.afr, align 1, !tbaa !18
  %i.afs = getelementptr inbounds nuw i8, ptr %.6713271749, i64 6 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %.012591750, i64 6 ; 2 uses
  %i.afu = add i32 %.709761751, -6                ; 3 uses
  %i.afv = icmp ugt i32 %i.afu, 2
  br i1 %i.afv, label %.lr.ph1752, label %._crit_edge, !llvm.loop !230

._crit_edge:                                      ; preds = %.lr.ph1752.prol.loopexit, %.lr.ph1752, %.preheader1708
  %.671327.lcssa = phi ptr [ %.631323, %.preheader1708 ], [ %.lcssa2095.unr, %.lr.ph1752.prol.loopexit ], [ %i.afs, %.lr.ph1752 ] ; 4 uses
  %.01259.lcssa = phi ptr [ %i.aew, %.preheader1708 ], [ %.lcssa2094.unr, %.lr.ph1752.prol.loopexit ], [ %i.aft, %.lr.ph1752 ] ; 2 uses
  %.70976.lcssa = phi i32 [ %.66972, %.preheader1708 ], [ %.lcssa2093.unr, %.lr.ph1752.prol.loopexit ], [ %i.afu, %.lr.ph1752 ] ; 5 uses
  %.not1564 = icmp eq i32 %.70976.lcssa, 0
  br i1 %.not1564, label %.preheader2118, label %bb.fk, !llvm.loop !227

bb.fk:                                            ; preds = %._crit_edge
  %i.afw = load i8, ptr %.01259.lcssa, align 1, !tbaa !18
  store i8 %i.afw, ptr %.671327.lcssa, align 1, !tbaa !18
  %i.afx = icmp eq i32 %.70976.lcssa, 2
  br i1 %i.afx, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.afy = getelementptr inbounds nuw i8, ptr %.01259.lcssa, i64 1
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !18
  %i.aga = getelementptr inbounds nuw i8, ptr %.671327.lcssa, i64 1
  store i8 %i.afz, ptr %i.aga, align 1, !tbaa !18
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.agb = zext nneg i32 %.70976.lcssa to i64
  %i.agc = getelementptr inbounds nuw i8, ptr %.671327.lcssa, i64 %i.agb
  br label %.preheader2118, !llvm.loop !227

bb.fn:                                            ; preds = %bb.at, %.thread
  %.641430 = phi i64 [ %.191385, %bb.at ], [ %.511417, %.thread ] ; 2 uses
  %.691329 = phi ptr [ %.191279, %bb.at ], [ %.521312, %.thread ] ; 2 uses
  %.701238 = phi ptr [ %.221190, %bb.at ], [ %.551223, %.thread ] ; 2 uses
  %.721148 = phi i64 [ %.231099, %bb.at ], [ %.571133, %.thread ] ; 2 uses
  %.691064 = phi i32 [ %.231018, %bb.at ], [ %.551050, %.thread ] ; 2 uses
  %.71977 = phi i32 [ 0, %bb.at ], [ 256, %.thread ] ; 2 uses
  %.67894 = phi i32 [ %.22849, %bb.at ], [ %.53880, %.thread ] ; 2 uses
  %.72 = phi i32 [ %.23, %bb.at ], [ %.57, %.thread ] ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !251
  %i.agf = and i32 %i.age, 1
  %.not1584 = icmp eq i32 %i.agf, 0
  br i1 %.not1584, label %bb.n, label %bb.fr, !llvm.loop !231

bb.fo:                                            ; preds = %bb.fp
  %i.agg = and i32 %6, 2
  %.not1533 = icmp eq i32 %i.agg, 0
  store i32 32, ptr %0, align 8, !tbaa !77
  %spec.select1695 = select i1 %.not1533, i32 -4, i32 1
  br label %.thread1645

bb.fp:                                            ; preds = %bb.c
  %.not1532.not = icmp eq i64 %i.d, 0
  br i1 %.not1532.not, label %bb.fo, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.agh = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.agi = load i8, ptr %1, align 1, !tbaa !18
  %i.agj = zext i8 %i.agi to i64
  %i.agk = zext nneg i32 %.84.fr1986 to i64
  %i.agl = shl i64 %i.agj, %i.agk
  %i.agm = or i64 %i.agl, %i.u
  %i.agn = add i32 %.84.fr1986, 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fn, %bb.fq
  %.671433 = phi i64 [ %i.ac, %bb.fq ], [ %.641430, %bb.fn ] ; 2 uses
  %.721332 = phi ptr [ %4, %bb.fq ], [ %.691329, %bb.fn ] ; 2 uses
  %.731241 = phi ptr [ %i.agh, %bb.fq ], [ %.701238, %bb.fn ] ; 4 uses
  %.751151 = phi i64 [ %i.agm, %bb.fq ], [ %.721148, %bb.fn ]
  %.721067 = phi i32 [ %i.aa, %bb.fq ], [ %.691064, %bb.fn ] ; 2 uses
  %.74980 = phi i32 [ %i.y, %bb.fq ], [ %.71977, %bb.fn ]
  %.70897 = phi i32 [ %i.w, %bb.fq ], [ %.67894, %bb.fn ] ; 2 uses
  %.75 = phi i32 [ %i.agn, %bb.fq ], [ %.72, %bb.fn ]
  %.75.fr = freeze i32 %.75                       ; 2 uses
  %i.ago = and i32 %.75.fr, 7
  %i.agp = zext nneg i32 %i.ago to i64
  %i.agq = lshr i64 %.751151, %i.agp
  %i.agr = and i32 %.75.fr, -8                    ; 3 uses
  %i.ags = icmp ugt ptr %.731241, %1
  %i.agt = icmp ne i32 %i.agr, 0
  %i.agu = and i1 %i.ags, %i.agt
  br i1 %i.agu, label %.lr.ph1787.preheader, label %._crit_edge1788

.lr.ph1787.preheader:                             ; preds = %bb.fr
  %.7312411881 = ptrtoaddr ptr %.731241 to i64
  %i.agv = add i32 %i.agr, -8                     ; 2 uses
  %i.agw = lshr exact i32 %i.agv, 3
  %i.agx = zext nneg i32 %i.agw to i64
  %i.agy = xor i64 %i.a, -1
  %i.agz = add i64 %i.agy, %.7312411881
  %umin = tail call i64 @llvm.umin.i64(i64 %i.agx, i64 %i.agz) ; 2 uses
  %i.aha = xor i64 %umin, -1
  %scevgep1882 = getelementptr i8, ptr %.731241, i64 %i.aha
  %i.ahb = trunc nuw nsw i64 %umin to i32
  %i.ahc = shl nuw i32 %i.ahb, 3
  %i.ahd = sub i32 %i.agv, %i.ahc
  br label %._crit_edge1788

._crit_edge1788:                                  ; preds = %.lr.ph1787.preheader, %bb.fr
  %.741242.lcssa = phi ptr [ %.731241, %bb.fr ], [ %scevgep1882, %.lr.ph1787.preheader ] ; 2 uses
  %.76.lcssa = phi i32 [ %i.agr, %bb.fr ], [ %i.ahd, %.lr.ph1787.preheader ] ; 3 uses
  %i.ahe = zext nneg i32 %.76.lcssa to i64
  %notmask1585 = shl nsw i64 -1, %i.ahe
  %i.ahf = xor i64 %notmask1585, -1
  %i.ahg = and i64 %i.agq, %i.ahf                 ; 2 uses
  %i.ahh = and i32 %6, 1
  %.not1586 = icmp eq i32 %i.ahh, 0
  br i1 %.not1586, label %bb.gf, label %bb.fs

bb.fs:                                            ; preds = %._crit_edge1788, %bb.gd
  %.681434 = phi i64 [ %.731439, %bb.gd ], [ %.671433, %._crit_edge1788 ] ; 4 uses
  %.731333 = phi ptr [ %.781338, %bb.gd ], [ %.721332, %._crit_edge1788 ] ; 4 uses
  %.751243 = phi ptr [ %.801248, %bb.gd ], [ %.741242.lcssa, %._crit_edge1788 ] ; 4 uses
  %.761152 = phi i64 [ %.811157, %bb.gd ], [ %i.ahg, %._crit_edge1788 ] ; 4 uses
  %.731068 = phi i32 [ %.781073, %bb.gd ], [ %.721067, %._crit_edge1788 ] ; 4 uses
  %.75981 = phi i32 [ %i.aif, %bb.gd ], [ 0, %._crit_edge1788 ] ; 5 uses
  %.71898 = phi i32 [ %.76903, %bb.gd ], [ %.70897, %._crit_edge1788 ] ; 4 uses
  %.77 = phi i32 [ %.82, %bb.gd ], [ %.76.lcssa, %._crit_edge1788 ] ; 5 uses
  %i.ahi = icmp ult i32 %.75981, 4
  br i1 %i.ahi, label %bb.ft, label %bb.gf

bb.ft:                                            ; preds = %bb.fs
  %.not1587 = icmp eq i32 %.77, 0
  br i1 %.not1587, label %bb.fz, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ahj = icmp ult i32 %.77, 8
  br i1 %i.ahj, label %.preheader2071, label %.loopexit2072

.preheader2071:                                   ; preds = %bb.fx, %bb.fu
  %.701436.ph = phi i64 [ %.681434, %bb.fu ], [ %i.ac, %bb.fx ] ; 2 uses
  %.751335.ph = phi ptr [ %.731333, %bb.fu ], [ %4, %bb.fx ] ; 2 uses
  %.771245.ph = phi ptr [ %.751243, %bb.fu ], [ %1, %bb.fx ]
  %.781154.ph = phi i64 [ %.761152, %bb.fu ], [ %i.u, %bb.fx ]
  %.751070.ph = phi i32 [ %.731068, %bb.fu ], [ %i.aa, %bb.fx ] ; 2 uses
  %.77983.ph = phi i32 [ %.75981, %bb.fu ], [ %i.y, %bb.fx ] ; 2 uses
  %.73900.ph = phi i32 [ %.71898, %bb.fu ], [ %i.w, %bb.fx ] ; 2 uses
  %.79.ph = phi i32 [ %.77, %bb.fu ], [ %.84.fr1986, %bb.fx ]
  br label %bb.fv

bb.fv:                                            ; preds = %.preheader2071, %bb.fy
  %.771245 = phi ptr [ %i.ahl, %bb.fy ], [ %.771245.ph, %.preheader2071 ] ; 4 uses
  %.781154 = phi i64 [ %i.ahq, %bb.fy ], [ %.781154.ph, %.preheader2071 ] ; 2 uses
  %.79 = phi i32 [ %i.ahr, %bb.fy ], [ %.79.ph, %.preheader2071 ] ; 4 uses
  %.not1590 = icmp ult ptr %.771245, %i.e
  br i1 %.not1590, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ahk = and i32 %6, 2
  %.not1591 = icmp eq i32 %i.ahk, 0
  store i32 41, ptr %0, align 8, !tbaa !77
  %spec.select1697 = select i1 %.not1591, i32 -4, i32 1
  br label %.thread1645

bb.fx:                                            ; preds = %bb.c
  br label %.preheader2071, !llvm.loop !232

bb.fy:                                            ; preds = %bb.fv
  %i.ahl = getelementptr inbounds nuw i8, ptr %.771245, i64 1 ; 2 uses
  %i.ahm = load i8, ptr %.771245, align 1, !tbaa !18
  %i.ahn = zext i8 %i.ahm to i64
  %i.aho = zext nneg i32 %.79 to i64
  %i.ahp = shl i64 %i.ahn, %i.aho
  %i.ahq = or i64 %i.ahp, %.781154                ; 2 uses
  %i.ahr = add i32 %.79, 8                        ; 2 uses
  %i.ahs = icmp ugt i32 %.79, -9
  br i1 %i.ahs, label %bb.fv, label %.loopexit2072, !llvm.loop !233

.loopexit2072:                                    ; preds = %bb.fy, %bb.fu
  %.711437 = phi i64 [ %.681434, %bb.fu ], [ %.701436.ph, %bb.fy ]
  %.761336 = phi ptr [ %.731333, %bb.fu ], [ %.751335.ph, %bb.fy ]
  %.781246 = phi ptr [ %.751243, %bb.fu ], [ %i.ahl, %bb.fy ]
  %.791155 = phi i64 [ %.761152, %bb.fu ], [ %i.ahq, %bb.fy ] ; 2 uses
  %.761071 = phi i32 [ %.731068, %bb.fu ], [ %.751070.ph, %bb.fy ]
  %.78984 = phi i32 [ %.75981, %bb.fu ], [ %.77983.ph, %bb.fy ]
  %.74901 = phi i32 [ %.71898, %bb.fu ], [ %.73900.ph, %bb.fy ]
  %.80 = phi i32 [ %.77, %bb.fu ], [ %i.ahr, %bb.fy ]
  %i.aht = trunc i64 %.791155 to i32
  %i.ahu = and i32 %i.aht, 255
  %i.ahv = lshr i64 %.791155, 8
  %i.ahw = add i32 %.80, -8
  br label %bb.gd

bb.fz:                                            ; preds = %bb.ft, %bb.gb
  %.721438 = phi i64 [ %.681434, %bb.ft ], [ %i.ac, %bb.gb ] ; 2 uses
  %.771337 = phi ptr [ %.731333, %bb.ft ], [ %4, %bb.gb ] ; 2 uses
  %.791247 = phi ptr [ %.751243, %bb.ft ], [ %1, %bb.gb ] ; 4 uses
  %.801156 = phi i64 [ %.761152, %bb.ft ], [ %i.u, %bb.gb ] ; 2 uses
  %.771072 = phi i32 [ %.731068, %bb.ft ], [ %i.aa, %bb.gb ] ; 2 uses
  %.79985 = phi i32 [ %.75981, %bb.ft ], [ %i.y, %bb.gb ] ; 2 uses
  %.75902 = phi i32 [ %.71898, %bb.ft ], [ %i.w, %bb.gb ] ; 2 uses
  %.81 = phi i32 [ 0, %bb.ft ], [ %.84.fr1986, %bb.gb ] ; 2 uses
  %.not1588 = icmp ult ptr %.791247, %i.e
  br i1 %.not1588, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ahx = and i32 %6, 2
  %.not1589 = icmp eq i32 %i.ahx, 0
  store i32 42, ptr %0, align 8, !tbaa !77
  %spec.select1699 = select i1 %.not1589, i32 -4, i32 1
  br label %.thread1645

bb.gb:                                            ; preds = %bb.c
  br label %bb.fz, !llvm.loop !234

bb.gc:                                            ; preds = %bb.fz
  %i.ahy = getelementptr inbounds nuw i8, ptr %.791247, i64 1
end_hunk_0
