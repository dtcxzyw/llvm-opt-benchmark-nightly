Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_dump?download=true
inline.NumInlined: 298
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  %i.dhc = load ptr, ptr %i.dhb, align 8
  %i.dhd = call ptr @fmtId(ptr noundef %i.dhc) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.dfl, ptr noundef nonnull %.str.1497.sink.i, ptr noundef %i.dhd) #11
  br label %bb.vg

bb.vg:                                            ; preds = %.sink.split.i372, %bb.vd, %bb.vc
  br i1 %i.dfj, label %bb.vh, label %bb.vi

bb.vh:                                            ; preds = %bb.vg
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dew, i64 24
  %i.dhf = load ptr, ptr %i.dhe, align 8
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dhf, i64 16
  %i.dhh = load ptr, ptr %i.dhg, align 8
  %i.dhi = load ptr, ptr %i.dfo, align 8
  %i.dhj = call ptr @fmtQualifiedId(ptr noundef %i.dhh, ptr noundef %i.dhi) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.dfm, ptr noundef nonnull @.str.1493, ptr noundef %i.dhj) #11
  %i.dhk = call fastcc ptr @createDummyViewAsClause(ptr noundef nonnull %i.dew) ; 2 uses
  %i.dhl = load ptr, ptr %i.dhk, align 8
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.dfm, ptr noundef nonnull @.str.1500, ptr noundef %i.dhl) #11
  call void @destroyPQExpBuffer(ptr noundef nonnull %i.dhk) #11
  br label %bb.vj

bb.vi:                                            ; preds = %bb.vg
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  %i.dhn = load ptr, ptr %i.dhm, align 8
  %i.dho = call ptr @fmtId(ptr noundef %i.dhn) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.dfm, ptr noundef nonnull @.str.1501, ptr noundef %i.dho) #11
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dew, i64 24
  %i.dhq = load ptr, ptr %i.dhp, align 8
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.dhq, i64 16
  %i.dhs = load ptr, ptr %i.dhr, align 8
  %i.dht = load ptr, ptr %i.dfo, align 8
  %i.dhu = call ptr @fmtQualifiedId(ptr noundef %i.dhs, ptr noundef %i.dht) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.dfm, ptr noundef nonnull @.str.1502, ptr noundef %i.dhu) #11
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vi, %bb.vh
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16 ; 2 uses
  %i.dhw = load ptr, ptr %i.dhv, align 8
  %i.dhx = call ptr @fmtId(ptr noundef %i.dhw) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.dfn, ptr noundef nonnull @.str.1503, ptr noundef %i.dhx) #11
  %i.dhy = load ptr, ptr %i.dfo, align 8
  %i.dhz = load ptr, ptr %i.dhv, align 8
  %i.dia = call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.479, ptr noundef %i.dhy, ptr noundef %i.dhz) #11 ; 2 uses
  %i.dib = load i32, ptr %i.aai, align 8          ; 2 uses
  %i.dic = and i32 %i.dib, 1
  %.not89.i373 = icmp eq i32 %i.dic, 0
  br i1 %.not89.i373, label %bb.vl, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  %i.did = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.die = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  %i.dif = load i32, ptr %i.die, align 4
  store ptr %i.dia, ptr %28, align 8
  %i.dig = getelementptr inbounds nuw i8, ptr %i.dew, i64 24
  %i.dih = load ptr, ptr %i.dig, align 8
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dih, i64 16
  %i.dij = load ptr, ptr %i.dii, align 8
  store ptr %i.dij, ptr %i.st, align 8
  %i.dik = getelementptr inbounds nuw i8, ptr %i.dew, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.su, i8 0, i64 24, i1 false)
  %i.dil = load ptr, ptr %i.dik, align 8
  store ptr %i.dil, ptr %i.sv, align 8
  store ptr @.str.1504, ptr %i.sw, align 8
  store i32 4, ptr %i.sx, align 8
  store i32 0, ptr %i.sy, align 4
  %i.dim = load ptr, ptr %i.dfl, align 8
  store ptr %i.dim, ptr %i.sz, align 8
  %i.din = load ptr, ptr %i.dfm, align 8
  store ptr %i.din, ptr %i.ta, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.tb, i8 0, i64 56, i1 false)
  %i.dio = load i64, ptr %i.did, align 4
  %i.dip = call ptr @ArchiveEntry(ptr noundef nonnull %i.hb, i64 %i.dio, i32 noundef %i.dif, ptr noundef nonnull %28) #11 ; 0 uses
  %.pre.i374 = load i32, ptr %i.aai, align 8
  br label %bb.vl

