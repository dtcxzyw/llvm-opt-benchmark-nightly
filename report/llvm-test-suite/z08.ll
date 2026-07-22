inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@Manifest:bb.a
  %i.aiv = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.aiw = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.aix = sext i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.aix
  store ptr %i.aiv, ptr %i.aiy, align 8, !tbaa !11
  %i.aiz = load ptr, ptr @xx_tmp, align 8, !tbaa !11 ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 24
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !8
  %i.ajc = icmp eq ptr %i.ajb, %i.aiz
  br i1 %i.ajc, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.ajd = call i32 @DisposeObject(ptr noundef nonnull %i.aiz) #9 ; 0 uses
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  store ptr %.019132591, ptr @xx_link, align 8, !tbaa !11
  %i.aje = getelementptr inbounds nuw i8, ptr %.019132591, i64 24 ; 2 uses
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !8 ; 5 uses
  %i.ajg = icmp eq ptr %i.ajf, %.019132591
  br i1 %i.ajg, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  store ptr %i.ajf, ptr @zz_res, align 8, !tbaa !11
  %i.ajh = getelementptr inbounds nuw i8, ptr %.019132591, i64 16 ; 2 uses
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !8 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajf, i64 16
  store ptr %i.aji, ptr %i.ajj, align 8, !tbaa !8
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  store ptr %i.ajf, ptr %i.ajk, align 8, !tbaa !8
  store ptr %.019132591, ptr %i.aje, align 8, !tbaa !8
  store ptr %.019132591, ptr %i.ajh, align 8, !tbaa !8
  br label %bb.en

bb.en:                                            ; preds = %bb.el, %bb.em
  %i.ajl = phi ptr [ %i.ajf, %bb.em ], [ null, %bb.el ]
  store ptr %i.ajl, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %.019132591, ptr @zz_hold, align 8, !tbaa !11
  %i.ajm = load ptr, ptr %i.yv, align 8, !tbaa !8 ; 3 uses
  %i.ajn = icmp eq ptr %i.ajm, %.019132591
  br i1 %i.ajn, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  store ptr %i.ajm, ptr @zz_res, align 8, !tbaa !11
  %i.ajo = load ptr, ptr %.019132591, align 8, !tbaa !8
  store ptr %i.ajo, ptr %i.ajm, align 8, !tbaa !8
  %i.ajp = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.ajq = load ptr, ptr @zz_hold, align 8, !tbaa !11 ; 5 uses
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !8
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  store ptr %i.ajp, ptr %i.ajs, align 8, !tbaa !8
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  store ptr %i.ajq, ptr %i.ajt, align 8, !tbaa !8
  store ptr %i.ajq, ptr %i.ajq, align 8, !tbaa !8
  %.pre2679 = load ptr, ptr @xx_link, align 8, !tbaa !11
  br label %bb.ep

bb.ep:                                            ; preds = %bb.en, %bb.eo
  %i.aju = phi ptr [ %.019132591, %bb.en ], [ %.pre2679, %bb.eo ] ; 4 uses
  store ptr %i.aju, ptr @zz_hold, align 8, !tbaa !11
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 32
  %i.ajw = load i8, ptr %i.ajv, align 8, !tbaa !8 ; 2 uses
  %.off2368 = add i8 %i.ajw, -11
  %switch2369 = icmp ult i8 %.off2368, 2
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aju, i64 33
  %i.ajy = zext i8 %i.ajw to i64
  %i.ajz = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.ajy
  %.in2328.in = select i1 %switch2369, ptr %i.ajx, ptr %i.ajz
  %.in2328 = load i8, ptr %.in2328.in, align 1, !tbaa !8 ; 2 uses
  %i.aka = zext i8 %.in2328 to i32
  store i32 %i.aka, ptr @zz_size, align 4, !tbaa !4
  %i.akb = zext i8 %.in2328 to i64
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.akb
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !11
  store ptr %i.akd, ptr %i.aju, align 8, !tbaa !8
  %i.ake = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.akf = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.akg = sext i32 %i.akf to i64
  %i.akh = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.akg
  store ptr %i.ake, ptr %i.akh, align 8, !tbaa !11
  %i.aki = load ptr, ptr @xx_tmp, align 8, !tbaa !11 ; 3 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 24
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !8
  %i.akl = icmp eq ptr %i.akk, %i.aki
  br i1 %i.akl, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.akm = call i32 @DisposeObject(ptr noundef nonnull %i.aki) #9 ; 0 uses
  br label %bb.er

bb.er:                                            ; preds = %bb.du, %bb.dp, %bb.ep, %bb.eq, %bb.dv, %bb.dt, %bb.ds, %bb.dr, %bb.dq
  %.7 = phi ptr [ %i.agg, %bb.ep ], [ %.6, %bb.dq ], [ %.6, %bb.ds ], [ %.6, %bb.dr ], [ %i.agg, %bb.eq ], [ %.6, %bb.dv ], [ %.6, %bb.du ], [ %.6, %bb.dt ], [ %.6, %bb.dp ]
  br i1 %i.ym, label %bb.es, label %bb.ez

bb.es:                                            ; preds = %bb.er
  %i.akn = load ptr, ptr %6, align 8, !tbaa !11   ; 6 uses
  %.not2329 = icmp eq ptr %i.akn, null
  br i1 %.not2329, label %bb.ez, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 8
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !8 ; 6 uses
  %.not2330 = icmp eq ptr %i.akp, %i.akn
  br i1 %.not2330, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 32
  %i.akr = load i8, ptr %i.akq, align 8, !tbaa !8
  %i.aks = icmp eq i8 %i.akr, 0
  br i1 %i.aks, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.akt = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.aku = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.akt, ptr noundef nonnull @.str.1) #9 ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  store ptr %i.akp, ptr @zz_res, align 8, !tbaa !11
  store ptr %i.akn, ptr @zz_hold, align 8, !tbaa !11
  %i.akv = load ptr, ptr %i.akn, align 8, !tbaa !8
  store ptr %i.akv, ptr @zz_tmp, align 8, !tbaa !11
  %i.akw = load ptr, ptr %i.akp, align 8, !tbaa !8
  store ptr %i.akw, ptr %i.akn, align 8, !tbaa !8
  %i.akx = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.aky = load ptr, ptr @zz_res, align 8, !tbaa !11 ; 2 uses
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !8
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  store ptr %i.akx, ptr %i.ala, align 8, !tbaa !8
  %i.alb = load ptr, ptr @zz_tmp, align 8, !tbaa !11 ; 2 uses
  store ptr %i.alb, ptr %i.aky, align 8, !tbaa !8
  %i.alc = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  store ptr %i.alc, ptr %i.ald, align 8, !tbaa !8
  store ptr %i.akp, ptr @zz_res, align 8, !tbaa !11
  store ptr %i.yw, ptr @zz_hold, align 8, !tbaa !11
  %i.ale = icmp eq ptr %i.yw, null
  br i1 %i.ale, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.alf = load ptr, ptr %i.yw, align 8, !tbaa !8
  store ptr %i.alf, ptr @zz_tmp, align 8, !tbaa !11
  %i.alg = load ptr, ptr %i.akp, align 8, !tbaa !8
  store ptr %i.alg, ptr %i.yw, align 8, !tbaa !8
  %i.alh = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.ali = load ptr, ptr @zz_res, align 8, !tbaa !11 ; 2 uses
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !8
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  store ptr %i.alh, ptr %i.alk, align 8, !tbaa !8
  %i.all = load ptr, ptr @zz_tmp, align 8, !tbaa !11 ; 2 uses
  store ptr %i.all, ptr %i.ali, align 8, !tbaa !8
  %i.alm = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.aln = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  store ptr %i.alm, ptr %i.aln, align 8, !tbaa !8
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ew, %bb.ex, %bb.et
  %i.alo = load ptr, ptr %6, align 8, !tbaa !11
  %i.alp = call i32 @DisposeObject(ptr noundef %i.alo) #9 ; 0 uses
  store ptr null, ptr %6, align 8, !tbaa !11
  br label %bb.ez

