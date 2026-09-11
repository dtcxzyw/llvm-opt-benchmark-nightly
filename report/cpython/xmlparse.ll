Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/xmlparse?download=true
inline.NumInlined: 273
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@doProlog:bb.a
  %i.arr = ptrtoint ptr %.0871 to i64
  %i.ars = sub i64 %i.arq, %i.arr
  %i.art = trunc i64 %i.ars to i32
  call void %i.aqr(ptr noundef %i.arp, ptr noundef %.0871, i32 noundef %i.art) #22, !inline_history !213
  br label %reportDefault.exit1330

reportDefault.exit1330:                           ; preds = %bb.oq, %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread1493

.thread1493:                                      ; preds = %bb.bv, %bb.ml, %bb.jn, %bb.mi, %bb.mq, %.thread1432, %bb.oe, %bb.gs, %poolClear.exit1175, %bb.io, %bb.iy, %bb.kq, %bb.hz, %bb.nn, %bb.ok, %bb.lf, %bb.hj, %bb.hh, %bb.od, %bb.mx, %bb.gw, %bb.oh, %bb.dn, %bb.oi, %bb.dy, %bb.oc, %bb.ol, %bb.of, %bb.cq, %.thread1344, %bb.ne, %poolClear.exit, %.thread1338, %reportDefault.exit1330, %.thread1482, %.thread1444
  %.38691488 = phi ptr [ %.0866, %reportDefault.exit1330 ], [ %.0866, %.thread1482 ], [ %.0866, %.thread1444 ], [ %.0866, %bb.ne ], [ %.0866, %bb.hz ], [ %.0866, %bb.jn ], [ %.0866, %bb.iy ], [ %.0866, %bb.gs ], [ %.0866, %bb.nn ], [ %i.fp, %.thread1338 ], [ %.0866, %poolClear.exit1175 ], [ %.0866, %bb.ok ], [ %.0866, %bb.lf ], [ %.0866, %bb.kq ], [ %.0866, %bb.hj ], [ %.0866, %bb.hh ], [ %.0866, %bb.io ], [ %.0866, %bb.mx ], [ %.0866, %bb.gw ], [ %.0866, %bb.oh ], [ %.0866, %bb.dn ], [ %.0866, %bb.oi ], [ %.0866, %bb.dy ], [ %.0866, %bb.od ], [ %.0866, %bb.ol ], [ %.0866, %bb.of ], [ %.0866, %bb.cq ], [ %i.gt, %.thread1344 ], [ %.0866, %bb.oc ], [ %.0866, %poolClear.exit ], [ %.0866, %bb.oe ], [ %.0866, %.thread1432 ], [ %.0866, %bb.mq ], [ %.0866, %bb.mi ], [ %.0866, %bb.ml ], [ %.0866, %bb.bv ] ; 3 uses
  %i.aru = load i32, ptr %i.cu, align 8, !tbaa !133
  switch i32 %i.aru, label %.thread1493.accountingOnAbort.exit_crit_edge [
    i32 3, label %bb.os
    i32 2, label %.thread1350
    i32 1, label %bb.ot
  ]

.thread1493.accountingOnAbort.exit_crit_edge:     ; preds = %.thread1493
  %.pre1854 = load ptr, ptr %i.t, align 8, !tbaa !57
  br label %accountingOnAbort.exit

bb.os:                                            ; preds = %.thread1493
  %i.arv = load ptr, ptr %i.t, align 8, !tbaa !57
  store ptr %i.arv, ptr %6, align 8, !tbaa !57
  br label %.thread1350

bb.ot:                                            ; preds = %.thread1493
  %i.arw = load i8, ptr %i.cv, align 8, !tbaa !134
  %.not1089 = icmp eq i8 %i.arw, 0
  %.pre1855 = load ptr, ptr %i.t, align 8, !tbaa !57 ; 2 uses
  br i1 %.not1089, label %accountingOnAbort.exit, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  store ptr %.pre1855, ptr %6, align 8, !tbaa !57
  br label %.thread1350

accountingOnAbort.exit:                           ; preds = %.thread1493.accountingOnAbort.exit_crit_edge, %bb.ot
  %i.arx = phi ptr [ %.pre1854, %.thread1493.accountingOnAbort.exit_crit_edge ], [ %.pre1855, %bb.ot ] ; 2 uses
  %i.ary = load ptr, ptr %.38691488, align 8, !tbaa !56
  %i.arz = call i32 %i.ary(ptr noundef nonnull %.38691488, ptr noundef %i.arx, ptr noundef %3, ptr noundef nonnull %i.t) #22
  br label %bb.e

