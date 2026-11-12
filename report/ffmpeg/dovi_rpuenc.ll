Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dovi_rpuenc?download=true
inline.NumInlined: 130
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ff_dovi_rpu_generate:bb.a
  %or.cond.i594.2 = select i1 %.not.i592.2, i1 true, i1 %i.cdq
  br i1 %or.cond.i594.2, label %av_q2den.exit599.2, label %bb.mf

bb.mf:                                            ; preds = %put_bits32.exit.1
  %i.cdr = tail call i64 @av_mul_q(i64 %i.cdp, i64 %.sroa.0.0.insert.insert.i.i) #15 ; 2 uses
  %.sroa.03.0.extract.trunc6.i595.2 = trunc i64 %i.cdr to i32
  %.sroa.5.0.extract.shift7.i596.2 = lshr i64 %i.cdr, 32
  %.sroa.5.0.extract.trunc8.i597.2 = trunc nuw i64 %.sroa.5.0.extract.shift7.i596.2 to i32 ; 2 uses
  %i.cds = ashr i32 %.sroa.5.0.extract.trunc8.i597.2, 1
  %i.cdt = add nsw i32 %i.cds, %.sroa.03.0.extract.trunc6.i595.2
  %i.cdu = sdiv i32 %i.cdt, %.sroa.5.0.extract.trunc8.i597.2
  br label %av_q2den.exit599.2

av_q2den.exit599.2:                               ; preds = %bb.mf, %put_bits32.exit.1
  %.0.i598.2 = phi i32 [ %i.cdu, %bb.mf ], [ %.sroa.03.0.extract.trunc.i590.2, %put_bits32.exit.1 ] ; 2 uses
  %i.cdv = load ptr, ptr %i.aos, align 8, !tbaa !35
  %i.cdw = ptrtoint ptr %i.cdv to i64
  %i.cdx = ptrtoint ptr %i.cdn to i64
  %i.cdy = sub i64 %i.cdw, %i.cdx
  %i.cdz = icmp ugt i64 %i.cdy, 3
  br i1 %i.cdz, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %av_q2den.exit599.2
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %put_bits32.exit.2

bb.mh:                                            ; preds = %av_q2den.exit599.2
  %i.cea = zext i32 %i.ccx to i64
  %i.ceb = zext nneg i32 %i.cbt to i64
  %i.cec = shl i64 %i.cea, %i.ceb
  %i.ced = trunc i64 %i.cec to i32
  %i.cee = sub nsw i32 32, %i.cbt
  %i.cef = lshr i32 %.0.i598.2, %i.cee
  %i.ceg = or i32 %i.cef, %i.ced
  %i.ceh = tail call i32 @llvm.bswap.i32(i32 %i.ceg)
  store i32 %i.ceh, ptr %i.cdn, align 1, !tbaa !28
  %i.cei = load ptr, ptr %i.aot, align 8, !tbaa !36
  %i.cej = getelementptr inbounds nuw i8, ptr %i.cei, i64 4 ; 2 uses
  store ptr %i.cej, ptr %i.aot, align 8, !tbaa !36
  br label %put_bits32.exit.2

put_bits32.exit.2:                                ; preds = %bb.mh, %bb.mg
  %i.cek = phi ptr [ %i.cej, %bb.mh ], [ %i.cdn, %bb.mg ]
  %i.cel = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  br label %bb.mj

