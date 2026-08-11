inline.NumInlined: 187
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@decode_chunks:bb.a
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %bb.ec
  %indvars.iv.i373 = phi i64 [ 0, %bb.ec ], [ %indvars.iv.next.i374, %bb.ed ] ; 2 uses
  %i.agi = phi i32 [ 4, %bb.ec ], [ %i.ahe, %bb.ed ] ; 4 uses
  %i.agj = lshr i32 %i.agi, 3
  %i.agk = zext nneg i32 %i.agj to i64
  %i.agl = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.agk
  %i.agm = load i32, ptr %i.agl, align 1, !tbaa !60
  %i.agn = call i32 @llvm.bswap.i32(i32 %i.agm)
  %i.ago = and i32 %i.agi, 6
  %i.agp = shl i32 %i.agn, %i.ago
  %i.agq = lshr i32 %i.agp, 16
  %i.agr = trunc nuw i32 %i.agq to i16
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i373 ; 2 uses
  store i16 %i.agr, ptr %i.ags, align 4, !tbaa !80
  %i.agt = add i32 %i.agi, 17                     ; 2 uses
  %i.agu = lshr i32 %i.agt, 3
  %i.agv = zext nneg i32 %i.agu to i64
  %i.agw = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.agv
  %i.agx = load i32, ptr %i.agw, align 1, !tbaa !60
  %i.agy = call i32 @llvm.bswap.i32(i32 %i.agx)
  %i.agz = and i32 %i.agt, 7
  %i.aha = shl i32 %i.agy, %i.agz
  %i.ahb = lshr i32 %i.aha, 16
  %i.ahc = trunc nuw i32 %i.ahb to i16
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ags, i64 2
  store i16 %i.ahc, ptr %i.ahd, align 2, !tbaa !80
  %i.ahe = add i32 %i.agi, 34
  %indvars.iv.next.i374 = add nuw nsw i64 %indvars.iv.i373, 1 ; 2 uses
  %exitcond.not.i375 = icmp eq i64 %indvars.iv.next.i374, %.0.i372
  br i1 %exitcond.not.i375, label %bb.ee, label %bb.ed, !llvm.loop !176

bb.ee:                                            ; preds = %bb.ed
  %i.ahf = load ptr, ptr %i.y, align 8, !tbaa !72 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 524
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !140
  %i.ahi = and i32 %i.ahh, 1
  %.not32.i = icmp eq i32 %i.ahi, 0
  br i1 %.not32.i, label %slice_end.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ahj = load i16, ptr %i.an, align 4, !tbaa !80
  %i.ahk = sext i16 %i.ahj to i32
  %i.ahl = load i16, ptr %i.ao, align 2, !tbaa !80
  %i.ahm = sext i16 %i.ahl to i32
  %i.ahn = load i16, ptr %i.ap, align 8, !tbaa !80
  %i.aho = sext i16 %i.ahn to i32
  %i.ahp = load i16, ptr %i.aq, align 2, !tbaa !80
  %i.ahq = sext i16 %i.ahp to i32
  %i.ahr = load i16, ptr %i.ar, align 4, !tbaa !80
  %i.ahs = sext i16 %i.ahr to i32
  %i.aht = load i16, ptr %i.as, align 2, !tbaa !80
  %i.ahu = sext i16 %i.aht to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ahf, i32 noundef 48, ptr noundef nonnull @.str.51, i32 noundef %i.ahk, i32 noundef %i.ahm, i32 noundef %i.aho, i32 noundef %i.ahq, i32 noundef %i.ahs, i32 noundef %i.ahu) #11
  br label %slice_end.exit