bb.ez:                                            ; preds = %bb.er, %bb.es, %bb.ey
  %.01913.in = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %.01913 = load ptr, ptr %.01913.in, align 8, !tbaa !8 ; 2 uses
  %.not2301 = icmp eq ptr %.01913, %.1
  br i1 %.not2301, label %._crit_edge2592, label %.preheader2480, !llvm.loop !30

._crit_edge2592:                                  ; preds = %bb.ez, %bb.cj
  %i.alq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !11
  %.not2302 = icmp eq ptr %i.alr, null
  br i1 %.not2302, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %._crit_edge2592
  %i.als = load ptr, ptr %3, align 8, !tbaa !11
  %.not2303 = icmp eq ptr %i.als, null
  br i1 %.not2303, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.alt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !11
  %.not2304 = icmp eq ptr %i.alu, null
  br i1 %.not2304, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.alv = load ptr, ptr %4, align 8, !tbaa !11
  %.not2305 = icmp eq ptr %i.alv, null
  br i1 %.not2305, label %bb.aax, label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa, %._crit_edge2592
  %i.alw = call fastcc ptr @insert_split(ptr noundef %.1, ptr noundef nonnull %3, ptr noundef %4)
  br label %bb.aax

bb.fe:                                            ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.alx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aly = load i8, ptr %i.alx, align 4
  %i.alz = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.ama = and i8 %i.aly, 127
  store i8 %i.ama, ptr %i.alz, align 4
  %i.amb = load i16, ptr %i.alz, align 4
  %i.amc = load <4 x i16>, ptr %2, align 4        ; 2 uses
  %i.amd = load i16, ptr %2, align 4              ; 3 uses
  %i.ame = trunc i16 %i.amd to i8
  %i.amf = insertelement <4 x i16> %i.amc, i16 %i.amb, i64 2
  %i.amg = and <4 x i16> %i.amf, <i16 -128, i16 -1, i16 127, i16 -1>
  %i.amh = trunc i16 %i.amd to i8
  %i.ami = and i8 %i.amh, -128
  %i.amj = shufflevector <4 x i16> <i16 -1, i16 -1, i16 poison, i16 -1>, <4 x i16> %i.amc, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.amk = and <4 x i16> %i.amj, <i16 0, i16 0, i16 -128, i16 0>
  %i.aml = or disjoint <4 x i16> %i.amg, %i.amk
  store <4 x i16> %i.aml, ptr %11, align 8
  %i.amm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.amn = load i32, ptr %i.amm, align 4
  %i.amo = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %i.amn, ptr %i.amo, align 4
  %i.amp = and i8 %i.ame, 127
  %i.amq = or disjoint i8 %i.amp, %i.ami
  %i.amr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ams = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.amt = load <2 x i16>, ptr %i.amr, align 4, !tbaa !31
  store <2 x i16> %i.amt, ptr %i.ams, align 8, !tbaa !31
  %i.amu = icmp eq i8 %i.u, 18                    ; 10 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.amw = load i16, ptr %i.amv, align 2
  %i.amx = and i16 %i.amw, -2049
  %. = select i1 %i.amu, i16 10, i16 11
  %.3081 = select i1 %i.amu, i8 -3, i8 -2
  %i.amy = shl i16 %i.amd, %.
  %i.amz = and i16 %i.amy, 2048
  %i.ana = or disjoint i16 %i.amx, %i.amz
  store i16 %i.ana, ptr %i.amv, align 2
  %i.anb = and i8 %i.amq, %.3081
  store i8 %i.anb, ptr %11, align 8
  %i.anc = xor i1 %i.amu, true
  %i.and = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !8 ; 6 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !8 ; 3 uses
  %.not.i = icmp eq ptr %i.ane, %0
  %.not323.i = icmp eq ptr %i.ang, %0
  %or.cond359.i = select i1 %.not.i, i1 true, i1 %.not323.i
  br i1 %or.cond359.i, label %bb.ff, label %.preheader3136

bb.ff:                                            ; preds = %bb.fe
  %i.anh = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ani = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.anh, ptr noundef nonnull @.str.56) #9, !inline_history !32 ; 0 uses
  br label %.preheader3136

.preheader3136:                                   ; preds = %bb.ff, %bb.fe
  br label %bb.fg

bb.fg:                                            ; preds = %.preheader3136, %bb.fg
  %.pn358.i = phi ptr [ %.0.i, %bb.fg ], [ %i.ane, %.preheader3136 ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn358.i, i64 16
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !8 ; 3 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.ank = load i8, ptr %i.anj, align 8, !tbaa !8
  %i.anl = icmp eq i8 %i.ank, 0
  br i1 %i.anl, label %bb.fg, label %.preheader2487, !llvm.loop !33

.preheader2487:                                   ; preds = %bb.fg, %.preheader2487
  %.pn357.i = phi ptr [ %.0268.i, %.preheader2487 ], [ %i.ang, %bb.fg ]
  %.0268.in.i = getelementptr inbounds nuw i8, ptr %.pn357.i, i64 16
  %.0268.i = load ptr, ptr %.0268.in.i, align 8, !tbaa !8 ; 4 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.0268.i, i64 32
  %i.ann = load i8, ptr %i.anm, align 8, !tbaa !8
  %i.ano = icmp eq i8 %i.ann, 0
  br i1 %i.ano, label %.preheader2487, label %bb.fh, !llvm.loop !34

bb.fh:                                            ; preds = %.preheader2487
  %i.anp = zext i1 %i.anc to i64                  ; 2 uses
  %i.anq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.anp
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !11
  %.sroa.sel3160.idx = select i1 %i.amu, i64 0, i64 8
  %.sroa.sel3160 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel3160.idx ; 2 uses
  store ptr %i.anr, ptr %.sroa.sel3160, align 8, !tbaa !11
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.anp
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !11
  %.sroa.sel.idx = select i1 %i.amu, i64 0, i64 8
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel.idx ; 2 uses
  store ptr %i.ant, ptr %.sroa.sel, align 8, !tbaa !11
  %i.anu = zext i1 %i.amu to i64                  ; 3 uses
  %i.anv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.anu ; 2 uses
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !11
  %.not324.i = icmp eq ptr %i.anw, null
  br i1 %.not324.i, label %bb.fm, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.anx = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 139), align 1, !tbaa !8 ; 2 uses
  %i.any = zext i8 %i.anx to i32                  ; 2 uses
  store i32 %i.any, ptr @zz_size, align 4, !tbaa !4
  %i.anz = zext i8 %i.anx to i64
  %i.aoa = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.anz ; 2 uses
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !11 ; 4 uses
  %i.aoc = icmp eq ptr %i.aob, null
  br i1 %i.aoc, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.aod = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.aoe = tail call ptr @GetMemory(i32 noundef %i.any, ptr noundef %i.aod) #9, !inline_history !32 ; 2 uses
  store ptr %i.aoe, ptr @zz_hold, align 8, !tbaa !11
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  store ptr %i.aob, ptr @zz_hold, align 8, !tbaa !11
  %i.aof = load ptr, ptr %i.aob, align 8, !tbaa !8
  store ptr %i.aof, ptr %i.aoa, align 8, !tbaa !11
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.aog = phi ptr [ %i.aob, %bb.fk ], [ %i.aoe, %bb.fj ] ; 10 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 32
  store i8 -117, ptr %i.aoh, align 8, !tbaa !8
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aog, i64 24
  store ptr %i.aog, ptr %i.aoi, align 8, !tbaa !8
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aog, i64 16
  store ptr %i.aog, ptr %i.aoj, align 8, !tbaa !8
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  store ptr %i.aog, ptr %i.aok, align 8, !tbaa !8
  store ptr %i.aog, ptr %i.aog, align 8, !tbaa !8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fh
  %.0270.i = phi ptr [ %i.aog, %bb.fl ], [ null, %bb.fh ] ; 16 uses
  %.sroa.sel3163.idx = select i1 %i.amu, i64 8, i64 0
  %.sroa.sel3163 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel3163.idx ; 3 uses
  store ptr %.0270.i, ptr %.sroa.sel3163, align 8, !tbaa !11
  %i.aol = getelementptr inbounds nuw i8, ptr %.0268.i, i64 44
  %i.aom = load i16, ptr %i.aol, align 4
  %i.aon = and i16 %i.aom, 512
  %.not325.i = icmp eq i16 %i.aon, 0
  br i1 %.not325.i, label %bb.fr, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aoo = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 139), align 1, !tbaa !8 ; 2 uses
  %i.aop = zext i8 %i.aoo to i32                  ; 2 uses
  store i32 %i.aop, ptr @zz_size, align 4, !tbaa !4
  %i.aoq = zext i8 %i.aoo to i64
  %i.aor = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.aoq ; 2 uses
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !11 ; 4 uses
  %i.aot = icmp eq ptr %i.aos, null
  br i1 %i.aot, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.aou = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.aov = tail call ptr @GetMemory(i32 noundef %i.aop, ptr noundef %i.aou) #9, !inline_history !32 ; 2 uses
  store ptr %i.aov, ptr @zz_hold, align 8, !tbaa !11
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  store ptr %i.aos, ptr @zz_hold, align 8, !tbaa !11
  %i.aow = load ptr, ptr %i.aos, align 8, !tbaa !8
  store ptr %i.aow, ptr %i.aor, align 8, !tbaa !11
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.aox = phi ptr [ %i.aos, %bb.fp ], [ %i.aov, %bb.fo ] ; 10 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 32
  store i8 -117, ptr %i.aoy, align 8, !tbaa !8
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aox, i64 24
  store ptr %i.aox, ptr %i.aoz, align 8, !tbaa !8
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aox, i64 16
  store ptr %i.aox, ptr %i.apa, align 8, !tbaa !8
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aox, i64 8
  store ptr %i.aox, ptr %i.apb, align 8, !tbaa !8
  store ptr %i.aox, ptr %i.aox, align 8, !tbaa !8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fm, %bb.fq
  %.sink3072 = phi ptr [ %i.aox, %bb.fq ], [ null, %bb.fm ]
  %.sroa.sel3157.idx = select i1 %i.amu, i64 8, i64 0
  %.sroa.sel3157 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.sel3157.idx
  store ptr %.sink3072, ptr %.sroa.sel3157, align 8, !tbaa !11
  %i.apc = icmp ne ptr %.0270.i, null
  %i.apd = zext i1 %i.apc to i32
  %i.ape = call ptr @Manifest(ptr noundef nonnull %.0.i, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10), !inline_history !32 ; 0 uses
  %i.apf = load i8, ptr %i.t, align 8, !tbaa !8
  %i.apg = icmp eq i8 %i.apf, 19
  %i.aph = icmp ne i32 %7, 0                      ; 2 uses
  %or.cond.i = and i1 %i.aph, %i.apg
  br i1 %or.cond.i, label %bb.fs, label %.lr.ph

