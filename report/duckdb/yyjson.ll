inline.NumInlined: 31
inline.NumDeleted: 2
begin_hunk_0_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10397:                                 ; preds = %vector.body10397, %vector.ph10394
  %index10398 = phi i64 [ 0, %vector.ph10394 ], [ %index.next10405, %vector.body10397 ] ; 2 uses
  %i.arh = sub i64 %i.aqr, %index10398            ; 2 uses
  %15 = trunc i64 %i.arh to i32
  %i.ari = getelementptr [8 x i8], ptr %8, i64 %i.arh ; 2 uses
  %i.arj = getelementptr i8, ptr %i.ari, i64 -8
  %i.ark = getelementptr i8, ptr %i.ari, i64 -24
  %wide.load10399 = load <2 x i64>, ptr %i.arj, align 8, !tbaa !91
  %wide.load10400 = load <2 x i64>, ptr %i.ark, align 8, !tbaa !91
  %i.arl = add i32 %i.aqq, %15
  %i.arm = zext i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.arm ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10373:                                 ; preds = %vector.body10373, %vector.ph10366
  %index10374 = phi i64 [ 0, %vector.ph10366 ], [ %index.next10385, %vector.body10373 ] ; 2 uses
  %i.aud = sub i64 %i.ath, %index10374            ; 3 uses
  %16 = trunc i64 %i.aud to i32
  %i.aue = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.aud ; 2 uses
  %i.auf = getelementptr inbounds i8, ptr %i.aue, i64 -8
  %i.aug = getelementptr inbounds i8, ptr %i.aue, i64 -24
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.auj = getelementptr i8, ptr %i.auh, i64 -24
  %wide.load10379 = load <2 x i64>, ptr %i.aui, align 8, !tbaa !91
  %wide.load10380 = load <2 x i64>, ptr %i.auj, align 8, !tbaa !91
  %i.auk = add i32 %i.aqo, %16
  %i.aul = zext i32 %i.auk to i64
  %i.aum = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.aul ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10347:                                 ; preds = %vector.body10347, %vector.ph10344
  %index10348 = phi i64 [ 0, %vector.ph10344 ], [ %index.next10355, %vector.body10347 ] ; 2 uses
  %i.axq = sub i64 %i.axa, %index10348            ; 2 uses
  %17 = trunc i64 %i.axq to i32
  %i.axr = getelementptr [8 x i8], ptr %7, i64 %i.axq ; 2 uses
  %i.axs = getelementptr i8, ptr %i.axr, i64 -8
  %i.axt = getelementptr i8, ptr %i.axr, i64 -24
  %wide.load10349 = load <2 x i64>, ptr %i.axs, align 8, !tbaa !91
  %wide.load10350 = load <2 x i64>, ptr %i.axt, align 8, !tbaa !91
  %i.axu = add i32 %i.awz, %17
  %i.axv = zext i32 %i.axu to i64
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.awy, i64 %i.axv ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10323:                                 ; preds = %vector.body10323, %vector.ph10316
  %index10324 = phi i64 [ 0, %vector.ph10316 ], [ %index.next10335, %vector.body10323 ] ; 2 uses
  %i.bam = sub i64 %i.azq, %index10324            ; 3 uses
  %18 = trunc i64 %i.bam to i32
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.azp, i64 %i.bam ; 2 uses
  %i.bao = getelementptr inbounds i8, ptr %i.ban, i64 -8
  %i.bap = getelementptr inbounds i8, ptr %i.ban, i64 -24