bb.mi:                                            ; preds = %put_sbits.exit614
  %i.cem = getelementptr inbounds nuw i8, ptr %i.k, i64 172
  %i.cen = load i16, ptr %i.cem, align 4, !tbaa !161
  %i.ceo = zext i16 %i.cen to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 16, i32 noundef %i.ceo)
  %i.cep = getelementptr inbounds nuw i8, ptr %i.k, i64 174
  %i.ceq = load i16, ptr %i.cep, align 2, !tbaa !162
  %i.cer = zext i16 %i.ceq to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 16, i32 noundef %i.cer)
  %i.ces = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.cet = load i16, ptr %i.ces, align 4, !tbaa !163
  %i.ceu = zext i16 %i.cet to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 16, i32 noundef %i.ceu)
  %i.cev = getelementptr inbounds nuw i8, ptr %i.k, i64 180
  %i.cew = load i32, ptr %i.cev, align 4, !tbaa !164
  call fastcc void @put_bits32(ptr noundef %5, i32 noundef %i.cew)
  %i.cex = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.cey = load i8, ptr %i.cex, align 4, !tbaa !165
  %i.cez = zext i8 %i.cey to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 5, i32 noundef %i.cez)
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.k, i64 185
  %i.cfb = load i8, ptr %i.cfa, align 1, !tbaa !166
  %i.cfc = zext i8 %i.cfb to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 2, i32 noundef %i.cfc)
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.k, i64 186
  %i.cfe = load i8, ptr %i.cfd, align 2, !tbaa !167
  %i.cff = zext i8 %i.cfe to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 2, i32 noundef %i.cff)
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.k, i64 187
  %i.cfh = load i8, ptr %i.cfg, align 1, !tbaa !168
  %i.cfi = zext i8 %i.cfh to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 2, i32 noundef %i.cfi)
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.k, i64 188
  %i.cfk = load i16, ptr %i.cfj, align 4, !tbaa !169
  %i.cfl = zext i16 %i.cfk to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 12, i32 noundef %i.cfl)
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.k, i64 190
  %i.cfn = load i16, ptr %i.cfm, align 2, !tbaa !170
  %i.cfo = zext i16 %i.cfn to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 12, i32 noundef %i.cfo)
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.cfq = load i16, ptr %i.cfp, align 4, !tbaa !171
  %i.cfr = zext i16 %i.cfq to i32
  call fastcc void @put_bits(ptr noundef %5, i32 noundef 10, i32 noundef %i.cfr)
  br label %bb.mp

bb.mj:                                            ; preds = %put_bits32.exit.2, %put_sbits.exit614
  %i.cfs = phi ptr [ %i.cek, %put_bits32.exit.2 ], [ %i.cgs, %put_sbits.exit614 ] ; 4 uses
  %i.cft = phi i32 [ %i.cbt, %put_bits32.exit.2 ], [ %i.cgt, %put_sbits.exit614 ] ; 4 uses
  %i.cfu = phi i32 [ %.0.i598.2, %put_bits32.exit.2 ], [ %.026.i.i.i612, %put_sbits.exit614 ] ; 2 uses
  %indvars.iv950 = phi i64 [ 0, %put_bits32.exit.2 ], [ %indvars.iv.next951, %put_sbits.exit614 ] ; 2 uses
  %i.cfv = getelementptr inbounds nuw [8 x i8], ptr %i.cel, i64 %indvars.iv950
  %i.cfw = load i64, ptr %i.cfv, align 4          ; 3 uses
  %.sroa.03.0.extract.trunc.i600 = trunc i64 %i.cfw to i32
  %i.cfx = and i64 %i.cfw, -70373039144960
  %or.cond.i604 = icmp eq i64 %i.cfx, 0
  br i1 %or.cond.i604, label %av_q2den.exit609, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.cfy = tail call i64 @av_mul_q(i64 %i.cfw, i64 4294983680) #15 ; 2 uses
  %.sroa.03.0.extract.trunc6.i605 = trunc i64 %i.cfy to i32
  %.sroa.5.0.extract.shift7.i606 = lshr i64 %i.cfy, 32
  %.sroa.5.0.extract.trunc8.i607 = trunc nuw i64 %.sroa.5.0.extract.shift7.i606 to i32 ; 2 uses
  %i.cfz = ashr i32 %.sroa.5.0.extract.trunc8.i607, 1
  %i.cga = add nsw i32 %i.cfz, %.sroa.03.0.extract.trunc6.i605
  %i.cgb = sdiv i32 %i.cga, %.sroa.5.0.extract.trunc8.i607
  br label %av_q2den.exit609

av_q2den.exit609:                                 ; preds = %bb.mj, %bb.mk
  %.0.i608 = phi i32 [ %i.cgb, %bb.mk ], [ %.sroa.03.0.extract.trunc.i600, %bb.mj ]
  %i.cgc = and i32 %.0.i608, 65535                ; 4 uses
  %i.cgd = icmp sgt i32 %i.cft, 16
  br i1 %i.cgd, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %av_q2den.exit609
  %i.cge = shl i32 %i.cfu, 16
  %i.cgf = or disjoint i32 %i.cge, %i.cgc
  br label %put_sbits.exit614

