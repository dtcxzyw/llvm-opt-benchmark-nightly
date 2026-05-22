inline.NumInlined: 12424
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3VdbeExec:bb.a
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %i.blf
  %i.blh = load i32, ptr %i.blg, align 4, !tbaa !5
  br label %bb.ol

bb.ol:                                            ; preds = %sqlite3VdbeMemRelease.exit4266, %bb.ok
  %i.bli = phi ptr [ %i.bgn, %bb.ok ], [ %i.bkq, %sqlite3VdbeMemRelease.exit4266 ]
  %.24712 = phi i32 [ %i.blh, %bb.ok ], [ %.14711, %sqlite3VdbeMemRelease.exit4266 ] ; 10 uses
  %.15 = phi i32 [ %.122985, %bb.ok ], [ %.142987, %sqlite3VdbeMemRelease.exit4266 ] ; 3 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.blk = load i32, ptr %i.blj, align 4, !tbaa !586
  %i.bll = sext i32 %i.blk to i64
  %i.blm = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.bll ; 14 uses
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blm, i64 20 ; 3 uses
  %i.blo = load i16, ptr %i.bln, align 4, !tbaa !162
  %i.blp = and i16 %i.blo, -28672
  %.not3783 = icmp eq i16 %i.blp, 0
  br i1 %.not3783, label %bb.om, label %sqlite3VdbeMemSetNull.exit4270

sqlite3VdbeMemSetNull.exit4270:                   ; preds = %bb.ol
  call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.blm)
  br label %bb.om

bb.om:                                            ; preds = %sqlite3VdbeMemSetNull.exit4270, %bb.ol
  %i.blq = getelementptr inbounds nuw i8, ptr %.03162.ph, i64 100
  %i.blr = load i32, ptr %i.blq, align 4, !tbaa !5
  %i.bls = zext nneg i32 %.03154.ph to i64
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.bli, i64 %i.bls ; 3 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 4
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !5
  %.not3784 = icmp ult i32 %i.blr, %i.blv
  br i1 %.not3784, label %bb.ou, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.blw = getelementptr inbounds nuw i8, ptr %.03162.ph, i64 88
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !251
  %i.bly = load i32, ptr %i.blt, align 4, !tbaa !5
  %i.blz = zext i32 %i.bly to i64
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blx, i64 %i.blz ; 2 uses
  %i.bmb = icmp ult i32 %.24712, 12
  br i1 %i.bmb, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %bb.on
  call fastcc void @sqlite3VdbeSerialGet(ptr noundef %i.bma, i32 noundef %.24712, ptr noundef nonnull %i.blm)
  br label %sqlite3VdbeMemSetNull.exit4258.thread

bb.op:                                            ; preds = %bb.on
  %i.bmc = add i32 %.24712, -12
  %i.bmd = lshr i32 %i.bmc, 1                     ; 4 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %i.blm, i64 16
  store i32 %i.bmd, ptr %i.bme, align 8, !tbaa !558
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.blm, i64 22
  store i8 %i.ap, ptr %i.bmf, align 2, !tbaa !349
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.blm, i64 32
  %i.bmh = load i32, ptr %i.bmg, align 8, !tbaa !159
  %i.bmi = add nuw nsw i32 %i.bmd, 2              ; 2 uses
  %i.bmj = icmp slt i32 %i.bmh, %i.bmi
  br i1 %i.bmj, label %bb.oq, label %bb.os

bb.oq:                                            ; preds = %bb.op
  %i.bmk = load i32, ptr %i.fq, align 8, !tbaa !5
  %i.bml = icmp sgt i32 %i.bmd, %i.bmk
  br i1 %i.bml, label %sqlite3VdbeMemSetNull.exit4173.sink.split, label %bb.or

bb.or:                                            ; preds = %bb.oq
  store i16 1, ptr %i.bln, align 4, !tbaa !162
  %i.bmm = call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %i.blm, i32 noundef %i.bmi, i32 noundef 0)
  %.not3787 = icmp eq i32 %i.bmm, 0
  br i1 %.not3787, label %._crit_edge7281, label %sqlite3VdbeMemSetNull.exit4258.thread4816