end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.bas = getelementptr i8, ptr %i.baq, i64 -24
  %wide.load10329 = load <2 x i64>, ptr %i.bar, align 8, !tbaa !91
  %wide.load10330 = load <2 x i64>, ptr %i.bas, align 8, !tbaa !91
  %i.bat = add i32 %i.awv, %18
  %i.bau = zext i32 %i.bat to i64
  %i.bav = getelementptr inbounds nuw [8 x i8], ptr %i.azp, i64 %i.bau ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10297:                                 ; preds = %vector.body10297, %vector.ph10294
  %index10298 = phi i64 [ 0, %vector.ph10294 ], [ %index.next10305, %vector.body10297 ] ; 2 uses
  %i.fem = sub i64 %i.fdw, %index10298            ; 2 uses
  %19 = trunc i64 %i.fem to i32
  %i.fen = getelementptr [8 x i8], ptr %6, i64 %i.fem ; 2 uses
  %i.feo = getelementptr i8, ptr %i.fen, i64 -8
  %i.fep = getelementptr i8, ptr %i.fen, i64 -24
  %wide.load10299 = load <2 x i64>, ptr %i.feo, align 8, !tbaa !91
  %wide.load10300 = load <2 x i64>, ptr %i.fep, align 8, !tbaa !91
  %i.feq = add i32 %i.fdv, %19
  %i.fer = zext i32 %i.feq to i64
  %i.fes = getelementptr inbounds nuw [8 x i8], ptr %i.ews, i64 %i.fer ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10273:                                 ; preds = %vector.body10273, %vector.ph10266
  %index10274 = phi i64 [ 0, %vector.ph10266 ], [ %index.next10285, %vector.body10273 ] ; 2 uses
  %i.fhi = sub i64 %i.fgm, %index10274            ; 3 uses
  %20 = trunc i64 %i.fhi to i32
  %i.fhj = getelementptr inbounds nuw [8 x i8], ptr %i.ews, i64 %i.fhi ; 2 uses
  %i.fhk = getelementptr inbounds i8, ptr %i.fhj, i64 -8
  %i.fhl = getelementptr inbounds i8, ptr %i.fhj, i64 -24
end_hunk_7
begin_hunk_8_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.fho = getelementptr i8, ptr %i.fhm, i64 -24
  %wide.load10279 = load <2 x i64>, ptr %i.fhn, align 8, !tbaa !91
  %wide.load10280 = load <2 x i64>, ptr %i.fho, align 8, !tbaa !91
  %i.fhp = add i32 %i.fdt, %20
  %i.fhq = zext i32 %i.fhp to i64
  %i.fhr = getelementptr inbounds nuw [8 x i8], ptr %i.ews, i64 %i.fhq ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10247:                                 ; preds = %vector.body10247, %vector.ph10244
  %index10248 = phi i64 [ 0, %vector.ph10244 ], [ %index.next10255, %vector.body10247 ] ; 2 uses
  %i.fkv = sub i64 %i.fkf, %index10248            ; 2 uses
  %21 = trunc i64 %i.fkv to i32
  %i.fkw = getelementptr [8 x i8], ptr %5, i64 %i.fkv ; 2 uses
  %i.fkx = getelementptr i8, ptr %i.fkw, i64 -8
  %i.fky = getelementptr i8, ptr %i.fkw, i64 -24
  %wide.load10249 = load <2 x i64>, ptr %i.fkx, align 8, !tbaa !91
  %wide.load10250 = load <2 x i64>, ptr %i.fky, align 8, !tbaa !91
  %i.fkz = add i32 %i.fke, %21
  %i.fla = zext i32 %i.fkz to i64
  %i.flb = getelementptr inbounds nuw [8 x i8], ptr %i.fkd, i64 %i.fla ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fnr = sub i64 %i.fmv, %index                 ; 3 uses
  %22 = trunc i64 %i.fnr to i32
  %i.fns = getelementptr inbounds nuw [8 x i8], ptr %i.fmu, i64 %i.fnr ; 2 uses
  %i.fnt = getelementptr inbounds i8, ptr %i.fns, i64 -8
  %i.fnu = getelementptr inbounds i8, ptr %i.fns, i64 -24
