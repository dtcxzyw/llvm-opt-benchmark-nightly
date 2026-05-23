inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@TT_RunIns:bb.a

bb.ub:                                            ; preds = %bb.ao
  %i.cmq = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.cms = load i64, ptr %i.cmr, align 8, !tbaa !223
  %i.cmt = call i64 @FT_MulDiv(i64 noundef %i.cmq, i64 noundef %i.cms, i64 noundef 64) #22
  store i64 %i.cmt, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.uc:                                            ; preds = %bb.ao
  %i.cmu = load i64, ptr %i.ji, align 8, !tbaa !223 ; 2 uses
  %i.cmv = icmp slt i64 %i.cmu, 0
  br i1 %i.cmv, label %bb.ud, label %Ins_SPVTL.exitthread-pre-split

bb.ud:                                            ; preds = %bb.uc
  %i.cmw = sub i64 0, %i.cmu
  store i64 %i.cmw, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.ue:                                            ; preds = %bb.ao
  %i.cmx = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.cmy = sub i64 0, %i.cmx
  store i64 %i.cmy, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.uf:                                            ; preds = %bb.ao
  %i.cmz = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.cna = and i64 %i.cmz, -64
  store i64 %i.cna, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.ug:                                            ; preds = %bb.ao
  %i.cnb = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.cnc = add i64 %i.cnb, 63
  %i.cnd = and i64 %i.cnc, -64
  store i64 %i.cnd, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.uh:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.cne = load ptr, ptr %i.fc, align 8, !tbaa !321
  %i.cnf = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.cng = and i8 %i.hq, 3
  %i.cnh = zext nneg i8 %i.cng to i32
  %i.cni = call i64 %i.cne(ptr noundef nonnull %0, i64 noundef %i.cnf, i32 noundef %i.cnh) #22, !inline_history !461
  store i64 %i.cni, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.ui:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.cnj = load i64, ptr %i.ji, align 8, !tbaa !223 ; 3 uses
  %i.cnk = and i8 %i.hq, 3
  %i.cnl = zext nneg i8 %i.cnk to i64
  %i.cnm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.cnl
  %i.cnn = load i64, ptr %i.cnm, align 8, !tbaa !223 ; 2 uses
  %i.cno = icmp sgt i64 %i.cnj, -1
  br i1 %i.cno, label %bb.uj, label %bb.uk

bb.uj:                                            ; preds = %bb.ui
  %i.cnp = add i64 %i.cnn, %i.cnj
  %spec.store.select.i.i = call i64 @llvm.smax.i64(i64 %i.cnp, i64 0)
  br label %Ins_NROUND.exit

bb.uk:                                            ; preds = %bb.ui
  %i.cnq = sub i64 %i.cnj, %i.cnn
  %spec.store.select1.i.i = call i64 @llvm.smin.i64(i64 %i.cnq, i64 0)
  br label %Ins_NROUND.exit

Ins_NROUND.exit:                                  ; preds = %bb.uj, %bb.uk
  %.0.i.i632 = phi i64 [ %spec.store.select.i.i, %bb.uj ], [ %spec.store.select1.i.i, %bb.uk ]
  store i64 %.0.i.i632, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.ul:                                            ; preds = %bb.ao
  %i.cnr = load i64, ptr %i.ji, align 8, !tbaa !223 ; 2 uses
  %i.cns = load i64, ptr %i.n, align 8, !tbaa !292
  %.not.i633 = icmp ult i64 %i.cnr, %i.cns
  br i1 %.not.i633, label %bb.un, label %bb.um

bb.um:                                            ; preds = %bb.ul
  %i.cnt = load i8, ptr %i.do, align 1, !tbaa !239
  %.not8.i634 = icmp eq i8 %i.cnt, 0
  br i1 %.not8.i634, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.un:                                            ; preds = %bb.ul
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.cnv = load i64, ptr %i.cnu, align 8, !tbaa !223
  %i.cnw = load i64, ptr %i.fi, align 8, !tbaa !367
  %sext.i635 = shl i64 %i.cnv, 32
  %i.cnx = ashr exact i64 %sext.i635, 32
  %sext9.i636 = shl i64 %i.cnw, 32
  %i.cny = ashr exact i64 %sext9.i636, 32
  %i.cnz = mul nsw i64 %i.cny, %i.cnx             ; 2 uses
  %i.coa = ashr i64 %i.cnz, 63
  %i.cob = add nsw i64 %i.cnz, 32768
  %i.coc = add nsw i64 %i.cob, %i.coa
  %i.cod = shl i64 %i.coc, 16
  %i.coe = ashr i64 %i.cod, 32
  %i.cof = load ptr, ptr %i.fj, align 8, !tbaa !462
  %i.cog = getelementptr inbounds nuw [8 x i8], ptr %i.cof, i64 %i.cnr
  store i64 %i.coe, ptr %i.cog, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.uo:                                            ; preds = %bb.ao, %bb.ao
  call fastcc void @Ins_DELTAP(ptr noundef nonnull %0, ptr noundef %i.ji)
  br label %Ins_SPVTL.exitthread-pre-split

bb.up:                                            ; preds = %bb.ao, %bb.ao, %bb.ao
  %i.coh = load ptr, ptr %i.as, align 8, !tbaa !303
  %i.coi = call i64 %i.coh(ptr noundef nonnull %0) #22, !inline_history !463
  %i.coj = load i64, ptr %i.ji, align 8, !tbaa !223 ; 2 uses
  %.not46.i637 = icmp eq i64 %i.coj, 0
  br i1 %.not46.i637, label %.loopexit.i642, label %.lr.ph.i638

.lr.ph.i638:                                      ; preds = %bb.up, %bb.va
  %.03747.i = phi i64 [ %i.cpn, %bb.va ], [ 1, %bb.up ]
  %i.cok = load i64, ptr %i.dn, align 8, !tbaa !330 ; 3 uses
  %i.col = icmp slt i64 %i.cok, 2
  br i1 %i.col, label %bb.uq, label %bb.ut

bb.uq:                                            ; preds = %.lr.ph.i638
  %i.com = load i8, ptr %i.do, align 1, !tbaa !239
  %.not44.i644 = icmp eq i8 %i.com, 0
  br i1 %.not44.i644, label %bb.us, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  store i32 129, ptr %i.dt, align 8, !tbaa !340
  br label %bb.us