bb.eg:                                            ; preds = %bb.da
  %i.ahv = icmp eq i32 %.0242504, 256
  br i1 %i.ahv, label %bb.eh, label %bb.ep

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.r, align 4, !tbaa !66
  store i32 0, ptr %i.q, align 16, !tbaa !66
  %i.ahw = load i32, ptr %i.fm, align 1, !tbaa !60
  %i.ahx = and i32 %i.ahw, 15                     ; 2 uses
  store i32 %i.ahx, ptr %i.s, align 8, !tbaa !66
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 2 uses
  %i.ahz = load i32, ptr %i.ahy, align 1, !tbaa !60
  %i.aia = lshr i32 %i.ahz, 4
  %i.aib = and i32 %i.aia, 15                     ; 2 uses
  store i32 %i.aib, ptr %i.t, align 4, !tbaa !66
  %i.aic = load i32, ptr %i.ahy, align 1, !tbaa !60
  %i.aid = and i32 %i.aic, 15                     ; 2 uses
  store i32 %i.aid, ptr %i.u, align 16, !tbaa !66
  %i.aie = getelementptr inbounds nuw i8, ptr %i.fm, i64 2 ; 3 uses
  %i.aif = load i32, ptr %i.aie, align 1, !tbaa !60
  %i.aig = lshr i32 %i.aif, 4
  %i.aih = and i32 %i.aig, 15
  %i.aii = call i32 @llvm.umax.i32(i32 %i.ahx, i32 1)
  store i32 %i.aii, ptr %i.s, align 8, !tbaa !66
  %i.aij = call i32 @llvm.umax.i32(i32 %i.aib, i32 1)
  store i32 %i.aij, ptr %i.t, align 4, !tbaa !66
  %i.aik = call i32 @llvm.umax.i32(i32 %i.aid, i32 1)
  store i32 %i.aik, ptr %i.u, align 16, !tbaa !66
  %i.ail = call i32 @llvm.umax.i32(i32 %i.aih, i32 1)
  store i32 %i.ail, ptr %i.v, align 4, !tbaa !66
  %i.aim = load i32, ptr %i.w, align 16, !tbaa !135
  %.not.i376 = icmp eq i32 %i.aim, 0
  br i1 %.not.i376, label %bb.ei, label %mpeg_decode_picture_coding_extension.exit.thread

bb.ei:                                            ; preds = %bb.eh
  %i.ain = load i32, ptr %i.x, align 16, !tbaa !67
  %.not56.i378 = icmp eq i32 %i.ain, 0
  br i1 %.not56.i378, label %mpeg_decode_picture_coding_extension.exit.thread, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.aio = load ptr, ptr %i.y, align 8, !tbaa !72
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aio, i32 noundef 16, ptr noundef nonnull @.str.30) #11
  %i.aip = load ptr, ptr %i.y, align 8, !tbaa !72 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 528
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !98
  %i.ais = and i32 %i.air, 8
  %.not57.i379 = icmp eq i32 %i.ais, 0
  br i1 %.not57.i379, label %bb.ek, label %.thread

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.aip, i32 noundef 24, ptr noundef nonnull @.str.52) #11
  %i.ait = load i32, ptr %i.u, align 16, !tbaa !66
  %i.aiu = icmp eq i32 %i.ait, 15
  br i1 %i.aiu, label %bb.el, label %.sink.split.i

bb.el:                                            ; preds = %bb.ek
  %i.aiv = load i32, ptr %i.v, align 4, !tbaa !66
  %i.aiw = icmp eq i32 %i.aiv, 15
  br i1 %i.aiw, label %bb.em, label %.sink.split.i

bb.em:                                            ; preds = %bb.el
  %i.aix = load i32, ptr %i.s, align 8, !tbaa !66
  %i.aiy = icmp eq i32 %i.aix, 15
  br i1 %i.aiy, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.aiz = load i32, ptr %i.t, align 4, !tbaa !66
  %i.aja = icmp eq i32 %i.aiz, 15
  br i1 %i.aja, label %.sink.split.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.eo, %bb.en, %bb.el, %bb.ek
  %.sink.i380 = phi i32 [ 1, %bb.en ], [ 2, %bb.eo ], [ 3, %bb.el ], [ 3, %bb.ek ]
  store i32 %.sink.i380, ptr %i.w, align 16, !tbaa !135
  br label %mpeg_decode_picture_coding_extension.exit.thread

