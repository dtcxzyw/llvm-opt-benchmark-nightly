inline.NumInlined: 19
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_TIFFVSetField:bb.a
  br i1 %.not709, label %bb.jm, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  br i1 %i.ain, label %bb.ji, label %.thread957

.thread957:                                       ; preds = %bb.jh
  %i.aio = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aip = load ptr, ptr %i.aio, align 8          ; 2 uses
  %i.aiq = getelementptr i8, ptr %i.aip, i64 8
  store ptr %i.aiq, ptr %i.aio, align 8
  %i.air = load i32, ptr %i.aip, align 4, !tbaa !3
  br label %bb.jk

bb.ji:                                            ; preds = %bb.jh
  %i.ais = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ait = load ptr, ptr %i.ais, align 8
  %i.aiu = zext nneg i32 %i.aim to i64
  %i.aiv = getelementptr i8, ptr %i.ait, i64 %i.aiu
  %i.aiw = add nuw nsw i32 %i.aim, 8              ; 2 uses
  store i32 %i.aiw, ptr %2, align 8
  %i.aix = load i32, ptr %i.aiv, align 4, !tbaa !3 ; 2 uses
  %i.aiy = icmp ult i32 %i.aim, 33
  br i1 %i.aiy, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.aiz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aja = load ptr, ptr %i.aiz, align 8
  %i.ajb = zext nneg i32 %i.aiw to i64
  %i.ajc = getelementptr i8, ptr %i.aja, i64 %i.ajb
  %i.ajd = add nuw nsw i32 %i.aim, 16
  store i32 %i.ajd, ptr %2, align 8
  br label %bb.jl

bb.jk:                                            ; preds = %.thread957, %bb.ji
  %i.aje = phi i32 [ %i.air, %.thread957 ], [ %i.aix, %bb.ji ]
  %i.ajf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ajg = load ptr, ptr %i.ajf, align 8          ; 2 uses
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 8
  store ptr %i.ajh, ptr %i.ajf, align 8
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  %i.aji = phi i32 [ %i.aix, %bb.jj ], [ %i.aje, %bb.jk ]
  %i.ajj = phi ptr [ %i.ajc, %bb.jj ], [ %i.ajg, %bb.jk ]
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !106
  br label %.thread727

bb.jm:                                            ; preds = %bb.jg
  br i1 %i.ain, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.ajl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ajm = load ptr, ptr %i.ajl, align 8
  %i.ajn = zext nneg i32 %i.aim to i64
  %i.ajo = getelementptr i8, ptr %i.ajm, i64 %i.ajn
  %i.ajp = add nuw nsw i32 %i.aim, 8
  store i32 %i.ajp, ptr %2, align 8
  br label %bb.jp

bb.jo:                                            ; preds = %bb.jm
  %i.ajq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ajr = load ptr, ptr %i.ajq, align 8          ; 2 uses
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 8
  store ptr %i.ajs, ptr %i.ajq, align 8
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.ajt = phi ptr [ %i.ajo, %bb.jn ], [ %i.ajr, %bb.jo ]
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !106 ; 2 uses
  %i.ajv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aju) #11
  %i.ajw = add i64 %i.ajv, 1                      ; 2 uses
  %i.ajx = icmp ult i64 %i.ajw, 2147483648
  br i1 %i.ajx, label %.thread723, label %bb.jq

.thread723:                                       ; preds = %bb.jp
  %i.ajy = trunc nuw nsw i64 %i.ajw to i32
  br label %.thread727

.thread727:                                       ; preds = %bb.jl, %.thread723
  %.1565 = phi i32 [ %i.aji, %bb.jl ], [ %i.ajy, %.thread723 ] ; 2 uses
  %.0563 = phi ptr [ %i.ajk, %bb.jl ], [ %i.aju, %.thread723 ]
  %i.ajz = getelementptr inbounds nuw i8, ptr %.2562, i64 8
  store i32 %.1565, ptr %i.ajz, align 8, !tbaa !109
  %i.aka = getelementptr inbounds nuw i8, ptr %.2562, i64 16
  %i.akb = zext i32 %.1565 to i64
  tail call fastcc void @setByteArray(ptr noundef nonnull %0, ptr noundef nonnull %i.aka, ptr noundef %.0563, i64 noundef %i.akb, i64 noundef 1)
  br label %.thread756

bb.jq:                                            ; preds = %bb.jp
  %i.akc = load ptr, ptr %0, align 8, !tbaa !9
  %i.akd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !31
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFVSetField.module, ptr noundef nonnull @.str.22, ptr noundef %i.akc, ptr noundef %i.ake) #10
  br label %.thread752

bb.jr:                                            ; preds = %bb.jf
  %i.akf = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.akg = load i16, ptr %i.akf, align 2, !tbaa !112 ; 3 uses
  br i1 %.not709, label %bb.kb, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.akh = icmp eq i16 %i.akg, -3
  %i.aki = load i32, ptr %2, align 8              ; 5 uses
  %i.akj = icmp ult i32 %i.aki, 41                ; 2 uses
  br i1 %i.akh, label %bb.jt, label %bb.jx

