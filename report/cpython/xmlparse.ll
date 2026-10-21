Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/xmlparse?download=true
inline.NumInlined: 273
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@doProlog:bb.a
  store ptr %i.alv, ptr %i.at, align 8, !tbaa !141
  %.not946 = icmp eq ptr %i.alv, null
  br i1 %.not946, label %.thread1350, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  store i32 0, ptr %i.ao, align 4, !tbaa !169
  store i32 0, ptr %i.av, align 8, !tbaa !239
  store i8 1, ptr %i.an, align 8, !tbaa !168
  br label %.thread1493

bb.my:                                            ; preds = %accountingDiffTolerated.exit.thread1335, %accountingDiffTolerated.exit.thread1335
  %i.alw = load i8, ptr %i.an, align 8, !tbaa !168
  %.not942 = icmp eq i8 %i.alw, 0
  br i1 %.not942, label %.thread1482, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.alx = load ptr, ptr %i.ah, align 8, !tbaa !195
  %.not943 = icmp eq ptr %i.alx, null
  br i1 %.not943, label %bb.nc, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.aly = load ptr, ptr %i.ar, align 8, !tbaa !201
  %i.alz = call ptr %i.aly(i64 noundef 32) #22    ; 5 uses
  %.not944.not = icmp eq ptr %i.alz, null
  br i1 %.not944.not, label %.thread1350, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.ama = getelementptr i8, ptr %i.alz, i64 4
  %i.amb = getelementptr i8, ptr %i.alz, i64 24
  store ptr null, ptr %i.amb, align 8, !tbaa !323
  %i.amc = icmp eq i32 %i.dl, 41
  %i.amd = select i1 %i.amc, i32 2, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ama, i8 0, i64 16, i1 false)
  store i32 %i.amd, ptr %i.alz, align 8, !tbaa !324
  store ptr %.0871, ptr %.0828, align 8, !tbaa !57
  %i.ame = load ptr, ptr %i.ah, align 8, !tbaa !195
  %i.amf = load ptr, ptr %i.as, align 8, !tbaa !143
  %i.amg = load ptr, ptr %i.at, align 8, !tbaa !141
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !160
  call void %i.ame(ptr noundef %i.amf, ptr noundef %i.amh, ptr noundef nonnull %i.alz) #22
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %bb.mz
  %.31 = phi i8 [ 0, %bb.nb ], [ 1, %bb.mz ]
  store i8 0, ptr %i.an, align 8, !tbaa !168
  br label %.thread1444

bb.nd:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  %i.ami = load i8, ptr %i.an, align 8, !tbaa !168
  %.not940 = icmp eq i8 %i.ami, 0
  br i1 %.not940, label %.thread1482, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.amj = load ptr, ptr %i.ap, align 8, !tbaa !117
  %i.amk = load ptr, ptr %i.aq, align 8, !tbaa !116
  %i.aml = load i32, ptr %i.ao, align 4, !tbaa !169
  %i.amm = add i32 %i.aml, -1
  %i.amn = sext i32 %i.amm to i64
  %i.amo = getelementptr [4 x i8], ptr %i.amk, i64 %i.amn
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !21
  %i.amq = sext i32 %i.amp to i64
  %i.amr = getelementptr [32 x i8], ptr %i.amj, i64 %i.amq
  store i32 3, ptr %i.amr, align 8, !tbaa !320
  %i.ams = load ptr, ptr %i.ah, align 8, !tbaa !195
  %.not941 = icmp eq ptr %i.ams, null
  br i1 %.not941, label %.thread1482, label %.thread1493

bb.nf:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  br label %bb.nh

bb.ng:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  br label %bb.nh

bb.nh:                                            ; preds = %accountingDiffTolerated.exit.thread1335, %bb.ng, %bb.nf
  %.0826 = phi i32 [ 3, %bb.ng ], [ 2, %bb.nf ], [ 1, %accountingDiffTolerated.exit.thread1335 ]
  %i.amt = load i8, ptr %i.an, align 8, !tbaa !168
  %.not936 = icmp eq i8 %i.amt, 0
  br i1 %.not936, label %.thread1482, label %bb.nj

.thread1451:                                      ; preds = %accountingDiffTolerated.exit.thread1335
  %i.amu = load i8, ptr %i.an, align 8, !tbaa !168
  %.not9361453 = icmp eq i8 %i.amu, 0
  br i1 %.not9361453, label %.thread1482, label %bb.ni

