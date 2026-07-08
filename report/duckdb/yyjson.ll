inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  br i1 %.not19.i1387, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1219, label %bb.ki

bb.ki:                                            ; preds = %._crit_edge4982
  %i.aqg = add i32 %i.aoz, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1219.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1219.sink.split: ; preds = %bb.kb, %bb.ki
  %.sink = phi i32 [ %i.aoz, %bb.ki ], [ %i.alh, %bb.kb ]
  %i.aqh = phi ptr [ %8, %bb.ki ], [ %7, %bb.kb ]
  %.lcssa7745.sink = phi i64 [ %.lcssa11434, %bb.ki ], [ %.lcssa11426, %bb.kb ]
  %.ph8412 = phi i32 [ %i.aqg, %bb.ki ], [ 1, %bb.kb ]
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  %i.aqj = zext i32 %.sink to i64
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.aqi, i64 %i.aqj
  store i64 %.lcssa7745.sink, ptr %i.aqk, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1219

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1219: ; preds = %bb.kg, %bb.jz, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1219.sink.split, %._crit_edge4974, %._crit_edge5007, %._crit_edge4968, %._crit_edge4982, %._crit_edge5001, %._crit_edge5015
  %i.aql = phi i32 [ %i.aon, %._crit_edge4968 ], [ %i.aoz, %._crit_edge4982 ], [ %i.aoz, %._crit_edge4974 ], [ 1, %._crit_edge5001 ], [ 1, %._crit_edge5015 ], [ 1, %bb.jz ], [ %.ph8412, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1219.sink.split ], [ 1, %._crit_edge5007 ], [ %i.aou, %bb.kg ] ; 16 uses
  %i.aqm = icmp sgt i32 %.sroa.9.0.i387, 0
  br i1 %i.aqm, label %bb.kj, label %bb.kl

bb.kj:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1219
  %i.aqn = and i32 %.sroa.9.0.i387, 63            ; 3 uses
  %i.aqo = lshr i32 %.sroa.9.0.i387, 6            ; 14 uses
  %i.aqp = icmp eq i32 %i.aqn, 0
  br i1 %i.aqp, label %.preheader4122, label %bb.kk, !prof !7

.preheader4122:                                   ; preds = %bb.kj
  %.not46.i12525043 = icmp eq i32 %i.aql, 0
  br i1 %.not46.i12525043, label %.lr.ph5050.preheader, label %.lr.ph5045

.lr.ph5045:                                       ; preds = %.preheader4122
  %i.aqq = add nsw i32 %i.aqo, -1                 ; 6 uses
  %i.aqr = zext i32 %i.aql to i64                 ; 9 uses
  %min.iters.check10378 = icmp ult i32 %i.aql, 30
  br i1 %min.iters.check10378, label %scalar.ph10377.preheader, label %vector.scevcheck10374

vector.scevcheck10374:                            ; preds = %.lr.ph5045
  %i.aqs = add nsw i64 %i.aqr, -1                 ; 2 uses
  %i.aqt = add i32 %i.aql, %i.aqo
  %i.aqu = add i32 %i.aqt, -1
  %i.aqv = trunc i64 %i.aqs to i32
  %i.aqw = icmp ult i32 %i.aqu, %i.aqv
  %i.aqx = icmp ugt i64 %i.aqs, 4294967295
  %i.aqy = or i1 %i.aqw, %i.aqx
  br i1 %i.aqy, label %scalar.ph10377.preheader, label %vector.memcheck10375

vector.memcheck10375:                             ; preds = %vector.scevcheck10374
  %i.aqz = add i32 %i.aql, %i.aqo
  %i.ara = add i32 %i.aqz, -1
  %i.arb = zext i32 %i.ara to i64
  %i.arc = sub nsw i64 %i.aqr, %i.arb
  %i.ard = shl nsw i64 %i.arc, 3
  %i.are = add nsw i64 %i.ard, -9
  %diff.check10376 = icmp ult i64 %i.are, 31
  br i1 %diff.check10376, label %scalar.ph10377.preheader, label %vector.ph10379

vector.ph10379:                                   ; preds = %vector.memcheck10375
  %n.vec10381 = and i64 %i.aqr, 4294967292        ; 2 uses
  %i.arf = and i64 %i.aqr, 3
  br label %vector.body10382

vector.body10382:                                 ; preds = %vector.body10382, %vector.ph10379
  %index10383 = phi i64 [ 0, %vector.ph10379 ], [ %index.next10386, %vector.body10382 ] ; 2 uses
  %i.arg = sub i64 %i.aqr, %index10383            ; 2 uses
  %i.arh = getelementptr [8 x i8], ptr %8, i64 %i.arg ; 2 uses
  %i.ari = getelementptr i8, ptr %i.arh, i64 -8
  %i.arj = getelementptr i8, ptr %i.arh, i64 -24
  %wide.load10384.a = load <2 x i64>, ptr %i.ari, align 8, !tbaa !91
  %wide.load10385.a = load <2 x i64>, ptr %i.arj, align 8, !tbaa !91
  %i.ark = trunc nuw i64 %i.arg to i32
  %i.arl = add i32 %i.aqq, %i.ark
  %i.arm = zext i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.arm ; 2 uses
  %i.aro = getelementptr inbounds i8, ptr %i.arn, i64 -8
  %i.arp = getelementptr inbounds i8, ptr %i.arn, i64 -24
  store <2 x i64> %wide.load10384.a, ptr %i.aro, align 8, !tbaa !91
  store <2 x i64> %wide.load10385.a, ptr %i.arp, align 8, !tbaa !91
  %index.next10386 = add nuw i64 %index10383, 4   ; 2 uses
  %i.arq = icmp eq i64 %index.next10386, %n.vec10381
  br i1 %i.arq, label %middle.block10387, label %vector.body10382, !llvm.loop !179

middle.block10387:                                ; preds = %vector.body10382
  %cmp.n10388 = icmp eq i64 %n.vec10381, %i.aqr
  br i1 %cmp.n10388, label %.lr.ph5050.preheader, label %scalar.ph10377.preheader

scalar.ph10377.preheader:                         ; preds = %vector.memcheck10375, %vector.scevcheck10374, %.lr.ph5045, %middle.block10387
  %indvars.iv6387.ph = phi i64 [ %i.aqr, %vector.memcheck10375 ], [ %i.aqr, %vector.scevcheck10374 ], [ %i.aqr, %.lr.ph5045 ], [ %i.arf, %middle.block10387 ] ; 4 uses
  %i.arr = add nsw i64 %indvars.iv6387.ph, -1
  %xtraiter12264 = and i64 %indvars.iv6387.ph, 3  ; 2 uses
  %lcmp.mod12265.not = icmp eq i64 %xtraiter12264, 0
  br i1 %lcmp.mod12265.not, label %scalar.ph10377.prol.loopexit, label %scalar.ph10377.prol

scalar.ph10377.prol:                              ; preds = %scalar.ph10377.preheader, %scalar.ph10377.prol
  %indvars.iv6387.prol = phi i64 [ %i.ars, %scalar.ph10377.prol ], [ %indvars.iv6387.ph, %scalar.ph10377.preheader ] ; 3 uses
  %prol.iter12266 = phi i64 [ %prol.iter12266.next, %scalar.ph10377.prol ], [ 0, %scalar.ph10377.preheader ]
  %i.ars = add nsw i64 %indvars.iv6387.prol, -1   ; 2 uses
  %i.art = getelementptr [8 x i8], ptr %8, i64 %indvars.iv6387.prol
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !91
  %i.arv = trunc nuw i64 %indvars.iv6387.prol to i32
  %i.arw = add i32 %i.aqq, %i.arv
  %i.arx = zext i32 %i.arw to i64
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.arx
  store i64 %i.aru, ptr %i.ary, align 8, !tbaa !91
  %prol.iter12266.next = add i64 %prol.iter12266, 1 ; 2 uses
  %prol.iter12266.cmp.not = icmp eq i64 %prol.iter12266.next, %xtraiter12264
  br i1 %prol.iter12266.cmp.not, label %scalar.ph10377.prol.loopexit, label %scalar.ph10377.prol, !llvm.loop !182

scalar.ph10377.prol.loopexit:                     ; preds = %scalar.ph10377.prol, %scalar.ph10377.preheader
  %indvars.iv6387.unr = phi i64 [ %indvars.iv6387.ph, %scalar.ph10377.preheader ], [ %i.ars, %scalar.ph10377.prol ]
  %i.arz = icmp ult i64 %i.arr, 3
  br i1 %i.arz, label %.lr.ph5050.preheader, label %scalar.ph10377

scalar.ph10377:                                   ; preds = %scalar.ph10377.prol.loopexit, %scalar.ph10377
  %indvars.iv6387 = phi i64 [ %i.asv, %scalar.ph10377 ], [ %indvars.iv6387.unr, %scalar.ph10377.prol.loopexit ] ; 6 uses
  %i.asa = add nsw i64 %indvars.iv6387, -1        ; 2 uses
  %i.asb = getelementptr [8 x i8], ptr %8, i64 %indvars.iv6387
  %i.asc = load i64, ptr %i.asb, align 8, !tbaa !91
  %i.asd = trunc nuw i64 %indvars.iv6387 to i32
  %i.ase = add i32 %i.aqq, %i.asd
  %i.asf = zext i32 %i.ase to i64
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.asf
  store i64 %i.asc, ptr %i.asg, align 8, !tbaa !91
  %i.ash = add nsw i64 %indvars.iv6387, -2        ; 2 uses
  %i.asi = getelementptr [8 x i8], ptr %8, i64 %i.asa
  %i.asj = load i64, ptr %i.asi, align 8, !tbaa !91
  %i.ask = trunc nuw i64 %i.asa to i32
  %i.asl = add i32 %i.aqq, %i.ask
  %i.asm = zext i32 %i.asl to i64
  %i.asn = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.asm
  store i64 %i.asj, ptr %i.asn, align 8, !tbaa !91
  %i.aso = add nsw i64 %indvars.iv6387, -3        ; 2 uses
  %i.asp = getelementptr [8 x i8], ptr %8, i64 %i.ash
  %i.asq = load i64, ptr %i.asp, align 8, !tbaa !91
  %i.asr = trunc nuw i64 %i.ash to i32
  %i.ass = add i32 %i.aqq, %i.asr
  %i.ast = zext i32 %i.ass to i64
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.ast
  store i64 %i.asq, ptr %i.asu, align 8, !tbaa !91
  %i.asv = add nsw i64 %indvars.iv6387, -4        ; 2 uses
  %i.asw = getelementptr [8 x i8], ptr %8, i64 %i.aso
  %i.asx = load i64, ptr %i.asw, align 8, !tbaa !91
  %i.asy = trunc nuw i64 %i.aso to i32
  %i.asz = add i32 %i.aqq, %i.asy
  %i.ata = zext i32 %i.asz to i64
  %i.atb = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.ata
  store i64 %i.asx, ptr %i.atb, align 8, !tbaa !91
  %.not46.i1252.wide.3 = icmp eq i64 %i.asv, 0
  br i1 %.not46.i1252.wide.3, label %.lr.ph5050.preheader, label %scalar.ph10377, !llvm.loop !183

.lr.ph5050.preheader:                             ; preds = %scalar.ph10377.prol.loopexit, %scalar.ph10377, %middle.block10387, %.preheader4122
  %i.atc = add i32 %i.aql, %i.aqo                 ; 2 uses
  store i32 %i.atc, ptr %8, align 8, !tbaa !177
  %i.atd = add nsw i32 %i.aqo, -1
  %i.ate = zext i32 %i.atd to i64
  %i.atf = shl nuw nsw i64 %i.ate, 3
  %i.atg = add nuw nsw i64 %i.atf, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ajn, i8 0, i64 %i.atg, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255

bb.kk:                                            ; preds = %bb.kj
  %i.ath = zext i32 %i.aql to i64                 ; 10 uses
  %i.ati = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.ath
  store i64 0, ptr %i.ati, align 8, !tbaa !91
  %.not.i12485034 = icmp eq i32 %i.aql, 0
  %.pre6868 = zext nneg i32 %i.aqn to i64         ; 5 uses
  br i1 %.not.i12485034, label %._crit_edge5038, label %.lr.ph5037

.lr.ph5037:                                       ; preds = %bb.kk
  %i.atj = sub nuw nsw i32 64, %i.aqn
  %i.atk = zext nneg i32 %i.atj to i64            ; 4 uses
  %min.iters.check10350 = icmp ult i32 %i.aql, 20
  br i1 %min.iters.check10350, label %scalar.ph10349.preheader, label %vector.scevcheck10344

vector.scevcheck10344:                            ; preds = %.lr.ph5037
  %i.atl = add nsw i64 %i.ath, -1                 ; 2 uses
  %i.atm = add i32 %i.aql, %i.aqo
  %i.atn = trunc i64 %i.atl to i32
  %i.ato = icmp ult i32 %i.atm, %i.atn
  %i.atp = icmp ugt i64 %i.atl, 4294967295
  %i.atq = or i1 %i.ato, %i.atp
  br i1 %i.atq, label %scalar.ph10349.preheader, label %vector.memcheck10345

vector.memcheck10345:                             ; preds = %vector.scevcheck10344
  %i.atr = shl nuw nsw i64 %i.ath, 3              ; 2 uses
  %i.ats = add i32 %i.aql, %i.aqo
  %i.att = zext i32 %i.ats to i64
  %i.atu = shl nuw nsw i64 %i.att, 3              ; 2 uses
  %i.atv = sub nsw i64 %i.atu, %i.atr
  %diff.check10346 = icmp ugt i64 %i.atv, -32
  %i.atw = sub nsw i64 %i.atr, %i.atu
  %i.atx = add nsw i64 %i.atw, -9
  %diff.check10347 = icmp ult i64 %i.atx, 31
  %conflict.rdx10348 = or i1 %diff.check10346, %diff.check10347
  br i1 %conflict.rdx10348, label %scalar.ph10349.preheader, label %vector.ph10351

vector.ph10351:                                   ; preds = %vector.memcheck10345
  %n.vec10353 = and i64 %i.ath, 4294967292        ; 2 uses
  %i.aty = and i64 %i.ath, 3
  %broadcast.splatinsert10354 = insertelement <2 x i64> poison, i64 %i.atk, i64 0 ; 2 uses
  %broadcast.splatinsert10356 = insertelement <2 x i64> poison, i64 %.pre6868, i64 0 ; 2 uses
  %15 = shufflevector <2 x i64> %broadcast.splatinsert10354, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.atz = shufflevector <2 x i64> %broadcast.splatinsert10356, <2 x i64> poison, <2 x i32> zeroinitializer
  %16 = shufflevector <2 x i64> %broadcast.splatinsert10354, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aua = shufflevector <2 x i64> %broadcast.splatinsert10356, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body10358

vector.body10358:                                 ; preds = %vector.body10358, %vector.ph10351
  %index10359 = phi i64 [ 0, %vector.ph10351 ], [ %index.next10370, %vector.body10358 ] ; 2 uses
  %i.aub = sub i64 %i.ath, %index10359            ; 3 uses
  %i.auc = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.aub ; 2 uses
  %i.aud = getelementptr inbounds i8, ptr %i.auc, i64 -8
  %i.aue = getelementptr inbounds i8, ptr %i.auc, i64 -24
  %wide.load10360 = load <2 x i64>, ptr %i.aud, align 8, !tbaa !91
  %wide.load10361 = load <2 x i64>, ptr %i.aue, align 8, !tbaa !91
  %i.auf = getelementptr [8 x i8], ptr %8, i64 %i.aub ; 2 uses
  %i.aug = getelementptr i8, ptr %i.auf, i64 -8
  %i.auh = getelementptr i8, ptr %i.auf, i64 -24
  %wide.load10364 = load <2 x i64>, ptr %i.aug, align 8, !tbaa !91
  %wide.load10365 = load <2 x i64>, ptr %i.auh, align 8, !tbaa !91
  %17 = trunc nuw i64 %i.aub to i32
  %18 = add i32 %i.aqo, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %19 ; 2 uses
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = getelementptr inbounds i8, ptr %20, i64 -24
  %23 = lshr <2 x i64> %wide.load10364, %15
  %24 = shl <2 x i64> %wide.load10360, %i.atz
  %reverse10368 = or <2 x i64> %23, %24
  %25 = lshr <2 x i64> %wide.load10365, %16
  %26 = shl <2 x i64> %wide.load10361, %i.aua
  %reverse10369 = or <2 x i64> %25, %26
  store <2 x i64> %reverse10368, ptr %21, align 8, !tbaa !91
  store <2 x i64> %reverse10369, ptr %22, align 8, !tbaa !91
  %index.next10370 = add nuw i64 %index10359, 4   ; 2 uses
  %i.aui = icmp eq i64 %index.next10370, %n.vec10353
  br i1 %i.aui, label %middle.block10371, label %vector.body10358, !llvm.loop !184

middle.block10371:                                ; preds = %vector.body10358
  %cmp.n10372 = icmp eq i64 %n.vec10353, %i.ath
  br i1 %cmp.n10372, label %._crit_edge5038, label %scalar.ph10349.preheader

scalar.ph10349.preheader:                         ; preds = %vector.memcheck10345, %vector.scevcheck10344, %.lr.ph5037, %middle.block10371
  %indvars.iv6382.ph = phi i64 [ %i.ath, %vector.memcheck10345 ], [ %i.ath, %vector.scevcheck10344 ], [ %i.ath, %.lr.ph5037 ], [ %i.aty, %middle.block10371 ] ; 7 uses
  %xtraiter12261 = and i64 %indvars.iv6382.ph, 1
  %lcmp.mod12262.not = icmp eq i64 %xtraiter12261, 0
  br i1 %lcmp.mod12262.not, label %scalar.ph10349.prol.loopexit, label %scalar.ph10349.prol

scalar.ph10349.prol:                              ; preds = %scalar.ph10349.preheader
  %i.auj = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6382.ph
  %i.auk = load i64, ptr %i.auj, align 8, !tbaa !91
  %i.aul = shl i64 %i.auk, %.pre6868
  %i.aum = add nsw i64 %indvars.iv6382.ph, -1
  %i.aun = getelementptr [8 x i8], ptr %8, i64 %indvars.iv6382.ph
  %i.auo = load i64, ptr %i.aun, align 8, !tbaa !91
  %i.aup = lshr i64 %i.auo, %i.atk
  %i.auq = or i64 %i.aup, %i.aul
  %i.aur = trunc nuw i64 %indvars.iv6382.ph to i32
  %i.aus = add i32 %i.aqo, %i.aur
  %i.aut = zext i32 %i.aus to i64
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.aut
  store i64 %i.auq, ptr %i.auu, align 8, !tbaa !91
  br label %scalar.ph10349.prol.loopexit

scalar.ph10349.prol.loopexit:                     ; preds = %scalar.ph10349.prol, %scalar.ph10349.preheader
  %indvars.iv6382.unr = phi i64 [ %indvars.iv6382.ph, %scalar.ph10349.preheader ], [ %i.aum, %scalar.ph10349.prol ]
  %i.auv = icmp eq i64 %indvars.iv6382.ph, 1
  br i1 %i.auv, label %._crit_edge5038, label %scalar.ph10349

scalar.ph10349:                                   ; preds = %scalar.ph10349.prol.loopexit, %scalar.ph10349
  %indvars.iv6382 = phi i64 [ %i.avl, %scalar.ph10349 ], [ %indvars.iv6382.unr, %scalar.ph10349.prol.loopexit ] ; 6 uses
  %i.auw = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6382
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !91
  %i.auy = shl i64 %i.aux, %.pre6868
  %i.auz = add nsw i64 %indvars.iv6382, -1        ; 2 uses
  %i.ava = getelementptr [8 x i8], ptr %8, i64 %indvars.iv6382
  %i.avb = load i64, ptr %i.ava, align 8, !tbaa !91
  %i.avc = lshr i64 %i.avb, %i.atk
  %i.avd = or i64 %i.avc, %i.auy
  %i.ave = trunc nuw i64 %indvars.iv6382 to i32
  %i.avf = add i32 %i.aqo, %i.ave
  %i.avg = zext i32 %i.avf to i64
  %i.avh = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.avg
  store i64 %i.avd, ptr %i.avh, align 8, !tbaa !91
  %i.avi = getelementptr [8 x i8], ptr %8, i64 %indvars.iv6382
  %i.avj = load i64, ptr %i.avi, align 8, !tbaa !91
  %i.avk = shl i64 %i.avj, %.pre6868
  %i.avl = add nsw i64 %indvars.iv6382, -2        ; 2 uses
  %i.avm = getelementptr [8 x i8], ptr %8, i64 %i.auz
  %i.avn = load i64, ptr %i.avm, align 8, !tbaa !91
  %i.avo = lshr i64 %i.avn, %i.atk
  %i.avp = or i64 %i.avo, %i.avk
  %i.avq = trunc nuw i64 %i.auz to i32
  %i.avr = add i32 %i.aqo, %i.avq
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.avs
  store i64 %i.avp, ptr %i.avt, align 8, !tbaa !91
  %.not.i1248.wide.1 = icmp eq i64 %i.avl, 0
  br i1 %.not.i1248.wide.1, label %._crit_edge5038, label %scalar.ph10349, !llvm.loop !185

._crit_edge5038:                                  ; preds = %scalar.ph10349.prol.loopexit, %scalar.ph10349, %middle.block10371, %bb.kk
  %i.avu = load i64, ptr %i.ajn, align 8, !tbaa !91
  %i.avv = shl i64 %i.avu, %.pre6868
  %i.avw = zext nneg i32 %i.aqo to i64
  %i.avx = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.avw
  store i64 %i.avv, ptr %i.avx, align 8, !tbaa !91
  %i.avy = add i32 %i.aql, %i.aqo                 ; 2 uses
  %i.avz = zext i32 %i.avy to i64
  %i.awa = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.avz
  %i.awb = load i64, ptr %i.awa, align 8, !tbaa !91
  %i.awc = icmp ne i64 %i.awb, 0
  %i.awd = zext i1 %i.awc to i32
  %i.awe = add i32 %i.avy, %i.awd                 ; 2 uses
  %.not45.i12505039 = icmp eq i32 %i.aqo, 0
  br i1 %.not45.i12505039, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255, label %.lr.ph5042.preheader

.lr.ph5042.preheader:                             ; preds = %._crit_edge5038
  %i.awf = lshr i32 %.sroa.9.0.i387, 3
  %i.awg = and i32 %i.awf, 268435448
  %i.awh = zext nneg i32 %i.awg to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ajn, i8 0, i64 %i.awh, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255

bb.kl:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1219
  %i.awi = sub nsw i32 0, %.sroa.9.0.i387         ; 4 uses
  %i.awj = and i32 %i.awi, 63                     ; 3 uses
  %i.awk = lshr i32 %i.awi, 6                     ; 14 uses
  %i.awl = load i32, ptr %7, align 8, !tbaa !177  ; 12 uses
  %i.awm = icmp eq i32 %i.awj, 0
  br i1 %i.awm, label %.preheader4125, label %bb.km, !prof !7

.preheader4125:                                   ; preds = %bb.kl
  %.not46.i12615026 = icmp eq i32 %i.awl, 0
  br i1 %.not46.i12615026, label %._crit_edge5029, label %.lr.ph5028

.lr.ph5028:                                       ; preds = %.preheader4125
  %i.awn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.awo = add nsw i32 %i.awk, -1                 ; 6 uses
  %i.awp = zext i32 %i.awl to i64                 ; 9 uses
  %min.iters.check10332 = icmp ult i32 %i.awl, 30
  br i1 %min.iters.check10332, label %scalar.ph10331.preheader, label %vector.scevcheck10328

vector.scevcheck10328:                            ; preds = %.lr.ph5028
  %i.awq = add nsw i64 %i.awp, -1                 ; 2 uses
  %i.awr = add i32 %i.awl, %i.awk
  %i.aws = add i32 %i.awr, -1
  %i.awt = trunc i64 %i.awq to i32
  %i.awu = icmp ult i32 %i.aws, %i.awt
  %i.awv = icmp ugt i64 %i.awq, 4294967295
  %i.aww = or i1 %i.awu, %i.awv
  br i1 %i.aww, label %scalar.ph10331.preheader, label %vector.memcheck10329

vector.memcheck10329:                             ; preds = %vector.scevcheck10328
  %i.awx = add i32 %i.awl, %i.awk
  %i.awy = add i32 %i.awx, -1
  %i.awz = zext i32 %i.awy to i64
  %i.axa = sub nsw i64 %i.awp, %i.awz
  %i.axb = shl nsw i64 %i.axa, 3
  %i.axc = add nsw i64 %i.axb, -9
  %diff.check10330 = icmp ult i64 %i.axc, 31
  br i1 %diff.check10330, label %scalar.ph10331.preheader, label %vector.ph10333

vector.ph10333:                                   ; preds = %vector.memcheck10329
  %n.vec10335 = and i64 %i.awp, 4294967292        ; 2 uses
  %i.axd = and i64 %i.awp, 3
  br label %vector.body10336

vector.body10336:                                 ; preds = %vector.body10336, %vector.ph10333
  %index10337 = phi i64 [ 0, %vector.ph10333 ], [ %index.next10340, %vector.body10336 ] ; 2 uses
  %i.axe = sub i64 %i.awp, %index10337            ; 2 uses
  %i.axf = getelementptr [8 x i8], ptr %7, i64 %i.axe ; 2 uses
  %i.axg = getelementptr i8, ptr %i.axf, i64 -8
  %i.axh = getelementptr i8, ptr %i.axf, i64 -24
  %wide.load10338 = load <2 x i64>, ptr %i.axg, align 8, !tbaa !91
  %wide.load10339 = load <2 x i64>, ptr %i.axh, align 8, !tbaa !91
  %i.axi = trunc nuw i64 %i.axe to i32
  %i.axj = add i32 %i.awo, %i.axi
  %i.axk = zext i32 %i.axj to i64
  %i.axl = getelementptr inbounds nuw [8 x i8], ptr %i.awn, i64 %i.axk ; 2 uses
  %i.axm = getelementptr inbounds i8, ptr %i.axl, i64 -8
  %i.axn = getelementptr inbounds i8, ptr %i.axl, i64 -24
  store <2 x i64> %wide.load10338, ptr %i.axm, align 8, !tbaa !91
  store <2 x i64> %wide.load10339, ptr %i.axn, align 8, !tbaa !91
  %index.next10340 = add nuw i64 %index10337, 4   ; 2 uses
  %i.axo = icmp eq i64 %index.next10340, %n.vec10335
  br i1 %i.axo, label %middle.block10341, label %vector.body10336, !llvm.loop !186

middle.block10341:                                ; preds = %vector.body10336
  %cmp.n10342 = icmp eq i64 %n.vec10335, %i.awp
  br i1 %cmp.n10342, label %._crit_edge5029, label %scalar.ph10331.preheader

scalar.ph10331.preheader:                         ; preds = %vector.memcheck10329, %vector.scevcheck10328, %.lr.ph5028, %middle.block10341
  %indvars.iv6377.ph = phi i64 [ %i.awp, %vector.memcheck10329 ], [ %i.awp, %vector.scevcheck10328 ], [ %i.awp, %.lr.ph5028 ], [ %i.axd, %middle.block10341 ] ; 4 uses
  %i.axp = add nsw i64 %indvars.iv6377.ph, -1
  %xtraiter12258 = and i64 %indvars.iv6377.ph, 3  ; 2 uses
  %lcmp.mod12259.not = icmp eq i64 %xtraiter12258, 0
  br i1 %lcmp.mod12259.not, label %scalar.ph10331.prol.loopexit, label %scalar.ph10331.prol

scalar.ph10331.prol:                              ; preds = %scalar.ph10331.preheader, %scalar.ph10331.prol
  %indvars.iv6377.prol = phi i64 [ %i.axq, %scalar.ph10331.prol ], [ %indvars.iv6377.ph, %scalar.ph10331.preheader ] ; 3 uses
  %prol.iter12260 = phi i64 [ %prol.iter12260.next, %scalar.ph10331.prol ], [ 0, %scalar.ph10331.preheader ]
  %i.axq = add nsw i64 %indvars.iv6377.prol, -1   ; 2 uses
  %i.axr = getelementptr [8 x i8], ptr %7, i64 %indvars.iv6377.prol
  %i.axs = load i64, ptr %i.axr, align 8, !tbaa !91
  %i.axt = trunc nuw i64 %indvars.iv6377.prol to i32
  %i.axu = add i32 %i.awo, %i.axt
  %i.axv = zext i32 %i.axu to i64
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.awn, i64 %i.axv
  store i64 %i.axs, ptr %i.axw, align 8, !tbaa !91
  %prol.iter12260.next = add i64 %prol.iter12260, 1 ; 2 uses
  %prol.iter12260.cmp.not = icmp eq i64 %prol.iter12260.next, %xtraiter12258
  br i1 %prol.iter12260.cmp.not, label %scalar.ph10331.prol.loopexit, label %scalar.ph10331.prol, !llvm.loop !187

scalar.ph10331.prol.loopexit:                     ; preds = %scalar.ph10331.prol, %scalar.ph10331.preheader
  %indvars.iv6377.unr = phi i64 [ %indvars.iv6377.ph, %scalar.ph10331.preheader ], [ %i.axq, %scalar.ph10331.prol ]
  %i.axx = icmp ult i64 %i.axp, 3
  br i1 %i.axx, label %._crit_edge5029, label %scalar.ph10331

scalar.ph10331:                                   ; preds = %scalar.ph10331.prol.loopexit, %scalar.ph10331
  %indvars.iv6377 = phi i64 [ %i.ayt, %scalar.ph10331 ], [ %indvars.iv6377.unr, %scalar.ph10331.prol.loopexit ] ; 6 uses
  %i.axy = add nsw i64 %indvars.iv6377, -1        ; 2 uses
  %i.axz = getelementptr [8 x i8], ptr %7, i64 %indvars.iv6377
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !91
  %i.ayb = trunc nuw i64 %indvars.iv6377 to i32
  %i.ayc = add i32 %i.awo, %i.ayb
  %i.ayd = zext i32 %i.ayc to i64
  %i.aye = getelementptr inbounds nuw [8 x i8], ptr %i.awn, i64 %i.ayd
  store i64 %i.aya, ptr %i.aye, align 8, !tbaa !91
  %i.ayf = add nsw i64 %indvars.iv6377, -2        ; 2 uses
  %i.ayg = getelementptr [8 x i8], ptr %7, i64 %i.axy
  %i.ayh = load i64, ptr %i.ayg, align 8, !tbaa !91
  %i.ayi = trunc nuw i64 %i.axy to i32
  %i.ayj = add i32 %i.awo, %i.ayi
  %i.ayk = zext i32 %i.ayj to i64
  %i.ayl = getelementptr inbounds nuw [8 x i8], ptr %i.awn, i64 %i.ayk
  store i64 %i.ayh, ptr %i.ayl, align 8, !tbaa !91
  %i.aym = add nsw i64 %indvars.iv6377, -3        ; 2 uses
  %i.ayn = getelementptr [8 x i8], ptr %7, i64 %i.ayf
  %i.ayo = load i64, ptr %i.ayn, align 8, !tbaa !91
  %i.ayp = trunc nuw i64 %i.ayf to i32
  %i.ayq = add i32 %i.awo, %i.ayp
  %i.ayr = zext i32 %i.ayq to i64
  %i.ays = getelementptr inbounds nuw [8 x i8], ptr %i.awn, i64 %i.ayr
  store i64 %i.ayo, ptr %i.ays, align 8, !tbaa !91
  %i.ayt = add nsw i64 %indvars.iv6377, -4        ; 2 uses
  %i.ayu = getelementptr [8 x i8], ptr %7, i64 %i.aym
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !91
  %i.ayw = trunc nuw i64 %i.aym to i32
  %i.ayx = add i32 %i.awo, %i.ayw
  %i.ayy = zext i32 %i.ayx to i64
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.awn, i64 %i.ayy
  store i64 %i.ayv, ptr %i.ayz, align 8, !tbaa !91
  %.not46.i1261.wide.3 = icmp eq i64 %i.ayt, 0
  br i1 %.not46.i1261.wide.3, label %._crit_edge5029, label %scalar.ph10331, !llvm.loop !188

._crit_edge5029:                                  ; preds = %scalar.ph10331.prol.loopexit, %scalar.ph10331, %middle.block10341, %.preheader4125
  %i.aza = add i32 %i.awl, %i.awk
  store i32 %i.aza, ptr %7, align 8, !tbaa !177
  %.not47.i12635030 = icmp eq i32 %i.awk, 0
  br i1 %.not47.i12635030, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255, label %.lr.ph5033

.lr.ph5033:                                       ; preds = %._crit_edge5029
  %i.azb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.azc = lshr exact i32 %i.awi, 3
  %i.azd = zext nneg i32 %i.azc to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.azb, i8 0, i64 %i.azd, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255

bb.km:                                            ; preds = %bb.kl
  %i.aze = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  %i.azf = zext i32 %i.awl to i64                 ; 10 uses
  %i.azg = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.azf
  store i64 0, ptr %i.azg, align 8, !tbaa !91
  %.not.i12575017 = icmp eq i32 %i.awl, 0
  %.pre6870 = zext nneg i32 %i.awj to i64         ; 5 uses
  br i1 %.not.i12575017, label %._crit_edge5021, label %.lr.ph5020

.lr.ph5020:                                       ; preds = %bb.km
  %i.azh = sub nuw nsw i32 64, %i.awj
  %i.azi = zext nneg i32 %i.azh to i64            ; 4 uses
  %min.iters.check10304 = icmp ult i32 %i.awl, 20
  br i1 %min.iters.check10304, label %scalar.ph10303.preheader, label %vector.scevcheck10298

vector.scevcheck10298:                            ; preds = %.lr.ph5020
  %i.azj = add nsw i64 %i.azf, -1                 ; 2 uses
  %i.azk = add i32 %i.awl, %i.awk
  %i.azl = trunc i64 %i.azj to i32
  %i.azm = icmp ult i32 %i.azk, %i.azl
  %i.azn = icmp ugt i64 %i.azj, 4294967295
  %i.azo = or i1 %i.azm, %i.azn
  br i1 %i.azo, label %scalar.ph10303.preheader, label %vector.memcheck10299

vector.memcheck10299:                             ; preds = %vector.scevcheck10298
  %i.azp = shl nuw nsw i64 %i.azf, 3              ; 2 uses
  %i.azq = add i32 %i.awl, %i.awk
  %i.azr = zext i32 %i.azq to i64
  %i.azs = shl nuw nsw i64 %i.azr, 3              ; 2 uses
  %i.azt = sub nsw i64 %i.azs, %i.azp
  %diff.check10300 = icmp ugt i64 %i.azt, -32
  %i.azu = sub nsw i64 %i.azp, %i.azs
  %i.azv = add nsw i64 %i.azu, -9
  %diff.check10301 = icmp ult i64 %i.azv, 31
  %conflict.rdx10302 = or i1 %diff.check10300, %diff.check10301
  br i1 %conflict.rdx10302, label %scalar.ph10303.preheader, label %vector.ph10305

vector.ph10305:                                   ; preds = %vector.memcheck10299
  %n.vec10307 = and i64 %i.azf, 4294967292        ; 2 uses
  %i.azw = and i64 %i.azf, 3
  %broadcast.splatinsert10308 = insertelement <2 x i64> poison, i64 %i.azi, i64 0 ; 2 uses
  %broadcast.splatinsert10310 = insertelement <2 x i64> poison, i64 %.pre6870, i64 0 ; 2 uses
  %27 = shufflevector <2 x i64> %broadcast.splatinsert10308, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.azx = shufflevector <2 x i64> %broadcast.splatinsert10310, <2 x i64> poison, <2 x i32> zeroinitializer
  %28 = shufflevector <2 x i64> %broadcast.splatinsert10308, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.azy = shufflevector <2 x i64> %broadcast.splatinsert10310, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body10312

vector.body10312:                                 ; preds = %vector.body10312, %vector.ph10305
  %index10313 = phi i64 [ 0, %vector.ph10305 ], [ %index.next10324, %vector.body10312 ] ; 2 uses
  %i.azz = sub i64 %i.azf, %index10313            ; 3 uses
  %i.baa = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.azz ; 2 uses
  %i.bab = getelementptr inbounds i8, ptr %i.baa, i64 -8
  %i.bac = getelementptr inbounds i8, ptr %i.baa, i64 -24
  %wide.load10314 = load <2 x i64>, ptr %i.bab, align 8, !tbaa !91
  %wide.load10315 = load <2 x i64>, ptr %i.bac, align 8, !tbaa !91
  %i.bad = getelementptr [8 x i8], ptr %7, i64 %i.azz ; 2 uses
  %i.bae = getelementptr i8, ptr %i.bad, i64 -8
  %i.baf = getelementptr i8, ptr %i.bad, i64 -24
  %wide.load10318 = load <2 x i64>, ptr %i.bae, align 8, !tbaa !91
  %wide.load10319 = load <2 x i64>, ptr %i.baf, align 8, !tbaa !91
  %29 = trunc nuw i64 %i.azz to i32
  %30 = add i32 %i.awk, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %31 ; 2 uses
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %34 = getelementptr inbounds i8, ptr %32, i64 -24
  %35 = lshr <2 x i64> %wide.load10318, %27
  %36 = shl <2 x i64> %wide.load10314, %i.azx
  %reverse10322 = or <2 x i64> %35, %36
  %37 = lshr <2 x i64> %wide.load10319, %28
  %38 = shl <2 x i64> %wide.load10315, %i.azy
  %reverse10323 = or <2 x i64> %37, %38
  store <2 x i64> %reverse10322, ptr %33, align 8, !tbaa !91
  store <2 x i64> %reverse10323, ptr %34, align 8, !tbaa !91
  %index.next10324 = add nuw i64 %index10313, 4   ; 2 uses
  %i.bag = icmp eq i64 %index.next10324, %n.vec10307
  br i1 %i.bag, label %middle.block10325, label %vector.body10312, !llvm.loop !189