bb.jt:                                            ; preds = %bb.js
  br i1 %i.akj, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.akk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.akl = load ptr, ptr %i.akk, align 8
  %i.akm = zext nneg i32 %i.aki to i64
  %i.akn = getelementptr i8, ptr %i.akl, i64 %i.akm
  %i.ako = add nuw nsw i32 %i.aki, 8
  store i32 %i.ako, ptr %2, align 8
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jt
  %i.akp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.akq = load ptr, ptr %i.akp, align 8          ; 2 uses
  %i.akr = getelementptr i8, ptr %i.akq, i64 8
  store ptr %i.akr, ptr %i.akp, align 8
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %i.aks = phi ptr [ %i.akn, %bb.ju ], [ %i.akq, %bb.jv ]
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !3
  br label %bb.ke

bb.jx:                                            ; preds = %bb.js
  br i1 %i.akj, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.aku = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.akv = load ptr, ptr %i.aku, align 8
  %i.akw = zext nneg i32 %i.aki to i64
  %i.akx = getelementptr i8, ptr %i.akv, i64 %i.akw
  %i.aky = add nuw nsw i32 %i.aki, 8
  store i32 %i.aky, ptr %2, align 8
  br label %bb.ka

bb.jz:                                            ; preds = %bb.jx
  %i.akz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ala = load ptr, ptr %i.akz, align 8          ; 2 uses
  %i.alb = getelementptr i8, ptr %i.ala, i64 8
  store ptr %i.alb, ptr %i.akz, align 8
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %i.alc = phi ptr [ %i.akx, %bb.jy ], [ %i.ala, %bb.jz ]
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !3
  br label %bb.ke

bb.kb:                                            ; preds = %bb.jr
  switch i16 %i.akg, label %bb.kd [
    i16 -1, label %.thread958
    i16 -3, label %.thread958
    i16 -2, label %bb.kc
  ]

.thread958:                                       ; preds = %bb.kb, %bb.kb
  %i.ale = getelementptr inbounds nuw i8, ptr %.2562, i64 8
  store i32 1, ptr %i.ale, align 8, !tbaa !109
  br label %bb.kg

bb.kc:                                            ; preds = %bb.kb
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.alg = load i16, ptr %i.alf, align 2, !tbaa !90
  %i.alh = zext i16 %i.alg to i32
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kb
  %i.ali = sext i16 %i.akg to i32
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc, %bb.jw, %bb.ka
  %.sink = phi i32 [ %i.ali, %bb.kd ], [ %i.alh, %bb.kc ], [ %i.akt, %bb.jw ], [ %i.ald, %bb.ka ] ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %.2562, i64 8
  store i32 %.sink, ptr %i.alj, align 8, !tbaa !109
  %i.alk = icmp eq i32 %.sink, 0
  br i1 %i.alk, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.all = load ptr, ptr %0, align 8, !tbaa !9
  %i.alm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !31
  %i.alo = load i32, ptr %i.aih, align 8, !tbaa !110
  %i.alp = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.alq = load i16, ptr %i.alp, align 2, !tbaa !112
  %i.alr = sext i16 %i.alq to i32
  %i.als = load i8, ptr %i.aik, align 1, !tbaa !111
  %i.alt = zext i8 %i.als to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFVSetField.module, ptr noundef nonnull @.str.23, ptr noundef %i.all, ptr noundef %i.aln, i32 noundef %i.alo, i32 noundef %i.alr, i32 noundef %i.alt) #10
  br label %.thread756

bb.kg:                                            ; preds = %.thread958, %bb.ke
  %i.alu = phi i32 [ 1, %.thread958 ], [ %.sink, %bb.ke ]
  %i.alv = getelementptr inbounds nuw i8, ptr %.2562, i64 8 ; 4 uses
  %i.alw = sext i32 %i.alu to i64
  %i.alx = sext i32 %i.aia to i64                 ; 13 uses
  %i.aly = tail call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef %i.alw, i64 noundef %i.alx, ptr noundef nonnull @.str.24) #10 ; 16 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.2562, i64 16 ; 4 uses
  store ptr %i.aly, ptr %i.alz, align 8, !tbaa !40
  %.not700 = icmp eq ptr %i.aly, null
  br i1 %.not700, label %.thread752, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.ama = load i32, ptr %i.q, align 8, !tbaa !39
  %i.amb = icmp eq i32 %i.ama, 336
  br i1 %i.amb, label %bb.ki, label %bb.ko

bb.ki:                                            ; preds = %bb.kh
  %i.amc = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !31
  %i.ame = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.amd, ptr noundef nonnull dereferenceable(9) @.str.25) #11
  %i.amf = icmp eq i32 %i.ame, 0
  br i1 %i.amf, label %bb.kj, label %bb.ko

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.amg = load i32, ptr %2, align 8              ; 5 uses
  %i.amh = icmp ult i32 %i.amg, 41
  br i1 %i.amh, label %bb.kk, label %.thread959

.thread959:                                       ; preds = %bb.kj
  %i.ami = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.amj = load ptr, ptr %i.ami, align 8          ; 2 uses
  %i.amk = getelementptr i8, ptr %i.amj, i64 8
  store ptr %i.amk, ptr %i.ami, align 8
  %i.aml = load i32, ptr %i.amj, align 4, !tbaa !3
  %i.amm = trunc i32 %i.aml to i16
  store i16 %i.amm, ptr %i.c, align 2, !tbaa !63
  br label %bb.km