.thread1350.loopexit2351:                         ; preds = %bb.h
  br label %.thread1350

.thread1350:                                      ; preds = %bb.nu, %bb.nm, %bb.nl, %bb.nk, %bb.na, %bb.lt, %poolAppend.exit.i1310, %poolStoreString.exit1316, %bb.md, %bb.me, %bb.mj, %bb.ml, %bb.kp, %bb.jw, %poolAppend.exit.i1284, %poolStoreString.exit1290, %bb.jh, %poolAppend.exit.i1261, %poolStoreString.exit1267, %bb.ii, %poolAppend.exit.i1237, %poolStoreString.exit1243, %bb.ij, %bb.ht, %poolAppend.exit.i1225, %poolStoreString.exit1231, %bb.hu, %bb.ey, %bb.eq, %bb.ew, %bb.ep, %poolAppend.exit, %poolAppendString.exit, %bb.bp, %poolAppend.exit.i1132, %poolStoreString.exit1138, %bb.az, %poolAppend.exit.i1118, %poolStoreString.exit1124, %bb.as, %bb.od, %.thread1493, %bb.aq, %poolStoreString.exit, %bb.bg, %bb.cm, %bb.bw, %bb.db, %bb.ea, %bb.dc, %bb.fr, %bb.eg, %bb.gh, %bb.gf, %poolStoreString.exit1195, %poolStoreString.exit1207, %poolStoreString.exit1219, %poolStoreString.exit1255, %bb.iz, %bb.ku, %bb.ld, %bb.lg, %bb.mu, %bb.mw, %bb.oc, %bb.ei, %bb.aa, %bb.ap, %bb.ci, %bb.cf, %bb.lc, %bb.dr, %bb.h, %.thread1350.loopexit2351, %bb.kh, %poolAppend.exit.thread.i1308, %bb.mo, %bb.kr, %poolAppend.exit.thread.i1282, %poolAppend.exit.thread.i1259, %poolAppend.exit.thread.i1235, %poolAppend.exit.thread.i1223, %poolAppend.exit.thread, %poolAppend.exit.thread.i1130, %poolAppend.exit.thread.i1116, %bb.g, %bb.os, %bb.ou, %accountingGetCurrentAmplification.exit.i.i, %poolStoreString.exit.thread, %.thread1370, %.thread1430, %.thread1428, %bb.la, %bb.m, %bb.i, %bb.l, %bb.n, %.thread1332, %getRootParserOf.exit.i.i, %bb.cu, %bb.cv, %bb.cz, %poolStoreString.exit1195.thread, %poolStoreString.exit1207.thread, %poolStoreString.exit1219.thread, %poolStoreString.exit1255.thread
  %.35865.ph = phi i32 [ 0, %bb.ou ], [ 1, %poolStoreString.exit1255.thread ], [ 1, %poolStoreString.exit1219.thread ], [ 1, %poolStoreString.exit1207.thread ], [ 1, %poolStoreString.exit1195.thread ], [ 22, %bb.cz ], [ 1, %bb.cu ], [ 21, %bb.cv ], [ 1, %poolAppend.exit.thread.i1282 ], [ %switch.select1518, %bb.kh ], [ 6, %bb.h ], [ 0, %bb.os ], [ 43, %getRootParserOf.exit.i.i ], [ 1, %poolAppend.exit.thread.i1259 ], [ 29, %.thread1332 ], [ 0, %bb.n ], [ 0, %bb.g ], [ 1, %bb.dr ], [ 0, %bb.l ], [ 4, %bb.i ], [ 3, %bb.m ], [ 1, %poolAppend.exit.thread ], [ 1, %poolAppend.exit.thread.i1130 ], [ 1, %poolAppend.exit.thread.i1223 ], [ 1, %poolStoreString.exit.thread ], [ 1, %poolAppend.exit.thread.i1308 ], [ 21, %bb.mo ], [ 43, %accountingGetCurrentAmplification.exit.i.i ], [ 0, %bb.kr ], [ %i.lw, %.thread1370 ], [ 1, %poolAppend.exit.thread.i1116 ], [ 1, %bb.la ], [ 1, %.thread1428 ], [ 1, %.thread1430 ], [ 1, %poolAppend.exit.thread.i1235 ], [ 12, %bb.mj ], [ 24, %bb.me ], [ 11, %bb.md ], [ 1, %poolStoreString.exit1316 ], [ 1, %bb.ml ], [ %i.afs, %bb.kp ], [ 1, %bb.jw ], [ 1, %poolAppend.exit.i1284 ], [ 1, %poolStoreString.exit1290 ], [ 1, %bb.jh ], [ 1, %poolAppend.exit.i1261 ], [ 1, %poolStoreString.exit1267 ], [ 1, %bb.ii ], [ 1, %poolAppend.exit.i1237 ], [ 1, %poolStoreString.exit1243 ], [ 1, %bb.ij ], [ 1, %bb.ht ], [ 1, %poolAppend.exit.i1225 ], [ 1, %poolStoreString.exit1231 ], [ 1, %bb.hu ], [ 1, %bb.ew ], [ 1, %bb.eq ], [ 1, %bb.ey ], [ 1, %poolAppend.exit ], [ 1, %poolAppendString.exit ], [ 1, %bb.bp ], [ 1, %poolAppend.exit.i1132 ], [ 1, %poolStoreString.exit1138 ], [ 1, %bb.az ], [ 1, %poolAppend.exit.i1118 ], [ 1, %poolStoreString.exit1124 ], [ 32, %bb.as ], [ 1, %bb.od ], [ 35, %.thread1493 ], [ 1, %bb.lt ], [ 1, %bb.aq ], [ 1, %poolStoreString.exit ], [ 32, %bb.bg ], [ 21, %bb.ci ], [ 4, %bb.bw ], [ 1, %bb.db ], [ 1, %bb.ea ], [ 1, %bb.dc ], [ 1, %poolAppend.exit.i1310 ], [ %.343.i, %bb.fr ], [ 1, %bb.eg ], [ 1, %bb.gh ], [ 22, %bb.gf ], [ 1, %poolStoreString.exit1195 ], [ 1, %poolStoreString.exit1207 ], [ %i.ox, %bb.ep ], [ 1, %poolStoreString.exit1219 ], [ 1, %bb.nk ], [ 1, %poolStoreString.exit1255 ], [ 1, %bb.nl ], [ 32, %bb.iz ], [ 1, %bb.nu ], [ 1, %bb.ku ], [ 2, %bb.ld ], [ 2, %bb.lg ], [ 22, %bb.mu ], [ 1, %bb.na ], [ 1, %bb.nm ], [ 1, %bb.mw ], [ 1, %bb.oc ], [ 1, %bb.ei ], [ %i.fo, %bb.aa ], [ %i.gs, %bb.ap ], [ 22, %bb.cm ], [ 1, %bb.cf ], [ 1, %bb.lc ], [ 5, %.thread1350.loopexit2351 ]
  ret i32 %.35865.ph
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 44) i32 @processXmlDecl(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store ptr null, ptr %i.e, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store ptr null, ptr %i.f, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store ptr null, ptr %i.g, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store ptr null, ptr %i.h, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store i32 -1, ptr %i.i, align 4, !tbaa !21
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.a
  %.07.i.i = phi ptr [ %i.k, %.preheader.i ], [ %0, %bb.a ] ; 9 uses
  %.0.i.i = phi i32 [ %i.l, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr i8, ptr %.07.i.i, i64 944
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  %i.l = add i32 %.0.i.i, 1
  br i1 %.not.i.i, label %getRootParserOf.exit.i, label %.preheader.i, !llvm.loop !0

getRootParserOf.exit.i:                           ; preds = %.preheader.i
  %i.m = icmp eq ptr %0, %.07.i.i
  %i.n = ptrtoint ptr %3 to i64
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = getelementptr i8, ptr %.07.i.i, i64 976  ; 2 uses
  %i.r = getelementptr i8, ptr %.07.i.i, i64 984  ; 2 uses
  %i.s = select i1 %i.m, ptr %i.q, ptr %i.r       ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !217  ; 2 uses
  %i.u = xor i64 %i.p, -1
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %accountingDiffTolerated.exit.thread.preheader, label %bb.b

bb.b:                                             ; preds = %getRootParserOf.exit.i
  %i.w = add i64 %i.t, %i.p
  store i64 %i.w, ptr %i.s, align 8, !tbaa !217
  %i.x = load i64, ptr %i.q, align 8, !tbaa !52   ; 3 uses
  %i.y = load i64, ptr %i.r, align 8, !tbaa !214  ; 2 uses
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %.not.i34.i = icmp eq i64 %i.x, 0
  br i1 %.not.i34.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = uitofp i64 %i.z to float
  %i.ab = uitofp i64 %i.x to float
  %i.ac = fdiv float %i.aa, %i.ab
  br label %accountingGetCurrentAmplification.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ad = add i64 %i.y, 22
  %i.ae = uitofp i64 %i.ad to float
  %i.af = fdiv float %i.ae, 2.200000e+01
  br label %accountingGetCurrentAmplification.exit.i

accountingGetCurrentAmplification.exit.i:         ; preds = %bb.d, %bb.c
  %i.ag = phi float [ %i.ac, %bb.c ], [ %i.af, %bb.d ]
  %i.ah = getelementptr i8, ptr %.07.i.i, i64 1008
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !139
  %i.aj = icmp ult i64 %i.z, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %accountingGetCurrentAmplification.exit.i
  %i.ak = getelementptr i8, ptr %.07.i.i, i64 1000
  %i.al = load float, ptr %i.ak, align 8, !tbaa !138
  %i.am = fcmp ugt float %i.ag, %i.al
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %accountingGetCurrentAmplification.exit.i
  %.not = phi i1 [ false, %accountingGetCurrentAmplification.exit.i ], [ %i.am, %bb.e ]
  %i.an = getelementptr i8, ptr %.07.i.i, i64 992
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !137
  %i.ap = icmp ugt i64 %i.ao, 1
  br i1 %i.ap, label %bb.g, label %accountingDiffTolerated.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @accountingReportStats(ptr noundef nonnull %.07.i.i, ptr noundef nonnull @.str.316)
  tail call fastcc void @accountingReportDiff(ptr noundef nonnull %.07.i.i, i32 noundef %.0.i.i, ptr noundef %2, ptr noundef %3, i64 noundef %i.p, i32 noundef 4870, i32 noundef 0)
  br label %accountingDiffTolerated.exit

accountingDiffTolerated.exit:                     ; preds = %bb.f, %bb.g
  br i1 %.not, label %accountingDiffTolerated.exit.thread.preheader, label %bb.k

accountingDiffTolerated.exit.thread.preheader:    ; preds = %getRootParserOf.exit.i, %accountingDiffTolerated.exit
  br label %accountingDiffTolerated.exit.thread

accountingDiffTolerated.exit.thread:              ; preds = %accountingDiffTolerated.exit.thread.preheader, %accountingDiffTolerated.exit.thread
  %.07.i.i.i = phi ptr [ %i.ar, %accountingDiffTolerated.exit.thread ], [ %0, %accountingDiffTolerated.exit.thread.preheader ] ; 5 uses
  %i.aq = getelementptr i8, ptr %.07.i.i.i, i64 944
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %getRootParserOf.exit.i.i, label %accountingDiffTolerated.exit.thread, !llvm.loop !0

getRootParserOf.exit.i.i:                         ; preds = %accountingDiffTolerated.exit.thread
  %i.as = getelementptr i8, ptr %.07.i.i.i, i64 992
  %i.at = load i64, ptr %i.as, align 8, !tbaa !137
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %accountingOnAbort.exit, label %bb.h

bb.h:                                             ; preds = %getRootParserOf.exit.i.i
  %i.av = getelementptr i8, ptr %.07.i.i.i, i64 976
  %.val.i.i = load i64, ptr %i.av, align 8, !tbaa !52 ; 4 uses
  %i.aw = getelementptr i8, ptr %.07.i.i.i, i64 984
  %.val8.i.i = load i64, ptr %i.aw, align 8, !tbaa !214 ; 3 uses
  %.not.i9.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = add i64 %.val8.i.i, %.val.i.i
  %i.ay = uitofp i64 %i.ax to float
  %i.az = uitofp i64 %.val.i.i to float
  %i.ba = fdiv float %i.ay, %i.az
  br label %accountingGetCurrentAmplification.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.bb = add i64 %.val8.i.i, 22
  %i.bc = uitofp i64 %i.bb to float
  %i.bd = fdiv float %i.bc, 2.200000e+01
  br label %accountingGetCurrentAmplification.exit.i.i

accountingGetCurrentAmplification.exit.i.i:       ; preds = %bb.j, %bb.i
  %i.be = phi float [ %i.ba, %bb.i ], [ %i.bd, %bb.j ]
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !200
  %i.bg = fpext float %i.be to double
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.317, ptr noundef nonnull %.07.i.i.i, i64 noundef %.val.i.i, i64 noundef %.val8.i.i, double noundef %i.bg, ptr noundef nonnull @.str.323) #25 ; 0 uses
  br label %accountingOnAbort.exit

bb.k:                                             ; preds = %accountingDiffTolerated.exit
  %i.bi = getelementptr i8, ptr %0, i64 472
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !83
  %.not71 = icmp eq i8 %i.bj, 0
  %i.bk = select i1 %.not71, ptr @PyExpat_XmlParseXmlDecl, ptr @PyExpat_XmlParseXmlDeclNS
  %i.bl = getelementptr i8, ptr %0, i64 304       ; 7 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !208
  %i.bn = getelementptr i8, ptr %0, i64 560       ; 4 uses
  %i.bo = call i32 %i.bk(i32 noundef %1, ptr noundef %i.bm, ptr noundef %2, ptr noundef %3, ptr noundef %i.bn, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i) #22, !callees !331
  %.not72 = icmp eq i32 %i.bo, 0
  %.not73 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not72, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %. = select i1 %.not73, i32 30, i32 31
  br label %accountingOnAbort.exit

bb.m:                                             ; preds = %bb.k
  %i.bp = load i32, ptr %i.i, align 4
  %i.bq = icmp eq i32 %i.bp, 1
  %or.cond = select i1 %.not73, i1 %i.bq, i1 false
  br i1 %or.cond, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr i8, ptr %0, i64 720
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !72
  %i.bt = getelementptr i8, ptr %i.bs, i64 258
  store i8 1, ptr %i.bt, align 2, !tbaa !120
  %i.bu = getelementptr i8, ptr %0, i64 964       ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !144
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bu, align 4, !tbaa !144
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.bx = getelementptr i8, ptr %0, i64 296       ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !198
  %.not74 = icmp eq ptr %i.by, null
  br i1 %.not74, label %bb.ai, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !57  ; 4 uses
  %.not76 = icmp eq ptr %i.bz, null
  br i1 %.not76, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr i8, ptr %0, i64 880       ; 3 uses
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !208 ; 4 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !241
  %i.ce = call i32 %i.cd(ptr noundef %i.cb, ptr noundef nonnull %i.bz) #22
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr i8, ptr %i.bz, i64 %i.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !57
  %i.ch = getelementptr i8, ptr %0, i64 904       ; 6 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !148
  %.not.i.i87 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i87, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.ca)
  %.not14.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not14.i.i, label %poolAppend.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ck = getelementptr i8, ptr %i.cb, i64 112
  %i.cl = getelementptr i8, ptr %0, i64 896       ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !212
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !149
  %i.co = call i32 %i.cm(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.d, ptr noundef %i.cg, ptr noundef nonnull %i.ch, ptr noundef %i.cn) #22, !inline_history !7
  %or.cond.i.i = icmp ult i32 %i.co, 2
  br i1 %or.cond.i.i, label %poolAppend.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.ca)
  %.not15.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not15.i.i, label %poolAppend.exit.thread.i, label %bb.u