bb.mm:                                            ; preds = %av_q2den.exit609
  %i.cgg = load ptr, ptr %i.aos, align 8, !tbaa !35
  %i.cgh = ptrtoint ptr %i.cgg to i64
  %i.cgi = ptrtoint ptr %i.cfs to i64
  %i.cgj = sub i64 %i.cgh, %i.cgi
  %i.cgk = icmp ugt i64 %i.cgj, 3
  br i1 %i.cgk, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.cgl = shl i32 %i.cfu, %i.cft
  %i.cgm = sub nsw i32 16, %i.cft
  %i.cgn = lshr i32 %i.cgc, %i.cgm
  %i.cgo = or i32 %i.cgn, %i.cgl
  %i.cgp = tail call i32 @llvm.bswap.i32(i32 %i.cgo)
  store i32 %i.cgp, ptr %i.cfs, align 1, !tbaa !28
  %i.cgq = load ptr, ptr %i.aot, align 8, !tbaa !36
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgq, i64 4 ; 2 uses
  store ptr %i.cgr, ptr %i.aot, align 8, !tbaa !36
  br label %put_sbits.exit614

bb.mo:                                            ; preds = %bb.mm
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %put_sbits.exit614

put_sbits.exit614:                                ; preds = %bb.mn, %bb.mo, %bb.ml
  %.sink1254 = phi i32 [ -16, %bb.ml ], [ 16, %bb.mo ], [ 16, %bb.mn ]
  %i.cgs = phi ptr [ %i.cfs, %bb.ml ], [ %i.cfs, %bb.mo ], [ %i.cgr, %bb.mn ]
  %.026.i.i.i612 = phi i32 [ %i.cgf, %bb.ml ], [ %i.cgc, %bb.mo ], [ %i.cgc, %bb.mn ] ; 2 uses
  %i.cgt = add nsw i32 %i.cft, %.sink1254         ; 2 uses
  store i32 %.026.i.i.i612, ptr %5, align 8, !tbaa !38
  store i32 %i.cgt, ptr %i.aou, align 4, !tbaa !37
  %indvars.iv.next951 = add nuw nsw i64 %indvars.iv950, 1 ; 2 uses
  %exitcond953.not = icmp eq i64 %indvars.iv.next951, 9
  br i1 %exitcond953.not, label %bb.mi, label %bb.mj, !llvm.loop !106

bb.mp:                                            ; preds = %bb.mi, %bb.ls
  %i.cgu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cgv = load ptr, ptr %i.cgu, align 8, !tbaa !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.cgv, ptr noundef nonnull align 4 dereferenceable(196) %i.k, i64 196, i1 false)
  %i.cgw = load ptr, ptr %i.cgu, align 8, !tbaa !133
  %i.cgx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.cgw, ptr %i.cgx, align 8, !tbaa !172
  call fastcc void @set_ue_golomb(ptr noundef %5, i32 noundef %.0454.lcssa)
  call fastcc void @align_put_bits(ptr noundef %5)
  %i.cgy = load i32, ptr %i.yt, align 8, !tbaa !29 ; 3 uses
  %i.cgz = icmp sgt i32 %i.cgy, 0
  br i1 %i.cgz, label %.lr.ph857, label %._crit_edge858

.lr.ph857:                                        ; preds = %bb.mp
  %i.cha = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.chb = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.mq

._crit_edge858:                                   ; preds = %ff_dovi_rpu_extension_is_static.exit616, %bb.mp
  %i.chc = phi i32 [ %i.cgy, %bb.mp ], [ %i.ddx, %ff_dovi_rpu_extension_is_static.exit616 ]
  %.not511 = icmp eq i32 %.0450.lcssa, 0
  br i1 %.not511, label %.loopexit805, label %bb.ro

bb.mq:                                            ; preds = %.lr.ph857, %ff_dovi_rpu_extension_is_static.exit616
  %i.chd = phi i32 [ %i.cgy, %.lr.ph857 ], [ %i.ddx, %ff_dovi_rpu_extension_is_static.exit616 ] ; 2 uses
  %indvars.iv954 = phi i64 [ 0, %.lr.ph857 ], [ %indvars.iv.next955, %ff_dovi_rpu_extension_is_static.exit616 ] ; 2 uses
  %i.che = load i64, ptr %i.cha, align 8, !tbaa !30
  %i.chf = getelementptr inbounds nuw i8, ptr %1, i64 %i.che
  %i.chg = load i64, ptr %i.chb, align 8, !tbaa !31
  %i.chh = mul i64 %i.chg, %indvars.iv954
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chf, i64 %i.chh ; 29 uses
  %.pr751 = load i8, ptr %i.chi, align 4, !tbaa !33 ; 3 uses
  br i1 %.not501, label %ff_dovi_rpu_extension_is_static.exit616.thread, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %switch.tableidx1326 = add i8 %.pr751, -1       ; 3 uses
  %i.chj = icmp ult i8 %switch.tableidx1326, 5
  %switch.shifted1329 = lshr i8 27, %switch.tableidx1326
  %switch.lobit1330 = trunc i8 %switch.shifted1329 to i1
  %or.cond1334 = select i1 %i.chj, i1 %switch.lobit1330, i1 false
  br i1 %or.cond1334, label %switch.lookup1328, label %ff_dovi_rpu_extension_is_static.exit616