mpeg_decode_picture_coding_extension.exit.thread: ; preds = %bb.eh, %bb.ei, %.sink.split.i
  %i.ajb = load i32, ptr %i.aie, align 1, !tbaa !60
  %i.ajc = lshr i32 %i.ajb, 2
  %i.ajd = and i32 %i.ajc, 3
  store i32 %i.ajd, ptr %i.z, align 4, !tbaa !112
  %i.aje = load i32, ptr %i.aie, align 1, !tbaa !60
  %i.ajf = and i32 %i.aje, 3
  store i32 %i.ajf, ptr %i.aa, align 8, !tbaa !84
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.fm, i64 3 ; 8 uses
  %i.ajh = load i8, ptr %i.ajg, align 1, !tbaa !60
  %i.aji = lshr i8 %i.ajh, 7
  %i.ajj = zext nneg i8 %i.aji to i32
  store i32 %i.ajj, ptr %i.ab, align 4, !tbaa !175
  %i.ajk = load i8, ptr %i.ajg, align 1, !tbaa !60
  %i.ajl = lshr i8 %i.ajk, 6
  %i.ajm = and i8 %i.ajl, 1
  %i.ajn = zext nneg i8 %i.ajm to i32
  store i32 %i.ajn, ptr %i.ac, align 16, !tbaa !86
  %i.ajo = load i8, ptr %i.ajg, align 1, !tbaa !60
  %i.ajp = lshr i8 %i.ajo, 5
  %i.ajq = and i8 %i.ajp, 1
  %i.ajr = zext nneg i8 %i.ajq to i32
  store i32 %i.ajr, ptr %i.ad, align 8, !tbaa !177
  %i.ajs = load i8, ptr %i.ajg, align 1, !tbaa !60
  %i.ajt = lshr i8 %i.ajs, 4
  %i.aju = and i8 %i.ajt, 1
  %i.ajv = zext nneg i8 %i.aju to i32
  store i32 %i.ajv, ptr %i.ae, align 4, !tbaa !113
  %i.ajw = load i8, ptr %i.ajg, align 1, !tbaa !60
  %i.ajx = lshr i8 %i.ajw, 3
  %i.ajy = and i8 %i.ajx, 1
  %i.ajz = zext nneg i8 %i.ajy to i32
  store i32 %i.ajz, ptr %i.af, align 16, !tbaa !114
  %i.aka = load i8, ptr %i.ajg, align 1, !tbaa !60
  %i.akb = lshr i8 %i.aka, 2
  %i.akc = and i8 %i.akb, 1                       ; 2 uses
  %i.akd = zext nneg i8 %i.akc to i32
  store i32 %i.akd, ptr %i.ag, align 4, !tbaa !115
  %i.ake = load i8, ptr %i.ajg, align 1, !tbaa !60
  %i.akf = lshr i8 %i.ake, 1
  %i.akg = and i8 %i.akf, 1
  %i.akh = zext nneg i8 %i.akg to i32
  store i32 %i.akh, ptr %i.ah, align 8, !tbaa !174
  %i.aki = load i8, ptr %i.ajg, align 1, !tbaa !60
  %i.akj = and i8 %i.aki, 1
  %i.akk = zext nneg i8 %i.akj to i32
  store i32 %i.akk, ptr %i.ai, align 4, !tbaa !178
  %i.akl = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !60
  %i.akn = lshr i8 %i.akm, 7
  %i.ako = zext nneg i8 %i.akn to i32
  store i32 %i.ako, ptr %i.aj, align 4, !tbaa !83
  %.not58.i = icmp eq i8 %i.akc, 0
  %i.akp = select i1 %.not58.i, ptr @ff_zigzag_direct, ptr @ff_alternate_vertical_scan
  call void @ff_permute_scantable(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.akp, ptr noundef nonnull %i.al) #11
  br label %slice_end.exit

bb.ep:                                            ; preds = %bb.eg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %.0242504) #11
  %i.akq = load i32, ptr %i.n, align 8, !tbaa !98
  %i.akr = and i32 %i.akq, 8
  %.not276 = icmp eq i32 %i.akr, 0
  br i1 %.not276, label %slice_end.exit, label %.thread

bb.eq:                                            ; preds = %bb.t
  %5 = and i64 %i.fo, 4294967295
  %i.aks = load ptr, ptr %i.d, align 8, !tbaa !9  ; 16 uses
  %i.akt = icmp sgt i32 %i.fp, 29
  br i1 %i.akt, label %.preheader.i395, label %.loopexit.i