bb.fs:                                            ; preds = %bb.fr
  %i.api = load ptr, ptr %6, align 8, !tbaa !11   ; 7 uses
  %.not326.i = icmp eq ptr %i.api, null
  br i1 %.not326.i, label %.lr.ph, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 8
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !8 ; 6 uses
  %.not327.i = icmp eq ptr %i.apk, %i.api
  br i1 %.not327.i, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 32
  %i.apm = load i8, ptr %i.apl, align 8, !tbaa !8
  %i.apn = icmp eq i8 %i.apm, 0
  br i1 %i.apn, label %bb.fw, label %bb.fv

end_hunk_0
begin_hunk_1_@Manifest:bb.a
  br label %bb.pa

bb.oz:                                            ; preds = %bb.ox
  %i.cbv = tail call ptr @LanguageString(i32 noundef %i.cbs) #9
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  %.sink3076 = phi ptr [ %i.cbv, %bb.oz ], [ @.str.28, %bb.oy ]
  %i.cbw = tail call ptr @MakeWord(i32 noundef 11, ptr noundef %.sink3076, ptr noundef nonnull %i.t) #9 ; 6 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cby = load ptr, ptr %i.cbx, align 8, !tbaa !8 ; 6 uses
  %i.cbz = icmp eq ptr %i.cby, %0
  br i1 %i.cbz, label %.thread2448, label %bb.pb

.thread2448:                                      ; preds = %bb.pa
  store ptr null, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.cbw, ptr @zz_res, align 8, !tbaa !11
  store ptr null, ptr @zz_hold, align 8, !tbaa !11
  br label %bb.pd

bb.pb:                                            ; preds = %bb.pa
  %i.cca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ccb = load ptr, ptr %i.cca, align 8, !tbaa !8 ; 2 uses
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cby, i64 16 ; 3 uses
  store ptr %i.ccb, ptr %i.ccc, align 8, !tbaa !8
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccb, i64 24
  store ptr %i.cby, ptr %i.ccd, align 8, !tbaa !8
  store ptr %0, ptr %i.cbx, align 8, !tbaa !8
  store ptr %0, ptr %i.cca, align 8, !tbaa !8
  store ptr %i.cby, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.cbw, ptr @zz_res, align 8, !tbaa !11
  store ptr %i.cby, ptr @zz_hold, align 8, !tbaa !11
  %i.cce = icmp eq ptr %i.cbw, null
  br i1 %i.cce, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.ccf = load ptr, ptr %i.ccc, align 8, !tbaa !8 ; 3 uses
  store ptr %i.ccf, ptr @zz_tmp, align 8, !tbaa !11
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.cbw, i64 16 ; 2 uses
  %i.cch = load ptr, ptr %i.ccg, align 8, !tbaa !8 ; 2 uses
  store ptr %i.cch, ptr %i.ccc, align 8, !tbaa !8
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cch, i64 24
  store ptr %i.cby, ptr %i.cci, align 8, !tbaa !8
  store ptr %i.ccf, ptr %i.ccg, align 8, !tbaa !8
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.ccf, i64 24
  store ptr %i.cbw, ptr %i.ccj, align 8, !tbaa !8
  br label %bb.pd

bb.pd:                                            ; preds = %.thread2448, %bb.pc, %bb.pb
  %i.cck = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9 ; 0 uses
  %i.ccl = tail call ptr @Manifest(ptr noundef %i.cbw, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %bb.aax

bb.pe:                                            ; preds = %bb.c, %bb.c
  %i.ccm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ccn = load i32, ptr %i.ccm, align 4
  %i.cco = and i32 %i.ccn, 4095                   ; 3 uses
  %i.ccp = icmp eq i32 %i.cco, 0
  br i1 %i.ccp, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %bb.pe
  %i.ccq = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 8, i32 noundef 38, ptr noundef nonnull @.str.29, i32 noundef 2, ptr noundef nonnull %i.t, ptr noundef nonnull @.str.28) #9 ; 0 uses
  br label %bb.pj

bb.pg:                                            ; preds = %bb.pe
  %i.ccr = icmp eq i8 %i.u, 69
  br i1 %i.ccr, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %bb.pg
  %i.ccs = tail call ptr @FontFamily(i32 noundef %i.cco) #9
  br label %bb.pj

bb.pi:                                            ; preds = %bb.pg
  %i.cct = tail call ptr @FontFace(i32 noundef %i.cco) #9
  br label %bb.pj