end_hunk_10
begin_hunk_11_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.fnx = getelementptr i8, ptr %i.fnv, i64 -24
  %wide.load10233 = load <2 x i64>, ptr %i.fnw, align 8, !tbaa !91
  %wide.load10234 = load <2 x i64>, ptr %i.fnx, align 8, !tbaa !91
  %i.fny = add i32 %i.fka, %22
  %i.fnz = zext i32 %i.fny to i64
  %i.foa = getelementptr inbounds nuw [8 x i8], ptr %i.fmu, i64 %i.fnz ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10597:                                 ; preds = %vector.body10597, %vector.ph10594
  %index10598 = phi i64 [ 0, %vector.ph10594 ], [ %index.next10605, %vector.body10597 ] ; 2 uses
  %i.hmm = sub i64 %i.hlw, %index10598            ; 2 uses
  %23 = trunc i64 %i.hmm to i32
  %i.hmn = getelementptr [8 x i8], ptr %12, i64 %i.hmm ; 2 uses
  %i.hmo = getelementptr i8, ptr %i.hmn, i64 -8
  %i.hmp = getelementptr i8, ptr %i.hmn, i64 -24
  %wide.load10599 = load <2 x i64>, ptr %i.hmo, align 8, !tbaa !91
  %wide.load10600 = load <2 x i64>, ptr %i.hmp, align 8, !tbaa !91
  %i.hmq = add i32 %i.hlv, %23
  %i.hmr = zext i32 %i.hmq to i64
  %i.hms = getelementptr inbounds nuw [8 x i8], ptr %i.hes, i64 %i.hmr ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10573:                                 ; preds = %vector.body10573, %vector.ph10566
  %index10574 = phi i64 [ 0, %vector.ph10566 ], [ %index.next10585, %vector.body10573 ] ; 2 uses
  %i.hpi = sub i64 %i.hom, %index10574            ; 3 uses
  %24 = trunc i64 %i.hpi to i32
  %i.hpj = getelementptr inbounds nuw [8 x i8], ptr %i.hes, i64 %i.hpi ; 2 uses
  %i.hpk = getelementptr inbounds i8, ptr %i.hpj, i64 -8
  %i.hpl = getelementptr inbounds i8, ptr %i.hpj, i64 -24
end_hunk_13
begin_hunk_14_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.hpo = getelementptr i8, ptr %i.hpm, i64 -24
  %wide.load10579 = load <2 x i64>, ptr %i.hpn, align 8, !tbaa !91
  %wide.load10580 = load <2 x i64>, ptr %i.hpo, align 8, !tbaa !91
  %i.hpp = add i32 %i.hlt, %24
  %i.hpq = zext i32 %i.hpp to i64
  %i.hpr = getelementptr inbounds nuw [8 x i8], ptr %i.hes, i64 %i.hpq ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10547:                                 ; preds = %vector.body10547, %vector.ph10544
  %index10548 = phi i64 [ 0, %vector.ph10544 ], [ %index.next10555, %vector.body10547 ] ; 2 uses
  %i.hsv = sub i64 %i.hsf, %index10548            ; 2 uses
  %25 = trunc i64 %i.hsv to i32
  %i.hsw = getelementptr [8 x i8], ptr %11, i64 %i.hsv ; 2 uses
  %i.hsx = getelementptr i8, ptr %i.hsw, i64 -8
  %i.hsy = getelementptr i8, ptr %i.hsw, i64 -24
  %wide.load10549 = load <2 x i64>, ptr %i.hsx, align 8, !tbaa !91
  %wide.load10550 = load <2 x i64>, ptr %i.hsy, align 8, !tbaa !91
  %i.hsz = add i32 %i.hse, %25
  %i.hta = zext i32 %i.hsz to i64
  %i.htb = getelementptr inbounds nuw [8 x i8], ptr %i.hsd, i64 %i.hta ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10523:                                 ; preds = %vector.body10523, %vector.ph10516
  %index10524 = phi i64 [ 0, %vector.ph10516 ], [ %index.next10535, %vector.body10523 ] ; 2 uses
  %i.hvr = sub i64 %i.huv, %index10524            ; 3 uses
  %26 = trunc i64 %i.hvr to i32
  %i.hvs = getelementptr inbounds nuw [8 x i8], ptr %i.huu, i64 %i.hvr ; 2 uses
  %i.hvt = getelementptr inbounds i8, ptr %i.hvs, i64 -8
  %i.hvu = getelementptr inbounds i8, ptr %i.hvs, i64 -24
end_hunk_16
begin_hunk_17_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.hvx = getelementptr i8, ptr %i.hvv, i64 -24
  %wide.load10529 = load <2 x i64>, ptr %i.hvw, align 8, !tbaa !91
  %wide.load10530 = load <2 x i64>, ptr %i.hvx, align 8, !tbaa !91
  %i.hvy = add i32 %i.hsa, %26
  %i.hvz = zext i32 %i.hvy to i64
  %i.hwa = getelementptr inbounds nuw [8 x i8], ptr %i.huu, i64 %i.hvz ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10497:                                 ; preds = %vector.body10497, %vector.ph10494
  %index10498 = phi i64 [ 0, %vector.ph10494 ], [ %index.next10505, %vector.body10497 ] ; 2 uses
  %i.lxn = sub i64 %i.lwx, %index10498            ; 2 uses
  %27 = trunc i64 %i.lxn to i32
  %i.lxo = getelementptr [8 x i8], ptr %10, i64 %i.lxn ; 2 uses
  %i.lxp = getelementptr i8, ptr %i.lxo, i64 -8
  %i.lxq = getelementptr i8, ptr %i.lxo, i64 -24
  %wide.load10499 = load <2 x i64>, ptr %i.lxp, align 8, !tbaa !91
  %wide.load10500 = load <2 x i64>, ptr %i.lxq, align 8, !tbaa !91
  %i.lxr = add i32 %i.lww, %27
  %i.lxs = zext i32 %i.lxr to i64
  %i.lxt = getelementptr inbounds nuw [8 x i8], ptr %i.lpt, i64 %i.lxs ; 2 uses