._crit_edge7281:                                  ; preds = %bb.or
  %.phi.trans.insert7282 = getelementptr inbounds nuw i8, ptr %i.blm, i64 8
  %.pre7283 = load ptr, ptr %.phi.trans.insert7282, align 8, !tbaa !289
  br label %bb.ot

sqlite3VdbeMemSetNull.exit4258.thread4816:        ; preds = %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #71
  br label %sqlite3VdbeMemSetNull.exit4173.thread

bb.os:                                            ; preds = %bb.op
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.blm, i64 40
  %i.bmo = load ptr, ptr %i.bmn, align 8, !tbaa !160 ; 2 uses
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.blm, i64 8
  store ptr %i.bmo, ptr %i.bmp, align 8, !tbaa !289
  br label %bb.ot

bb.ot:                                            ; preds = %._crit_edge7281, %bb.os
  %i.bmq = phi ptr [ %.pre7283, %._crit_edge7281 ], [ %i.bmo, %bb.os ]
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.blm, i64 8 ; 2 uses
  %i.bms = zext nneg i32 %i.bmd to i64            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bmq, ptr align 1 %i.bma, i64 %i.bms, i1 false)
  %i.bmt = load ptr, ptr %i.bmr, align 8, !tbaa !289
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmt, i64 %i.bms
  store i8 0, ptr %i.bmu, align 1, !tbaa !227
  %i.bmv = load ptr, ptr %i.bmr, align 8, !tbaa !289
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %i.bms
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmw, i64 1
  store i8 0, ptr %i.bmx, align 1, !tbaa !227
  %i.bmy = and i32 %.24712, 1
  %i.bmz = zext nneg i32 %i.bmy to i64
  %i.bna = getelementptr inbounds nuw [2 x i8], ptr @sqlite3VdbeExec.aFlag, i64 %i.bmz
  %i.bnb = load i16, ptr %i.bna, align 2, !tbaa !330
  store i16 %i.bnb, ptr %i.bln, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetNull.exit4258.thread

bb.ou:                                            ; preds = %bb.om
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.blm, i64 22
  store i8 %i.ap, ptr %i.bnc, align 2, !tbaa !349
  %i.bnd = getelementptr inbounds nuw i8, ptr %.02963, i64 2
  %i.bne = load i16, ptr %i.bnd, align 2, !tbaa !587
  %i.bnf = and i16 %i.bne, 192                    ; 2 uses
  %trunc = trunc nuw i16 %i.bnf to i8
  switch i8 %trunc, label %bb.ov [
    i8 0, label %bb.ox
    i8 -128, label %bb.oy
  ]

bb.ov:                                            ; preds = %bb.ou
  %i.bng = icmp ugt i32 %.24712, 11
  br i1 %i.bng, label %bb.ow, label %sqlite3VdbeSerialTypeLen.exit4272

bb.ow:                                            ; preds = %bb.ov
  %i.bnh = and i32 %.24712, 1
  %i.bni = icmp eq i32 %i.bnh, 0
  %i.bnj = icmp eq i16 %i.bnf, 192
  %or.cond11 = or i1 %i.bni, %i.bnj
  br i1 %or.cond11, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ou, %bb.ow
  %i.bnk = icmp ugt i32 %.24712, 127
  br i1 %i.bnk, label %sqlite3VdbeSerialTypeLen.exit4272.thread, label %sqlite3VdbeSerialTypeLen.exit4272

sqlite3VdbeSerialTypeLen.exit4272:                ; preds = %bb.ov, %bb.ox
  %i.bnl = zext nneg i32 %.24712 to i64
  %i.bnm = getelementptr inbounds nuw i8, ptr @sqlite3SmallTypeSizes, i64 %i.bnl
  %i.bnn = load i8, ptr %i.bnm, align 1, !tbaa !227
  %i.bno = icmp eq i8 %i.bnn, 0
  br i1 %i.bno, label %bb.oy, label %sqlite3VdbeSerialTypeLen.exit4272.thread