bb.vl:                                            ; preds = %bb.vk, %bb.vj
  %i.diq = phi i32 [ %.pre.i374, %bb.vk ], [ %i.dib, %bb.vj ]
  %i.dir = and i32 %i.diq, 4
  %.not90.i375 = icmp eq i32 %i.dir, 0
  br i1 %.not90.i375, label %bb.vn, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.dis = load ptr, ptr %i.dfn, align 8
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dew, i64 24
  %i.diu = load ptr, ptr %i.dit, align 8
  %i.div = getelementptr inbounds nuw i8, ptr %i.diu, i64 16
  %i.diw = load ptr, ptr %i.div, align 8
  %i.dix = getelementptr inbounds nuw i8, ptr %i.dew, i64 96
  %i.diy = load ptr, ptr %i.dix, align 8
  %i.diz = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.dja = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  %i.djb = load i32, ptr %i.dja, align 4
  %i.djc = load i64, ptr %i.diz, align 4
  call fastcc void @dumpCommentExtended(ptr noundef nonnull %i.hb, ptr noundef %i.dis, ptr noundef %i.dfr, ptr noundef %i.diw, ptr noundef %i.diy, i64 %i.djc, i32 noundef %i.djb, ptr noundef null)
  br label %bb.vn

bb.vn:                                            ; preds = %bb.vm, %bb.vl
  call void @free(ptr noundef %i.dia) #11
  call void @destroyPQExpBuffer(ptr noundef %i.dfk) #11
  call void @destroyPQExpBuffer(ptr noundef %i.dfl) #11
  call void @destroyPQExpBuffer(ptr noundef %i.dfm) #11
  call void @destroyPQExpBuffer(ptr noundef %i.dfn) #11
  call void @free(ptr noundef %i.dfr) #11
  br label %dumpRule.exit

dumpRule.exit:                                    ; preds = %bb.up, %bb.uq, %bb.vn
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  br label %dumpDumpableObject.exit

bb.vo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  %i.djd = load ptr, ptr %i.hb, align 8
  %i.dje = getelementptr inbounds nuw i8, ptr %i.aaf, i64 64
  %i.djf = load ptr, ptr %i.dje, align 8          ; 6 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %i.djd, i64 184
  %i.djh = load i8, ptr %i.djg, align 8, !range !16, !noundef !17
  %i.dji = trunc nuw i8 %i.djh to i1
  br i1 %i.dji, label %bb.vp, label %dumpTrigger.exit

bb.vp:                                            ; preds = %bb.vo
  %i.djj = call ptr @createPQExpBuffer() #11      ; 9 uses
  %i.djk = call ptr @createPQExpBuffer() #11      ; 4 uses
  %i.djl = call ptr @createPQExpBuffer() #11      ; 3 uses
  %i.djm = call ptr @createPQExpBuffer() #11      ; 5 uses
  %i.djn = getelementptr inbounds nuw i8, ptr %i.djf, i64 16 ; 5 uses
  %i.djo = load ptr, ptr %i.djn, align 8
  %i.djp = call ptr @fmtId(ptr noundef %i.djo) #11
  %i.djq = call ptr @pg_strdup(ptr noundef %i.djp) #11 ; 2 uses
  %i.djr = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16 ; 4 uses
  %i.djs = load ptr, ptr %i.djr, align 8
  %i.djt = call ptr @fmtId(ptr noundef %i.djs) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.djm, ptr noundef nonnull @.str.1505, ptr noundef %i.djt) #11
  %i.dju = getelementptr inbounds nuw i8, ptr %i.djf, i64 24 ; 5 uses
  %i.djv = load ptr, ptr %i.dju, align 8
  %i.djw = getelementptr inbounds nuw i8, ptr %i.djv, i64 16
  %i.djx = load ptr, ptr %i.djw, align 8
  %i.djy = load ptr, ptr %i.djn, align 8
  %i.djz = call ptr @fmtQualifiedId(ptr noundef %i.djx, ptr noundef %i.djy) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.djm, ptr noundef nonnull @.str.1506, ptr noundef %i.djz) #11
  %i.dka = getelementptr inbounds nuw i8, ptr %i.aaf, i64 80
  %i.dkb = load ptr, ptr %i.dka, align 8
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.djj, ptr noundef nonnull @.str.871, ptr noundef %i.dkb) #11
  %i.dkc = load ptr, ptr %i.djm, align 8
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.djk, ptr noundef nonnull @.str.1507, ptr noundef %i.dkc) #11
  %i.dkd = load ptr, ptr %i.djm, align 8
  call fastcc void @append_depends_on_extension(ptr noundef nonnull %i.hb, ptr noundef %i.djj, ptr noundef nonnull readonly %i.aaf, ptr noundef nonnull @.str.1508, ptr noundef nonnull @.str.1509, ptr noundef %i.dkd)
  %i.dke = getelementptr inbounds nuw i8, ptr %i.aaf, i64 73
  %i.dkf = load i8, ptr %i.dke, align 1, !range !16, !noundef !17
  %i.dkg = trunc nuw i8 %i.dkf to i1
  br i1 %i.dkg, label %bb.vq, label %bb.vr