bb.pj:                                            ; preds = %bb.ph, %bb.pi, %bb.pf
  %.sink3077 = phi ptr [ %i.ccs, %bb.ph ], [ %i.cct, %bb.pi ], [ @.str.28, %bb.pf ]
  %i.ccu = tail call ptr @MakeWord(i32 noundef 11, ptr noundef %.sink3077, ptr noundef nonnull %i.t) #9 ; 6 uses
  %i.ccv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ccw = load ptr, ptr %i.ccv, align 8, !tbaa !8 ; 6 uses
  %i.ccx = icmp eq ptr %i.ccw, %0
  br i1 %i.ccx, label %.thread2450, label %bb.pk

.thread2450:                                      ; preds = %bb.pj
  store ptr null, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.ccu, ptr @zz_res, align 8, !tbaa !11
  store ptr null, ptr @zz_hold, align 8, !tbaa !11
  br label %bb.pm

bb.pk:                                            ; preds = %bb.pj
  %i.ccy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !8 ; 2 uses
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccw, i64 16 ; 3 uses
  store ptr %i.ccz, ptr %i.cda, align 8, !tbaa !8
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccz, i64 24
  store ptr %i.ccw, ptr %i.cdb, align 8, !tbaa !8
  store ptr %0, ptr %i.ccv, align 8, !tbaa !8
  store ptr %0, ptr %i.ccy, align 8, !tbaa !8
  store ptr %i.ccw, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.ccu, ptr @zz_res, align 8, !tbaa !11
  store ptr %i.ccw, ptr @zz_hold, align 8, !tbaa !11
  %i.cdc = icmp eq ptr %i.ccu, null
  br i1 %i.cdc, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.cdd = load ptr, ptr %i.cda, align 8, !tbaa !8 ; 3 uses
  store ptr %i.cdd, ptr @zz_tmp, align 8, !tbaa !11
  %i.cde = getelementptr inbounds nuw i8, ptr %i.ccu, i64 16 ; 2 uses
  %i.cdf = load ptr, ptr %i.cde, align 8, !tbaa !8 ; 2 uses
  store ptr %i.cdf, ptr %i.cda, align 8, !tbaa !8
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdf, i64 24
  store ptr %i.ccw, ptr %i.cdg, align 8, !tbaa !8
  store ptr %i.cdd, ptr %i.cde, align 8, !tbaa !8
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cdd, i64 24
  store ptr %i.ccu, ptr %i.cdh, align 8, !tbaa !8
  br label %bb.pm

bb.pm:                                            ; preds = %.thread2450, %bb.pl, %bb.pk
  %i.cdi = tail call i32 @DisposeObject(ptr noundef nonnull %0) #9 ; 0 uses
  %i.cdj = tail call ptr @Manifest(ptr noundef %i.ccu, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %bb.aax

bb.pn:                                            ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.cdk = icmp eq i8 %i.u, 71
  %.3111 = select i1 %i.cdk, i64 8, i64 10
  %i.cdl = getelementptr inbounds nuw i8, ptr %2, i64 %.3111
  %.sink3080 = load i16, ptr %i.cdl, align 2, !tbaa !31
  %i.cdm = sdiv i16 %.sink3080, 20
  %i.cdn = sext i16 %i.cdm to i32
  %i.cdo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.cdn) #9 ; 0 uses
  %i.cdp = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %i.m, ptr noundef nonnull %i.t) #9 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  %i.cdq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cdr = load ptr, ptr %i.cdq, align 8, !tbaa !8 ; 6 uses
  %i.cds = icmp eq ptr %i.cdr, %0
  br i1 %i.cds, label %.thread2452, label %bb.po

.thread2452:                                      ; preds = %bb.pn
  store ptr null, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.cdp, ptr @zz_res, align 8, !tbaa !11
  store ptr null, ptr @zz_hold, align 8, !tbaa !11
  br label %bb.pq

bb.po:                                            ; preds = %bb.pn
  %i.cdt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cdu = load ptr, ptr %i.cdt, align 8, !tbaa !8 ; 2 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdr, i64 16 ; 3 uses
  store ptr %i.cdu, ptr %i.cdv, align 8, !tbaa !8
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdu, i64 24
  store ptr %i.cdr, ptr %i.cdw, align 8, !tbaa !8
  store ptr %0, ptr %i.cdq, align 8, !tbaa !8
  store ptr %0, ptr %i.cdt, align 8, !tbaa !8
  store ptr %i.cdr, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.cdp, ptr @zz_res, align 8, !tbaa !11
  store ptr %i.cdr, ptr @zz_hold, align 8, !tbaa !11
  %i.cdx = icmp eq ptr %i.cdp, null
  br i1 %i.cdx, label %bb.pq, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.cdy = load ptr, ptr %i.cdv, align 8, !tbaa !8 ; 3 uses
  store ptr %i.cdy, ptr @zz_tmp, align 8, !tbaa !11
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdp, i64 16 ; 2 uses
  %i.cea = load ptr, ptr %i.cdz, align 8, !tbaa !8 ; 2 uses
  store ptr %i.cea, ptr %i.cdv, align 8, !tbaa !8
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.cea, i64 24
  store ptr %i.cdr, ptr %i.ceb, align 8, !tbaa !8
  store ptr %i.cdy, ptr %i.cdz, align 8, !tbaa !8
  %i.cec = getelementptr inbounds nuw i8, ptr %i.cdy, i64 24
  store ptr %i.cdp, ptr %i.cec, align 8, !tbaa !8
  br label %bb.pq

bb.pq:                                            ; preds = %.thread2452, %bb.pp, %bb.po
  %i.ced = call i32 @DisposeObject(ptr noundef nonnull %0) #9 ; 0 uses
  %i.cee = call ptr @Manifest(ptr noundef %i.cdp, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10)
  br label %bb.aax

bb.pr:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.cef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ceg = load ptr, ptr %i.cef, align 8, !tbaa !8 ; 3 uses
  %.not2228 = icmp eq ptr %i.ceg, %0
  br i1 %.not2228, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.ceg, i64 8
  %i.cei = load ptr, ptr %i.ceh, align 8, !tbaa !8
  %.not2229 = icmp eq ptr %i.cei, %0
  br i1 %.not2229, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  %i.cej = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.cek = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.cej, ptr noundef nonnull @.str.31) #9 ; 0 uses
  %.pre2643 = load ptr, ptr %i.cef, align 8, !tbaa !8
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps
  %i.cel = phi ptr [ %.pre2643, %bb.pt ], [ %i.ceg, %bb.ps ]
  %i.cem = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cen = load i8, ptr %i.cem, align 4
  %i.ceo = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.cep = and i8 %i.cen, 127
  store i8 %i.cep, ptr %i.ceo, align 4
  %i.ceq = load i16, ptr %i.ceo, align 4
  %i.cer = load <4 x i16>, ptr %2, align 4        ; 2 uses
  %i.ces = load i16, ptr %2, align 4              ; 2 uses
  %i.cet = trunc i16 %i.ces to i8
  %i.ceu = insertelement <4 x i16> %i.cer, i16 %i.ceq, i64 2
  %i.cev = and <4 x i16> %i.ceu, <i16 -128, i16 -1, i16 127, i16 -1>
  %i.cew = trunc i16 %i.ces to i8
  %i.cex = and i8 %i.cew, -128
  %i.cey = shufflevector <4 x i16> <i16 -1, i16 -1, i16 poison, i16 -1>, <4 x i16> %i.cer, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.cez = and <4 x i16> %i.cey, <i16 0, i16 0, i16 -128, i16 0>
  %i.cfa = or disjoint <4 x i16> %i.cev, %i.cez
  store <4 x i16> %i.cfa, ptr %13, align 8
  %i.cfb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cfc = load i32, ptr %i.cfb, align 4
  %i.cfd = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %i.cfc, ptr %i.cfd, align 4
  %i.cfe = and i8 %i.cet, 127
  %i.cff = or disjoint i8 %i.cfe, %i.cex
  store i8 %i.cff, ptr %13, align 8
  %i.cfg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cfh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cfi = load <2 x i16>, ptr %i.cfg, align 4, !tbaa !31
  store <2 x i16> %i.cfi, ptr %i.cfh, align 8, !tbaa !31
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pv, %bb.pu
  %.pn2234 = phi ptr [ %i.cel, %bb.pu ], [ %.24, %bb.pv ]
  %.24.in = getelementptr inbounds nuw i8, ptr %.pn2234, i64 16
  %.24 = load ptr, ptr %.24.in, align 8, !tbaa !8 ; 3 uses
  %i.cfj = getelementptr inbounds nuw i8, ptr %.24, i64 32
  %i.cfk = load i8, ptr %i.cfj, align 8, !tbaa !8
  %i.cfl = icmp eq i8 %i.cfk, 0
  br i1 %i.cfl, label %bb.pv, label %bb.pw, !llvm.loop !69