bb.oy:                                            ; preds = %bb.ou, %sqlite3VdbeSerialTypeLen.exit4272, %bb.ow
  call fastcc void @sqlite3VdbeSerialGet(ptr noundef nonnull @sqlite3CtypeMap, i32 noundef %.24712, ptr noundef nonnull %i.blm)
  br label %sqlite3VdbeMemSetNull.exit4258.thread

sqlite3VdbeSerialTypeLen.exit4272.thread:         ; preds = %bb.ox, %sqlite3VdbeSerialTypeLen.exit4272
  %i.bnp = load i32, ptr %i.blt, align 4, !tbaa !5
  %i.bnq = zext i32 %i.bnp to i64
  %i.bnr = load i32, ptr %i.gx, align 4, !tbaa !616
  %i.bns = call fastcc i32 @vdbeColumnFromOverflow(ptr noundef nonnull %.03162.ph, i32 noundef %.03154.ph, i32 noundef %.24712, i64 noundef %i.bnq, i32 noundef %i.bnr, i32 noundef %.03036, ptr noundef nonnull %i.blm) ; 3 uses
  switch i32 %i.bns, label %sqlite3VdbeMemSetNull.exit4258 [
    i32 0, label %sqlite3VdbeMemSetNull.exit4258.thread
    i32 7, label %sqlite3VdbeMemSetNull.exit4258.thread5421
    i32 18, label %sqlite3VdbeMemSetNull.exit4173.sink.split
  ]

sqlite3VdbeMemSetNull.exit4258.thread5421:        ; preds = %sqlite3VdbeSerialTypeLen.exit4272.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #71
  br label %sqlite3VdbeMemSetNull.exit4173.thread

sqlite3VdbeMemRelease.exit:                       ; preds = %bb.ob, %bb.oc, %bb.oa, %bb.nb, %bb.nc
  %.19 = phi i32 [ %.112984, %bb.nb ], [ %.112984, %bb.nc ], [ %.132986, %bb.oa ], [ %.132986, %bb.ob ], [ %.132986, %bb.oc ]
  %i.bnt = getelementptr inbounds nuw i8, ptr %.02962, i64 12
  %i.bnu = load i32, ptr %i.bnt, align 4, !tbaa !586 ; 2 uses
  %i.bnv = icmp sgt i32 %i.bnu, 0
  br i1 %i.bnv, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %sqlite3VdbeMemRelease.exit
  %i.bnw = zext nneg i32 %i.bnu to i64
  %i.bnx = getelementptr [24 x i8], ptr %.02962, i64 %i.bnw
  %i.bny = getelementptr i8, ptr %i.bnx, i64 -24
  br label %sqlite3VdbeMemSetNull.exit4258.thread

bb.pa:                                            ; preds = %sqlite3VdbeMemRelease.exit
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 98919, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %sqlite3VdbeMemSetNull.exit4258