bb.vq:                                            ; preds = %bb.vp
  call void @resetPQExpBuffer(ptr noundef %i.djj) #11
  call void @resetPQExpBuffer(ptr noundef %i.djk) #11
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.djf, i64 104
  %i.dki = load i8, ptr %i.dkh, align 8
  %i.dkj = icmp eq i8 %i.dki, 102
  %i.dkk = select i1 %i.dkj, ptr @.str.1328, ptr @.str.806
  %i.dkl = load ptr, ptr %i.dju, align 8
  %i.dkm = getelementptr inbounds nuw i8, ptr %i.dkl, i64 16
  %i.dkn = load ptr, ptr %i.dkm, align 8
  %i.dko = load ptr, ptr %i.djn, align 8
  %i.dkp = call ptr @fmtQualifiedId(ptr noundef %i.dkn, ptr noundef %i.dko) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.djj, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.dkk, ptr noundef %i.dkp) #11
  %i.dkq = getelementptr inbounds nuw i8, ptr %i.aaf, i64 72
  %i.dkr = load i8, ptr %i.dkq, align 8
  %switch.tableidx1267 = add i8 %i.dkr, -65       ; 3 uses
  %i.dks = icmp ult i8 %switch.tableidx1267, 52
  br i1 %i.dks, label %switch.hole_check, label %.sink.split74.i

bb.vr:                                            ; preds = %bb.vp
  %i.dkt = getelementptr inbounds nuw i8, ptr %i.aaf, i64 72 ; 2 uses
  %i.dku = load i8, ptr %i.dkt, align 8
  switch i8 %i.dku, label %bb.vs [
    i8 116, label %bb.vt
    i8 79, label %bb.vt
  ]

bb.vs:                                            ; preds = %bb.vr
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.djf, i64 104
  %i.dkw = load i8, ptr %i.dkv, align 8
  %i.dkx = icmp eq i8 %i.dkw, 102
  %i.dky = select i1 %i.dkx, ptr @.str.1328, ptr @.str.806
  %i.dkz = load ptr, ptr %i.dju, align 8
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkz, i64 16
  %i.dlb = load ptr, ptr %i.dla, align 8
  %i.dlc = load ptr, ptr %i.djn, align 8
  %i.dld = call ptr @fmtQualifiedId(ptr noundef %i.dlb, ptr noundef %i.dlc) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.djj, ptr noundef nonnull @.str.1510, ptr noundef nonnull %i.dky, ptr noundef %i.dld) #11
  %i.dle = load i8, ptr %i.dkt, align 8
  %switch.tableidx1274 = add i8 %i.dle, -65       ; 2 uses
  %i.dlf = icmp ult i8 %switch.tableidx1274, 38
  br i1 %i.dlf, label %switch.lookup1275, label %.sink.split74.sink.split.i

switch.hole_check:                                ; preds = %bb.vq
  %switch.maskindex = zext nneg i8 %switch.tableidx1267 to i64
  %switch.shifted1270 = lshr i64 2251937252786185, %switch.maskindex
  %switch.lobit1271 = trunc i64 %switch.shifted1270 to i1
  br i1 %switch.lobit1271, label %switch.lookup1275, label %.sink.split74.i