bb.ni:                                            ; preds = %.thread1451
  %i.amv = load ptr, ptr %i.t, align 8, !tbaa !57
  br label %bb.nk

bb.nj:                                            ; preds = %bb.nh
  %i.amw = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.amx = getelementptr i8, ptr %.0866, i64 128
  %i.amy = load i32, ptr %i.amx, align 8, !tbaa !219
  %i.amz = sext i32 %i.amy to i64
  %i.ana = sub nsw i64 0, %i.amz
  %i.anb = getelementptr i8, ptr %i.amw, i64 %i.ana
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %.082614541457 = phi i32 [ 0, %bb.ni ], [ %.0826, %bb.nj ]
  %i.anc = phi ptr [ %i.amv, %bb.ni ], [ %i.anb, %bb.nj ]
  %i.and = call fastcc i32 @nextScaffoldPart(ptr noundef %0) ; 2 uses
  %i.ane = icmp slt i32 %i.and, 0
  br i1 %i.ane, label %.thread1350, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.anf = load ptr, ptr %i.ap, align 8, !tbaa !117
  %i.ang = zext nneg i32 %i.and to i64            ; 2 uses
  %i.anh = getelementptr [32 x i8], ptr %i.anf, i64 %i.ang ; 2 uses
  store i32 4, ptr %i.anh, align 8, !tbaa !320
  %i.ani = getelementptr i8, ptr %i.anh, i64 4
  store i32 %.082614541457, ptr %i.ani, align 4, !tbaa !325
  %i.anj = call fastcc ptr @getElementType(ptr noundef %0, ptr noundef %.0866, ptr noundef %.0871, ptr noundef %i.anc) ; 2 uses
  %.not937 = icmp eq ptr %i.anj, null
  br i1 %.not937, label %.thread1350, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !160 ; 2 uses
  %i.anl = load ptr, ptr %i.ap, align 8, !tbaa !117
  %i.anm = getelementptr [32 x i8], ptr %i.anl, i64 %i.ang
  %i.ann = getelementptr i8, ptr %i.anm, i64 8
  store ptr %i.ank, ptr %i.ann, align 8, !tbaa !326
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ank)
  %i.ano = add i64 %strlen, 1                     ; 2 uses
  %i.anp = load i32, ptr %i.au, align 8, !tbaa !327 ; 2 uses
  %i.anq = xor i32 %i.anp, -1
  %i.anr = zext i32 %i.anq to i64
  %i.ans = icmp ugt i64 %i.ano, %i.anr
  br i1 %i.ans, label %.thread1350, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.ant = trunc nuw i64 %i.ano to i32
  %i.anu = add i32 %i.anp, %i.ant
  store i32 %i.anu, ptr %i.au, align 8, !tbaa !327
  %i.anv = load ptr, ptr %i.ah, align 8, !tbaa !195
  %.not939 = icmp eq ptr %i.anv, null
  br i1 %.not939, label %.thread1482, label %.thread1493

bb.no:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  br label %bb.nr

bb.np:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  br label %bb.nr

bb.nq:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  br label %bb.nr

bb.nr:                                            ; preds = %accountingDiffTolerated.exit.thread1335, %bb.nq, %bb.np, %bb.no
  %.1827 = phi i32 [ 3, %bb.nq ], [ 1, %bb.no ], [ 2, %bb.np ], [ 0, %accountingDiffTolerated.exit.thread1335 ]
  %i.anw = load i8, ptr %i.an, align 8, !tbaa !168
  %.not932 = icmp eq i8 %i.anw, 0
  br i1 %.not932, label %.thread1482, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.anx = load ptr, ptr %i.ah, align 8, !tbaa !195
  %.not933.not = icmp eq ptr %i.anx, null         ; 2 uses
  %spec.select1102 = zext i1 %.not933.not to i8   ; 2 uses
  %i.any = load i32, ptr %i.ao, align 4, !tbaa !169
  %i.anz = add i32 %i.any, -1                     ; 3 uses
  store i32 %i.anz, ptr %i.ao, align 4, !tbaa !169
  %i.aoa = load ptr, ptr %i.ap, align 8, !tbaa !117
  %i.aob = load ptr, ptr %i.aq, align 8, !tbaa !116
  %i.aoc = sext i32 %i.anz to i64
  %i.aod = getelementptr [4 x i8], ptr %i.aob, i64 %i.aoc
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !21
  %i.aof = sext i32 %i.aoe to i64
  %i.aog = getelementptr [32 x i8], ptr %i.aoa, i64 %i.aof
  %i.aoh = getelementptr i8, ptr %i.aog, i64 4
  store i32 %.1827, ptr %i.aoh, align 4, !tbaa !325
  %i.aoi = icmp eq i32 %i.anz, 0
  br i1 %i.aoi, label %bb.nt, label %.thread1444