ff_dovi_rpu_extension_is_static.exit616.thread:   ; preds = %bb.mq
  %switch.tableidx = add i8 %.pr751, 1            ; 3 uses
  %i.chk = icmp ult i8 %switch.tableidx, 8
  %switch.shifted = lshr i8 -19, %switch.tableidx
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond1325 = select i1 %i.chk, i1 %switch.lobit, i1 false
  br i1 %or.cond1325, label %switch.lookup, label %ff_dovi_rpu_extension_is_static.exit616

switch.lookup:                                    ; preds = %ff_dovi_rpu_extension_is_static.exit616.thread
  %6 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ff_dovi_rpu_generate, i64 %6
  br label %bb.ms

switch.lookup1328:                                ; preds = %bb.mr
  %7 = zext nneg i8 %switch.tableidx1326 to i64
  %switch.gep1331 = getelementptr inbounds nuw i8, ptr @switch.table.ff_dovi_rpu_generate.5, i64 %7
  br label %bb.ms

bb.ms:                                            ; preds = %switch.lookup1328, %switch.lookup
  %switch.load1332.sink.in = phi ptr [ %switch.gep1331, %switch.lookup1328 ], [ %switch.gep, %switch.lookup ]
  %switch.load1332.sink = load i8, ptr %switch.load1332.sink.in, align 1 ; 2 uses
  %switch.ext1333 = zext i8 %switch.load1332.sink to i32 ; 2 uses
  %i.chl = zext i8 %switch.load1332.sink to i64
  %i.chm = getelementptr inbounds nuw i8, ptr @ff_ue_golomb_len, i64 %i.chl
  %i.chn = load i8, ptr %i.chm, align 1, !tbaa !28
  %i.cho = zext i8 %i.chn to i32                  ; 5 uses
  %i.chp = add nuw nsw i32 %switch.ext1333, 1     ; 3 uses
  %i.chq = load i32, ptr %5, align 8, !tbaa !38   ; 2 uses
  %i.chr = load i32, ptr %i.aou, align 4, !tbaa !37 ; 5 uses
  %i.chs = icmp sgt i32 %i.chr, %i.cho
  br i1 %i.chs, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.cht = shl i32 %i.chq, %i.cho
  %i.chu = or i32 %i.cht, %i.chp
  %i.chv = sub nuw nsw i32 %i.chr, %i.cho
  br label %set_ue_golomb.exit719

bb.mu:                                            ; preds = %bb.ms
  %i.chw = load ptr, ptr %i.aos, align 8, !tbaa !35
  %i.chx = load ptr, ptr %i.aot, align 8, !tbaa !36 ; 2 uses
  %i.chy = ptrtoint ptr %i.chw to i64
  %i.chz = ptrtoint ptr %i.chx to i64
  %i.cia = sub i64 %i.chy, %i.chz
  %i.cib = icmp ugt i64 %i.cia, 3
  br i1 %i.cib, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  %i.cic = shl i32 %i.chq, %i.chr
  %i.cid = sub nsw i32 %i.cho, %i.chr
  %i.cie = lshr i32 %i.chp, %i.cid
  %i.cif = or i32 %i.cie, %i.cic
  %i.cig = tail call i32 @llvm.bswap.i32(i32 %i.cif)
  store i32 %i.cig, ptr %i.chx, align 1, !tbaa !28
  %i.cih = load ptr, ptr %i.aot, align 8, !tbaa !36
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 4
  store ptr %i.cii, ptr %i.aot, align 8, !tbaa !36
  br label %bb.mx

bb.mw:                                            ; preds = %bb.mu
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %reass.sub886 = sub i32 %i.chr, %i.cho
  %i.cij = add i32 %reass.sub886, 32
  %.pre987 = load i8, ptr %i.chi, align 4, !tbaa !33
  br label %set_ue_golomb.exit719