switch.lookup1275:                                ; preds = %bb.vs, %switch.hole_check
  %switch.tableidx1274.sink = phi i8 [ %switch.tableidx1267, %switch.hole_check ], [ %switch.tableidx1274, %bb.vs ]
  %switch.table.main.17.sink = phi ptr [ @switch.table.main.16, %switch.hole_check ], [ @switch.table.main.17, %bb.vs ]
  %i.dlg = zext nneg i8 %switch.tableidx1274.sink to i64
  %switch.gep1276 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.main.17.sink, i64 %i.dlg
  %switch.load1277 = load ptr, ptr %switch.gep1276, align 8
  br label %.sink.split74.sink.split.i

.sink.split74.sink.split.i:                       ; preds = %switch.lookup1275, %bb.vs
  %.str.1514.sink.sink.i = phi ptr [ @.str.1512, %bb.vs ], [ %switch.load1277, %switch.lookup1275 ]
  call void @appendPQExpBufferStr(ptr noundef %i.djj, ptr noundef nonnull %.str.1514.sink.sink.i) #11
  br label %.sink.split74.i

.sink.split74.i:                                  ; preds = %switch.hole_check, %bb.vq, %.sink.split74.sink.split.i
  %i.dlh = load ptr, ptr %i.djr, align 8
  %i.dli = call ptr @fmtId(ptr noundef %i.dlh) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.djj, ptr noundef nonnull @.str.1515, ptr noundef %i.dli) #11
  br label %bb.vt

bb.vt:                                            ; preds = %.sink.split74.i, %bb.vr, %bb.vr
  %i.dlj = load ptr, ptr %i.djr, align 8
  %i.dlk = call ptr @fmtId(ptr noundef %i.dlj) #11
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.djl, ptr noundef nonnull @.str.1516, ptr noundef %i.dlk) #11
  %i.dll = load ptr, ptr %i.djn, align 8
  %i.dlm = load ptr, ptr %i.djr, align 8
  %i.dln = call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.479, ptr noundef %i.dll, ptr noundef %i.dlm) #11 ; 2 uses
  %i.dlo = load i32, ptr %i.aai, align 8          ; 2 uses
  %i.dlp = and i32 %i.dlo, 1
  %.not72.i368 = icmp eq i32 %i.dlp, 0
  br i1 %.not72.i368, label %bb.vv, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.dlr = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  %i.dls = load i32, ptr %i.dlr, align 4
  store ptr %i.dln, ptr %29, align 8
  %i.dlt = load ptr, ptr %i.dju, align 8
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.dlt, i64 16
  %i.dlv = load ptr, ptr %i.dlu, align 8
  store ptr %i.dlv, ptr %i.sk, align 8
  %i.dlw = getelementptr inbounds nuw i8, ptr %i.djf, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sl, i8 0, i64 24, i1 false)
  %i.dlx = load ptr, ptr %i.dlw, align 8
  store ptr %i.dlx, ptr %i.sm, align 8
  store ptr @.str.1509, ptr %i.sn, align 8
  store i32 4, ptr %i.so, align 8
  store i32 0, ptr %i.sp, align 4
  %i.dly = load ptr, ptr %i.djj, align 8
  store ptr %i.dly, ptr %i.sq, align 8
  %i.dlz = load ptr, ptr %i.djk, align 8
  store ptr %i.dlz, ptr %i.sr, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ss, i8 0, i64 56, i1 false)
  %i.dma = load i64, ptr %i.dlq, align 4
  %i.dmb = call ptr @ArchiveEntry(ptr noundef nonnull %i.hb, i64 %i.dma, i32 noundef %i.dls, ptr noundef nonnull %29) #11 ; 0 uses
  %.pre.i369 = load i32, ptr %i.aai, align 8
  br label %bb.vv