end_hunk_18
begin_hunk_19_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10473:                                 ; preds = %vector.body10473, %vector.ph10466
  %index10474 = phi i64 [ 0, %vector.ph10466 ], [ %index.next10485, %vector.body10473 ] ; 2 uses
  %i.maj = sub i64 %i.lzn, %index10474            ; 3 uses
  %28 = trunc i64 %i.maj to i32
  %i.mak = getelementptr inbounds nuw [8 x i8], ptr %i.lpt, i64 %i.maj ; 2 uses
  %i.mal = getelementptr inbounds i8, ptr %i.mak, i64 -8
  %i.mam = getelementptr inbounds i8, ptr %i.mak, i64 -24
end_hunk_19
begin_hunk_20_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.map = getelementptr i8, ptr %i.man, i64 -24
  %wide.load10479 = load <2 x i64>, ptr %i.mao, align 8, !tbaa !91
  %wide.load10480 = load <2 x i64>, ptr %i.map, align 8, !tbaa !91
  %i.maq = add i32 %i.lwu, %28
  %i.mar = zext i32 %i.maq to i64
  %i.mas = getelementptr inbounds nuw [8 x i8], ptr %i.lpt, i64 %i.mar ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10447:                                 ; preds = %vector.body10447, %vector.ph10444
  %index10448 = phi i64 [ 0, %vector.ph10444 ], [ %index.next10455, %vector.body10447 ] ; 2 uses
  %i.mdw = sub i64 %i.mdg, %index10448            ; 2 uses
  %29 = trunc i64 %i.mdw to i32
  %i.mdx = getelementptr [8 x i8], ptr %9, i64 %i.mdw ; 2 uses
  %i.mdy = getelementptr i8, ptr %i.mdx, i64 -8
  %i.mdz = getelementptr i8, ptr %i.mdx, i64 -24
  %wide.load10449 = load <2 x i64>, ptr %i.mdy, align 8, !tbaa !91
  %wide.load10450 = load <2 x i64>, ptr %i.mdz, align 8, !tbaa !91
  %i.mea = add i32 %i.mdf, %29
  %i.meb = zext i32 %i.mea to i64
  %i.mec = getelementptr inbounds nuw [8 x i8], ptr %i.mde, i64 %i.meb ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body10423:                                 ; preds = %vector.body10423, %vector.ph10416
  %index10424 = phi i64 [ 0, %vector.ph10416 ], [ %index.next10435, %vector.body10423 ] ; 2 uses
  %i.mgs = sub i64 %i.mfw, %index10424            ; 3 uses
  %30 = trunc i64 %i.mgs to i32
  %i.mgt = getelementptr inbounds nuw [8 x i8], ptr %i.mfv, i64 %i.mgs ; 2 uses
  %i.mgu = getelementptr inbounds i8, ptr %i.mgt, i64 -8
  %i.mgv = getelementptr inbounds i8, ptr %i.mgt, i64 -24
end_hunk_22
begin_hunk_23_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.mgy = getelementptr i8, ptr %i.mgw, i64 -24
  %wide.load10429 = load <2 x i64>, ptr %i.mgx, align 8, !tbaa !91
  %wide.load10430 = load <2 x i64>, ptr %i.mgy, align 8, !tbaa !91
  %i.mgz = add i32 %i.mdb, %30
  %i.mha = zext i32 %i.mgz to i64
  %i.mhb = getelementptr inbounds nuw [8 x i8], ptr %i.mfv, i64 %i.mha ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN13duckdb_yyjsonL16read_root_singleEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE:bb.a