bb.kk:                                            ; preds = %bb.kj
  %i.amn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.amo = load ptr, ptr %i.amn, align 8
  %i.amp = zext nneg i32 %i.amg to i64
  %i.amq = getelementptr i8, ptr %i.amo, i64 %i.amp
  %i.amr = add nuw nsw i32 %i.amg, 8              ; 2 uses
  store i32 %i.amr, ptr %2, align 8
  %i.ams = load i32, ptr %i.amq, align 4, !tbaa !3
  %i.amt = trunc i32 %i.ams to i16
  store i16 %i.amt, ptr %i.c, align 2, !tbaa !63
  %i.amu = icmp ult i32 %i.amg, 33
  br i1 %i.amu, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  %i.amv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.amw = load ptr, ptr %i.amv, align 8
  %i.amx = zext nneg i32 %i.amr to i64
  %i.amy = getelementptr i8, ptr %i.amw, i64 %i.amx
  %i.amz = add nuw nsw i32 %i.amg, 16
  store i32 %i.amz, ptr %2, align 8
  br label %bb.kn

bb.km:                                            ; preds = %.thread959, %bb.kk
  %i.ana = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.anb = load ptr, ptr %i.ana, align 8          ; 2 uses
  %i.anc = getelementptr i8, ptr %i.anb, i64 8
  store ptr %i.anc, ptr %i.ana, align 8
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl
  %i.and = phi ptr [ %i.amy, %bb.kl ], [ %i.anb, %bb.km ]
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !3
  %i.anf = trunc i32 %i.ane to i16
  %i.ang = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.anf, ptr %i.ang, align 2, !tbaa !63
  %i.anh = load ptr, ptr %i.alz, align 8, !tbaa !40
  call void @_TIFFmemcpy(ptr noundef %i.anh, ptr noundef nonnull %i.c, i64 noundef 4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %.thread756

bb.ko:                                            ; preds = %bb.ki, %bb.kh
  %i.ani = load i8, ptr %i.aik, align 1, !tbaa !111
  %.not701 = icmp eq i8 %i.ani, 0
  br i1 %.not701, label %bb.kp, label %bb.kr

bb.kp:                                            ; preds = %bb.ko
  %i.anj = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.ank = load i16, ptr %i.anj, align 2, !tbaa !112
  %switch716 = icmp ugt i16 %i.ank, -4
  br i1 %switch716, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.anl = load i32, ptr %i.alv, align 8, !tbaa !109
  %i.anm = icmp sgt i32 %i.anl, 1
  br i1 %i.anm, label %bb.kr, label %bb.la

bb.kr:                                            ; preds = %bb.kp, %bb.kq, %bb.ko
  %i.ann = load i32, ptr %2, align 8              ; 3 uses
  %i.ano = icmp ult i32 %i.ann, 41
  br i1 %i.ano, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.anp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.anq = load ptr, ptr %i.anp, align 8
  %i.anr = zext nneg i32 %i.ann to i64
  %i.ans = getelementptr i8, ptr %i.anq, i64 %i.anr
  %i.ant = add nuw nsw i32 %i.ann, 8
  store i32 %i.ant, ptr %2, align 8
  br label %bb.ku

bb.kt:                                            ; preds = %bb.kr
  %i.anu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.anv = load ptr, ptr %i.anu, align 8          ; 2 uses
  %i.anw = getelementptr i8, ptr %i.anv, i64 8
  store ptr %i.anw, ptr %i.anu, align 8
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %i.anx = phi ptr [ %i.ans, %bb.ks ], [ %i.anv, %bb.kt ]
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !7
  %i.anz = load i32, ptr %i.alv, align 8, !tbaa !109
  %i.aoa = mul nsw i32 %i.anz, %i.aia
  %i.aob = sext i32 %i.aoa to i64
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.aly, ptr noundef %i.any, i64 noundef %i.aob) #10
  %i.aoc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aod = load i32, ptr %i.aoc, align 8, !tbaa !28
  %i.aoe = and i32 %i.aod, 524288
  %.not706 = icmp eq i32 %i.aoe, 0
  br i1 %.not706, label %bb.kv, label %.thread756

bb.kv:                                            ; preds = %bb.ku
  %i.aof = load ptr, ptr %.2562, align 8, !tbaa !37
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  %i.aoh = load i32, ptr %i.aog, align 8, !tbaa !110
  switch i32 %i.aoh, label %.thread756 [
    i32 16, label %bb.kw
    i32 17, label %bb.ky
  ]

bb.kw:                                            ; preds = %bb.kv
  %i.aoi = load ptr, ptr %i.alz, align 8, !tbaa !40
  %i.aoj = load i32, ptr %i.alv, align 8, !tbaa !109 ; 2 uses
  %.not708799 = icmp sgt i32 %i.aoj, 0
  br i1 %.not708799, label %.lr.ph802.preheader, label %.thread756

.lr.ph802.preheader:                              ; preds = %bb.kw
  %wide.trip.count836 = zext nneg i32 %i.aoj to i64
  br label %.lr.ph802