bb.pw:                                            ; preds = %bb.pv
  %i.cfm = tail call ptr @Manifest(ptr noundef nonnull %.24, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull @nbt, ptr noundef nonnull @nft, ptr noundef nonnull @ntarget, ptr noundef %6, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @nenclose, i32 noundef %10)
  %i.cfn = load i8, ptr %i.t, align 8, !tbaa !8
  %i.cfo = icmp eq i8 %i.cfn, 65
  %i.cfp = zext i1 %i.cfo to i32
  %i.cfq = tail call ptr @ReplaceWithTidy(ptr noundef %i.cfm, i32 noundef %i.cfp) ; 7 uses
  %i.cfr = load i8, ptr %i.t, align 8, !tbaa !8
  switch i8 %i.cfr, label %bb.qe [
    i8 59, label %bb.px
    i8 60, label %bb.py
    i8 61, label %bb.pz
    i8 62, label %bb.qa
    i8 63, label %bb.qb
    i8 65, label %bb.qc
    i8 67, label %bb.qd
  ]

bb.px:                                            ; preds = %bb.pw
  call void @FontChange(ptr noundef nonnull %13, ptr noundef %i.cfq) #9
  br label %bb.qe

bb.py:                                            ; preds = %bb.pw
  call void @SpaceChange(ptr noundef nonnull %13, ptr noundef %i.cfq) #9
  br label %bb.qe

bb.pz:                                            ; preds = %bb.pw
  call void @YUnitChange(ptr noundef nonnull %13, ptr noundef %i.cfq) #9
  br label %bb.qe

bb.qa:                                            ; preds = %bb.pw
  call void @ZUnitChange(ptr noundef nonnull %13, ptr noundef %i.cfq) #9
  br label %bb.qe

bb.qb:                                            ; preds = %bb.pw
  call void @BreakChange(ptr noundef nonnull %13, ptr noundef %i.cfq) #9
  br label %bb.qe

bb.qc:                                            ; preds = %bb.pw
  call void @ColourChange(ptr noundef nonnull %13, ptr noundef %i.cfq) #9
  br label %bb.qe

bb.qd:                                            ; preds = %bb.pw
  call void @LanguageChange(ptr noundef nonnull %13, ptr noundef %i.cfq) #9
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pw
  %i.cfs = load ptr, ptr %i.cef, align 8, !tbaa !8 ; 11 uses
  store ptr %i.cfs, ptr @xx_link, align 8, !tbaa !11
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cfs, i64 24 ; 2 uses
  %i.cfu = load ptr, ptr %i.cft, align 8, !tbaa !8 ; 5 uses
  %i.cfv = icmp eq ptr %i.cfu, %i.cfs
  br i1 %i.cfv, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  store ptr %i.cfu, ptr @zz_res, align 8, !tbaa !11
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfs, i64 16 ; 2 uses
  %i.cfx = load ptr, ptr %i.cfw, align 8, !tbaa !8 ; 2 uses
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfu, i64 16
  store ptr %i.cfx, ptr %i.cfy, align 8, !tbaa !8
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfx, i64 24
  store ptr %i.cfu, ptr %i.cfz, align 8, !tbaa !8
  store ptr %i.cfs, ptr %i.cft, align 8, !tbaa !8
  store ptr %i.cfs, ptr %i.cfw, align 8, !tbaa !8
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qe, %bb.qf
  %i.cga = phi ptr [ %i.cfu, %bb.qf ], [ null, %bb.qe ]
  store ptr %i.cga, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.cfs, ptr @zz_hold, align 8, !tbaa !11
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cfs, i64 8
  %i.cgc = load ptr, ptr %i.cgb, align 8, !tbaa !8 ; 3 uses
  %i.cgd = icmp eq ptr %i.cgc, %i.cfs
  br i1 %i.cgd, label %bb.qi, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  store ptr %i.cgc, ptr @zz_res, align 8, !tbaa !11
  %i.cge = load ptr, ptr %i.cfs, align 8, !tbaa !8
  store ptr %i.cge, ptr %i.cgc, align 8, !tbaa !8
  %i.cgf = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.cgg = load ptr, ptr @zz_hold, align 8, !tbaa !11 ; 5 uses
  %i.cgh = load ptr, ptr %i.cgg, align 8, !tbaa !8
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cgh, i64 8
  store ptr %i.cgf, ptr %i.cgi, align 8, !tbaa !8
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cgg, i64 8
  store ptr %i.cgg, ptr %i.cgj, align 8, !tbaa !8
  store ptr %i.cgg, ptr %i.cgg, align 8, !tbaa !8
  %.pre2644 = load ptr, ptr @xx_link, align 8, !tbaa !11
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qg, %bb.qh
  %i.cgk = phi ptr [ %i.cfs, %bb.qg ], [ %.pre2644, %bb.qh ] ; 4 uses
  store ptr %i.cgk, ptr @zz_hold, align 8, !tbaa !11
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cgk, i64 32
  %i.cgm = load i8, ptr %i.cgl, align 8, !tbaa !8 ; 2 uses
  %.off2386 = add i8 %i.cgm, -11
  %switch2387 = icmp ult i8 %.off2386, 2
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cgk, i64 33
  %i.cgo = zext i8 %i.cgm to i64
  %i.cgp = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.cgo
  %.in2230.in = select i1 %switch2387, ptr %i.cgn, ptr %i.cgp
  %.in2230 = load i8, ptr %.in2230.in, align 1, !tbaa !8 ; 2 uses
  %i.cgq = zext i8 %.in2230 to i32
  store i32 %i.cgq, ptr @zz_size, align 4, !tbaa !4
  %i.cgr = zext i8 %.in2230 to i64
  %i.cgs = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cgr
  %i.cgt = load ptr, ptr %i.cgs, align 8, !tbaa !11
  store ptr %i.cgt, ptr %i.cgk, align 8, !tbaa !8
  %i.cgu = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.cgv = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.cgw = sext i32 %i.cgv to i64
  %i.cgx = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.cgw
  store ptr %i.cgu, ptr %i.cgx, align 8, !tbaa !11
  %i.cgy = load ptr, ptr @xx_tmp, align 8, !tbaa !11 ; 3 uses
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgy, i64 24
  %i.cha = load ptr, ptr %i.cgz, align 8, !tbaa !8
  %i.chb = icmp eq ptr %i.cha, %i.cgy
  br i1 %i.chb, label %bb.qj, label %bb.qk

bb.qj:                                            ; preds = %bb.qi
  %i.chc = call i32 @DisposeObject(ptr noundef nonnull %i.cgy) #9 ; 0 uses
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %bb.qi
  %i.chd = load ptr, ptr %i.cef, align 8, !tbaa !8
  br label %bb.ql

bb.ql:                                            ; preds = %bb.ql, %bb.qk
  %.pn2233 = phi ptr [ %i.chd, %bb.qk ], [ %.25, %bb.ql ]
  %.25.in = getelementptr inbounds nuw i8, ptr %.pn2233, i64 16
  %.25 = load ptr, ptr %.25.in, align 8, !tbaa !8 ; 3 uses
  %i.che = getelementptr inbounds nuw i8, ptr %.25, i64 32
  %i.chf = load i8, ptr %i.che, align 8, !tbaa !8
  %i.chg = icmp eq i8 %i.chf, 0
  br i1 %i.chg, label %bb.ql, label %bb.qm, !llvm.loop !70