bb.vv:                                            ; preds = %bb.vu, %bb.vt
  %i.dmc = phi i32 [ %.pre.i369, %bb.vu ], [ %i.dlo, %bb.vt ]
  %i.dmd = and i32 %i.dmc, 4
  %.not73.i = icmp eq i32 %i.dmd, 0
  br i1 %.not73.i, label %bb.vx, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.dme = load ptr, ptr %i.djl, align 8
  %i.dmf = load ptr, ptr %i.dju, align 8
  %i.dmg = getelementptr inbounds nuw i8, ptr %i.dmf, i64 16
  %i.dmh = load ptr, ptr %i.dmg, align 8
  %i.dmi = getelementptr inbounds nuw i8, ptr %i.djf, i64 96
  %i.dmj = load ptr, ptr %i.dmi, align 8
  %i.dmk = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.dml = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  %i.dmm = load i32, ptr %i.dml, align 4
  %i.dmn = load i64, ptr %i.dmk, align 4
  call fastcc void @dumpCommentExtended(ptr noundef nonnull %i.hb, ptr noundef %i.dme, ptr noundef %i.djq, ptr noundef %i.dmh, ptr noundef %i.dmj, i64 %i.dmn, i32 noundef %i.dmm, ptr noundef null)
  br label %bb.vx

bb.vx:                                            ; preds = %bb.vw, %bb.vv
  call void @free(ptr noundef %i.dln) #11
  call void @destroyPQExpBuffer(ptr noundef %i.djj) #11
  call void @destroyPQExpBuffer(ptr noundef %i.djk) #11
  call void @destroyPQExpBuffer(ptr noundef %i.djl) #11
  call void @destroyPQExpBuffer(ptr noundef nonnull %i.djm) #11
  call void @free(ptr noundef %i.djq) #11
  br label %dumpTrigger.exit

dumpTrigger.exit:                                 ; preds = %bb.vo, %bb.vx
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  br label %dumpDumpableObject.exit

bb.vy:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  %i.dmo = load ptr, ptr %i.hb, align 8           ; 2 uses
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmo, i64 184
  %i.dmq = load i8, ptr %i.dmp, align 8, !range !16, !noundef !17
  %i.dmr = trunc nuw i8 %i.dmq to i1
  br i1 %i.dmr, label %bb.vz, label %dumpEventTrigger.exit

bb.vz:                                            ; preds = %bb.vy
  %i.dms = call ptr @createPQExpBuffer() #11      ; 16 uses
  %i.dmt = call ptr @createPQExpBuffer() #11      ; 3 uses
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16 ; 2 uses
  %i.dmv = load ptr, ptr %i.dmu, align 8
  %i.dmw = call ptr @fmtId(ptr noundef %i.dmv) #11
  %i.dmx = call ptr @pg_strdup(ptr noundef %i.dmw) #11 ; 7 uses
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef nonnull @.str.1517) #11
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef %i.dmx) #11
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef nonnull @.str.1518) #11
  %i.dmy = getelementptr inbounds nuw i8, ptr %i.aaf, i64 72
  %i.dmz = load ptr, ptr %i.dmy, align 8
  %i.dna = call ptr @fmtId(ptr noundef %i.dmz) #11
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef %i.dna) #11
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.aaf, i64 88 ; 2 uses
  %i.dnc = load ptr, ptr %i.dnb, align 8
  %strcmpload.i = load i8, ptr %i.dnc, align 1
  %.not.i363 = icmp eq i8 %strcmpload.i, 0
  br i1 %.not.i363, label %bb.wb, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef nonnull @.str.1519) #11
  %i.dnd = load ptr, ptr %i.dnb, align 8
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef %i.dnd) #11
  call void @appendPQExpBufferChar(ptr noundef %i.dms, i8 noundef signext 41) #11
  br label %bb.wb

bb.wb:                                            ; preds = %bb.wa, %bb.vz
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef nonnull @.str.1520) #11
  %i.dne = getelementptr inbounds nuw i8, ptr %i.aaf, i64 96
  %i.dnf = load ptr, ptr %i.dne, align 8
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef %i.dnf) #11
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef nonnull @.str.1521) #11
  %i.dng = getelementptr inbounds nuw i8, ptr %i.aaf, i64 104 ; 2 uses
  %i.dnh = load i8, ptr %i.dng, align 8
  %.not56.i364 = icmp eq i8 %i.dnh, 79
  br i1 %.not56.i364, label %bb.we, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.dms, ptr noundef nonnull @.str.1522, ptr noundef %i.dmx) #11
  %i.dni = load i8, ptr %i.dng, align 8
  %switch.tableidx1278 = add i8 %i.dni, -65       ; 2 uses
  %i.dnj = icmp ult i8 %switch.tableidx1278, 18
  br i1 %i.dnj, label %switch.lookup1279, label %bb.wd