.lr.ph802:                                        ; preds = %.lr.ph802.preheader, %bb.kx
  %indvars.iv833 = phi i64 [ 0, %.lr.ph802.preheader ], [ %indvars.iv.next834, %bb.kx ] ; 3 uses
  %i.aok = getelementptr inbounds nuw [8 x i8], ptr %i.aoi, i64 %indvars.iv833
  %i.aol = load i64, ptr %i.aok, align 8, !tbaa !113 ; 2 uses
  %i.aom = icmp ugt i64 %i.aol, 4294967295
  br i1 %i.aom, label %.thread732, label %bb.kx

.thread732:                                       ; preds = %.lr.ph802
  %i.aon = trunc nuw nsw i64 %indvars.iv833 to i32
  %i.aoo = load ptr, ptr %0, align 8, !tbaa !9
  %i.aop = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !31
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @_TIFFVSetField.module, ptr noundef nonnull @.str.26, ptr noundef %i.aoo, i64 noundef %i.aol, i32 noundef %i.aon, ptr noundef %i.aoq, i32 noundef %1) #10
  br label %bb.nd

bb.kx:                                            ; preds = %.lr.ph802
  %indvars.iv.next834 = add nuw nsw i64 %indvars.iv833, 1 ; 2 uses
  %exitcond837.not = icmp eq i64 %indvars.iv.next834, %wide.trip.count836
  br i1 %exitcond837.not, label %.thread756, label %.lr.ph802

bb.ky:                                            ; preds = %bb.kv
  %i.aor = load ptr, ptr %i.alz, align 8, !tbaa !40
  %i.aos = load i32, ptr %i.alv, align 8, !tbaa !109 ; 2 uses
  %.not707795 = icmp sgt i32 %i.aos, 0
  br i1 %.not707795, label %.lr.ph798.preheader, label %.thread756

.lr.ph798.preheader:                              ; preds = %bb.ky
  %wide.trip.count831 = zext nneg i32 %i.aos to i64
  br label %.lr.ph798

.lr.ph798:                                        ; preds = %.lr.ph798.preheader, %bb.kz
  %indvars.iv828 = phi i64 [ 0, %.lr.ph798.preheader ], [ %indvars.iv.next829, %bb.kz ] ; 3 uses
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr %i.aor, i64 %indvars.iv828
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !113 ; 2 uses
  %i.aov = add i64 %i.aou, -2147483648
  %or.cond714 = icmp ult i64 %i.aov, -4294967296
  br i1 %or.cond714, label %.thread734, label %bb.kz

.thread734:                                       ; preds = %.lr.ph798
  %i.aow = trunc nuw nsw i64 %indvars.iv828 to i32
  %i.aox = load ptr, ptr %0, align 8, !tbaa !9
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !31
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @_TIFFVSetField.module, ptr noundef nonnull @.str.27, ptr noundef %i.aox, i64 noundef %i.aou, i32 noundef %i.aow, ptr noundef %i.aoz, i32 noundef %1) #10
  br label %bb.nd

bb.kz:                                            ; preds = %.lr.ph798
  %indvars.iv.next829 = add nuw nsw i64 %indvars.iv828, 1 ; 2 uses
  %exitcond832.not = icmp eq i64 %indvars.iv.next829, %wide.trip.count831
  br i1 %exitcond832.not, label %.thread756, label %.lr.ph798