bb.nt:                                            ; preds = %bb.ns
  br i1 %.not933.not, label %bb.ob, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %.val = load ptr, ptr %i.ar, align 8, !tbaa !201
  %.val1110 = load ptr, ptr %i.u, align 8, !tbaa !72 ; 3 uses
  %i.aoj = getelementptr i8, ptr %.val1110, i64 344 ; 2 uses
  %i.aok = getelementptr i8, ptr %.val1110, i64 336
  %i.aol = load i32, ptr %i.aok, align 8, !tbaa !327
  %i.aom = zext i32 %i.aol to i64
  %i.aon = load i32, ptr %i.aoj, align 8, !tbaa !239
  %i.aoo = zext i32 %i.aon to i64
  %i.aop = shl nuw nsw i64 %i.aoo, 5
  %i.aoq = add nuw nsw i64 %i.aop, %i.aom
  %i.aor = call ptr %.val(i64 noundef %i.aoq) #22, !inline_history !303 ; 7 uses
  %.not.i1321 = icmp eq ptr %i.aor, null
  br i1 %.not.i1321, label %.thread1350, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.aos = load i32, ptr %i.aoj, align 8, !tbaa !239
  %i.aot = zext i32 %i.aos to i64
  %i.aou = getelementptr [32 x i8], ptr %i.aor, i64 %i.aot ; 3 uses
  %i.aov = getelementptr i8, ptr %i.aor, i64 16
  store i32 0, ptr %i.aov, align 8, !tbaa !328
  %i.aow = icmp ult ptr %i.aor, %i.aou
  br i1 %i.aow, label %.lr.ph8.i, label %build_model.exit.thread1464

.lr.ph8.i:                                        ; preds = %bb.nv
  %i.aox = getelementptr i8, ptr %i.aor, i64 32
  %i.aoy = getelementptr i8, ptr %.val1110, i64 328 ; 2 uses
  %.pre11.i = load ptr, ptr %i.aoy, align 8, !tbaa !117
  br label %bb.nw

bb.nw:                                            ; preds = %.loopexit.i1324, %.lr.ph8.i
  %.0547.i.a = phi ptr [ %.pre11.i, %.lr.ph8.i ], [ %12, %.loopexit.i1324 ] ; 4 uses
  %.0556.i.a = phi ptr [ %i.aox, %.lr.ph8.i ], [ %.2.i1325, %.loopexit.i1324 ] ; 4 uses
  %.0565.i.a = phi ptr [ %i.aor, %.lr.ph8.i ], [ %i.apx, %.loopexit.i1324 ] ; 6 uses
  %.0565.i = phi ptr [ %i.aou, %.lr.ph8.i ], [ %.258.i, %.loopexit.i1324 ] ; 4 uses
  %10 = getelementptr i8, ptr %.0565.i.a, i64 16  ; 4 uses
  %11 = load i32, ptr %10, align 8, !tbaa !328
  %i.aoz = sext i32 %11 to i64
  %i.apa = getelementptr [32 x i8], ptr %.0547.i.a, i64 %i.aoz ; 5 uses
  %i.apb = load <2 x i32>, ptr %i.apa, align 8, !tbaa !21
  %i.apc = load i32, ptr %i.apa, align 8, !tbaa !320
  store <2 x i32> %i.apb, ptr %.0565.i.a, align 8, !tbaa !21
  %i.apd = icmp eq i32 %i.apc, 4
  %i.ape = getelementptr i8, ptr %.0565.i.a, i64 8 ; 2 uses
  br i1 %i.apd, label %bb.nx, label %bb.oa

bb.nx:                                            ; preds = %bb.nw
  store ptr %.0565.i, ptr %i.ape, align 8, !tbaa !329
  %i.apf = getelementptr i8, ptr %i.apa, i64 8
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !326
  br label %bb.ny

