inline.NumInlined: 27144
inline.NumDeleted: 6113
begin_hunk_0_@_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EEb:bb.a
  %.011.i45.i.i.i.i.i = phi i64 [ %i.rz, %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.pp, %.preheader.i44.i.preheader.i.i.i.i ] ; 3 uses
  %i.qd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i, i1 true)
  %i.qe = trunc nuw nsw i64 %i.qd to i32
  %i.qf = or disjoint i32 %i.eu, %i.qe            ; 5 uses
  br i1 %.not.i.i5.i.i.i.i, label %.preheader.i44.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i, label %bb.bg

.preheader.i44.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i: ; preds = %.preheader.i44.i.i.i.i.i
  br i1 %.pre97.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i

bb.bg:                                            ; preds = %.preheader.i44.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.qg = zext i32 %i.qf to i64                   ; 2 uses
  %i.qh = lshr i64 %i.qg, 6
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.qh
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !272
  %i.qk = and i64 %i.qg, 63
  %i.ql = shl nuw i64 1, %i.qk
  %i.qm = and i64 %i.qj, %i.ql
  %.not.i.i.i8.i.i.i.i = icmp eq i64 %i.qm, 0
  br i1 %.not.i.i.i8.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.qn = sext i32 %i.qf to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !3
  %i.qq = zext i32 %i.qp to i64                   ; 2 uses
  %i.qr = lshr i64 %i.qq, 6
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.qr
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !272
  %i.qu = and i64 %i.qq, 63
  %i.qv = shl nuw i64 1, %i.qu
  %i.qw = and i64 %i.qv, %i.qt
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.qw, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i: ; preds = %bb.bh
  br i1 %.pre97.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %bb.bi, %.preheader.i44.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.qx = sext i32 %i.qf to i64
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %.preheader.i44.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.qz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i ], [ %i.qf, %.preheader.i44.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ], [ %i.qf, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ]
  %i.ra = sext i32 %.0.i.i.i.i.i.i.i to i64       ; 2 uses
  %i.rb = lshr i64 %i.ra, 6
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.rb
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !272
  %i.re = and i64 %i.ra, 63
  %i.rf = load i64, ptr %i.pu, align 8, !tbaa !316
  %.not.i.i2.i.i.i.i.i = icmp eq i64 %i.rf, 0
  br i1 %.not.i.i2.i.i.i.i.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i
  %i.rg = load i32, ptr %i.pv, align 8, !tbaa !317
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds i8, ptr %1, i64 %i.rh ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !14  ; 2 uses
  %i.rk = load i8, ptr %i.pw, align 4, !tbaa !318 ; 2 uses
  %i.rl = and i8 %i.rk, %i.rj
  %.not7.not.i.i.i.i.i.i.i = icmp eq i8 %i.rl, 0
  br i1 %.not7.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rm = xor i8 %i.rk, -1
  %i.rn = and i8 %i.rj, %i.rm
  store i8 %i.rn, ptr %i.ri, align 1, !tbaa !14
  %i.ro = load i64, ptr %i.pu, align 8, !tbaa !316
  %i.rp = add i64 %i.ro, -1
  store i64 %i.rp, ptr %i.pu, align 8, !tbaa !316
  br label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i

_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i: ; preds = %bb.bk, %bb.bj, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i
  %i.rq = load i32, ptr %i.px, align 8, !tbaa !248
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds i8, ptr %1, i64 %i.rr ; 2 uses
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !262, !range !66, !noundef !67
  %i.ru = lshr i64 %i.rd, %i.re
  %i.rv = trunc i64 %i.ru to i8
  %i.rw = and i8 %i.rv, 1
  %i.rx = icmp samesign ugt i8 %i.rt, %i.rw
  br i1 %i.rx, label %bb.bl, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i

bb.bl:                                            ; preds = %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i
  store i8 0, ptr %i.rs, align 1, !tbaa !262
  br label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i

_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %bb.bl, %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i, %bb.bi, %bb.bh
  %i.ry = add nsw i64 %.011.i45.i.i.i.i.i, -1
  %i.rz = and i64 %i.ry, %.011.i45.i.i.i.i.i      ; 2 uses
  %.not10.i46.i.i.i.i.i = icmp eq i64 %i.rz, 0
  br i1 %.not10.i46.i.i.i.i.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i, label %.preheader.i44.i.i.i.i.i, !llvm.loop !573

bb.bm:                                            ; preds = %bb.i
  %i.sa = getelementptr inbounds nuw i8, ptr %5, i64 58
  %i.sb = load i8, ptr %i.sa, align 2, !tbaa !335, !range !66, !noundef !67 ; 5 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !260, !range !66, !noundef !67
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i57.i, label %bb.bn

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i57.i: ; preds = %bb.bm
  %.0.in.pre.i.i58.i = load i8, ptr %i.sc, align 4, !tbaa !262, !range !66
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i16.i

bb.bn:                                            ; preds = %bb.bm
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !263
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %bb.bo, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i

bb.bo:                                            ; preds = %bb.bn
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !268 ; 6 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !269
  %i.sn = icmp eq i32 %i.sk, %i.sm
  br i1 %i.sn, label %bb.bp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i