sqlite3VdbeMemSetNull.exit4258.thread:            ; preds = %bb.oz, %bb.oj, %bb.ot, %bb.oo, %bb.og, %bb.mr, %bb.mq, %bb.oi, %bb.oy, %sqlite3VdbeSerialTypeLen.exit4272.thread
  %.20.ph = phi i32 [ %.15, %bb.oy ], [ %.19, %bb.oz ], [ %.142987, %bb.oi ], [ %.82981.lcssa, %bb.mq ], [ %.15, %bb.ot ], [ %.15, %bb.oo ], [ %.82981.lcssa, %bb.mr ], [ %.142987, %bb.og ], [ %.142987, %bb.oj ], [ %i.bns, %sqlite3VdbeSerialTypeLen.exit4272.thread ]
  %.42967.ph = phi ptr [ %.02963, %bb.oy ], [ %i.bny, %bb.oz ], [ %.02963, %bb.oi ], [ %.02963, %bb.mq ], [ %.02963, %bb.ot ], [ %.02963, %bb.oo ], [ %.02963, %bb.mr ], [ %.02963, %bb.og ], [ %.02963, %bb.oj ], [ %.02963, %sqlite3VdbeSerialTypeLen.exit4272.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #71
  br label %.critedge

sqlite3VdbeMemSetNull.exit4258:                   ; preds = %sqlite3VdbeSerialTypeLen.exit4272.thread, %bb.mu, %bb.ni, %bb.mj, %bb.ml, %bb.nf, %bb.mx, %bb.pa
  %.20 = phi i32 [ %i.bgl, %bb.nf ], [ 11, %bb.pa ], [ %i.bdi, %bb.mj ], [ %i.bev, %bb.mx ], [ %i.bdk, %bb.ml ], [ %i.bgz, %bb.ni ], [ %i.bes, %bb.mu ], [ %i.bns, %sqlite3VdbeSerialTypeLen.exit4272.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #71
  br label %sqlite3VdbeSorterRowkey.exit

bb.pb:                                            ; preds = %bb.h
  %i.bnz = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !227 ; 3 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 8
  %i.boc = load ptr, ptr %i.bob, align 8, !tbaa !882
  %i.bod = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.boe = load i32, ptr %i.bod, align 4, !tbaa !584
  %i.bof = sext i32 %i.boe to i64
  %i.bog = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.bof
  %i.boh = getelementptr inbounds nuw i8, ptr %.02963, i64 12 ; 2 uses
  %i.boi = load i32, ptr %i.boh, align 4, !tbaa !586 ; 3 uses
  %i.boj = icmp slt i32 %i.boi, 2
  br i1 %i.boj, label %bb.pc, label %.thread7703

.thread7703:                                      ; preds = %bb.pb
  %20 = add nsw i32 %i.boi, -2
  %i.bok = add nsw i32 %i.boi, -1
  %21 = zext nneg i32 %20 to i64
  br label %.lr.ph6351.preheader

bb.pc:                                            ; preds = %bb.pb
  %i.bol = getelementptr inbounds nuw i8, ptr %i.boa, i64 54
  %i.bom = load i16, ptr %i.bol, align 2, !tbaa !881 ; 2 uses
  %i.bon = zext nneg i16 %i.bom to i32
  %i.boo = icmp sgt i16 %i.bom, 0
  br i1 %i.boo, label %.lr.ph6351.preheader, label %.critedge

.lr.ph6351.preheader:                             ; preds = %.thread7703, %bb.pc
  %.031787707 = phi i64 [ %21, %.thread7703 ], [ 0, %bb.pc ]
  %.031807706 = phi i32 [ %i.bok, %.thread7703 ], [ %i.bon, %bb.pc ]
  br label %.lr.ph6351

.lr.ph6351:                                       ; preds = %.lr.ph6351.preheader, %bb.pr
  %indvars.iv7192 = phi i64 [ %.031787707, %.lr.ph6351.preheader ], [ %indvars.iv.next7193, %bb.pr ] ; 2 uses
  %.230296349 = phi ptr [ %i.bog, %.lr.ph6351.preheader ], [ %.33030, %bb.pr ] ; 7 uses
  %i.bop = getelementptr inbounds nuw [16 x i8], ptr %i.boc, i64 %indvars.iv7192 ; 4 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 14
  %i.bor = load i16, ptr %i.boq, align 2, !tbaa !883
  %i.bos = zext i16 %i.bor to i32                 ; 2 uses
  %i.bot = and i32 %i.bos, 96
  %.not3764 = icmp eq i32 %i.bot, 0
  br i1 %.not3764, label %bb.ph, label %bb.pd

bb.pd:                                            ; preds = %.lr.ph6351
  %i.bou = load i32, ptr %i.boh, align 4, !tbaa !586 ; 2 uses
  %i.bov = icmp slt i32 %i.bou, 2
  br i1 %i.bov, label %bb.pe, label %bb.ph

bb.pe:                                            ; preds = %bb.pd
  %i.bow = and i32 %i.bos, 32
  %.not3765 = icmp eq i32 %i.bow, 0
  br i1 %.not3765, label %bb.pf, label %bb.pr

bb.pf:                                            ; preds = %bb.pe
  %.not3766 = icmp eq i32 %i.bou, 0
  br i1 %.not3766, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.box = getelementptr inbounds nuw i8, ptr %.230296349, i64 56
  br label %bb.pr

bb.ph:                                            ; preds = %bb.pf, %bb.pd, %.lr.ph6351
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bop, i64 9
  %i.boz = load i8, ptr %i.boy, align 1, !tbaa !905
  call fastcc void @applyAffinity(ptr noundef %.230296349, i8 noundef signext %i.boz, i8 noundef zeroext %i.ap)
  %i.bpa = getelementptr inbounds nuw i8, ptr %.230296349, i64 20 ; 2 uses
  %i.bpb = load i16, ptr %i.bpa, align 4, !tbaa !162 ; 4 uses
  %i.bpc = zext i16 %i.bpb to i32                 ; 5 uses
  %i.bpd = and i32 %i.bpc, 1
  %i.bpe = icmp eq i32 %i.bpd, 0
  br i1 %i.bpe, label %bb.pi, label %bb.pq

bb.pi:                                            ; preds = %bb.ph
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bop, i64 8
  %i.bpg = load i8, ptr %i.bpf, align 8
  %i.bph = lshr i8 %i.bpg, 4                      ; 2 uses
  switch i8 %i.bph, label %bb.pq [
    i8 2, label %bb.pj
    i8 4, label %bb.pk
    i8 3, label %bb.pk
    i8 6, label %bb.pl
    i8 5, label %bb.pm
  ]

bb.pj:                                            ; preds = %bb.pi
  %i.bpi = and i32 %i.bpc, 16
  %i.bpj = icmp eq i32 %i.bpi, 0
  br i1 %i.bpj, label %bb.ps, label %bb.pq

bb.pk:                                            ; preds = %bb.pi, %bb.pi
  %i.bpk = and i16 %i.bpb, 4
  %i.bpl = icmp eq i16 %i.bpk, 0
  br i1 %i.bpl, label %bb.ps, label %bb.pq

bb.pl:                                            ; preds = %bb.pi
  %i.bpm = and i32 %i.bpc, 2
  %i.bpn = icmp eq i32 %i.bpm, 0
  br i1 %i.bpn, label %bb.ps, label %bb.pq

bb.pm:                                            ; preds = %bb.pi
  %i.bpo = and i32 %i.bpc, 4
  %.not3767 = icmp eq i32 %i.bpo, 0
  br i1 %.not3767, label %bb.pp, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.bpp = load i64, ptr %.230296349, align 8, !tbaa !227 ; 2 uses
  %i.bpq = add i64 %i.bpp, 140737488355328
  %or.cond3914 = icmp ult i64 %i.bpq, 281474976710656
  br i1 %or.cond3914, label %.sink.split8641, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.bpr = sitofp i64 %i.bpp to double
  store double %i.bpr, ptr %.230296349, align 8, !tbaa !227
  br label %.sink.split8641

bb.pp:                                            ; preds = %bb.pm
  %i.bps = and i32 %i.bpc, 40
  %i.bpt = icmp eq i32 %i.bps, 0
  br i1 %i.bpt, label %bb.ps, label %bb.pq

.sink.split8641:                                  ; preds = %bb.pn, %bb.po
  %.sink8645 = phi i16 [ -13, %bb.po ], [ -37, %bb.pn ]
  %.sink8644 = phi i16 [ 8, %bb.po ], [ 32, %bb.pn ]
  %i.bpu = and i16 %.sink8645, %i.bpb
  %i.bpv = or disjoint i16 %i.bpu, %.sink8644
  store i16 %i.bpv, ptr %i.bpa, align 4, !tbaa !162
  br label %bb.pq

bb.pq:                                            ; preds = %.sink.split8641, %bb.pj, %bb.pk, %bb.pl, %bb.pp, %bb.pi, %bb.ph
  %i.bpw = getelementptr inbounds nuw i8, ptr %.230296349, i64 56
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pe, %bb.pq, %bb.pg
  %.33030 = phi ptr [ %.230296349, %bb.pe ], [ %i.box, %bb.pg ], [ %i.bpw, %bb.pq ]
  %indvars.iv.next7193 = add nuw nsw i64 %indvars.iv7192, 1 ; 2 uses
  %22 = trunc nuw i64 %indvars.iv.next7193 to i32
  %23 = icmp sgt i32 %.031807706, %22
  br i1 %23, label %.lr.ph6351, label %.critedge, !llvm.loop !2676

bb.ps:                                            ; preds = %bb.pj, %bb.pk, %bb.pl, %bb.pp
  %i.bpx = and i16 %i.bpb, 63
  %i.bpy = zext nneg i16 %i.bpx to i64
  %i.bpz = getelementptr inbounds nuw i8, ptr @sqlite3_value_type.aType, i64 %i.bpy
  %i.bqa = load i8, ptr %i.bpz, align 1, !tbaa !227
  %i.bqb = zext i8 %i.bqa to i64
  %i.bqc = getelementptr [8 x i8], ptr @vdbeMemTypeName.azTypes, i64 %i.bqb
  %i.bqd = getelementptr i8, ptr %i.bqc, i64 -8
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !251
  %i.bqf = zext nneg i8 %i.bph to i64
  %i.bqg = getelementptr [8 x i8], ptr @sqlite3StdType, i64 %i.bqf
  %i.bqh = getelementptr i8, ptr %i.bqg, i64 -8
  %i.bqi = load ptr, ptr %i.bqh, align 8, !tbaa !251
  %i.bqj = load ptr, ptr %i.boa, align 8, !tbaa !947
  %i.bqk = load ptr, ptr %i.bop, align 8, !tbaa !929
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %0, ptr noundef nonnull @.str.354, ptr noundef %i.bqe, ptr noundef %i.bqi, ptr noundef %i.bqj, ptr noundef %i.bqk)
  br label %sqlite3VdbeSorterRowkey.exit

bb.pt:                                            ; preds = %bb.h
  %i.bql = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !227 ; 2 uses
  %i.bqn = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.bqo = load i32, ptr %i.bqn, align 4, !tbaa !584
  %i.bqp = sext i32 %i.bqo to i64
  %i.bqq = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.bqp
  %.pre7267.a = load i8, ptr %i.bqm, align 1, !tbaa !227
  br label %bb.pu

bb.pu:                                            ; preds = %bb.py, %bb.pt
  %i.bqr = phi i8 [ %.pre7267.a, %bb.pt ], [ %i.brd, %bb.py ]
  %.03181 = phi ptr [ %i.bqm, %bb.pt ], [ %i.brc, %bb.py ] ; 2 uses
  %.43031 = phi ptr [ %i.bqq, %bb.pt ], [ %i.brf, %bb.py ] ; 5 uses
  call fastcc void @applyAffinity(ptr noundef %.43031, i8 noundef signext %i.bqr, i8 noundef zeroext %i.ap)
  %i.bqs = load i8, ptr %.03181, align 1, !tbaa !227
  %i.bqt = icmp eq i8 %i.bqs, 69
  br i1 %i.bqt, label %bb.pv, label %bb.py

bb.pv:                                            ; preds = %bb.pu
  %i.bqu = getelementptr inbounds nuw i8, ptr %.43031, i64 20 ; 2 uses
  %i.bqv = load i16, ptr %i.bqu, align 4, !tbaa !162 ; 2 uses
  %i.bqw = and i16 %i.bqv, 4
  %.not3763 = icmp eq i16 %i.bqw, 0
  br i1 %.not3763, label %bb.py, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.bqx = load i64, ptr %.43031, align 8, !tbaa !227 ; 2 uses
  %i.bqy = add i64 %i.bqx, 140737488355328
  %or.cond3917 = icmp ult i64 %i.bqy, 281474976710656
  br i1 %or.cond3917, label %.sink.split8646, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.bqz = sitofp i64 %i.bqx to double
  store double %i.bqz, ptr %.43031, align 8, !tbaa !227
  br label %.sink.split8646

.sink.split8646:                                  ; preds = %bb.pw, %bb.px
  %.sink8650 = phi i16 [ -15, %bb.px ], [ -37, %bb.pw ]
  %.sink8649 = phi i16 [ 8, %bb.px ], [ 32, %bb.pw ]
  %i.bra = and i16 %.sink8650, %i.bqv
  %i.brb = or disjoint i16 %i.bra, %.sink8649
  store i16 %i.brb, ptr %i.bqu, align 4, !tbaa !162
  br label %bb.py

bb.py:                                            ; preds = %.sink.split8646, %bb.pv, %bb.pu
  %i.brc = getelementptr inbounds nuw i8, ptr %.03181, i64 1 ; 2 uses
  %i.brd = load i8, ptr %i.brc, align 1, !tbaa !227 ; 2 uses
  %i.bre = icmp eq i8 %i.brd, 0
  %i.brf = getelementptr inbounds nuw i8, ptr %.43031, i64 56
  br i1 %i.bre, label %.critedge, label %bb.pu

bb.pz:                                            ; preds = %bb.h
  %i.brg = getelementptr inbounds nuw i8, ptr %.02963, i64 4
  %i.brh = load i32, ptr %i.brg, align 4, !tbaa !584
  %i.bri = getelementptr inbounds nuw i8, ptr %.02963, i64 16
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !227 ; 3 uses
  %i.brk = sext i32 %i.brh to i64
  %i.brl = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.brk ; 4 uses
  %i.brm = getelementptr inbounds nuw i8, ptr %.02963, i64 8
  %i.brn = load i32, ptr %i.brm, align 8, !tbaa !585
  %i.bro = sext i32 %i.brn to i64
  %i.brp = getelementptr [56 x i8], ptr %i.brl, i64 %i.bro
  %i.brq = getelementptr i8, ptr %i.brp, i64 -56  ; 2 uses
  %i.brr = getelementptr inbounds nuw i8, ptr %.02963, i64 12
  %i.brs = load i32, ptr %i.brr, align 4, !tbaa !586
  %i.brt = sext i32 %i.brs to i64
  %i.bru = getelementptr inbounds [56 x i8], ptr %.03021, i64 %i.brt ; 8 uses
  %.not3748 = icmp eq ptr %i.brj, null
  br i1 %.not3748, label %.loopexit5513.preheader, label %.preheader5512.preheader

.preheader5512.preheader:                         ; preds = %bb.pz
  %.pre7266.a = load i8, ptr %i.brj, align 1, !tbaa !227
  br label %.preheader5512

.preheader5512:                                   ; preds = %.preheader5512.preheader, %bb.qc
  %i.brv = phi i8 [ %i.bsf, %bb.qc ], [ %.pre7266.a, %.preheader5512.preheader ]
  %.03202 = phi ptr [ %i.bsd, %bb.qc ], [ %i.brj, %.preheader5512.preheader ] ; 2 uses
  %.03182 = phi ptr [ %i.bse, %bb.qc ], [ %i.brl, %.preheader5512.preheader ] ; 3 uses
  call fastcc void @applyAffinity(ptr noundef %.03182, i8 noundef signext %i.brv, i8 noundef zeroext %i.ap)
  %i.brw = load i8, ptr %.03202, align 1, !tbaa !227
  %i.brx = icmp eq i8 %i.brw, 69
  br i1 %i.brx, label %bb.qa, label %bb.qc

bb.qa:                                            ; preds = %.preheader5512
  %i.bry = getelementptr inbounds nuw i8, ptr %.03182, i64 20 ; 2 uses
  %i.brz = load i16, ptr %i.bry, align 4, !tbaa !162 ; 2 uses
  %i.bsa = and i16 %i.brz, 4
  %.not3749 = icmp eq i16 %i.bsa, 0
  br i1 %.not3749, label %bb.qc, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.bsb = and i16 %i.brz, -37
  %i.bsc = or disjoint i16 %i.bsb, 32
  store i16 %i.bsc, ptr %i.bry, align 4, !tbaa !162
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa, %.preheader5512
  %i.bsd = getelementptr inbounds nuw i8, ptr %.03202, i64 1 ; 2 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %.03182, i64 56
  %i.bsf = load i8, ptr %i.bsd, align 1, !tbaa !227 ; 2 uses
  %.not3750 = icmp eq i8 %i.bsf, 0
  br i1 %.not3750, label %.loopexit5513.preheader, label %.preheader5512, !llvm.loop !2677

.loopexit5513.preheader:                          ; preds = %bb.qc, %bb.pz
  br label %.loopexit5513

.loopexit5513:                                    ; preds = %.loopexit5513.preheader, %bb.rg
  %.03195 = phi i64 [ %.23197, %bb.rg ], [ 0, %.loopexit5513.preheader ] ; 14 uses
  %.03192 = phi i32 [ %.13193, %bb.rg ], [ 0, %.loopexit5513.preheader ] ; 4 uses
  %.03185 = phi i64 [ %.23187, %bb.rg ], [ 0, %.loopexit5513.preheader ] ; 11 uses
  %.13183 = phi ptr [ %i.bvh, %bb.rg ], [ %i.brq, %.loopexit5513.preheader ] ; 22 uses
  %i.bsg = getelementptr inbounds nuw i8, ptr %.13183, i64 20 ; 4 uses
  %i.bsh = load i16, ptr %i.bsg, align 4, !tbaa !162 ; 4 uses
  %i.bsi = zext i16 %i.bsh to i32                 ; 6 uses
  %i.bsj = and i32 %i.bsi, 1
  %.not3751 = icmp eq i32 %i.bsj, 0
  br i1 %.not3751, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %.loopexit5513
  %i.bsk = and i32 %i.bsi, 1024
  %.not3758 = icmp eq i32 %i.bsk, 0
  %spec.select8651 = select i1 %.not3758, i32 0, i32 10
  %i.bsl = getelementptr inbounds nuw i8, ptr %.13183, i64 36
  store i32 %spec.select8651, ptr %i.bsl, align 4, !tbaa !2678
  %i.bsm = add nsw i32 %.03192, 1
  br label %bb.rg

bb.qe:                                            ; preds = %.loopexit5513
  %i.bsn = and i32 %i.bsi, 36
  %.not3752 = icmp eq i32 %i.bsn, 0
  br i1 %.not3752, label %bb.qv, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.bso = load i64, ptr %.13183, align 8, !tbaa !227 ; 5 uses
  %.lobit5491 = ashr i64 %i.bso, 63
  %.03211 = xor i64 %.lobit5491, %i.bso           ; 5 uses
  %i.bsp = add nsw i32 %.03192, 1                 ; 8 uses
  %i.bsq = icmp ult i64 %.03211, 128
  br i1 %i.bsq, label %bb.qg, label %bb.qk

bb.qg:                                            ; preds = %bb.qf
  %i.bsr = icmp ult i64 %i.bso, 2
  br i1 %i.bsr, label %bb.qh, label %bb.qj

bb.qh:                                            ; preds = %bb.qg
  %i.bss = load i8, ptr %i.gq, align 1, !tbaa !609
  %i.bst = icmp ugt i8 %i.bss, 3
  br i1 %i.bst, label %bb.qi, label %bb.qj

bb.qi:                                            ; preds = %bb.qh
  %i.bsu = trunc nuw nsw i64 %i.bso to i32
  %i.bsv = or disjoint i32 %i.bsu, 8
  %i.bsw = getelementptr inbounds nuw i8, ptr %.13183, i64 36
  store i32 %i.bsv, ptr %i.bsw, align 4, !tbaa !2678
  br label %bb.rg

bb.qj:                                            ; preds = %bb.qh, %bb.qg
  %i.bsx = add i64 %.03185, 1
  %i.bsy = getelementptr inbounds nuw i8, ptr %.13183, i64 36
  store i32 1, ptr %i.bsy, align 4, !tbaa !2678
  br label %bb.rg

bb.qk:                                            ; preds = %bb.qf
  %i.bsz = icmp ult i64 %.03211, 32768
  br i1 %i.bsz, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %bb.qk
  %i.bta = add i64 %.03185, 2
  %i.btb = getelementptr inbounds nuw i8, ptr %.13183, i64 36
  store i32 2, ptr %i.btb, align 4, !tbaa !2678
  br label %bb.rg

bb.qm:                                            ; preds = %bb.qk
  %i.btc = icmp ult i64 %.03211, 8388608
  br i1 %i.btc, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  %i.btd = add i64 %.03185, 3
  %i.bte = getelementptr inbounds nuw i8, ptr %.13183, i64 36
  store i32 3, ptr %i.bte, align 4, !tbaa !2678
end_hunk_0