bb.us:                                            ; preds = %bb.ur, %bb.uq
  store i64 0, ptr %i.dn, align 8, !tbaa !330
  br label %.loopexit.i642

bb.ut:                                            ; preds = %.lr.ph.i638
  %i.con = add nsw i64 %i.cok, -2                 ; 2 uses
  store i64 %i.con, ptr %i.dn, align 8, !tbaa !330
  %i.coo = load ptr, ptr %i.dp, align 8, !tbaa !190 ; 2 uses
  %i.cop = getelementptr [8 x i8], ptr %i.coo, i64 %i.cok
  %i.coq = getelementptr i8, ptr %i.cop, i64 -8
  %i.cor = load i64, ptr %i.coq, align 8, !tbaa !223 ; 2 uses
  %i.cos = getelementptr inbounds nuw [8 x i8], ptr %i.coo, i64 %i.con
  %i.cot = load i64, ptr %i.cos, align 8, !tbaa !223 ; 2 uses
  %i.cou = load i64, ptr %i.n, align 8, !tbaa !292
  %.not42.i639 = icmp ult i64 %i.cor, %i.cou
  br i1 %.not42.i639, label %bb.uv, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.cov = load i8, ptr %i.do, align 1, !tbaa !239
  %.not43.i640 = icmp eq i8 %i.cov, 0
  br i1 %.not43.i640, label %bb.va, label %.loopexit.sink.split

bb.uv:                                            ; preds = %bb.ut
  %i.cow = lshr i64 %i.cot, 4
  %i.cox = and i64 %i.cow, 15                     ; 3 uses
  %i.coy = load i8, ptr %i.dj, align 8, !tbaa !327
  switch i8 %i.coy, label %bb.uy [
    i8 117, label %bb.ux
    i8 116, label %bb.uw
  ]

bb.uw:                                            ; preds = %bb.uv
  %i.coz = or disjoint i64 %i.cox, 16
  br label %bb.uy

bb.ux:                                            ; preds = %bb.uv
  %i.cpa = or disjoint i64 %i.cox, 32
  br label %bb.uy

bb.uy:                                            ; preds = %bb.ux, %bb.uw, %bb.uv
  %.038.i = phi i64 [ %i.cox, %bb.uv ], [ %i.cpa, %bb.ux ], [ %i.coz, %bb.uw ]
  %i.cpb = load i16, ptr %i.fg, align 8, !tbaa !459
  %i.cpc = zext i16 %i.cpb to i64
  %i.cpd = add nuw nsw i64 %.038.i, %i.cpc
  %i.cpe = icmp eq i64 %i.coi, %i.cpd
  br i1 %i.cpe, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %bb.uy
  %i.cpf = and i64 %i.cot, 15                     ; 2 uses
  %i.cpg = icmp samesign ugt i64 %i.cpf, 7
  %spec.select.v.i = select i1 %i.cpg, i64 -7, i64 -8
  %spec.select.i643 = add nsw i64 %spec.select.v.i, %i.cpf
  %i.cph = load i16, ptr %i.fh, align 2, !tbaa !460
  %i.cpi = zext i16 %i.cph to i64
  %i.cpj = sub nsw i64 6, %i.cpi
  %i.cpk = and i64 %i.cpj, 4294967295
  %i.cpl = shl i64 %spec.select.i643, %i.cpk
  %i.cpm = load ptr, ptr %i.av, align 8, !tbaa !306
  call void %i.cpm(ptr noundef nonnull %0, i64 noundef %i.cor, i64 noundef %i.cpl) #22, !inline_history !463
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %bb.uy, %bb.uu
  %i.cpn = add i64 %.03747.i, 1                   ; 2 uses
  %.not.i641 = icmp ugt i64 %i.cpn, %i.coj
  br i1 %.not.i641, label %.loopexit.i642, label %.lr.ph.i638, !llvm.loop !464

.loopexit.i642:                                   ; preds = %bb.va, %bb.us, %bb.up
  %i.cpo = load i64, ptr %i.dn, align 8, !tbaa !330
  store i64 %i.cpo, ptr %i.dq, align 8, !tbaa !331
  br label %Ins_SPVTL.exitthread-pre-split

switch.lookup1302:                                ; preds = %bb.ao
  %.val399 = load i64, ptr %i.ji, align 8, !tbaa !223 ; 3 uses
  %i.cpp = lshr i64 %.val399, 6
  %i.cpq = and i64 %i.cpp, 3
  %switch.gep1303 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.TT_RunIns.37, i64 %i.cpq
  %switch.load1304 = load i64, ptr %switch.gep1303, align 8 ; 6 uses
  %11 = trunc i64 %.val399 to i32
  %i.cpr = and i32 %11, 48
  %12 = sub i32 %i.cpr, 0                         ; 2 uses
  %13 = call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 28)
  switch i32 %13, label %.unreachabledefault1.i.i [
    i32 0, label %bb.ve
    i32 1, label %bb.vb
    i32 2, label %bb.vc
    i32 3, label %bb.vd
  ]

bb.vb:                                            ; preds = %switch.lookup1302
  %i.cps = lshr exact i64 %switch.load1304, 2
  br label %bb.ve

bb.vc:                                            ; preds = %switch.lookup1302
  %i.cpt = lshr exact i64 %switch.load1304, 1
  br label %bb.ve

bb.vd:                                            ; preds = %switch.lookup1302
  %i.cpu = mul nuw nsw i64 %switch.load1304, 3
  %i.cpv = lshr exact i64 %i.cpu, 2
  br label %bb.ve

.unreachabledefault1.i.i:                         ; preds = %switch.lookup1302
  unreachable

bb.ve:                                            ; preds = %bb.vd, %bb.vc, %bb.vb, %switch.lookup1302
  %i.cpw = phi i64 [ %i.cpv, %bb.vd ], [ %i.cpt, %bb.vc ], [ %i.cps, %bb.vb ], [ 0, %switch.lookup1302 ]
  %i.cpx = and i64 %.val399, 15                   ; 2 uses
  %i.cpy = icmp eq i64 %i.cpx, 0
  br i1 %i.cpy, label %bb.vf, label %bb.vg

bb.vf:                                            ; preds = %bb.ve
  %i.cpz = add nsw i64 %switch.load1304, -1
  br label %Ins_SROUND.exit