bb.bp:                                            ; preds = %bb.bo
  %i.so = load ptr, ptr %2, align 8, !tbaa !270   ; 2 uses
  %.not.i.i.i49.i = icmp sgt i32 %i.sk, 0
  br i1 %.not.i.i.i49.i, label %bb.bq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i

bb.bq:                                            ; preds = %bb.bp
  %i.sp = and i32 %i.sk, 2147483584               ; 3 uses
  %i.sq = zext nneg i32 %i.sp to i64
  %.not37.i.i.not.i.i51.i77.not = icmp eq i32 %i.sp, 0
  br i1 %.not37.i.i.not.i.i51.i77.not, label %.critedge.i.i.i.i52.i, label %.lr.ph

bb.br:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i56.i = add nuw nsw i64 %indvars.iv.i.i50.i78, 64 ; 2 uses
  %.not37.i.i.not.i.i51.i = icmp samesign ult i64 %indvars.iv.next.i.i56.i, %i.sq
  br i1 %.not37.i.i.not.i.i51.i, label %.lr.ph, label %.critedge.i.i.i.i52.i, !llvm.loop !271

.lr.ph:                                           ; preds = %bb.bq, %bb.br
  %indvars.iv.i.i50.i78 = phi i64 [ %indvars.iv.next.i.i56.i, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.sr = lshr exact i64 %indvars.iv.i.i50.i78, 3
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sr
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !272
  %i.su = icmp eq i64 %i.st, -1
  br i1 %i.su, label %bb.br, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i, !llvm.loop !271

.critedge.i.i.i.i52.i:                            ; preds = %bb.br, %bb.bq
  %.not38.i.i.i.i53.i = icmp eq i32 %i.sk, %i.sp
  br i1 %.not38.i.i.i.i53.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i.i.i.i52.i
  %i.sv = lshr i32 %i.sk, 6
  %i.sw = and i32 %i.sk, 63
  %i.sx = zext nneg i32 %i.sw to i64
  %notmask.i40.i.i.i.i54.i = shl nsw i64 -1, %i.sx
  %i.sy = zext nneg i32 %i.sv to i64
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !272
  %.demorgan.i.i55.i = or i64 %i.ta, %notmask.i40.i.i.i.i54.i
  %i.tb = icmp eq i64 %.demorgan.i.i55.i, -1
  %i.tc = zext i1 %i.tb to i16
  %i.td = or disjoint i16 %i.tc, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i: ; preds = %.lr.ph, %bb.bs, %.critedge.i.i.i.i52.i, %bb.bp, %bb.bo, %bb.bn
  %.sroa.0.0.insert.ext.i.i15.i = phi i16 [ 256, %bb.bo ], [ 256, %bb.bn ], [ 257, %bb.bp ], [ 257, %.critedge.i.i.i.i52.i ], [ %i.td, %bb.bs ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i15.i, ptr %i.sc, align 4
  %i.te = trunc i16 %.sroa.0.0.insert.ext.i.i15.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i16.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i16.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i57.i
  %.0.in.i.i17.i = phi i8 [ %.0.in.pre.i.i58.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i57.i ], [ %i.te, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i ]
  %.0.i.i18.i = trunc nuw i8 %.0.in.i.i17.i to i1
  br i1 %.0.i.i18.i, label %bb.bt, label %bb.bz

bb.bt:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i16.i
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !268 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !263 ; 2 uses
  %i.tj = icmp slt i32 %i.ti, %i.tg
  br i1 %i.tj, label %.lr.ph.i40.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i

.lr.ph.i40.i:                                     ; preds = %bb.bt
  %i.tk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.tl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.tq = sext i32 %i.ti to i64
  %i.tr = load ptr, ptr %i.tk, align 8, !tbaa !570
  %i.ts = trunc nuw i8 %i.sb to i1
  %i.tt = load ptr, ptr %i.tl, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit120.i, %.lr.ph.i40.i
  %indvars.iv.i41.i = phi i64 [ %i.tq, %.lr.ph.i40.i ], [ %indvars.iv.next.i46.i, %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit120.i ] ; 3 uses
  br i1 %i.ts, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i42.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %indvars.iv.i41.i
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !3
  %6 = sext i32 %i.tv to i64
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i42.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i42.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i43.i = phi i64 [ %6, %bb.bv ], [ %indvars.iv.i41.i, %bb.bu ] ; 2 uses
  %i.tw = lshr i64 %.0.i.i.i.i43.i, 6
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %i.tw
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !272
  %i.tz = load i64, ptr %i.tm, align 8, !tbaa !316
  %.not.i.i.i.i44.i = icmp eq i64 %i.tz, 0
  br i1 %.not.i.i.i.i44.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i42.i
  %i.ua = load i32, ptr %i.tn, align 8, !tbaa !317
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds i8, ptr %1, i64 %i.ub ; 2 uses
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !14  ; 2 uses
  %i.ue = load i8, ptr %i.to, align 4, !tbaa !318 ; 2 uses
  %i.uf = and i8 %i.ue, %i.ud
  %.not7.not.i.i.i.i45.i = icmp eq i8 %i.uf, 0
  br i1 %.not7.not.i.i.i.i45.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ug = xor i8 %i.ue, -1
  %i.uh = and i8 %i.ud, %i.ug
  store i8 %i.uh, ptr %i.uc, align 1, !tbaa !14
  %i.ui = load i64, ptr %i.tm, align 8, !tbaa !316
  %i.uj = add i64 %i.ui, -1
  store i64 %i.uj, ptr %i.tm, align 8, !tbaa !316
  br label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i

_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i: ; preds = %bb.bx, %bb.bw, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i42.i
  %i.uk = and i64 %.0.i.i.i.i43.i, 63
  %i.ul = load i32, ptr %i.tp, align 8, !tbaa !248
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr inbounds i8, ptr %1, i64 %i.um ; 2 uses
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !262, !range !66, !noundef !67
  %i.up = lshr i64 %i.ty, %i.uk
  %i.uq = trunc i64 %i.up to i8
  %i.ur = and i8 %i.uq, 1
  %i.us = icmp samesign ugt i8 %i.uo, %i.ur
  br i1 %i.us, label %bb.by, label %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit120.i

bb.by:                                            ; preds = %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i
  store i8 0, ptr %i.un, align 1, !tbaa !262
  br label %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit120.i

_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit120.i: ; preds = %bb.by, %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i
  %indvars.iv.next.i46.i = add nsw i64 %indvars.iv.i41.i, 1 ; 2 uses
  %lftr.wideiv.i47.i = trunc i64 %indvars.iv.next.i46.i to i32
  %exitcond.not.i48.i = icmp eq i32 %i.tg, %lftr.wideiv.i47.i
  br i1 %exitcond.not.i48.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i, label %bb.bu, !llvm.loop !577

bb.bz:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i16.i
  %i.ut = load ptr, ptr %2, align 8, !tbaa !270   ; 4 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !263 ; 6 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !268 ; 7 uses
  %.not.i.i.i4.i.i = icmp slt i32 %i.uv, %i.ux
  br i1 %.not.i.i.i4.i.i, label %bb.ca, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.uy = add i32 %i.uv, 63                       ; 2 uses
  %i.uz = srem i32 %i.uy, 64
  %i.va = sub nsw i32 %i.uy, %i.uz                ; 6 uses
  %i.vb = and i32 %i.ux, -64                      ; 6 uses
  %i.vc = icmp slt i32 %i.vb, %i.va
  br i1 %i.vc, label %bb.cb, label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  %i.vd = ashr i32 %i.ux, 6
  %i.ve = and i32 %i.ux, 63
  %i.vf = zext nneg i32 %i.ve to i64
  %notmask.i.i.i.i.i34.i = shl nsw i64 -1, %i.vf
  %i.vg = xor i64 %notmask.i.i.i.i.i34.i, -1
  %i.vh = sub nsw i32 %i.va, %i.uv                ; 2 uses
  %i.vi = zext nneg i32 %i.vh to i64
  %notmask.i.i.i.i.i.i35.i = shl nsw i64 -1, %i.vi
  %i.vj = xor i64 %notmask.i.i.i.i.i.i35.i, -1
  %i.vk = sub nsw i32 64, %i.vh
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = shl i64 %i.vj, %i.vl
  %i.vn = and i64 %i.vm, %i.vg
  %i.vo = sext i32 %i.vd to i64
  %i.vp = getelementptr inbounds [8 x i8], ptr %i.ut, i64 %i.vo
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !272
  %i.vr = and i64 %i.vn, %i.vq                    ; 2 uses
  %.not.i.i.i.i.i36.i = icmp eq i64 %i.vr, 0
  br i1 %.not.i.i.i.i.i36.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i, label %.preheader.i.i.i.i.i37.i

.preheader.i.i.i.i.i37.i:                         ; preds = %bb.cb
  %i.vs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.vy = load ptr, ptr %i.vs, align 8, !tbaa !570
  %i.vz = trunc nuw i8 %i.sb to i1
  %i.wa = load ptr, ptr %i.vv, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit121.i, %.preheader.i.i.i.i.i37.i
  %.011.i.i.i.i.i38.i = phi i64 [ %i.vr, %.preheader.i.i.i.i.i37.i ], [ %i.xg, %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit121.i ] ; 3 uses
  %i.wb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i38.i, i1 true)
  %i.wc = trunc nuw nsw i64 %i.wb to i32
  %i.wd = or disjoint i32 %i.vb, %i.wc            ; 2 uses
  br i1 %i.vz, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.wg, %bb.cd ], [ %i.wd, %bb.cc ]
  %i.wh = sext i32 %.0.i.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.wi = lshr i64 %i.wh, 6
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %i.wi
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !272
  %i.wl = load i64, ptr %i.vt, align 8, !tbaa !316
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i
  %i.wm = load i32, ptr %i.vw, align 8, !tbaa !317
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds i8, ptr %1, i64 %i.wn ; 2 uses
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !14  ; 2 uses
  %i.wq = load i8, ptr %i.vx, align 4, !tbaa !318 ; 2 uses
  %i.wr = and i8 %i.wq, %i.wp
  %.not7.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.wr, 0
  br i1 %.not7.not.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ws = xor i8 %i.wq, -1
  %i.wt = and i8 %i.wp, %i.ws
  store i8 %i.wt, ptr %i.wo, align 1, !tbaa !14
  %i.wu = load i64, ptr %i.vt, align 8, !tbaa !316
  %i.wv = add i64 %i.wu, -1
  store i64 %i.wv, ptr %i.vt, align 8, !tbaa !316
  br label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i