poolAppend.exit.thread.i:                         ; preds = %bb.v, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %accountingOnAbort.exit

poolAppend.exit.i:                                ; preds = %bb.u
  %i.cq = getelementptr i8, ptr %0, i64 912       ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %accountingOnAbort.exit, label %bb.w

bb.w:                                             ; preds = %poolAppend.exit.i
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !148 ; 2 uses
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !149
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.x, label %poolStoreString.exit

bb.x:                                             ; preds = %bb.w
  %i.cv = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.ca)
  %.not10.i = icmp eq i8 %i.cv, 0
  br i1 %.not10.i, label %accountingOnAbort.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.x
  %.pre.i = load ptr, ptr %i.ch, align 8, !tbaa !148
  br label %poolStoreString.exit

poolStoreString.exit:                             ; preds = %bb.w, %._crit_edge.i
  %i.cw = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cs, %bb.w ] ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 1
  store ptr %i.cx, ptr %i.ch, align 8, !tbaa !148
  store i8 0, ptr %i.cw, align 1, !tbaa !22
  %i.cy = load ptr, ptr %i.cq, align 8, !tbaa !150 ; 2 uses
  %.not77 = icmp eq ptr %i.cy, null
  br i1 %.not77, label %accountingOnAbort.exit, label %bb.y