.preheader.i395:                                  ; preds = %bb.eq
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aks, i64 6056 ; 20 uses
  %i.akv = load i64, ptr %i.fm, align 1
  %i.akw = xor i64 %i.akv, 6005626275690796032
  %i.akx = getelementptr i8, ptr %i.fm, i64 8
  %i.aky = load i8, ptr %i.akx, align 1
  %i.akz = zext i8 %i.aky to i64
  %i.ala = or i64 %i.akw, %i.akz
  %i.alb = icmp ne i64 %i.ala, 0
  %i.alc = zext i1 %i.alb to i32
  %.not58.i396 = icmp eq i32 %i.alc, 0
  br i1 %.not58.i396, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.preheader.i395
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %.preheader.i395
  %i.ald = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 2 uses
  %i.ale = load i64, ptr %i.ald, align 1
  %i.alf = xor i64 %i.ale, 6005626275690796032
  %i.alg = getelementptr i8, ptr %i.ald, i64 8
  %i.alh = load i8, ptr %i.alg, align 1
  %i.ali = zext i8 %i.alh to i64
  %i.alj = or i64 %i.alf, %i.ali
  %i.alk = icmp ne i64 %i.alj, 0
  %i.all = zext i1 %i.alk to i32
  %.not58.1.i = icmp eq i32 %i.all, 0
  br i1 %.not58.1.i, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.alm = getelementptr inbounds nuw i8, ptr %i.fm, i64 2 ; 2 uses
  %i.aln = load i64, ptr %i.alm, align 1
  %i.alo = xor i64 %i.aln, 6005626275690796032
  %i.alp = getelementptr i8, ptr %i.alm, i64 8
  %i.alq = load i8, ptr %i.alp, align 1
  %i.alr = zext i8 %i.alq to i64
  %i.als = or i64 %i.alo, %i.alr
  %i.alt = icmp ne i64 %i.als, 0
  %i.alu = zext i1 %i.alt to i32
  %.not58.2.i = icmp eq i32 %i.alu, 0
  br i1 %.not58.2.i, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.alv = getelementptr inbounds nuw i8, ptr %i.fm, i64 3 ; 2 uses
  %i.alw = load i64, ptr %i.alv, align 1
  %i.alx = xor i64 %i.alw, 6005626275690796032
  %i.aly = getelementptr i8, ptr %i.alv, i64 8
  %i.alz = load i8, ptr %i.aly, align 1
  %i.ama = zext i8 %i.alz to i64
  %i.amb = or i64 %i.alx, %i.ama
  %i.amc = icmp ne i64 %i.amb, 0
  %i.amd = zext i1 %i.amc to i32
  %.not58.3.i = icmp eq i32 %i.amd, 0
  br i1 %.not58.3.i, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.ame = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 2 uses
  %i.amf = load i64, ptr %i.ame, align 1
  %i.amg = xor i64 %i.amf, 6005626275690796032
  %i.amh = getelementptr i8, ptr %i.ame, i64 8
  %i.ami = load i8, ptr %i.amh, align 1
  %i.amj = zext i8 %i.ami to i64
  %i.amk = or i64 %i.amg, %i.amj
  %i.aml = icmp ne i64 %i.amk, 0
  %i.amm = zext i1 %i.aml to i32
  %.not58.4.i = icmp eq i32 %i.amm, 0
  br i1 %.not58.4.i, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.amn = getelementptr inbounds nuw i8, ptr %i.fm, i64 5 ; 2 uses
  %i.amo = load i64, ptr %i.amn, align 1
  %i.amp = xor i64 %i.amo, 6005626275690796032
  %i.amq = getelementptr i8, ptr %i.amn, i64 8
  %i.amr = load i8, ptr %i.amq, align 1
  %i.ams = zext i8 %i.amr to i64
  %i.amt = or i64 %i.amp, %i.ams
  %i.amu = icmp ne i64 %i.amt, 0
  %i.amv = zext i1 %i.amu to i32
  %.not58.5.i = icmp eq i32 %i.amv, 0
  br i1 %.not58.5.i, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.amw = getelementptr inbounds nuw i8, ptr %i.fm, i64 6 ; 2 uses
  %i.amx = load i64, ptr %i.amw, align 1
  %i.amy = xor i64 %i.amx, 6005626275690796032
  %i.amz = getelementptr i8, ptr %i.amw, i64 8
  %i.ana = load i8, ptr %i.amz, align 1
  %i.anb = zext i8 %i.ana to i64
  %i.anc = or i64 %i.amy, %i.anb
  %i.and = icmp ne i64 %i.anc, 0
  %i.ane = zext i1 %i.and to i32
  %.not58.6.i = icmp eq i32 %i.ane, 0
  br i1 %.not58.6.i, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.anf = getelementptr inbounds nuw i8, ptr %i.fm, i64 7 ; 2 uses
  %i.ang = load i64, ptr %i.anf, align 1
  %i.anh = xor i64 %i.ang, 6005626275690796032
  %i.ani = getelementptr i8, ptr %i.anf, i64 8
  %i.anj = load i8, ptr %i.ani, align 1
  %i.ank = zext i8 %i.anj to i64
  %i.anl = or i64 %i.anh, %i.ank
  %i.anm = icmp ne i64 %i.anl, 0
  %i.ann = zext i1 %i.anm to i32
  %.not58.7.i = icmp eq i32 %i.ann, 0
  br i1 %.not58.7.i, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.ano = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.anp = load i64, ptr %i.ano, align 1
  %i.anq = xor i64 %i.anp, 6005626275690796032
  %i.anr = getelementptr i8, ptr %i.ano, i64 8
  %i.ans = load i8, ptr %i.anr, align 1
  %i.ant = zext i8 %i.ans to i64
  %i.anu = or i64 %i.anq, %i.ant
  %i.anv = icmp ne i64 %i.anu, 0
  %i.anw = zext i1 %i.anv to i32
  %.not58.8.i = icmp eq i32 %i.anw, 0
  br i1 %.not58.8.i, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.anx = getelementptr inbounds nuw i8, ptr %i.fm, i64 9 ; 2 uses
  %i.any = load i64, ptr %i.anx, align 1
  %i.anz = xor i64 %i.any, 6005626275690796032
  %i.aoa = getelementptr i8, ptr %i.anx, i64 8
  %i.aob = load i8, ptr %i.aoa, align 1
  %i.aoc = zext i8 %i.aob to i64
  %i.aod = or i64 %i.anz, %i.aoc
  %i.aoe = icmp ne i64 %i.aod, 0
  %i.aof = zext i1 %i.aoe to i32
  %.not58.9.i = icmp eq i32 %i.aof, 0
  br i1 %.not58.9.i, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.aog = getelementptr inbounds nuw i8, ptr %i.fm, i64 10 ; 2 uses
  %i.aoh = load i64, ptr %i.aog, align 1
  %i.aoi = xor i64 %i.aoh, 6005626275690796032
  %i.aoj = getelementptr i8, ptr %i.aog, i64 8
  %i.aok = load i8, ptr %i.aoj, align 1
  %i.aol = zext i8 %i.aok to i64
  %i.aom = or i64 %i.aoi, %i.aol
  %i.aon = icmp ne i64 %i.aom, 0
  %i.aoo = zext i1 %i.aon to i32
  %.not58.10.i = icmp eq i32 %i.aoo, 0
  br i1 %.not58.10.i, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 1, ptr %i.aku, align 8, !tbaa !153
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.aop = getelementptr inbounds nuw i8, ptr %i.fm, i64 11 ; 2 uses
  %i.aoq = load i64, ptr %i.aop, align 1
  %i.aor = xor i64 %i.aoq, 6005626275690796032
  %i.aos = getelementptr i8, ptr %i.aop, i64 8
  %i.aot = load i8, ptr %i.aos, align 1
  %i.aou = zext i8 %i.aot to i64
  %i.aov = or i64 %i.aor, %i.aou
  %i.aow = icmp ne i64 %i.aov, 0
end_hunk_0