_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i: ; preds = %bb.cf, %bb.ce, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i
  %i.ww = and i64 %i.wh, 63
  %i.wx = load i32, ptr %i.vu, align 8, !tbaa !248
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds i8, ptr %1, i64 %i.wy ; 2 uses
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !262, !range !66, !noundef !67
  %i.xb = lshr i64 %i.wk, %i.ww
  %i.xc = trunc i64 %i.xb to i8
  %i.xd = and i8 %i.xc, 1
  %i.xe = icmp samesign ugt i8 %i.xa, %i.xd
  br i1 %i.xe, label %bb.cg, label %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit121.i

bb.cg:                                            ; preds = %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i
  store i8 0, ptr %i.wz, align 1, !tbaa !262
  br label %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit121.i

_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit121.i: ; preds = %bb.cg, %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i
  %i.xf = add nsw i64 %.011.i.i.i.i.i38.i, -1
  %i.xg = and i64 %i.xf, %.011.i.i.i.i.i38.i      ; 2 uses
  %.not10.i.i.i.i.i39.i = icmp eq i64 %i.xg, 0
  br i1 %.not10.i.i.i.i.i39.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i, label %bb.cc, !llvm.loop !578

bb.ch:                                            ; preds = %bb.ca
  %.not32.i.i.i.i23.i = icmp eq i32 %i.uv, %i.va
  br i1 %.not32.i.i.i.i23.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS4_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEbEUlS8_biE_EEvSE_SH_RKSL_T1_T2_bT_EUliE1_EEvPKmiibSV_ENKUlimE_clEim.exit45.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xh = sdiv i32 %i.uv, 64                      ; 2 uses
  %i.xi = sub nsw i32 %i.va, %i.uv                ; 2 uses
  %i.xj = zext nneg i32 %i.xi to i64
  %notmask.i.i35.i.i.i.i24.i = shl nsw i64 -1, %i.xj
  %i.xk = xor i64 %notmask.i.i35.i.i.i.i24.i, -1
  %i.xl = sub nsw i32 64, %i.xi
  %i.xm = zext nneg i32 %i.xl to i64
  %i.xn = shl i64 %i.xk, %i.xm
  %i.xo = sext i32 %i.xh to i64
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.ut, i64 %i.xo
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !272
  %i.xr = and i64 %i.xq, %i.xn                    ; 2 uses
  %.not.i36.i.i.i.i25.i = icmp eq i64 %i.xr, 0
  br i1 %.not.i36.i.i.i.i25.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS4_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEbEUlS8_biE_EEvSE_SH_RKSL_T1_T2_bT_EUliE1_EEvPKmiibSV_ENKUlimE_clEim.exit45.i.i.i.i.i, label %.preheader.i37.i.i.i.i26.i