bb.vg:                                            ; preds = %bb.ve
  %i.cqa = add nuw nsw i64 %i.cpx, 4294967292
  %i.cqb = mul nuw nsw i64 %switch.load1304, %i.cqa
  %.lhs.trunc.i.i = trunc i64 %i.cqb to i32
  %i.cqc = ashr exact i32 %.lhs.trunc.i.i, 3
  %.sext.i.i = sext i32 %i.cqc to i64
  br label %Ins_SROUND.exit

Ins_SROUND.exit:                                  ; preds = %bb.vf, %bb.vg
  %.sink.i.i = phi i64 [ %i.cpz, %bb.vf ], [ %.sext.i.i, %bb.vg ]
  %i.cqd = lshr exact i64 %switch.load1304, 8
  store i64 %i.cqd, ptr %i.fe, align 8, !tbaa !465
  %i.cqe = lshr i64 %i.cpw, 8
  store i64 %i.cqe, ptr %i.ff, align 8, !tbaa !466
  %i.cqf = ashr i64 %.sink.i.i, 8
  store i64 %i.cqf, ptr %i.fd, align 8, !tbaa !467
  store i32 6, ptr %i.cz, align 8, !tbaa !320
  store ptr @Round_Super, ptr %i.fc, align 8, !tbaa !321
  br label %Ins_SPVTL.exitthread-pre-split

switch.lookup1305:                                ; preds = %bb.ao
  %.val400 = load i64, ptr %i.ji, align 8, !tbaa !223 ; 3 uses
  %i.cqg = lshr i64 %.val400, 6
  %i.cqh = and i64 %i.cqg, 3
  %switch.gep1306 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.TT_RunIns.38, i64 %i.cqh
  %switch.load1307 = load i64, ptr %switch.gep1306, align 8 ; 6 uses
  %14 = trunc i64 %.val400 to i32
  %i.cqi = and i32 %14, 48
  %15 = sub i32 %i.cqi, 0                         ; 2 uses
  %16 = call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 28)
  switch i32 %16, label %.unreachabledefault1.i.i649 [
    i32 0, label %bb.vk
    i32 1, label %bb.vh
    i32 2, label %bb.vi
    i32 3, label %bb.vj
  ]

bb.vh:                                            ; preds = %switch.lookup1305
  %i.cqj = lshr i64 %switch.load1307, 2
  br label %bb.vk

bb.vi:                                            ; preds = %switch.lookup1305
  %i.cqk = lshr i64 %switch.load1307, 1
  br label %bb.vk

bb.vj:                                            ; preds = %switch.lookup1305
  %i.cql = mul nuw nsw i64 %switch.load1307, 3
  %i.cqm = lshr i64 %i.cql, 2
  br label %bb.vk

.unreachabledefault1.i.i649:                      ; preds = %switch.lookup1305
  unreachable

bb.vk:                                            ; preds = %bb.vj, %bb.vi, %bb.vh, %switch.lookup1305
  %i.cqn = phi i64 [ %i.cqm, %bb.vj ], [ %i.cqk, %bb.vi ], [ %i.cqj, %bb.vh ], [ 0, %switch.lookup1305 ]
  %i.cqo = and i64 %.val400, 15                   ; 2 uses
  %i.cqp = icmp eq i64 %i.cqo, 0
  br i1 %i.cqp, label %bb.vl, label %bb.vm

bb.vl:                                            ; preds = %bb.vk
  %i.cqq = add nsw i64 %switch.load1307, -1
  br label %Ins_S45ROUND.exit

bb.vm:                                            ; preds = %bb.vk
  %i.cqr = add nuw nsw i64 %i.cqo, 4294967292
  %i.cqs = mul nuw nsw i64 %switch.load1307, %i.cqr
  %.lhs.trunc.i.i646 = trunc i64 %i.cqs to i32
  %i.cqt = sdiv i32 %.lhs.trunc.i.i646, 8
  %.sext.i.i647 = sext i32 %i.cqt to i64
  br label %Ins_S45ROUND.exit

Ins_S45ROUND.exit:                                ; preds = %bb.vl, %bb.vm
  %.sink.i.i648 = phi i64 [ %i.cqq, %bb.vl ], [ %.sext.i.i647, %bb.vm ]
  %i.cqu = lshr i64 %switch.load1307, 8
  store i64 %i.cqu, ptr %i.fe, align 8, !tbaa !465
  %i.cqv = lshr i64 %i.cqn, 8
  store i64 %i.cqv, ptr %i.ff, align 8, !tbaa !466
  %i.cqw = ashr i64 %.sink.i.i648, 8
  store i64 %i.cqw, ptr %i.fd, align 8, !tbaa !467
  store i32 7, ptr %i.cz, align 8, !tbaa !320
  store ptr @Round_Super_45, ptr %i.fc, align 8, !tbaa !321
  br label %Ins_SPVTL.exitthread-pre-split

bb.vn:                                            ; preds = %bb.ao
  %i.cqx = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.cqy = load i64, ptr %i.cqx, align 8, !tbaa !223
  %.not.i650 = icmp eq i64 %i.cqy, 0
  br i1 %.not.i650, label %Ins_SPVTL.exitthread-pre-split, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.cqz = load i64, ptr %i.ji, align 8, !tbaa !223 ; 2 uses
  %i.cra = or i64 %i.cqz, %i.it
  %or.cond800 = icmp eq i64 %i.cra, 0
  br i1 %or.cond800, label %.sink.split.i.i, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.crb = load i64, ptr %i.di, align 8, !tbaa !324
  %i.crc = add i64 %i.crb, %i.cqz                 ; 3 uses
  store i64 %i.crc, ptr %i.di, align 8, !tbaa !324
  %i.crd = icmp slt i64 %i.crc, 0
  br i1 %i.crd, label %.sink.split.i.i, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.cre = load i32, ptr %i.dw, align 8, !tbaa !360 ; 2 uses
  %i.crf = icmp sgt i32 %i.cre, 0
  br i1 %i.crf, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %bb.vq
  %i.crg = load ptr, ptr %i.dy, align 8, !tbaa !194
  %i.crh = zext nneg i32 %i.cre to i64
  %i.cri = getelementptr [32 x i8], ptr %i.crg, i64 %i.crh
  %i.crj = getelementptr i8, ptr %i.cri, i64 -8
  %i.crk = load ptr, ptr %i.crj, align 8, !tbaa !361
  %i.crl = getelementptr inbounds nuw i8, ptr %i.crk, i64 16
  %i.crm = load i64, ptr %i.crl, align 8, !tbaa !363
  %i.crn = icmp sgt i64 %i.crc, %i.crm
  br i1 %i.crn, label %.sink.split.i.i, label %bb.vs