bb.la:                                            ; preds = %bb.kq
  %i.apa = load i32, ptr %i.aih, align 8, !tbaa !110
  switch i32 %i.apa, label %bb.ne [
    i32 1, label %bb.lb
    i32 7, label %bb.lb
    i32 6, label %bb.lf
end_hunk_0
begin_hunk_1_@_TIFFVSetField:bb.a

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  %i.aqy = phi ptr [ %i.aqt, %bb.lo ], [ %i.aqw, %bb.lp ]
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !3
  %i.ara = trunc i32 %i.aqz to i16
  store i16 %i.ara, ptr %i.g, align 2, !tbaa !63
  call void @_TIFFmemcpy(ptr noundef nonnull %i.aly, ptr noundef nonnull %i.g, i64 noundef %i.alx) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %.thread756

bb.lr:                                            ; preds = %bb.la, %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.arb = load i32, ptr %2, align 8              ; 3 uses
  %i.arc = icmp ult i32 %i.arb, 41
  br i1 %i.arc, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.ard = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.are = load ptr, ptr %i.ard, align 8
  %i.arf = zext nneg i32 %i.arb to i64
  %i.arg = getelementptr i8, ptr %i.are, i64 %i.arf
  %i.arh = add nuw nsw i32 %i.arb, 8
  store i32 %i.arh, ptr %2, align 8
  br label %bb.lu

bb.lt:                                            ; preds = %bb.lr
  %i.ari = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.arj = load ptr, ptr %i.ari, align 8          ; 2 uses
  %i.ark = getelementptr i8, ptr %i.arj, i64 8
  store ptr %i.ark, ptr %i.ari, align 8
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.arl = phi ptr [ %i.arg, %bb.ls ], [ %i.arj, %bb.lt ]
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !3
  store i32 %i.arm, ptr %i.h, align 4, !tbaa !3
  call void @_TIFFmemcpy(ptr noundef nonnull %i.aly, ptr noundef nonnull %i.h, i64 noundef %i.alx) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  br label %.thread756

bb.lv:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.arn = load i32, ptr %2, align 8              ; 3 uses
  %i.aro = icmp ult i32 %i.arn, 41
  br i1 %i.aro, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.arp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.arq = load ptr, ptr %i.arp, align 8
  %i.arr = zext nneg i32 %i.arn to i64
  %i.ars = getelementptr i8, ptr %i.arq, i64 %i.arr
  %i.art = add nuw nsw i32 %i.arn, 8
  store i32 %i.art, ptr %2, align 8
  br label %bb.ly

bb.lx:                                            ; preds = %bb.lv
  %i.aru = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.arv = load ptr, ptr %i.aru, align 8          ; 2 uses
  %i.arw = getelementptr i8, ptr %i.arv, i64 8
  store ptr %i.arw, ptr %i.aru, align 8
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw
  %i.arx = phi ptr [ %i.ars, %bb.lw ], [ %i.arv, %bb.lx ]
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !3
  store i32 %i.ary, ptr %i.i, align 4, !tbaa !3
  call void @_TIFFmemcpy(ptr noundef nonnull %i.aly, ptr noundef nonnull %i.i, i64 noundef %i.alx) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br label %.thread756

bb.lz:                                            ; preds = %bb.la, %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.arz = load i32, ptr %2, align 8              ; 3 uses
  %i.asa = icmp ult i32 %i.arz, 41
  br i1 %i.asa, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  %i.asb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.asc = load ptr, ptr %i.asb, align 8
  %i.asd = zext nneg i32 %i.arz to i64
  %i.ase = getelementptr i8, ptr %i.asc, i64 %i.asd
  %i.asf = add nuw nsw i32 %i.arz, 8
  store i32 %i.asf, ptr %2, align 8
  br label %bb.mc

bb.mb:                                            ; preds = %bb.lz
  %i.asg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ash = load ptr, ptr %i.asg, align 8          ; 2 uses
  %i.asi = getelementptr i8, ptr %i.ash, i64 8
  store ptr %i.asi, ptr %i.asg, align 8
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.ma
  %i.asj = phi ptr [ %i.ase, %bb.ma ], [ %i.ash, %bb.mb ]
  %i.ask = load i64, ptr %i.asj, align 8, !tbaa !113
  store i64 %i.ask, ptr %i.j, align 8, !tbaa !113
  call void @_TIFFmemcpy(ptr noundef nonnull %i.aly, ptr noundef nonnull %i.j, i64 noundef %i.alx) #10
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.asm = load i32, ptr %i.asl, align 8, !tbaa !28
  %i.asn = and i32 %i.asm, 524288
  %i.aso = icmp ne i32 %i.asn, 0
  %i.asp = load i64, ptr %i.j, align 8            ; 2 uses
  %i.asq = icmp ult i64 %i.asp, 4294967296
  %or.cond25.not = select i1 %i.aso, i1 true, i1 %i.asq
  br i1 %or.cond25.not, label %.thread736, label %bb.md

.thread736:                                       ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %.thread756

bb.md:                                            ; preds = %bb.mc
  %i.asr = load ptr, ptr %0, align 8, !tbaa !9
  %i.ass = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ast = load ptr, ptr %i.ass, align 8, !tbaa !31
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFVSetField.module, ptr noundef nonnull @.str.28, ptr noundef %i.asr, i64 noundef %i.asp, ptr noundef %i.ast, i32 noundef %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %bb.nd

bb.me:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.asu = load i32, ptr %2, align 8              ; 3 uses
  %i.asv = icmp ult i32 %i.asu, 41
  br i1 %i.asv, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.asw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.asx = load ptr, ptr %i.asw, align 8
  %i.asy = zext nneg i32 %i.asu to i64
  %i.asz = getelementptr i8, ptr %i.asx, i64 %i.asy
  %i.ata = add nuw nsw i32 %i.asu, 8
  store i32 %i.ata, ptr %2, align 8
  br label %bb.mh

bb.mg:                                            ; preds = %bb.me
  %i.atb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.atc = load ptr, ptr %i.atb, align 8          ; 2 uses
  %i.atd = getelementptr i8, ptr %i.atc, i64 8
  store ptr %i.atd, ptr %i.atb, align 8
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.ate = phi ptr [ %i.asz, %bb.mf ], [ %i.atc, %bb.mg ]
  %i.atf = load i64, ptr %i.ate, align 8, !tbaa !113
  store i64 %i.atf, ptr %i.k, align 8, !tbaa !113
  call void @_TIFFmemcpy(ptr noundef nonnull %i.aly, ptr noundef nonnull %i.k, i64 noundef %i.alx) #10
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ath = load i32, ptr %i.atg, align 8, !tbaa !28
  %i.ati = and i32 %i.ath, 524288
  %.not703 = icmp eq i32 %i.ati, 0
  br i1 %.not703, label %bb.mi, label %.thread739

bb.mi:                                            ; preds = %bb.mh
  %i.atj = load i64, ptr %i.k, align 8, !tbaa !113 ; 2 uses
  %i.atk = add i64 %i.atj, -2147483648
  %or.cond27 = icmp ult i64 %i.atk, -4294967296
  br i1 %or.cond27, label %bb.mj, label %.thread739

.thread739:                                       ; preds = %bb.mi, %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  br label %.thread756

bb.mj:                                            ; preds = %bb.mi
  %i.atl = load ptr, ptr %0, align 8, !tbaa !9
  %i.atm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !31
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFVSetField.module, ptr noundef nonnull @.str.29, ptr noundef %i.atl, i64 noundef %i.atj, ptr noundef %i.atn, i32 noundef %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  br label %bb.nd

bb.mk:                                            ; preds = %bb.la, %bb.la
  %i.ato = icmp eq i32 %i.aia, 8
  %i.atp = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  br i1 %i.ato, label %bb.ml, label %bb.mp

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.atq = load i32, ptr %i.atp, align 4          ; 3 uses
  %i.atr = icmp ult i32 %i.atq, 161
  br i1 %i.atr, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %i.ats = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.att = load ptr, ptr %i.ats, align 8
  %i.atu = zext nneg i32 %i.atq to i64
  %i.atv = getelementptr i8, ptr %i.att, i64 %i.atu
  %i.atw = add nuw nsw i32 %i.atq, 16
  store i32 %i.atw, ptr %i.atp, align 4
  br label %bb.mo

bb.mn:                                            ; preds = %bb.ml
  %i.atx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aty = load ptr, ptr %i.atx, align 8          ; 2 uses
  %i.atz = getelementptr i8, ptr %i.aty, i64 8
  store ptr %i.atz, ptr %i.atx, align 8
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %i.aua = phi ptr [ %i.atv, %bb.mm ], [ %i.aty, %bb.mn ]
  %i.aub = load double, ptr %i.aua, align 8, !tbaa !94
  store double %i.aub, ptr %i.l, align 8, !tbaa !94
  call void @_TIFFmemcpy(ptr noundef nonnull %i.aly, ptr noundef nonnull %i.l, i64 noundef 8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  br label %.thread756

bb.mp:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.auc = load i32, ptr %i.atp, align 4          ; 3 uses
  %i.aud = icmp ult i32 %i.auc, 161
  br i1 %i.aud, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.aue = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.auf = load ptr, ptr %i.aue, align 8
  %i.aug = zext nneg i32 %i.auc to i64
  %i.auh = getelementptr i8, ptr %i.auf, i64 %i.aug
  %i.aui = add nuw nsw i32 %i.auc, 16
  store i32 %i.aui, ptr %i.atp, align 4
  br label %bb.ms

bb.mr:                                            ; preds = %bb.mp
  %i.auj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.auk = load ptr, ptr %i.auj, align 8          ; 2 uses
  %i.aul = getelementptr i8, ptr %i.auk, i64 8
  store ptr %i.aul, ptr %i.auj, align 8
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mq
  %i.aum = phi ptr [ %i.auh, %bb.mq ], [ %i.auk, %bb.mr ]
  %i.aun = load double, ptr %i.aum, align 8, !tbaa !94
  %i.auo = fptrunc double %i.aun to float
  store float %i.auo, ptr %i.m, align 4, !tbaa !115
  call void @_TIFFmemcpy(ptr noundef nonnull %i.aly, ptr noundef nonnull %i.m, i64 noundef %i.alx) #10
  %.not702 = icmp eq i32 %i.aia, 4
  br i1 %.not702, label %bb.mu, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFVSetField.module, ptr noundef nonnull @.str.30, i32 noundef %i.aia) #10
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  br label %.thread756

bb.mv:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  %i.aup = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.auq = load i32, ptr %i.aup, align 4          ; 3 uses
  %i.aur = icmp ult i32 %i.auq, 161
  br i1 %i.aur, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.aus = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aut = load ptr, ptr %i.aus, align 8
  %i.auu = zext nneg i32 %i.auq to i64
  %i.auv = getelementptr i8, ptr %i.aut, i64 %i.auu
  %i.auw = add nuw nsw i32 %i.auq, 16
  store i32 %i.auw, ptr %i.aup, align 4
  br label %bb.my

bb.mx:                                            ; preds = %bb.mv
  %i.aux = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.auy = load ptr, ptr %i.aux, align 8          ; 2 uses
  %i.auz = getelementptr i8, ptr %i.auy, i64 8
  store ptr %i.auz, ptr %i.aux, align 8
  br label %bb.my

bb.my:                                            ; preds = %bb.mx, %bb.mw
  %i.ava = phi ptr [ %i.auv, %bb.mw ], [ %i.auy, %bb.mx ]
  %i.avb = load double, ptr %i.ava, align 8, !tbaa !94
  %i.avc = tail call float @_TIFFClampDoubleToFloat(double noundef %i.avb) #10
  store float %i.avc, ptr %i.n, align 4, !tbaa !115
  call void @_TIFFmemcpy(ptr noundef nonnull %i.aly, ptr noundef nonnull %i.n, i64 noundef %i.alx) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  br label %.thread756

bb.mz:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  %i.avd = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ave = load i32, ptr %i.avd, align 4          ; 3 uses
  %i.avf = icmp ult i32 %i.ave, 161
  br i1 %i.avf, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %i.avg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.avh = load ptr, ptr %i.avg, align 8
  %i.avi = zext nneg i32 %i.ave to i64
  %i.avj = getelementptr i8, ptr %i.avh, i64 %i.avi
  %i.avk = add nuw nsw i32 %i.ave, 16
  store i32 %i.avk, ptr %i.avd, align 4
  br label %bb.nc

bb.nb:                                            ; preds = %bb.mz
  %i.avl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.avm = load ptr, ptr %i.avl, align 8          ; 2 uses
  %i.avn = getelementptr i8, ptr %i.avm, i64 8
  store ptr %i.avn, ptr %i.avl, align 8
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %bb.na
  %i.avo = phi ptr [ %i.avj, %bb.na ], [ %i.avm, %bb.nb ]
  %i.avp = load double, ptr %i.avo, align 8, !tbaa !94
  store double %i.avp, ptr %i.o, align 8, !tbaa !94
  call void @_TIFFmemcpy(ptr noundef nonnull %i.aly, ptr noundef nonnull %i.o, i64 noundef %i.alx) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  br label %.thread756

bb.nd:                                            ; preds = %bb.md, %bb.mj, %.thread734, %.thread732
  %i.avq = load i32, ptr %i.agt, align 4, !tbaa !35 ; 3 uses
  %i.avr = icmp sgt i32 %i.avq, 0
  br i1 %i.avr, label %.lr.ph805, label %.thread777

.lr.ph805:                                        ; preds = %bb.nd
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.avt = load ptr, ptr %i.avs, align 8, !tbaa !36
  %wide.trip.count841 = zext nneg i32 %i.avq to i64
  br label %bb.nq

bb.ne:                                            ; preds = %bb.la
  tail call void @_TIFFmemset(ptr noundef nonnull %i.aly, i32 noundef 0, i64 noundef %i.alx) #10
  br label %.thread752

.thread756:                                       ; preds = %_TIFFsetShortArrayExt.exit, %bb.kz, %bb.kx, %bb.ky, %bb.kw, %bb.le, %bb.li, %bb.lm, %bb.lq, %bb.lu, %bb.ly, %.thread736, %.thread739, %bb.mo, %bb.mu, %bb.my, %bb.nc, %bb.kf, %.thread727, %bb.kn, %bb.ku, %bb.kv, %bb.if, %bb.ig, %bb.ie, %bb.iu, %bb.in, %bb.io, %bb.ip, %bb.il, %bb.hu, %bb.hf, %bb.gy, %bb.gt, %bb.gl, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gd, %switch.lookup, %bb.fr, %bb.fm, %bb.ff, %bb.ex, %bb.ey, %bb.et, %bb.es, %bb.ei, %bb.eb, %bb.du, %bb.dp, %bb.dl, %bb.dh, %bb.dc, %bb.cx, %bb.cs, %bb.co, %bb.cj, %bb.cf, %bb.ca, %bb.bw, %bb.bs, %bb.br, %bb.bm, %bb.ay, %bb.at, %bb.ao, %bb.ak, %bb.iv, %bb.ag, %bb.ad, %bb.r, %bb.s, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.n, %bb.j, %bb.f
  %.9759 = phi i32 [ 1, %bb.f ], [ 1, %bb.kf ], [ 1, %bb.if ], [ 1, %bb.ig ], [ 1, %bb.ie ], [ 1, %bb.iu ], [ 1, %bb.in ], [ 1, %bb.io ], [ 1, %bb.ip ], [ 1, %bb.il ], [ 1, %bb.kw ], [ 1, %bb.hu ], [ 1, %bb.hf ], [ 1, %bb.gy ], [ 1, %bb.gt ], [ 1, %bb.gl ], [ 1, %bb.ge ], [ 1, %bb.gf ], [ 1, %bb.gg ], [ 1, %bb.gh ], [ 1, %bb.gd ], [ 1, %switch.lookup ], [ 1, %bb.fr ], [ 1, %bb.fm ], [ 1, %bb.ff ], [ 1, %bb.ex ], [ 1, %bb.ey ], [ 1, %bb.et ], [ 1, %bb.es ], [ 1, %bb.ei ], [ 1, %bb.eb ], [ 1, %bb.du ], [ 1, %bb.dp ], [ 1, %bb.dl ], [ 1, %bb.dh ], [ 1, %bb.dc ], [ 1, %bb.cx ], [ 1, %bb.cs ], [ 1, %bb.co ], [ 1, %bb.cj ], [ 1, %bb.cf ], [ 1, %bb.ca ], [ 1, %bb.bw ], [ 1, %bb.bs ], [ 1, %bb.br ], [ 1, %bb.bm ], [ 1, %bb.ay ], [ 1, %bb.at ], [ 1, %bb.ao ], [ 1, %bb.ak ], [ 1, %bb.iv ], [ %i.dg, %bb.ag ], [ 1, %bb.ad ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.y ], [ 1, %bb.x ], [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %bb.u ], [ 1, %bb.t ], [ 1, %bb.n ], [ 1, %bb.j ], [ 1, %bb.ky ], [ 1, %bb.kv ], [ 1, %bb.le ], [ 1, %bb.ku ], [ 1, %bb.kn ], [ 1, %.thread727 ], [ 1, %bb.nc ], [ 1, %bb.my ], [ 1, %bb.mu ], [ 1, %bb.mo ], [ 1, %.thread739 ], [ 1, %.thread736 ], [ 1, %bb.ly ], [ 1, %bb.lu ], [ 1, %bb.lq ], [ 1, %bb.lm ], [ 1, %bb.li ], [ 1, %bb.kx ], [ 1, %bb.kz ], [ 1, %_TIFFsetShortArrayExt.exit ]
  %i.avu = call ptr @TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #10 ; 2 uses
  %.not713 = icmp eq ptr %i.avu, null
  br i1 %.not713, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %.thread756
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 20
  %i.avw = load i16, ptr %i.avv, align 4, !tbaa !34
  %i.avx = zext i16 %i.avw to i32                 ; 2 uses
  %i.avy = and i32 %i.avx, 31
  %i.avz = shl nuw i32 1, %i.avy
  %i.awa = lshr i32 %i.avx, 5
  %i.awb = zext nneg i32 %i.awa to i64
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.awb ; 2 uses
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !3
  %i.awe = or i32 %i.avz, %i.awd
  store i32 %i.awe, ptr %i.awc, align 4, !tbaa !3
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %.thread756
  %i.awf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.awg = load i32, ptr %i.awf, align 8, !tbaa !28
  %i.awh = or i32 %i.awg, 8
  store i32 %i.awh, ptr %i.awf, align 8, !tbaa !28
  br label %.thread752

.thread752:                                       ; preds = %bb.ix, %bb.iy, %bb.gu, %bb.im, %bb.af, %bb.hz, %bb.jq, %bb.je, %.thread718, %bb.kg, %bb.ne, %bb.ng
  %.10 = phi i32 [ %.9759, %bb.ng ], [ 0, %bb.ne ], [ 0, %bb.gu ], [ 0, %bb.jq ], [ 0, %bb.kg ], [ 0, %.thread718 ], [ 0, %bb.je ], [ 0, %bb.hz ], [ 0, %bb.af ], [ 0, %bb.im ], [ 0, %bb.iy ], [ 0, %bb.ix ]
  call void @llvm.va_end.p0(ptr %2)
  br label %bb.nv

bb.nh:                                            ; preds = %bb.fv, %._crit_edge847, %bb.fz, %bb.dt, %bb.dg, %bb.bc, %bb.ax, %bb.as
  %i.awi = phi i32 [ %.pre, %._crit_edge847 ], [ %i.xe, %bb.fz ], [ %i.wn, %bb.fv ], [ %i.ph, %bb.dt ], [ %i.nn, %bb.dg ], [ 0, %bb.bc ], [ %i.fn, %bb.ax ], [ %i.ex, %bb.as ]
  %i.awj = tail call ptr @TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #10 ; 2 uses
  %i.awk = load ptr, ptr %0, align 8, !tbaa !9
  %.not692 = icmp eq ptr %i.awj, null
  br i1 %.not692, label %bb.nj, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awj, i64 24
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !31
  br label %bb.nj

bb.nj:                                            ; preds = %bb.nh, %bb.ni
  %i.awn = phi ptr [ %i.awm, %bb.ni ], [ @.str.32, %bb.nh ]
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFVSetField.module, ptr noundef nonnull @.str.31, ptr noundef %i.awk, i32 noundef %i.awi, ptr noundef %i.awn) #10
  tail call void @llvm.va_end.p0(ptr %2)
  br label %bb.nv