set_ue_golomb.exit719:                            ; preds = %bb.mt, %bb.mx
  %i.cik = phi i8 [ %.pr751, %bb.mt ], [ %.pre987, %bb.mx ] ; 2 uses
  %.026.i.i.i717 = phi i32 [ %i.chu, %bb.mt ], [ %i.chp, %bb.mx ] ; 2 uses
  %.0.i.i.i718 = phi i32 [ %i.chv, %bb.mt ], [ %i.cij, %bb.mx ] ; 5 uses
  %i.cil = zext i8 %i.cik to i32                  ; 3 uses
  %i.cim = icmp sgt i32 %.0.i.i.i718, 8
  br i1 %i.cim, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %set_ue_golomb.exit719
  %i.cin = shl i32 %.026.i.i.i717, 8
  %i.cio = or disjoint i32 %i.cin, %i.cil
  %i.cip = add nsw i32 %.0.i.i.i718, -8
  %.pre988 = load ptr, ptr %i.aot, align 8, !tbaa !36
  br label %put_bits.exit.i617

bb.mz:                                            ; preds = %set_ue_golomb.exit719
  %i.ciq = load ptr, ptr %i.aos, align 8, !tbaa !35
  %i.cir = load ptr, ptr %i.aot, align 8, !tbaa !36 ; 3 uses
  %i.cis = ptrtoint ptr %i.ciq to i64
  %i.cit = ptrtoint ptr %i.cir to i64
  %i.ciu = sub i64 %i.cis, %i.cit
  %i.civ = icmp ugt i64 %i.ciu, 3
  br i1 %i.civ, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %i.ciw = shl i32 %.026.i.i.i717, %.0.i.i.i718
  %i.cix = sub nsw i32 8, %.0.i.i.i718
  %i.ciy = lshr i32 %i.cil, %i.cix
  %i.ciz = or i32 %i.ciy, %i.ciw
  %i.cja = tail call i32 @llvm.bswap.i32(i32 %i.ciz)
  store i32 %i.cja, ptr %i.cir, align 1, !tbaa !28
  %i.cjb = load ptr, ptr %i.aot, align 8, !tbaa !36
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cjb, i64 4 ; 2 uses
  store ptr %i.cjc, ptr %i.aot, align 8, !tbaa !36
  br label %bb.nc

bb.nb:                                            ; preds = %bb.mz
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %bb.na
  %i.cjd = phi ptr [ %i.cir, %bb.nb ], [ %i.cjc, %bb.na ]
  %i.cje = add nsw i32 %.0.i.i.i718, 24
  %.pre.i = load i8, ptr %i.chi, align 4, !tbaa !33
  br label %put_bits.exit.i617

put_bits.exit.i617:                               ; preds = %bb.nc, %bb.my
  %i.cjf = phi ptr [ %.pre988, %bb.my ], [ %i.cjd, %bb.nc ] ; 20 uses
  %i.cjg = phi i8 [ %i.cik, %bb.my ], [ %.pre.i, %bb.nc ]
  %.026.i.i.i618 = phi i32 [ %i.cio, %bb.my ], [ %i.cil, %bb.nc ] ; 13 uses
  %.0.i.i.i619 = phi i32 [ %i.cip, %bb.my ], [ %i.cje, %bb.nc ] ; 26 uses
  %i.cjh = load ptr, ptr %i.aop, align 8, !tbaa !138
  %i.cji = ptrtoint ptr %i.cjf to i64             ; 8 uses
  %i.cjj = ptrtoint ptr %i.cjh to i64             ; 2 uses
  %i.cjk = sub i64 %i.cji, %i.cjj
  %.tr.i.i = trunc i64 %i.cjk to i32
  %i.cjl = shl i32 %.tr.i.i, 3
  switch i8 %i.cjg, label %.loopexit.i620 [
    i8 1, label %bb.nd
    i8 2, label %bb.nq
    i8 4, label %bb.ot
    i8 5, label %bb.pc
    i8 6, label %bb.pt
    i8 -1, label %bb.qk
  ]

bb.nd:                                            ; preds = %put_bits.exit.i617
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.chi, i64 4
  %i.cjn = load i16, ptr %i.cjm, align 4, !tbaa !28
  %i.cjo = zext i16 %i.cjn to i32                 ; 4 uses
  %i.cjp = icmp sgt i32 %.0.i.i.i619, 12
  br i1 %i.cjp, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.cjq = shl i32 %.026.i.i.i618, 12
  %i.cjr = or i32 %i.cjq, %i.cjo
  br label %put_bits.exit65.i