.preheader.i37.i.i.i.i26.i:                       ; preds = %bb.ci
  %i.xs = shl nsw i32 %i.xh, 6
  %i.xt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.xw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.xz = load ptr, ptr %i.xt, align 8, !tbaa !570
  %i.ya = trunc nuw i8 %i.sb to i1
  %i.yb = load ptr, ptr %i.xw, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit122.i, %.preheader.i37.i.i.i.i26.i
  %.011.i38.i.i.i.i27.i = phi i64 [ %i.xr, %.preheader.i37.i.i.i.i26.i ], [ %i.zh, %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMinAggregateIbE11updateGroupERbb.exit122.i ] ; 3 uses
  %i.yc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i27.i, i1 true)
  %i.yd = trunc nuw nsw i64 %i.yc to i32
  %i.ye = or disjoint i32 %i.xs, %i.yd            ; 2 uses
  br i1 %i.ya, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i39.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.yb, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i39.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i39.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i40.i.i.i.i.i = phi i32 [ %i.yh, %bb.ck ], [ %i.ye, %bb.cj ]
  %i.yi = sext i32 %.0.i.i.i.i40.i.i.i.i.i to i64 ; 2 uses
  %i.yj = lshr i64 %i.yi, 6
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %i.yj
  %i.yl = load i64, ptr %i.yk, align 8, !tbaa !272
  %i.ym = load i64, ptr %i.xu, align 8, !tbaa !316
  %.not.i.i.i.i41.i.i.i.i.i = icmp eq i64 %i.ym, 0
  br i1 %.not.i.i.i.i41.i.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i43.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i39.i.i.i.i.i
  %i.yn = load i32, ptr %i.xx, align 8, !tbaa !317
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds i8, ptr %1, i64 %i.yo ; 2 uses
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !14  ; 2 uses
  %i.yr = load i8, ptr %i.xy, align 4, !tbaa !318 ; 2 uses
  %i.ys = and i8 %i.yr, %i.yq
  %.not7.not.i.i.i.i42.i.i.i.i.i = icmp eq i8 %i.ys, 0
  br i1 %.not7.not.i.i.i.i42.i.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMinAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i43.i.i.i.i.i, label %bb.cm

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EEb:bb.a
  %i.qj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i, i1 true)
  %i.qk = trunc nuw nsw i64 %i.qj to i32
  %i.ql = or disjoint i32 %i.ew, %i.qk            ; 5 uses
  br i1 %.not.i.i5.i.i.i.i, label %.preheader.i44.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i, label %bb.bg