middle.block10325:                                ; preds = %vector.body10312
  %cmp.n10326 = icmp eq i64 %n.vec10307, %i.azf
  br i1 %cmp.n10326, label %._crit_edge5021, label %scalar.ph10303.preheader

scalar.ph10303.preheader:                         ; preds = %vector.memcheck10299, %vector.scevcheck10298, %.lr.ph5020, %middle.block10325
  %indvars.iv6372.ph = phi i64 [ %i.azf, %vector.memcheck10299 ], [ %i.azf, %vector.scevcheck10298 ], [ %i.azf, %.lr.ph5020 ], [ %i.azw, %middle.block10325 ] ; 7 uses
  %xtraiter12255 = and i64 %indvars.iv6372.ph, 1
  %lcmp.mod12256.not = icmp eq i64 %xtraiter12255, 0
  br i1 %lcmp.mod12256.not, label %scalar.ph10303.prol.loopexit, label %scalar.ph10303.prol

scalar.ph10303.prol:                              ; preds = %scalar.ph10303.preheader
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %indvars.iv6372.ph
  %i.bai = load i64, ptr %i.bah, align 8, !tbaa !91
  %i.baj = shl i64 %i.bai, %.pre6870
  %i.bak = add nsw i64 %indvars.iv6372.ph, -1
  %i.bal = getelementptr [8 x i8], ptr %7, i64 %indvars.iv6372.ph
  %i.bam = load i64, ptr %i.bal, align 8, !tbaa !91
  %i.ban = lshr i64 %i.bam, %i.azi
  %i.bao = or i64 %i.ban, %i.baj
  %i.bap = trunc nuw i64 %indvars.iv6372.ph to i32
  %i.baq = add i32 %i.awk, %i.bap
  %i.bar = zext i32 %i.baq to i64
  %i.bas = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bar
  store i64 %i.bao, ptr %i.bas, align 8, !tbaa !91
  br label %scalar.ph10303.prol.loopexit

scalar.ph10303.prol.loopexit:                     ; preds = %scalar.ph10303.prol, %scalar.ph10303.preheader
  %indvars.iv6372.unr = phi i64 [ %indvars.iv6372.ph, %scalar.ph10303.preheader ], [ %i.bak, %scalar.ph10303.prol ]
  %i.bat = icmp eq i64 %indvars.iv6372.ph, 1
  br i1 %i.bat, label %._crit_edge5021, label %scalar.ph10303

scalar.ph10303:                                   ; preds = %scalar.ph10303.prol.loopexit, %scalar.ph10303
  %indvars.iv6372 = phi i64 [ %i.bbj, %scalar.ph10303 ], [ %indvars.iv6372.unr, %scalar.ph10303.prol.loopexit ] ; 6 uses
  %i.bau = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %indvars.iv6372
  %i.bav = load i64, ptr %i.bau, align 8, !tbaa !91
  %i.baw = shl i64 %i.bav, %.pre6870
  %i.bax = add nsw i64 %indvars.iv6372, -1        ; 2 uses
  %i.bay = getelementptr [8 x i8], ptr %7, i64 %indvars.iv6372
  %i.baz = load i64, ptr %i.bay, align 8, !tbaa !91
  %i.bba = lshr i64 %i.baz, %i.azi
  %i.bbb = or i64 %i.bba, %i.baw
  %i.bbc = trunc nuw i64 %indvars.iv6372 to i32
  %i.bbd = add i32 %i.awk, %i.bbc
  %i.bbe = zext i32 %i.bbd to i64
  %i.bbf = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bbe
  store i64 %i.bbb, ptr %i.bbf, align 8, !tbaa !91
  %i.bbg = getelementptr [8 x i8], ptr %7, i64 %indvars.iv6372
  %i.bbh = load i64, ptr %i.bbg, align 8, !tbaa !91
  %i.bbi = shl i64 %i.bbh, %.pre6870
  %i.bbj = add nsw i64 %indvars.iv6372, -2        ; 2 uses
  %i.bbk = getelementptr [8 x i8], ptr %7, i64 %i.bax
  %i.bbl = load i64, ptr %i.bbk, align 8, !tbaa !91
  %i.bbm = lshr i64 %i.bbl, %i.azi
  %i.bbn = or i64 %i.bbm, %i.bbi
  %i.bbo = trunc nuw i64 %i.bax to i32
  %i.bbp = add i32 %i.awk, %i.bbo
  %i.bbq = zext i32 %i.bbp to i64
  %i.bbr = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bbq
  store i64 %i.bbn, ptr %i.bbr, align 8, !tbaa !91
  %.not.i1257.wide.1 = icmp eq i64 %i.bbj, 0
  br i1 %.not.i1257.wide.1, label %._crit_edge5021, label %scalar.ph10303, !llvm.loop !190

._crit_edge5021:                                  ; preds = %scalar.ph10303.prol.loopexit, %scalar.ph10303, %middle.block10325, %bb.km
  %i.bbs = load i64, ptr %i.aze, align 8, !tbaa !91
  %i.bbt = shl i64 %i.bbs, %.pre6870
  %i.bbu = zext nneg i32 %i.awk to i64
  %i.bbv = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bbu
  store i64 %i.bbt, ptr %i.bbv, align 8, !tbaa !91
  %i.bbw = add i32 %i.awl, %i.awk                 ; 2 uses
  %i.bbx = zext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds nuw [8 x i8], ptr %i.aze, i64 %i.bbx
  %i.bbz = load i64, ptr %i.bby, align 8, !tbaa !91
  %i.bca = icmp ne i64 %i.bbz, 0
  %i.bcb = zext i1 %i.bca to i32
  %i.bcc = add i32 %i.bbw, %i.bcb
  store i32 %i.bcc, ptr %7, align 8, !tbaa !177
  %.not45.i12595022 = icmp eq i32 %i.awk, 0
  br i1 %.not45.i12595022, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255, label %.lr.ph5025.preheader

.lr.ph5025.preheader:                             ; preds = %._crit_edge5021
  %i.bcd = lshr i32 %i.awi, 3
  %i.bce = and i32 %i.bcd, 536870904
  %i.bcf = zext nneg i32 %i.bce to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aze, i8 0, i64 %i.bcf, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255: ; preds = %.lr.ph5025.preheader, %.lr.ph5033, %.lr.ph5042.preheader, %.lr.ph5050.preheader, %._crit_edge5021, %._crit_edge5029, %._crit_edge5038
  %i.bcg = phi i32 [ %i.awe, %._crit_edge5038 ], [ %i.aql, %.lr.ph5025.preheader ], [ %i.aql, %.lr.ph5033 ], [ %i.awe, %.lr.ph5042.preheader ], [ %i.atc, %.lr.ph5050.preheader ], [ %i.aql, %._crit_edge5021 ], [ %i.aql, %._crit_edge5029 ] ; 2 uses
  %i.bch = load i32, ptr %7, align 8, !tbaa !177  ; 4 uses
  %i.bci = icmp ult i32 %i.bch, %i.bcg
  br i1 %i.bci, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread, label %bb.kn

bb.kn:                                            ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255
  %i.bcj = icmp ugt i32 %i.bch, %i.bcg
  br i1 %i.bcj, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread, label %.preheader4121

.preheader4121:                                   ; preds = %bb.kn
  %.not.i130810161 = icmp eq i32 %i.bch, 0
  br i1 %.not.i130810161, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread3278, label %.lr.ph10164

.lr.ph10164:                                      ; preds = %.preheader4121
  %i.bck = zext i32 %i.bch to i64
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kp
  %i.bcl = add nsw i64 %indvars.iv639010162, -1   ; 2 uses
  %.not.i1308 = icmp eq i64 %i.bcl, 0
  br i1 %.not.i1308, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread3278, label %bb.kp, !llvm.loop !191

bb.kp:                                            ; preds = %.lr.ph10164, %bb.ko
  %.0.i130710163 = phi i32 [ undef, %.lr.ph10164 ], [ %.1.i1312, %bb.ko ]
  %indvars.iv639010162 = phi i64 [ %i.bck, %.lr.ph10164 ], [ %i.bcl, %bb.ko ] ; 3 uses
  %i.bcm = getelementptr [8 x i8], ptr %7, i64 %indvars.iv639010162
  %i.bcn = load i64, ptr %i.bcm, align 8, !tbaa !91 ; 3 uses
  %i.bco = getelementptr [8 x i8], ptr %8, i64 %indvars.iv639010162
  %i.bcp = load i64, ptr %i.bco, align 8, !tbaa !91 ; 3 uses
  %.not3974 = icmp ult i64 %i.bcn, %i.bcp
  %.not3975 = icmp ugt i64 %i.bcn, %i.bcp
  %..0.i1310 = select i1 %.not3975, i32 1, i32 %.0.i130710163
  %cond.i1311 = icmp eq i64 %i.bcn, %i.bcp
  %.1.i1312 = select i1 %.not3974, i32 -1, i32 %..0.i1310 ; 3 uses
  br i1 %cond.i1311, label %bb.ko, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314: ; preds = %bb.kp
  %.not680.i389 = icmp eq i32 %.1.i1312, 0
  br i1 %.not680.i389, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread3278, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255, %bb.kn, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314
  %.2.i13133277 = phi i32 [ %.1.i1312, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314 ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1255 ], [ 1, %bb.kn ]
  %i.bcq = icmp sgt i32 %.2.i13133277, 0
  %i.bcr = zext i1 %i.bcq to i64
  br label %bb.kq

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread3278: ; preds = %bb.ko, %.preheader4121, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314
  %i.bcs = and i64 %.0.i1206.ph, 1
  br label %bb.kq

bb.kq:                                            ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread3278, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread
  %.pn.i390 = phi i64 [ %i.bcr, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread ], [ %i.bcs, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1314.thread3278 ]
  %.0604.i391 = add nuw nsw i64 %.pn.i390, %.0.i1206.ph ; 2 uses
  %i.bct = icmp eq i64 %.0604.i391, 9218868437227405312
  br i1 %i.bct, label %bb.kr, label %bb.ky, !prof !7

bb.kr:                                            ; preds = %bb.kq
  br i1 %.not3928, label %bb.kv, label %bb.ks, !prof !24

bb.ks:                                            ; preds = %bb.kr
  %i.bcu = load ptr, ptr %i.j, align 8, !tbaa !92 ; 2 uses
  %.not681.i393 = icmp eq ptr %i.bcu, null
  br i1 %.not681.i393, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  store i8 0, ptr %i.bcu, align 1, !tbaa !81
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %i.bcv = ptrtoint ptr %.73143 to i64
  %i.bcw = ptrtoint ptr %i.fs to i64
  %i.bcx = sub i64 %i.bcv, %i.bcw
  %i.bcy = shl i64 %i.bcx, 8
  %i.bcz = or disjoint i64 %i.bcy, 1
  store i64 %i.bcz, ptr %.5497.i, align 8, !tbaa !79
  %i.bda = getelementptr inbounds nuw i8, ptr %.5497.i, i64 8
  store ptr %i.fs, ptr %i.bda, align 8, !tbaa !81
  store ptr %.73143, ptr %i.j, align 8, !tbaa !92
  br label %bb.kz

bb.kv:                                            ; preds = %bb.kr
  br i1 %.not3925, label %bb.kx, label %bb.kw, !prof !24

bb.kw:                                            ; preds = %bb.kv
  store i64 20, ptr %.5497.i, align 8, !tbaa !79
  %i.bdb = select i1 %i.fx, i64 -4503599627370496, i64 9218868437227405312
  %i.bdc = getelementptr inbounds nuw i8, ptr %.5497.i, i64 8
  store i64 %i.bdb, ptr %i.bdc, align 8, !tbaa !81
  br label %bb.kz

bb.kx:                                            ; preds = %bb.kv
  store ptr @.str.82, ptr %i.i, align 8, !tbaa !92
  store ptr %i.fs, ptr %i.h, align 8, !tbaa !92
  br label %.thread3470

bb.ky:                                            ; preds = %bb.kq
  store i64 20, ptr %.5497.i, align 8, !tbaa !79
  %i.bdd = select i1 %i.fx, i64 -9223372036854775808, i64 0
  %i.bde = or disjoint i64 %.0604.i391, %i.bdd
  %i.bdf = getelementptr inbounds nuw i8, ptr %.5497.i, i64 8
  store i64 %i.bde, ptr %i.bdf, align 8, !tbaa !81
  br label %bb.kz

.thread3470:                                      ; preds = %bb.jr, %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.aki

end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  br i1 %.not19.i1411, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.ahi

bb.ahi:                                           ; preds = %._crit_edge4725
  %i.fcp = add i32 %i.fbi, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split: ; preds = %bb.ahb, %bb.ahi
  %.sink8443 = phi i32 [ %i.fbi, %bb.ahi ], [ %i.exq, %bb.ahb ]
  %i.fcq = phi ptr [ %6, %bb.ahi ], [ %5, %bb.ahb ]
  %.lcssa7843.sink = phi i64 [ %.lcssa11815, %bb.ahi ], [ %.lcssa11807, %bb.ahb ]
  %.ph8439 = phi i32 [ %i.fcp, %bb.ahi ], [ 1, %bb.ahb ]
  %i.fcr = getelementptr inbounds nuw i8, ptr %i.fcq, i64 8
  %i.fcs = zext i32 %.sink8443 to i64
  %i.fct = getelementptr inbounds nuw [8 x i8], ptr %i.fcr, i64 %i.fcs
  store i64 %.lcssa7843.sink, ptr %i.fct, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit: ; preds = %bb.ahg, %bb.agz, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split, %._crit_edge4717, %._crit_edge4750, %._crit_edge4711, %._crit_edge4725, %._crit_edge4744, %._crit_edge4758
  %i.fcu = phi i32 [ %i.faw, %._crit_edge4711 ], [ %i.fbi, %._crit_edge4725 ], [ %i.fbi, %._crit_edge4717 ], [ 1, %._crit_edge4744 ], [ 1, %._crit_edge4758 ], [ 1, %bb.agz ], [ %.ph8439, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split ], [ 1, %._crit_edge4750 ], [ %i.fbd, %bb.ahg ] ; 16 uses
  %i.fcv = icmp sgt i32 %.sroa.9.0.i492, 0
  br i1 %i.fcv, label %bb.ahj, label %bb.ahl

bb.ahj:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.fcw = and i32 %.sroa.9.0.i492, 63            ; 3 uses
  %i.fcx = lshr i32 %.sroa.9.0.i492, 6            ; 14 uses
  %i.fcy = icmp eq i32 %i.fcw, 0
  br i1 %i.fcy, label %.preheader4162, label %bb.ahk, !prof !7

.preheader4162:                                   ; preds = %bb.ahj
  %.not46.i4786 = icmp eq i32 %i.fcu, 0
  br i1 %.not46.i4786, label %.lr.ph4793.preheader, label %.lr.ph4788

.lr.ph4788:                                       ; preds = %.preheader4162
  %i.fcz = add nsw i32 %i.fcx, -1                 ; 6 uses
  %i.fda = zext i32 %i.fcu to i64                 ; 9 uses
  %min.iters.check10286 = icmp ult i32 %i.fcu, 30
  br i1 %min.iters.check10286, label %scalar.ph10285.preheader, label %vector.scevcheck10282

vector.scevcheck10282:                            ; preds = %.lr.ph4788
  %i.fdb = add nsw i64 %i.fda, -1                 ; 2 uses
  %i.fdc = add i32 %i.fcu, %i.fcx
  %i.fdd = add i32 %i.fdc, -1
  %i.fde = trunc i64 %i.fdb to i32
  %i.fdf = icmp ult i32 %i.fdd, %i.fde
  %i.fdg = icmp ugt i64 %i.fdb, 4294967295
  %i.fdh = or i1 %i.fdf, %i.fdg
  br i1 %i.fdh, label %scalar.ph10285.preheader, label %vector.memcheck10283

vector.memcheck10283:                             ; preds = %vector.scevcheck10282
  %i.fdi = add i32 %i.fcu, %i.fcx
  %i.fdj = add i32 %i.fdi, -1
  %i.fdk = zext i32 %i.fdj to i64
  %i.fdl = sub nsw i64 %i.fda, %i.fdk
  %i.fdm = shl nsw i64 %i.fdl, 3
  %i.fdn = add nsw i64 %i.fdm, -9
  %diff.check10284 = icmp ult i64 %i.fdn, 31
  br i1 %diff.check10284, label %scalar.ph10285.preheader, label %vector.ph10287

vector.ph10287:                                   ; preds = %vector.memcheck10283
  %n.vec10289 = and i64 %i.fda, 4294967292        ; 2 uses
  %i.fdo = and i64 %i.fda, 3
  br label %vector.body10290

vector.body10290:                                 ; preds = %vector.body10290, %vector.ph10287
  %index10291 = phi i64 [ 0, %vector.ph10287 ], [ %index.next10294, %vector.body10290 ] ; 2 uses
  %i.fdp = sub i64 %i.fda, %index10291            ; 2 uses
  %i.fdq = getelementptr [8 x i8], ptr %6, i64 %i.fdp ; 2 uses
  %i.fdr = getelementptr i8, ptr %i.fdq, i64 -8
  %i.fds = getelementptr i8, ptr %i.fdq, i64 -24
  %wide.load10292 = load <2 x i64>, ptr %i.fdr, align 8, !tbaa !91
  %wide.load10293 = load <2 x i64>, ptr %i.fds, align 8, !tbaa !91
  %i.fdt = trunc nuw i64 %i.fdp to i32
  %i.fdu = add i32 %i.fcz, %i.fdt
  %i.fdv = zext i32 %i.fdu to i64
  %i.fdw = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.fdv ; 2 uses
  %i.fdx = getelementptr inbounds i8, ptr %i.fdw, i64 -8
  %i.fdy = getelementptr inbounds i8, ptr %i.fdw, i64 -24
  store <2 x i64> %wide.load10292, ptr %i.fdx, align 8, !tbaa !91
  store <2 x i64> %wide.load10293, ptr %i.fdy, align 8, !tbaa !91
  %index.next10294 = add nuw i64 %index10291, 4   ; 2 uses
  %i.fdz = icmp eq i64 %index.next10294, %n.vec10289
  br i1 %i.fdz, label %middle.block10295, label %vector.body10290, !llvm.loop !207

middle.block10295:                                ; preds = %vector.body10290
  %cmp.n10296 = icmp eq i64 %n.vec10289, %i.fda
  br i1 %cmp.n10296, label %.lr.ph4793.preheader, label %scalar.ph10285.preheader

scalar.ph10285.preheader:                         ; preds = %vector.memcheck10283, %vector.scevcheck10282, %.lr.ph4788, %middle.block10295
  %indvars.iv6326.ph = phi i64 [ %i.fda, %vector.memcheck10283 ], [ %i.fda, %vector.scevcheck10282 ], [ %i.fda, %.lr.ph4788 ], [ %i.fdo, %middle.block10295 ] ; 4 uses
  %i.fea = add nsw i64 %indvars.iv6326.ph, -1
  %xtraiter12222 = and i64 %indvars.iv6326.ph, 3  ; 2 uses
  %lcmp.mod12223.not = icmp eq i64 %xtraiter12222, 0
  br i1 %lcmp.mod12223.not, label %scalar.ph10285.prol.loopexit, label %scalar.ph10285.prol

scalar.ph10285.prol:                              ; preds = %scalar.ph10285.preheader, %scalar.ph10285.prol
  %indvars.iv6326.prol = phi i64 [ %i.feb, %scalar.ph10285.prol ], [ %indvars.iv6326.ph, %scalar.ph10285.preheader ] ; 3 uses
  %prol.iter12224 = phi i64 [ %prol.iter12224.next, %scalar.ph10285.prol ], [ 0, %scalar.ph10285.preheader ]
  %i.feb = add nsw i64 %indvars.iv6326.prol, -1   ; 2 uses
  %i.fec = getelementptr [8 x i8], ptr %6, i64 %indvars.iv6326.prol
  %i.fed = load i64, ptr %i.fec, align 8, !tbaa !91
  %i.fee = trunc nuw i64 %indvars.iv6326.prol to i32
  %i.fef = add i32 %i.fcz, %i.fee
  %i.feg = zext i32 %i.fef to i64
  %i.feh = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.feg
  store i64 %i.fed, ptr %i.feh, align 8, !tbaa !91
  %prol.iter12224.next = add i64 %prol.iter12224, 1 ; 2 uses
  %prol.iter12224.cmp.not = icmp eq i64 %prol.iter12224.next, %xtraiter12222
  br i1 %prol.iter12224.cmp.not, label %scalar.ph10285.prol.loopexit, label %scalar.ph10285.prol, !llvm.loop !208

scalar.ph10285.prol.loopexit:                     ; preds = %scalar.ph10285.prol, %scalar.ph10285.preheader
  %indvars.iv6326.unr = phi i64 [ %indvars.iv6326.ph, %scalar.ph10285.preheader ], [ %i.feb, %scalar.ph10285.prol ]
  %i.fei = icmp ult i64 %i.fea, 3
  br i1 %i.fei, label %.lr.ph4793.preheader, label %scalar.ph10285

scalar.ph10285:                                   ; preds = %scalar.ph10285.prol.loopexit, %scalar.ph10285
  %indvars.iv6326 = phi i64 [ %i.ffe, %scalar.ph10285 ], [ %indvars.iv6326.unr, %scalar.ph10285.prol.loopexit ] ; 6 uses
  %i.fej = add nsw i64 %indvars.iv6326, -1        ; 2 uses
  %i.fek = getelementptr [8 x i8], ptr %6, i64 %indvars.iv6326
  %i.fel = load i64, ptr %i.fek, align 8, !tbaa !91
  %i.fem = trunc nuw i64 %indvars.iv6326 to i32
  %i.fen = add i32 %i.fcz, %i.fem
  %i.feo = zext i32 %i.fen to i64
  %i.fep = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.feo
  store i64 %i.fel, ptr %i.fep, align 8, !tbaa !91
  %i.feq = add nsw i64 %indvars.iv6326, -2        ; 2 uses
  %i.fer = getelementptr [8 x i8], ptr %6, i64 %i.fej
  %i.fes = load i64, ptr %i.fer, align 8, !tbaa !91
  %i.fet = trunc nuw i64 %i.fej to i32
  %i.feu = add i32 %i.fcz, %i.fet
  %i.fev = zext i32 %i.feu to i64
  %i.few = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.fev
  store i64 %i.fes, ptr %i.few, align 8, !tbaa !91
  %i.fex = add nsw i64 %indvars.iv6326, -3        ; 2 uses
  %i.fey = getelementptr [8 x i8], ptr %6, i64 %i.feq
  %i.fez = load i64, ptr %i.fey, align 8, !tbaa !91
  %i.ffa = trunc nuw i64 %i.feq to i32
  %i.ffb = add i32 %i.fcz, %i.ffa
  %i.ffc = zext i32 %i.ffb to i64
  %i.ffd = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.ffc
  store i64 %i.fez, ptr %i.ffd, align 8, !tbaa !91
  %i.ffe = add nsw i64 %indvars.iv6326, -4        ; 2 uses
  %i.fff = getelementptr [8 x i8], ptr %6, i64 %i.fex
  %i.ffg = load i64, ptr %i.fff, align 8, !tbaa !91
  %i.ffh = trunc nuw i64 %i.fex to i32
  %i.ffi = add i32 %i.fcz, %i.ffh
  %i.ffj = zext i32 %i.ffi to i64
  %i.ffk = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.ffj
  store i64 %i.ffg, ptr %i.ffk, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.ffe, 0
  br i1 %.not46.i.wide.3, label %.lr.ph4793.preheader, label %scalar.ph10285, !llvm.loop !209

.lr.ph4793.preheader:                             ; preds = %scalar.ph10285.prol.loopexit, %scalar.ph10285, %middle.block10295, %.preheader4162
  %i.ffl = add i32 %i.fcu, %i.fcx                 ; 2 uses
  store i32 %i.ffl, ptr %6, align 8, !tbaa !177
  %i.ffm = add nsw i32 %i.fcx, -1
  %i.ffn = zext i32 %i.ffm to i64
  %i.ffo = shl nuw nsw i64 %i.ffn, 3
  %i.ffp = add nuw nsw i64 %i.ffo, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.evw, i8 0, i64 %i.ffp, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

bb.ahk:                                           ; preds = %bb.ahj
  %i.ffq = zext i32 %i.fcu to i64                 ; 10 uses
  %i.ffr = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.ffq
  store i64 0, ptr %i.ffr, align 8, !tbaa !91
  %.not.i12354777 = icmp eq i32 %i.fcu, 0
  %.pre6890 = zext nneg i32 %i.fcw to i64         ; 5 uses
  br i1 %.not.i12354777, label %._crit_edge4781, label %.lr.ph4780

.lr.ph4780:                                       ; preds = %bb.ahk
  %i.ffs = sub nuw nsw i32 64, %i.fcw
  %i.fft = zext nneg i32 %i.ffs to i64            ; 4 uses
  %min.iters.check10258 = icmp ult i32 %i.fcu, 20
  br i1 %min.iters.check10258, label %scalar.ph10257.preheader, label %vector.scevcheck10252

vector.scevcheck10252:                            ; preds = %.lr.ph4780
  %i.ffu = add nsw i64 %i.ffq, -1                 ; 2 uses
  %i.ffv = add i32 %i.fcu, %i.fcx
  %i.ffw = trunc i64 %i.ffu to i32
  %i.ffx = icmp ult i32 %i.ffv, %i.ffw
  %i.ffy = icmp ugt i64 %i.ffu, 4294967295
  %i.ffz = or i1 %i.ffx, %i.ffy
  br i1 %i.ffz, label %scalar.ph10257.preheader, label %vector.memcheck10253

vector.memcheck10253:                             ; preds = %vector.scevcheck10252
  %i.fga = shl nuw nsw i64 %i.ffq, 3              ; 2 uses
  %i.fgb = add i32 %i.fcu, %i.fcx
  %i.fgc = zext i32 %i.fgb to i64
  %i.fgd = shl nuw nsw i64 %i.fgc, 3              ; 2 uses
  %i.fge = sub nsw i64 %i.fgd, %i.fga
  %diff.check10254 = icmp ugt i64 %i.fge, -32
  %i.fgf = sub nsw i64 %i.fga, %i.fgd
  %i.fgg = add nsw i64 %i.fgf, -9
  %diff.check10255 = icmp ult i64 %i.fgg, 31
  %conflict.rdx10256 = or i1 %diff.check10254, %diff.check10255
  br i1 %conflict.rdx10256, label %scalar.ph10257.preheader, label %vector.ph10259

vector.ph10259:                                   ; preds = %vector.memcheck10253
  %n.vec10261 = and i64 %i.ffq, 4294967292        ; 2 uses
  %i.fgh = and i64 %i.ffq, 3
  %broadcast.splatinsert10262 = insertelement <2 x i64> poison, i64 %i.fft, i64 0 ; 2 uses
  %broadcast.splatinsert10264 = insertelement <2 x i64> poison, i64 %.pre6890, i64 0 ; 2 uses
  %39 = shufflevector <2 x i64> %broadcast.splatinsert10262, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fgi = shufflevector <2 x i64> %broadcast.splatinsert10264, <2 x i64> poison, <2 x i32> zeroinitializer
  %40 = shufflevector <2 x i64> %broadcast.splatinsert10262, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fgj = shufflevector <2 x i64> %broadcast.splatinsert10264, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body10266

vector.body10266:                                 ; preds = %vector.body10266, %vector.ph10259
  %index10267 = phi i64 [ 0, %vector.ph10259 ], [ %index.next10278, %vector.body10266 ] ; 2 uses
  %i.fgk = sub i64 %i.ffq, %index10267            ; 3 uses
  %i.fgl = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.fgk ; 2 uses
  %i.fgm = getelementptr inbounds i8, ptr %i.fgl, i64 -8
  %i.fgn = getelementptr inbounds i8, ptr %i.fgl, i64 -24
  %wide.load10268 = load <2 x i64>, ptr %i.fgm, align 8, !tbaa !91
  %wide.load10269 = load <2 x i64>, ptr %i.fgn, align 8, !tbaa !91
  %i.fgo = getelementptr [8 x i8], ptr %6, i64 %i.fgk ; 2 uses
  %i.fgp = getelementptr i8, ptr %i.fgo, i64 -8
  %i.fgq = getelementptr i8, ptr %i.fgo, i64 -24
  %wide.load10272 = load <2 x i64>, ptr %i.fgp, align 8, !tbaa !91
  %wide.load10273 = load <2 x i64>, ptr %i.fgq, align 8, !tbaa !91
  %41 = trunc nuw i64 %i.fgk to i32
  %42 = add i32 %i.fcx, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %43 ; 2 uses
  %45 = getelementptr inbounds i8, ptr %44, i64 -8
  %46 = getelementptr inbounds i8, ptr %44, i64 -24
  %47 = lshr <2 x i64> %wide.load10272, %39
  %48 = shl <2 x i64> %wide.load10268, %i.fgi
  %reverse10276 = or <2 x i64> %47, %48
  %49 = lshr <2 x i64> %wide.load10273, %40
  %50 = shl <2 x i64> %wide.load10269, %i.fgj
  %reverse10277 = or <2 x i64> %49, %50
  store <2 x i64> %reverse10276, ptr %45, align 8, !tbaa !91
  store <2 x i64> %reverse10277, ptr %46, align 8, !tbaa !91
  %index.next10278 = add nuw i64 %index10267, 4   ; 2 uses
  %i.fgr = icmp eq i64 %index.next10278, %n.vec10261
  br i1 %i.fgr, label %middle.block10279, label %vector.body10266, !llvm.loop !210

middle.block10279:                                ; preds = %vector.body10266
  %cmp.n10280 = icmp eq i64 %n.vec10261, %i.ffq
  br i1 %cmp.n10280, label %._crit_edge4781, label %scalar.ph10257.preheader

scalar.ph10257.preheader:                         ; preds = %vector.memcheck10253, %vector.scevcheck10252, %.lr.ph4780, %middle.block10279
  %indvars.iv6321.ph = phi i64 [ %i.ffq, %vector.memcheck10253 ], [ %i.ffq, %vector.scevcheck10252 ], [ %i.ffq, %.lr.ph4780 ], [ %i.fgh, %middle.block10279 ] ; 7 uses
  %xtraiter12219 = and i64 %indvars.iv6321.ph, 1
  %lcmp.mod12220.not = icmp eq i64 %xtraiter12219, 0
  br i1 %lcmp.mod12220.not, label %scalar.ph10257.prol.loopexit, label %scalar.ph10257.prol

scalar.ph10257.prol:                              ; preds = %scalar.ph10257.preheader
  %i.fgs = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %indvars.iv6321.ph
  %i.fgt = load i64, ptr %i.fgs, align 8, !tbaa !91
  %i.fgu = shl i64 %i.fgt, %.pre6890
  %i.fgv = add nsw i64 %indvars.iv6321.ph, -1
  %i.fgw = getelementptr [8 x i8], ptr %6, i64 %indvars.iv6321.ph
  %i.fgx = load i64, ptr %i.fgw, align 8, !tbaa !91
  %i.fgy = lshr i64 %i.fgx, %i.fft
  %i.fgz = or i64 %i.fgy, %i.fgu
  %i.fha = trunc nuw i64 %indvars.iv6321.ph to i32
  %i.fhb = add i32 %i.fcx, %i.fha
  %i.fhc = zext i32 %i.fhb to i64
  %i.fhd = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.fhc
  store i64 %i.fgz, ptr %i.fhd, align 8, !tbaa !91
  br label %scalar.ph10257.prol.loopexit

scalar.ph10257.prol.loopexit:                     ; preds = %scalar.ph10257.prol, %scalar.ph10257.preheader
  %indvars.iv6321.unr = phi i64 [ %indvars.iv6321.ph, %scalar.ph10257.preheader ], [ %i.fgv, %scalar.ph10257.prol ]
  %i.fhe = icmp eq i64 %indvars.iv6321.ph, 1
  br i1 %i.fhe, label %._crit_edge4781, label %scalar.ph10257

scalar.ph10257:                                   ; preds = %scalar.ph10257.prol.loopexit, %scalar.ph10257
  %indvars.iv6321 = phi i64 [ %i.fhu, %scalar.ph10257 ], [ %indvars.iv6321.unr, %scalar.ph10257.prol.loopexit ] ; 6 uses
  %i.fhf = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %indvars.iv6321
  %i.fhg = load i64, ptr %i.fhf, align 8, !tbaa !91
  %i.fhh = shl i64 %i.fhg, %.pre6890
  %i.fhi = add nsw i64 %indvars.iv6321, -1        ; 2 uses
  %i.fhj = getelementptr [8 x i8], ptr %6, i64 %indvars.iv6321
  %i.fhk = load i64, ptr %i.fhj, align 8, !tbaa !91
  %i.fhl = lshr i64 %i.fhk, %i.fft
  %i.fhm = or i64 %i.fhl, %i.fhh
  %i.fhn = trunc nuw i64 %indvars.iv6321 to i32
  %i.fho = add i32 %i.fcx, %i.fhn
  %i.fhp = zext i32 %i.fho to i64
  %i.fhq = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.fhp
  store i64 %i.fhm, ptr %i.fhq, align 8, !tbaa !91
  %i.fhr = getelementptr [8 x i8], ptr %6, i64 %indvars.iv6321
  %i.fhs = load i64, ptr %i.fhr, align 8, !tbaa !91
  %i.fht = shl i64 %i.fhs, %.pre6890
  %i.fhu = add nsw i64 %indvars.iv6321, -2        ; 2 uses
  %i.fhv = getelementptr [8 x i8], ptr %6, i64 %i.fhi
  %i.fhw = load i64, ptr %i.fhv, align 8, !tbaa !91
  %i.fhx = lshr i64 %i.fhw, %i.fft
  %i.fhy = or i64 %i.fhx, %i.fht
  %i.fhz = trunc nuw i64 %i.fhi to i32
  %i.fia = add i32 %i.fcx, %i.fhz
  %i.fib = zext i32 %i.fia to i64
  %i.fic = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.fib
  store i64 %i.fhy, ptr %i.fic, align 8, !tbaa !91
  %.not.i1235.wide.1 = icmp eq i64 %i.fhu, 0
  br i1 %.not.i1235.wide.1, label %._crit_edge4781, label %scalar.ph10257, !llvm.loop !211

._crit_edge4781:                                  ; preds = %scalar.ph10257.prol.loopexit, %scalar.ph10257, %middle.block10279, %bb.ahk
  %i.fid = load i64, ptr %i.evw, align 8, !tbaa !91
  %i.fie = shl i64 %i.fid, %.pre6890
  %i.fif = zext nneg i32 %i.fcx to i64
  %i.fig = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.fif
  store i64 %i.fie, ptr %i.fig, align 8, !tbaa !91
  %i.fih = add i32 %i.fcu, %i.fcx                 ; 2 uses
  %i.fii = zext i32 %i.fih to i64
  %i.fij = getelementptr inbounds nuw [8 x i8], ptr %i.evw, i64 %i.fii
  %i.fik = load i64, ptr %i.fij, align 8, !tbaa !91
  %i.fil = icmp ne i64 %i.fik, 0
  %i.fim = zext i1 %i.fil to i32
  %i.fin = add i32 %i.fih, %i.fim                 ; 2 uses
  %.not45.i4782 = icmp eq i32 %i.fcx, 0
  br i1 %.not45.i4782, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph4785.preheader

.lr.ph4785.preheader:                             ; preds = %._crit_edge4781
  %i.fio = lshr i32 %.sroa.9.0.i492, 3
  %i.fip = and i32 %i.fio, 268435448
  %i.fiq = zext nneg i32 %i.fip to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.evw, i8 0, i64 %i.fiq, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

bb.ahl:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.fir = sub nsw i32 0, %.sroa.9.0.i492         ; 4 uses
  %i.fis = and i32 %i.fir, 63                     ; 3 uses
  %i.fit = lshr i32 %i.fir, 6                     ; 14 uses
  %i.fiu = load i32, ptr %5, align 8, !tbaa !177  ; 12 uses
  %i.fiv = icmp eq i32 %i.fis, 0
  br i1 %i.fiv, label %.preheader4165, label %bb.ahm, !prof !7

.preheader4165:                                   ; preds = %bb.ahl
  %.not46.i12434769 = icmp eq i32 %i.fiu, 0
  br i1 %.not46.i12434769, label %._crit_edge4772, label %.lr.ph4771

.lr.ph4771:                                       ; preds = %.preheader4165
  %i.fiw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.fix = add nsw i32 %i.fit, -1                 ; 6 uses
  %i.fiy = zext i32 %i.fiu to i64                 ; 9 uses
  %min.iters.check10240 = icmp ult i32 %i.fiu, 30
  br i1 %min.iters.check10240, label %scalar.ph10239.preheader, label %vector.scevcheck10236