bb.nf:                                            ; preds = %bb.nd
  %i.cjs = load ptr, ptr %i.aos, align 8, !tbaa !35
  %i.cjt = ptrtoint ptr %i.cjs to i64
  %i.cju = sub i64 %i.cjt, %i.cji
  %i.cjv = icmp ugt i64 %i.cju, 3
  br i1 %i.cjv, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.cjw = shl i32 %.026.i.i.i618, %.0.i.i.i619
  %i.cjx = sub nsw i32 12, %.0.i.i.i619
  %i.cjy = lshr i32 %i.cjo, %i.cjx
  %i.cjz = or i32 %i.cjy, %i.cjw
  %i.cka = tail call i32 @llvm.bswap.i32(i32 %i.cjz)
  store i32 %i.cka, ptr %i.cjf, align 1, !tbaa !28
  %i.ckb = load ptr, ptr %i.aot, align 8, !tbaa !36
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 4 ; 2 uses
  store ptr %i.ckc, ptr %i.aot, align 8, !tbaa !36
  br label %put_bits.exit65.i

bb.nh:                                            ; preds = %bb.nf
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %put_bits.exit65.i

put_bits.exit65.i:                                ; preds = %bb.nh, %bb.ng, %bb.ne
  %i.ckd = phi ptr [ %i.cjf, %bb.ne ], [ %i.cjf, %bb.nh ], [ %i.ckc, %bb.ng ] ; 4 uses
  %.sink.i = phi i32 [ -12, %bb.ne ], [ 20, %bb.nh ], [ 20, %bb.ng ]
  %.026.i.i63.i = phi i32 [ %i.cjr, %bb.ne ], [ %i.cjo, %bb.nh ], [ %i.cjo, %bb.ng ] ; 2 uses
  %i.cke = add nsw i32 %.sink.i, %.0.i.i.i619     ; 4 uses
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.chi, i64 6
  %i.ckg = load i16, ptr %i.ckf, align 2, !tbaa !28
  %i.ckh = zext i16 %i.ckg to i32                 ; 4 uses
  %i.cki = icmp sgt i32 %i.cke, 12
  br i1 %i.cki, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %put_bits.exit65.i
  %i.ckj = shl i32 %.026.i.i63.i, 12
  %i.ckk = or i32 %i.ckj, %i.ckh
  br label %put_bits.exit69.i

bb.nj:                                            ; preds = %put_bits.exit65.i
  %i.ckl = load ptr, ptr %i.aos, align 8, !tbaa !35
  %i.ckm = ptrtoint ptr %i.ckl to i64
  %i.ckn = ptrtoint ptr %i.ckd to i64
  %i.cko = sub i64 %i.ckm, %i.ckn
  %i.ckp = icmp ugt i64 %i.cko, 3
  br i1 %i.ckp, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.ckq = shl i32 %.026.i.i63.i, %i.cke
  %i.ckr = sub nsw i32 12, %i.cke
  %i.cks = lshr i32 %i.ckh, %i.ckr
  %i.ckt = or i32 %i.cks, %i.ckq
  %i.cku = tail call i32 @llvm.bswap.i32(i32 %i.ckt)
  store i32 %i.cku, ptr %i.ckd, align 1, !tbaa !28
  %i.ckv = load ptr, ptr %i.aot, align 8, !tbaa !36
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.ckv, i64 4 ; 2 uses
  store ptr %i.ckw, ptr %i.aot, align 8, !tbaa !36
  br label %put_bits.exit69.i

bb.nl:                                            ; preds = %bb.nj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #13
  br label %put_bits.exit69.i

put_bits.exit69.i:                                ; preds = %bb.nl, %bb.nk, %bb.ni
  %i.ckx = phi ptr [ %i.ckd, %bb.ni ], [ %i.ckd, %bb.nl ], [ %i.ckw, %bb.nk ] ; 4 uses
  %.sink167.i = phi i32 [ -12, %bb.ni ], [ 20, %bb.nl ], [ 20, %bb.nk ]
  %.026.i.i67.i = phi i32 [ %i.ckk, %bb.ni ], [ %i.ckh, %bb.nl ], [ %i.ckh, %bb.nk ] ; 3 uses
  %i.cky = add nsw i32 %.sink167.i, %i.cke        ; 5 uses
  store i32 %.026.i.i67.i, ptr %5, align 8, !tbaa !38
  store i32 %i.cky, ptr %i.aou, align 4, !tbaa !37
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.chi, i64 8
  %i.cla = load i16, ptr %i.ckz, align 4, !tbaa !28
  %i.clb = zext i16 %i.cla to i32                 ; 4 uses
  %i.clc = icmp sgt i32 %i.cky, 12
end_hunk_0