.preheader.i44.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i: ; preds = %.preheader.i44.i.i.i.i.i
  br i1 %.pre97.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i

bb.bg:                                            ; preds = %.preheader.i44.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.qm = zext i32 %i.ql to i64                   ; 2 uses
  %i.qn = lshr i64 %i.qm, 6
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qn
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !272
  %i.qq = and i64 %i.qm, 63
  %i.qr = shl nuw i64 1, %i.qq
  %i.qs = and i64 %i.qp, %i.qr
  %.not.i.i.i8.i.i.i.i = icmp eq i64 %i.qs, 0
  br i1 %.not.i.i.i8.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.qt = sext i32 %i.ql to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !3
  %i.qw = zext i32 %i.qv to i64                   ; 2 uses
  %i.qx = lshr i64 %i.qw, 6
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qx
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !272
  %i.ra = and i64 %i.qw, 63
  %i.rb = shl nuw i64 1, %i.ra
  %i.rc = and i64 %i.rb, %i.qz
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.rc, 0
  br i1 %.not.i7.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i: ; preds = %bb.bh
  br i1 %.pre97.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %bb.bi, %.preheader.i44.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %i.rd = sext i32 %i.ql to i64
  %i.re = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i, %.preheader.i44.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.rf, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i.i.i.i.i ], [ %i.ql, %.preheader.i44.i._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge.i.i.i.i ], [ %i.ql, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i ]
  %i.rg = sext i32 %.0.i.i.i.i.i.i.i to i64       ; 2 uses
  %i.rh = lshr i64 %i.rg, 6
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.rh
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !272
  %i.rk = and i64 %i.rg, 63
  %i.rl = shl nuw i64 1, %i.rk
  %i.rm = and i64 %i.rl, %i.rj
  %i.rn = icmp ne i64 %i.rm, 0
  %i.ro = load i64, ptr %i.qa, align 8, !tbaa !316
  %.not.i.i2.i.i.i.i.i = icmp eq i64 %i.ro, 0
  br i1 %.not.i.i2.i.i.i.i.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i
  %i.rp = load i32, ptr %i.qb, align 8, !tbaa !317
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds i8, ptr %1, i64 %i.rq ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !14  ; 2 uses
  %i.rt = load i8, ptr %i.qc, align 4, !tbaa !318 ; 2 uses
  %i.ru = and i8 %i.rt, %i.rs
  %.not7.not.i.i.i.i.i.i.i = icmp eq i8 %i.ru, 0
  br i1 %.not7.not.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rv = xor i8 %i.rt, -1
  %i.rw = and i8 %i.rs, %i.rv
  store i8 %i.rw, ptr %i.rr, align 1, !tbaa !14
  %i.rx = load i64, ptr %i.qa, align 8, !tbaa !316
  %i.ry = add i64 %i.rx, -1
  store i64 %i.ry, ptr %i.qa, align 8, !tbaa !316
  br label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i

_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i: ; preds = %bb.bk, %bb.bj, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i
  %i.rz = load i32, ptr %i.qd, align 8, !tbaa !248
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds i8, ptr %1, i64 %i.sa ; 2 uses
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !262, !range !66, !noundef !67
  %i.sd = icmp eq i8 %i.sc, 0
  %i.se = and i1 %i.rn, %i.sd
  br i1 %i.se, label %bb.bl, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i

bb.bl:                                            ; preds = %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i
  store i8 1, ptr %i.sb, align 1, !tbaa !262
  br label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i

_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %bb.bl, %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i.i.i.i.i, %bb.bi, %bb.bh
  %i.sf = add nsw i64 %.011.i45.i.i.i.i.i, -1
  %i.sg = and i64 %i.sf, %.011.i45.i.i.i.i.i      ; 2 uses
  %.not10.i46.i.i.i.i.i = icmp eq i64 %i.sg, 0
  br i1 %.not10.i46.i.i.i.i.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i, label %.preheader.i44.i.i.i.i.i, !llvm.loop !8423

bb.bm:                                            ; preds = %bb.i
  %i.sh = getelementptr inbounds nuw i8, ptr %5, i64 58
  %i.si = load i8, ptr %i.sh, align 2, !tbaa !335, !range !66, !noundef !67 ; 5 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !260, !range !66, !noundef !67
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i57.i, label %bb.bn

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i57.i: ; preds = %bb.bm
  %.0.in.pre.i.i58.i = load i8, ptr %i.sj, align 4, !tbaa !262, !range !66
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i16.i

bb.bn:                                            ; preds = %bb.bm
  %i.sn = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !263
  %i.sp = icmp eq i32 %i.so, 0
  br i1 %i.sp, label %bb.bo, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i

bb.bo:                                            ; preds = %bb.bn
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !268 ; 6 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !269
  %i.su = icmp eq i32 %i.sr, %i.st
  br i1 %i.su, label %bb.bp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i

bb.bp:                                            ; preds = %bb.bo
  %i.sv = load ptr, ptr %2, align 8, !tbaa !270   ; 2 uses
  %.not.i.i.i49.i = icmp sgt i32 %i.sr, 0
  br i1 %.not.i.i.i49.i, label %bb.bq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i