bb.y:                                             ; preds = %poolStoreString.exit
  %i.cz = load ptr, ptr %i.ch, align 8, !tbaa !242
  store ptr %i.cz, ptr %i.cq, align 8, !tbaa !243
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.q
  %.059 = phi ptr [ %i.cy, %bb.y ], [ null, %bb.q ] ; 2 uses
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !57  ; 2 uses
  %.not78 = icmp eq ptr %i.da, null
  br i1 %.not78, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr i8, ptr %0, i64 880       ; 3 uses
  %i.dc = load ptr, ptr %i.bl, align 8, !tbaa !208 ; 3 uses
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.de = getelementptr i8, ptr %i.dc, i64 128
  %i.df = load i32, ptr %i.de, align 8, !tbaa !219
  %i.dg = sext i32 %i.df to i64
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr i8, ptr %i.dd, i64 %i.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.da, ptr %i.c, align 8, !tbaa !57
  %i.dj = getelementptr i8, ptr %0, i64 904       ; 5 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !148
  %.not.i.i88 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i88, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dl = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.db)
  %.not14.i.i98 = icmp eq i8 %i.dl, 0
  br i1 %.not14.i.i98, label %poolAppend.exit.thread.i91, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dm = getelementptr i8, ptr %i.dc, i64 112
  %i.dn = getelementptr i8, ptr %0, i64 896       ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !212
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !149
  %i.dq = call i32 %i.do(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.c, ptr noundef %i.di, ptr noundef nonnull %i.dj, ptr noundef %i.dp) #22, !inline_history !7
  %or.cond.i.i89 = icmp ult i32 %i.dq, 2
  br i1 %or.cond.i.i89, label %poolAppend.exit.i93, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.db)
  %.not15.i.i90 = icmp eq i8 %i.dr, 0
  br i1 %.not15.i.i90, label %poolAppend.exit.thread.i91, label %bb.ad