vector.scevcheck10236:                            ; preds = %.lr.ph4771
  %i.fiz = add nsw i64 %i.fiy, -1                 ; 2 uses
  %i.fja = add i32 %i.fiu, %i.fit
  %i.fjb = add i32 %i.fja, -1
  %i.fjc = trunc i64 %i.fiz to i32
  %i.fjd = icmp ult i32 %i.fjb, %i.fjc
  %i.fje = icmp ugt i64 %i.fiz, 4294967295
  %i.fjf = or i1 %i.fjd, %i.fje
  br i1 %i.fjf, label %scalar.ph10239.preheader, label %vector.memcheck10237

vector.memcheck10237:                             ; preds = %vector.scevcheck10236
  %i.fjg = add i32 %i.fiu, %i.fit
  %i.fjh = add i32 %i.fjg, -1
  %i.fji = zext i32 %i.fjh to i64
  %i.fjj = sub nsw i64 %i.fiy, %i.fji
  %i.fjk = shl nsw i64 %i.fjj, 3
  %i.fjl = add nsw i64 %i.fjk, -9
  %diff.check10238 = icmp ult i64 %i.fjl, 31
  br i1 %diff.check10238, label %scalar.ph10239.preheader, label %vector.ph10241

vector.ph10241:                                   ; preds = %vector.memcheck10237
  %n.vec10243 = and i64 %i.fiy, 4294967292        ; 2 uses
  %i.fjm = and i64 %i.fiy, 3
  br label %vector.body10244

vector.body10244:                                 ; preds = %vector.body10244, %vector.ph10241
  %index10245 = phi i64 [ 0, %vector.ph10241 ], [ %index.next10248, %vector.body10244 ] ; 2 uses
  %i.fjn = sub i64 %i.fiy, %index10245            ; 2 uses
  %i.fjo = getelementptr [8 x i8], ptr %5, i64 %i.fjn ; 2 uses
  %i.fjp = getelementptr i8, ptr %i.fjo, i64 -8
  %i.fjq = getelementptr i8, ptr %i.fjo, i64 -24
  %wide.load10246 = load <2 x i64>, ptr %i.fjp, align 8, !tbaa !91
  %wide.load10247 = load <2 x i64>, ptr %i.fjq, align 8, !tbaa !91
  %i.fjr = trunc nuw i64 %i.fjn to i32
  %i.fjs = add i32 %i.fix, %i.fjr
  %i.fjt = zext i32 %i.fjs to i64
  %i.fju = getelementptr inbounds nuw [8 x i8], ptr %i.fiw, i64 %i.fjt ; 2 uses
  %i.fjv = getelementptr inbounds i8, ptr %i.fju, i64 -8
  %i.fjw = getelementptr inbounds i8, ptr %i.fju, i64 -24
  store <2 x i64> %wide.load10246, ptr %i.fjv, align 8, !tbaa !91
  store <2 x i64> %wide.load10247, ptr %i.fjw, align 8, !tbaa !91
  %index.next10248 = add nuw i64 %index10245, 4   ; 2 uses
  %i.fjx = icmp eq i64 %index.next10248, %n.vec10243
  br i1 %i.fjx, label %middle.block10249, label %vector.body10244, !llvm.loop !212

middle.block10249:                                ; preds = %vector.body10244
  %cmp.n10250 = icmp eq i64 %n.vec10243, %i.fiy
  br i1 %cmp.n10250, label %._crit_edge4772, label %scalar.ph10239.preheader

scalar.ph10239.preheader:                         ; preds = %vector.memcheck10237, %vector.scevcheck10236, %.lr.ph4771, %middle.block10249
  %indvars.iv6316.ph = phi i64 [ %i.fiy, %vector.memcheck10237 ], [ %i.fiy, %vector.scevcheck10236 ], [ %i.fiy, %.lr.ph4771 ], [ %i.fjm, %middle.block10249 ] ; 4 uses
  %i.fjy = add nsw i64 %indvars.iv6316.ph, -1
  %xtraiter12217 = and i64 %indvars.iv6316.ph, 3  ; 2 uses
  %lcmp.mod12218.not = icmp eq i64 %xtraiter12217, 0
  br i1 %lcmp.mod12218.not, label %scalar.ph10239.prol.loopexit, label %scalar.ph10239.prol

scalar.ph10239.prol:                              ; preds = %scalar.ph10239.preheader, %scalar.ph10239.prol
  %indvars.iv6316.prol = phi i64 [ %i.fjz, %scalar.ph10239.prol ], [ %indvars.iv6316.ph, %scalar.ph10239.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph10239.prol ], [ 0, %scalar.ph10239.preheader ]
  %i.fjz = add nsw i64 %indvars.iv6316.prol, -1   ; 2 uses
  %i.fka = getelementptr [8 x i8], ptr %5, i64 %indvars.iv6316.prol
  %i.fkb = load i64, ptr %i.fka, align 8, !tbaa !91
  %i.fkc = trunc nuw i64 %indvars.iv6316.prol to i32
  %i.fkd = add i32 %i.fix, %i.fkc
  %i.fke = zext i32 %i.fkd to i64
  %i.fkf = getelementptr inbounds nuw [8 x i8], ptr %i.fiw, i64 %i.fke
  store i64 %i.fkb, ptr %i.fkf, align 8, !tbaa !91
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter12217
  br i1 %prol.iter.cmp.not, label %scalar.ph10239.prol.loopexit, label %scalar.ph10239.prol, !llvm.loop !213

scalar.ph10239.prol.loopexit:                     ; preds = %scalar.ph10239.prol, %scalar.ph10239.preheader
  %indvars.iv6316.unr = phi i64 [ %indvars.iv6316.ph, %scalar.ph10239.preheader ], [ %i.fjz, %scalar.ph10239.prol ]
  %i.fkg = icmp ult i64 %i.fjy, 3
  br i1 %i.fkg, label %._crit_edge4772, label %scalar.ph10239

scalar.ph10239:                                   ; preds = %scalar.ph10239.prol.loopexit, %scalar.ph10239
  %indvars.iv6316 = phi i64 [ %i.flc, %scalar.ph10239 ], [ %indvars.iv6316.unr, %scalar.ph10239.prol.loopexit ] ; 6 uses
  %i.fkh = add nsw i64 %indvars.iv6316, -1        ; 2 uses
  %i.fki = getelementptr [8 x i8], ptr %5, i64 %indvars.iv6316
  %i.fkj = load i64, ptr %i.fki, align 8, !tbaa !91
  %i.fkk = trunc nuw i64 %indvars.iv6316 to i32
  %i.fkl = add i32 %i.fix, %i.fkk
  %i.fkm = zext i32 %i.fkl to i64
  %i.fkn = getelementptr inbounds nuw [8 x i8], ptr %i.fiw, i64 %i.fkm
  store i64 %i.fkj, ptr %i.fkn, align 8, !tbaa !91
  %i.fko = add nsw i64 %indvars.iv6316, -2        ; 2 uses
  %i.fkp = getelementptr [8 x i8], ptr %5, i64 %i.fkh
  %i.fkq = load i64, ptr %i.fkp, align 8, !tbaa !91
  %i.fkr = trunc nuw i64 %i.fkh to i32
  %i.fks = add i32 %i.fix, %i.fkr
  %i.fkt = zext i32 %i.fks to i64
  %i.fku = getelementptr inbounds nuw [8 x i8], ptr %i.fiw, i64 %i.fkt
  store i64 %i.fkq, ptr %i.fku, align 8, !tbaa !91
  %i.fkv = add nsw i64 %indvars.iv6316, -3        ; 2 uses
  %i.fkw = getelementptr [8 x i8], ptr %5, i64 %i.fko
  %i.fkx = load i64, ptr %i.fkw, align 8, !tbaa !91
  %i.fky = trunc nuw i64 %i.fko to i32
  %i.fkz = add i32 %i.fix, %i.fky
  %i.fla = zext i32 %i.fkz to i64
  %i.flb = getelementptr inbounds nuw [8 x i8], ptr %i.fiw, i64 %i.fla
  store i64 %i.fkx, ptr %i.flb, align 8, !tbaa !91
  %i.flc = add nsw i64 %indvars.iv6316, -4        ; 2 uses
  %i.fld = getelementptr [8 x i8], ptr %5, i64 %i.fkv
  %i.fle = load i64, ptr %i.fld, align 8, !tbaa !91
  %i.flf = trunc nuw i64 %i.fkv to i32
  %i.flg = add i32 %i.fix, %i.flf
  %i.flh = zext i32 %i.flg to i64
  %i.fli = getelementptr inbounds nuw [8 x i8], ptr %i.fiw, i64 %i.flh
  store i64 %i.fle, ptr %i.fli, align 8, !tbaa !91
  %.not46.i1243.wide.3 = icmp eq i64 %i.flc, 0
  br i1 %.not46.i1243.wide.3, label %._crit_edge4772, label %scalar.ph10239, !llvm.loop !214

._crit_edge4772:                                  ; preds = %scalar.ph10239.prol.loopexit, %scalar.ph10239, %middle.block10249, %.preheader4165
  %i.flj = add i32 %i.fiu, %i.fit
  store i32 %i.flj, ptr %5, align 8, !tbaa !177
  %.not47.i12454773 = icmp eq i32 %i.fit, 0
  br i1 %.not47.i12454773, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph4776

.lr.ph4776:                                       ; preds = %._crit_edge4772
  %i.flk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fll = lshr exact i32 %i.fir, 3
  %i.flm = zext nneg i32 %i.fll to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.flk, i8 0, i64 %i.flm, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

bb.ahm:                                           ; preds = %bb.ahl
  %i.fln = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.flo = zext i32 %i.fiu to i64                 ; 10 uses
  %i.flp = getelementptr inbounds nuw [8 x i8], ptr %i.fln, i64 %i.flo
  store i64 0, ptr %i.flp, align 8, !tbaa !91
  %.not.i12394760 = icmp eq i32 %i.fiu, 0
  %.pre6892 = zext nneg i32 %i.fis to i64         ; 5 uses
  br i1 %.not.i12394760, label %._crit_edge4764, label %.lr.ph4763