vector.body1708:                                  ; preds = %vector.body1708, %vector.ph1705
  %index1709 = phi i64 [ 0, %vector.ph1705 ], [ %index.next1716, %vector.body1708 ] ; 2 uses
  %i.alh = sub i64 %i.akr, %index1709             ; 2 uses
  %8 = trunc i64 %i.alh to i32
  %i.ali = getelementptr [8 x i8], ptr %7, i64 %i.alh ; 2 uses
  %i.alj = getelementptr i8, ptr %i.ali, i64 -8
  %i.alk = getelementptr i8, ptr %i.ali, i64 -24
  %wide.load1710 = load <2 x i64>, ptr %i.alj, align 8, !tbaa !91
  %wide.load1711 = load <2 x i64>, ptr %i.alk, align 8, !tbaa !91
  %i.all = add i32 %i.akq, %8
  %i.alm = zext i32 %i.all to i64
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.alm ; 2 uses
end_hunk_24
begin_hunk_25_@_ZN13duckdb_yyjsonL16read_root_singleEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE:bb.a
vector.body1684:                                  ; preds = %vector.body1684, %vector.ph1677
  %index1685 = phi i64 [ 0, %vector.ph1677 ], [ %index.next1696, %vector.body1684 ] ; 2 uses
  %i.aod = sub i64 %i.anh, %index1685             ; 3 uses
  %9 = trunc i64 %i.aod to i32
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.aod ; 2 uses
  %i.aof = getelementptr inbounds i8, ptr %i.aoe, i64 -8
  %i.aog = getelementptr inbounds i8, ptr %i.aoe, i64 -24
end_hunk_25
begin_hunk_26_@_ZN13duckdb_yyjsonL16read_root_singleEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE:bb.a
  %i.aoj = getelementptr i8, ptr %i.aoh, i64 -24
  %wide.load1690 = load <2 x i64>, ptr %i.aoi, align 8, !tbaa !91
  %wide.load1691 = load <2 x i64>, ptr %i.aoj, align 8, !tbaa !91
  %i.aok = add i32 %i.ako, %9
  %i.aol = zext i32 %i.aok to i64
  %i.aom = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.aol ; 2 uses
end_hunk_26
begin_hunk_27_@_ZN13duckdb_yyjsonL16read_root_singleEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE:bb.a
vector.body1658:                                  ; preds = %vector.body1658, %vector.ph1655
  %index1659 = phi i64 [ 0, %vector.ph1655 ], [ %index.next1666, %vector.body1658 ] ; 2 uses
  %i.arq = sub i64 %i.ara, %index1659             ; 2 uses
  %10 = trunc i64 %i.arq to i32
  %i.arr = getelementptr [8 x i8], ptr %6, i64 %i.arq ; 2 uses
  %i.ars = getelementptr i8, ptr %i.arr, i64 -8
  %i.art = getelementptr i8, ptr %i.arr, i64 -24
  %wide.load1660 = load <2 x i64>, ptr %i.ars, align 8, !tbaa !91
  %wide.load1661 = load <2 x i64>, ptr %i.art, align 8, !tbaa !91
  %i.aru = add i32 %i.aqz, %10
  %i.arv = zext i32 %i.aru to i64
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.aqy, i64 %i.arv ; 2 uses
end_hunk_27
begin_hunk_28_@_ZN13duckdb_yyjsonL16read_root_singleEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aum = sub i64 %i.atq, %index                 ; 3 uses
  %11 = trunc i64 %i.aum to i32
  %i.aun = getelementptr inbounds nuw [8 x i8], ptr %i.atp, i64 %i.aum ; 2 uses
  %i.auo = getelementptr inbounds i8, ptr %i.aun, i64 -8
  %i.aup = getelementptr inbounds i8, ptr %i.aun, i64 -24
end_hunk_28
begin_hunk_29_@_ZN13duckdb_yyjsonL16read_root_singleEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE:bb.a
  %i.aus = getelementptr i8, ptr %i.auq, i64 -24
  %wide.load1644 = load <2 x i64>, ptr %i.aur, align 8, !tbaa !91
  %wide.load1645 = load <2 x i64>, ptr %i.aus, align 8, !tbaa !91
  %i.aut = add i32 %i.aqv, %11
  %i.auu = zext i32 %i.aut to i64
  %i.auv = getelementptr inbounds nuw [8 x i8], ptr %i.atp, i64 %i.auu ; 2 uses