bb.nk:                                            ; preds = %bb.fq, %bb.fk, %bb.fd, %bb.bq
  %.0545 = phi i32 [ 0, %bb.bq ], [ %i.uk, %bb.fd ], [ %i.ve, %bb.fk ], [ 0, %bb.fq ]
  %i.awo = tail call ptr @TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #10 ; 2 uses
  %i.awp = load ptr, ptr %0, align 8, !tbaa !9
  %.not687 = icmp eq ptr %i.awo, null
  br i1 %.not687, label %bb.nm, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awo, i64 24
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !31
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nk, %bb.nl
  %i.aws = phi ptr [ %i.awr, %bb.nl ], [ @.str.32, %bb.nk ]
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @_TIFFVSetField.module, ptr noundef nonnull @.str.31, ptr noundef %i.awp, i32 noundef %.0545, ptr noundef %i.aws) #10
  tail call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.nv

bb.nn:                                            ; preds = %bb.db, %bb.cw
  %.0546 = phi double [ %i.mj, %bb.cw ], [ %i.my, %bb.db ]
  %i.awt = tail call ptr @TIFFFieldWithTag(ptr noundef %0, i32 noundef %1) #10 ; 2 uses
  %i.awu = load ptr, ptr %0, align 8, !tbaa !9
  %.not683 = icmp eq ptr %i.awt, null
  br i1 %.not683, label %bb.np, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awt, i64 24
  %i.aww = load ptr, ptr %i.awv, align 8, !tbaa !31
  br label %bb.np

end_hunk_1