bb.qm:                                            ; preds = %bb.ql
  %i.chh = call ptr @Manifest(ptr noundef nonnull %.25, ptr noundef %1, ptr noundef nonnull %13, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10) ; 6 uses
  %i.chi = load ptr, ptr %i.cef, align 8, !tbaa !8 ; 11 uses
  store ptr %i.chi, ptr @xx_link, align 8, !tbaa !11
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chi, i64 24 ; 2 uses
  %i.chk = load ptr, ptr %i.chj, align 8, !tbaa !8 ; 3 uses
  %i.chl = icmp eq ptr %i.chk, %i.chi
  br i1 %i.chl, label %bb.qo, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.chm = getelementptr inbounds nuw i8, ptr %i.chi, i64 16 ; 2 uses
  %i.chn = load ptr, ptr %i.chm, align 8, !tbaa !8 ; 2 uses
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chk, i64 16
  store ptr %i.chn, ptr %i.cho, align 8, !tbaa !8
  %i.chp = getelementptr inbounds nuw i8, ptr %i.chn, i64 24
  store ptr %i.chk, ptr %i.chp, align 8, !tbaa !8
  store ptr %i.chi, ptr %i.chj, align 8, !tbaa !8
  store ptr %i.chi, ptr %i.chm, align 8, !tbaa !8
  br label %bb.qo

bb.qo:                                            ; preds = %bb.qm, %bb.qn
  store ptr %i.chi, ptr @zz_hold, align 8, !tbaa !11
  %i.chq = getelementptr inbounds nuw i8, ptr %i.chi, i64 8
  %i.chr = load ptr, ptr %i.chq, align 8, !tbaa !8 ; 3 uses
  %i.chs = icmp eq ptr %i.chr, %i.chi
  br i1 %i.chs, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  store ptr %i.chr, ptr @zz_res, align 8, !tbaa !11
  %i.cht = load ptr, ptr %i.chi, align 8, !tbaa !8
  store ptr %i.cht, ptr %i.chr, align 8, !tbaa !8
  %i.chu = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.chv = load ptr, ptr @zz_hold, align 8, !tbaa !11 ; 5 uses
  %i.chw = load ptr, ptr %i.chv, align 8, !tbaa !8
  %i.chx = getelementptr inbounds nuw i8, ptr %i.chw, i64 8
  store ptr %i.chu, ptr %i.chx, align 8, !tbaa !8
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chv, i64 8
  store ptr %i.chv, ptr %i.chy, align 8, !tbaa !8
  store ptr %i.chv, ptr %i.chv, align 8, !tbaa !8
  %.pre2645 = load ptr, ptr @xx_link, align 8, !tbaa !11
  br label %bb.qq

bb.qq:                                            ; preds = %bb.qo, %bb.qp
  %i.chz = phi ptr [ %i.chi, %bb.qo ], [ %.pre2645, %bb.qp ] ; 4 uses
  store ptr %i.chz, ptr @zz_hold, align 8, !tbaa !11
  %i.cia = getelementptr inbounds nuw i8, ptr %i.chz, i64 32
  %i.cib = load i8, ptr %i.cia, align 8, !tbaa !8 ; 2 uses
  %.off2388 = add i8 %i.cib, -11
  %switch2389 = icmp ult i8 %.off2388, 2
  %i.cic = getelementptr inbounds nuw i8, ptr %i.chz, i64 33
  %i.cid = zext i8 %i.cib to i64
  %i.cie = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.cid
  %.in2231.in = select i1 %switch2389, ptr %i.cic, ptr %i.cie
  %.in2231 = load i8, ptr %.in2231.in, align 1, !tbaa !8 ; 2 uses
  %i.cif = zext i8 %.in2231 to i32
  store i32 %i.cif, ptr @zz_size, align 4, !tbaa !4
  %i.cig = zext i8 %.in2231 to i64
  %i.cih = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cig
  %i.cii = load ptr, ptr %i.cih, align 8, !tbaa !11
  store ptr %i.cii, ptr %i.chz, align 8, !tbaa !8
  %i.cij = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.cik = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.cil = sext i32 %i.cik to i64
  %i.cim = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.cil
  store ptr %i.cij, ptr %i.cim, align 8, !tbaa !11
  store ptr %i.chh, ptr @xx_res, align 8, !tbaa !11
  store ptr %0, ptr @xx_hold, align 8, !tbaa !11
  %i.cin = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cio = load ptr, ptr %i.cin, align 8, !tbaa !8 ; 8 uses
  %i.cip = icmp eq ptr %i.cio, %0
  br i1 %i.cip, label %.thread3007, label %bb.qr

.thread3007:                                      ; preds = %bb.qq
  store ptr null, ptr @xx_tmp, align 8, !tbaa !11
  br label %bb.qt

bb.qr:                                            ; preds = %bb.qq
  store ptr %i.cio, ptr @zz_res, align 8, !tbaa !11
  %i.ciq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cir = load ptr, ptr %i.ciq, align 8, !tbaa !8 ; 2 uses
  %i.cis = getelementptr inbounds nuw i8, ptr %i.cio, i64 16
  store ptr %i.cir, ptr %i.cis, align 8, !tbaa !8
  %i.cit = getelementptr inbounds nuw i8, ptr %i.cir, i64 24
  store ptr %i.cio, ptr %i.cit, align 8, !tbaa !8
  store ptr %0, ptr %i.cin, align 8, !tbaa !8
  store ptr %0, ptr %i.ciq, align 8, !tbaa !8
  store ptr %i.cio, ptr @xx_tmp, align 8, !tbaa !11
  %i.ciu = icmp eq ptr %i.cio, null
  %i.civ = icmp eq ptr %i.chh, null
  %or.cond66 = select i1 %i.ciu, i1 true, i1 %i.civ
  br i1 %or.cond66, label %bb.qt, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.cio, i64 16 ; 2 uses
  %i.cix = load ptr, ptr %i.ciw, align 8, !tbaa !8 ; 3 uses
  store ptr %i.cix, ptr @zz_tmp, align 8, !tbaa !11
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.chh, i64 16 ; 2 uses
  %i.ciz = load ptr, ptr %i.ciy, align 8, !tbaa !8 ; 2 uses
  store ptr %i.ciz, ptr %i.ciw, align 8, !tbaa !8
  %i.cja = getelementptr inbounds nuw i8, ptr %i.ciz, i64 24
  store ptr %i.cio, ptr %i.cja, align 8, !tbaa !8
  store ptr %i.cix, ptr %i.ciy, align 8, !tbaa !8
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cix, i64 24
  store ptr %i.chh, ptr %i.cjb, align 8, !tbaa !8
  br label %bb.qt

bb.qt:                                            ; preds = %.thread3007, %bb.qs, %bb.qr
  store ptr %0, ptr @zz_hold, align 8, !tbaa !11
  %i.cjc = load ptr, ptr %i.cef, align 8, !tbaa !8 ; 3 uses
  %i.cjd = icmp eq ptr %i.cjc, %0
  br i1 %i.cjd, label %.thread3009, label %bb.qu

.thread3009:                                      ; preds = %bb.qt
  store ptr null, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.chh, ptr @zz_res, align 8, !tbaa !11
  br label %bb.qw