bb.ny:                                            ; preds = %bb.ny, %bb.nx
  %.157.i = phi ptr [ %.0565.i, %bb.nx ], [ %i.api, %bb.ny ] ; 2 uses
  %.053.i = phi ptr [ %i.apg, %bb.nx ], [ %i.apj, %bb.ny ] ; 2 uses
  %i.aph = load i8, ptr %.053.i, align 1, !tbaa !22 ; 2 uses
  %i.api = getelementptr i8, ptr %.157.i, i64 1   ; 2 uses
  store i8 %i.aph, ptr %.157.i, align 1, !tbaa !22
  %.not63.i = icmp eq i8 %i.aph, 0
  %i.apj = getelementptr i8, ptr %.053.i, i64 1
  br i1 %.not63.i, label %bb.nz, label %bb.ny

bb.nz:                                            ; preds = %bb.ny
  store i32 0, ptr %10, align 8, !tbaa !328
  %i.apk = getelementptr i8, ptr %.0565.i.a, i64 24
  store ptr null, ptr %i.apk, align 8, !tbaa !323
  %.pre.i1326 = load ptr, ptr %i.aoy, align 8, !tbaa !117
  br label %.loopexit.i1324

bb.oa:                                            ; preds = %bb.nw
  store ptr null, ptr %i.ape, align 8, !tbaa !329
  %i.apl = getelementptr i8, ptr %i.apa, i64 24
  %i.apm = load i32, ptr %i.apl, align 8, !tbaa !240 ; 2 uses
  store i32 %i.apm, ptr %10, align 8, !tbaa !328
  %i.apn = getelementptr i8, ptr %.0565.i.a, i64 24
  store ptr %.0556.i.a, ptr %i.apn, align 8, !tbaa !323
  %.not9.i = icmp eq i32 %i.apm, 0
  br i1 %.not9.i, label %.loopexit.i1324, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.oa
  %i.apo = getelementptr i8, ptr %i.apa, i64 16
  br label %.lr.ph.i1322

.lr.ph.i1322:                                     ; preds = %.lr.ph.i1322, %.lr.ph.preheader.i
  %.0.in4.i = phi ptr [ %i.apu, %.lr.ph.i1322 ], [ %i.apo, %.lr.ph.preheader.i ]
  %.0523.i = phi i32 [ %i.apr, %.lr.ph.i1322 ], [ 0, %.lr.ph.preheader.i ]
  %.12.i = phi ptr [ %i.app, %.lr.ph.i1322 ], [ %.0556.i.a, %.lr.ph.preheader.i ] ; 2 uses
  %.0.i1323 = load i32, ptr %.0.in4.i, align 4, !tbaa !21 ; 2 uses
  %i.app = getelementptr i8, ptr %.12.i, i64 32   ; 2 uses
  %i.apq = getelementptr i8, ptr %.12.i, i64 16
  store i32 %.0.i1323, ptr %i.apq, align 8, !tbaa !328
  %i.apr = add nuw i32 %.0523.i, 1                ; 2 uses
  %i.aps = sext i32 %.0.i1323 to i64
  %i.apt = getelementptr [32 x i8], ptr %.0547.i.a, i64 %i.aps
  %i.apu = getelementptr i8, ptr %i.apt, i64 28
  %i.apv = load i32, ptr %10, align 8, !tbaa !328
  %i.apw = icmp ult i32 %i.apr, %i.apv
  br i1 %i.apw, label %.lr.ph.i1322, label %.loopexit.i1324, !llvm.loop !304

.loopexit.i1324:                                  ; preds = %.lr.ph.i1322, %bb.oa, %bb.nz
  %12 = phi ptr [ %.pre.i1326, %bb.nz ], [ %.0547.i.a, %bb.oa ], [ %.0547.i.a, %.lr.ph.i1322 ]
  %.258.i = phi ptr [ %i.api, %bb.nz ], [ %.0565.i, %bb.oa ], [ %.0565.i, %.lr.ph.i1322 ]
  %.2.i1325 = phi ptr [ %.0556.i.a, %bb.nz ], [ %.0556.i.a, %bb.oa ], [ %i.app, %.lr.ph.i1322 ]
  %i.apx = getelementptr i8, ptr %.0565.i.a, i64 32 ; 2 uses
  %i.apy = icmp ult ptr %i.apx, %i.aou
  br i1 %i.apy, label %bb.nw, label %build_model.exit.thread1464, !llvm.loop !305