.lr.ph4763:                                       ; preds = %bb.ahm
  %i.flq = sub nuw nsw i32 64, %i.fis
  %i.flr = zext nneg i32 %i.flq to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.fiu, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph4763
  %i.fls = add nsw i64 %i.flo, -1                 ; 2 uses
  %i.flt = add i32 %i.fiu, %i.fit
  %i.flu = trunc i64 %i.fls to i32
  %i.flv = icmp ult i32 %i.flt, %i.flu
  %i.flw = icmp ugt i64 %i.fls, 4294967295
  %i.flx = or i1 %i.flv, %i.flw
  br i1 %i.flx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fly = shl nuw nsw i64 %i.flo, 3              ; 2 uses
  %i.flz = add i32 %i.fiu, %i.fit
  %i.fma = zext i32 %i.flz to i64
  %i.fmb = shl nuw nsw i64 %i.fma, 3              ; 2 uses
  %i.fmc = sub nsw i64 %i.fmb, %i.fly
  %diff.check = icmp ugt i64 %i.fmc, -32
  %i.fmd = sub nsw i64 %i.fly, %i.fmb
  %i.fme = add nsw i64 %i.fmd, -9
  %diff.check10225 = icmp ult i64 %i.fme, 31
  %conflict.rdx = or i1 %diff.check, %diff.check10225
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.flo, 4294967292             ; 2 uses
  %i.fmf = and i64 %i.flo, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.flr, i64 0 ; 2 uses
  %broadcast.splatinsert10226 = insertelement <2 x i64> poison, i64 %.pre6892, i64 0 ; 2 uses
  %51 = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fmg = shufflevector <2 x i64> %broadcast.splatinsert10226, <2 x i64> poison, <2 x i32> zeroinitializer
  %52 = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fmh = shufflevector <2 x i64> %broadcast.splatinsert10226, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fmi = sub i64 %i.flo, %index                 ; 3 uses
  %i.fmj = getelementptr inbounds nuw [8 x i8], ptr %i.fln, i64 %i.fmi ; 2 uses
  %i.fmk = getelementptr inbounds i8, ptr %i.fmj, i64 -8
  %i.fml = getelementptr inbounds i8, ptr %i.fmj, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fmk, align 8, !tbaa !91
  %wide.load10228 = load <2 x i64>, ptr %i.fml, align 8, !tbaa !91
  %i.fmm = getelementptr [8 x i8], ptr %5, i64 %i.fmi ; 2 uses
  %i.fmn = getelementptr i8, ptr %i.fmm, i64 -8
  %i.fmo = getelementptr i8, ptr %i.fmm, i64 -24
  %wide.load10230.a = load <2 x i64>, ptr %i.fmn, align 8, !tbaa !91
  %wide.load10231 = load <2 x i64>, ptr %i.fmo, align 8, !tbaa !91
  %53 = trunc nuw i64 %i.fmi to i32
  %54 = add i32 %i.fit, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds nuw [8 x i8], ptr %i.fln, i64 %55 ; 2 uses
  %57 = getelementptr inbounds i8, ptr %56, i64 -8
  %58 = getelementptr inbounds i8, ptr %56, i64 -24
  %59 = lshr <2 x i64> %wide.load10230.a, %51
  %60 = shl <2 x i64> %wide.load, %i.fmg
  %reverse10234 = or <2 x i64> %59, %60
  %61 = lshr <2 x i64> %wide.load10231, %52
  %62 = shl <2 x i64> %wide.load10228, %i.fmh
  %reverse10235 = or <2 x i64> %61, %62
  store <2 x i64> %reverse10234, ptr %57, align 8, !tbaa !91
  store <2 x i64> %reverse10235, ptr %58, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fmp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fmp, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.flo
  br i1 %cmp.n, label %._crit_edge4764, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph4763, %middle.block
  %indvars.iv6311.ph = phi i64 [ %i.flo, %vector.memcheck ], [ %i.flo, %vector.scevcheck ], [ %i.flo, %.lr.ph4763 ], [ %i.fmf, %middle.block ] ; 7 uses
  %xtraiter12215 = and i64 %indvars.iv6311.ph, 1
  %lcmp.mod12216.not = icmp eq i64 %xtraiter12215, 0
  br i1 %lcmp.mod12216.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fmq = getelementptr inbounds nuw [8 x i8], ptr %i.fln, i64 %indvars.iv6311.ph
  %i.fmr = load i64, ptr %i.fmq, align 8, !tbaa !91
  %i.fms = shl i64 %i.fmr, %.pre6892
  %i.fmt = add nsw i64 %indvars.iv6311.ph, -1
  %i.fmu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv6311.ph
  %i.fmv = load i64, ptr %i.fmu, align 8, !tbaa !91
  %i.fmw = lshr i64 %i.fmv, %i.flr
  %i.fmx = or i64 %i.fmw, %i.fms
  %i.fmy = trunc nuw i64 %indvars.iv6311.ph to i32
  %i.fmz = add i32 %i.fit, %i.fmy
  %i.fna = zext i32 %i.fmz to i64
  %i.fnb = getelementptr inbounds nuw [8 x i8], ptr %i.fln, i64 %i.fna
  store i64 %i.fmx, ptr %i.fnb, align 8, !tbaa !91
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv6311.unr = phi i64 [ %indvars.iv6311.ph, %scalar.ph.preheader ], [ %i.fmt, %scalar.ph.prol ]
  %i.fnc = icmp eq i64 %indvars.iv6311.ph, 1
  br i1 %i.fnc, label %._crit_edge4764, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv6311 = phi i64 [ %i.fns, %scalar.ph ], [ %indvars.iv6311.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fnd = getelementptr inbounds nuw [8 x i8], ptr %i.fln, i64 %indvars.iv6311
  %i.fne = load i64, ptr %i.fnd, align 8, !tbaa !91
  %i.fnf = shl i64 %i.fne, %.pre6892
  %i.fng = add nsw i64 %indvars.iv6311, -1        ; 2 uses
  %i.fnh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv6311
  %i.fni = load i64, ptr %i.fnh, align 8, !tbaa !91
  %i.fnj = lshr i64 %i.fni, %i.flr
  %i.fnk = or i64 %i.fnj, %i.fnf
  %i.fnl = trunc nuw i64 %indvars.iv6311 to i32
  %i.fnm = add i32 %i.fit, %i.fnl
  %i.fnn = zext i32 %i.fnm to i64
  %i.fno = getelementptr inbounds nuw [8 x i8], ptr %i.fln, i64 %i.fnn
  store i64 %i.fnk, ptr %i.fno, align 8, !tbaa !91
  %i.fnp = getelementptr [8 x i8], ptr %5, i64 %indvars.iv6311
  %i.fnq = load i64, ptr %i.fnp, align 8, !tbaa !91
  %i.fnr = shl i64 %i.fnq, %.pre6892
  %i.fns = add nsw i64 %indvars.iv6311, -2        ; 2 uses
  %i.fnt = getelementptr [8 x i8], ptr %5, i64 %i.fng
  %i.fnu = load i64, ptr %i.fnt, align 8, !tbaa !91
  %i.fnv = lshr i64 %i.fnu, %i.flr
  %i.fnw = or i64 %i.fnv, %i.fnr
  %i.fnx = trunc nuw i64 %i.fng to i32
  %i.fny = add i32 %i.fit, %i.fnx
  %i.fnz = zext i32 %i.fny to i64
  %i.foa = getelementptr inbounds nuw [8 x i8], ptr %i.fln, i64 %i.fnz
  store i64 %i.fnw, ptr %i.foa, align 8, !tbaa !91
  %.not.i1239.wide.1 = icmp eq i64 %i.fns, 0
  br i1 %.not.i1239.wide.1, label %._crit_edge4764, label %scalar.ph, !llvm.loop !216

._crit_edge4764:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ahm
  %i.fob = load i64, ptr %i.fln, align 8, !tbaa !91
  %i.foc = shl i64 %i.fob, %.pre6892
  %i.fod = zext nneg i32 %i.fit to i64
  %i.foe = getelementptr inbounds nuw [8 x i8], ptr %i.fln, i64 %i.fod
  store i64 %i.foc, ptr %i.foe, align 8, !tbaa !91
  %i.fof = add i32 %i.fiu, %i.fit                 ; 2 uses
  %i.fog = zext i32 %i.fof to i64
  %i.foh = getelementptr inbounds nuw [8 x i8], ptr %i.fln, i64 %i.fog
  %i.foi = load i64, ptr %i.foh, align 8, !tbaa !91
  %i.foj = icmp ne i64 %i.foi, 0
  %i.fok = zext i1 %i.foj to i32
  %i.fol = add i32 %i.fof, %i.fok
  store i32 %i.fol, ptr %5, align 8, !tbaa !177
  %.not45.i12414765 = icmp eq i32 %i.fit, 0
  br i1 %.not45.i12414765, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph4768.preheader

.lr.ph4768.preheader:                             ; preds = %._crit_edge4764
  %i.fom = lshr i32 %i.fir, 3
  %i.fon = and i32 %i.fom, 536870904
  %i.foo = zext nneg i32 %i.fon to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fln, i8 0, i64 %i.foo, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit: ; preds = %.lr.ph4768.preheader, %.lr.ph4776, %.lr.ph4785.preheader, %.lr.ph4793.preheader, %._crit_edge4764, %._crit_edge4772, %._crit_edge4781
  %i.fop = phi i32 [ %i.fin, %._crit_edge4781 ], [ %i.fcu, %.lr.ph4768.preheader ], [ %i.fcu, %.lr.ph4776 ], [ %i.fin, %.lr.ph4785.preheader ], [ %i.ffl, %.lr.ph4793.preheader ], [ %i.fcu, %._crit_edge4764 ], [ %i.fcu, %._crit_edge4772 ] ; 2 uses
  %i.foq = load i32, ptr %5, align 8, !tbaa !177  ; 4 uses
  %i.for = icmp ult i32 %i.foq, %i.fop
  br i1 %i.for, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %bb.ahn

bb.ahn:                                           ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit
  %i.fos = icmp ugt i32 %i.foq, %i.fop
  br i1 %i.fos, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %.preheader4161

.preheader4161:                                   ; preds = %bb.ahn
  %.not.i130210141 = icmp eq i32 %i.foq, 0
  br i1 %.not.i130210141, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3348, label %.lr.ph10144

.lr.ph10144:                                      ; preds = %.preheader4161
  %i.fot = zext i32 %i.foq to i64
  br label %bb.ahp

bb.aho:                                           ; preds = %bb.ahp
  %i.fou = add nsw i64 %indvars.iv632910142, -1   ; 2 uses
  %.not.i1302 = icmp eq i64 %i.fou, 0
  br i1 %.not.i1302, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3348, label %bb.ahp, !llvm.loop !191

bb.ahp:                                           ; preds = %.lr.ph10144, %bb.aho
  %.0.i130110143 = phi i32 [ undef, %.lr.ph10144 ], [ %.1.i1304, %bb.aho ]
  %indvars.iv632910142 = phi i64 [ %i.fot, %.lr.ph10144 ], [ %i.fou, %bb.aho ] ; 3 uses
  %i.fov = getelementptr [8 x i8], ptr %5, i64 %indvars.iv632910142
  %i.fow = load i64, ptr %i.fov, align 8, !tbaa !91 ; 3 uses
  %i.fox = getelementptr [8 x i8], ptr %6, i64 %indvars.iv632910142
  %i.foy = load i64, ptr %i.fox, align 8, !tbaa !91 ; 3 uses
  %.not3842 = icmp ult i64 %i.fow, %i.foy
  %.not3843 = icmp ugt i64 %i.fow, %i.foy
  %..0.i = select i1 %.not3843, i32 1, i32 %.0.i130110143
  %cond.i = icmp eq i64 %i.fow, %i.foy
  %.1.i1304 = select i1 %.not3842, i32 -1, i32 %..0.i ; 3 uses
  br i1 %cond.i, label %bb.aho, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit: ; preds = %bb.ahp
  %.not680.i494 = icmp eq i32 %.1.i1304, 0
  br i1 %.not680.i494, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3348, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, %bb.ahn, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %.2.i13053347 = phi i32 [ %.1.i1304, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit ], [ 1, %bb.ahn ]
  %i.foz = icmp sgt i32 %.2.i13053347, 0
  %i.fpa = zext i1 %i.foz to i64
  br label %bb.ahq

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3348: ; preds = %bb.aho, %.preheader4161, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %i.fpb = and i64 %.0.i1205.ph, 1
  br label %bb.ahq

bb.ahq:                                           ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3348, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread
  %.pn.i495 = phi i64 [ %i.fpa, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread ], [ %i.fpb, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3348 ]
  %.0604.i496 = add nuw nsw i64 %.pn.i495, %.0.i1205.ph ; 2 uses
  %i.fpc = icmp eq i64 %.0604.i496, 9218868437227405312
  br i1 %i.fpc, label %bb.ahr, label %bb.ahy, !prof !7

bb.ahr:                                           ; preds = %bb.ahq
  br i1 %.not3796, label %bb.ahv, label %bb.ahs, !prof !24

bb.ahs:                                           ; preds = %bb.ahr
  %i.fpd = load ptr, ptr %i.j, align 8, !tbaa !92 ; 2 uses
  %.not681.i498 = icmp eq ptr %i.fpd, null
  br i1 %.not681.i498, label %bb.ahu, label %bb.aht

bb.aht:                                           ; preds = %bb.ahs
  store i8 0, ptr %i.fpd, align 1, !tbaa !81
  br label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht, %bb.ahs
  %i.fpe = ptrtoint ptr %.7 to i64
  %i.fpf = ptrtoint ptr %i.drx to i64
  %i.fpg = sub i64 %i.fpe, %i.fpf
  %i.fph = shl i64 %i.fpg, 8
  %i.fpi = or disjoint i64 %i.fph, 1
  store i64 %i.fpi, ptr %i.dsc, align 8, !tbaa !79
  %i.fpj = getelementptr inbounds nuw i8, ptr %.23515.i, i64 24
  store ptr %i.drx, ptr %i.fpj, align 8, !tbaa !81
  store ptr %.7, ptr %i.j, align 8, !tbaa !92
  br label %bb.ahz

bb.ahv:                                           ; preds = %bb.ahr
  br i1 %.not3793, label %bb.ahx, label %bb.ahw, !prof !24

bb.ahw:                                           ; preds = %bb.ahv
  store i64 20, ptr %i.dsc, align 8, !tbaa !79
  %i.fpk = select i1 %i.dsg, i64 -4503599627370496, i64 9218868437227405312
  %i.fpl = getelementptr inbounds nuw i8, ptr %.23515.i, i64 24
  store i64 %i.fpk, ptr %i.fpl, align 8, !tbaa !81
  br label %bb.ahz

bb.ahx:                                           ; preds = %bb.ahv
  store ptr @.str.82, ptr %i.i, align 8, !tbaa !92
  store ptr %i.drx, ptr %i.h, align 8, !tbaa !92
  br label %.thread3473

bb.ahy:                                           ; preds = %bb.ahq
  store i64 20, ptr %i.dsc, align 8, !tbaa !79
  %i.fpm = select i1 %i.dsg, i64 -9223372036854775808, i64 0
  %i.fpn = or disjoint i64 %.0604.i496, %i.fpm
  %i.fpo = getelementptr inbounds nuw i8, ptr %.23515.i, i64 24
  store i64 %i.fpn, ptr %i.fpo, align 8, !tbaa !81
  br label %bb.ahz

.thread3473:                                      ; preds = %bb.agr, %bb.ahx
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.aki

end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  br i1 %.not19.i1339, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231, label %bb.auj

bb.auj:                                           ; preds = %._crit_edge5571
  %i.hjs = add i32 %i.hil, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231.sink.split: ; preds = %bb.auc, %bb.auj
  %.sink8482 = phi i32 [ %i.hil, %bb.auj ], [ %i.het, %bb.auc ]
  %i.hjt = phi ptr [ %12, %bb.auj ], [ %11, %bb.auc ]
  %.lcssa7512.sink = phi i64 [ %.lcssa10766, %bb.auj ], [ %.lcssa10758, %bb.auc ]
  %.ph8478 = phi i32 [ %i.hjs, %bb.auj ], [ 1, %bb.auc ]
  %i.hju = getelementptr inbounds nuw i8, ptr %i.hjt, i64 8
  %i.hjv = zext i32 %.sink8482 to i64
  %i.hjw = getelementptr inbounds nuw [8 x i8], ptr %i.hju, i64 %i.hjv
  store i64 %.lcssa7512.sink, ptr %i.hjw, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231: ; preds = %bb.auh, %bb.aua, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231.sink.split, %._crit_edge5563, %._crit_edge5596, %._crit_edge5557, %._crit_edge5571, %._crit_edge5590, %._crit_edge5604
  %i.hjx = phi i32 [ %i.hhz, %._crit_edge5557 ], [ %i.hil, %._crit_edge5571 ], [ %i.hil, %._crit_edge5563 ], [ 1, %._crit_edge5590 ], [ 1, %._crit_edge5604 ], [ 1, %bb.aua ], [ %.ph8478, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231.sink.split ], [ 1, %._crit_edge5596 ], [ %i.hig, %bb.auh ] ; 16 uses
  %i.hjy = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.hjy, label %bb.auk, label %bb.aum

bb.auk:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231
  %i.hjz = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.hka = lshr i32 %.sroa.9.0.i, 6               ; 14 uses
  %i.hkb = icmp eq i32 %i.hjz, 0
  br i1 %i.hkb, label %.preheader4027, label %bb.aul, !prof !7

.preheader4027:                                   ; preds = %bb.auk
  %.not46.i12885632 = icmp eq i32 %i.hjx, 0
  br i1 %.not46.i12885632, label %.lr.ph5639.preheader, label %.lr.ph5634

.lr.ph5634:                                       ; preds = %.preheader4027
  %i.hkc = add nsw i32 %i.hka, -1                 ; 6 uses
  %i.hkd = zext i32 %i.hjx to i64                 ; 9 uses
  %min.iters.check10562 = icmp ult i32 %i.hjx, 30
  br i1 %min.iters.check10562, label %scalar.ph10561.preheader, label %vector.scevcheck10558

vector.scevcheck10558:                            ; preds = %.lr.ph5634
  %i.hke = add nsw i64 %i.hkd, -1                 ; 2 uses
  %i.hkf = add i32 %i.hjx, %i.hka
  %i.hkg = add i32 %i.hkf, -1
  %i.hkh = trunc i64 %i.hke to i32
  %i.hki = icmp ult i32 %i.hkg, %i.hkh
  %i.hkj = icmp ugt i64 %i.hke, 4294967295
  %i.hkk = or i1 %i.hki, %i.hkj
  br i1 %i.hkk, label %scalar.ph10561.preheader, label %vector.memcheck10559

vector.memcheck10559:                             ; preds = %vector.scevcheck10558
  %i.hkl = add i32 %i.hjx, %i.hka
  %i.hkm = add i32 %i.hkl, -1
  %i.hkn = zext i32 %i.hkm to i64
  %i.hko = sub nsw i64 %i.hkd, %i.hkn
  %i.hkp = shl nsw i64 %i.hko, 3
  %i.hkq = add nsw i64 %i.hkp, -9
  %diff.check10560 = icmp ult i64 %i.hkq, 31
  br i1 %diff.check10560, label %scalar.ph10561.preheader, label %vector.ph10563

vector.ph10563:                                   ; preds = %vector.memcheck10559
  %n.vec10565 = and i64 %i.hkd, 4294967292        ; 2 uses
  %i.hkr = and i64 %i.hkd, 3
  br label %vector.body10566

vector.body10566:                                 ; preds = %vector.body10566, %vector.ph10563
  %index10567 = phi i64 [ 0, %vector.ph10563 ], [ %index.next10570, %vector.body10566 ] ; 2 uses
  %i.hks = sub i64 %i.hkd, %index10567            ; 2 uses
  %i.hkt = getelementptr [8 x i8], ptr %12, i64 %i.hks ; 2 uses
  %i.hku = getelementptr i8, ptr %i.hkt, i64 -8
  %i.hkv = getelementptr i8, ptr %i.hkt, i64 -24
  %wide.load10568 = load <2 x i64>, ptr %i.hku, align 8, !tbaa !91
  %wide.load10569 = load <2 x i64>, ptr %i.hkv, align 8, !tbaa !91
  %i.hkw = trunc nuw i64 %i.hks to i32
  %i.hkx = add i32 %i.hkc, %i.hkw
  %i.hky = zext i32 %i.hkx to i64
  %i.hkz = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hky ; 2 uses
  %i.hla = getelementptr inbounds i8, ptr %i.hkz, i64 -8
  %i.hlb = getelementptr inbounds i8, ptr %i.hkz, i64 -24
  store <2 x i64> %wide.load10568, ptr %i.hla, align 8, !tbaa !91
  store <2 x i64> %wide.load10569, ptr %i.hlb, align 8, !tbaa !91
  %index.next10570 = add nuw i64 %index10567, 4   ; 2 uses
  %i.hlc = icmp eq i64 %index.next10570, %n.vec10565
  br i1 %i.hlc, label %middle.block10571, label %vector.body10566, !llvm.loop !221

middle.block10571:                                ; preds = %vector.body10566
  %cmp.n10572 = icmp eq i64 %n.vec10565, %i.hkd
  br i1 %cmp.n10572, label %.lr.ph5639.preheader, label %scalar.ph10561.preheader

scalar.ph10561.preheader:                         ; preds = %vector.memcheck10559, %vector.scevcheck10558, %.lr.ph5634, %middle.block10571
  %indvars.iv6509.ph = phi i64 [ %i.hkd, %vector.memcheck10559 ], [ %i.hkd, %vector.scevcheck10558 ], [ %i.hkd, %.lr.ph5634 ], [ %i.hkr, %middle.block10571 ] ; 4 uses
  %i.hld = add nsw i64 %indvars.iv6509.ph, -1
  %xtraiter12348 = and i64 %indvars.iv6509.ph, 3  ; 2 uses
  %lcmp.mod12349.not = icmp eq i64 %xtraiter12348, 0
  br i1 %lcmp.mod12349.not, label %scalar.ph10561.prol.loopexit, label %scalar.ph10561.prol

scalar.ph10561.prol:                              ; preds = %scalar.ph10561.preheader, %scalar.ph10561.prol
  %indvars.iv6509.prol = phi i64 [ %i.hle, %scalar.ph10561.prol ], [ %indvars.iv6509.ph, %scalar.ph10561.preheader ] ; 3 uses
  %prol.iter12350 = phi i64 [ %prol.iter12350.next, %scalar.ph10561.prol ], [ 0, %scalar.ph10561.preheader ]
  %i.hle = add nsw i64 %indvars.iv6509.prol, -1   ; 2 uses
  %i.hlf = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6509.prol
  %i.hlg = load i64, ptr %i.hlf, align 8, !tbaa !91
  %i.hlh = trunc nuw i64 %indvars.iv6509.prol to i32
  %i.hli = add i32 %i.hkc, %i.hlh
  %i.hlj = zext i32 %i.hli to i64
  %i.hlk = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hlj
  store i64 %i.hlg, ptr %i.hlk, align 8, !tbaa !91
  %prol.iter12350.next = add i64 %prol.iter12350, 1 ; 2 uses
  %prol.iter12350.cmp.not = icmp eq i64 %prol.iter12350.next, %xtraiter12348
  br i1 %prol.iter12350.cmp.not, label %scalar.ph10561.prol.loopexit, label %scalar.ph10561.prol, !llvm.loop !222

scalar.ph10561.prol.loopexit:                     ; preds = %scalar.ph10561.prol, %scalar.ph10561.preheader
  %indvars.iv6509.unr = phi i64 [ %indvars.iv6509.ph, %scalar.ph10561.preheader ], [ %i.hle, %scalar.ph10561.prol ]
  %i.hll = icmp ult i64 %i.hld, 3
  br i1 %i.hll, label %.lr.ph5639.preheader, label %scalar.ph10561

scalar.ph10561:                                   ; preds = %scalar.ph10561.prol.loopexit, %scalar.ph10561
  %indvars.iv6509 = phi i64 [ %i.hmh, %scalar.ph10561 ], [ %indvars.iv6509.unr, %scalar.ph10561.prol.loopexit ] ; 6 uses
  %i.hlm = add nsw i64 %indvars.iv6509, -1        ; 2 uses
  %i.hln = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6509
  %i.hlo = load i64, ptr %i.hln, align 8, !tbaa !91
  %i.hlp = trunc nuw i64 %indvars.iv6509 to i32
  %i.hlq = add i32 %i.hkc, %i.hlp
  %i.hlr = zext i32 %i.hlq to i64
  %i.hls = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hlr
  store i64 %i.hlo, ptr %i.hls, align 8, !tbaa !91
  %i.hlt = add nsw i64 %indvars.iv6509, -2        ; 2 uses
  %i.hlu = getelementptr [8 x i8], ptr %12, i64 %i.hlm
  %i.hlv = load i64, ptr %i.hlu, align 8, !tbaa !91
  %i.hlw = trunc nuw i64 %i.hlm to i32
  %i.hlx = add i32 %i.hkc, %i.hlw
  %i.hly = zext i32 %i.hlx to i64
  %i.hlz = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hly
  store i64 %i.hlv, ptr %i.hlz, align 8, !tbaa !91
  %i.hma = add nsw i64 %indvars.iv6509, -3        ; 2 uses
  %i.hmb = getelementptr [8 x i8], ptr %12, i64 %i.hlt
  %i.hmc = load i64, ptr %i.hmb, align 8, !tbaa !91
  %i.hmd = trunc nuw i64 %i.hlt to i32
  %i.hme = add i32 %i.hkc, %i.hmd
  %i.hmf = zext i32 %i.hme to i64
  %i.hmg = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hmf
  store i64 %i.hmc, ptr %i.hmg, align 8, !tbaa !91
  %i.hmh = add nsw i64 %indvars.iv6509, -4        ; 2 uses
  %i.hmi = getelementptr [8 x i8], ptr %12, i64 %i.hma
  %i.hmj = load i64, ptr %i.hmi, align 8, !tbaa !91
  %i.hmk = trunc nuw i64 %i.hma to i32
  %i.hml = add i32 %i.hkc, %i.hmk
  %i.hmm = zext i32 %i.hml to i64
  %i.hmn = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hmm
  store i64 %i.hmj, ptr %i.hmn, align 8, !tbaa !91
  %.not46.i1288.wide.3 = icmp eq i64 %i.hmh, 0
  br i1 %.not46.i1288.wide.3, label %.lr.ph5639.preheader, label %scalar.ph10561, !llvm.loop !223

.lr.ph5639.preheader:                             ; preds = %scalar.ph10561.prol.loopexit, %scalar.ph10561, %middle.block10571, %.preheader4027
  %i.hmo = add i32 %i.hjx, %i.hka                 ; 2 uses
  store i32 %i.hmo, ptr %12, align 8, !tbaa !177
  %i.hmp = add nsw i32 %i.hka, -1
  %i.hmq = zext i32 %i.hmp to i64
  %i.hmr = shl nuw nsw i64 %i.hmq, 3
  %i.hms = add nuw nsw i64 %i.hmr, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hcz, i8 0, i64 %i.hms, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291

bb.aul:                                           ; preds = %bb.auk
  %i.hmt = zext i32 %i.hjx to i64                 ; 10 uses
  %i.hmu = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hmt
  store i64 0, ptr %i.hmu, align 8, !tbaa !91
  %.not.i12845623 = icmp eq i32 %i.hjx, 0
  %.pre6824 = zext nneg i32 %i.hjz to i64         ; 5 uses
  br i1 %.not.i12845623, label %._crit_edge5627, label %.lr.ph5626

.lr.ph5626:                                       ; preds = %bb.aul
  %i.hmv = sub nuw nsw i32 64, %i.hjz
  %i.hmw = zext nneg i32 %i.hmv to i64            ; 4 uses
  %min.iters.check10534 = icmp ult i32 %i.hjx, 20
  br i1 %min.iters.check10534, label %scalar.ph10533.preheader, label %vector.scevcheck10528

vector.scevcheck10528:                            ; preds = %.lr.ph5626
  %i.hmx = add nsw i64 %i.hmt, -1                 ; 2 uses
  %i.hmy = add i32 %i.hjx, %i.hka
  %i.hmz = trunc i64 %i.hmx to i32
  %i.hna = icmp ult i32 %i.hmy, %i.hmz
  %i.hnb = icmp ugt i64 %i.hmx, 4294967295
  %i.hnc = or i1 %i.hna, %i.hnb
  br i1 %i.hnc, label %scalar.ph10533.preheader, label %vector.memcheck10529

vector.memcheck10529:                             ; preds = %vector.scevcheck10528
  %i.hnd = shl nuw nsw i64 %i.hmt, 3              ; 2 uses
  %i.hne = add i32 %i.hjx, %i.hka
  %i.hnf = zext i32 %i.hne to i64
  %i.hng = shl nuw nsw i64 %i.hnf, 3              ; 2 uses
  %i.hnh = sub nsw i64 %i.hng, %i.hnd
  %diff.check10530 = icmp ugt i64 %i.hnh, -32
  %i.hni = sub nsw i64 %i.hnd, %i.hng
  %i.hnj = add nsw i64 %i.hni, -9
  %diff.check10531 = icmp ult i64 %i.hnj, 31
  %conflict.rdx10532 = or i1 %diff.check10530, %diff.check10531
  br i1 %conflict.rdx10532, label %scalar.ph10533.preheader, label %vector.ph10535

vector.ph10535:                                   ; preds = %vector.memcheck10529
  %n.vec10537 = and i64 %i.hmt, 4294967292        ; 2 uses
  %i.hnk = and i64 %i.hmt, 3
  %broadcast.splatinsert10538 = insertelement <2 x i64> poison, i64 %i.hmw, i64 0 ; 2 uses
  %broadcast.splatinsert10540 = insertelement <2 x i64> poison, i64 %.pre6824, i64 0 ; 2 uses
  %63 = shufflevector <2 x i64> %broadcast.splatinsert10538, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.hnl = shufflevector <2 x i64> %broadcast.splatinsert10540, <2 x i64> poison, <2 x i32> zeroinitializer
  %64 = shufflevector <2 x i64> %broadcast.splatinsert10538, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.hnm = shufflevector <2 x i64> %broadcast.splatinsert10540, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body10542

vector.body10542:                                 ; preds = %vector.body10542, %vector.ph10535
  %index10543 = phi i64 [ 0, %vector.ph10535 ], [ %index.next10554, %vector.body10542 ] ; 2 uses
  %i.hnn = sub i64 %i.hmt, %index10543            ; 3 uses
  %i.hno = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hnn ; 2 uses
  %i.hnp = getelementptr inbounds i8, ptr %i.hno, i64 -8
  %i.hnq = getelementptr inbounds i8, ptr %i.hno, i64 -24
  %wide.load10544 = load <2 x i64>, ptr %i.hnp, align 8, !tbaa !91
  %wide.load10545 = load <2 x i64>, ptr %i.hnq, align 8, !tbaa !91
  %i.hnr = getelementptr [8 x i8], ptr %12, i64 %i.hnn ; 2 uses
  %i.hns = getelementptr i8, ptr %i.hnr, i64 -8
  %i.hnt = getelementptr i8, ptr %i.hnr, i64 -24
  %wide.load10548 = load <2 x i64>, ptr %i.hns, align 8, !tbaa !91
  %wide.load10549 = load <2 x i64>, ptr %i.hnt, align 8, !tbaa !91
  %65 = trunc nuw i64 %i.hnn to i32
  %66 = add i32 %i.hka, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %67 ; 2 uses
  %69 = getelementptr inbounds i8, ptr %68, i64 -8
  %70 = getelementptr inbounds i8, ptr %68, i64 -24
  %71 = lshr <2 x i64> %wide.load10548, %63
  %72 = shl <2 x i64> %wide.load10544, %i.hnl
  %reverse10552 = or <2 x i64> %71, %72
  %73 = lshr <2 x i64> %wide.load10549, %64
  %74 = shl <2 x i64> %wide.load10545, %i.hnm
  %reverse10553 = or <2 x i64> %73, %74
  store <2 x i64> %reverse10552, ptr %69, align 8, !tbaa !91
  store <2 x i64> %reverse10553, ptr %70, align 8, !tbaa !91
  %index.next10554 = add nuw i64 %index10543, 4   ; 2 uses
  %i.hnu = icmp eq i64 %index.next10554, %n.vec10537
  br i1 %i.hnu, label %middle.block10555, label %vector.body10542, !llvm.loop !224

middle.block10555:                                ; preds = %vector.body10542
  %cmp.n10556 = icmp eq i64 %n.vec10537, %i.hmt
  br i1 %cmp.n10556, label %._crit_edge5627, label %scalar.ph10533.preheader

scalar.ph10533.preheader:                         ; preds = %vector.memcheck10529, %vector.scevcheck10528, %.lr.ph5626, %middle.block10555
  %indvars.iv6504.ph = phi i64 [ %i.hmt, %vector.memcheck10529 ], [ %i.hmt, %vector.scevcheck10528 ], [ %i.hmt, %.lr.ph5626 ], [ %i.hnk, %middle.block10555 ] ; 7 uses
  %xtraiter12345 = and i64 %indvars.iv6504.ph, 1
  %lcmp.mod12346.not = icmp eq i64 %xtraiter12345, 0
  br i1 %lcmp.mod12346.not, label %scalar.ph10533.prol.loopexit, label %scalar.ph10533.prol

scalar.ph10533.prol:                              ; preds = %scalar.ph10533.preheader
  %i.hnv = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %indvars.iv6504.ph
  %i.hnw = load i64, ptr %i.hnv, align 8, !tbaa !91
  %i.hnx = shl i64 %i.hnw, %.pre6824
  %i.hny = add nsw i64 %indvars.iv6504.ph, -1
  %i.hnz = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6504.ph
  %i.hoa = load i64, ptr %i.hnz, align 8, !tbaa !91
  %i.hob = lshr i64 %i.hoa, %i.hmw
  %i.hoc = or i64 %i.hob, %i.hnx
  %i.hod = trunc nuw i64 %indvars.iv6504.ph to i32
  %i.hoe = add i32 %i.hka, %i.hod
  %i.hof = zext i32 %i.hoe to i64
  %i.hog = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hof
  store i64 %i.hoc, ptr %i.hog, align 8, !tbaa !91
  br label %scalar.ph10533.prol.loopexit

scalar.ph10533.prol.loopexit:                     ; preds = %scalar.ph10533.prol, %scalar.ph10533.preheader
  %indvars.iv6504.unr = phi i64 [ %indvars.iv6504.ph, %scalar.ph10533.preheader ], [ %i.hny, %scalar.ph10533.prol ]
  %i.hoh = icmp eq i64 %indvars.iv6504.ph, 1
  br i1 %i.hoh, label %._crit_edge5627, label %scalar.ph10533

scalar.ph10533:                                   ; preds = %scalar.ph10533.prol.loopexit, %scalar.ph10533
  %indvars.iv6504 = phi i64 [ %i.hox, %scalar.ph10533 ], [ %indvars.iv6504.unr, %scalar.ph10533.prol.loopexit ] ; 6 uses
  %i.hoi = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %indvars.iv6504
  %i.hoj = load i64, ptr %i.hoi, align 8, !tbaa !91
  %i.hok = shl i64 %i.hoj, %.pre6824
  %i.hol = add nsw i64 %indvars.iv6504, -1        ; 2 uses
  %i.hom = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6504
  %i.hon = load i64, ptr %i.hom, align 8, !tbaa !91
  %i.hoo = lshr i64 %i.hon, %i.hmw
  %i.hop = or i64 %i.hoo, %i.hok
  %i.hoq = trunc nuw i64 %indvars.iv6504 to i32
  %i.hor = add i32 %i.hka, %i.hoq
  %i.hos = zext i32 %i.hor to i64
  %i.hot = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hos
  store i64 %i.hop, ptr %i.hot, align 8, !tbaa !91
  %i.hou = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6504
  %i.hov = load i64, ptr %i.hou, align 8, !tbaa !91
  %i.how = shl i64 %i.hov, %.pre6824
  %i.hox = add nsw i64 %indvars.iv6504, -2        ; 2 uses
  %i.hoy = getelementptr [8 x i8], ptr %12, i64 %i.hol
  %i.hoz = load i64, ptr %i.hoy, align 8, !tbaa !91
  %i.hpa = lshr i64 %i.hoz, %i.hmw
  %i.hpb = or i64 %i.hpa, %i.how
  %i.hpc = trunc nuw i64 %i.hol to i32
  %i.hpd = add i32 %i.hka, %i.hpc
  %i.hpe = zext i32 %i.hpd to i64
  %i.hpf = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hpe
  store i64 %i.hpb, ptr %i.hpf, align 8, !tbaa !91
  %.not.i1284.wide.1 = icmp eq i64 %i.hox, 0
  br i1 %.not.i1284.wide.1, label %._crit_edge5627, label %scalar.ph10533, !llvm.loop !225

._crit_edge5627:                                  ; preds = %scalar.ph10533.prol.loopexit, %scalar.ph10533, %middle.block10555, %bb.aul
  %i.hpg = load i64, ptr %i.hcz, align 8, !tbaa !91
  %i.hph = shl i64 %i.hpg, %.pre6824
  %i.hpi = zext nneg i32 %i.hka to i64
  %i.hpj = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hpi
  store i64 %i.hph, ptr %i.hpj, align 8, !tbaa !91
  %i.hpk = add i32 %i.hjx, %i.hka                 ; 2 uses
  %i.hpl = zext i32 %i.hpk to i64
  %i.hpm = getelementptr inbounds nuw [8 x i8], ptr %i.hcz, i64 %i.hpl
  %i.hpn = load i64, ptr %i.hpm, align 8, !tbaa !91
  %i.hpo = icmp ne i64 %i.hpn, 0
  %i.hpp = zext i1 %i.hpo to i32
  %i.hpq = add i32 %i.hpk, %i.hpp                 ; 2 uses
  %.not45.i12865628 = icmp eq i32 %i.hka, 0
  br i1 %.not45.i12865628, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291, label %.lr.ph5631.preheader

.lr.ph5631.preheader:                             ; preds = %._crit_edge5627
  %i.hpr = lshr i32 %.sroa.9.0.i, 3
  %i.hps = and i32 %i.hpr, 268435448
  %i.hpt = zext nneg i32 %i.hps to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hcz, i8 0, i64 %i.hpt, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291

bb.aum:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1231
  %i.hpu = sub nsw i32 0, %.sroa.9.0.i            ; 4 uses
  %i.hpv = and i32 %i.hpu, 63                     ; 3 uses
  %i.hpw = lshr i32 %i.hpu, 6                     ; 14 uses
  %i.hpx = load i32, ptr %11, align 8, !tbaa !177 ; 12 uses
  %i.hpy = icmp eq i32 %i.hpv, 0
  br i1 %i.hpy, label %.preheader4030, label %bb.aun, !prof !7

.preheader4030:                                   ; preds = %bb.aum
  %.not46.i12975615 = icmp eq i32 %i.hpx, 0
  br i1 %.not46.i12975615, label %._crit_edge5618, label %.lr.ph5617

.lr.ph5617:                                       ; preds = %.preheader4030
  %i.hpz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.hqa = add nsw i32 %i.hpw, -1                 ; 6 uses
  %i.hqb = zext i32 %i.hpx to i64                 ; 9 uses
  %min.iters.check10516 = icmp ult i32 %i.hpx, 30
  br i1 %min.iters.check10516, label %scalar.ph10515.preheader, label %vector.scevcheck10512

vector.scevcheck10512:                            ; preds = %.lr.ph5617
  %i.hqc = add nsw i64 %i.hqb, -1                 ; 2 uses
  %i.hqd = add i32 %i.hpx, %i.hpw
  %i.hqe = add i32 %i.hqd, -1
  %i.hqf = trunc i64 %i.hqc to i32
  %i.hqg = icmp ult i32 %i.hqe, %i.hqf
  %i.hqh = icmp ugt i64 %i.hqc, 4294967295
  %i.hqi = or i1 %i.hqg, %i.hqh
  br i1 %i.hqi, label %scalar.ph10515.preheader, label %vector.memcheck10513

vector.memcheck10513:                             ; preds = %vector.scevcheck10512
  %i.hqj = add i32 %i.hpx, %i.hpw
  %i.hqk = add i32 %i.hqj, -1
  %i.hql = zext i32 %i.hqk to i64
  %i.hqm = sub nsw i64 %i.hqb, %i.hql
  %i.hqn = shl nsw i64 %i.hqm, 3
  %i.hqo = add nsw i64 %i.hqn, -9
  %diff.check10514 = icmp ult i64 %i.hqo, 31
  br i1 %diff.check10514, label %scalar.ph10515.preheader, label %vector.ph10517

vector.ph10517:                                   ; preds = %vector.memcheck10513
  %n.vec10519 = and i64 %i.hqb, 4294967292        ; 2 uses
  %i.hqp = and i64 %i.hqb, 3
  br label %vector.body10520

vector.body10520:                                 ; preds = %vector.body10520, %vector.ph10517
  %index10521 = phi i64 [ 0, %vector.ph10517 ], [ %index.next10524, %vector.body10520 ] ; 2 uses
  %i.hqq = sub i64 %i.hqb, %index10521            ; 2 uses
  %i.hqr = getelementptr [8 x i8], ptr %11, i64 %i.hqq ; 2 uses
  %i.hqs = getelementptr i8, ptr %i.hqr, i64 -8
  %i.hqt = getelementptr i8, ptr %i.hqr, i64 -24
  %wide.load10522 = load <2 x i64>, ptr %i.hqs, align 8, !tbaa !91
  %wide.load10523 = load <2 x i64>, ptr %i.hqt, align 8, !tbaa !91
  %i.hqu = trunc nuw i64 %i.hqq to i32
  %i.hqv = add i32 %i.hqa, %i.hqu
  %i.hqw = zext i32 %i.hqv to i64
  %i.hqx = getelementptr inbounds nuw [8 x i8], ptr %i.hpz, i64 %i.hqw ; 2 uses
  %i.hqy = getelementptr inbounds i8, ptr %i.hqx, i64 -8
  %i.hqz = getelementptr inbounds i8, ptr %i.hqx, i64 -24
  store <2 x i64> %wide.load10522, ptr %i.hqy, align 8, !tbaa !91
  store <2 x i64> %wide.load10523, ptr %i.hqz, align 8, !tbaa !91
  %index.next10524 = add nuw i64 %index10521, 4   ; 2 uses
  %i.hra = icmp eq i64 %index.next10524, %n.vec10519
  br i1 %i.hra, label %middle.block10525, label %vector.body10520, !llvm.loop !226

middle.block10525:                                ; preds = %vector.body10520
  %cmp.n10526 = icmp eq i64 %n.vec10519, %i.hqb
  br i1 %cmp.n10526, label %._crit_edge5618, label %scalar.ph10515.preheader

scalar.ph10515.preheader:                         ; preds = %vector.memcheck10513, %vector.scevcheck10512, %.lr.ph5617, %middle.block10525
  %indvars.iv6499.ph = phi i64 [ %i.hqb, %vector.memcheck10513 ], [ %i.hqb, %vector.scevcheck10512 ], [ %i.hqb, %.lr.ph5617 ], [ %i.hqp, %middle.block10525 ] ; 4 uses
  %i.hrb = add nsw i64 %indvars.iv6499.ph, -1
  %xtraiter12342 = and i64 %indvars.iv6499.ph, 3  ; 2 uses
  %lcmp.mod12343.not = icmp eq i64 %xtraiter12342, 0
  br i1 %lcmp.mod12343.not, label %scalar.ph10515.prol.loopexit, label %scalar.ph10515.prol

scalar.ph10515.prol:                              ; preds = %scalar.ph10515.preheader, %scalar.ph10515.prol
  %indvars.iv6499.prol = phi i64 [ %i.hrc, %scalar.ph10515.prol ], [ %indvars.iv6499.ph, %scalar.ph10515.preheader ] ; 3 uses
  %prol.iter12344 = phi i64 [ %prol.iter12344.next, %scalar.ph10515.prol ], [ 0, %scalar.ph10515.preheader ]
  %i.hrc = add nsw i64 %indvars.iv6499.prol, -1   ; 2 uses
  %i.hrd = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6499.prol
  %i.hre = load i64, ptr %i.hrd, align 8, !tbaa !91
  %i.hrf = trunc nuw i64 %indvars.iv6499.prol to i32
  %i.hrg = add i32 %i.hqa, %i.hrf
  %i.hrh = zext i32 %i.hrg to i64
  %i.hri = getelementptr inbounds nuw [8 x i8], ptr %i.hpz, i64 %i.hrh
  store i64 %i.hre, ptr %i.hri, align 8, !tbaa !91
  %prol.iter12344.next = add i64 %prol.iter12344, 1 ; 2 uses
  %prol.iter12344.cmp.not = icmp eq i64 %prol.iter12344.next, %xtraiter12342
  br i1 %prol.iter12344.cmp.not, label %scalar.ph10515.prol.loopexit, label %scalar.ph10515.prol, !llvm.loop !227

scalar.ph10515.prol.loopexit:                     ; preds = %scalar.ph10515.prol, %scalar.ph10515.preheader
  %indvars.iv6499.unr = phi i64 [ %indvars.iv6499.ph, %scalar.ph10515.preheader ], [ %i.hrc, %scalar.ph10515.prol ]
  %i.hrj = icmp ult i64 %i.hrb, 3
  br i1 %i.hrj, label %._crit_edge5618, label %scalar.ph10515

scalar.ph10515:                                   ; preds = %scalar.ph10515.prol.loopexit, %scalar.ph10515
  %indvars.iv6499 = phi i64 [ %i.hsf, %scalar.ph10515 ], [ %indvars.iv6499.unr, %scalar.ph10515.prol.loopexit ] ; 6 uses
  %i.hrk = add nsw i64 %indvars.iv6499, -1        ; 2 uses
  %i.hrl = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6499
  %i.hrm = load i64, ptr %i.hrl, align 8, !tbaa !91
  %i.hrn = trunc nuw i64 %indvars.iv6499 to i32
  %i.hro = add i32 %i.hqa, %i.hrn
  %i.hrp = zext i32 %i.hro to i64
  %i.hrq = getelementptr inbounds nuw [8 x i8], ptr %i.hpz, i64 %i.hrp
  store i64 %i.hrm, ptr %i.hrq, align 8, !tbaa !91
  %i.hrr = add nsw i64 %indvars.iv6499, -2        ; 2 uses
  %i.hrs = getelementptr [8 x i8], ptr %11, i64 %i.hrk
  %i.hrt = load i64, ptr %i.hrs, align 8, !tbaa !91
  %i.hru = trunc nuw i64 %i.hrk to i32
  %i.hrv = add i32 %i.hqa, %i.hru
  %i.hrw = zext i32 %i.hrv to i64
  %i.hrx = getelementptr inbounds nuw [8 x i8], ptr %i.hpz, i64 %i.hrw
  store i64 %i.hrt, ptr %i.hrx, align 8, !tbaa !91
  %i.hry = add nsw i64 %indvars.iv6499, -3        ; 2 uses
  %i.hrz = getelementptr [8 x i8], ptr %11, i64 %i.hrr
  %i.hsa = load i64, ptr %i.hrz, align 8, !tbaa !91
  %i.hsb = trunc nuw i64 %i.hrr to i32
  %i.hsc = add i32 %i.hqa, %i.hsb
  %i.hsd = zext i32 %i.hsc to i64
  %i.hse = getelementptr inbounds nuw [8 x i8], ptr %i.hpz, i64 %i.hsd
  store i64 %i.hsa, ptr %i.hse, align 8, !tbaa !91
  %i.hsf = add nsw i64 %indvars.iv6499, -4        ; 2 uses
  %i.hsg = getelementptr [8 x i8], ptr %11, i64 %i.hry
  %i.hsh = load i64, ptr %i.hsg, align 8, !tbaa !91
  %i.hsi = trunc nuw i64 %i.hry to i32
  %i.hsj = add i32 %i.hqa, %i.hsi
  %i.hsk = zext i32 %i.hsj to i64
  %i.hsl = getelementptr inbounds nuw [8 x i8], ptr %i.hpz, i64 %i.hsk
  store i64 %i.hsh, ptr %i.hsl, align 8, !tbaa !91
  %.not46.i1297.wide.3 = icmp eq i64 %i.hsf, 0
  br i1 %.not46.i1297.wide.3, label %._crit_edge5618, label %scalar.ph10515, !llvm.loop !228

._crit_edge5618:                                  ; preds = %scalar.ph10515.prol.loopexit, %scalar.ph10515, %middle.block10525, %.preheader4030
  %i.hsm = add i32 %i.hpx, %i.hpw
  store i32 %i.hsm, ptr %11, align 8, !tbaa !177
  %.not47.i12995619 = icmp eq i32 %i.hpw, 0
  br i1 %.not47.i12995619, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291, label %.lr.ph5622

.lr.ph5622:                                       ; preds = %._crit_edge5618
  %i.hsn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hso = lshr exact i32 %i.hpu, 3
  %i.hsp = zext nneg i32 %i.hso to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hsn, i8 0, i64 %i.hsp, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291

bb.aun:                                           ; preds = %bb.aum
  %i.hsq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 12 uses
  %i.hsr = zext i32 %i.hpx to i64                 ; 10 uses
  %i.hss = getelementptr inbounds nuw [8 x i8], ptr %i.hsq, i64 %i.hsr
  store i64 0, ptr %i.hss, align 8, !tbaa !91
  %.not.i12935606 = icmp eq i32 %i.hpx, 0
  %.pre6826 = zext nneg i32 %i.hpv to i64         ; 5 uses
  br i1 %.not.i12935606, label %._crit_edge5610, label %.lr.ph5609

.lr.ph5609:                                       ; preds = %bb.aun
  %i.hst = sub nuw nsw i32 64, %i.hpv
  %i.hsu = zext nneg i32 %i.hst to i64            ; 4 uses
  %min.iters.check10488 = icmp ult i32 %i.hpx, 20
  br i1 %min.iters.check10488, label %scalar.ph10487.preheader, label %vector.scevcheck10482

vector.scevcheck10482:                            ; preds = %.lr.ph5609
  %i.hsv = add nsw i64 %i.hsr, -1                 ; 2 uses
  %i.hsw = add i32 %i.hpx, %i.hpw
  %i.hsx = trunc i64 %i.hsv to i32
  %i.hsy = icmp ult i32 %i.hsw, %i.hsx
  %i.hsz = icmp ugt i64 %i.hsv, 4294967295
  %i.hta = or i1 %i.hsy, %i.hsz
  br i1 %i.hta, label %scalar.ph10487.preheader, label %vector.memcheck10483

vector.memcheck10483:                             ; preds = %vector.scevcheck10482
  %i.htb = shl nuw nsw i64 %i.hsr, 3              ; 2 uses
  %i.htc = add i32 %i.hpx, %i.hpw
  %i.htd = zext i32 %i.htc to i64
  %i.hte = shl nuw nsw i64 %i.htd, 3              ; 2 uses
  %i.htf = sub nsw i64 %i.hte, %i.htb
  %diff.check10484 = icmp ugt i64 %i.htf, -32
  %i.htg = sub nsw i64 %i.htb, %i.hte
  %i.hth = add nsw i64 %i.htg, -9
  %diff.check10485 = icmp ult i64 %i.hth, 31
  %conflict.rdx10486 = or i1 %diff.check10484, %diff.check10485
  br i1 %conflict.rdx10486, label %scalar.ph10487.preheader, label %vector.ph10489

vector.ph10489:                                   ; preds = %vector.memcheck10483
  %n.vec10491 = and i64 %i.hsr, 4294967292        ; 2 uses
  %i.hti = and i64 %i.hsr, 3
  %broadcast.splatinsert10492 = insertelement <2 x i64> poison, i64 %i.hsu, i64 0 ; 2 uses
  %broadcast.splatinsert10494 = insertelement <2 x i64> poison, i64 %.pre6826, i64 0 ; 2 uses
  %75 = shufflevector <2 x i64> %broadcast.splatinsert10492, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.htj = shufflevector <2 x i64> %broadcast.splatinsert10494, <2 x i64> poison, <2 x i32> zeroinitializer
  %76 = shufflevector <2 x i64> %broadcast.splatinsert10492, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.htk = shufflevector <2 x i64> %broadcast.splatinsert10494, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body10496

vector.body10496:                                 ; preds = %vector.body10496, %vector.ph10489
  %index10497 = phi i64 [ 0, %vector.ph10489 ], [ %index.next10508, %vector.body10496 ] ; 2 uses
  %i.htl = sub i64 %i.hsr, %index10497            ; 3 uses
  %i.htm = getelementptr inbounds nuw [8 x i8], ptr %i.hsq, i64 %i.htl ; 2 uses
  %i.htn = getelementptr inbounds i8, ptr %i.htm, i64 -8
  %i.hto = getelementptr inbounds i8, ptr %i.htm, i64 -24
  %wide.load10498 = load <2 x i64>, ptr %i.htn, align 8, !tbaa !91
  %wide.load10499 = load <2 x i64>, ptr %i.hto, align 8, !tbaa !91
  %i.htp = getelementptr [8 x i8], ptr %11, i64 %i.htl ; 2 uses
  %i.htq = getelementptr i8, ptr %i.htp, i64 -8
  %i.htr = getelementptr i8, ptr %i.htp, i64 -24
  %wide.load10502 = load <2 x i64>, ptr %i.htq, align 8, !tbaa !91
  %wide.load10503 = load <2 x i64>, ptr %i.htr, align 8, !tbaa !91
  %77 = trunc nuw i64 %i.htl to i32
  %78 = add i32 %i.hpw, %77
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw [8 x i8], ptr %i.hsq, i64 %79 ; 2 uses
  %81 = getelementptr inbounds i8, ptr %80, i64 -8
  %82 = getelementptr inbounds i8, ptr %80, i64 -24
  %83 = lshr <2 x i64> %wide.load10502, %75
  %84 = shl <2 x i64> %wide.load10498, %i.htj
  %reverse10506 = or <2 x i64> %83, %84
  %85 = lshr <2 x i64> %wide.load10503, %76
  %86 = shl <2 x i64> %wide.load10499, %i.htk
  %reverse10507 = or <2 x i64> %85, %86
  store <2 x i64> %reverse10506, ptr %81, align 8, !tbaa !91
  store <2 x i64> %reverse10507, ptr %82, align 8, !tbaa !91
  %index.next10508 = add nuw i64 %index10497, 4   ; 2 uses
  %i.hts = icmp eq i64 %index.next10508, %n.vec10491
  br i1 %i.hts, label %middle.block10509, label %vector.body10496, !llvm.loop !229

middle.block10509:                                ; preds = %vector.body10496
  %cmp.n10510 = icmp eq i64 %n.vec10491, %i.hsr
  br i1 %cmp.n10510, label %._crit_edge5610, label %scalar.ph10487.preheader

scalar.ph10487.preheader:                         ; preds = %vector.memcheck10483, %vector.scevcheck10482, %.lr.ph5609, %middle.block10509
  %indvars.iv6494.ph = phi i64 [ %i.hsr, %vector.memcheck10483 ], [ %i.hsr, %vector.scevcheck10482 ], [ %i.hsr, %.lr.ph5609 ], [ %i.hti, %middle.block10509 ] ; 7 uses
  %xtraiter12339 = and i64 %indvars.iv6494.ph, 1
  %lcmp.mod12340.not = icmp eq i64 %xtraiter12339, 0
  br i1 %lcmp.mod12340.not, label %scalar.ph10487.prol.loopexit, label %scalar.ph10487.prol

scalar.ph10487.prol:                              ; preds = %scalar.ph10487.preheader
  %i.htt = getelementptr inbounds nuw [8 x i8], ptr %i.hsq, i64 %indvars.iv6494.ph
  %i.htu = load i64, ptr %i.htt, align 8, !tbaa !91
  %i.htv = shl i64 %i.htu, %.pre6826
  %i.htw = add nsw i64 %indvars.iv6494.ph, -1
  %i.htx = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6494.ph
  %i.hty = load i64, ptr %i.htx, align 8, !tbaa !91
  %i.htz = lshr i64 %i.hty, %i.hsu
  %i.hua = or i64 %i.htz, %i.htv
  %i.hub = trunc nuw i64 %indvars.iv6494.ph to i32
  %i.huc = add i32 %i.hpw, %i.hub
  %i.hud = zext i32 %i.huc to i64
  %i.hue = getelementptr inbounds nuw [8 x i8], ptr %i.hsq, i64 %i.hud
  store i64 %i.hua, ptr %i.hue, align 8, !tbaa !91
  br label %scalar.ph10487.prol.loopexit

scalar.ph10487.prol.loopexit:                     ; preds = %scalar.ph10487.prol, %scalar.ph10487.preheader
  %indvars.iv6494.unr = phi i64 [ %indvars.iv6494.ph, %scalar.ph10487.preheader ], [ %i.htw, %scalar.ph10487.prol ]
  %i.huf = icmp eq i64 %indvars.iv6494.ph, 1
  br i1 %i.huf, label %._crit_edge5610, label %scalar.ph10487

scalar.ph10487:                                   ; preds = %scalar.ph10487.prol.loopexit, %scalar.ph10487
  %indvars.iv6494 = phi i64 [ %i.huv, %scalar.ph10487 ], [ %indvars.iv6494.unr, %scalar.ph10487.prol.loopexit ] ; 6 uses
  %i.hug = getelementptr inbounds nuw [8 x i8], ptr %i.hsq, i64 %indvars.iv6494
  %i.huh = load i64, ptr %i.hug, align 8, !tbaa !91
  %i.hui = shl i64 %i.huh, %.pre6826
  %i.huj = add nsw i64 %indvars.iv6494, -1        ; 2 uses
  %i.huk = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6494
  %i.hul = load i64, ptr %i.huk, align 8, !tbaa !91
  %i.hum = lshr i64 %i.hul, %i.hsu
  %i.hun = or i64 %i.hum, %i.hui
  %i.huo = trunc nuw i64 %indvars.iv6494 to i32
  %i.hup = add i32 %i.hpw, %i.huo
  %i.huq = zext i32 %i.hup to i64
  %i.hur = getelementptr inbounds nuw [8 x i8], ptr %i.hsq, i64 %i.huq
  store i64 %i.hun, ptr %i.hur, align 8, !tbaa !91
  %i.hus = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6494
  %i.hut = load i64, ptr %i.hus, align 8, !tbaa !91
  %i.huu = shl i64 %i.hut, %.pre6826
  %i.huv = add nsw i64 %indvars.iv6494, -2        ; 2 uses
  %i.huw = getelementptr [8 x i8], ptr %11, i64 %i.huj
  %i.hux = load i64, ptr %i.huw, align 8, !tbaa !91
  %i.huy = lshr i64 %i.hux, %i.hsu
  %i.huz = or i64 %i.huy, %i.huu
  %i.hva = trunc nuw i64 %i.huj to i32
  %i.hvb = add i32 %i.hpw, %i.hva
  %i.hvc = zext i32 %i.hvb to i64
  %i.hvd = getelementptr inbounds nuw [8 x i8], ptr %i.hsq, i64 %i.hvc
  store i64 %i.huz, ptr %i.hvd, align 8, !tbaa !91
  %.not.i1293.wide.1 = icmp eq i64 %i.huv, 0
  br i1 %.not.i1293.wide.1, label %._crit_edge5610, label %scalar.ph10487, !llvm.loop !230

._crit_edge5610:                                  ; preds = %scalar.ph10487.prol.loopexit, %scalar.ph10487, %middle.block10509, %bb.aun
  %i.hve = load i64, ptr %i.hsq, align 8, !tbaa !91
  %i.hvf = shl i64 %i.hve, %.pre6826
  %i.hvg = zext nneg i32 %i.hpw to i64
  %i.hvh = getelementptr inbounds nuw [8 x i8], ptr %i.hsq, i64 %i.hvg
  store i64 %i.hvf, ptr %i.hvh, align 8, !tbaa !91
  %i.hvi = add i32 %i.hpx, %i.hpw                 ; 2 uses
  %i.hvj = zext i32 %i.hvi to i64
  %i.hvk = getelementptr inbounds nuw [8 x i8], ptr %i.hsq, i64 %i.hvj
  %i.hvl = load i64, ptr %i.hvk, align 8, !tbaa !91
  %i.hvm = icmp ne i64 %i.hvl, 0
  %i.hvn = zext i1 %i.hvm to i32
  %i.hvo = add i32 %i.hvi, %i.hvn
  store i32 %i.hvo, ptr %11, align 8, !tbaa !177
  %.not45.i12955611 = icmp eq i32 %i.hpw, 0
  br i1 %.not45.i12955611, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291, label %.lr.ph5614.preheader

.lr.ph5614.preheader:                             ; preds = %._crit_edge5610
  %i.hvp = lshr i32 %i.hpu, 3
  %i.hvq = and i32 %i.hvp, 536870904
  %i.hvr = zext nneg i32 %i.hvq to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hsq, i8 0, i64 %i.hvr, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291: ; preds = %.lr.ph5614.preheader, %.lr.ph5622, %.lr.ph5631.preheader, %.lr.ph5639.preheader, %._crit_edge5610, %._crit_edge5618, %._crit_edge5627
  %i.hvs = phi i32 [ %i.hpq, %._crit_edge5627 ], [ %i.hjx, %.lr.ph5614.preheader ], [ %i.hjx, %.lr.ph5622 ], [ %i.hpq, %.lr.ph5631.preheader ], [ %i.hmo, %.lr.ph5639.preheader ], [ %i.hjx, %._crit_edge5610 ], [ %i.hjx, %._crit_edge5618 ] ; 2 uses
  %i.hvt = load i32, ptr %11, align 8, !tbaa !177 ; 4 uses
  %i.hvu = icmp ult i32 %i.hvt, %i.hvs
  br i1 %i.hvu, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread, label %bb.auo

bb.auo:                                           ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291
  %i.hvv = icmp ugt i32 %i.hvt, %i.hvs
  br i1 %i.hvv, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread, label %.preheader4026

.preheader4026:                                   ; preds = %bb.auo
  %.not.i132610211 = icmp eq i32 %i.hvt, 0
  br i1 %.not.i132610211, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386, label %.lr.ph10214

.lr.ph10214:                                      ; preds = %.preheader4026
  %i.hvw = zext i32 %i.hvt to i64
  br label %bb.auq

bb.aup:                                           ; preds = %bb.auq
  %i.hvx = add nsw i64 %indvars.iv651210212, -1   ; 2 uses
  %.not.i1326 = icmp eq i64 %i.hvx, 0
  br i1 %.not.i1326, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386, label %bb.auq, !llvm.loop !191

bb.auq:                                           ; preds = %.lr.ph10214, %bb.aup
  %.0.i132510213 = phi i32 [ undef, %.lr.ph10214 ], [ %.1.i1330, %bb.aup ]
  %indvars.iv651210212 = phi i64 [ %i.hvw, %.lr.ph10214 ], [ %i.hvx, %bb.aup ] ; 3 uses
  %i.hvy = getelementptr [8 x i8], ptr %11, i64 %indvars.iv651210212
  %i.hvz = load i64, ptr %i.hvy, align 8, !tbaa !91 ; 3 uses
  %i.hwa = getelementptr [8 x i8], ptr %12, i64 %indvars.iv651210212
  %i.hwb = load i64, ptr %i.hwa, align 8, !tbaa !91 ; 3 uses
  %.not3729 = icmp ult i64 %i.hvz, %i.hwb
  %.not3730 = icmp ugt i64 %i.hvz, %i.hwb
  %..0.i1328 = select i1 %.not3730, i32 1, i32 %.0.i132510213
  %cond.i1329 = icmp eq i64 %i.hvz, %i.hwb
  %.1.i1330 = select i1 %.not3729, i32 -1, i32 %..0.i1328 ; 3 uses
  br i1 %cond.i1329, label %bb.aup, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332: ; preds = %bb.auq
  %.not680.i = icmp eq i32 %.1.i1330, 0
  br i1 %.not680.i, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291, %bb.auo, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332
  %.2.i13313385 = phi i32 [ %.1.i1330, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332 ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291 ], [ 1, %bb.auo ]
  %i.hwc = icmp sgt i32 %.2.i13313385, 0
  %i.hwd = zext i1 %i.hwc to i64
  br label %bb.aur

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386: ; preds = %bb.aup, %.preheader4026, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332
  %i.hwe = and i64 %.0.i1210.ph, 1
  br label %bb.aur

bb.aur:                                           ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread
  %.pn.i230 = phi i64 [ %i.hwd, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread ], [ %i.hwe, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386 ]
  %.0604.i = add nuw nsw i64 %.pn.i230, %.0.i1210.ph ; 2 uses
  %i.hwf = icmp eq i64 %.0604.i, 9218868437227405312
  br i1 %i.hwf, label %bb.aus, label %bb.auz, !prof !7

bb.aus:                                           ; preds = %bb.aur
  br i1 %.not3683, label %bb.auw, label %bb.aut, !prof !24

bb.aut:                                           ; preds = %bb.aus
  %i.hwg = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not681.i = icmp eq ptr %i.hwg, null
  br i1 %.not681.i, label %bb.auv, label %bb.auu

bb.auu:                                           ; preds = %bb.aut
  store i8 0, ptr %i.hwg, align 1, !tbaa !81
  br label %bb.auv

bb.auv:                                           ; preds = %bb.auu, %bb.aut
  %i.hwh = ptrtoint ptr %.73181 to i64
  %i.hwi = ptrtoint ptr %i.fze to i64
  %i.hwj = sub i64 %i.hwh, %i.hwi
  %i.hwk = shl i64 %i.hwj, 8
  %i.hwl = or disjoint i64 %i.hwk, 1
  store i64 %i.hwl, ptr %.5496.i, align 8, !tbaa !79
  %i.hwm = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store ptr %i.fze, ptr %i.hwm, align 8, !tbaa !81
  store ptr %.73181, ptr %i.g, align 8, !tbaa !92
  br label %bb.ava

bb.auw:                                           ; preds = %bb.aus
  br i1 %.not3680, label %bb.auy, label %bb.aux, !prof !24

bb.aux:                                           ; preds = %bb.auw
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.hwn = select i1 %i.fzj, i64 -4503599627370496, i64 9218868437227405312
  %i.hwo = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.hwn, ptr %i.hwo, align 8, !tbaa !81
  br label %bb.ava

bb.auy:                                           ; preds = %bb.auw
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  store ptr %i.fze, ptr %i.e, align 8, !tbaa !92
  br label %.thread3476

bb.auz:                                           ; preds = %bb.aur
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.hwp = select i1 %i.fzj, i64 -9223372036854775808, i64 0
  %i.hwq = or disjoint i64 %.0604.i, %i.hwp
  %i.hwr = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.hwq, ptr %i.hwr, align 8, !tbaa !81
  br label %bb.ava

.thread3476:                                      ; preds = %bb.ats, %bb.auy
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.btl

end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  br i1 %.not19.i1363, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1225, label %bb.bqo

bb.bqo:                                           ; preds = %._crit_edge5342
  %i.lts = add i32 %i.lsl, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1225.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1225.sink.split: ; preds = %bb.bqh, %bb.bqo
  %.sink8510 = phi i32 [ %i.lsl, %bb.bqo ], [ %i.lot, %bb.bqh ]
  %i.ltt = phi ptr [ %10, %bb.bqo ], [ %9, %bb.bqh ]
  %.lcssa7606.sink = phi i64 [ %.lcssa11006, %bb.bqo ], [ %.lcssa10998, %bb.bqh ]
  %.ph = phi i32 [ %i.lts, %bb.bqo ], [ 1, %bb.bqh ]
  %i.ltu = getelementptr inbounds nuw i8, ptr %i.ltt, i64 8
  %i.ltv = zext i32 %.sink8510 to i64
  %i.ltw = getelementptr inbounds nuw [8 x i8], ptr %i.ltu, i64 %i.ltv
  store i64 %.lcssa7606.sink, ptr %i.ltw, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1225

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1225: ; preds = %bb.bqm, %bb.bqf, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1225.sink.split, %._crit_edge5334, %._crit_edge5367, %._crit_edge5328, %._crit_edge5342, %._crit_edge5361, %._crit_edge5375
  %i.ltx = phi i32 [ %i.lrz, %._crit_edge5328 ], [ %i.lsl, %._crit_edge5342 ], [ %i.lsl, %._crit_edge5334 ], [ 1, %._crit_edge5361 ], [ 1, %._crit_edge5375 ], [ 1, %bb.bqf ], [ %.ph, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1225.sink.split ], [ 1, %._crit_edge5367 ], [ %i.lsg, %bb.bqm ] ; 16 uses
  %i.lty = icmp sgt i32 %.sroa.9.0.i282, 0
  br i1 %i.lty, label %bb.bqp, label %bb.bqr

bb.bqp:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1225
  %i.ltz = and i32 %.sroa.9.0.i282, 63            ; 3 uses
  %i.lua = lshr i32 %.sroa.9.0.i282, 6            ; 14 uses
  %i.lub = icmp eq i32 %i.ltz, 0
  br i1 %i.lub, label %.preheader4067, label %bb.bqq, !prof !7

.preheader4067:                                   ; preds = %bb.bqp
  %.not46.i12705403 = icmp eq i32 %i.ltx, 0
  br i1 %.not46.i12705403, label %.lr.ph5410.preheader, label %.lr.ph5405

.lr.ph5405:                                       ; preds = %.preheader4067
  %i.luc = add nsw i32 %i.lua, -1                 ; 6 uses
  %i.lud = zext i32 %i.ltx to i64                 ; 9 uses
  %min.iters.check10470 = icmp ult i32 %i.ltx, 30
  br i1 %min.iters.check10470, label %scalar.ph10469.preheader, label %vector.scevcheck10466

vector.scevcheck10466:                            ; preds = %.lr.ph5405
  %i.lue = add nsw i64 %i.lud, -1                 ; 2 uses
  %i.luf = add i32 %i.ltx, %i.lua
  %i.lug = add i32 %i.luf, -1
  %i.luh = trunc i64 %i.lue to i32
  %i.lui = icmp ult i32 %i.lug, %i.luh
  %i.luj = icmp ugt i64 %i.lue, 4294967295
  %i.luk = or i1 %i.lui, %i.luj
  br i1 %i.luk, label %scalar.ph10469.preheader, label %vector.memcheck10467

vector.memcheck10467:                             ; preds = %vector.scevcheck10466
  %i.lul = add i32 %i.ltx, %i.lua
  %i.lum = add i32 %i.lul, -1
  %i.lun = zext i32 %i.lum to i64
  %i.luo = sub nsw i64 %i.lud, %i.lun
  %i.lup = shl nsw i64 %i.luo, 3
  %i.luq = add nsw i64 %i.lup, -9
  %diff.check10468 = icmp ult i64 %i.luq, 31
  br i1 %diff.check10468, label %scalar.ph10469.preheader, label %vector.ph10471

vector.ph10471:                                   ; preds = %vector.memcheck10467
  %n.vec10473 = and i64 %i.lud, 4294967292        ; 2 uses
  %i.lur = and i64 %i.lud, 3
  br label %vector.body10474

vector.body10474:                                 ; preds = %vector.body10474, %vector.ph10471
  %index10475 = phi i64 [ 0, %vector.ph10471 ], [ %index.next10478, %vector.body10474 ] ; 2 uses
  %i.lus = sub i64 %i.lud, %index10475            ; 2 uses
  %i.lut = getelementptr [8 x i8], ptr %10, i64 %i.lus ; 2 uses
  %i.luu = getelementptr i8, ptr %i.lut, i64 -8
  %i.luv = getelementptr i8, ptr %i.lut, i64 -24
  %wide.load10476 = load <2 x i64>, ptr %i.luu, align 8, !tbaa !91
  %wide.load10477 = load <2 x i64>, ptr %i.luv, align 8, !tbaa !91
  %i.luw = trunc nuw i64 %i.lus to i32
  %i.lux = add i32 %i.luc, %i.luw
  %i.luy = zext i32 %i.lux to i64
  %i.luz = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.luy ; 2 uses
  %i.lva = getelementptr inbounds i8, ptr %i.luz, i64 -8
  %i.lvb = getelementptr inbounds i8, ptr %i.luz, i64 -24
  store <2 x i64> %wide.load10476, ptr %i.lva, align 8, !tbaa !91
  store <2 x i64> %wide.load10477, ptr %i.lvb, align 8, !tbaa !91
  %index.next10478 = add nuw i64 %index10475, 4   ; 2 uses
  %i.lvc = icmp eq i64 %index.next10478, %n.vec10473
  br i1 %i.lvc, label %middle.block10479, label %vector.body10474, !llvm.loop !237

middle.block10479:                                ; preds = %vector.body10474
  %cmp.n10480 = icmp eq i64 %n.vec10473, %i.lud
  br i1 %cmp.n10480, label %.lr.ph5410.preheader, label %scalar.ph10469.preheader

scalar.ph10469.preheader:                         ; preds = %vector.memcheck10467, %vector.scevcheck10466, %.lr.ph5405, %middle.block10479
  %indvars.iv6448.ph = phi i64 [ %i.lud, %vector.memcheck10467 ], [ %i.lud, %vector.scevcheck10466 ], [ %i.lud, %.lr.ph5405 ], [ %i.lur, %middle.block10479 ] ; 4 uses
  %i.lvd = add nsw i64 %indvars.iv6448.ph, -1
  %xtraiter12306 = and i64 %indvars.iv6448.ph, 3  ; 2 uses
  %lcmp.mod12307.not = icmp eq i64 %xtraiter12306, 0
  br i1 %lcmp.mod12307.not, label %scalar.ph10469.prol.loopexit, label %scalar.ph10469.prol

scalar.ph10469.prol:                              ; preds = %scalar.ph10469.preheader, %scalar.ph10469.prol
  %indvars.iv6448.prol = phi i64 [ %i.lve, %scalar.ph10469.prol ], [ %indvars.iv6448.ph, %scalar.ph10469.preheader ] ; 3 uses
  %prol.iter12308 = phi i64 [ %prol.iter12308.next, %scalar.ph10469.prol ], [ 0, %scalar.ph10469.preheader ]
  %i.lve = add nsw i64 %indvars.iv6448.prol, -1   ; 2 uses
  %i.lvf = getelementptr [8 x i8], ptr %10, i64 %indvars.iv6448.prol
  %i.lvg = load i64, ptr %i.lvf, align 8, !tbaa !91
  %i.lvh = trunc nuw i64 %indvars.iv6448.prol to i32
  %i.lvi = add i32 %i.luc, %i.lvh
  %i.lvj = zext i32 %i.lvi to i64
  %i.lvk = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lvj
  store i64 %i.lvg, ptr %i.lvk, align 8, !tbaa !91
  %prol.iter12308.next = add i64 %prol.iter12308, 1 ; 2 uses
  %prol.iter12308.cmp.not = icmp eq i64 %prol.iter12308.next, %xtraiter12306
  br i1 %prol.iter12308.cmp.not, label %scalar.ph10469.prol.loopexit, label %scalar.ph10469.prol, !llvm.loop !238

scalar.ph10469.prol.loopexit:                     ; preds = %scalar.ph10469.prol, %scalar.ph10469.preheader
  %indvars.iv6448.unr = phi i64 [ %indvars.iv6448.ph, %scalar.ph10469.preheader ], [ %i.lve, %scalar.ph10469.prol ]
  %i.lvl = icmp ult i64 %i.lvd, 3
  br i1 %i.lvl, label %.lr.ph5410.preheader, label %scalar.ph10469

scalar.ph10469:                                   ; preds = %scalar.ph10469.prol.loopexit, %scalar.ph10469
  %indvars.iv6448 = phi i64 [ %i.lwh, %scalar.ph10469 ], [ %indvars.iv6448.unr, %scalar.ph10469.prol.loopexit ] ; 6 uses
  %i.lvm = add nsw i64 %indvars.iv6448, -1        ; 2 uses
  %i.lvn = getelementptr [8 x i8], ptr %10, i64 %indvars.iv6448
  %i.lvo = load i64, ptr %i.lvn, align 8, !tbaa !91
  %i.lvp = trunc nuw i64 %indvars.iv6448 to i32
  %i.lvq = add i32 %i.luc, %i.lvp
  %i.lvr = zext i32 %i.lvq to i64
  %i.lvs = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lvr
  store i64 %i.lvo, ptr %i.lvs, align 8, !tbaa !91
  %i.lvt = add nsw i64 %indvars.iv6448, -2        ; 2 uses
  %i.lvu = getelementptr [8 x i8], ptr %10, i64 %i.lvm
  %i.lvv = load i64, ptr %i.lvu, align 8, !tbaa !91
  %i.lvw = trunc nuw i64 %i.lvm to i32
  %i.lvx = add i32 %i.luc, %i.lvw
  %i.lvy = zext i32 %i.lvx to i64
  %i.lvz = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lvy
  store i64 %i.lvv, ptr %i.lvz, align 8, !tbaa !91
  %i.lwa = add nsw i64 %indvars.iv6448, -3        ; 2 uses
  %i.lwb = getelementptr [8 x i8], ptr %10, i64 %i.lvt
  %i.lwc = load i64, ptr %i.lwb, align 8, !tbaa !91
  %i.lwd = trunc nuw i64 %i.lvt to i32
  %i.lwe = add i32 %i.luc, %i.lwd
  %i.lwf = zext i32 %i.lwe to i64
  %i.lwg = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lwf
  store i64 %i.lwc, ptr %i.lwg, align 8, !tbaa !91
  %i.lwh = add nsw i64 %indvars.iv6448, -4        ; 2 uses
  %i.lwi = getelementptr [8 x i8], ptr %10, i64 %i.lwa
  %i.lwj = load i64, ptr %i.lwi, align 8, !tbaa !91
  %i.lwk = trunc nuw i64 %i.lwa to i32
  %i.lwl = add i32 %i.luc, %i.lwk
  %i.lwm = zext i32 %i.lwl to i64
  %i.lwn = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lwm
  store i64 %i.lwj, ptr %i.lwn, align 8, !tbaa !91
  %.not46.i1270.wide.3 = icmp eq i64 %i.lwh, 0
  br i1 %.not46.i1270.wide.3, label %.lr.ph5410.preheader, label %scalar.ph10469, !llvm.loop !239

.lr.ph5410.preheader:                             ; preds = %scalar.ph10469.prol.loopexit, %scalar.ph10469, %middle.block10479, %.preheader4067
  %i.lwo = add i32 %i.ltx, %i.lua                 ; 2 uses
  store i32 %i.lwo, ptr %10, align 8, !tbaa !177
  %i.lwp = add nsw i32 %i.lua, -1
  %i.lwq = zext i32 %i.lwp to i64
  %i.lwr = shl nuw nsw i64 %i.lwq, 3
  %i.lws = add nuw nsw i64 %i.lwr, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lmz, i8 0, i64 %i.lws, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273

bb.bqq:                                           ; preds = %bb.bqp
  %i.lwt = zext i32 %i.ltx to i64                 ; 10 uses
  %i.lwu = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lwt
  store i64 0, ptr %i.lwu, align 8, !tbaa !91
  %.not.i12665394 = icmp eq i32 %i.ltx, 0
  %.pre6846 = zext nneg i32 %i.ltz to i64         ; 5 uses
  br i1 %.not.i12665394, label %._crit_edge5398, label %.lr.ph5397

.lr.ph5397:                                       ; preds = %bb.bqq
  %i.lwv = sub nuw nsw i32 64, %i.ltz
  %i.lww = zext nneg i32 %i.lwv to i64            ; 4 uses
  %min.iters.check10442 = icmp ult i32 %i.ltx, 20
  br i1 %min.iters.check10442, label %scalar.ph10441.preheader, label %vector.scevcheck10436

vector.scevcheck10436:                            ; preds = %.lr.ph5397
  %i.lwx = add nsw i64 %i.lwt, -1                 ; 2 uses
  %i.lwy = add i32 %i.ltx, %i.lua
  %i.lwz = trunc i64 %i.lwx to i32
  %i.lxa = icmp ult i32 %i.lwy, %i.lwz
  %i.lxb = icmp ugt i64 %i.lwx, 4294967295
  %i.lxc = or i1 %i.lxa, %i.lxb
  br i1 %i.lxc, label %scalar.ph10441.preheader, label %vector.memcheck10437

vector.memcheck10437:                             ; preds = %vector.scevcheck10436
  %i.lxd = shl nuw nsw i64 %i.lwt, 3              ; 2 uses
  %i.lxe = add i32 %i.ltx, %i.lua
  %i.lxf = zext i32 %i.lxe to i64
  %i.lxg = shl nuw nsw i64 %i.lxf, 3              ; 2 uses
  %i.lxh = sub nsw i64 %i.lxg, %i.lxd
  %diff.check10438 = icmp ugt i64 %i.lxh, -32
  %i.lxi = sub nsw i64 %i.lxd, %i.lxg
  %i.lxj = add nsw i64 %i.lxi, -9
  %diff.check10439 = icmp ult i64 %i.lxj, 31
  %conflict.rdx10440 = or i1 %diff.check10438, %diff.check10439
  br i1 %conflict.rdx10440, label %scalar.ph10441.preheader, label %vector.ph10443

vector.ph10443:                                   ; preds = %vector.memcheck10437
  %n.vec10445 = and i64 %i.lwt, 4294967292        ; 2 uses
  %i.lxk = and i64 %i.lwt, 3
  %broadcast.splatinsert10446 = insertelement <2 x i64> poison, i64 %i.lww, i64 0 ; 2 uses
  %broadcast.splatinsert10448 = insertelement <2 x i64> poison, i64 %.pre6846, i64 0 ; 2 uses
  %87 = shufflevector <2 x i64> %broadcast.splatinsert10446, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.lxl = shufflevector <2 x i64> %broadcast.splatinsert10448, <2 x i64> poison, <2 x i32> zeroinitializer
  %88 = shufflevector <2 x i64> %broadcast.splatinsert10446, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.lxm = shufflevector <2 x i64> %broadcast.splatinsert10448, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body10450

vector.body10450:                                 ; preds = %vector.body10450, %vector.ph10443
  %index10451 = phi i64 [ 0, %vector.ph10443 ], [ %index.next10462, %vector.body10450 ] ; 2 uses
  %i.lxn = sub i64 %i.lwt, %index10451            ; 3 uses
  %i.lxo = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lxn ; 2 uses
  %i.lxp = getelementptr inbounds i8, ptr %i.lxo, i64 -8
  %i.lxq = getelementptr inbounds i8, ptr %i.lxo, i64 -24
  %wide.load10452 = load <2 x i64>, ptr %i.lxp, align 8, !tbaa !91
  %wide.load10453 = load <2 x i64>, ptr %i.lxq, align 8, !tbaa !91
  %i.lxr = getelementptr [8 x i8], ptr %10, i64 %i.lxn ; 2 uses
  %i.lxs = getelementptr i8, ptr %i.lxr, i64 -8
  %i.lxt = getelementptr i8, ptr %i.lxr, i64 -24
  %wide.load10456 = load <2 x i64>, ptr %i.lxs, align 8, !tbaa !91
  %wide.load10457 = load <2 x i64>, ptr %i.lxt, align 8, !tbaa !91
  %89 = trunc nuw i64 %i.lxn to i32
  %90 = add i32 %i.lua, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %91 ; 2 uses
  %93 = getelementptr inbounds i8, ptr %92, i64 -8
  %94 = getelementptr inbounds i8, ptr %92, i64 -24
  %95 = lshr <2 x i64> %wide.load10456, %87
  %96 = shl <2 x i64> %wide.load10452, %i.lxl
  %reverse10460 = or <2 x i64> %95, %96
  %97 = lshr <2 x i64> %wide.load10457, %88
  %98 = shl <2 x i64> %wide.load10453, %i.lxm
  %reverse10461 = or <2 x i64> %97, %98
  store <2 x i64> %reverse10460, ptr %93, align 8, !tbaa !91
  store <2 x i64> %reverse10461, ptr %94, align 8, !tbaa !91
  %index.next10462 = add nuw i64 %index10451, 4   ; 2 uses
  %i.lxu = icmp eq i64 %index.next10462, %n.vec10445
  br i1 %i.lxu, label %middle.block10463, label %vector.body10450, !llvm.loop !240

middle.block10463:                                ; preds = %vector.body10450
  %cmp.n10464 = icmp eq i64 %n.vec10445, %i.lwt
  br i1 %cmp.n10464, label %._crit_edge5398, label %scalar.ph10441.preheader

scalar.ph10441.preheader:                         ; preds = %vector.memcheck10437, %vector.scevcheck10436, %.lr.ph5397, %middle.block10463
  %indvars.iv6443.ph = phi i64 [ %i.lwt, %vector.memcheck10437 ], [ %i.lwt, %vector.scevcheck10436 ], [ %i.lwt, %.lr.ph5397 ], [ %i.lxk, %middle.block10463 ] ; 7 uses
  %xtraiter12303 = and i64 %indvars.iv6443.ph, 1
  %lcmp.mod12304.not = icmp eq i64 %xtraiter12303, 0
  br i1 %lcmp.mod12304.not, label %scalar.ph10441.prol.loopexit, label %scalar.ph10441.prol

scalar.ph10441.prol:                              ; preds = %scalar.ph10441.preheader
  %i.lxv = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %indvars.iv6443.ph
  %i.lxw = load i64, ptr %i.lxv, align 8, !tbaa !91
  %i.lxx = shl i64 %i.lxw, %.pre6846
  %i.lxy = add nsw i64 %indvars.iv6443.ph, -1
  %i.lxz = getelementptr [8 x i8], ptr %10, i64 %indvars.iv6443.ph
  %i.lya = load i64, ptr %i.lxz, align 8, !tbaa !91
  %i.lyb = lshr i64 %i.lya, %i.lww
  %i.lyc = or i64 %i.lyb, %i.lxx
  %i.lyd = trunc nuw i64 %indvars.iv6443.ph to i32
  %i.lye = add i32 %i.lua, %i.lyd
  %i.lyf = zext i32 %i.lye to i64
  %i.lyg = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lyf
  store i64 %i.lyc, ptr %i.lyg, align 8, !tbaa !91
  br label %scalar.ph10441.prol.loopexit

scalar.ph10441.prol.loopexit:                     ; preds = %scalar.ph10441.prol, %scalar.ph10441.preheader
  %indvars.iv6443.unr = phi i64 [ %indvars.iv6443.ph, %scalar.ph10441.preheader ], [ %i.lxy, %scalar.ph10441.prol ]
  %i.lyh = icmp eq i64 %indvars.iv6443.ph, 1
  br i1 %i.lyh, label %._crit_edge5398, label %scalar.ph10441

scalar.ph10441:                                   ; preds = %scalar.ph10441.prol.loopexit, %scalar.ph10441
  %indvars.iv6443 = phi i64 [ %i.lyx, %scalar.ph10441 ], [ %indvars.iv6443.unr, %scalar.ph10441.prol.loopexit ] ; 6 uses
  %i.lyi = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %indvars.iv6443
  %i.lyj = load i64, ptr %i.lyi, align 8, !tbaa !91
  %i.lyk = shl i64 %i.lyj, %.pre6846
  %i.lyl = add nsw i64 %indvars.iv6443, -1        ; 2 uses
  %i.lym = getelementptr [8 x i8], ptr %10, i64 %indvars.iv6443
  %i.lyn = load i64, ptr %i.lym, align 8, !tbaa !91
  %i.lyo = lshr i64 %i.lyn, %i.lww
  %i.lyp = or i64 %i.lyo, %i.lyk
  %i.lyq = trunc nuw i64 %indvars.iv6443 to i32
  %i.lyr = add i32 %i.lua, %i.lyq
  %i.lys = zext i32 %i.lyr to i64
  %i.lyt = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lys
  store i64 %i.lyp, ptr %i.lyt, align 8, !tbaa !91
  %i.lyu = getelementptr [8 x i8], ptr %10, i64 %indvars.iv6443
  %i.lyv = load i64, ptr %i.lyu, align 8, !tbaa !91
  %i.lyw = shl i64 %i.lyv, %.pre6846
  %i.lyx = add nsw i64 %indvars.iv6443, -2        ; 2 uses
  %i.lyy = getelementptr [8 x i8], ptr %10, i64 %i.lyl
  %i.lyz = load i64, ptr %i.lyy, align 8, !tbaa !91
  %i.lza = lshr i64 %i.lyz, %i.lww
  %i.lzb = or i64 %i.lza, %i.lyw
  %i.lzc = trunc nuw i64 %i.lyl to i32
  %i.lzd = add i32 %i.lua, %i.lzc
  %i.lze = zext i32 %i.lzd to i64
  %i.lzf = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lze
  store i64 %i.lzb, ptr %i.lzf, align 8, !tbaa !91
  %.not.i1266.wide.1 = icmp eq i64 %i.lyx, 0
  br i1 %.not.i1266.wide.1, label %._crit_edge5398, label %scalar.ph10441, !llvm.loop !241

._crit_edge5398:                                  ; preds = %scalar.ph10441.prol.loopexit, %scalar.ph10441, %middle.block10463, %bb.bqq
  %i.lzg = load i64, ptr %i.lmz, align 8, !tbaa !91
  %i.lzh = shl i64 %i.lzg, %.pre6846
  %i.lzi = zext nneg i32 %i.lua to i64
  %i.lzj = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lzi
  store i64 %i.lzh, ptr %i.lzj, align 8, !tbaa !91
  %i.lzk = add i32 %i.ltx, %i.lua                 ; 2 uses
  %i.lzl = zext i32 %i.lzk to i64
  %i.lzm = getelementptr inbounds nuw [8 x i8], ptr %i.lmz, i64 %i.lzl
  %i.lzn = load i64, ptr %i.lzm, align 8, !tbaa !91
  %i.lzo = icmp ne i64 %i.lzn, 0
  %i.lzp = zext i1 %i.lzo to i32
  %i.lzq = add i32 %i.lzk, %i.lzp                 ; 2 uses
  %.not45.i12685399 = icmp eq i32 %i.lua, 0
  br i1 %.not45.i12685399, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273, label %.lr.ph5402.preheader

.lr.ph5402.preheader:                             ; preds = %._crit_edge5398
  %i.lzr = lshr i32 %.sroa.9.0.i282, 3
  %i.lzs = and i32 %i.lzr, 268435448
  %i.lzt = zext nneg i32 %i.lzs to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.lmz, i8 0, i64 %i.lzt, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273

bb.bqr:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1225
  %i.lzu = sub nsw i32 0, %.sroa.9.0.i282         ; 4 uses
  %i.lzv = and i32 %i.lzu, 63                     ; 3 uses
  %i.lzw = lshr i32 %i.lzu, 6                     ; 14 uses
  %i.lzx = load i32, ptr %9, align 8, !tbaa !177  ; 12 uses
  %i.lzy = icmp eq i32 %i.lzv, 0
  br i1 %i.lzy, label %.preheader4070, label %bb.bqs, !prof !7

.preheader4070:                                   ; preds = %bb.bqr
  %.not46.i12795386 = icmp eq i32 %i.lzx, 0
  br i1 %.not46.i12795386, label %._crit_edge5389, label %.lr.ph5388

.lr.ph5388:                                       ; preds = %.preheader4070
  %i.lzz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.maa = add nsw i32 %i.lzw, -1                 ; 6 uses
  %i.mab = zext i32 %i.lzx to i64                 ; 9 uses
  %min.iters.check10424 = icmp ult i32 %i.lzx, 30
  br i1 %min.iters.check10424, label %scalar.ph10423.preheader, label %vector.scevcheck10420

vector.scevcheck10420:                            ; preds = %.lr.ph5388
  %i.mac = add nsw i64 %i.mab, -1                 ; 2 uses
  %i.mad = add i32 %i.lzx, %i.lzw
  %i.mae = add i32 %i.mad, -1
  %i.maf = trunc i64 %i.mac to i32
  %i.mag = icmp ult i32 %i.mae, %i.maf
  %i.mah = icmp ugt i64 %i.mac, 4294967295
  %i.mai = or i1 %i.mag, %i.mah
  br i1 %i.mai, label %scalar.ph10423.preheader, label %vector.memcheck10421

vector.memcheck10421:                             ; preds = %vector.scevcheck10420
  %i.maj = add i32 %i.lzx, %i.lzw
  %i.mak = add i32 %i.maj, -1
  %i.mal = zext i32 %i.mak to i64
  %i.mam = sub nsw i64 %i.mab, %i.mal
  %i.man = shl nsw i64 %i.mam, 3
  %i.mao = add nsw i64 %i.man, -9
  %diff.check10422 = icmp ult i64 %i.mao, 31
  br i1 %diff.check10422, label %scalar.ph10423.preheader, label %vector.ph10425

vector.ph10425:                                   ; preds = %vector.memcheck10421
  %n.vec10427 = and i64 %i.mab, 4294967292        ; 2 uses
  %i.map = and i64 %i.mab, 3
  br label %vector.body10428

vector.body10428:                                 ; preds = %vector.body10428, %vector.ph10425
  %index10429 = phi i64 [ 0, %vector.ph10425 ], [ %index.next10432, %vector.body10428 ] ; 2 uses
  %i.maq = sub i64 %i.mab, %index10429            ; 2 uses
  %i.mar = getelementptr [8 x i8], ptr %9, i64 %i.maq ; 2 uses
  %i.mas = getelementptr i8, ptr %i.mar, i64 -8
  %i.mat = getelementptr i8, ptr %i.mar, i64 -24
  %wide.load10430 = load <2 x i64>, ptr %i.mas, align 8, !tbaa !91
  %wide.load10431 = load <2 x i64>, ptr %i.mat, align 8, !tbaa !91
  %i.mau = trunc nuw i64 %i.maq to i32
  %i.mav = add i32 %i.maa, %i.mau
  %i.maw = zext i32 %i.mav to i64
  %i.max = getelementptr inbounds nuw [8 x i8], ptr %i.lzz, i64 %i.maw ; 2 uses
  %i.may = getelementptr inbounds i8, ptr %i.max, i64 -8
  %i.maz = getelementptr inbounds i8, ptr %i.max, i64 -24
  store <2 x i64> %wide.load10430, ptr %i.may, align 8, !tbaa !91
  store <2 x i64> %wide.load10431, ptr %i.maz, align 8, !tbaa !91
  %index.next10432 = add nuw i64 %index10429, 4   ; 2 uses
  %i.mba = icmp eq i64 %index.next10432, %n.vec10427
  br i1 %i.mba, label %middle.block10433, label %vector.body10428, !llvm.loop !242

middle.block10433:                                ; preds = %vector.body10428
  %cmp.n10434 = icmp eq i64 %n.vec10427, %i.mab
  br i1 %cmp.n10434, label %._crit_edge5389, label %scalar.ph10423.preheader

scalar.ph10423.preheader:                         ; preds = %vector.memcheck10421, %vector.scevcheck10420, %.lr.ph5388, %middle.block10433
  %indvars.iv6438.ph = phi i64 [ %i.mab, %vector.memcheck10421 ], [ %i.mab, %vector.scevcheck10420 ], [ %i.mab, %.lr.ph5388 ], [ %i.map, %middle.block10433 ] ; 4 uses
  %i.mbb = add nsw i64 %indvars.iv6438.ph, -1
  %xtraiter12300 = and i64 %indvars.iv6438.ph, 3  ; 2 uses
  %lcmp.mod12301.not = icmp eq i64 %xtraiter12300, 0
  br i1 %lcmp.mod12301.not, label %scalar.ph10423.prol.loopexit, label %scalar.ph10423.prol

scalar.ph10423.prol:                              ; preds = %scalar.ph10423.preheader, %scalar.ph10423.prol
  %indvars.iv6438.prol = phi i64 [ %i.mbc, %scalar.ph10423.prol ], [ %indvars.iv6438.ph, %scalar.ph10423.preheader ] ; 3 uses
  %prol.iter12302 = phi i64 [ %prol.iter12302.next, %scalar.ph10423.prol ], [ 0, %scalar.ph10423.preheader ]
  %i.mbc = add nsw i64 %indvars.iv6438.prol, -1   ; 2 uses
  %i.mbd = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6438.prol
  %i.mbe = load i64, ptr %i.mbd, align 8, !tbaa !91
  %i.mbf = trunc nuw i64 %indvars.iv6438.prol to i32
  %i.mbg = add i32 %i.maa, %i.mbf
  %i.mbh = zext i32 %i.mbg to i64
  %i.mbi = getelementptr inbounds nuw [8 x i8], ptr %i.lzz, i64 %i.mbh
  store i64 %i.mbe, ptr %i.mbi, align 8, !tbaa !91
  %prol.iter12302.next = add i64 %prol.iter12302, 1 ; 2 uses
  %prol.iter12302.cmp.not = icmp eq i64 %prol.iter12302.next, %xtraiter12300
  br i1 %prol.iter12302.cmp.not, label %scalar.ph10423.prol.loopexit, label %scalar.ph10423.prol, !llvm.loop !243

scalar.ph10423.prol.loopexit:                     ; preds = %scalar.ph10423.prol, %scalar.ph10423.preheader
  %indvars.iv6438.unr = phi i64 [ %indvars.iv6438.ph, %scalar.ph10423.preheader ], [ %i.mbc, %scalar.ph10423.prol ]
  %i.mbj = icmp ult i64 %i.mbb, 3
  br i1 %i.mbj, label %._crit_edge5389, label %scalar.ph10423

scalar.ph10423:                                   ; preds = %scalar.ph10423.prol.loopexit, %scalar.ph10423
  %indvars.iv6438 = phi i64 [ %i.mcf, %scalar.ph10423 ], [ %indvars.iv6438.unr, %scalar.ph10423.prol.loopexit ] ; 6 uses
  %i.mbk = add nsw i64 %indvars.iv6438, -1        ; 2 uses
  %i.mbl = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6438
  %i.mbm = load i64, ptr %i.mbl, align 8, !tbaa !91
  %i.mbn = trunc nuw i64 %indvars.iv6438 to i32
  %i.mbo = add i32 %i.maa, %i.mbn
  %i.mbp = zext i32 %i.mbo to i64
  %i.mbq = getelementptr inbounds nuw [8 x i8], ptr %i.lzz, i64 %i.mbp
  store i64 %i.mbm, ptr %i.mbq, align 8, !tbaa !91
  %i.mbr = add nsw i64 %indvars.iv6438, -2        ; 2 uses
  %i.mbs = getelementptr [8 x i8], ptr %9, i64 %i.mbk
  %i.mbt = load i64, ptr %i.mbs, align 8, !tbaa !91
  %i.mbu = trunc nuw i64 %i.mbk to i32
  %i.mbv = add i32 %i.maa, %i.mbu
  %i.mbw = zext i32 %i.mbv to i64
  %i.mbx = getelementptr inbounds nuw [8 x i8], ptr %i.lzz, i64 %i.mbw
  store i64 %i.mbt, ptr %i.mbx, align 8, !tbaa !91
  %i.mby = add nsw i64 %indvars.iv6438, -3        ; 2 uses
  %i.mbz = getelementptr [8 x i8], ptr %9, i64 %i.mbr
  %i.mca = load i64, ptr %i.mbz, align 8, !tbaa !91
  %i.mcb = trunc nuw i64 %i.mbr to i32
  %i.mcc = add i32 %i.maa, %i.mcb
  %i.mcd = zext i32 %i.mcc to i64
  %i.mce = getelementptr inbounds nuw [8 x i8], ptr %i.lzz, i64 %i.mcd
  store i64 %i.mca, ptr %i.mce, align 8, !tbaa !91
  %i.mcf = add nsw i64 %indvars.iv6438, -4        ; 2 uses
  %i.mcg = getelementptr [8 x i8], ptr %9, i64 %i.mby
  %i.mch = load i64, ptr %i.mcg, align 8, !tbaa !91
  %i.mci = trunc nuw i64 %i.mby to i32
  %i.mcj = add i32 %i.maa, %i.mci
  %i.mck = zext i32 %i.mcj to i64
  %i.mcl = getelementptr inbounds nuw [8 x i8], ptr %i.lzz, i64 %i.mck
  store i64 %i.mch, ptr %i.mcl, align 8, !tbaa !91
  %.not46.i1279.wide.3 = icmp eq i64 %i.mcf, 0
  br i1 %.not46.i1279.wide.3, label %._crit_edge5389, label %scalar.ph10423, !llvm.loop !244

._crit_edge5389:                                  ; preds = %scalar.ph10423.prol.loopexit, %scalar.ph10423, %middle.block10433, %.preheader4070
  %i.mcm = add i32 %i.lzx, %i.lzw
  store i32 %i.mcm, ptr %9, align 8, !tbaa !177
  %.not47.i12815390 = icmp eq i32 %i.lzw, 0
  br i1 %.not47.i12815390, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273, label %.lr.ph5393

.lr.ph5393:                                       ; preds = %._crit_edge5389
  %i.mcn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mco = lshr exact i32 %i.lzu, 3
  %i.mcp = zext nneg i32 %i.mco to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mcn, i8 0, i64 %i.mcp, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273

bb.bqs:                                           ; preds = %bb.bqr
  %i.mcq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 12 uses
  %i.mcr = zext i32 %i.lzx to i64                 ; 10 uses
  %i.mcs = getelementptr inbounds nuw [8 x i8], ptr %i.mcq, i64 %i.mcr
  store i64 0, ptr %i.mcs, align 8, !tbaa !91
  %.not.i12755377 = icmp eq i32 %i.lzx, 0
  %.pre6848 = zext nneg i32 %i.lzv to i64         ; 5 uses
  br i1 %.not.i12755377, label %._crit_edge5381, label %.lr.ph5380

.lr.ph5380:                                       ; preds = %bb.bqs
  %i.mct = sub nuw nsw i32 64, %i.lzv
  %i.mcu = zext nneg i32 %i.mct to i64            ; 4 uses
  %min.iters.check10396 = icmp ult i32 %i.lzx, 20
  br i1 %min.iters.check10396, label %scalar.ph10395.preheader, label %vector.scevcheck10390

vector.scevcheck10390:                            ; preds = %.lr.ph5380
  %i.mcv = add nsw i64 %i.mcr, -1                 ; 2 uses
  %i.mcw = add i32 %i.lzx, %i.lzw
  %i.mcx = trunc i64 %i.mcv to i32
  %i.mcy = icmp ult i32 %i.mcw, %i.mcx
  %i.mcz = icmp ugt i64 %i.mcv, 4294967295
  %i.mda = or i1 %i.mcy, %i.mcz
  br i1 %i.mda, label %scalar.ph10395.preheader, label %vector.memcheck10391

vector.memcheck10391:                             ; preds = %vector.scevcheck10390
  %i.mdb = shl nuw nsw i64 %i.mcr, 3              ; 2 uses
  %i.mdc = add i32 %i.lzx, %i.lzw
  %i.mdd = zext i32 %i.mdc to i64
  %i.mde = shl nuw nsw i64 %i.mdd, 3              ; 2 uses
  %i.mdf = sub nsw i64 %i.mde, %i.mdb
  %diff.check10392 = icmp ugt i64 %i.mdf, -32
  %i.mdg = sub nsw i64 %i.mdb, %i.mde
  %i.mdh = add nsw i64 %i.mdg, -9
  %diff.check10393 = icmp ult i64 %i.mdh, 31
  %conflict.rdx10394 = or i1 %diff.check10392, %diff.check10393
  br i1 %conflict.rdx10394, label %scalar.ph10395.preheader, label %vector.ph10397

vector.ph10397:                                   ; preds = %vector.memcheck10391
  %n.vec10399 = and i64 %i.mcr, 4294967292        ; 2 uses
  %i.mdi = and i64 %i.mcr, 3
  %broadcast.splatinsert10400 = insertelement <2 x i64> poison, i64 %i.mcu, i64 0 ; 2 uses
  %broadcast.splatinsert10402 = insertelement <2 x i64> poison, i64 %.pre6848, i64 0 ; 2 uses
  %99 = shufflevector <2 x i64> %broadcast.splatinsert10400, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.mdj = shufflevector <2 x i64> %broadcast.splatinsert10402, <2 x i64> poison, <2 x i32> zeroinitializer
  %100 = shufflevector <2 x i64> %broadcast.splatinsert10400, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.mdk = shufflevector <2 x i64> %broadcast.splatinsert10402, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body10404

vector.body10404:                                 ; preds = %vector.body10404, %vector.ph10397
  %index10405 = phi i64 [ 0, %vector.ph10397 ], [ %index.next10416, %vector.body10404 ] ; 2 uses
  %i.mdl = sub i64 %i.mcr, %index10405            ; 3 uses
  %i.mdm = getelementptr inbounds nuw [8 x i8], ptr %i.mcq, i64 %i.mdl ; 2 uses
  %i.mdn = getelementptr inbounds i8, ptr %i.mdm, i64 -8
  %i.mdo = getelementptr inbounds i8, ptr %i.mdm, i64 -24
  %wide.load10406 = load <2 x i64>, ptr %i.mdn, align 8, !tbaa !91
  %wide.load10407 = load <2 x i64>, ptr %i.mdo, align 8, !tbaa !91
  %i.mdp = getelementptr [8 x i8], ptr %9, i64 %i.mdl ; 2 uses
  %i.mdq = getelementptr i8, ptr %i.mdp, i64 -8
  %i.mdr = getelementptr i8, ptr %i.mdp, i64 -24
  %wide.load10410 = load <2 x i64>, ptr %i.mdq, align 8, !tbaa !91
  %wide.load10411 = load <2 x i64>, ptr %i.mdr, align 8, !tbaa !91
  %101 = trunc nuw i64 %i.mdl to i32
  %102 = add i32 %i.lzw, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds nuw [8 x i8], ptr %i.mcq, i64 %103 ; 2 uses
  %105 = getelementptr inbounds i8, ptr %104, i64 -8
  %106 = getelementptr inbounds i8, ptr %104, i64 -24
  %107 = lshr <2 x i64> %wide.load10410, %99
  %108 = shl <2 x i64> %wide.load10406, %i.mdj
  %reverse10414 = or <2 x i64> %107, %108
  %109 = lshr <2 x i64> %wide.load10411, %100
  %110 = shl <2 x i64> %wide.load10407, %i.mdk
  %reverse10415 = or <2 x i64> %109, %110
  store <2 x i64> %reverse10414, ptr %105, align 8, !tbaa !91
  store <2 x i64> %reverse10415, ptr %106, align 8, !tbaa !91
  %index.next10416 = add nuw i64 %index10405, 4   ; 2 uses
  %i.mds = icmp eq i64 %index.next10416, %n.vec10399
  br i1 %i.mds, label %middle.block10417, label %vector.body10404, !llvm.loop !245

middle.block10417:                                ; preds = %vector.body10404
  %cmp.n10418 = icmp eq i64 %n.vec10399, %i.mcr
  br i1 %cmp.n10418, label %._crit_edge5381, label %scalar.ph10395.preheader

scalar.ph10395.preheader:                         ; preds = %vector.memcheck10391, %vector.scevcheck10390, %.lr.ph5380, %middle.block10417
  %indvars.iv6433.ph = phi i64 [ %i.mcr, %vector.memcheck10391 ], [ %i.mcr, %vector.scevcheck10390 ], [ %i.mcr, %.lr.ph5380 ], [ %i.mdi, %middle.block10417 ] ; 7 uses
  %xtraiter12297 = and i64 %indvars.iv6433.ph, 1
  %lcmp.mod12298.not = icmp eq i64 %xtraiter12297, 0
  br i1 %lcmp.mod12298.not, label %scalar.ph10395.prol.loopexit, label %scalar.ph10395.prol

scalar.ph10395.prol:                              ; preds = %scalar.ph10395.preheader
  %i.mdt = getelementptr inbounds nuw [8 x i8], ptr %i.mcq, i64 %indvars.iv6433.ph
  %i.mdu = load i64, ptr %i.mdt, align 8, !tbaa !91
  %i.mdv = shl i64 %i.mdu, %.pre6848
  %i.mdw = add nsw i64 %indvars.iv6433.ph, -1
  %i.mdx = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6433.ph
  %i.mdy = load i64, ptr %i.mdx, align 8, !tbaa !91
  %i.mdz = lshr i64 %i.mdy, %i.mcu
  %i.mea = or i64 %i.mdz, %i.mdv
  %i.meb = trunc nuw i64 %indvars.iv6433.ph to i32
  %i.mec = add i32 %i.lzw, %i.meb
  %i.med = zext i32 %i.mec to i64
  %i.mee = getelementptr inbounds nuw [8 x i8], ptr %i.mcq, i64 %i.med
  store i64 %i.mea, ptr %i.mee, align 8, !tbaa !91
  br label %scalar.ph10395.prol.loopexit

scalar.ph10395.prol.loopexit:                     ; preds = %scalar.ph10395.prol, %scalar.ph10395.preheader
  %indvars.iv6433.unr = phi i64 [ %indvars.iv6433.ph, %scalar.ph10395.preheader ], [ %i.mdw, %scalar.ph10395.prol ]
  %i.mef = icmp eq i64 %indvars.iv6433.ph, 1
  br i1 %i.mef, label %._crit_edge5381, label %scalar.ph10395

scalar.ph10395:                                   ; preds = %scalar.ph10395.prol.loopexit, %scalar.ph10395
  %indvars.iv6433 = phi i64 [ %i.mev, %scalar.ph10395 ], [ %indvars.iv6433.unr, %scalar.ph10395.prol.loopexit ] ; 6 uses
  %i.meg = getelementptr inbounds nuw [8 x i8], ptr %i.mcq, i64 %indvars.iv6433
  %i.meh = load i64, ptr %i.meg, align 8, !tbaa !91
  %i.mei = shl i64 %i.meh, %.pre6848
  %i.mej = add nsw i64 %indvars.iv6433, -1        ; 2 uses
  %i.mek = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6433
  %i.mel = load i64, ptr %i.mek, align 8, !tbaa !91
  %i.mem = lshr i64 %i.mel, %i.mcu
  %i.men = or i64 %i.mem, %i.mei
  %i.meo = trunc nuw i64 %indvars.iv6433 to i32
  %i.mep = add i32 %i.lzw, %i.meo
  %i.meq = zext i32 %i.mep to i64
  %i.mer = getelementptr inbounds nuw [8 x i8], ptr %i.mcq, i64 %i.meq
  store i64 %i.men, ptr %i.mer, align 8, !tbaa !91
  %i.mes = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6433
  %i.met = load i64, ptr %i.mes, align 8, !tbaa !91
  %i.meu = shl i64 %i.met, %.pre6848
  %i.mev = add nsw i64 %indvars.iv6433, -2        ; 2 uses
  %i.mew = getelementptr [8 x i8], ptr %9, i64 %i.mej
  %i.mex = load i64, ptr %i.mew, align 8, !tbaa !91
  %i.mey = lshr i64 %i.mex, %i.mcu
  %i.mez = or i64 %i.mey, %i.meu
  %i.mfa = trunc nuw i64 %i.mej to i32
  %i.mfb = add i32 %i.lzw, %i.mfa
  %i.mfc = zext i32 %i.mfb to i64
  %i.mfd = getelementptr inbounds nuw [8 x i8], ptr %i.mcq, i64 %i.mfc
  store i64 %i.mez, ptr %i.mfd, align 8, !tbaa !91
  %.not.i1275.wide.1 = icmp eq i64 %i.mev, 0
  br i1 %.not.i1275.wide.1, label %._crit_edge5381, label %scalar.ph10395, !llvm.loop !246

._crit_edge5381:                                  ; preds = %scalar.ph10395.prol.loopexit, %scalar.ph10395, %middle.block10417, %bb.bqs
  %i.mfe = load i64, ptr %i.mcq, align 8, !tbaa !91
  %i.mff = shl i64 %i.mfe, %.pre6848
  %i.mfg = zext nneg i32 %i.lzw to i64
  %i.mfh = getelementptr inbounds nuw [8 x i8], ptr %i.mcq, i64 %i.mfg
  store i64 %i.mff, ptr %i.mfh, align 8, !tbaa !91
  %i.mfi = add i32 %i.lzx, %i.lzw                 ; 2 uses
  %i.mfj = zext i32 %i.mfi to i64
  %i.mfk = getelementptr inbounds nuw [8 x i8], ptr %i.mcq, i64 %i.mfj
  %i.mfl = load i64, ptr %i.mfk, align 8, !tbaa !91
  %i.mfm = icmp ne i64 %i.mfl, 0
  %i.mfn = zext i1 %i.mfm to i32
  %i.mfo = add i32 %i.mfi, %i.mfn
  store i32 %i.mfo, ptr %9, align 8, !tbaa !177
  %.not45.i12775382 = icmp eq i32 %i.lzw, 0
  br i1 %.not45.i12775382, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273, label %.lr.ph5385.preheader

.lr.ph5385.preheader:                             ; preds = %._crit_edge5381
  %i.mfp = lshr i32 %i.lzu, 3
  %i.mfq = and i32 %i.mfp, 536870904
  %i.mfr = zext nneg i32 %i.mfq to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mcq, i8 0, i64 %i.mfr, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273: ; preds = %.lr.ph5385.preheader, %.lr.ph5393, %.lr.ph5402.preheader, %.lr.ph5410.preheader, %._crit_edge5381, %._crit_edge5389, %._crit_edge5398
  %i.mfs = phi i32 [ %i.lzq, %._crit_edge5398 ], [ %i.ltx, %.lr.ph5385.preheader ], [ %i.ltx, %.lr.ph5393 ], [ %i.lzq, %.lr.ph5402.preheader ], [ %i.lwo, %.lr.ph5410.preheader ], [ %i.ltx, %._crit_edge5381 ], [ %i.ltx, %._crit_edge5389 ] ; 2 uses
  %i.mft = load i32, ptr %9, align 8, !tbaa !177  ; 4 uses
  %i.mfu = icmp ult i32 %i.mft, %i.mfs
  br i1 %i.mfu, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread, label %bb.bqt

bb.bqt:                                           ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273
  %i.mfv = icmp ugt i32 %i.mft, %i.mfs
  br i1 %i.mfv, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread, label %.preheader4066

.preheader4066:                                   ; preds = %bb.bqt
  %.not.i131710191 = icmp eq i32 %i.mft, 0
  br i1 %.not.i131710191, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456, label %.lr.ph10194

.lr.ph10194:                                      ; preds = %.preheader4066
  %i.mfw = zext i32 %i.mft to i64
  br label %bb.bqv

bb.bqu:                                           ; preds = %bb.bqv
  %i.mfx = add nsw i64 %indvars.iv645110192, -1   ; 2 uses
  %.not.i1317 = icmp eq i64 %i.mfx, 0
  br i1 %.not.i1317, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456, label %bb.bqv, !llvm.loop !191

bb.bqv:                                           ; preds = %.lr.ph10194, %bb.bqu
  %.0.i131610193 = phi i32 [ undef, %.lr.ph10194 ], [ %.1.i1321, %bb.bqu ]
  %indvars.iv645110192 = phi i64 [ %i.mfw, %.lr.ph10194 ], [ %i.mfx, %bb.bqu ] ; 3 uses
  %i.mfy = getelementptr [8 x i8], ptr %9, i64 %indvars.iv645110192
  %i.mfz = load i64, ptr %i.mfy, align 8, !tbaa !91 ; 3 uses
  %i.mga = getelementptr [8 x i8], ptr %10, i64 %indvars.iv645110192
  %i.mgb = load i64, ptr %i.mga, align 8, !tbaa !91 ; 3 uses
  %.not3600 = icmp ult i64 %i.mfz, %i.mgb
  %.not3601 = icmp ugt i64 %i.mfz, %i.mgb
  %..0.i1319 = select i1 %.not3601, i32 1, i32 %.0.i131610193
  %cond.i1320 = icmp eq i64 %i.mfz, %i.mgb
  %.1.i1321 = select i1 %.not3600, i32 -1, i32 %..0.i1319 ; 3 uses
  br i1 %cond.i1320, label %bb.bqu, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323: ; preds = %bb.bqv
  %.not680.i284 = icmp eq i32 %.1.i1321, 0
  br i1 %.not680.i284, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273, %bb.bqt, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323
  %.2.i13223455 = phi i32 [ %.1.i1321, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323 ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273 ], [ 1, %bb.bqt ]
  %i.mgc = icmp sgt i32 %.2.i13223455, 0
  %i.mgd = zext i1 %i.mgc to i64
  br label %bb.bqw

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456: ; preds = %bb.bqu, %.preheader4066, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323
  %i.mge = and i64 %.0.i1208.ph, 1
  br label %bb.bqw

bb.bqw:                                           ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread
  %.pn.i285 = phi i64 [ %i.mgd, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread ], [ %i.mge, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456 ]
  %.0604.i286 = add nuw nsw i64 %.pn.i285, %.0.i1208.ph ; 2 uses
  %i.mgf = icmp eq i64 %.0604.i286, 9218868437227405312
  br i1 %i.mgf, label %bb.bqx, label %bb.bre, !prof !7

bb.bqx:                                           ; preds = %bb.bqw
  br i1 %.not3554, label %bb.brb, label %bb.bqy, !prof !24

bb.bqy:                                           ; preds = %bb.bqx
  %i.mgg = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not681.i288 = icmp eq ptr %i.mgg, null
  br i1 %.not681.i288, label %bb.bra, label %bb.bqz

bb.bqz:                                           ; preds = %bb.bqy
  store i8 0, ptr %i.mgg, align 1, !tbaa !81
  br label %bb.bra

bb.bra:                                           ; preds = %bb.bqz, %bb.bqy
  %i.mgh = ptrtoint ptr %.73219 to i64
  %i.mgi = ptrtoint ptr %i.kja to i64
  %i.mgj = sub i64 %i.mgh, %i.mgi
  %i.mgk = shl i64 %i.mgj, 8
  %i.mgl = or disjoint i64 %i.mgk, 1
  store i64 %i.mgl, ptr %i.kjf, align 8, !tbaa !79
  %i.mgm = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store ptr %i.kja, ptr %i.mgm, align 8, !tbaa !81
  store ptr %.73219, ptr %i.g, align 8, !tbaa !92
  br label %bb.brf

bb.brb:                                           ; preds = %bb.bqx
  br i1 %.not3551, label %bb.brd, label %bb.brc, !prof !24

bb.brc:                                           ; preds = %bb.brb
  store i64 20, ptr %i.kjf, align 8, !tbaa !79
  %i.mgn = select i1 %i.kjj, i64 -4503599627370496, i64 9218868437227405312
  %i.mgo = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 %i.mgn, ptr %i.mgo, align 8, !tbaa !81
  br label %bb.brf

bb.brd:                                           ; preds = %bb.brb
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  store ptr %i.kja, ptr %i.e, align 8, !tbaa !92
  br label %.thread3479

bb.bre:                                           ; preds = %bb.bqw
  store i64 20, ptr %i.kjf, align 8, !tbaa !79
  %i.mgp = select i1 %i.kjj, i64 -9223372036854775808, i64 0
  %i.mgq = or disjoint i64 %.0604.i286, %i.mgp
  %i.mgr = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 %i.mgq, ptr %i.mgr, align 8, !tbaa !81
  br label %bb.brf

.thread3479:                                      ; preds = %bb.bpx, %bb.brd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.btl

end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjsonL16read_root_singleEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE:bb.a
  br i1 %.not19.i248, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.im

bb.im:                                            ; preds = %._crit_edge787
  %i.akg = add i32 %i.aiz, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split: ; preds = %bb.if, %bb.im
  %.sink1394 = phi i32 [ %i.aiz, %bb.im ], [ %i.afh, %bb.if ]
  %i.akh = phi ptr [ %7, %bb.im ], [ %6, %bb.if ]
  %.lcssa1315.sink = phi i64 [ %.lcssa1897, %bb.im ], [ %.lcssa1889, %bb.if ]
  %.ph1390 = phi i32 [ %i.akg, %bb.im ], [ 1, %bb.if ]
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  %i.akj = zext i32 %.sink1394 to i64
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.aki, i64 %i.akj
  store i64 %.lcssa1315.sink, ptr %i.akk, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit: ; preds = %bb.ik, %bb.id, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split, %._crit_edge779, %._crit_edge812, %._crit_edge773, %._crit_edge787, %._crit_edge806, %._crit_edge820
  %i.akl = phi i32 [ %i.ain, %._crit_edge773 ], [ %i.aiz, %._crit_edge787 ], [ %i.aiz, %._crit_edge779 ], [ 1, %._crit_edge806 ], [ 1, %._crit_edge820 ], [ 1, %bb.id ], [ %.ph1390, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split ], [ 1, %._crit_edge812 ], [ %i.aiu, %bb.ik ] ; 16 uses
  %i.akm = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.akm, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.akn = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.ako = lshr i32 %.sroa.9.0.i, 6               ; 14 uses
  %i.akp = icmp eq i32 %i.akn, 0
  br i1 %i.akp, label %.preheader697, label %bb.io, !prof !7

.preheader697:                                    ; preds = %bb.in
  %.not46.i848 = icmp eq i32 %i.akl, 0
  br i1 %.not46.i848, label %.lr.ph855.preheader, label %.lr.ph850

.lr.ph850:                                        ; preds = %.preheader697
  %i.akq = add nsw i32 %i.ako, -1                 ; 6 uses
  %i.akr = zext i32 %i.akl to i64                 ; 9 uses
  %min.iters.check1695 = icmp ult i32 %i.akl, 30
  br i1 %min.iters.check1695, label %scalar.ph1694.preheader, label %vector.scevcheck1691

vector.scevcheck1691:                             ; preds = %.lr.ph850
  %i.aks = add nsw i64 %i.akr, -1                 ; 2 uses
  %i.akt = add i32 %i.akl, %i.ako
  %i.aku = add i32 %i.akt, -1
  %i.akv = trunc i64 %i.aks to i32
  %i.akw = icmp ult i32 %i.aku, %i.akv
  %i.akx = icmp ugt i64 %i.aks, 4294967295
  %i.aky = or i1 %i.akw, %i.akx
  br i1 %i.aky, label %scalar.ph1694.preheader, label %vector.memcheck1692

vector.memcheck1692:                              ; preds = %vector.scevcheck1691
  %i.akz = add i32 %i.akl, %i.ako
  %i.ala = add i32 %i.akz, -1
  %i.alb = zext i32 %i.ala to i64
  %i.alc = sub nsw i64 %i.akr, %i.alb
  %i.ald = shl nsw i64 %i.alc, 3
  %i.ale = add nsw i64 %i.ald, -9
  %diff.check1693 = icmp ult i64 %i.ale, 31
  br i1 %diff.check1693, label %scalar.ph1694.preheader, label %vector.ph1696

vector.ph1696:                                    ; preds = %vector.memcheck1692
  %n.vec1698 = and i64 %i.akr, 4294967292         ; 2 uses
  %i.alf = and i64 %i.akr, 3
  br label %vector.body1699

vector.body1699:                                  ; preds = %vector.body1699, %vector.ph1696
  %index1700 = phi i64 [ 0, %vector.ph1696 ], [ %index.next1703, %vector.body1699 ] ; 2 uses
  %i.alg = sub i64 %i.akr, %index1700             ; 2 uses
  %i.alh = getelementptr [8 x i8], ptr %7, i64 %i.alg ; 2 uses
  %i.ali = getelementptr i8, ptr %i.alh, i64 -8
  %i.alj = getelementptr i8, ptr %i.alh, i64 -24
  %wide.load1701 = load <2 x i64>, ptr %i.ali, align 8, !tbaa !91
  %wide.load1702 = load <2 x i64>, ptr %i.alj, align 8, !tbaa !91
  %i.alk = trunc nuw i64 %i.alg to i32
  %i.all = add i32 %i.akq, %i.alk
  %i.alm = zext i32 %i.all to i64
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.alm ; 2 uses
  %i.alo = getelementptr inbounds i8, ptr %i.aln, i64 -8
  %i.alp = getelementptr inbounds i8, ptr %i.aln, i64 -24
  store <2 x i64> %wide.load1701, ptr %i.alo, align 8, !tbaa !91
  store <2 x i64> %wide.load1702, ptr %i.alp, align 8, !tbaa !91
  %index.next1703 = add nuw i64 %index1700, 4     ; 2 uses
  %i.alq = icmp eq i64 %index.next1703, %n.vec1698
  br i1 %i.alq, label %middle.block1704, label %vector.body1699, !llvm.loop !256

middle.block1704:                                 ; preds = %vector.body1699
  %cmp.n1705 = icmp eq i64 %n.vec1698, %i.akr
  br i1 %cmp.n1705, label %.lr.ph855.preheader, label %scalar.ph1694.preheader

scalar.ph1694.preheader:                          ; preds = %vector.memcheck1692, %vector.scevcheck1691, %.lr.ph850, %middle.block1704
  %indvars.iv1096.ph = phi i64 [ %i.akr, %vector.memcheck1692 ], [ %i.akr, %vector.scevcheck1691 ], [ %i.akr, %.lr.ph850 ], [ %i.alf, %middle.block1704 ] ; 4 uses
  %i.alr = add nsw i64 %indvars.iv1096.ph, -1
  %xtraiter1945 = and i64 %indvars.iv1096.ph, 3   ; 2 uses
  %lcmp.mod1946.not = icmp eq i64 %xtraiter1945, 0
  br i1 %lcmp.mod1946.not, label %scalar.ph1694.prol.loopexit, label %scalar.ph1694.prol

scalar.ph1694.prol:                               ; preds = %scalar.ph1694.preheader, %scalar.ph1694.prol
  %indvars.iv1096.prol = phi i64 [ %i.als, %scalar.ph1694.prol ], [ %indvars.iv1096.ph, %scalar.ph1694.preheader ] ; 3 uses
  %prol.iter1947 = phi i64 [ %prol.iter1947.next, %scalar.ph1694.prol ], [ 0, %scalar.ph1694.preheader ]
  %i.als = add nsw i64 %indvars.iv1096.prol, -1   ; 2 uses
  %i.alt = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1096.prol
  %i.alu = load i64, ptr %i.alt, align 8, !tbaa !91
  %i.alv = trunc nuw i64 %indvars.iv1096.prol to i32
  %i.alw = add i32 %i.akq, %i.alv
  %i.alx = zext i32 %i.alw to i64
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.alx
  store i64 %i.alu, ptr %i.aly, align 8, !tbaa !91
  %prol.iter1947.next = add i64 %prol.iter1947, 1 ; 2 uses
  %prol.iter1947.cmp.not = icmp eq i64 %prol.iter1947.next, %xtraiter1945
  br i1 %prol.iter1947.cmp.not, label %scalar.ph1694.prol.loopexit, label %scalar.ph1694.prol, !llvm.loop !257

scalar.ph1694.prol.loopexit:                      ; preds = %scalar.ph1694.prol, %scalar.ph1694.preheader
  %indvars.iv1096.unr = phi i64 [ %indvars.iv1096.ph, %scalar.ph1694.preheader ], [ %i.als, %scalar.ph1694.prol ]
  %i.alz = icmp ult i64 %i.alr, 3
  br i1 %i.alz, label %.lr.ph855.preheader, label %scalar.ph1694

scalar.ph1694:                                    ; preds = %scalar.ph1694.prol.loopexit, %scalar.ph1694
  %indvars.iv1096 = phi i64 [ %i.amv, %scalar.ph1694 ], [ %indvars.iv1096.unr, %scalar.ph1694.prol.loopexit ] ; 6 uses
  %i.ama = add nsw i64 %indvars.iv1096, -1        ; 2 uses
  %i.amb = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1096
  %i.amc = load i64, ptr %i.amb, align 8, !tbaa !91
  %i.amd = trunc nuw i64 %indvars.iv1096 to i32
  %i.ame = add i32 %i.akq, %i.amd
  %i.amf = zext i32 %i.ame to i64
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.amf
  store i64 %i.amc, ptr %i.amg, align 8, !tbaa !91
  %i.amh = add nsw i64 %indvars.iv1096, -2        ; 2 uses
  %i.ami = getelementptr [8 x i8], ptr %7, i64 %i.ama
  %i.amj = load i64, ptr %i.ami, align 8, !tbaa !91
  %i.amk = trunc nuw i64 %i.ama to i32
  %i.aml = add i32 %i.akq, %i.amk
  %i.amm = zext i32 %i.aml to i64
  %i.amn = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.amm
  store i64 %i.amj, ptr %i.amn, align 8, !tbaa !91
  %i.amo = add nsw i64 %indvars.iv1096, -3        ; 2 uses
  %i.amp = getelementptr [8 x i8], ptr %7, i64 %i.amh
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !91
  %i.amr = trunc nuw i64 %i.amh to i32
  %i.ams = add i32 %i.akq, %i.amr
  %i.amt = zext i32 %i.ams to i64
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.amt
  store i64 %i.amq, ptr %i.amu, align 8, !tbaa !91
  %i.amv = add nsw i64 %indvars.iv1096, -4        ; 2 uses
  %i.amw = getelementptr [8 x i8], ptr %7, i64 %i.amo
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !91
  %i.amy = trunc nuw i64 %i.amo to i32
  %i.amz = add i32 %i.akq, %i.amy
  %i.ana = zext i32 %i.amz to i64
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.ana
  store i64 %i.amx, ptr %i.anb, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.amv, 0
  br i1 %.not46.i.wide.3, label %.lr.ph855.preheader, label %scalar.ph1694, !llvm.loop !258

.lr.ph855.preheader:                              ; preds = %scalar.ph1694.prol.loopexit, %scalar.ph1694, %middle.block1704, %.preheader697
  %i.anc = add i32 %i.akl, %i.ako                 ; 2 uses
  store i32 %i.anc, ptr %7, align 8, !tbaa !177
  %i.and = add nsw i32 %i.ako, -1
  %i.ane = zext i32 %i.and to i64
  %i.anf = shl nuw nsw i64 %i.ane, 3
  %i.ang = add nuw nsw i64 %i.anf, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adn, i8 0, i64 %i.ang, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

bb.io:                                            ; preds = %bb.in
  %i.anh = zext i32 %i.akl to i64                 ; 10 uses
  %i.ani = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.anh
  store i64 0, ptr %i.ani, align 8, !tbaa !91
  %.not.i226839 = icmp eq i32 %i.akl, 0
  %.pre1145 = zext nneg i32 %i.akn to i64         ; 5 uses
  br i1 %.not.i226839, label %._crit_edge843, label %.lr.ph842

.lr.ph842:                                        ; preds = %bb.io
  %i.anj = sub nuw nsw i32 64, %i.akn
  %i.ank = zext nneg i32 %i.anj to i64            ; 4 uses
  %min.iters.check1667 = icmp ult i32 %i.akl, 20
  br i1 %min.iters.check1667, label %scalar.ph1666.preheader, label %vector.scevcheck1661

vector.scevcheck1661:                             ; preds = %.lr.ph842
  %i.anl = add nsw i64 %i.anh, -1                 ; 2 uses
  %i.anm = add i32 %i.akl, %i.ako
  %i.ann = trunc i64 %i.anl to i32
  %i.ano = icmp ult i32 %i.anm, %i.ann
  %i.anp = icmp ugt i64 %i.anl, 4294967295
  %i.anq = or i1 %i.ano, %i.anp
  br i1 %i.anq, label %scalar.ph1666.preheader, label %vector.memcheck1662

vector.memcheck1662:                              ; preds = %vector.scevcheck1661
  %i.anr = shl nuw nsw i64 %i.anh, 3              ; 2 uses
  %i.ans = add i32 %i.akl, %i.ako
  %i.ant = zext i32 %i.ans to i64
  %i.anu = shl nuw nsw i64 %i.ant, 3              ; 2 uses
  %i.anv = sub nsw i64 %i.anu, %i.anr
  %diff.check1663 = icmp ugt i64 %i.anv, -32
  %i.anw = sub nsw i64 %i.anr, %i.anu
  %i.anx = add nsw i64 %i.anw, -9
  %diff.check1664 = icmp ult i64 %i.anx, 31
  %conflict.rdx1665 = or i1 %diff.check1663, %diff.check1664
  br i1 %conflict.rdx1665, label %scalar.ph1666.preheader, label %vector.ph1668

vector.ph1668:                                    ; preds = %vector.memcheck1662
  %n.vec1670 = and i64 %i.anh, 4294967292         ; 2 uses
  %i.any = and i64 %i.anh, 3
  %broadcast.splatinsert1671 = insertelement <2 x i64> poison, i64 %i.ank, i64 0 ; 2 uses
  %broadcast.splatinsert1673 = insertelement <2 x i64> poison, i64 %.pre1145, i64 0 ; 2 uses
  %8 = shufflevector <2 x i64> %broadcast.splatinsert1671, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.anz = shufflevector <2 x i64> %broadcast.splatinsert1673, <2 x i64> poison, <2 x i32> zeroinitializer
  %9 = shufflevector <2 x i64> %broadcast.splatinsert1671, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aoa = shufflevector <2 x i64> %broadcast.splatinsert1673, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body1675

vector.body1675:                                  ; preds = %vector.body1675, %vector.ph1668
  %index1676 = phi i64 [ 0, %vector.ph1668 ], [ %index.next1687, %vector.body1675 ] ; 2 uses
  %i.aob = sub i64 %i.anh, %index1676             ; 3 uses
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.aob ; 2 uses
  %i.aod = getelementptr inbounds i8, ptr %i.aoc, i64 -8
  %i.aoe = getelementptr inbounds i8, ptr %i.aoc, i64 -24
  %wide.load1677 = load <2 x i64>, ptr %i.aod, align 8, !tbaa !91
  %wide.load1678 = load <2 x i64>, ptr %i.aoe, align 8, !tbaa !91
  %i.aof = getelementptr [8 x i8], ptr %7, i64 %i.aob ; 2 uses
  %i.aog = getelementptr i8, ptr %i.aof, i64 -8
  %i.aoh = getelementptr i8, ptr %i.aof, i64 -24
  %wide.load1681 = load <2 x i64>, ptr %i.aog, align 8, !tbaa !91
  %wide.load1682 = load <2 x i64>, ptr %i.aoh, align 8, !tbaa !91
  %10 = trunc nuw i64 %i.aob to i32
  %11 = add i32 %i.ako, %10
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %12 ; 2 uses
  %14 = getelementptr inbounds i8, ptr %13, i64 -8
  %15 = getelementptr inbounds i8, ptr %13, i64 -24
  %16 = lshr <2 x i64> %wide.load1681, %8
  %17 = shl <2 x i64> %wide.load1677, %i.anz
  %reverse1685 = or <2 x i64> %16, %17
  %18 = lshr <2 x i64> %wide.load1682, %9
  %19 = shl <2 x i64> %wide.load1678, %i.aoa
  %reverse1686 = or <2 x i64> %18, %19
  store <2 x i64> %reverse1685, ptr %14, align 8, !tbaa !91
  store <2 x i64> %reverse1686, ptr %15, align 8, !tbaa !91
  %index.next1687 = add nuw i64 %index1676, 4     ; 2 uses
  %i.aoi = icmp eq i64 %index.next1687, %n.vec1670
  br i1 %i.aoi, label %middle.block1688, label %vector.body1675, !llvm.loop !259

middle.block1688:                                 ; preds = %vector.body1675
  %cmp.n1689 = icmp eq i64 %n.vec1670, %i.anh
  br i1 %cmp.n1689, label %._crit_edge843, label %scalar.ph1666.preheader

scalar.ph1666.preheader:                          ; preds = %vector.memcheck1662, %vector.scevcheck1661, %.lr.ph842, %middle.block1688
  %indvars.iv1091.ph = phi i64 [ %i.anh, %vector.memcheck1662 ], [ %i.anh, %vector.scevcheck1661 ], [ %i.anh, %.lr.ph842 ], [ %i.any, %middle.block1688 ] ; 7 uses
  %xtraiter1942 = and i64 %indvars.iv1091.ph, 1
  %lcmp.mod1943.not = icmp eq i64 %xtraiter1942, 0
  br i1 %lcmp.mod1943.not, label %scalar.ph1666.prol.loopexit, label %scalar.ph1666.prol

scalar.ph1666.prol:                               ; preds = %scalar.ph1666.preheader
  %i.aoj = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1091.ph
  %i.aok = load i64, ptr %i.aoj, align 8, !tbaa !91
  %i.aol = shl i64 %i.aok, %.pre1145
  %i.aom = add nsw i64 %indvars.iv1091.ph, -1
  %i.aon = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1091.ph
  %i.aoo = load i64, ptr %i.aon, align 8, !tbaa !91
  %i.aop = lshr i64 %i.aoo, %i.ank
  %i.aoq = or i64 %i.aop, %i.aol
  %i.aor = trunc nuw i64 %indvars.iv1091.ph to i32
  %i.aos = add i32 %i.ako, %i.aor
  %i.aot = zext i32 %i.aos to i64
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.aot
  store i64 %i.aoq, ptr %i.aou, align 8, !tbaa !91
  br label %scalar.ph1666.prol.loopexit

scalar.ph1666.prol.loopexit:                      ; preds = %scalar.ph1666.prol, %scalar.ph1666.preheader
  %indvars.iv1091.unr = phi i64 [ %indvars.iv1091.ph, %scalar.ph1666.preheader ], [ %i.aom, %scalar.ph1666.prol ]
  %i.aov = icmp eq i64 %indvars.iv1091.ph, 1
  br i1 %i.aov, label %._crit_edge843, label %scalar.ph1666

scalar.ph1666:                                    ; preds = %scalar.ph1666.prol.loopexit, %scalar.ph1666
  %indvars.iv1091 = phi i64 [ %i.apl, %scalar.ph1666 ], [ %indvars.iv1091.unr, %scalar.ph1666.prol.loopexit ] ; 6 uses
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1091
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !91
  %i.aoy = shl i64 %i.aox, %.pre1145
  %i.aoz = add nsw i64 %indvars.iv1091, -1        ; 2 uses
  %i.apa = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1091
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !91
  %i.apc = lshr i64 %i.apb, %i.ank
  %i.apd = or i64 %i.apc, %i.aoy
  %i.ape = trunc nuw i64 %indvars.iv1091 to i32
  %i.apf = add i32 %i.ako, %i.ape
  %i.apg = zext i32 %i.apf to i64
  %i.aph = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.apg
  store i64 %i.apd, ptr %i.aph, align 8, !tbaa !91
  %i.api = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1091
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !91
  %i.apk = shl i64 %i.apj, %.pre1145
  %i.apl = add nsw i64 %indvars.iv1091, -2        ; 2 uses
  %i.apm = getelementptr [8 x i8], ptr %7, i64 %i.aoz
  %i.apn = load i64, ptr %i.apm, align 8, !tbaa !91
  %i.apo = lshr i64 %i.apn, %i.ank
  %i.app = or i64 %i.apo, %i.apk
  %i.apq = trunc nuw i64 %i.aoz to i32
  %i.apr = add i32 %i.ako, %i.apq
  %i.aps = zext i32 %i.apr to i64
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.aps
  store i64 %i.app, ptr %i.apt, align 8, !tbaa !91
  %.not.i226.wide.1 = icmp eq i64 %i.apl, 0
  br i1 %.not.i226.wide.1, label %._crit_edge843, label %scalar.ph1666, !llvm.loop !260

._crit_edge843:                                   ; preds = %scalar.ph1666.prol.loopexit, %scalar.ph1666, %middle.block1688, %bb.io
  %i.apu = load i64, ptr %i.adn, align 8, !tbaa !91
  %i.apv = shl i64 %i.apu, %.pre1145
  %i.apw = zext nneg i32 %i.ako to i64
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.apw
  store i64 %i.apv, ptr %i.apx, align 8, !tbaa !91
  %i.apy = add i32 %i.akl, %i.ako                 ; 2 uses
  %i.apz = zext i32 %i.apy to i64
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.apz
  %i.aqb = load i64, ptr %i.aqa, align 8, !tbaa !91
  %i.aqc = icmp ne i64 %i.aqb, 0
  %i.aqd = zext i1 %i.aqc to i32
  %i.aqe = add i32 %i.apy, %i.aqd                 ; 2 uses
  %.not45.i844 = icmp eq i32 %i.ako, 0
  br i1 %.not45.i844, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph847.preheader

.lr.ph847.preheader:                              ; preds = %._crit_edge843
  %i.aqf = lshr i32 %.sroa.9.0.i, 3
  %i.aqg = and i32 %i.aqf, 268435448
  %i.aqh = zext nneg i32 %i.aqg to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.adn, i8 0, i64 %i.aqh, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

bb.ip:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.aqi = sub nsw i32 0, %.sroa.9.0.i            ; 4 uses
  %i.aqj = and i32 %i.aqi, 63                     ; 3 uses
  %i.aqk = lshr i32 %i.aqi, 6                     ; 14 uses
  %i.aql = load i32, ptr %6, align 8, !tbaa !177  ; 12 uses
  %i.aqm = icmp eq i32 %i.aqj, 0
  br i1 %i.aqm, label %.preheader700, label %bb.iq, !prof !7

.preheader700:                                    ; preds = %bb.ip
  %.not46.i234831 = icmp eq i32 %i.aql, 0
  br i1 %.not46.i234831, label %._crit_edge834, label %.lr.ph833

.lr.ph833:                                        ; preds = %.preheader700
  %i.aqn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.aqo = add nsw i32 %i.aqk, -1                 ; 6 uses
  %i.aqp = zext i32 %i.aql to i64                 ; 9 uses
  %min.iters.check1649 = icmp ult i32 %i.aql, 30
  br i1 %min.iters.check1649, label %scalar.ph1648.preheader, label %vector.scevcheck1645

vector.scevcheck1645:                             ; preds = %.lr.ph833
  %i.aqq = add nsw i64 %i.aqp, -1                 ; 2 uses
  %i.aqr = add i32 %i.aql, %i.aqk
  %i.aqs = add i32 %i.aqr, -1
  %i.aqt = trunc i64 %i.aqq to i32
  %i.aqu = icmp ult i32 %i.aqs, %i.aqt
  %i.aqv = icmp ugt i64 %i.aqq, 4294967295
  %i.aqw = or i1 %i.aqu, %i.aqv
  br i1 %i.aqw, label %scalar.ph1648.preheader, label %vector.memcheck1646

vector.memcheck1646:                              ; preds = %vector.scevcheck1645
  %i.aqx = add i32 %i.aql, %i.aqk
  %i.aqy = add i32 %i.aqx, -1
  %i.aqz = zext i32 %i.aqy to i64
  %i.ara = sub nsw i64 %i.aqp, %i.aqz
  %i.arb = shl nsw i64 %i.ara, 3
  %i.arc = add nsw i64 %i.arb, -9
  %diff.check1647 = icmp ult i64 %i.arc, 31
  br i1 %diff.check1647, label %scalar.ph1648.preheader, label %vector.ph1650

vector.ph1650:                                    ; preds = %vector.memcheck1646
  %n.vec1652 = and i64 %i.aqp, 4294967292         ; 2 uses
  %i.ard = and i64 %i.aqp, 3
  br label %vector.body1653

vector.body1653:                                  ; preds = %vector.body1653, %vector.ph1650
  %index1654 = phi i64 [ 0, %vector.ph1650 ], [ %index.next1657, %vector.body1653 ] ; 2 uses
  %i.are = sub i64 %i.aqp, %index1654             ; 2 uses
  %i.arf = getelementptr [8 x i8], ptr %6, i64 %i.are ; 2 uses
  %i.arg = getelementptr i8, ptr %i.arf, i64 -8
  %i.arh = getelementptr i8, ptr %i.arf, i64 -24
  %wide.load1655 = load <2 x i64>, ptr %i.arg, align 8, !tbaa !91
  %wide.load1656 = load <2 x i64>, ptr %i.arh, align 8, !tbaa !91
  %i.ari = trunc nuw i64 %i.are to i32
  %i.arj = add i32 %i.aqo, %i.ari
  %i.ark = zext i32 %i.arj to i64
  %i.arl = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.ark ; 2 uses
  %i.arm = getelementptr inbounds i8, ptr %i.arl, i64 -8
  %i.arn = getelementptr inbounds i8, ptr %i.arl, i64 -24
  store <2 x i64> %wide.load1655, ptr %i.arm, align 8, !tbaa !91
  store <2 x i64> %wide.load1656, ptr %i.arn, align 8, !tbaa !91
  %index.next1657 = add nuw i64 %index1654, 4     ; 2 uses
  %i.aro = icmp eq i64 %index.next1657, %n.vec1652
  br i1 %i.aro, label %middle.block1658, label %vector.body1653, !llvm.loop !261

middle.block1658:                                 ; preds = %vector.body1653
  %cmp.n1659 = icmp eq i64 %n.vec1652, %i.aqp
  br i1 %cmp.n1659, label %._crit_edge834, label %scalar.ph1648.preheader

scalar.ph1648.preheader:                          ; preds = %vector.memcheck1646, %vector.scevcheck1645, %.lr.ph833, %middle.block1658
  %indvars.iv1086.ph = phi i64 [ %i.aqp, %vector.memcheck1646 ], [ %i.aqp, %vector.scevcheck1645 ], [ %i.aqp, %.lr.ph833 ], [ %i.ard, %middle.block1658 ] ; 4 uses
  %i.arp = add nsw i64 %indvars.iv1086.ph, -1
  %xtraiter1940 = and i64 %indvars.iv1086.ph, 3   ; 2 uses
  %lcmp.mod1941.not = icmp eq i64 %xtraiter1940, 0
  br i1 %lcmp.mod1941.not, label %scalar.ph1648.prol.loopexit, label %scalar.ph1648.prol

scalar.ph1648.prol:                               ; preds = %scalar.ph1648.preheader, %scalar.ph1648.prol
  %indvars.iv1086.prol = phi i64 [ %i.arq, %scalar.ph1648.prol ], [ %indvars.iv1086.ph, %scalar.ph1648.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1648.prol ], [ 0, %scalar.ph1648.preheader ]
  %i.arq = add nsw i64 %indvars.iv1086.prol, -1   ; 2 uses
  %i.arr = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1086.prol
  %i.ars = load i64, ptr %i.arr, align 8, !tbaa !91
  %i.art = trunc nuw i64 %indvars.iv1086.prol to i32
  %i.aru = add i32 %i.aqo, %i.art
  %i.arv = zext i32 %i.aru to i64
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.arv
  store i64 %i.ars, ptr %i.arw, align 8, !tbaa !91
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1940
  br i1 %prol.iter.cmp.not, label %scalar.ph1648.prol.loopexit, label %scalar.ph1648.prol, !llvm.loop !262

scalar.ph1648.prol.loopexit:                      ; preds = %scalar.ph1648.prol, %scalar.ph1648.preheader
  %indvars.iv1086.unr = phi i64 [ %indvars.iv1086.ph, %scalar.ph1648.preheader ], [ %i.arq, %scalar.ph1648.prol ]
  %i.arx = icmp ult i64 %i.arp, 3
  br i1 %i.arx, label %._crit_edge834, label %scalar.ph1648

scalar.ph1648:                                    ; preds = %scalar.ph1648.prol.loopexit, %scalar.ph1648
  %indvars.iv1086 = phi i64 [ %i.ast, %scalar.ph1648 ], [ %indvars.iv1086.unr, %scalar.ph1648.prol.loopexit ] ; 6 uses
  %i.ary = add nsw i64 %indvars.iv1086, -1        ; 2 uses
  %i.arz = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1086
  %i.asa = load i64, ptr %i.arz, align 8, !tbaa !91
  %i.asb = trunc nuw i64 %indvars.iv1086 to i32
  %i.asc = add i32 %i.aqo, %i.asb
  %i.asd = zext i32 %i.asc to i64
  %i.ase = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.asd
  store i64 %i.asa, ptr %i.ase, align 8, !tbaa !91
  %i.asf = add nsw i64 %indvars.iv1086, -2        ; 2 uses
  %i.asg = getelementptr [8 x i8], ptr %6, i64 %i.ary
  %i.ash = load i64, ptr %i.asg, align 8, !tbaa !91
  %i.asi = trunc nuw i64 %i.ary to i32
  %i.asj = add i32 %i.aqo, %i.asi
  %i.ask = zext i32 %i.asj to i64
  %i.asl = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.ask
  store i64 %i.ash, ptr %i.asl, align 8, !tbaa !91
  %i.asm = add nsw i64 %indvars.iv1086, -3        ; 2 uses
  %i.asn = getelementptr [8 x i8], ptr %6, i64 %i.asf
  %i.aso = load i64, ptr %i.asn, align 8, !tbaa !91
  %i.asp = trunc nuw i64 %i.asf to i32
  %i.asq = add i32 %i.aqo, %i.asp
  %i.asr = zext i32 %i.asq to i64
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.asr
  store i64 %i.aso, ptr %i.ass, align 8, !tbaa !91
  %i.ast = add nsw i64 %indvars.iv1086, -4        ; 2 uses
  %i.asu = getelementptr [8 x i8], ptr %6, i64 %i.asm
  %i.asv = load i64, ptr %i.asu, align 8, !tbaa !91
  %i.asw = trunc nuw i64 %i.asm to i32
  %i.asx = add i32 %i.aqo, %i.asw
  %i.asy = zext i32 %i.asx to i64
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.asy
  store i64 %i.asv, ptr %i.asz, align 8, !tbaa !91
  %.not46.i234.wide.3 = icmp eq i64 %i.ast, 0
  br i1 %.not46.i234.wide.3, label %._crit_edge834, label %scalar.ph1648, !llvm.loop !263

._crit_edge834:                                   ; preds = %scalar.ph1648.prol.loopexit, %scalar.ph1648, %middle.block1658, %.preheader700
  %i.ata = add i32 %i.aql, %i.aqk
  store i32 %i.ata, ptr %6, align 8, !tbaa !177
  %.not47.i236835 = icmp eq i32 %i.aqk, 0
  br i1 %.not47.i236835, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph838

.lr.ph838:                                        ; preds = %._crit_edge834
  %i.atb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.atc = lshr exact i32 %i.aqi, 3
  %i.atd = zext nneg i32 %i.atc to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.atb, i8 0, i64 %i.atd, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

bb.iq:                                            ; preds = %bb.ip
  %i.ate = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  %i.atf = zext i32 %i.aql to i64                 ; 10 uses
  %i.atg = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %i.atf
  store i64 0, ptr %i.atg, align 8, !tbaa !91
  %.not.i230822 = icmp eq i32 %i.aql, 0
  %.pre1147 = zext nneg i32 %i.aqj to i64         ; 5 uses
  br i1 %.not.i230822, label %._crit_edge826, label %.lr.ph825

.lr.ph825:                                        ; preds = %bb.iq
  %i.ath = sub nuw nsw i32 64, %i.aqj
  %i.ati = zext nneg i32 %i.ath to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.aql, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph825
  %i.atj = add nsw i64 %i.atf, -1                 ; 2 uses
  %i.atk = add i32 %i.aql, %i.aqk
  %i.atl = trunc i64 %i.atj to i32
  %i.atm = icmp ult i32 %i.atk, %i.atl
  %i.atn = icmp ugt i64 %i.atj, 4294967295
  %i.ato = or i1 %i.atm, %i.atn
  br i1 %i.ato, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.atp = shl nuw nsw i64 %i.atf, 3              ; 2 uses
  %i.atq = add i32 %i.aql, %i.aqk
  %i.atr = zext i32 %i.atq to i64
  %i.ats = shl nuw nsw i64 %i.atr, 3              ; 2 uses
  %i.att = sub nsw i64 %i.ats, %i.atp
  %diff.check = icmp ugt i64 %i.att, -32
  %i.atu = sub nsw i64 %i.atp, %i.ats
  %i.atv = add nsw i64 %i.atu, -9
  %diff.check1634 = icmp ult i64 %i.atv, 31
  %conflict.rdx = or i1 %diff.check, %diff.check1634
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.atf, 4294967292             ; 2 uses
  %i.atw = and i64 %i.atf, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ati, i64 0 ; 2 uses
  %broadcast.splatinsert1635 = insertelement <2 x i64> poison, i64 %.pre1147, i64 0 ; 2 uses
  %20 = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.atx = shufflevector <2 x i64> %broadcast.splatinsert1635, <2 x i64> poison, <2 x i32> zeroinitializer
  %21 = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aty = shufflevector <2 x i64> %broadcast.splatinsert1635, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.atz = sub i64 %i.atf, %index                 ; 3 uses
  %i.aua = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %i.atz ; 2 uses
  %i.aub = getelementptr inbounds i8, ptr %i.aua, i64 -8
  %i.auc = getelementptr inbounds i8, ptr %i.aua, i64 -24
  %wide.load = load <2 x i64>, ptr %i.aub, align 8, !tbaa !91
  %wide.load1637 = load <2 x i64>, ptr %i.auc, align 8, !tbaa !91
  %i.aud = getelementptr [8 x i8], ptr %6, i64 %i.atz ; 2 uses
  %i.aue = getelementptr i8, ptr %i.aud, i64 -8
  %i.auf = getelementptr i8, ptr %i.aud, i64 -24
  %wide.load1639.a = load <2 x i64>, ptr %i.aue, align 8, !tbaa !91
  %wide.load1640 = load <2 x i64>, ptr %i.auf, align 8, !tbaa !91
  %22 = trunc nuw i64 %i.atz to i32
  %23 = add i32 %i.aqk, %22
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %24 ; 2 uses
  %26 = getelementptr inbounds i8, ptr %25, i64 -8
  %27 = getelementptr inbounds i8, ptr %25, i64 -24
  %28 = lshr <2 x i64> %wide.load1639.a, %20
  %29 = shl <2 x i64> %wide.load, %i.atx
  %reverse1643 = or <2 x i64> %28, %29
  %30 = lshr <2 x i64> %wide.load1640, %21
  %31 = shl <2 x i64> %wide.load1637, %i.aty
  %reverse1644 = or <2 x i64> %30, %31
  store <2 x i64> %reverse1643, ptr %26, align 8, !tbaa !91
  store <2 x i64> %reverse1644, ptr %27, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aug = icmp eq i64 %index.next, %n.vec
  br i1 %i.aug, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.atf
  br i1 %cmp.n, label %._crit_edge826, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph825, %middle.block
  %indvars.iv1081.ph = phi i64 [ %i.atf, %vector.memcheck ], [ %i.atf, %vector.scevcheck ], [ %i.atf, %.lr.ph825 ], [ %i.atw, %middle.block ] ; 7 uses
  %xtraiter1938 = and i64 %indvars.iv1081.ph, 1
  %lcmp.mod1939.not = icmp eq i64 %xtraiter1938, 0
  br i1 %lcmp.mod1939.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.auh = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %indvars.iv1081.ph
  %i.aui = load i64, ptr %i.auh, align 8, !tbaa !91
  %i.auj = shl i64 %i.aui, %.pre1147
  %i.auk = add nsw i64 %indvars.iv1081.ph, -1
  %i.aul = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1081.ph
  %i.aum = load i64, ptr %i.aul, align 8, !tbaa !91
  %i.aun = lshr i64 %i.aum, %i.ati
  %i.auo = or i64 %i.aun, %i.auj
  %i.aup = trunc nuw i64 %indvars.iv1081.ph to i32
  %i.auq = add i32 %i.aqk, %i.aup
  %i.aur = zext i32 %i.auq to i64
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %i.aur
  store i64 %i.auo, ptr %i.aus, align 8, !tbaa !91
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1081.unr = phi i64 [ %indvars.iv1081.ph, %scalar.ph.preheader ], [ %i.auk, %scalar.ph.prol ]
  %i.aut = icmp eq i64 %indvars.iv1081.ph, 1
  br i1 %i.aut, label %._crit_edge826, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1081 = phi i64 [ %i.avj, %scalar.ph ], [ %indvars.iv1081.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %indvars.iv1081
  %i.auv = load i64, ptr %i.auu, align 8, !tbaa !91
  %i.auw = shl i64 %i.auv, %.pre1147
  %i.aux = add nsw i64 %indvars.iv1081, -1        ; 2 uses
  %i.auy = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1081
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !91
  %i.ava = lshr i64 %i.auz, %i.ati
  %i.avb = or i64 %i.ava, %i.auw
  %i.avc = trunc nuw i64 %indvars.iv1081 to i32
  %i.avd = add i32 %i.aqk, %i.avc
  %i.ave = zext i32 %i.avd to i64
  %i.avf = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %i.ave
  store i64 %i.avb, ptr %i.avf, align 8, !tbaa !91
  %i.avg = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1081
  %i.avh = load i64, ptr %i.avg, align 8, !tbaa !91
  %i.avi = shl i64 %i.avh, %.pre1147
  %i.avj = add nsw i64 %indvars.iv1081, -2        ; 2 uses
  %i.avk = getelementptr [8 x i8], ptr %6, i64 %i.aux
  %i.avl = load i64, ptr %i.avk, align 8, !tbaa !91
  %i.avm = lshr i64 %i.avl, %i.ati
  %i.avn = or i64 %i.avm, %i.avi
  %i.avo = trunc nuw i64 %i.aux to i32
  %i.avp = add i32 %i.aqk, %i.avo
  %i.avq = zext i32 %i.avp to i64
  %i.avr = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %i.avq
  store i64 %i.avn, ptr %i.avr, align 8, !tbaa !91
  %.not.i230.wide.1 = icmp eq i64 %i.avj, 0
  br i1 %.not.i230.wide.1, label %._crit_edge826, label %scalar.ph, !llvm.loop !265

._crit_edge826:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.iq
  %i.avs = load i64, ptr %i.ate, align 8, !tbaa !91
  %i.avt = shl i64 %i.avs, %.pre1147
  %i.avu = zext nneg i32 %i.aqk to i64
  %i.avv = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %i.avu
  store i64 %i.avt, ptr %i.avv, align 8, !tbaa !91
  %i.avw = add i32 %i.aql, %i.aqk                 ; 2 uses
  %i.avx = zext i32 %i.avw to i64
  %i.avy = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %i.avx
  %i.avz = load i64, ptr %i.avy, align 8, !tbaa !91
  %i.awa = icmp ne i64 %i.avz, 0
  %i.awb = zext i1 %i.awa to i32
  %i.awc = add i32 %i.avw, %i.awb
  store i32 %i.awc, ptr %6, align 8, !tbaa !177
  %.not45.i232827 = icmp eq i32 %i.aqk, 0
  br i1 %.not45.i232827, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph830.preheader

.lr.ph830.preheader:                              ; preds = %._crit_edge826
  %i.awd = lshr i32 %i.aqi, 3
  %i.awe = and i32 %i.awd, 536870904
  %i.awf = zext nneg i32 %i.awe to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ate, i8 0, i64 %i.awf, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit: ; preds = %.lr.ph830.preheader, %.lr.ph838, %.lr.ph847.preheader, %.lr.ph855.preheader, %._crit_edge826, %._crit_edge834, %._crit_edge843
  %i.awg = phi i32 [ %i.aqe, %._crit_edge843 ], [ %i.akl, %.lr.ph830.preheader ], [ %i.akl, %.lr.ph838 ], [ %i.aqe, %.lr.ph847.preheader ], [ %i.anc, %.lr.ph855.preheader ], [ %i.akl, %._crit_edge826 ], [ %i.akl, %._crit_edge834 ] ; 2 uses
  %i.awh = load i32, ptr %6, align 8, !tbaa !177  ; 4 uses
  %i.awi = icmp ult i32 %i.awh, %i.awg
  br i1 %i.awi, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %bb.ir

bb.ir:                                            ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit
  %i.awj = icmp ugt i32 %i.awh, %i.awg
  br i1 %i.awj, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %.preheader696

.preheader696:                                    ; preds = %bb.ir
  %.not.i2391620 = icmp eq i32 %i.awh, 0
  br i1 %.not.i2391620, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread568, label %.lr.ph1623

.lr.ph1623:                                       ; preds = %.preheader696
  %i.awk = zext i32 %i.awh to i64
  br label %bb.it

bb.is:                                            ; preds = %bb.it
  %i.awl = add nsw i64 %indvars.iv10991621, -1    ; 2 uses
  %.not.i239 = icmp eq i64 %i.awl, 0
  br i1 %.not.i239, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread568, label %bb.it, !llvm.loop !191

bb.it:                                            ; preds = %.lr.ph1623, %bb.is
  %.0.i2381622 = phi i32 [ undef, %.lr.ph1623 ], [ %.1.i240, %bb.is ]
  %indvars.iv10991621 = phi i64 [ %i.awk, %.lr.ph1623 ], [ %i.awl, %bb.is ] ; 3 uses
  %i.awm = getelementptr [8 x i8], ptr %6, i64 %indvars.iv10991621
  %i.awn = load i64, ptr %i.awm, align 8, !tbaa !91 ; 3 uses
  %i.awo = getelementptr [8 x i8], ptr %7, i64 %indvars.iv10991621
  %i.awp = load i64, ptr %i.awo, align 8, !tbaa !91 ; 3 uses
  %.not669 = icmp ult i64 %i.awn, %i.awp
  %.not670 = icmp ugt i64 %i.awn, %i.awp
  %..0.i = select i1 %.not670, i32 1, i32 %.0.i2381622
  %cond.i = icmp eq i64 %i.awn, %i.awp
  %.1.i240 = select i1 %.not669, i32 -1, i32 %..0.i ; 3 uses
  br i1 %cond.i, label %bb.is, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit: ; preds = %bb.it
  %.not680.i = icmp eq i32 %.1.i240, 0
  br i1 %.not680.i, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread568, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, %bb.ir, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %.2.i241567 = phi i32 [ %.1.i240, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit ], [ 1, %bb.ir ]
  %i.awq = icmp sgt i32 %.2.i241567, 0
  %i.awr = zext i1 %i.awq to i64
  br label %bb.iu

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread568: ; preds = %bb.is, %.preheader696, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %i.aws = and i64 %.0.i220.ph, 1
  br label %bb.iu

bb.iu:                                            ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread568, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread
  %.pn.i = phi i64 [ %i.awr, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread ], [ %i.aws, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread568 ]
  %.0604.i = add nuw nsw i64 %.pn.i, %.0.i220.ph  ; 2 uses
  %i.awt = icmp eq i64 %.0604.i, 9218868437227405312
  br i1 %i.awt, label %bb.iv, label %bb.jc, !prof !7

bb.iv:                                            ; preds = %bb.iu
  br i1 %.not623, label %bb.iz, label %bb.iw, !prof !24

bb.iw:                                            ; preds = %bb.iv
  %i.awu = load ptr, ptr %i.d, align 8, !tbaa !92 ; 2 uses
  %.not681.i = icmp eq ptr %i.awu, null
  br i1 %.not681.i, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  store i8 0, ptr %i.awu, align 1, !tbaa !81
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %i.awv = ptrtoint ptr %.7 to i64
  %i.aww = ptrtoint ptr %1 to i64
  %i.awx = sub i64 %i.awv, %i.aww
  %i.awy = shl i64 %i.awx, 8
  %i.awz = or disjoint i64 %i.awy, 1
  store i64 %i.awz, ptr %i.i, align 8, !tbaa !79
  %i.axa = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %1, ptr %i.axa, align 8, !tbaa !81
  store ptr %.7, ptr %i.d, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread576

bb.iz:                                            ; preds = %bb.iv
  %i.axb = and i32 %4, 16
  %.not672 = icmp eq i32 %i.axb, 0
  br i1 %.not672, label %bb.jb, label %bb.ja, !prof !24

bb.ja:                                            ; preds = %bb.iz
  store i64 20, ptr %i.i, align 8, !tbaa !79
  %i.axc = select i1 %i.t, i64 -4503599627370496, i64 9218868437227405312
  %i.axd = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.axc, ptr %i.axd, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread576

bb.jb:                                            ; preds = %bb.iz
  store ptr @.str.82, ptr %i.c, align 8, !tbaa !92
  store ptr %1, ptr %i.b, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit

bb.jc:                                            ; preds = %bb.iu
  store i64 20, ptr %i.i, align 8, !tbaa !79
  %i.axe = select i1 %i.t, i64 -9223372036854775808, i64 0
  %i.axf = or disjoint i64 %.0604.i, %i.axe
  %i.axg = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.axf, ptr %i.axg, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread576

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread: ; preds = %bb.aa, %bb.z, %bb.r, %bb.s, %bb.ac, %bb.gg, %bb.gk, %bb.gm, %bb.gq, %bb.gv, %bb.gx, %bb.hi, %bb.hd, %bb.ft, %bb.gc, %.loopexit695, %bb.fg, %bb.fh, %bb.fi, %bb.bj, %bb.bk, %bb.bl, %bb.dm, %bb.dj, %bb.dg, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.bw, %bb.bt, %bb.bq, %bb.bn
  %.34.ph.sink = phi ptr [ %i.ct, %bb.bn ], [ %i.bj, %bb.ac ], [ %.10.lcssa, %bb.gg ], [ %.10.lcssa, %bb.gk ], [ %.10.lcssa, %bb.gm ], [ %.11, %bb.gq ], [ %.11, %bb.gv ], [ %.11, %bb.gx ], [ %.7, %bb.hi ], [ %.7, %bb.hd ], [ %i.tr, %bb.ft ], [ %.6, %bb.gc ], [ %.2, %.loopexit695 ], [ %i.st, %bb.fg ], [ %i.st, %bb.fh ], [ %i.st, %bb.fi ], [ %i.hp, %bb.bj ], [ %i.hp, %bb.bk ], [ %i.hp, %bb.bl ], [ %i.hi, %bb.dm ], [ %i.hb, %bb.dj ], [ %i.gu, %bb.dg ], [ %i.gn, %bb.dd ], [ %i.gg, %bb.da ], [ %i.fz, %bb.cx ], [ %i.fs, %bb.cu ], [ %i.fl, %bb.cr ], [ %i.fe, %bb.co ], [ %i.ex, %bb.cl ], [ %i.eq, %bb.ci ], [ %i.ej, %bb.cf ], [ %i.ec, %bb.cc ], [ %i.dv, %bb.bz ], [ %i.do, %bb.bw ], [ %i.dh, %bb.bt ], [ %i.da, %bb.bq ], [ %i.bd, %bb.z ], [ %i.bd, %bb.aa ], [ %.037.i213, %bb.r ], [ %.037.i213, %bb.s ] ; 2 uses
  store ptr %.34.ph.sink, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjson18yyjson_read_numberEPKcPNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %.not19.i58 = icmp eq i128 %.lcssa819, 0
  br i1 %.not19.i58, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.hp

bb.hp:                                            ; preds = %._crit_edge412
  %i.ajj = add i32 %i.aic, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split: ; preds = %bb.hi, %bb.hp
  %.sink = phi i32 [ %i.aic, %bb.hp ], [ %i.aek, %bb.hi ]
  %i.ajk = phi ptr [ %6, %bb.hp ], [ %5, %bb.hi ]
  %.lcssa686.sink = phi i64 [ %.lcssa818, %bb.hp ], [ %.lcssa810, %bb.hi ]
  %.ph = phi i32 [ %i.ajj, %bb.hp ], [ 1, %bb.hi ]
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajm = zext i32 %.sink to i64
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %i.ajm
  store i64 %.lcssa686.sink, ptr %i.ajn, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit: ; preds = %bb.hn, %bb.hg, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split, %._crit_edge404, %._crit_edge437, %._crit_edge398, %._crit_edge412, %._crit_edge431, %._crit_edge445
  %i.ajo = phi i32 [ %i.ahq, %._crit_edge398 ], [ %i.aic, %._crit_edge412 ], [ %i.aic, %._crit_edge404 ], [ 1, %._crit_edge431 ], [ 1, %._crit_edge445 ], [ 1, %bb.hg ], [ %.ph, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split ], [ 1, %._crit_edge437 ], [ %i.ahx, %bb.hn ] ; 16 uses
  %i.ajp = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.ajp, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.ajq = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.ajr = lshr i32 %.sroa.9.0.i, 6               ; 14 uses
  %i.ajs = icmp eq i32 %i.ajq, 0
  br i1 %i.ajs, label %.preheader359, label %bb.hr, !prof !7

.preheader359:                                    ; preds = %bb.hq
  %.not46.i473 = icmp eq i32 %i.ajo, 0
  br i1 %.not46.i473, label %.lr.ph480.preheader, label %.lr.ph475

.lr.ph475:                                        ; preds = %.preheader359
  %i.ajt = add nsw i32 %i.ajr, -1                 ; 6 uses
  %i.aju = zext i32 %i.ajo to i64                 ; 9 uses
  %min.iters.check797 = icmp ult i32 %i.ajo, 30
  br i1 %min.iters.check797, label %scalar.ph796.preheader, label %vector.scevcheck793

vector.scevcheck793:                              ; preds = %.lr.ph475
  %i.ajv = add nsw i64 %i.aju, -1                 ; 2 uses
  %i.ajw = add i32 %i.ajo, %i.ajr
  %i.ajx = add i32 %i.ajw, -1
  %i.ajy = trunc i64 %i.ajv to i32
  %i.ajz = icmp ult i32 %i.ajx, %i.ajy
  %i.aka = icmp ugt i64 %i.ajv, 4294967295
  %i.akb = or i1 %i.ajz, %i.aka
  br i1 %i.akb, label %scalar.ph796.preheader, label %vector.memcheck794

vector.memcheck794:                               ; preds = %vector.scevcheck793
  %i.akc = add i32 %i.ajo, %i.ajr
  %i.akd = add i32 %i.akc, -1
  %i.ake = zext i32 %i.akd to i64
  %i.akf = sub nsw i64 %i.aju, %i.ake
  %i.akg = shl nsw i64 %i.akf, 3
  %i.akh = add nsw i64 %i.akg, -9
  %diff.check795 = icmp ult i64 %i.akh, 31
  br i1 %diff.check795, label %scalar.ph796.preheader, label %vector.ph798

vector.ph798:                                     ; preds = %vector.memcheck794
  %n.vec800 = and i64 %i.aju, 4294967292          ; 2 uses
  %i.aki = and i64 %i.aju, 3
  br label %vector.body801

vector.body801:                                   ; preds = %vector.body801, %vector.ph798
  %index802 = phi i64 [ 0, %vector.ph798 ], [ %index.next805, %vector.body801 ] ; 2 uses
  %i.akj = sub i64 %i.aju, %index802              ; 2 uses
  %i.akk = getelementptr [8 x i8], ptr %6, i64 %i.akj ; 2 uses
  %i.akl = getelementptr i8, ptr %i.akk, i64 -8
  %i.akm = getelementptr i8, ptr %i.akk, i64 -24
  %wide.load803 = load <2 x i64>, ptr %i.akl, align 8, !tbaa !91
  %wide.load804 = load <2 x i64>, ptr %i.akm, align 8, !tbaa !91
  %i.akn = trunc nuw i64 %i.akj to i32
  %i.ako = add i32 %i.ajt, %i.akn
  %i.akp = zext i32 %i.ako to i64
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.akp ; 2 uses
  %i.akr = getelementptr inbounds i8, ptr %i.akq, i64 -8
  %i.aks = getelementptr inbounds i8, ptr %i.akq, i64 -24
  store <2 x i64> %wide.load803, ptr %i.akr, align 8, !tbaa !91
  store <2 x i64> %wide.load804, ptr %i.aks, align 8, !tbaa !91
  %index.next805 = add nuw i64 %index802, 4       ; 2 uses
  %i.akt = icmp eq i64 %index.next805, %n.vec800
  br i1 %i.akt, label %middle.block806, label %vector.body801, !llvm.loop !270

middle.block806:                                  ; preds = %vector.body801
  %cmp.n807 = icmp eq i64 %n.vec800, %i.aju
  br i1 %cmp.n807, label %.lr.ph480.preheader, label %scalar.ph796.preheader

scalar.ph796.preheader:                           ; preds = %vector.memcheck794, %vector.scevcheck793, %.lr.ph475, %middle.block806
  %indvars.iv554.ph = phi i64 [ %i.aju, %vector.memcheck794 ], [ %i.aju, %vector.scevcheck793 ], [ %i.aju, %.lr.ph475 ], [ %i.aki, %middle.block806 ] ; 4 uses
  %i.aku = add nsw i64 %indvars.iv554.ph, -1
  %xtraiter866 = and i64 %indvars.iv554.ph, 3     ; 2 uses
  %lcmp.mod867.not = icmp eq i64 %xtraiter866, 0
  br i1 %lcmp.mod867.not, label %scalar.ph796.prol.loopexit, label %scalar.ph796.prol

scalar.ph796.prol:                                ; preds = %scalar.ph796.preheader, %scalar.ph796.prol
  %indvars.iv554.prol = phi i64 [ %i.akv, %scalar.ph796.prol ], [ %indvars.iv554.ph, %scalar.ph796.preheader ] ; 3 uses
  %prol.iter868 = phi i64 [ %prol.iter868.next, %scalar.ph796.prol ], [ 0, %scalar.ph796.preheader ]
  %i.akv = add nsw i64 %indvars.iv554.prol, -1    ; 2 uses
  %i.akw = getelementptr [8 x i8], ptr %6, i64 %indvars.iv554.prol
  %i.akx = load i64, ptr %i.akw, align 8, !tbaa !91
  %i.aky = trunc nuw i64 %indvars.iv554.prol to i32
  %i.akz = add i32 %i.ajt, %i.aky
  %i.ala = zext i32 %i.akz to i64
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.ala
  store i64 %i.akx, ptr %i.alb, align 8, !tbaa !91
  %prol.iter868.next = add i64 %prol.iter868, 1   ; 2 uses
  %prol.iter868.cmp.not = icmp eq i64 %prol.iter868.next, %xtraiter866
  br i1 %prol.iter868.cmp.not, label %scalar.ph796.prol.loopexit, label %scalar.ph796.prol, !llvm.loop !271

scalar.ph796.prol.loopexit:                       ; preds = %scalar.ph796.prol, %scalar.ph796.preheader
  %indvars.iv554.unr = phi i64 [ %indvars.iv554.ph, %scalar.ph796.preheader ], [ %i.akv, %scalar.ph796.prol ]
  %i.alc = icmp ult i64 %i.aku, 3
  br i1 %i.alc, label %.lr.ph480.preheader, label %scalar.ph796

scalar.ph796:                                     ; preds = %scalar.ph796.prol.loopexit, %scalar.ph796
  %indvars.iv554 = phi i64 [ %i.aly, %scalar.ph796 ], [ %indvars.iv554.unr, %scalar.ph796.prol.loopexit ] ; 6 uses
  %i.ald = add nsw i64 %indvars.iv554, -1         ; 2 uses
  %i.ale = getelementptr [8 x i8], ptr %6, i64 %indvars.iv554
  %i.alf = load i64, ptr %i.ale, align 8, !tbaa !91
  %i.alg = trunc nuw i64 %indvars.iv554 to i32
  %i.alh = add i32 %i.ajt, %i.alg
  %i.ali = zext i32 %i.alh to i64
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.ali
  store i64 %i.alf, ptr %i.alj, align 8, !tbaa !91
  %i.alk = add nsw i64 %indvars.iv554, -2         ; 2 uses
  %i.all = getelementptr [8 x i8], ptr %6, i64 %i.ald
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !91
  %i.aln = trunc nuw i64 %i.ald to i32
  %i.alo = add i32 %i.ajt, %i.aln
  %i.alp = zext i32 %i.alo to i64
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.alp
  store i64 %i.alm, ptr %i.alq, align 8, !tbaa !91
  %i.alr = add nsw i64 %indvars.iv554, -3         ; 2 uses
  %i.als = getelementptr [8 x i8], ptr %6, i64 %i.alk
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !91
  %i.alu = trunc nuw i64 %i.alk to i32
  %i.alv = add i32 %i.ajt, %i.alu
  %i.alw = zext i32 %i.alv to i64
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.alw
  store i64 %i.alt, ptr %i.alx, align 8, !tbaa !91
  %i.aly = add nsw i64 %indvars.iv554, -4         ; 2 uses
  %i.alz = getelementptr [8 x i8], ptr %6, i64 %i.alr
  %i.ama = load i64, ptr %i.alz, align 8, !tbaa !91
  %i.amb = trunc nuw i64 %i.alr to i32
  %i.amc = add i32 %i.ajt, %i.amb
  %i.amd = zext i32 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.amd
  store i64 %i.ama, ptr %i.ame, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.aly, 0
  br i1 %.not46.i.wide.3, label %.lr.ph480.preheader, label %scalar.ph796, !llvm.loop !272

.lr.ph480.preheader:                              ; preds = %scalar.ph796.prol.loopexit, %scalar.ph796, %middle.block806, %.preheader359
  %i.amf = add i32 %i.ajo, %i.ajr
  %i.amg = add nsw i32 %i.ajr, -1
  %i.amh = zext i32 %i.amg to i64
  %i.ami = shl nuw nsw i64 %i.amh, 3
  %i.amj = add nuw nsw i64 %i.ami, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acq, i8 0, i64 %i.amj, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

bb.hr:                                            ; preds = %bb.hq
  %i.amk = zext i32 %i.ajo to i64                 ; 10 uses
  %i.aml = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.amk
  store i64 0, ptr %i.aml, align 8, !tbaa !91
  %.not.i37464 = icmp eq i32 %i.ajo, 0
  %.pre579 = zext nneg i32 %i.ajq to i64          ; 5 uses
  br i1 %.not.i37464, label %._crit_edge468, label %.lr.ph467

.lr.ph467:                                        ; preds = %bb.hr
  %i.amm = sub nuw nsw i32 64, %i.ajq
  %i.amn = zext nneg i32 %i.amm to i64            ; 4 uses
  %min.iters.check769 = icmp ult i32 %i.ajo, 20
  br i1 %min.iters.check769, label %scalar.ph768.preheader, label %vector.scevcheck763

vector.scevcheck763:                              ; preds = %.lr.ph467
  %i.amo = add nsw i64 %i.amk, -1                 ; 2 uses
  %i.amp = add i32 %i.ajo, %i.ajr
  %i.amq = trunc i64 %i.amo to i32
  %i.amr = icmp ult i32 %i.amp, %i.amq
  %i.ams = icmp ugt i64 %i.amo, 4294967295
  %i.amt = or i1 %i.amr, %i.ams
  br i1 %i.amt, label %scalar.ph768.preheader, label %vector.memcheck764

vector.memcheck764:                               ; preds = %vector.scevcheck763
  %i.amu = shl nuw nsw i64 %i.amk, 3              ; 2 uses
  %i.amv = add i32 %i.ajo, %i.ajr
  %i.amw = zext i32 %i.amv to i64
  %i.amx = shl nuw nsw i64 %i.amw, 3              ; 2 uses
  %i.amy = sub nsw i64 %i.amx, %i.amu
  %diff.check765 = icmp ugt i64 %i.amy, -32
  %i.amz = sub nsw i64 %i.amu, %i.amx
  %i.ana = add nsw i64 %i.amz, -9
  %diff.check766 = icmp ult i64 %i.ana, 31
  %conflict.rdx767 = or i1 %diff.check765, %diff.check766
  br i1 %conflict.rdx767, label %scalar.ph768.preheader, label %vector.ph770

vector.ph770:                                     ; preds = %vector.memcheck764
  %n.vec772 = and i64 %i.amk, 4294967292          ; 2 uses
  %i.anb = and i64 %i.amk, 3
  %broadcast.splatinsert773 = insertelement <2 x i64> poison, i64 %i.amn, i64 0 ; 2 uses
  %broadcast.splatinsert775 = insertelement <2 x i64> poison, i64 %.pre579, i64 0 ; 2 uses
  %7 = shufflevector <2 x i64> %broadcast.splatinsert773, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.anc = shufflevector <2 x i64> %broadcast.splatinsert775, <2 x i64> poison, <2 x i32> zeroinitializer
  %8 = shufflevector <2 x i64> %broadcast.splatinsert773, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.and = shufflevector <2 x i64> %broadcast.splatinsert775, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body777

vector.body777:                                   ; preds = %vector.body777, %vector.ph770
  %index778 = phi i64 [ 0, %vector.ph770 ], [ %index.next789, %vector.body777 ] ; 2 uses
  %i.ane = sub i64 %i.amk, %index778              ; 3 uses
  %i.anf = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.ane ; 2 uses
  %i.ang = getelementptr inbounds i8, ptr %i.anf, i64 -8
  %i.anh = getelementptr inbounds i8, ptr %i.anf, i64 -24
  %wide.load779 = load <2 x i64>, ptr %i.ang, align 8, !tbaa !91
  %wide.load780 = load <2 x i64>, ptr %i.anh, align 8, !tbaa !91
  %i.ani = getelementptr [8 x i8], ptr %6, i64 %i.ane ; 2 uses
  %i.anj = getelementptr i8, ptr %i.ani, i64 -8
  %i.ank = getelementptr i8, ptr %i.ani, i64 -24
  %wide.load783 = load <2 x i64>, ptr %i.anj, align 8, !tbaa !91
  %wide.load784 = load <2 x i64>, ptr %i.ank, align 8, !tbaa !91
  %9 = trunc nuw i64 %i.ane to i32
  %10 = add i32 %i.ajr, %9
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %11 ; 2 uses
  %13 = getelementptr inbounds i8, ptr %12, i64 -8
  %14 = getelementptr inbounds i8, ptr %12, i64 -24
  %15 = lshr <2 x i64> %wide.load783, %7
  %16 = shl <2 x i64> %wide.load779, %i.anc
  %reverse787 = or <2 x i64> %15, %16
  %17 = lshr <2 x i64> %wide.load784, %8
  %18 = shl <2 x i64> %wide.load780, %i.and
  %reverse788 = or <2 x i64> %17, %18
  store <2 x i64> %reverse787, ptr %13, align 8, !tbaa !91
  store <2 x i64> %reverse788, ptr %14, align 8, !tbaa !91
  %index.next789 = add nuw i64 %index778, 4       ; 2 uses
  %i.anl = icmp eq i64 %index.next789, %n.vec772
  br i1 %i.anl, label %middle.block790, label %vector.body777, !llvm.loop !273

middle.block790:                                  ; preds = %vector.body777
  %cmp.n791 = icmp eq i64 %n.vec772, %i.amk
  br i1 %cmp.n791, label %._crit_edge468, label %scalar.ph768.preheader

scalar.ph768.preheader:                           ; preds = %vector.memcheck764, %vector.scevcheck763, %.lr.ph467, %middle.block790
  %indvars.iv549.ph = phi i64 [ %i.amk, %vector.memcheck764 ], [ %i.amk, %vector.scevcheck763 ], [ %i.amk, %.lr.ph467 ], [ %i.anb, %middle.block790 ] ; 7 uses
  %xtraiter863 = and i64 %indvars.iv549.ph, 1
  %lcmp.mod864.not = icmp eq i64 %xtraiter863, 0
  br i1 %lcmp.mod864.not, label %scalar.ph768.prol.loopexit, label %scalar.ph768.prol

scalar.ph768.prol:                                ; preds = %scalar.ph768.preheader
  %i.anm = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv549.ph
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !91
  %i.ano = shl i64 %i.ann, %.pre579
  %i.anp = add nsw i64 %indvars.iv549.ph, -1
  %i.anq = getelementptr [8 x i8], ptr %6, i64 %indvars.iv549.ph
  %i.anr = load i64, ptr %i.anq, align 8, !tbaa !91
  %i.ans = lshr i64 %i.anr, %i.amn
  %i.ant = or i64 %i.ans, %i.ano
  %i.anu = trunc nuw i64 %indvars.iv549.ph to i32
  %i.anv = add i32 %i.ajr, %i.anu
  %i.anw = zext i32 %i.anv to i64
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.anw
  store i64 %i.ant, ptr %i.anx, align 8, !tbaa !91
  br label %scalar.ph768.prol.loopexit

scalar.ph768.prol.loopexit:                       ; preds = %scalar.ph768.prol, %scalar.ph768.preheader
  %indvars.iv549.unr = phi i64 [ %indvars.iv549.ph, %scalar.ph768.preheader ], [ %i.anp, %scalar.ph768.prol ]
  %i.any = icmp eq i64 %indvars.iv549.ph, 1
  br i1 %i.any, label %._crit_edge468, label %scalar.ph768

scalar.ph768:                                     ; preds = %scalar.ph768.prol.loopexit, %scalar.ph768
  %indvars.iv549 = phi i64 [ %i.aoo, %scalar.ph768 ], [ %indvars.iv549.unr, %scalar.ph768.prol.loopexit ] ; 6 uses
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv549
  %i.aoa = load i64, ptr %i.anz, align 8, !tbaa !91
  %i.aob = shl i64 %i.aoa, %.pre579
  %i.aoc = add nsw i64 %indvars.iv549, -1         ; 2 uses
  %i.aod = getelementptr [8 x i8], ptr %6, i64 %indvars.iv549
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !91
  %i.aof = lshr i64 %i.aoe, %i.amn
  %i.aog = or i64 %i.aof, %i.aob
  %i.aoh = trunc nuw i64 %indvars.iv549 to i32
  %i.aoi = add i32 %i.ajr, %i.aoh
  %i.aoj = zext i32 %i.aoi to i64
  %i.aok = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.aoj
  store i64 %i.aog, ptr %i.aok, align 8, !tbaa !91
  %i.aol = getelementptr [8 x i8], ptr %6, i64 %indvars.iv549
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !91
  %i.aon = shl i64 %i.aom, %.pre579
  %i.aoo = add nsw i64 %indvars.iv549, -2         ; 2 uses
  %i.aop = getelementptr [8 x i8], ptr %6, i64 %i.aoc
  %i.aoq = load i64, ptr %i.aop, align 8, !tbaa !91
  %i.aor = lshr i64 %i.aoq, %i.amn
  %i.aos = or i64 %i.aor, %i.aon
  %i.aot = trunc nuw i64 %i.aoc to i32
  %i.aou = add i32 %i.ajr, %i.aot
  %i.aov = zext i32 %i.aou to i64
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.aov
  store i64 %i.aos, ptr %i.aow, align 8, !tbaa !91
  %.not.i37.wide.1 = icmp eq i64 %i.aoo, 0
  br i1 %.not.i37.wide.1, label %._crit_edge468, label %scalar.ph768, !llvm.loop !274

._crit_edge468:                                   ; preds = %scalar.ph768.prol.loopexit, %scalar.ph768, %middle.block790, %bb.hr
  %i.aox = load i64, ptr %i.acq, align 8, !tbaa !91
  %i.aoy = shl i64 %i.aox, %.pre579
  %i.aoz = zext nneg i32 %i.ajr to i64
  %i.apa = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.aoz
  store i64 %i.aoy, ptr %i.apa, align 8, !tbaa !91
  %i.apb = add i32 %i.ajo, %i.ajr                 ; 2 uses
  %i.apc = zext i32 %i.apb to i64
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.apc
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !91
  %i.apf = icmp ne i64 %i.ape, 0
  %i.apg = zext i1 %i.apf to i32
  %i.aph = add i32 %i.apb, %i.apg                 ; 2 uses
  %.not45.i469 = icmp eq i32 %i.ajr, 0
  br i1 %.not45.i469, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph472.preheader

.lr.ph472.preheader:                              ; preds = %._crit_edge468
  %i.api = lshr i32 %.sroa.9.0.i, 3
  %i.apj = and i32 %i.api, 268435448
  %i.apk = zext nneg i32 %i.apj to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.acq, i8 0, i64 %i.apk, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

bb.hs:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.apl = sub nsw i32 0, %.sroa.9.0.i            ; 4 uses
  %i.apm = and i32 %i.apl, 63                     ; 3 uses
  %i.apn = lshr i32 %i.apl, 6                     ; 14 uses
  %i.apo = load i32, ptr %5, align 8, !tbaa !177  ; 12 uses
  %i.app = icmp eq i32 %i.apm, 0
  br i1 %i.app, label %.preheader362, label %bb.ht, !prof !7

.preheader362:                                    ; preds = %bb.hs
  %.not46.i44456 = icmp eq i32 %i.apo, 0
  br i1 %.not46.i44456, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %.preheader362
  %i.apq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.apr = add nsw i32 %i.apn, -1                 ; 6 uses
  %i.aps = zext i32 %i.apo to i64                 ; 9 uses
  %min.iters.check751 = icmp ult i32 %i.apo, 30
  br i1 %min.iters.check751, label %scalar.ph750.preheader, label %vector.scevcheck747

vector.scevcheck747:                              ; preds = %.lr.ph458
  %i.apt = add nsw i64 %i.aps, -1                 ; 2 uses
  %i.apu = add i32 %i.apo, %i.apn
  %i.apv = add i32 %i.apu, -1
  %i.apw = trunc i64 %i.apt to i32
  %i.apx = icmp ult i32 %i.apv, %i.apw
  %i.apy = icmp ugt i64 %i.apt, 4294967295
  %i.apz = or i1 %i.apx, %i.apy
  br i1 %i.apz, label %scalar.ph750.preheader, label %vector.memcheck748

vector.memcheck748:                               ; preds = %vector.scevcheck747
  %i.aqa = add i32 %i.apo, %i.apn
  %i.aqb = add i32 %i.aqa, -1
  %i.aqc = zext i32 %i.aqb to i64
  %i.aqd = sub nsw i64 %i.aps, %i.aqc
  %i.aqe = shl nsw i64 %i.aqd, 3
  %i.aqf = add nsw i64 %i.aqe, -9
  %diff.check749 = icmp ult i64 %i.aqf, 31
  br i1 %diff.check749, label %scalar.ph750.preheader, label %vector.ph752

vector.ph752:                                     ; preds = %vector.memcheck748
  %n.vec754 = and i64 %i.aps, 4294967292          ; 2 uses
  %i.aqg = and i64 %i.aps, 3
  br label %vector.body755

vector.body755:                                   ; preds = %vector.body755, %vector.ph752
  %index756 = phi i64 [ 0, %vector.ph752 ], [ %index.next759, %vector.body755 ] ; 2 uses
  %i.aqh = sub i64 %i.aps, %index756              ; 2 uses
  %i.aqi = getelementptr [8 x i8], ptr %5, i64 %i.aqh ; 2 uses
  %i.aqj = getelementptr i8, ptr %i.aqi, i64 -8
  %i.aqk = getelementptr i8, ptr %i.aqi, i64 -24
  %wide.load757 = load <2 x i64>, ptr %i.aqj, align 8, !tbaa !91
  %wide.load758 = load <2 x i64>, ptr %i.aqk, align 8, !tbaa !91
  %i.aql = trunc nuw i64 %i.aqh to i32
  %i.aqm = add i32 %i.apr, %i.aql
  %i.aqn = zext i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds nuw [8 x i8], ptr %i.apq, i64 %i.aqn ; 2 uses
  %i.aqp = getelementptr inbounds i8, ptr %i.aqo, i64 -8
  %i.aqq = getelementptr inbounds i8, ptr %i.aqo, i64 -24
  store <2 x i64> %wide.load757, ptr %i.aqp, align 8, !tbaa !91
  store <2 x i64> %wide.load758, ptr %i.aqq, align 8, !tbaa !91
  %index.next759 = add nuw i64 %index756, 4       ; 2 uses
  %i.aqr = icmp eq i64 %index.next759, %n.vec754
  br i1 %i.aqr, label %middle.block760, label %vector.body755, !llvm.loop !275

middle.block760:                                  ; preds = %vector.body755
  %cmp.n761 = icmp eq i64 %n.vec754, %i.aps
  br i1 %cmp.n761, label %._crit_edge459, label %scalar.ph750.preheader

scalar.ph750.preheader:                           ; preds = %vector.memcheck748, %vector.scevcheck747, %.lr.ph458, %middle.block760
  %indvars.iv544.ph = phi i64 [ %i.aps, %vector.memcheck748 ], [ %i.aps, %vector.scevcheck747 ], [ %i.aps, %.lr.ph458 ], [ %i.aqg, %middle.block760 ] ; 4 uses
  %i.aqs = add nsw i64 %indvars.iv544.ph, -1
  %xtraiter861 = and i64 %indvars.iv544.ph, 3     ; 2 uses
  %lcmp.mod862.not = icmp eq i64 %xtraiter861, 0
  br i1 %lcmp.mod862.not, label %scalar.ph750.prol.loopexit, label %scalar.ph750.prol

scalar.ph750.prol:                                ; preds = %scalar.ph750.preheader, %scalar.ph750.prol
  %indvars.iv544.prol = phi i64 [ %i.aqt, %scalar.ph750.prol ], [ %indvars.iv544.ph, %scalar.ph750.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph750.prol ], [ 0, %scalar.ph750.preheader ]
  %i.aqt = add nsw i64 %indvars.iv544.prol, -1    ; 2 uses
  %i.aqu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv544.prol
  %i.aqv = load i64, ptr %i.aqu, align 8, !tbaa !91
  %i.aqw = trunc nuw i64 %indvars.iv544.prol to i32
  %i.aqx = add i32 %i.apr, %i.aqw
  %i.aqy = zext i32 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %i.apq, i64 %i.aqy
  store i64 %i.aqv, ptr %i.aqz, align 8, !tbaa !91
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter861
  br i1 %prol.iter.cmp.not, label %scalar.ph750.prol.loopexit, label %scalar.ph750.prol, !llvm.loop !276

scalar.ph750.prol.loopexit:                       ; preds = %scalar.ph750.prol, %scalar.ph750.preheader
  %indvars.iv544.unr = phi i64 [ %indvars.iv544.ph, %scalar.ph750.preheader ], [ %i.aqt, %scalar.ph750.prol ]
  %i.ara = icmp ult i64 %i.aqs, 3
  br i1 %i.ara, label %._crit_edge459, label %scalar.ph750

scalar.ph750:                                     ; preds = %scalar.ph750.prol.loopexit, %scalar.ph750
  %indvars.iv544 = phi i64 [ %i.arw, %scalar.ph750 ], [ %indvars.iv544.unr, %scalar.ph750.prol.loopexit ] ; 6 uses
  %i.arb = add nsw i64 %indvars.iv544, -1         ; 2 uses
  %i.arc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv544
  %i.ard = load i64, ptr %i.arc, align 8, !tbaa !91
  %i.are = trunc nuw i64 %indvars.iv544 to i32
  %i.arf = add i32 %i.apr, %i.are
  %i.arg = zext i32 %i.arf to i64
  %i.arh = getelementptr inbounds nuw [8 x i8], ptr %i.apq, i64 %i.arg
  store i64 %i.ard, ptr %i.arh, align 8, !tbaa !91
  %i.ari = add nsw i64 %indvars.iv544, -2         ; 2 uses
  %i.arj = getelementptr [8 x i8], ptr %5, i64 %i.arb
  %i.ark = load i64, ptr %i.arj, align 8, !tbaa !91
  %i.arl = trunc nuw i64 %i.arb to i32
  %i.arm = add i32 %i.apr, %i.arl
  %i.arn = zext i32 %i.arm to i64
  %i.aro = getelementptr inbounds nuw [8 x i8], ptr %i.apq, i64 %i.arn
  store i64 %i.ark, ptr %i.aro, align 8, !tbaa !91
  %i.arp = add nsw i64 %indvars.iv544, -3         ; 2 uses
  %i.arq = getelementptr [8 x i8], ptr %5, i64 %i.ari
  %i.arr = load i64, ptr %i.arq, align 8, !tbaa !91
  %i.ars = trunc nuw i64 %i.ari to i32
  %i.art = add i32 %i.apr, %i.ars
  %i.aru = zext i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %i.apq, i64 %i.aru
  store i64 %i.arr, ptr %i.arv, align 8, !tbaa !91
  %i.arw = add nsw i64 %indvars.iv544, -4         ; 2 uses
  %i.arx = getelementptr [8 x i8], ptr %5, i64 %i.arp
  %i.ary = load i64, ptr %i.arx, align 8, !tbaa !91
  %i.arz = trunc nuw i64 %i.arp to i32
  %i.asa = add i32 %i.apr, %i.arz
  %i.asb = zext i32 %i.asa to i64
  %i.asc = getelementptr inbounds nuw [8 x i8], ptr %i.apq, i64 %i.asb
  store i64 %i.ary, ptr %i.asc, align 8, !tbaa !91
  %.not46.i44.wide.3 = icmp eq i64 %i.arw, 0
  br i1 %.not46.i44.wide.3, label %._crit_edge459, label %scalar.ph750, !llvm.loop !277

._crit_edge459:                                   ; preds = %scalar.ph750.prol.loopexit, %scalar.ph750, %middle.block760, %.preheader362
  %i.asd = add i32 %i.apo, %i.apn
  store i32 %i.asd, ptr %5, align 8, !tbaa !177
  %.not47.i46460 = icmp eq i32 %i.apn, 0
  br i1 %.not47.i46460, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph463

.lr.ph463:                                        ; preds = %._crit_edge459
  %i.ase = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.asf = lshr exact i32 %i.apl, 3
  %i.asg = zext nneg i32 %i.asf to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ase, i8 0, i64 %i.asg, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

bb.ht:                                            ; preds = %bb.hs
  %i.ash = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.asi = zext i32 %i.apo to i64                 ; 10 uses
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %i.asi
  store i64 0, ptr %i.asj, align 8, !tbaa !91
  %.not.i40447 = icmp eq i32 %i.apo, 0
  %.pre581 = zext nneg i32 %i.apm to i64          ; 5 uses
  br i1 %.not.i40447, label %._crit_edge451, label %.lr.ph450

.lr.ph450:                                        ; preds = %bb.ht
  %i.ask = sub nuw nsw i32 64, %i.apm
  %i.asl = zext nneg i32 %i.ask to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.apo, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph450
  %i.asm = add nsw i64 %i.asi, -1                 ; 2 uses
  %i.asn = add i32 %i.apo, %i.apn
  %i.aso = trunc i64 %i.asm to i32
  %i.asp = icmp ult i32 %i.asn, %i.aso
  %i.asq = icmp ugt i64 %i.asm, 4294967295
  %i.asr = or i1 %i.asp, %i.asq
  br i1 %i.asr, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ass = shl nuw nsw i64 %i.asi, 3              ; 2 uses
  %i.ast = add i32 %i.apo, %i.apn
  %i.asu = zext i32 %i.ast to i64
  %i.asv = shl nuw nsw i64 %i.asu, 3              ; 2 uses
  %i.asw = sub nsw i64 %i.asv, %i.ass
  %diff.check = icmp ugt i64 %i.asw, -32
  %i.asx = sub nsw i64 %i.ass, %i.asv
  %i.asy = add nsw i64 %i.asx, -9
  %diff.check736 = icmp ult i64 %i.asy, 31
  %conflict.rdx = or i1 %diff.check, %diff.check736
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.asi, 4294967292             ; 2 uses
  %i.asz = and i64 %i.asi, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.asl, i64 0 ; 2 uses
  %broadcast.splatinsert737 = insertelement <2 x i64> poison, i64 %.pre581, i64 0 ; 2 uses
  %19 = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ata = shufflevector <2 x i64> %broadcast.splatinsert737, <2 x i64> poison, <2 x i32> zeroinitializer
  %20 = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.atb = shufflevector <2 x i64> %broadcast.splatinsert737, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.atc = sub i64 %i.asi, %index                 ; 3 uses
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %i.atc ; 2 uses
  %i.ate = getelementptr inbounds i8, ptr %i.atd, i64 -8
  %i.atf = getelementptr inbounds i8, ptr %i.atd, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ate, align 8, !tbaa !91
  %wide.load739 = load <2 x i64>, ptr %i.atf, align 8, !tbaa !91
  %i.atg = getelementptr [8 x i8], ptr %5, i64 %i.atc ; 2 uses
  %i.ath = getelementptr i8, ptr %i.atg, i64 -8
  %i.ati = getelementptr i8, ptr %i.atg, i64 -24
  %wide.load741.a = load <2 x i64>, ptr %i.ath, align 8, !tbaa !91
  %wide.load742 = load <2 x i64>, ptr %i.ati, align 8, !tbaa !91
  %21 = trunc nuw i64 %i.atc to i32
  %22 = add i32 %i.apn, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %23 ; 2 uses
  %25 = getelementptr inbounds i8, ptr %24, i64 -8
  %26 = getelementptr inbounds i8, ptr %24, i64 -24
  %27 = lshr <2 x i64> %wide.load741.a, %19
  %28 = shl <2 x i64> %wide.load, %i.ata
  %reverse745 = or <2 x i64> %27, %28
  %29 = lshr <2 x i64> %wide.load742, %20
  %30 = shl <2 x i64> %wide.load739, %i.atb
  %reverse746 = or <2 x i64> %29, %30
  store <2 x i64> %reverse745, ptr %25, align 8, !tbaa !91
  store <2 x i64> %reverse746, ptr %26, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.atj = icmp eq i64 %index.next, %n.vec
  br i1 %i.atj, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.asi
  br i1 %cmp.n, label %._crit_edge451, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph450, %middle.block
  %indvars.iv539.ph = phi i64 [ %i.asi, %vector.memcheck ], [ %i.asi, %vector.scevcheck ], [ %i.asi, %.lr.ph450 ], [ %i.asz, %middle.block ] ; 7 uses
  %xtraiter859 = and i64 %indvars.iv539.ph, 1
  %lcmp.mod860.not = icmp eq i64 %xtraiter859, 0
  br i1 %lcmp.mod860.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.atk = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %indvars.iv539.ph
  %i.atl = load i64, ptr %i.atk, align 8, !tbaa !91
  %i.atm = shl i64 %i.atl, %.pre581
  %i.atn = add nsw i64 %indvars.iv539.ph, -1
  %i.ato = getelementptr [8 x i8], ptr %5, i64 %indvars.iv539.ph
  %i.atp = load i64, ptr %i.ato, align 8, !tbaa !91
  %i.atq = lshr i64 %i.atp, %i.asl
  %i.atr = or i64 %i.atq, %i.atm
  %i.ats = trunc nuw i64 %indvars.iv539.ph to i32
  %i.att = add i32 %i.apn, %i.ats
  %i.atu = zext i32 %i.att to i64
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %i.atu
  store i64 %i.atr, ptr %i.atv, align 8, !tbaa !91
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv539.unr = phi i64 [ %indvars.iv539.ph, %scalar.ph.preheader ], [ %i.atn, %scalar.ph.prol ]
  %i.atw = icmp eq i64 %indvars.iv539.ph, 1
  br i1 %i.atw, label %._crit_edge451, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv539 = phi i64 [ %i.aum, %scalar.ph ], [ %indvars.iv539.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %indvars.iv539
  %i.aty = load i64, ptr %i.atx, align 8, !tbaa !91
  %i.atz = shl i64 %i.aty, %.pre581
  %i.aua = add nsw i64 %indvars.iv539, -1         ; 2 uses
  %i.aub = getelementptr [8 x i8], ptr %5, i64 %indvars.iv539
  %i.auc = load i64, ptr %i.aub, align 8, !tbaa !91
  %i.aud = lshr i64 %i.auc, %i.asl
  %i.aue = or i64 %i.aud, %i.atz
  %i.auf = trunc nuw i64 %indvars.iv539 to i32
  %i.aug = add i32 %i.apn, %i.auf
  %i.auh = zext i32 %i.aug to i64
  %i.aui = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %i.auh
  store i64 %i.aue, ptr %i.aui, align 8, !tbaa !91
  %i.auj = getelementptr [8 x i8], ptr %5, i64 %indvars.iv539
  %i.auk = load i64, ptr %i.auj, align 8, !tbaa !91
  %i.aul = shl i64 %i.auk, %.pre581
  %i.aum = add nsw i64 %indvars.iv539, -2         ; 2 uses
  %i.aun = getelementptr [8 x i8], ptr %5, i64 %i.aua
  %i.auo = load i64, ptr %i.aun, align 8, !tbaa !91
  %i.aup = lshr i64 %i.auo, %i.asl
  %i.auq = or i64 %i.aup, %i.aul
  %i.aur = trunc nuw i64 %i.aua to i32
  %i.aus = add i32 %i.apn, %i.aur
  %i.aut = zext i32 %i.aus to i64
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %i.aut
  store i64 %i.auq, ptr %i.auu, align 8, !tbaa !91
  %.not.i40.wide.1 = icmp eq i64 %i.aum, 0
  br i1 %.not.i40.wide.1, label %._crit_edge451, label %scalar.ph, !llvm.loop !279

._crit_edge451:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ht
  %i.auv = load i64, ptr %i.ash, align 8, !tbaa !91
  %i.auw = shl i64 %i.auv, %.pre581
  %i.aux = zext nneg i32 %i.apn to i64
  %i.auy = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %i.aux
  store i64 %i.auw, ptr %i.auy, align 8, !tbaa !91
  %i.auz = add i32 %i.apo, %i.apn                 ; 2 uses
  %i.ava = zext i32 %i.auz to i64
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.ash, i64 %i.ava
  %i.avc = load i64, ptr %i.avb, align 8, !tbaa !91
  %i.avd = icmp ne i64 %i.avc, 0
  %i.ave = zext i1 %i.avd to i32
  %i.avf = add i32 %i.auz, %i.ave
  store i32 %i.avf, ptr %5, align 8, !tbaa !177
  %.not45.i42452 = icmp eq i32 %i.apn, 0
  br i1 %.not45.i42452, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph455.preheader

.lr.ph455.preheader:                              ; preds = %._crit_edge451
  %i.avg = lshr i32 %i.apl, 3
  %i.avh = and i32 %i.avg, 536870904
  %i.avi = zext nneg i32 %i.avh to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ash, i8 0, i64 %i.avi, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit: ; preds = %.lr.ph455.preheader, %.lr.ph463, %.lr.ph472.preheader, %.lr.ph480.preheader, %._crit_edge451, %._crit_edge459, %._crit_edge468
  %i.avj = phi i32 [ %i.aph, %._crit_edge468 ], [ %i.ajo, %.lr.ph455.preheader ], [ %i.ajo, %.lr.ph463 ], [ %i.aph, %.lr.ph472.preheader ], [ %i.amf, %.lr.ph480.preheader ], [ %i.ajo, %._crit_edge451 ], [ %i.ajo, %._crit_edge459 ] ; 2 uses
  %i.avk = load i32, ptr %5, align 8, !tbaa !177  ; 4 uses
  %i.avl = icmp ult i32 %i.avk, %i.avj
  br i1 %i.avl, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %bb.hu

bb.hu:                                            ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit
  %i.avm = icmp ugt i32 %i.avk, %i.avj
  br i1 %i.avm, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %.preheader358

.preheader358:                                    ; preds = %bb.hu
  %.not.i49732 = icmp eq i32 %i.avk, 0
  br i1 %.not.i49732, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread287, label %.lr.ph735

.lr.ph735:                                        ; preds = %.preheader358
  %i.avn = zext i32 %i.avk to i64
  br label %bb.hw

bb.hv:                                            ; preds = %bb.hw
  %i.avo = add nsw i64 %indvars.iv557733, -1      ; 2 uses
  %.not.i49 = icmp eq i64 %i.avo, 0
  br i1 %.not.i49, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread287, label %bb.hw, !llvm.loop !191

bb.hw:                                            ; preds = %.lr.ph735, %bb.hv
  %.0.i48734 = phi i32 [ undef, %.lr.ph735 ], [ %.1.i50, %bb.hv ]
  %indvars.iv557733 = phi i64 [ %i.avn, %.lr.ph735 ], [ %i.avo, %bb.hv ] ; 3 uses
  %i.avp = getelementptr [8 x i8], ptr %5, i64 %indvars.iv557733
  %i.avq = load i64, ptr %i.avp, align 8, !tbaa !91 ; 3 uses
  %i.avr = getelementptr [8 x i8], ptr %6, i64 %indvars.iv557733
  %i.avs = load i64, ptr %i.avr, align 8, !tbaa !91 ; 3 uses
  %.not346 = icmp ult i64 %i.avq, %i.avs
  %.not347 = icmp ugt i64 %i.avq, %i.avs
  %..0.i = select i1 %.not347, i32 1, i32 %.0.i48734
  %cond.i = icmp eq i64 %i.avq, %i.avs
  %.1.i50 = select i1 %.not346, i32 -1, i32 %..0.i ; 3 uses
  br i1 %cond.i, label %bb.hv, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit: ; preds = %bb.hw
  %.not680.i = icmp eq i32 %.1.i50, 0
  br i1 %.not680.i, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread287, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, %bb.hu, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %.2.i51286 = phi i32 [ %.1.i50, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit ], [ 1, %bb.hu ]
  %i.avt = icmp sgt i32 %.2.i51286, 0
  %i.avu = zext i1 %i.avt to i64
  br label %bb.hx

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread287: ; preds = %bb.hv, %.preheader358, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %i.avv = and i64 %.0.i32.ph, 1
  br label %bb.hx

bb.hx:                                            ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread287, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread
  %.pn.i = phi i64 [ %i.avu, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread ], [ %i.avv, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread287 ]
  %.0604.i = add nuw nsw i64 %.pn.i, %.0.i32.ph   ; 2 uses
  %i.avw = icmp eq i64 %.0604.i, 9218868437227405312
  br i1 %i.avw, label %bb.hy, label %bb.ie, !prof !7

bb.hy:                                            ; preds = %bb.hx
  br i1 %.not300, label %bb.ic, label %bb.hz, !prof !24

bb.hz:                                            ; preds = %bb.hy
  %i.avx = load ptr, ptr %i.c, align 8, !tbaa !92 ; 2 uses
  %.not681.i = icmp eq ptr %i.avx, null
  br i1 %.not681.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  store i8 0, ptr %i.avx, align 1, !tbaa !81
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %i.avy = ptrtoint ptr %.7 to i64
  %i.avz = sub i64 %i.avy, %i.e
  %i.awa = shl i64 %i.avz, 8
  %i.awb = or disjoint i64 %i.awa, 1
  store i64 %i.awb, ptr %1, align 8, !tbaa !79
  %i.awc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.awc, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread295

bb.ic:                                            ; preds = %bb.hy
  %i.awd = and i32 %2, 16
  %.not349 = icmp eq i32 %i.awd, 0
  br i1 %.not349, label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit, label %bb.id, !prof !24

bb.id:                                            ; preds = %bb.ic
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.awe = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.awf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.awe, ptr %i.awf, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread295

bb.ie:                                            ; preds = %bb.hx
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.awg = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.awh = or disjoint i64 %.0604.i, %i.awg
  %i.awi = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.awh, ptr %i.awi, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread295

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread: ; preds = %bb.z, %bb.y, %bb.s, %bb.t, %bb.ab, %bb.fs, %bb.fu, %bb.fw, %bb.fz, %bb.gc, %bb.ge, %bb.go, %bb.gj, %bb.fi, %bb.fp, %.loopexit, %bb.ey, %bb.ez, %bb.fa, %bb.bd, %bb.be, %bb.bf, %bb.dg, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh
  %i.awj = phi ptr [ %i.cg, %bb.bh ], [ %i.aw, %bb.ab ], [ %.10.lcssa, %bb.fs ], [ %.10.lcssa, %bb.fu ], [ %.10.lcssa, %bb.fw ], [ %.11, %bb.fz ], [ %.11, %bb.gc ], [ %.11, %bb.ge ], [ %.7, %bb.go ], [ %.7, %bb.gj ], [ %i.tc, %bb.fi ], [ %.6, %bb.fp ], [ %.2, %.loopexit ], [ %i.sf, %bb.ey ], [ %i.sf, %bb.ez ], [ %i.sf, %bb.fa ], [ %i.hc, %bb.bd ], [ %i.hc, %bb.be ], [ %i.hc, %bb.bf ], [ %i.gv, %bb.dg ], [ %i.go, %bb.dd ], [ %i.gh, %bb.da ], [ %i.ga, %bb.cx ], [ %i.ft, %bb.cu ], [ %i.fm, %bb.cr ], [ %i.ff, %bb.co ], [ %i.ey, %bb.cl ], [ %i.er, %bb.ci ], [ %i.ek, %bb.cf ], [ %i.ed, %bb.cc ], [ %i.dw, %bb.bz ], [ %i.dp, %bb.bw ], [ %i.di, %bb.bt ], [ %i.db, %bb.bq ], [ %i.cu, %bb.bn ], [ %i.cn, %bb.bk ], [ %i.as, %bb.y ], [ %i.as, %bb.z ], [ %.037.i, %bb.s ], [ %.037.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.cont.cont.cont

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread292: ; preds = %bb.gd, %bb.fv, %bb.fq, %bb.fm, %bb.fk, %bb.fd, %bb.ah, %bb.ag, %bb.ad, %bb.h, %bb.u, %bb.v, %bb.w, %bb.i
  %.str.79.sink = phi ptr [ @.str.79, %bb.fk ], [ @.str.80, %bb.ag ], [ @.str.82, %bb.fv ], [ @.str.78, %bb.h ], [ @.str.79, %bb.fm ], [ @.str.81, %bb.ah ], [ @.str.79, %bb.ad ], [ @.str.81, %bb.fq ], [ @.str.79, %bb.fd ], [ @.str.78, %bb.i ], [ @.str.78, %bb.w ], [ @.str.78, %bb.v ], [ @.str.78, %bb.u ], [ @.str.82, %bb.gd ]
  %.6.sink = phi ptr [ %i.tu, %bb.fk ], [ %i.l, %bb.ag ], [ %0, %bb.fv ], [ %i.l, %bb.h ], [ %.6, %bb.fm ], [ %i.bx, %bb.ah ], [ %i.bf, %bb.ad ], [ %i.uz, %bb.fq ], [ %i.sy, %bb.fd ], [ %i.l, %bb.i ], [ %i.l, %bb.w ], [ %i.l, %bb.v ], [ %i.l, %bb.u ], [ %0, %bb.gd ]
  store ptr %.str.79.sink, ptr %i.d, align 8, !tbaa !92
  store ptr %.6.sink, ptr %i.b, align 8, !tbaa !92
  br label %.sink.split
end_hunk_5