bb.qu:                                            ; preds = %bb.qt
  store ptr %i.cjc, ptr @zz_res, align 8, !tbaa !11
  %i.cje = load ptr, ptr %0, align 8, !tbaa !8
  store ptr %i.cje, ptr %i.cjc, align 8, !tbaa !8
  %i.cjf = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.cjg = load ptr, ptr @zz_hold, align 8, !tbaa !11 ; 5 uses
  %i.cjh = load ptr, ptr %i.cjg, align 8, !tbaa !8
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cjh, i64 8
  store ptr %i.cjf, ptr %i.cji, align 8, !tbaa !8
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cjg, i64 8
  store ptr %i.cjg, ptr %i.cjj, align 8, !tbaa !8
  store ptr %i.cjg, ptr %i.cjg, align 8, !tbaa !8
  %i.cjk = load ptr, ptr @zz_res, align 8, !tbaa !11 ; 5 uses
  %.pre2646 = load ptr, ptr @xx_res, align 8, !tbaa !11 ; 3 uses
  store ptr %i.cjk, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %.pre2646, ptr @zz_res, align 8, !tbaa !11
  store ptr %i.cjk, ptr @zz_hold, align 8, !tbaa !11
  %i.cjl = icmp eq ptr %i.cjk, null
  %i.cjm = icmp eq ptr %.pre2646, null
  %or.cond68 = select i1 %i.cjl, i1 true, i1 %i.cjm
  br i1 %or.cond68, label %bb.qw, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.cjn = load ptr, ptr %i.cjk, align 8, !tbaa !8
  store ptr %i.cjn, ptr @zz_tmp, align 8, !tbaa !11
  %i.cjo = load ptr, ptr %.pre2646, align 8, !tbaa !8
  store ptr %i.cjo, ptr %i.cjk, align 8, !tbaa !8
  %i.cjp = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.cjq = load ptr, ptr @zz_res, align 8, !tbaa !11 ; 2 uses
  %i.cjr = load ptr, ptr %i.cjq, align 8, !tbaa !8
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjr, i64 8
  store ptr %i.cjp, ptr %i.cjs, align 8, !tbaa !8
  %i.cjt = load ptr, ptr @zz_tmp, align 8, !tbaa !11 ; 2 uses
  store ptr %i.cjt, ptr %i.cjq, align 8, !tbaa !8
  %i.cju = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.cjt, i64 8
  store ptr %i.cju, ptr %i.cjv, align 8, !tbaa !8
  br label %bb.qw

bb.qw:                                            ; preds = %.thread3009, %bb.qv, %bb.qu
  %i.cjw = load ptr, ptr @xx_hold, align 8, !tbaa !11 ; 4 uses
  store ptr %i.cjw, ptr @zz_hold, align 8, !tbaa !11
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjw, i64 32
  %i.cjy = load i8, ptr %i.cjx, align 8, !tbaa !8 ; 2 uses
  %.off2390 = add i8 %i.cjy, -11
  %switch2391 = icmp ult i8 %.off2390, 2
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjw, i64 33
  %i.cka = zext i8 %i.cjy to i64
  %i.ckb = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.cka
  %.in2232.in = select i1 %switch2391, ptr %i.cjz, ptr %i.ckb
  %.in2232 = load i8, ptr %.in2232.in, align 1, !tbaa !8 ; 2 uses
  %i.ckc = zext i8 %.in2232 to i32
  store i32 %i.ckc, ptr @zz_size, align 4, !tbaa !4
  %i.ckd = zext i8 %.in2232 to i64
  %i.cke = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ckd
  %i.ckf = load ptr, ptr %i.cke, align 8, !tbaa !11
  store ptr %i.ckf, ptr %i.cjw, align 8, !tbaa !8
  %i.ckg = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.ckh = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.cki = sext i32 %i.ckh to i64
  %i.ckj = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.cki
  store ptr %i.ckg, ptr %i.ckj, align 8, !tbaa !11
  br label %bb.aax

bb.qx:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.ckk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ckl = load i8, ptr %i.ckk, align 4
  %i.ckm = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.ckn = and i8 %i.ckl, 127
  store i8 %i.ckn, ptr %i.ckm, align 4
  %i.cko = load i16, ptr %i.ckm, align 4
  %i.ckp = load <4 x i16>, ptr %2, align 4        ; 2 uses
  %i.ckq = load i16, ptr %2, align 4              ; 2 uses
  %i.ckr = trunc i16 %i.ckq to i8
  %i.cks = insertelement <4 x i16> %i.ckp, i16 %i.cko, i64 2
  %i.ckt = and <4 x i16> %i.cks, <i16 -128, i16 -1, i16 127, i16 -1>
  %i.cku = trunc i16 %i.ckq to i8
  %i.ckv = and i8 %i.cku, -128
  %i.ckw = shufflevector <4 x i16> <i16 -1, i16 -1, i16 poison, i16 -1>, <4 x i16> %i.ckp, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ckx = and <4 x i16> %i.ckw, <i16 0, i16 0, i16 -128, i16 0>
  %i.cky = or disjoint <4 x i16> %i.ckt, %i.ckx
  store <4 x i16> %i.cky, ptr %13, align 8
  %i.ckz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cla = load i32, ptr %i.ckz, align 4          ; 2 uses
  %i.clb = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  store i32 %i.cla, ptr %i.clb, align 4
  %i.clc = and i8 %i.ckr, 127
  %i.cld = or disjoint i8 %i.clc, %i.ckv          ; 4 uses
  store i8 %i.cld, ptr %13, align 8
  %i.cle = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.clf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.clg = load <2 x i16>, ptr %i.cle, align 4, !tbaa !31
  store <2 x i16> %i.clg, ptr %i.clf, align 8, !tbaa !31
  switch i8 %i.u, label %bb.rb [
    i8 66, label %bb.qy
    i8 49, label %bb.qz
    i8 48, label %bb.ra
  ]

bb.qy:                                            ; preds = %bb.qx
  %i.clh = and i32 %i.cla, -12582913
  %i.cli = or disjoint i32 %i.clh, 4194304
  store i32 %i.cli, ptr %i.clb, align 4
  br label %bb.rc

bb.qz:                                            ; preds = %bb.qx
  %i.clj = or i8 %i.cld, 1
  store i8 %i.clj, ptr %13, align 8
  br label %bb.rc

bb.ra:                                            ; preds = %bb.qx
  %i.clk = or i8 %i.cld, 2
  store i8 %i.clk, ptr %13, align 8
  br label %bb.rc

bb.rb:                                            ; preds = %bb.qx
  %i.cll = or i8 %i.cld, 4
  store i8 %i.cll, ptr %13, align 8
  br label %bb.rc

bb.rc:                                            ; preds = %bb.qz, %bb.rb, %bb.ra, %bb.qy
  %i.clm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cln = load ptr, ptr %i.clm, align 8, !tbaa !8
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rd, %bb.rc
  %.pn2227 = phi ptr [ %i.cln, %bb.rc ], [ %.26, %bb.rd ]
  %.26.in = getelementptr inbounds nuw i8, ptr %.pn2227, i64 16
  %.26 = load ptr, ptr %.26.in, align 8, !tbaa !8 ; 3 uses
  %i.clo = getelementptr inbounds nuw i8, ptr %.26, i64 32
  %i.clp = load i8, ptr %i.clo, align 8, !tbaa !8
  %i.clq = icmp eq i8 %i.clp, 0
  br i1 %i.clq, label %bb.rd, label %bb.re, !llvm.loop !71

bb.re:                                            ; preds = %bb.rd
  %i.clr = call ptr @Manifest(ptr noundef nonnull %.26, ptr noundef %1, ptr noundef nonnull %13, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 0, ptr noundef %9, i32 noundef %10) ; 6 uses
  %i.cls = load ptr, ptr %i.clm, align 8, !tbaa !8 ; 11 uses
  store ptr %i.cls, ptr @xx_link, align 8, !tbaa !11
  %i.clt = getelementptr inbounds nuw i8, ptr %i.cls, i64 24 ; 2 uses
  %i.clu = load ptr, ptr %i.clt, align 8, !tbaa !8 ; 3 uses
  %i.clv = icmp eq ptr %i.clu, %i.cls
  br i1 %i.clv, label %bb.rg, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.clw = getelementptr inbounds nuw i8, ptr %i.cls, i64 16 ; 2 uses
  %i.clx = load ptr, ptr %i.clw, align 8, !tbaa !8 ; 2 uses
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clu, i64 16
  store ptr %i.clx, ptr %i.cly, align 8, !tbaa !8
  %i.clz = getelementptr inbounds nuw i8, ptr %i.clx, i64 24
  store ptr %i.clu, ptr %i.clz, align 8, !tbaa !8
  store ptr %i.cls, ptr %i.clt, align 8, !tbaa !8
  store ptr %i.cls, ptr %i.clw, align 8, !tbaa !8
  br label %bb.rg