bb.bq:                                            ; preds = %bb.bp
  %i.sw = and i32 %i.sr, 2147483584               ; 3 uses
  %i.sx = zext nneg i32 %i.sw to i64
  %.not37.i.i.not.i.i51.i77.not = icmp eq i32 %i.sw, 0
  br i1 %.not37.i.i.not.i.i51.i77.not, label %.critedge.i.i.i.i52.i, label %.lr.ph

bb.br:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i56.i = add nuw nsw i64 %indvars.iv.i.i50.i78, 64 ; 2 uses
  %.not37.i.i.not.i.i51.i = icmp samesign ult i64 %indvars.iv.next.i.i56.i, %i.sx
  br i1 %.not37.i.i.not.i.i51.i, label %.lr.ph, label %.critedge.i.i.i.i52.i, !llvm.loop !271

.lr.ph:                                           ; preds = %bb.bq, %bb.br
  %indvars.iv.i.i50.i78 = phi i64 [ %indvars.iv.next.i.i56.i, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.sy = lshr exact i64 %indvars.iv.i.i50.i78, 3
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !272
  %i.tb = icmp eq i64 %i.ta, -1
  br i1 %i.tb, label %bb.br, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i, !llvm.loop !271

.critedge.i.i.i.i52.i:                            ; preds = %bb.br, %bb.bq
  %.not38.i.i.i.i53.i = icmp eq i32 %i.sr, %i.sw
  br i1 %.not38.i.i.i.i53.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i.i.i.i52.i
  %i.tc = lshr i32 %i.sr, 6
  %i.td = and i32 %i.sr, 63
  %i.te = zext nneg i32 %i.td to i64
  %notmask.i40.i.i.i.i54.i = shl nsw i64 -1, %i.te
  %i.tf = zext nneg i32 %i.tc to i64
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.tf
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !272
  %.demorgan.i.i55.i = or i64 %i.th, %notmask.i40.i.i.i.i54.i
  %i.ti = icmp eq i64 %.demorgan.i.i55.i, -1
  %i.tj = zext i1 %i.ti to i16
  %i.tk = or disjoint i16 %i.tj, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i: ; preds = %.lr.ph, %bb.bs, %.critedge.i.i.i.i52.i, %bb.bp, %bb.bo, %bb.bn
  %.sroa.0.0.insert.ext.i.i15.i = phi i16 [ 256, %bb.bo ], [ 256, %bb.bn ], [ 257, %bb.bp ], [ 257, %.critedge.i.i.i.i52.i ], [ %i.tk, %bb.bs ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i15.i, ptr %i.sj, align 4
  %i.tl = trunc i16 %.sroa.0.0.insert.ext.i.i15.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i16.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i16.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i57.i
  %.0.in.i.i17.i = phi i8 [ %.0.in.pre.i.i58.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i57.i ], [ %i.tl, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i14.i ]
  %.0.i.i18.i = trunc nuw i8 %.0.in.i.i17.i to i1
  br i1 %.0.i.i18.i, label %bb.bt, label %bb.bz

bb.bt:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i16.i
  %i.tm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !268 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !263 ; 2 uses
  %i.tq = icmp slt i32 %i.tp, %i.tn
  br i1 %i.tq, label %.lr.ph.i40.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i

.lr.ph.i40.i:                                     ; preds = %bb.bt
  %i.tr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ts = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.tx = sext i32 %i.tp to i64
  %i.ty = load ptr, ptr %i.tr, align 8, !tbaa !570
  %i.tz = trunc nuw i8 %i.si to i1
  %i.ua = load ptr, ptr %i.ts, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit120.i, %.lr.ph.i40.i
  %indvars.iv.i41.i = phi i64 [ %i.tx, %.lr.ph.i40.i ], [ %indvars.iv.next.i46.i, %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit120.i ] ; 3 uses
  br i1 %i.tz, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i42.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %indvars.iv.i41.i
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !3
  %6 = sext i32 %i.uc to i64
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i42.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i42.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i43.i = phi i64 [ %6, %bb.bv ], [ %indvars.iv.i41.i, %bb.bu ] ; 2 uses
  %i.ud = lshr i64 %.0.i.i.i.i43.i, 6
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %i.ud
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !272
  %i.ug = load i64, ptr %i.tt, align 8, !tbaa !316
  %.not.i.i.i.i44.i = icmp eq i64 %i.ug, 0
  br i1 %.not.i.i.i.i44.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i42.i
  %i.uh = load i32, ptr %i.tu, align 8, !tbaa !317
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds i8, ptr %1, i64 %i.ui ; 2 uses
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !14  ; 2 uses
  %i.ul = load i8, ptr %i.tv, align 4, !tbaa !318 ; 2 uses
  %i.um = and i8 %i.ul, %i.uk
  %.not7.not.i.i.i.i45.i = icmp eq i8 %i.um, 0
  br i1 %.not7.not.i.i.i.i45.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.un = xor i8 %i.ul, -1
  %i.uo = and i8 %i.uk, %i.un
  store i8 %i.uo, ptr %i.uj, align 1, !tbaa !14
  %i.up = load i64, ptr %i.tt, align 8, !tbaa !316
  %i.uq = add i64 %i.up, -1
  store i64 %i.uq, ptr %i.tt, align 8, !tbaa !316
  br label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i

_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i: ; preds = %bb.bx, %bb.bw, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i42.i
  %i.ur = and i64 %.0.i.i.i.i43.i, 63
  %i.us = shl nuw i64 1, %i.ur
  %i.ut = and i64 %i.us, %i.uf
  %i.uu = icmp ne i64 %i.ut, 0
  %i.uv = load i32, ptr %i.tw, align 8, !tbaa !248
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds i8, ptr %1, i64 %i.uw ; 2 uses
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !262, !range !66, !noundef !67
  %i.uz = icmp eq i8 %i.uy, 0
  %i.va = and i1 %i.uu, %i.uz
  br i1 %i.va, label %bb.by, label %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit120.i

bb.by:                                            ; preds = %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i
  store i8 1, ptr %i.ux, align 1, !tbaa !262
  br label %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit120.i

_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit120.i: ; preds = %bb.by, %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i
  %indvars.iv.next.i46.i = add nsw i64 %indvars.iv.i41.i, 1 ; 2 uses
  %lftr.wideiv.i47.i = trunc i64 %indvars.iv.next.i46.i to i32
  %exitcond.not.i48.i = icmp eq i32 %i.tn, %lftr.wideiv.i47.i
  br i1 %exitcond.not.i48.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i, label %bb.bu, !llvm.loop !8427

bb.bz:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i16.i
  %i.vb = load ptr, ptr %2, align 8, !tbaa !270   ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !263 ; 6 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !268 ; 7 uses
  %.not.i.i.i4.i.i = icmp slt i32 %i.vd, %i.vf
  br i1 %.not.i.i.i4.i.i, label %bb.ca, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.vg = add i32 %i.vd, 63                       ; 2 uses
  %i.vh = srem i32 %i.vg, 64
  %i.vi = sub nsw i32 %i.vg, %i.vh                ; 6 uses
  %i.vj = and i32 %i.vf, -64                      ; 6 uses
  %i.vk = icmp slt i32 %i.vj, %i.vi
  br i1 %i.vk, label %bb.cb, label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  %i.vl = ashr i32 %i.vf, 6
  %i.vm = and i32 %i.vf, 63
  %i.vn = zext nneg i32 %i.vm to i64
  %notmask.i.i.i.i.i34.i = shl nsw i64 -1, %i.vn
  %i.vo = xor i64 %notmask.i.i.i.i.i34.i, -1
  %i.vp = sub nsw i32 %i.vi, %i.vd                ; 2 uses
  %i.vq = zext nneg i32 %i.vp to i64
  %notmask.i.i.i.i.i.i35.i = shl nsw i64 -1, %i.vq
  %i.vr = xor i64 %notmask.i.i.i.i.i.i35.i, -1
  %i.vs = sub nsw i32 64, %i.vp
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = shl i64 %i.vr, %i.vt
  %i.vv = and i64 %i.vu, %i.vo
  %i.vw = sext i32 %i.vl to i64
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.vb, i64 %i.vw
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !272
  %i.vz = and i64 %i.vv, %i.vy                    ; 2 uses
  %.not.i.i.i.i.i36.i = icmp eq i64 %i.vz, 0
  br i1 %.not.i.i.i.i.i36.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i, label %.preheader.i.i.i.i.i37.i

.preheader.i.i.i.i.i37.i:                         ; preds = %bb.cb
  %i.wa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.wg = load ptr, ptr %i.wa, align 8, !tbaa !570
  %i.wh = trunc nuw i8 %i.si to i1
  %i.wi = load ptr, ptr %i.wd, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit121.i, %.preheader.i.i.i.i.i37.i
  %.011.i.i.i.i.i38.i = phi i64 [ %i.vz, %.preheader.i.i.i.i.i37.i ], [ %i.xp, %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit121.i ] ; 3 uses
  %i.wj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i38.i, i1 true)
  %i.wk = trunc nuw nsw i64 %i.wj to i32
  %i.wl = or disjoint i32 %i.vj, %i.wk            ; 2 uses
  br i1 %i.wh, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wm = sext i32 %i.wl to i64
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.wi, i64 %i.wm
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.wo, %bb.cd ], [ %i.wl, %bb.cc ]
  %i.wp = sext i32 %.0.i.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.wq = lshr i64 %i.wp, 6
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.wq
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !272
  %i.wt = load i64, ptr %i.wb, align 8, !tbaa !316
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i
  %i.wu = load i32, ptr %i.we, align 8, !tbaa !317
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds i8, ptr %1, i64 %i.wv ; 2 uses
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !14  ; 2 uses
  %i.wy = load i8, ptr %i.wf, align 4, !tbaa !318 ; 2 uses
  %i.wz = and i8 %i.wy, %i.wx
  %.not7.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.wz, 0
  br i1 %.not7.not.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xa = xor i8 %i.wy, -1
  %i.xb = and i8 %i.wx, %i.xa
  store i8 %i.xb, ptr %i.ww, align 1, !tbaa !14
  %i.xc = load i64, ptr %i.wb, align 8, !tbaa !316
  %i.xd = add i64 %i.xc, -1
  store i64 %i.xd, ptr %i.wb, align 8, !tbaa !316
  br label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i