bb.vs:                                            ; preds = %bb.vr, %bb.vq
  store i8 0, ptr %i.ds, align 8, !tbaa !339
  %i.cro = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.crp = icmp slt i64 %i.cro, 0
  br i1 %i.crp, label %bb.vt, label %Ins_SPVTL.exitthread-pre-split

bb.vt:                                            ; preds = %bb.vs
  %i.crq = load i64, ptr %i.x, align 8, !tbaa !295
  %i.crr = add i64 %i.crq, 1                      ; 2 uses
  store i64 %i.crr, ptr %i.x, align 8, !tbaa !295
  %i.crs = load i64, ptr %i.am, align 8, !tbaa !299
  %i.crt = icmp ugt i64 %i.crr, %i.crs
  br i1 %i.crt, label %.sink.split.i.i, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i:                                  ; preds = %bb.vo, %bb.vt, %bb.vr, %bb.vp
  %.sink.i.i651 = phi i32 [ 132, %bb.vp ], [ 132, %bb.vo ], [ 132, %bb.vr ], [ 139, %bb.vt ] ; 2 uses
  store i32 %.sink.i.i651, ptr %i.dt, align 8, !tbaa !340
  br label %Ins_SPVTL.exit

bb.vu:                                            ; preds = %bb.ao
  %i.cru = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.crv = load i64, ptr %i.cru, align 8, !tbaa !223
  %i.crw = icmp eq i64 %i.crv, 0
  br i1 %i.crw, label %bb.vv, label %Ins_SPVTL.exitthread-pre-split

bb.vv:                                            ; preds = %bb.vu
  %i.crx = load i64, ptr %i.ji, align 8, !tbaa !223 ; 2 uses
  %i.cry = or i64 %i.crx, %i.it
  %or.cond801 = icmp eq i64 %i.cry, 0
  br i1 %or.cond801, label %.sink.split.i.i652, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.crz = load i64, ptr %i.di, align 8, !tbaa !324
  %i.csa = add i64 %i.crz, %i.crx                 ; 3 uses
  store i64 %i.csa, ptr %i.di, align 8, !tbaa !324
  %i.csb = icmp slt i64 %i.csa, 0
  br i1 %i.csb, label %.sink.split.i.i652, label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  %i.csc = load i32, ptr %i.dw, align 8, !tbaa !360 ; 2 uses
  %i.csd = icmp sgt i32 %i.csc, 0
  br i1 %i.csd, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  %i.cse = load ptr, ptr %i.dy, align 8, !tbaa !194
  %i.csf = zext nneg i32 %i.csc to i64
  %i.csg = getelementptr [32 x i8], ptr %i.cse, i64 %i.csf
  %i.csh = getelementptr i8, ptr %i.csg, i64 -8
  %i.csi = load ptr, ptr %i.csh, align 8, !tbaa !361
  %i.csj = getelementptr inbounds nuw i8, ptr %i.csi, i64 16
  %i.csk = load i64, ptr %i.csj, align 8, !tbaa !363
  %i.csl = icmp sgt i64 %i.csa, %i.csk
  br i1 %i.csl, label %.sink.split.i.i652, label %bb.vz

bb.vz:                                            ; preds = %bb.vy, %bb.vx
  store i8 0, ptr %i.ds, align 8, !tbaa !339
  %i.csm = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.csn = icmp slt i64 %i.csm, 0
  br i1 %i.csn, label %bb.wa, label %Ins_SPVTL.exitthread-pre-split

bb.wa:                                            ; preds = %bb.vz
  %i.cso = load i64, ptr %i.x, align 8, !tbaa !295
  %i.csp = add i64 %i.cso, 1                      ; 2 uses
  store i64 %i.csp, ptr %i.x, align 8, !tbaa !295
  %i.csq = load i64, ptr %i.am, align 8, !tbaa !299
  %i.csr = icmp ugt i64 %i.csp, %i.csq
  br i1 %i.csr, label %.sink.split.i.i652, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i652:                               ; preds = %bb.vv, %bb.wa, %bb.vy, %bb.vw
  %.sink.i.i653 = phi i32 [ 132, %bb.vw ], [ 132, %bb.vv ], [ 132, %bb.vy ], [ 139, %bb.wa ] ; 2 uses
  store i32 %.sink.i.i653, ptr %i.dt, align 8, !tbaa !340
  br label %Ins_SPVTL.exit

bb.wb:                                            ; preds = %bb.ao
  store i32 5, ptr %i.cz, align 8, !tbaa !320
  store ptr @Round_None, ptr %i.fc, align 8, !tbaa !321
  br label %Ins_SPVTL.exitthread-pre-split

bb.wc:                                            ; preds = %bb.ao
  %i.css = load ptr, ptr %i.du, align 8, !tbaa !370 ; 4 uses
  %.not.i654 = icmp eq ptr %i.css, null
  br i1 %.not.i654, label %._crit_edge.i659, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.cst = load i32, ptr %i.dv, align 8, !tbaa !371 ; 2 uses
  %i.csu = zext i32 %i.cst to i64
  %.idx.i655 = shl nuw nsw i64 %i.csu, 5
  %i.csv = getelementptr inbounds nuw i8, ptr %i.css, i64 %.idx.i655
  %.not41.i656 = icmp eq i32 %i.cst, 0
  br i1 %.not41.i656, label %._crit_edge.i659, label %.lr.ph.i657

.lr.ph.i657:                                      ; preds = %bb.wd, %bb.wn
  %.032.i658 = phi ptr [ %i.ctz, %bb.wn ], [ %i.css, %bb.wd ] ; 6 uses
  %i.csw = getelementptr inbounds nuw i8, ptr %.032.i658, i64 24
  %i.csx = load i32, ptr %i.csw, align 8, !tbaa !372
  %i.csy = and i32 %i.csx, 255
  %i.csz = icmp eq i32 %i.csy, 123
  br i1 %i.csz, label %bb.we, label %bb.wn