build_model.exit.thread1464:                      ; preds = %.loopexit.i1324, %bb.nv
  store ptr %.0871, ptr %.0828, align 8, !tbaa !57
  %i.apz = load ptr, ptr %i.ah, align 8, !tbaa !195
  %i.aqa = load ptr, ptr %i.as, align 8, !tbaa !143
  %i.aqb = load ptr, ptr %i.at, align 8, !tbaa !141
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !160
  call void %i.apz(ptr noundef %i.aqa, ptr noundef %i.aqc, ptr noundef nonnull %i.aor) #22
  br label %bb.ob

bb.ob:                                            ; preds = %build_model.exit.thread1464, %bb.nt
  store i8 0, ptr %i.an, align 8, !tbaa !168
  store i32 0, ptr %i.au, align 8, !tbaa !327
  br label %.thread1444

bb.oc:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  %i.aqd = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.aqe = call fastcc i32 @reportProcessingInstruction(ptr noundef %0, ptr noundef %.0866, ptr noundef %.0871, ptr noundef %i.aqd)
  %.not931 = icmp eq i32 %i.aqe, 0
  br i1 %.not931, label %.thread1350, label %.thread1493

bb.od:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  %i.aqf = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.aqg = call fastcc i32 @reportComment(ptr noundef %0, ptr noundef %.0866, ptr noundef %.0871, ptr noundef %i.aqf)
  %.not930 = icmp eq i32 %i.aqg, 0
  br i1 %.not930, label %.thread1350, label %.thread1493

bb.oe:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  %cond = icmp eq i32 %.1874, 14
  br i1 %cond, label %.thread1493, label %.thread1482

bb.of:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  %i.aqh = load ptr, ptr %i.am, align 8, !tbaa !187
  %.not929 = icmp eq ptr %i.aqh, null
  br i1 %.not929, label %.thread1482, label %.thread1493

bb.og:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  %i.aqi = load i8, ptr %i.ai, align 8, !tbaa !118
  %.not927 = icmp eq i8 %i.aqi, 0
  br i1 %.not927, label %.thread1482, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.aqj = load ptr, ptr %i.al, align 8, !tbaa !197
  %.not928 = icmp eq ptr %i.aqj, null
  br i1 %.not928, label %.thread1482, label %.thread1493

bb.oi:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  %i.aqk = load ptr, ptr %i.ak, align 8, !tbaa !190
  %.not926 = icmp eq ptr %i.aqk, null
  br i1 %.not926, label %.thread1482, label %.thread1493

bb.oj:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  %i.aql = load i8, ptr %i.ai, align 8, !tbaa !118
  %.not924 = icmp eq i8 %i.aql, 0
  br i1 %.not924, label %.thread1482, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.aqm = load ptr, ptr %i.aj, align 8, !tbaa !196
  %.not925 = icmp eq ptr %i.aqm, null
  br i1 %.not925, label %.thread1482, label %.thread1493

bb.ol:                                            ; preds = %accountingDiffTolerated.exit.thread1335
  %i.aqn = load ptr, ptr %i.ah, align 8, !tbaa !195
  %.not923 = icmp eq ptr %i.aqn, null
  br i1 %.not923, label %.thread1482, label %.thread1493

.thread1444:                                      ; preds = %bb.bv, %bb.gs, %bb.ob, %bb.ns, %bb.nc, %bb.ms, %bb.mt, %bb.mu, %bb.gj, %bb.gk, %bb.fr, %bb.cp, %bb.bh, %bb.bi, %bb.lk, %poolClear.exit1302, %poolClear.exit1296, %poolClear.exit1169, %bb.ak
  %.35 = phi i8 [ %.14815, %bb.gs ], [ %.29, %bb.mt ], [ %.1802, %bb.ak ], [ %.29, %bb.mu ], [ %.31, %bb.nc ], [ %.14815, %bb.gk ], [ %.4805, %bb.bv ], [ %.4805, %bb.bi ], [ %.4805, %bb.bh ], [ %.14815, %bb.gj ], [ %.7808, %bb.cp ], [ %spec.select1102, %bb.ns ], [ %.12813, %bb.fr ], [ %.21822, %poolClear.exit1296 ], [ %.22823, %poolClear.exit1302 ], [ %.25, %bb.lk ], [ %.29, %bb.ms ], [ %.9810, %poolClear.exit1169 ], [ %spec.select1102, %bb.ob ]
  %.not1087 = icmp eq i8 %.35, 0
  br i1 %.not1087, label %.thread1493, label %.thread1482