_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i: ; preds = %bb.cf, %bb.ce, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i.i.i.i.i.i
  %i.xe = and i64 %i.wp, 63
  %i.xf = shl nuw i64 1, %i.xe
  %i.xg = and i64 %i.xf, %i.ws
  %i.xh = icmp ne i64 %i.xg, 0
  %i.xi = load i32, ptr %i.wc, align 8, !tbaa !248
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %1, i64 %i.xj ; 2 uses
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !262, !range !66, !noundef !67
  %i.xm = icmp eq i8 %i.xl, 0
  %i.xn = and i1 %i.xh, %i.xm
  br i1 %i.xn, label %bb.cg, label %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit121.i

bb.cg:                                            ; preds = %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i
  store i8 1, ptr %i.xk, align 1, !tbaa !262
  br label %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit121.i

_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit121.i: ; preds = %bb.cg, %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i.i.i.i.i.i
  %i.xo = add nsw i64 %.011.i.i.i.i.i38.i, -1
  %i.xp = and i64 %i.xo, %.011.i.i.i.i.i38.i      ; 2 uses
  %.not10.i.i.i.i.i39.i = icmp eq i64 %i.xp, 0
  br i1 %.not10.i.i.i.i.i39.i, label %_ZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE18updateNonNullValueILb1EbPFvRbbEEEvPcT0_T1_.exit.i, label %bb.cc, !llvm.loop !8428