end_hunk_29
begin_hunk_30_@_ZN13duckdb_yyjson18yyjson_read_numberEPKcPNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body809:                                   ; preds = %vector.body809, %vector.ph806
  %index810 = phi i64 [ 0, %vector.ph806 ], [ %index.next817, %vector.body809 ] ; 2 uses
  %i.akk = sub i64 %i.aju, %index810              ; 2 uses
  %7 = trunc i64 %i.akk to i32
  %i.akl = getelementptr [8 x i8], ptr %6, i64 %i.akk ; 2 uses
  %i.akm = getelementptr i8, ptr %i.akl, i64 -8
  %i.akn = getelementptr i8, ptr %i.akl, i64 -24
  %wide.load811 = load <2 x i64>, ptr %i.akm, align 8, !tbaa !91
  %wide.load812 = load <2 x i64>, ptr %i.akn, align 8, !tbaa !91
  %i.ako = add i32 %i.ajt, %7
  %i.akp = zext i32 %i.ako to i64
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.akp ; 2 uses
end_hunk_30
begin_hunk_31_@_ZN13duckdb_yyjson18yyjson_read_numberEPKcPNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body785:                                   ; preds = %vector.body785, %vector.ph778
  %index786 = phi i64 [ 0, %vector.ph778 ], [ %index.next797, %vector.body785 ] ; 2 uses
  %i.ang = sub i64 %i.amk, %index786              ; 3 uses
  %8 = trunc i64 %i.ang to i32
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.ang ; 2 uses
  %i.ani = getelementptr inbounds i8, ptr %i.anh, i64 -8
  %i.anj = getelementptr inbounds i8, ptr %i.anh, i64 -24
end_hunk_31
begin_hunk_32_@_ZN13duckdb_yyjson18yyjson_read_numberEPKcPNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.anm = getelementptr i8, ptr %i.ank, i64 -24
  %wide.load791 = load <2 x i64>, ptr %i.anl, align 8, !tbaa !91
  %wide.load792 = load <2 x i64>, ptr %i.anm, align 8, !tbaa !91
  %i.ann = add i32 %i.ajr, %8
  %i.ano = zext i32 %i.ann to i64
  %i.anp = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.ano ; 2 uses
end_hunk_32
begin_hunk_33_@_ZN13duckdb_yyjson18yyjson_read_numberEPKcPNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body759:                                   ; preds = %vector.body759, %vector.ph756
  %index760 = phi i64 [ 0, %vector.ph756 ], [ %index.next767, %vector.body759 ] ; 2 uses
  %i.aqt = sub i64 %i.aqd, %index760              ; 2 uses
  %9 = trunc i64 %i.aqt to i32
  %i.aqu = getelementptr [8 x i8], ptr %5, i64 %i.aqt ; 2 uses
  %i.aqv = getelementptr i8, ptr %i.aqu, i64 -8
  %i.aqw = getelementptr i8, ptr %i.aqu, i64 -24
  %wide.load761 = load <2 x i64>, ptr %i.aqv, align 8, !tbaa !91
  %wide.load762 = load <2 x i64>, ptr %i.aqw, align 8, !tbaa !91
  %i.aqx = add i32 %i.aqc, %9
  %i.aqy = zext i32 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %i.aqb, i64 %i.aqy ; 2 uses
end_hunk_33
begin_hunk_34_@_ZN13duckdb_yyjson18yyjson_read_numberEPKcPNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.atp = sub i64 %i.ast, %index                 ; 3 uses
  %10 = trunc i64 %i.atp to i32
  %i.atq = getelementptr inbounds nuw [8 x i8], ptr %i.ass, i64 %i.atp ; 2 uses
  %i.atr = getelementptr inbounds i8, ptr %i.atq, i64 -8
  %i.ats = getelementptr inbounds i8, ptr %i.atq, i64 -24
end_hunk_34
begin_hunk_35_@_ZN13duckdb_yyjson18yyjson_read_numberEPKcPNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.atv = getelementptr i8, ptr %i.att, i64 -24
  %wide.load745 = load <2 x i64>, ptr %i.atu, align 8, !tbaa !91
  %wide.load746 = load <2 x i64>, ptr %i.atv, align 8, !tbaa !91
  %i.atw = add i32 %i.apy, %10
  %i.atx = zext i32 %i.atw to i64
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.ass, i64 %i.atx ; 2 uses
end_hunk_35