.thread1482:                                      ; preds = %.thread1432, %bb.mg, %bb.mr, %bb.mh, %bb.ne, %bb.nn, %bb.ok, %bb.lf, %bb.io, %bb.hz, %bb.oh, %bb.dn, %bb.oi, %bb.ol, %bb.of, %.thread1451, %bb.il, %bb.hw, %bb.er, %bb.oe, %bb.og, %bb.nr, %bb.nh, %bb.nd, %bb.my, %bb.mv, %bb.le, %bb.oj, %bb.lb, %bb.ja, %bb.iq, %bb.ip, %bb.ia, %bb.es, %bb.hl, %bb.gx, %bb.gy, %bb.hi, %bb.gt, %bb.gu, %bb.gv, %bb.fd, %bb.eo, %bb.do, %bb.dp, %bb.dm, %bb.al, %accountingDiffTolerated.exit.thread1335, %.thread1444
  %i.aqo = load ptr, ptr %i.bq, align 8, !tbaa !186 ; 2 uses
  %.not1088 = icmp eq ptr %i.aqo, null
  br i1 %.not1088, label %.thread1493, label %bb.om

bb.om:                                            ; preds = %.thread1482
  %i.aqp = load ptr, ptr %i.t, align 8, !tbaa !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.0871, ptr %i.a, align 8, !tbaa !57
  %i.aqq = getelementptr i8, ptr %.0866, i64 132
  %i.aqr = load i8, ptr %i.aqq, align 4, !tbaa !211
  %.not.i1326 = icmp eq i8 %i.aqr, 0
  br i1 %.not.i1326, label %bb.on, label %bb.or

bb.on:                                            ; preds = %bb.om
  %i.aqs = load ptr, ptr %i.w, align 8, !tbaa !208
  %i.aqt = icmp eq ptr %.0866, %i.aqs
  br i1 %i.aqt, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.aqu = load ptr, ptr %i.bh, align 8, !tbaa !95 ; 2 uses
  %i.aqv = getelementptr i8, ptr %i.aqu, i64 8
  br label %bb.op

bb.op:                                            ; preds = %bb.on, %bb.oo
  %.022.i1328 = phi ptr [ %i.aqu, %bb.oo ], [ %i.br, %bb.on ]
  %.0.i1329 = phi ptr [ %i.aqv, %bb.oo ], [ %i.bs, %bb.on ]
  %i.aqw = getelementptr i8, ptr %.0866, i64 112
  br label %bb.oq

bb.oq:                                            ; preds = %bb.oq, %bb.op
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.aqx = load ptr, ptr %i.bt, align 8, !tbaa !65
  store ptr %i.aqx, ptr %i.b, align 8, !tbaa !57
  %i.aqy = load ptr, ptr %i.aqw, align 8, !tbaa !212
  %i.aqz = load ptr, ptr %i.bu, align 8, !tbaa !66
  %i.ara = call i32 %i.aqy(ptr noundef nonnull %.0866, ptr noundef nonnull %i.a, ptr noundef %i.aqp, ptr noundef nonnull %i.b, ptr noundef %i.aqz) #22, !inline_history !213
  %i.arb = load ptr, ptr %i.a, align 8, !tbaa !57
  store ptr %i.arb, ptr %.0.i1329, align 8, !tbaa !57
  %i.arc = load ptr, ptr %i.bq, align 8, !tbaa !186
  %i.ard = load ptr, ptr %i.as, align 8, !tbaa !143
  %i.are = load ptr, ptr %i.bt, align 8, !tbaa !65 ; 2 uses
  %i.arf = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.arg = ptrtoint ptr %i.arf to i64
  %i.arh = ptrtoint ptr %i.are to i64
  %i.ari = sub i64 %i.arg, %i.arh
  %i.arj = trunc i64 %i.ari to i32
  call void %i.arc(ptr noundef %i.ard, ptr noundef %i.are, i32 noundef %i.arj) #22, !inline_history !213
  %i.ark = load ptr, ptr %i.a, align 8, !tbaa !57
  store ptr %i.ark, ptr %.022.i1328, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.arl = icmp ugt i32 %i.ara, 1
  br i1 %i.arl, label %bb.oq, label %reportDefault.exit1330, !llvm.loop !6