bb.ch:                                            ; preds = %bb.ca
  %.not32.i.i.i.i23.i = icmp eq i32 %i.vd, %i.vi
  br i1 %.not32.i.i.i.i23.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS4_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEbEUlS8_biE_EEvSE_SH_RKSL_T1_T2_bT_EUliE1_EEvPKmiibSV_ENKUlimE_clEim.exit45.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xq = sdiv i32 %i.vd, 64                      ; 2 uses
  %i.xr = sub nsw i32 %i.vi, %i.vd                ; 2 uses
  %i.xs = zext nneg i32 %i.xr to i64
  %notmask.i.i35.i.i.i.i24.i = shl nsw i64 -1, %i.xs
  %i.xt = xor i64 %notmask.i.i35.i.i.i.i24.i, -1
  %i.xu = sub nsw i32 64, %i.xr
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = shl i64 %i.xt, %i.xv
  %i.xx = sext i32 %i.xq to i64
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.vb, i64 %i.xx
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !272
  %i.ya = and i64 %i.xz, %i.xw                    ; 2 uses
  %.not.i36.i.i.i.i25.i = icmp eq i64 %i.ya, 0
  br i1 %.not.i36.i.i.i.i25.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS4_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEbEUlS8_biE_EEvSE_SH_RKSL_T1_T2_bT_EUliE1_EEvPKmiibSV_ENKUlimE_clEim.exit45.i.i.i.i.i, label %.preheader.i37.i.i.i.i26.i

.preheader.i37.i.i.i.i26.i:                       ; preds = %bb.ci
  %i.yb = shl nsw i32 %i.xq, 6
  %i.yc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.yf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.yi = load ptr, ptr %i.yc, align 8, !tbaa !570
  %i.yj = trunc nuw i8 %i.si to i1
  %i.yk = load ptr, ptr %i.yf, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit122.i, %.preheader.i37.i.i.i.i26.i
  %.011.i38.i.i.i.i27.i = phi i64 [ %i.ya, %.preheader.i37.i.i.i.i26.i ], [ %i.zr, %_ZN8facebook5velox9functions9aggregate12_GLOBAL__N_125SimpleNumericMaxAggregateIbE11updateGroupERbb.exit122.i ] ; 3 uses
  %i.yl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i27.i, i1 true)
  %i.ym = trunc nuw nsw i64 %i.yl to i32
  %i.yn = or disjoint i32 %i.yb, %i.ym            ; 2 uses
  br i1 %i.yj, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i39.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.yk, i64 %i.yo
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i39.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i39.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i40.i.i.i.i.i = phi i32 [ %i.yq, %bb.ck ], [ %i.yn, %bb.cj ]
  %i.yr = sext i32 %.0.i.i.i.i40.i.i.i.i.i to i64 ; 2 uses
  %i.ys = lshr i64 %i.yr, 6
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %i.ys
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !272
  %i.yv = load i64, ptr %i.yd, align 8, !tbaa !316
  %.not.i.i.i.i41.i.i.i.i.i = icmp eq i64 %i.yv, 0
  br i1 %.not.i.i.i.i41.i.i.i.i.i, label %_ZZN8facebook5velox9functions9aggregate22SimpleNumericAggregateIbbbE14updateOneGroupIbbPFvRbbEZNS2_12_GLOBAL__N_125SimpleNumericMaxAggregateIbE22addSingleGroupRawInputEPcRKNS0_17SelectivityVectorERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISJ_EEbEUlS6_biE_EEvSC_SF_RKSJ_T1_T2_bT_ENKUliE1_clEi.exit.i43.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i.i39.i.i.i.i.i
  %i.yw = load i32, ptr %i.yg, align 8, !tbaa !317
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr inbounds i8, ptr %1, i64 %i.yx ; 2 uses
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !14  ; 2 uses
  %i.za = load i8, ptr %i.yh, align 4, !tbaa !318 ; 2 uses
  %i.zb = and i8 %i.za, %i.yz
  %.not7.not.i.i.i.i42.i.i.i.i.i = icmp eq i8 %i.zb, 0
end_hunk_1