bb.we:                                            ; preds = %.lr.ph.i657
  %i.cta = getelementptr inbounds nuw i8, ptr %.032.i658, i64 28
  %i.ctb = load i8, ptr %i.cta, align 4, !tbaa !373
  %.not29.i660 = icmp eq i8 %i.ctb, 0
  br i1 %.not29.i660, label %bb.wn, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.ctc = load i32, ptr %i.dw, align 8, !tbaa !360 ; 3 uses
  %i.ctd = load i32, ptr %i.dx, align 4, !tbaa !205
  %.not30.i661 = icmp slt i32 %i.ctc, %i.ctd
  br i1 %.not30.i661, label %bb.wg, label %.loopexit.sink.split

bb.wg:                                            ; preds = %bb.wf
  %i.cte = load ptr, ptr %i.dy, align 8, !tbaa !194
  %i.ctf = add nsw i32 %i.ctc, 1
  store i32 %i.ctf, ptr %i.dw, align 8, !tbaa !360
  %i.ctg = sext i32 %i.ctc to i64
  %i.cth = getelementptr inbounds [32 x i8], ptr %i.cte, i64 %i.ctg ; 4 uses
  %i.cti = load i32, ptr %i.aw, align 4, !tbaa !307
  store i32 %i.cti, ptr %i.cth, align 8, !tbaa !374
  %i.ctj = load i64, ptr %i.di, align 8, !tbaa !324
  %i.ctk = add nsw i64 %i.ctj, 1
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.cth, i64 8
  store i64 %i.ctk, ptr %i.ctl, align 8, !tbaa !375
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.cth, i64 16
  store i64 1, ptr %i.ctm, align 8, !tbaa !376
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.cth, i64 24
  store ptr %.032.i658, ptr %i.ctn, align 8, !tbaa !361
  %i.cto = load i32, ptr %.032.i658, align 8, !tbaa !377 ; 3 uses
  %i.ctp = getelementptr inbounds nuw i8, ptr %.032.i658, i64 8
  %i.ctq = load i64, ptr %i.ctp, align 8, !tbaa !378 ; 2 uses
  %i.ctr = add i32 %i.cto, -4
  %or.cond.i.i662 = icmp ult i32 %i.ctr, -3
  br i1 %or.cond.i.i662, label %bb.wh, label %bb.wi

bb.wh:                                            ; preds = %bb.wg
end_hunk_0
begin_hunk_1_@TT_Load_Composite_Glyph:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %.0118, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !224
  %i.ca = zext i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.bx, %i.ca
  store i32 %i.cb, ptr %i.s, align 8, !tbaa !788
  %i.cc = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.0118, i64 6
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !224
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.0118, i64 7
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !224
  %i.cj = zext i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cg, %i.cj
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %.0118, i64 5
  %i.cm = load i8, ptr %i.m, align 1, !tbaa !224
  %i.cn = zext i8 %i.cm to i32
  store i32 %i.cn, ptr %i.s, align 8, !tbaa !788
  %i.co = getelementptr inbounds nuw i8, ptr %.0118, i64 6
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !224
  %i.cq = zext i8 %i.cp to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m, %bb.n
  %.sink = phi i32 [ %i.ck, %bb.p ], [ %i.cq, %bb.q ], [ %i.bo, %bb.m ], [ %i.bu, %bb.n ]
  %.1119 = phi ptr [ %i.cc, %bb.p ], [ %i.co, %bb.q ], [ %i.bf, %bb.m ], [ %i.bs, %bb.n ] ; 18 uses
  store i32 %.sink, ptr %i.r, align 4, !tbaa !790
  br i1 %.not123, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %.1119, i64 2
  %i.cs = load i8, ptr %.1119, align 1, !tbaa !224
  %i.ct = zext i8 %i.cs to i16
  %i.cu = shl nuw i16 %i.ct, 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.1119, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !224
  %i.cx = zext i8 %i.cw to i16
  %i.cy = or disjoint i16 %i.cu, %i.cx
  %i.cz = sext i16 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 2                    ; 2 uses
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.db = and i32 %i.al, 64
  %.not130 = icmp eq i32 %i.db, 0
  br i1 %.not130, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = load i8, ptr %.1119, align 1, !tbaa !224
  %i.dd = zext i8 %i.dc to i16
  %i.de = shl nuw i16 %i.dd, 8
  %i.df = getelementptr inbounds nuw i8, ptr %.1119, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !224
  %i.dh = zext i8 %i.dg to i16
  %i.di = or disjoint i16 %i.de, %i.dh
  %i.dj = sext i16 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.1119, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.1119, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !224
  %i.do = zext i8 %i.dn to i16
  %i.dp = shl nuw i16 %i.do, 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.1119, i64 3
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !224
  %i.ds = zext i8 %i.dr to i16
  %i.dt = or disjoint i16 %i.dp, %i.ds
  %i.du = sext i16 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 2
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.dw = and i32 %i.al, 128
  %.not131 = icmp eq i32 %i.dw, 0
  br i1 %.not131, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dx = load i8, ptr %.1119, align 1, !tbaa !224
  %i.dy = zext i8 %i.dx to i16
  %i.dz = shl nuw i16 %i.dy, 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.1119, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !224
  %i.ec = zext i8 %i.eb to i16
  %i.ed = or disjoint i16 %i.dz, %i.ec
  %i.ee = sext i16 %i.ed to i64
  %i.ef = shl nsw i64 %i.ee, 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.1119, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !224
  %i.ei = zext i8 %i.eh to i16
  %i.ej = shl nuw i16 %i.ei, 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.1119, i64 3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !224
  %i.em = zext i8 %i.el to i16
  %i.en = or disjoint i16 %i.ej, %i.em
  %i.eo = sext i16 %i.en to i64
  %i.ep = shl nsw i64 %i.eo, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %.1119, i64 4
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !224
  %i.es = zext i8 %i.er to i16
  %i.et = shl nuw i16 %i.es, 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.1119, i64 5
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !224
  %i.ew = zext i8 %i.ev to i16
  %i.ex = or disjoint i16 %i.et, %i.ew
  %i.ey = sext i16 %i.ex to i64
  %i.ez = shl nsw i64 %i.ey, 2
  %i.fa = getelementptr inbounds nuw i8, ptr %.1119, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.1119, i64 6
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !224
  %i.fd = zext i8 %i.fc to i16
  %i.fe = shl nuw i16 %i.fd, 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.1119, i64 7
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !224
  %i.fh = zext i8 %i.fg to i16
  %i.fi = or disjoint i16 %i.fe, %i.fh
  %i.fj = sext i16 %i.fi to i64
  %i.fk = shl nsw i64 %i.fj, 2
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.v, %bb.w, %bb.u
  %.2 = phi ptr [ %i.cr, %bb.s ], [ %i.dl, %bb.u ], [ %i.fa, %bb.w ], [ %.1119, %bb.v ] ; 3 uses
  %.0112 = phi i64 [ %i.da, %bb.s ], [ %i.dk, %bb.u ], [ %i.ef, %bb.w ], [ 65536, %bb.v ]
  %.0111 = phi i64 [ 0, %bb.s ], [ 0, %bb.u ], [ %i.ez, %bb.w ], [ 0, %bb.v ]
  %.0110 = phi i64 [ %i.da, %bb.s ], [ %i.dv, %bb.u ], [ %i.fk, %bb.w ], [ 65536, %bb.v ]
  %.0109 = phi i64 [ 0, %bb.s ], [ 0, %bb.u ], [ %i.ep, %bb.w ], [ 0, %bb.v ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.0112, ptr %i.fl, align 8, !tbaa !867
  %i.fm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.0111, ptr %i.fm, align 8, !tbaa !868
  %i.fn = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %.0109, ptr %i.fn, align 8, !tbaa !870
  %i.fo = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %.0110, ptr %i.fo, align 8, !tbaa !869
  %i.fp = and i16 %i.y, 32
  %.not132 = icmp eq i16 %i.fp, 0
  br i1 %.not132, label %bb.y, label %bb.b, !llvm.loop !925

bb.y:                                             ; preds = %bb.x
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i32 %i.k, ptr %i.fq, align 8, !tbaa !784
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !169
  %i.ft = tail call i64 @FT_Stream_Pos(ptr noundef %i.fs) #22
  %i.fu = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ft
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.d to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !783
  store ptr %.2, ptr %i.a, align 8, !tbaa !915
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.d, %bb.c, %bb.b, %bb.y
  %.0117 = phi i32 [ 0, %bb.y ], [ 21, %bb.j ], [ 21, %bb.d ], [ 21, %bb.c ], [ %i.l, %bb.b ]
  ret i32 %.0117
}