poolAppend.exit.thread.i91:                       ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %accountingOnAbort.exit

poolAppend.exit.i93:                              ; preds = %bb.ad
  %i.ds = getelementptr i8, ptr %0, i64 912       ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i94 = icmp eq ptr %i.dt, null
  br i1 %.not.i94, label %accountingOnAbort.exit, label %bb.af

bb.af:                                            ; preds = %poolAppend.exit.i93
  %i.du = load ptr, ptr %i.dj, align 8, !tbaa !148 ; 2 uses
  %i.dv = load ptr, ptr %i.dn, align 8, !tbaa !149
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.ag, label %poolStoreString.exit99

bb.ag:                                            ; preds = %bb.af
  %i.dx = call fastcc zeroext i8 @poolGrow(ptr noundef nonnull %i.db)
  %.not10.i95 = icmp eq i8 %i.dx, 0
  br i1 %.not10.i95, label %accountingOnAbort.exit, label %._crit_edge.i96

._crit_edge.i96:                                  ; preds = %bb.ag
  %.pre.i97 = load ptr, ptr %i.dj, align 8, !tbaa !148
  br label %poolStoreString.exit99

poolStoreString.exit99:                           ; preds = %bb.af, %._crit_edge.i96
  %i.dy = phi ptr [ %.pre.i97, %._crit_edge.i96 ], [ %i.du, %bb.af ] ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 1
  store ptr %i.dz, ptr %i.dj, align 8, !tbaa !148
  store i8 0, ptr %i.dy, align 1, !tbaa !22
  %i.ea = load ptr, ptr %i.ds, align 8, !tbaa !150 ; 2 uses
  %.not79 = icmp eq ptr %i.ea, null
  br i1 %.not79, label %accountingOnAbort.exit, label %bb.ah

bb.ah:                                            ; preds = %poolStoreString.exit99, %bb.z
  %.0 = phi ptr [ %i.ea, %poolStoreString.exit99 ], [ null, %bb.z ] ; 2 uses
  %i.eb = load ptr, ptr %i.bx, align 8, !tbaa !198
  %i.ec = getelementptr i8, ptr %0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !143
  %i.ee = load i32, ptr %i.i, align 4, !tbaa !21
  call void %i.eb(ptr noundef %i.ed, ptr noundef %.0, ptr noundef %.059, i32 noundef %i.ee) #22
  %i.ef = icmp ne ptr %.0, null
  br label %bb.an

bb.ai:                                            ; preds = %bb.p
  %i.eg = getelementptr i8, ptr %0, i64 176       ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !186 ; 2 uses
  %.not75 = icmp eq ptr %i.eh, null
  br i1 %.not75, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