bb.or:                                            ; preds = %bb.om
  %i.arm = load ptr, ptr %i.as, align 8, !tbaa !143
  %i.arn = ptrtoint ptr %i.aqp to i64
  %i.aro = ptrtoint ptr %.0871 to i64
  %i.arp = sub i64 %i.arn, %i.aro
  %i.arq = trunc i64 %i.arp to i32
  call void %i.aqo(ptr noundef %i.arm, ptr noundef %.0871, i32 noundef %i.arq) #22, !inline_history !213
  br label %reportDefault.exit1330

reportDefault.exit1330:                           ; preds = %bb.oq, %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread1493

.thread1493:                                      ; preds = %bb.bv, %bb.ml, %bb.jn, %bb.mi, %bb.mq, %.thread1432, %bb.oe, %bb.gs, %poolClear.exit1175, %bb.io, %bb.iy, %bb.kq, %bb.hz, %bb.nn, %bb.ok, %bb.lf, %bb.hj, %bb.hh, %bb.od, %bb.mx, %bb.gw, %bb.oh, %bb.dn, %bb.oi, %bb.dy, %bb.oc, %bb.ol, %bb.of, %bb.cq, %.thread1344, %bb.ne, %poolClear.exit, %.thread1338, %reportDefault.exit1330, %.thread1482, %.thread1444
  %.38691488 = phi ptr [ %.0866, %reportDefault.exit1330 ], [ %.0866, %.thread1482 ], [ %.0866, %.thread1444 ], [ %.0866, %bb.ne ], [ %.0866, %bb.hz ], [ %.0866, %bb.jn ], [ %.0866, %bb.iy ], [ %.0866, %bb.gs ], [ %.0866, %bb.nn ], [ %i.fp, %.thread1338 ], [ %.0866, %poolClear.exit1175 ], [ %.0866, %bb.ok ], [ %.0866, %bb.lf ], [ %.0866, %bb.kq ], [ %.0866, %bb.hj ], [ %.0866, %bb.hh ], [ %.0866, %bb.io ], [ %.0866, %bb.mx ], [ %.0866, %bb.gw ], [ %.0866, %bb.oh ], [ %.0866, %bb.dn ], [ %.0866, %bb.oi ], [ %.0866, %bb.dy ], [ %.0866, %bb.od ], [ %.0866, %bb.ol ], [ %.0866, %bb.of ], [ %.0866, %bb.cq ], [ %i.gt, %.thread1344 ], [ %.0866, %bb.oc ], [ %.0866, %poolClear.exit ], [ %.0866, %bb.oe ], [ %.0866, %.thread1432 ], [ %.0866, %bb.mq ], [ %.0866, %bb.mi ], [ %.0866, %bb.ml ], [ %.0866, %bb.bv ] ; 3 uses
  %i.arr = load i32, ptr %i.cu, align 8, !tbaa !133
  switch i32 %i.arr, label %.thread1493.accountingOnAbort.exit_crit_edge [
    i32 3, label %bb.os
    i32 2, label %.thread1350
    i32 1, label %bb.ot
  ]

.thread1493.accountingOnAbort.exit_crit_edge:     ; preds = %.thread1493
  %.pre1854 = load ptr, ptr %i.t, align 8, !tbaa !57
  br label %accountingOnAbort.exit

bb.os:                                            ; preds = %.thread1493
  %i.ars = load ptr, ptr %i.t, align 8, !tbaa !57
  store ptr %i.ars, ptr %6, align 8, !tbaa !57
  br label %.thread1350

bb.ot:                                            ; preds = %.thread1493
  %i.art = load i8, ptr %i.cv, align 8, !tbaa !134
  %.not1089 = icmp eq i8 %i.art, 0
  %.pre1855 = load ptr, ptr %i.t, align 8, !tbaa !57 ; 2 uses
  br i1 %.not1089, label %accountingOnAbort.exit, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  store ptr %.pre1855, ptr %6, align 8, !tbaa !57
  br label %.thread1350

accountingOnAbort.exit:                           ; preds = %.thread1493.accountingOnAbort.exit_crit_edge, %bb.ot
  %i.aru = phi ptr [ %.pre1854, %.thread1493.accountingOnAbort.exit_crit_edge ], [ %.pre1855, %bb.ot ] ; 2 uses
  %i.arv = load ptr, ptr %.38691488, align 8, !tbaa !56
  %i.arw = call i32 %i.arv(ptr noundef nonnull %.38691488, ptr noundef %i.aru, ptr noundef %3, ptr noundef nonnull %i.t) #22
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
end_hunk_0