; Function Attrs: nounwind uwtable
define internal void @TT_Forget_Glyph_Frame(ptr noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  tail call void @FT_Stream_ExitFrame(ptr noundef %i.b) #22
  ret void
}

declare hidden i32 @FT_GlyphLoader_CheckSubGlyphs(ptr noundef, i32 noundef) local_unnamed_addr #4

declare hidden i32 @FT_GlyphLoader_CreateExtra(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 120}
!8 = !{!"TT_DriverRec_", !9, i64 0, !19, i64 56, !4, i64 120}
!9 = !{!"FT_DriverRec_", !10, i64 0, !15, i64 24, !16, i64 32, !18, i64 48}
!10 = !{!"FT_ModuleRec_", !11, i64 0, !13, i64 8, !14, i64 16}
!11 = !{!"p1 _ZTS16FT_Module_Class_", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS14FT_LibraryRec_", !12, i64 0}
!14 = !{!"p1 _ZTS13FT_MemoryRec_", !12, i64 0}
!15 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !12, i64 0}
!16 = !{!"FT_ListRec_", !17, i64 0, !17, i64 8}
!17 = !{!"p1 _ZTS15FT_ListNodeRec_", !12, i64 0}
!18 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !12, i64 0}
!19 = !{!"TT_GlyphZoneRec_", !14, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !21, i64 16, !21, i64 24, !21, i64 32, !22, i64 40, !23, i64 48, !20, i64 56}
!20 = !{!"short", !5, i64 0}
!21 = !{!"p1 _ZTS10FT_Vector_", !12, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"p1 short", !12, i64 0}
!24 = !{!10, !13, i64 8}
!25 = !{!10, !11, i64 0}
!26 = !{!27, !12, i64 40}
!27 = !{!"FT_Module_Class_", !28, i64 0, !28, i64 8, !22, i64 16, !28, i64 24, !28, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!28 = !{!"long", !5, i64 0}
!29 = !{!30, !12, i64 32}
!30 = !{!"SFNT_Interface_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360}
!31 = !{!32, !41, i64 176}
!32 = !{!"FT_FaceRec_", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !22, i64 40, !22, i64 48, !4, i64 56, !33, i64 64, !4, i64 72, !34, i64 80, !36, i64 88, !37, i64 104, !20, i64 136, !20, i64 138, !20, i64 140, !20, i64 142, !20, i64 144, !20, i64 146, !20, i64 148, !20, i64 150, !38, i64 152, !39, i64 160, !40, i64 168, !41, i64 176, !14, i64 184, !42, i64 192, !16, i64 200, !36, i64 216, !12, i64 232, !43, i64 240}
!33 = !{!"p1 _ZTS15FT_Bitmap_Size_", !12, i64 0}
!34 = !{!"p2 _ZTS14FT_CharMapRec_", !35, i64 0}
!35 = !{!"any p2 pointer", !12, i64 0}
!36 = !{!"FT_Generic_", !12, i64 0, !12, i64 8}
!37 = !{!"FT_BBox_", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!38 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !12, i64 0}
!39 = !{!"p1 _ZTS11FT_SizeRec_", !12, i64 0}
!40 = !{!"p1 _ZTS14FT_CharMapRec_", !12, i64 0}
!41 = !{!"p1 _ZTS13FT_DriverRec_", !12, i64 0}
!42 = !{!"p1 _ZTS13FT_StreamRec_", !12, i64 0}
!43 = !{!"p1 _ZTS20FT_Face_InternalRec_", !12, i64 0}
!44 = !{!9, !13, i64 8}
!45 = !{!30, !12, i64 8}
!46 = !{!47, !42, i64 192}
!47 = !{!"TT_FaceRec_", !32, i64 0, !48, i64 248, !28, i64 280, !20, i64 288, !50, i64 296, !51, i64 304, !52, i64 400, !53, i64 456, !5, i64 496, !54, i64 504, !20, i64 560, !55, i64 568, !58, i64 616, !59, i64 752, !22, i64 816, !28, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !60, i64 928, !62, i64 944, !28, i64 1008, !63, i64 1016, !64, i64 1024, !66, i64 1048, !20, i64 1088, !67, i64 1096, !5, i64 1104, !68, i64 1105, !28, i64 1112, !22, i64 1120, !28, i64 1128, !22, i64 1136, !28, i64 1144, !69, i64 1152, !12, i64 1160, !36, i64 1168, !22, i64 1184, !28, i64 1192, !28, i64 1200, !5, i64 1208, !5, i64 1209, !70, i64 1216, !4, i64 1224, !22, i64 1232, !4, i64 1240, !4, i64 1244, !22, i64 1248, !28, i64 1256, !28, i64 1264, !28, i64 1272, !22, i64 1280, !22, i64 1288, !28, i64 1296, !4, i64 1304, !28, i64 1312, !65, i64 1320, !22, i64 1328, !28, i64 1336, !4, i64 1344, !4, i64 1348, !69, i64 1352, !22, i64 1360, !28, i64 1368, !4, i64 1376, !4, i64 1380, !4, i64 1384, !71, i64 1392, !28, i64 1432, !28, i64 1440, !28, i64 1448, !28, i64 1456, !12, i64 1464, !12, i64 1472, !12, i64 1480}
!48 = !{!"TTC_HeaderRec_", !28, i64 0, !28, i64 8, !28, i64 16, !49, i64 24}
!49 = !{!"p1 long", !12, i64 0}
!50 = !{!"p1 _ZTS12TT_TableRec_", !12, i64 0}
!51 = !{!"TT_Header_", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !20, i64 32, !20, i64 34, !5, i64 40, !5, i64 56, !20, i64 72, !20, i64 74, !20, i64 76, !20, i64 78, !20, i64 80, !20, i64 82, !20, i64 84, !20, i64 86, !20, i64 88}
!52 = !{!"TT_HoriHeader_", !28, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !5, i64 28, !20, i64 36, !20, i64 38, !12, i64 40, !12, i64 48}
!53 = !{!"TT_MaxProfile_", !28, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !20, i64 28, !20, i64 30, !20, i64 32, !20, i64 34}
!54 = !{!"TT_VertHeader_", !28, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !5, i64 28, !20, i64 36, !20, i64 38, !12, i64 40, !12, i64 48}
!55 = !{!"TT_NameTableRec_", !20, i64 0, !4, i64 4, !4, i64 8, !56, i64 16, !4, i64 24, !57, i64 32, !42, i64 40}
!56 = !{!"p1 _ZTS11TT_NameRec_", !12, i64 0}
!57 = !{!"p1 _ZTS14TT_LangTagRec_", !12, i64 0}
!58 = !{!"TT_OS2_", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !20, i64 28, !20, i64 30, !5, i64 32, !28, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !5, i64 80, !20, i64 84, !20, i64 86, !20, i64 88, !20, i64 90, !20, i64 92, !20, i64 94, !20, i64 96, !20, i64 98, !28, i64 104, !28, i64 112, !20, i64 120, !20, i64 122, !20, i64 124, !20, i64 126, !20, i64 128, !20, i64 130, !20, i64 132}
!59 = !{!"TT_Postscript_", !28, i64 0, !28, i64 8, !20, i64 16, !20, i64 18, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56}
!60 = !{!"TT_Gasp_", !20, i64 0, !20, i64 2, !61, i64 8}
!61 = !{!"p1 _ZTS16TT_GaspRangeRec_", !12, i64 0}
!62 = !{!"TT_PCLT_", !28, i64 0, !28, i64 8, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !5, i64 28, !5, i64 44, !5, i64 52, !5, i64 58, !5, i64 59, !5, i64 60, !5, i64 61}
!63 = !{!"p1 _ZTS17TT_SBit_ScaleRec_", !12, i64 0}
!64 = !{!"TT_Post_NamesRec_", !5, i64 0, !20, i64 2, !20, i64 4, !23, i64 8, !65, i64 16}
!65 = !{!"p2 omnipotent char", !35, i64 0}
!66 = !{!"FT_Palette_Data_", !20, i64 0, !23, i64 8, !23, i64 16, !20, i64 24, !23, i64 32}
!67 = !{!"p1 _ZTS9FT_Color_", !12, i64 0}
!68 = !{!"FT_Color_", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!69 = !{!"p1 int", !12, i64 0}
!70 = !{!"p1 _ZTS12GX_BlendRec_", !12, i64 0}
!71 = !{!"TT_BDFRec_", !22, i64 0, !22, i64 8, !22, i64 16, !28, i64 24, !4, i64 32, !5, i64 36}
!72 = !{!47, !28, i64 280}
!73 = !{!32, !28, i64 16}
!74 = !{!30, !12, i64 16}
!75 = !{!32, !43, i64 240}
!76 = !{!77, !81, i64 104}
!77 = !{!"FT_Face_InternalRec_", !78, i64 0, !79, i64 32, !4, i64 48, !80, i64 56, !81, i64 104, !5, i64 112, !4, i64 116, !4, i64 120}
!78 = !{!"FT_Matrix_", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!79 = !{!"FT_Vector_", !28, i64 0, !28, i64 8}
!80 = !{!"FT_ServiceCacheRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!81 = !{!"p1 _ZTS28FT_Incremental_InterfaceRec_", !12, i64 0}
!82 = !{!32, !4, i64 56}
!83 = !{!47, !22, i64 1280}
!84 = !{!47, !12, i64 840}
!85 = !{!47, !12, i64 856}
!86 = !{!47, !12, i64 864}
!87 = !{!47, !12, i64 872}
!88 = !{!47, !12, i64 848}
!89 = !{!32, !14, i64 184}
!90 = !{!32, !42, i64 192}
!91 = !{!47, !12, i64 880}
!92 = !{!47, !12, i64 1176}
!93 = !{!47, !12, i64 1168}
!94 = !{!30, !12, i64 24}
!95 = !{!47, !28, i64 1272}
!96 = !{!97, !14, i64 56}
!97 = !{!"FT_StreamRec_", !22, i64 0, !28, i64 8, !28, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !12, i64 48, !14, i64 56, !22, i64 64, !22, i64 72}
!98 = !{!47, !65, i64 1320}
!99 = !{!47, !69, i64 1152}
!100 = !{!47, !28, i64 1112}
!101 = !{!47, !28, i64 1128}
!102 = !{!47, !70, i64 1216}
!103 = !{!104, !4, i64 544}
!104 = !{!"TT_SizeRec_", !105, i64 0, !109, i64 88, !107, i64 96, !110, i64 152, !22, i64 232, !28, i64 240, !28, i64 248, !4, i64 256, !4, i64 260, !111, i64 264, !4, i64 272, !4, i64 276, !111, i64 280, !4, i64 288, !4, i64 292, !5, i64 296, !112, i64 344, !28, i64 440, !49, i64 448, !20, i64 456, !49, i64 464, !19, i64 472, !114, i64 536, !4, i64 544, !4, i64 548}
!105 = !{!"FT_SizeRec_", !106, i64 0, !36, i64 8, !107, i64 24, !108, i64 80}
!106 = !{!"p1 _ZTS11FT_FaceRec_", !12, i64 0}
!107 = !{!"FT_Size_Metrics_", !20, i64 0, !20, i64 2, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48}
!108 = !{!"p1 _ZTS20FT_Size_InternalRec_", !12, i64 0}
!109 = !{!"p1 _ZTS16FT_Size_Metrics_", !12, i64 0}
!110 = !{!"TT_Size_Metrics_", !28, i64 0, !28, i64 8, !20, i64 16, !28, i64 24, !28, i64 32, !5, i64 40, !5, i64 72, !5, i64 73, !5, i64 74}
!111 = !{!"p1 _ZTS13TT_DefRecord_", !12, i64 0}
!112 = !{!"TT_GraphicsState_", !20, i64 0, !20, i64 2, !20, i64 4, !113, i64 6, !113, i64 10, !113, i64 14, !28, i64 24, !28, i64 32, !4, i64 40, !5, i64 44, !28, i64 48, !28, i64 56, !28, i64 64, !20, i64 72, !20, i64 74, !5, i64 76, !5, i64 77, !4, i64 80, !20, i64 84, !20, i64 86, !20, i64 88}
!113 = !{!"FT_UnitVector_", !20, i64 0, !20, i64 2}
!114 = !{!"p1 _ZTS18TT_ExecContextRec_", !12, i64 0}
!115 = !{!104, !4, i64 548}
!116 = !{!104, !5, i64 224}
!117 = !{!104, !28, i64 240}
!118 = !{!119, !124, i64 296}
!119 = !{!"FT_GlyphSlotRec_", !13, i64 0, !106, i64 8, !38, i64 16, !4, i64 24, !36, i64 32, !120, i64 48, !28, i64 112, !28, i64 120, !79, i64 128, !4, i64 144, !121, i64 152, !4, i64 192, !4, i64 196, !122, i64 200, !4, i64 240, !123, i64 248, !12, i64 256, !28, i64 264, !28, i64 272, !28, i64 280, !12, i64 288, !124, i64 296}
!120 = !{!"FT_Glyph_Metrics_", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56}
!121 = !{!"FT_Bitmap_", !4, i64 0, !4, i64 4, !4, i64 8, !22, i64 16, !20, i64 24, !5, i64 26, !5, i64 27, !12, i64 32}
!122 = !{!"FT_Outline_", !20, i64 0, !20, i64 2, !21, i64 8, !22, i64 16, !23, i64 24, !4, i64 32}
!123 = !{!"p1 _ZTS15FT_SubGlyphRec_", !12, i64 0}
!124 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !12, i64 0}
!125 = !{!126, !18, i64 0}
!126 = !{!"FT_Slot_InternalRec_", !18, i64 0, !4, i64 8, !5, i64 12, !78, i64 16, !79, i64 48, !12, i64 64, !4, i64 72}
!127 = !{!119, !106, i64 8}
!128 = !{!32, !28, i64 32}
!129 = !{!104, !109, i64 88}
!130 = !{!32, !28, i64 8}
!131 = !{!104, !28, i64 40}
!132 = !{!104, !28, i64 32}
!133 = !{!30, !12, i64 144}
!134 = distinct !{null, null}
!135 = !{!20, !20, i64 0}
!136 = !{!47, !28, i64 1256}
!137 = !{!30, !12, i64 320}
!138 = distinct !{null, null}
!139 = !{!119, !20, i64 202}
!140 = !{!119, !20, i64 200}
!141 = !{!119, !28, i64 64}
!142 = !{!119, !28, i64 72}
!143 = !{!119, !28, i64 80}
!144 = !{!119, !28, i64 88}
!145 = !{!119, !28, i64 96}
!146 = !{!119, !28, i64 104}
!147 = !{!119, !4, i64 144}
!148 = !{!119, !5, i64 178}
!149 = !{!119, !4, i64 192}
!150 = !{!119, !4, i64 196}
!151 = !{!152, !20, i64 2}
!152 = !{!"TT_SBit_MetricsRec_", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14}
!153 = !{!119, !28, i64 48}
!154 = !{!152, !20, i64 0}
!155 = !{!119, !28, i64 56}
!156 = !{!152, !20, i64 4}
!157 = !{!152, !20, i64 6}
!158 = !{!152, !20, i64 8}
!159 = !{!152, !20, i64 10}
!160 = !{!152, !20, i64 12}
!161 = !{!152, !20, i64 14}
!162 = !{!163, !28, i64 32}
!163 = !{!"TT_LoaderRec_", !164, i64 0, !165, i64 8, !38, i64 16, !18, i64 24, !28, i64 32, !4, i64 40, !42, i64 48, !4, i64 56, !20, i64 60, !37, i64 64, !4, i64 96, !4, i64 100, !4, i64 104, !5, i64 108, !79, i64 112, !79, i64 128, !19, i64 144, !19, i64 208, !114, i64 272, !22, i64 280, !28, i64 288, !12, i64 296, !4, i64 304, !4, i64 308, !79, i64 312, !79, i64 328, !22, i64 344, !22, i64 352, !16, i64 360, !22, i64 376}
!164 = !{!"p1 _ZTS11TT_FaceRec_", !12, i64 0}
!165 = !{!"p1 _ZTS11TT_SizeRec_", !12, i64 0}
!166 = !{!163, !164, i64 0}
!167 = !{!163, !165, i64 8}
!168 = !{!163, !38, i64 16}
end_hunk_1