switch.lookup1279:                                ; preds = %bb.wc
  %i.dnk = zext nneg i8 %switch.tableidx1278 to i64
  %switch.gep1280 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.main.18, i64 %i.dnk
  %switch.load1281 = load ptr, ptr %switch.gep1280, align 8
  br label %bb.wd

bb.wd:                                            ; preds = %bb.wc, %switch.lookup1279
  %.str.1512.sink.i = phi ptr [ %switch.load1281, %switch.lookup1279 ], [ @.str.1512, %bb.wc ]
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef nonnull %.str.1512.sink.i) #11
  call void @appendPQExpBufferStr(ptr noundef %i.dms, ptr noundef nonnull @.str.774) #11
  br label %bb.we

bb.we:                                            ; preds = %bb.wd, %bb.wb
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.dmt, ptr noundef nonnull @.str.1523, ptr noundef %i.dmx) #11
  %i.dnl = getelementptr inbounds nuw i8, ptr %i.dmo, i64 48
  %i.dnm = load i32, ptr %i.dnl, align 8
  %.not57.i365 = icmp eq i32 %i.dnm, 0
  br i1 %.not57.i365, label %bb.wg, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  call fastcc void @binary_upgrade_extension_member(ptr noundef %i.dms, ptr noundef nonnull readonly %i.aaf, ptr noundef nonnull @.str.1524, ptr noundef %i.dmx, ptr noundef null)
  br label %bb.wg

bb.wg:                                            ; preds = %bb.wf, %bb.we
  %i.dnn = load i32, ptr %i.aai, align 8          ; 2 uses
  %i.dno = and i32 %i.dnn, 1
  %.not58.i = icmp eq i32 %i.dno, 0
  br i1 %.not58.i, label %bb.wi, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  %i.dnr = load i32, ptr %i.dnq, align 4
  %i.dns = load ptr, ptr %i.dmu, align 8
  store ptr %i.dns, ptr %30, align 8
  %i.dnt = getelementptr inbounds nuw i8, ptr %i.aaf, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sc, i8 0, i64 32, i1 false)
  %i.dnu = load ptr, ptr %i.dnt, align 8
  store ptr %i.dnu, ptr %i.sd, align 8
  store ptr @.str.1524, ptr %i.se, align 8
  store i32 4, ptr %i.sf, align 8
  store i32 0, ptr %i.sg, align 4
  %i.dnv = load ptr, ptr %i.dms, align 8
  store ptr %i.dnv, ptr %i.sh, align 8
  %i.dnw = load ptr, ptr %i.dmt, align 8
  store ptr %i.dnw, ptr %i.si, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.sj, i8 0, i64 56, i1 false)
  %i.dnx = load i64, ptr %i.dnp, align 4
  %i.dny = call ptr @ArchiveEntry(ptr noundef nonnull %i.hb, i64 %i.dnx, i32 noundef %i.dnr, ptr noundef nonnull %30) #11 ; 0 uses
  %.pre.i366 = load i32, ptr %i.aai, align 8
  br label %bb.wi

bb.wi:                                            ; preds = %bb.wh, %bb.wg
  %i.dnz = phi i32 [ %.pre.i366, %bb.wh ], [ %i.dnn, %bb.wg ] ; 2 uses
  %i.doa = and i32 %i.dnz, 4
  %.not59.i = icmp eq i32 %i.doa, 0
  br i1 %.not59.i, label %bb.wk, label %bb.wj

bb.wj:                                            ; preds = %bb.wi
  %i.dob = getelementptr inbounds nuw i8, ptr %i.aaf, i64 80
  %i.doc = load ptr, ptr %i.dob, align 8
  %i.dod = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %i.doe = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  %i.dof = load i32, ptr %i.doe, align 4
  %i.dog = load i64, ptr %i.dod, align 4
  call fastcc void @dumpCommentExtended(ptr noundef nonnull %i.hb, ptr noundef nonnull @.str.1524, ptr noundef %i.dmx, ptr noundef null, ptr noundef %i.doc, i64 %i.dog, i32 noundef %i.dof, ptr noundef null)
  %.pre61.i = load i32, ptr %i.aai, align 8
end_hunk_0