bb.rg:                                            ; preds = %bb.re, %bb.rf
  store ptr %i.cls, ptr @zz_hold, align 8, !tbaa !11
  %i.cma = getelementptr inbounds nuw i8, ptr %i.cls, i64 8
  %i.cmb = load ptr, ptr %i.cma, align 8, !tbaa !8 ; 3 uses
  %i.cmc = icmp eq ptr %i.cmb, %i.cls
  br i1 %i.cmc, label %bb.ri, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  store ptr %i.cmb, ptr @zz_res, align 8, !tbaa !11
  %i.cmd = load ptr, ptr %i.cls, align 8, !tbaa !8
  store ptr %i.cmd, ptr %i.cmb, align 8, !tbaa !8
  %i.cme = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.cmf = load ptr, ptr @zz_hold, align 8, !tbaa !11 ; 5 uses
  %i.cmg = load ptr, ptr %i.cmf, align 8, !tbaa !8
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cmg, i64 8
  store ptr %i.cme, ptr %i.cmh, align 8, !tbaa !8
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cmf, i64 8
  store ptr %i.cmf, ptr %i.cmi, align 8, !tbaa !8
  store ptr %i.cmf, ptr %i.cmf, align 8, !tbaa !8
  %.pre2641 = load ptr, ptr @xx_link, align 8, !tbaa !11
  br label %bb.ri

bb.ri:                                            ; preds = %bb.rg, %bb.rh
  %i.cmj = phi ptr [ %i.cls, %bb.rg ], [ %.pre2641, %bb.rh ] ; 4 uses
  store ptr %i.cmj, ptr @zz_hold, align 8, !tbaa !11
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmj, i64 32
  %i.cml = load i8, ptr %i.cmk, align 8, !tbaa !8 ; 2 uses
  %.off2392 = add i8 %i.cml, -11
  %switch2393 = icmp ult i8 %.off2392, 2
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.cmj, i64 33
  %i.cmn = zext i8 %i.cml to i64
  %i.cmo = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.cmn
  %.in2225.in = select i1 %switch2393, ptr %i.cmm, ptr %i.cmo
  %.in2225 = load i8, ptr %.in2225.in, align 1, !tbaa !8 ; 2 uses
  %i.cmp = zext i8 %.in2225 to i32
  store i32 %i.cmp, ptr @zz_size, align 4, !tbaa !4
  %i.cmq = zext i8 %.in2225 to i64
  %i.cmr = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cmq
  %i.cms = load ptr, ptr %i.cmr, align 8, !tbaa !11
  store ptr %i.cms, ptr %i.cmj, align 8, !tbaa !8
  %i.cmt = load ptr, ptr @zz_hold, align 8, !tbaa !11
  %i.cmu = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.cmv = sext i32 %i.cmu to i64
  %i.cmw = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.cmv
  store ptr %i.cmt, ptr %i.cmw, align 8, !tbaa !11
  store ptr %i.clr, ptr @xx_res, align 8, !tbaa !11
  store ptr %0, ptr @xx_hold, align 8, !tbaa !11
  %i.cmx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cmy = load ptr, ptr %i.cmx, align 8, !tbaa !8 ; 8 uses
  %i.cmz = icmp eq ptr %i.cmy, %0
  br i1 %i.cmz, label %.thread3011, label %bb.rj

.thread3011:                                      ; preds = %bb.ri
  store ptr null, ptr @xx_tmp, align 8, !tbaa !11
  br label %bb.rl

bb.rj:                                            ; preds = %bb.ri
  store ptr %i.cmy, ptr @zz_res, align 8, !tbaa !11
  %i.cna = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cnb = load ptr, ptr %i.cna, align 8, !tbaa !8 ; 2 uses
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cmy, i64 16
  store ptr %i.cnb, ptr %i.cnc, align 8, !tbaa !8
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cnb, i64 24
  store ptr %i.cmy, ptr %i.cnd, align 8, !tbaa !8
  store ptr %0, ptr %i.cmx, align 8, !tbaa !8
  store ptr %0, ptr %i.cna, align 8, !tbaa !8
  store ptr %i.cmy, ptr @xx_tmp, align 8, !tbaa !11
  %i.cne = icmp eq ptr %i.cmy, null
  %i.cnf = icmp eq ptr %i.clr, null
  %or.cond70 = select i1 %i.cne, i1 true, i1 %i.cnf
  br i1 %or.cond70, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cmy, i64 16 ; 2 uses
  %i.cnh = load ptr, ptr %i.cng, align 8, !tbaa !8 ; 3 uses
  store ptr %i.cnh, ptr @zz_tmp, align 8, !tbaa !11
  %i.cni = getelementptr inbounds nuw i8, ptr %i.clr, i64 16 ; 2 uses
  %i.cnj = load ptr, ptr %i.cni, align 8, !tbaa !8 ; 2 uses
  store ptr %i.cnj, ptr %i.cng, align 8, !tbaa !8
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cnj, i64 24
  store ptr %i.cmy, ptr %i.cnk, align 8, !tbaa !8
  store ptr %i.cnh, ptr %i.cni, align 8, !tbaa !8
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cnh, i64 24
  store ptr %i.clr, ptr %i.cnl, align 8, !tbaa !8
  br label %bb.rl

bb.rl:                                            ; preds = %.thread3011, %bb.rk, %bb.rj
  store ptr %0, ptr @zz_hold, align 8, !tbaa !11
  %i.cnm = load ptr, ptr %i.clm, align 8, !tbaa !8 ; 3 uses
  %i.cnn = icmp eq ptr %i.cnm, %0
  br i1 %i.cnn, label %.thread3013, label %bb.rm

.thread3013:                                      ; preds = %bb.rl
  store ptr null, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %i.clr, ptr @zz_res, align 8, !tbaa !11
  br label %bb.ro

bb.rm:                                            ; preds = %bb.rl
  store ptr %i.cnm, ptr @zz_res, align 8, !tbaa !11
  %i.cno = load ptr, ptr %0, align 8, !tbaa !8
  store ptr %i.cno, ptr %i.cnm, align 8, !tbaa !8
  %i.cnp = load ptr, ptr @zz_res, align 8, !tbaa !11
  %i.cnq = load ptr, ptr @zz_hold, align 8, !tbaa !11 ; 5 uses
  %i.cnr = load ptr, ptr %i.cnq, align 8, !tbaa !8
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnr, i64 8
  store ptr %i.cnp, ptr %i.cns, align 8, !tbaa !8
  %i.cnt = getelementptr inbounds nuw i8, ptr %i.cnq, i64 8
  store ptr %i.cnq, ptr %i.cnt, align 8, !tbaa !8
  store ptr %i.cnq, ptr %i.cnq, align 8, !tbaa !8
  %i.cnu = load ptr, ptr @zz_res, align 8, !tbaa !11 ; 5 uses
  %.pre2642 = load ptr, ptr @xx_res, align 8, !tbaa !11 ; 3 uses
  store ptr %i.cnu, ptr @xx_tmp, align 8, !tbaa !11
  store ptr %.pre2642, ptr @zz_res, align 8, !tbaa !11
  store ptr %i.cnu, ptr @zz_hold, align 8, !tbaa !11
  %i.cnv = icmp eq ptr %i.cnu, null
  %i.cnw = icmp eq ptr %.pre2642, null
end_hunk_1
