Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_lz77?download=true
inline.NumInlined: 1422
inline.NumDeleted: 784
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3jxl9ApplyLZ77ERKNS_15HistogramParamsEmRKNSt3__16vectorINS4_INS_5TokenENS3_9allocatorIS5_EEEENS6_IS8_EEEERKNS_10LZ77ParamsE:bb.a
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef %i.pw) #20, !noalias !230
  br label %_ZN3jxl12_GLOBAL__N_119SymbolCostEstimatorD2Ev.exit.i34

_ZN3jxl12_GLOBAL__N_119SymbolCostEstimatorD2Ev.exit.i34: ; preds = %bb.bf, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !230
  %.pre368.i = load ptr, ptr %5, align 8, !tbaa !30, !noalias !230
  br label %bb.ee

bb.bg:                                            ; preds = %_ZNSt3__17reverseB8nn180100INS_11__wrap_iterIPN3jxl5TokenEEEEEvT_S6_.exit.i, %.lr.ph318.i
  %.sroa.0.1.i = phi ptr [ null, %.lr.ph318.i ], [ %.sroa.0.2465.i, %_ZNSt3__17reverseB8nn180100INS_11__wrap_iterIPN3jxl5TokenEEEEEvT_S6_.exit.i ] ; 2 uses
  %.sroa.13.1.i = phi ptr [ null, %.lr.ph318.i ], [ %.sroa.13.2466.i, %_ZNSt3__17reverseB8nn180100INS_11__wrap_iterIPN3jxl5TokenEEEEEvT_S6_.exit.i ] ; 2 uses
  %i.px = phi ptr [ %.pre364.i, %.lr.ph318.i ], [ %i.anp, %_ZNSt3__17reverseB8nn180100INS_11__wrap_iterIPN3jxl5TokenEEEEEvT_S6_.exit.i ]
  %.0317.i = phi i64 [ 0, %.lr.ph318.i ], [ %i.ann, %_ZNSt3__17reverseB8nn180100INS_11__wrap_iterIPN3jxl5TokenEEEEEvT_S6_.exit.i ] ; 5 uses
  %i.py = load ptr, ptr %i.nx, align 8, !tbaa !35, !noalias !230
  %i.pz = load ptr, ptr %i.nw, align 8, !tbaa !36, !noalias !230 ; 2 uses
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = ashr exact i64 %i.qc, 3
  %i.qe = icmp ugt i64 %i.qd, %.0317.i
  br i1 %i.qe, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %.0317.i
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !37, !noalias !230
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.qh = phi i64 [ %i.qg, %bb.bh ], [ 0, %bb.bg ] ; 3 uses
  %i.qi = getelementptr inbounds nuw [24 x i8], ptr %i.px, i64 %.0317.i ; 10 uses
  %i.qj = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %.0317.i ; 17 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 8 ; 7 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !42, !noalias !230 ; 3 uses
  %i.qm = load ptr, ptr %i.qi, align 8, !tbaa !43, !noalias !230 ; 3 uses
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qn, %i.qo                    ; 3 uses
  %i.qq = ashr exact i64 %i.qp, 3                 ; 3 uses
  %i.qr = add nsw i64 %i.qq, 1                    ; 4 uses
  %i.qs = load ptr, ptr %i.ny, align 8, !tbaa !48, !noalias !230
  %i.qt = load ptr, ptr %7, align 8, !tbaa !49, !noalias !230 ; 2 uses
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv
  %i.qx = ashr exact i64 %i.qw, 2                 ; 3 uses
  %i.qy = icmp ult i64 %i.qx, %i.qr
  br i1 %i.qy, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.qz = sub nuw nsw i64 %i.qr, %i.qx
  call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.qz) #19, !noalias !230
  %.pre365.i = load ptr, ptr %i.qk, align 8, !tbaa !42, !noalias !230 ; 2 uses
  %.pre366.i = load ptr, ptr %i.qi, align 8, !tbaa !43, !noalias !230 ; 2 uses
  %.pre369.i = ptrtoint ptr %.pre365.i to i64
  %.pre370.i = ptrtoint ptr %.pre366.i to i64
  %.pre372.i = sub i64 %.pre369.i, %.pre370.i     ; 2 uses
  %.pre374.i = ashr exact i64 %.pre372.i, 3
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.i16

bb.bk:                                            ; preds = %bb.bi
  %i.ra = icmp ugt i64 %i.qx, %i.qr
  br i1 %i.ra, label %bb.bl, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.i16

bb.bl:                                            ; preds = %bb.bk
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.qr
  store ptr %i.rb, ptr %i.ny, align 8, !tbaa !48, !noalias !230
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.i16

_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.i16: ; preds = %bb.bl, %bb.bk, %bb.bj
  %.pre-phi375.i = phi i64 [ %.pre374.i, %bb.bj ], [ %i.qq, %bb.bk ], [ %i.qq, %bb.bl ] ; 2 uses
  %.pre-phi373.i = phi i64 [ %.pre372.i, %bb.bj ], [ %i.qp, %bb.bk ], [ %i.qp, %bb.bl ] ; 3 uses
  %i.rc = phi ptr [ %.pre366.i, %bb.bj ], [ %i.qm, %bb.bk ], [ %i.qm, %bb.bl ] ; 2 uses
  %i.rd = phi ptr [ %.pre365.i, %bb.bj ], [ %i.ql, %bb.bk ], [ %i.ql, %bb.bl ]
  %.not322.i = icmp eq ptr %i.rd, %i.rc
  br i1 %.not322.i, label %._crit_edge.i23, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.i16
  %.val.i18 = load i64, ptr %6, align 8, !tbaa !51, !noalias !230
  %.val149.i = load ptr, ptr %i.nz, align 8, !tbaa !49, !noalias !230
  %i.re = load ptr, ptr %7, align 8, !tbaa !49, !noalias !230 ; 2 uses
  %umax.i19 = call i64 @llvm.umax.i64(i64 %.pre-phi375.i, i64 1)
  br label %bb.bp

._crit_edge.i23:                                  ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i21, %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.i16
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qj, i64 16 ; 9 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !52, !noalias !230
  %i.rh = load ptr, ptr %i.qj, align 8, !tbaa !43, !noalias !230
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = ptrtoint ptr %i.rh to i64               ; 2 uses
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = icmp ugt i64 %.pre-phi373.i, %i.rk
  br i1 %i.rl, label %bb.bm, label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit.i24

bb.bm:                                            ; preds = %._crit_edge.i23
  %i.rm = icmp ugt i64 %.pre-phi375.i, 2305843009213693951
  br i1 %i.rm, label %bb.bn, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i55

bb.bn:                                            ; preds = %bb.bm
  call void @_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.qj) #17, !noalias !230
  unreachable

_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i55: ; preds = %bb.bm
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 3 uses
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !42, !noalias !230
  %i.rp = ptrtoint ptr %i.ro to i64
  %i.rq = sub i64 %i.rp, %i.rj
  %i.rr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi373.i) #18, !noalias !230 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rq ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 %.pre-phi373.i
  %i.ru = load ptr, ptr %i.rn, align 8, !tbaa !42, !noalias !230 ; 2 uses
  %i.rv = load ptr, ptr %i.qj, align 8, !tbaa !43, !noalias !230 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i56 = icmp eq ptr %i.ru, %i.rv
  br i1 %.not4.i.i.i.i.i.i.i.i.i56, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i.i.i57:                       ; preds = %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i55, %.lr.ph.i.i.i.i.i.i.i.i.i57
  %i.rw = phi ptr [ %i.ry, %.lr.ph.i.i.i.i.i.i.i.i.i57 ], [ %i.rs, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i55 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i58 = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i.i.i.i.i57 ], [ %i.ru, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i55 ]
  %i.rx = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i58, i64 -8 ; 3 uses
  %i.ry = getelementptr inbounds i8, ptr %i.rw, i64 -8 ; 3 uses
  %i.rz = load i64, ptr %i.rx, align 4, !noalias !231
  store i64 %i.rz, ptr %i.ry, align 4, !noalias !231
  %.not.i.i.i.i.i.i.i.i.i59 = icmp eq ptr %i.rx, %i.rv
  br i1 %.not.i.i.i.i.i.i.i.i.i59, label %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i60, label %.lr.ph.i.i.i.i.i.i.i.i.i57, !llvm.loop !0

_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i57, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i55
  %storemerge.i175.i = phi ptr [ %i.rs, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEEC2EmmS5_.exit.i.i55 ], [ %i.ry, %.lr.ph.i.i.i.i.i.i.i.i.i57 ]
  store ptr %storemerge.i175.i, ptr %i.qj, align 8, !tbaa !52, !noalias !230
  store ptr %i.rs, ptr %i.rn, align 8, !tbaa !52, !noalias !230
  %i.sa = load ptr, ptr %i.rf, align 8, !tbaa !52, !noalias !230
  store ptr %i.rt, ptr %i.rf, align 8, !tbaa !52, !noalias !230
  %.not.i.i176.i = icmp eq ptr %i.rv, null
  br i1 %.not.i.i176.i, label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit.i24, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i60
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = ptrtoint ptr %i.rv to i64
  %i.sd = sub i64 %i.sb, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %i.rv, i64 noundef %i.sd) #20, !noalias !230
  br label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit.i24

_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit.i24: ; preds = %bb.bo, %_ZNSt3__114__split_bufferIN3jxl5TokenERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i60, %._crit_edge.i23
  %i.se = load ptr, ptr %i.qk, align 8, !tbaa !42, !noalias !230
  %i.sf = load ptr, ptr %i.qi, align 8, !tbaa !43, !noalias !230
  %i.sg = ptrtoint ptr %i.se to i64
  %i.sh = ptrtoint ptr %i.sf to i64
  %i.si = sub i64 %i.sg, %i.sh
  %i.sj = ashr exact i64 %i.si, 3                 ; 2 uses
  %i.sk = load i32, ptr %i.oa, align 8, !tbaa !61, !noalias !230 ; 3 uses
  %invariant.umin.i = call i64 @llvm.umin.i64(i64 %i.sj, i64 1048576)
  br label %bb.br

bb.bp:                                            ; preds = %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i21, %.lr.ph.i17
  %.0142264.i = phi i64 [ 0, %.lr.ph.i17 ], [ %i.ti, %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i21 ] ; 3 uses
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %.0142264.i ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !55, !noalias !230 ; 4 uses
  %i.so = icmp ult i32 %i.sn, 16
  br i1 %i.so, label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i21, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sp = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.sn, i1 true) ; 3 uses
  %.neg.i.i20 = ashr exact i32 -2147483648, %i.sp
  %i.sq = add i32 %.neg.i.i20, %i.sn
  %i.sr = sub nuw nsw i32 29, %i.sp               ; 2 uses
  %i.ss = lshr i32 %i.sq, %i.sr
  %i.st = shl nuw nsw i32 %i.sp, 2
  %reass.sub = sub nsw i32 %i.ss, %i.st
  %i.su = add nsw i32 %reass.sub, 124
  %i.sv = uitofp nneg i32 %i.sr to float
  br label %_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i21

_ZNK3jxl16HybridUintConfig6EncodeEjPjS1_S1_.exit.i21: ; preds = %bb.bq, %bb.bp
  %.0236.i = phi i32 [ %i.su, %bb.bq ], [ %i.sn, %bb.bp ]
  %.0235.i = phi float [ %i.sv, %bb.bq ], [ 0.000000e+00, %bb.bp ]
  %i.sw = load i32, ptr %i.sl, align 4, !noalias !230
  %i.sx = lshr i32 %i.sw, 1
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = zext nneg i32 %.0236.i to i64
  %i.ta = mul i64 %.val.i18, %i.sy
  %i.tb = getelementptr [4 x i8], ptr %.val149.i, i64 %i.ta
  %i.tc = getelementptr [4 x i8], ptr %i.tb, i64 %i.sz
  %i.td = load float, ptr %i.tc, align 4, !tbaa !57, !noalias !230
  %i.te = fadd float %.0235.i, %i.td
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %.0142264.i
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !57, !noalias !230
  %i.th = fadd float %i.te, %i.tg
  %i.ti = add nuw i64 %.0142264.i, 1              ; 3 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %i.ti
  store float %i.th, ptr %i.tj, align 4, !tbaa !57, !noalias !230
  %exitcond.not.i22 = icmp eq i64 %i.ti, %umax.i19
  br i1 %exitcond.not.i22, label %._crit_edge.i23, label %bb.bp, !llvm.loop !178

bb.br:                                            ; preds = %bb.br, %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit.i24
  %.0141.i = phi i64 [ 1, %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE7reserveEm.exit.i24 ], [ %i.tl, %bb.br ] ; 3 uses
  %i.tk = icmp samesign ult i64 %.0141.i, %invariant.umin.i
  %i.tl = shl nuw nsw i64 %.0141.i, 1
  br i1 %i.tk, label %bb.br, label %bb.bs, !llvm.loop !179

bb.bs:                                            ; preds = %bb.br
  %i.tm = zext i32 %i.sk to i64                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !230
  %i.tn = load ptr, ptr %i.qi, align 8, !tbaa !43, !noalias !230 ; 2 uses
  %i.to = load ptr, ptr %i.qk, align 8, !tbaa !42, !noalias !230
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = ptrtoint ptr %i.tn to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = ashr exact i64 %i.tr, 3
  call fastcc void @_ZN3jxl12_GLOBAL__N_19HashChainC2EPKNS_5TokenEmmmmm(ptr noundef nonnull align 8 dereferenceable(284) %8, ptr noundef %i.tn, i64 noundef %i.ts, i64 noundef %.0141.i, i64 noundef %i.tm, i64 noundef %i.sj, i64 noundef %i.qh) #19, !noalias !230
  %i.tt = load ptr, ptr %i.qk, align 8, !tbaa !42, !noalias !230
  %i.tu = load ptr, ptr %i.qi, align 8, !tbaa !43, !noalias !230
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = ptrtoint ptr %i.tu to i64
  %i.tx = sub i64 %i.tv, %i.tw                    ; 3 uses
  %i.ty = ashr exact i64 %i.tx, 3
  %i.tz = add nsw i64 %i.ty, 1                    ; 3 uses
  %.not.i177.i = icmp ne i64 %i.tz, 0
  call void @llvm.assume(i1 %.not.i177.i)
  %i.ua = icmp ugt i64 %i.tz, 1152921504606846975
  br i1 %i.ua, label %bb.bt, label %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEE11__vallocateB8nn180100Em.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  call fastcc void @_ZNKSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEE20__throw_length_errorB8nn180100Ev() #17, !noalias !230
  unreachable

_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEE11__vallocateB8nn180100Em.exit.i.i: ; preds = %bb.bs
  %i.ub = shl nuw i64 %i.tz, 4                    ; 3 uses
  %i.uc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ub) #18, !noalias !230 ; 8 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ub
  %i.ue = lshr i64 %i.tx, 3
  %i.uf = add nuw nsw i64 %i.ue, 1
  %xtraiter = and i64 %i.uf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEE11__vallocateB8nn180100Em.exit.i.i, %.lr.ph.i.i.i.prol
  %.sroa.4.07.i.i.i.prol = phi ptr [ %i.uh, %.lr.ph.i.i.i.prol ], [ %i.uc, %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEE11__vallocateB8nn180100Em.exit.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEE11__vallocateB8nn180100Em.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.07.i.i.i.prol, i8 0, i64 12, i1 false), !noalias !230
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i.prol, i64 12
  store float f0x7F7FFFFF, ptr %i.ug, align 4, !tbaa !233, !noalias !230
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !180

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEE11__vallocateB8nn180100Em.exit.i.i
  %.sroa.4.07.i.i.i.unr = phi ptr [ %i.uc, %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEE11__vallocateB8nn180100Em.exit.i.i ], [ %i.uh, %.lr.ph.i.i.i.prol ]
  %i.ui = and i64 %i.tx, 9223372036854775800
  %i.uj = icmp samesign ult i64 %i.ui, 56
  br i1 %i.uj, label %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEEC2Em.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.4.07.i.i.i = phi ptr [ %i.uz, %.lr.ph.i.i.i ], [ %.sroa.4.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.07.i.i.i, i8 0, i64 12, i1 false), !noalias !230
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 12
  store float f0x7F7FFFFF, ptr %i.uk, align 4, !tbaa !233, !noalias !230
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ul, i8 0, i64 12, i1 false), !noalias !230
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 28
  store float f0x7F7FFFFF, ptr %i.um, align 4, !tbaa !233, !noalias !230
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.un, i8 0, i64 12, i1 false), !noalias !230
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 44
  store float f0x7F7FFFFF, ptr %i.uo, align 4, !tbaa !233, !noalias !230
  %i.up = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.up, i8 0, i64 12, i1 false), !noalias !230
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 60
  store float f0x7F7FFFFF, ptr %i.uq, align 4, !tbaa !233, !noalias !230
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ur, i8 0, i64 12, i1 false), !noalias !230
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 76
  store float f0x7F7FFFFF, ptr %i.us, align 4, !tbaa !233, !noalias !230
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ut, i8 0, i64 12, i1 false), !noalias !230
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 92
  store float f0x7F7FFFFF, ptr %i.uu, align 4, !tbaa !233, !noalias !230
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.uv, i8 0, i64 12, i1 false), !noalias !230
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 108
  store float f0x7F7FFFFF, ptr %i.uw, align 4, !tbaa !233, !noalias !230
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ux, i8 0, i64 12, i1 false), !noalias !230
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 124
  store float f0x7F7FFFFF, ptr %i.uy, align 4, !tbaa !233, !noalias !230
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i, i64 128 ; 2 uses
  %.not.i.i178.i.7 = icmp eq ptr %i.uz, %i.ud
  br i1 %.not.i.i178.i.7, label %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEEC2Em.exit.i, label %.lr.ph.i.i.i, !llvm.loop !181

_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEEC2Em.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.va = getelementptr inbounds nuw i8, ptr %i.uc, i64 12
  store float 0.000000e+00, ptr %i.va, align 4, !tbaa !233, !noalias !230
  %i.vb = load ptr, ptr %i.qk, align 8, !tbaa !42, !noalias !230
  %i.vc = load ptr, ptr %i.qi, align 8, !tbaa !43, !noalias !230 ; 2 uses
  %.not325.i = icmp eq ptr %i.vb, %i.vc
  br i1 %.not325.i, label %._crit_edge316.i, label %.lr.ph311.i

.lr.ph311.i:                                      ; preds = %_ZNSt3__16vectorIZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS1_15HistogramParamsEmRKNS0_INS0_INS1_5TokenENS_9allocatorIS6_EEEENS7_IS9_EEEERKNS1_10LZ77ParamsEE9MatchInfoNS7_ISH_EEEC2Em.exit.i
  %i.vd = icmp eq i64 %i.qh, 0
  %i.ve = icmp ne i64 %i.qh, 0
  br label %bb.bu

.preheader246.i:                                  ; preds = %.thread.i25
  %.not313.i = icmp eq ptr %i.aje, %i.ajd
  br i1 %.not313.i, label %._crit_edge316.i, label %.lr.ph315.i

.lr.ph315.i:                                      ; preds = %.preheader246.i
  %i.vf = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 8 uses
  br label %bb.dr

bb.bu:                                            ; preds = %.thread.i25, %.lr.ph311.i
  %i.vg = phi ptr [ %i.vc, %.lr.ph311.i ], [ %i.ajd, %.thread.i25 ] ; 2 uses
  %.sroa.0.3.i = phi ptr [ %.sroa.0.1.i, %.lr.ph311.i ], [ %.sroa.0.4.i, %.thread.i25 ] ; 5 uses
  %.sroa.13.3.i = phi ptr [ %.sroa.13.1.i, %.lr.ph311.i ], [ %.sroa.13.8.i, %.thread.i25 ] ; 3 uses
  %.0135310.i = phi i64 [ 0, %.lr.ph311.i ], [ %i.xy, %.thread.i25 ] ; 18 uses
  %.0136309.i = phi i64 [ 0, %.lr.ph311.i ], [ %.2.i27, %.thread.i25 ] ; 2 uses
  %.0138308.i = phi i64 [ 0, %.lr.ph311.i ], [ %.3.i26, %.thread.i25 ] ; 3 uses
  %i.vh = add i64 %.0135310.i, 2                  ; 3 uses
  %i.vi = load i64, ptr %8, align 8, !tbaa !91, !noalias !230 ; 5 uses
  %i.vj = icmp ult i64 %i.vh, %i.vi               ; 2 uses
  br i1 %i.vj, label %bb.bv, label %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.vk = load ptr, ptr %i.ob, align 8, !tbaa !92, !noalias !230 ; 2 uses
  %i.vl = getelementptr [4 x i8], ptr %i.vk, i64 %.0135310.i ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !93, !noalias !230
  %i.vn = getelementptr i8, ptr %i.vl, i64 4
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !93, !noalias !230
  %i.vp = load i32, ptr %i.oc, align 8, !tbaa !94, !noalias !230 ; 2 uses
  %i.vq = shl i32 %i.vo, %i.vp
  %i.vr = xor i32 %i.vq, %i.vm
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.vh
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !93, !noalias !230
  %i.vu = shl i32 %i.vp, 1
  %i.vv = shl i32 %i.vt, %i.vu
  %i.vw = xor i32 %i.vr, %i.vv
  %i.vx = load i32, ptr %i.od, align 4, !tbaa !95, !noalias !230
  %i.vy = and i32 %i.vw, %i.vx
  br label %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i.i

_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i.i: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i = phi i32 [ %i.vy, %bb.bv ], [ 0, %bb.bu ] ; 2 uses
  %i.vz = load i64, ptr %i.oe, align 8, !tbaa !96, !noalias !230 ; 2 uses
  %i.wa = and i64 %i.vz, %.0135310.i              ; 2 uses
  %i.wb = trunc i64 %i.wa to i32                  ; 7 uses
  %i.wc = and i64 %i.wa, 4294967295               ; 5 uses
  %i.wd = load ptr, ptr %i.of, align 8, !tbaa !97, !noalias !230
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %i.wc
  store i32 %.0.i.i.i, ptr %i.we, align 4, !tbaa !93, !noalias !230
  %i.wf = zext i32 %.0.i.i.i to i64
  %i.wg = load ptr, ptr %i.og, align 8, !tbaa !97, !noalias !230
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %i.wf ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !93, !noalias !230 ; 2 uses
  %.not.i179.i = icmp eq i32 %i.wi, -1
  br i1 %.not.i179.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i.i
  %i.wj = load ptr, ptr %i.oh, align 8, !tbaa !92, !noalias !230
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.wc
  store i32 %i.wi, ptr %i.wk, align 4, !tbaa !93, !noalias !230
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i.i
  store i32 %i.wb, ptr %i.wh, align 4, !tbaa !93, !noalias !230
  %.not16.i.i = icmp eq i64 %.0135310.i, 0
  br i1 %.not16.i.i, label %._crit_edge, label %bb.by

._crit_edge:                                      ; preds = %bb.bx
  %.pre = load i64, ptr %i.oj, align 8, !tbaa !98, !noalias !230
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.wl = load ptr, ptr %i.ob, align 8, !tbaa !92, !noalias !230
  %i.wm = getelementptr [4 x i8], ptr %i.wl, i64 %.0135310.i ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !93, !noalias !230
  %i.wo = getelementptr i8, ptr %i.wm, i64 -4
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !93, !noalias !230
  %.not17.i.i = icmp eq i32 %i.wn, %i.wp
  %.pre185 = load i64, ptr %i.oj, align 8, !tbaa !98, !noalias !230 ; 2 uses
  br i1 %.not17.i.i, label %bb.bz, label %.thread467.i

.thread467.i:                                     ; preds = %bb.by
  store i32 0, ptr %i.oi, align 8, !tbaa !99, !noalias !230
  %i.wq = add i64 %.pre185, %.0135310.i
  %spec.select.i.i468.i = call i64 @llvm.umin.i64(i64 %i.wq, i64 %i.vi)
  br label %.preheader.i.i.i

bb.bz:                                            ; preds = %._crit_edge, %bb.by
  %i.wr = phi i64 [ %.pre, %._crit_edge ], [ %.pre185, %bb.by ]
  %.pr.i = load i32, ptr %i.oi, align 8, !tbaa !99, !noalias !230 ; 4 uses
  %i.ws = add i64 %i.wr, %.0135310.i              ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.ws, i64 %i.vi) ; 2 uses
  %.not.i.i180.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i.i180.i, label %.preheader.i.i.i, label %bb.ca

.preheader.i.i.i:                                 ; preds = %bb.bz, %.thread467.i
  %spec.select.i.i470.i = phi i64 [ %spec.select.i.i468.i, %.thread467.i ], [ %spec.select.i.i.i, %bb.bz ] ; 2 uses
  %i.wt = icmp ult i64 %.0135310.i, %spec.select.i.i470.i
  br i1 %i.wt, label %.lr.ph.i.i181.i, label %_ZNK3jxl12_GLOBAL__N_19HashChain10CountZerosEmj.exit.i.i

.lr.ph.i.i181.i:                                  ; preds = %.preheader.i.i.i
end_hunk_0
begin_hunk_1_@_ZN3jxl9ApplyLZ77ERKNS_15HistogramParamsEmRKNSt3__16vectorINS4_INS_5TokenENS3_9allocatorIS5_EEEENS6_IS8_EEEERKNS_10LZ77ParamsE:bb.a
  br i1 %min.iters.check426, label %.lr.ph.i11.i.i.preheader, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph.preheader.i9.i.i
  %n.vec428 = and i64 %i.adq, 9223372036854775800 ; 3 uses
  %i.adr = shl i64 %n.vec428, 2
  %i.ads = getelementptr i8, ptr %i.adl, i64 %i.adr
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.acj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next432, %vector.body429 ] ; 2 uses
  %i.adt = shl i64 %index430, 2
  %next.gep431 = getelementptr i8, ptr %i.adl, i64 %i.adt ; 2 uses
  %i.adu = getelementptr i8, ptr %next.gep431, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep431, align 4, !tbaa !93, !noalias !230
  store <4 x i32> %broadcast.splat, ptr %i.adu, align 4, !tbaa !93, !noalias !230
  %index.next432 = add nuw i64 %index430, 8       ; 2 uses
  %i.adv = icmp eq i64 %index.next432, %n.vec428
  br i1 %i.adv, label %middle.block433, label %vector.body429, !llvm.loop !185

middle.block433:                                  ; preds = %vector.body429
  %cmp.n434 = icmp eq i64 %i.adq, %n.vec428
  br i1 %cmp.n434, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i, label %.lr.ph.i11.i.i.preheader

.lr.ph.i11.i.i.preheader:                         ; preds = %.lr.ph.preheader.i9.i.i, %middle.block433
  %.sroa.0.06.i.i.i.ph = phi ptr [ %i.adl, %.lr.ph.preheader.i9.i.i ], [ %i.ads, %middle.block433 ]
  br label %.lr.ph.i11.i.i

.lr.ph.i11.i.i:                                   ; preds = %.lr.ph.i11.i.i.preheader, %.lr.ph.i11.i.i
  %.sroa.0.06.i.i.i = phi ptr [ %i.adw, %.lr.ph.i11.i.i ], [ %.sroa.0.06.i.i.i.ph, %.lr.ph.i11.i.i.preheader ] ; 2 uses
  store i32 %i.acj, ptr %.sroa.0.06.i.i.i, align 4, !tbaa !93, !noalias !230
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 4 ; 2 uses
  %.not.i12.i.i = icmp eq ptr %i.adw, %i.adm
  br i1 %.not.i12.i.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i, label %.lr.ph.i11.i.i, !llvm.loop !186

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i: ; preds = %.lr.ph.i11.i.i, %middle.block433
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %.0.i.i214.i ; 2 uses
  %.not4.i.i.i.i.i.i.i.i216.i = icmp eq ptr %i.zy, %storemerge.i220272276.i
  br i1 %.not4.i.i.i.i.i.i.i.i216.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader

.lr.ph.i.i.i.i.i.i.i.i217.i.preheader:            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i
  %i.ady = add i64 %i.acl, -4
  %i.adz = sub i64 %i.ady, %i.acm                 ; 2 uses
  %i.aea = lshr i64 %i.adz, 2
  %i.aeb = add nuw nsw i64 %i.aea, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.adz, 28
  %i.aec = sub i64 %i.adk, %i.acm
  %diff.check = icmp ugt i64 %i.aec, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader
  %n.vec = and i64 %i.aeb, 9223372036854775800    ; 3 uses
  %i.aed = mul i64 %n.vec, -4                     ; 2 uses
  %i.aee = getelementptr i8, ptr %i.adl, i64 %i.aed ; 2 uses
  %i.aef = getelementptr i8, ptr %i.zy, i64 %i.aed
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aeg = mul i64 %index, -4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.adl, i64 %i.aeg ; 2 uses
  %next.gep422 = getelementptr i8, ptr %i.zy, i64 %i.aeg ; 2 uses
  %i.aeh = getelementptr inbounds i8, ptr %next.gep422, i64 -16
  %i.aei = getelementptr inbounds i8, ptr %next.gep422, i64 -32
  %wide.load = load <4 x i32>, ptr %i.aeh, align 4, !tbaa !93, !noalias !237
  %wide.load423 = load <4 x i32>, ptr %i.aei, align 4, !tbaa !93, !noalias !237
  %i.aej = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.aek = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.aej, align 4, !tbaa !93, !noalias !237
  store <4 x i32> %wide.load423, ptr %i.aek, align 4, !tbaa !93, !noalias !237
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ael = icmp eq i64 %index.next, %n.vec
  br i1 %i.ael, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aeb, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474

.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader, %middle.block
  %.ph = phi ptr [ %i.adl, %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader ], [ %i.aee, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i218.i.ph = phi ptr [ %i.zy, %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader ], [ %i.aef, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i217.i

.lr.ph.i.i.i.i.i.i.i.i217.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474, %.lr.ph.i.i.i.i.i.i.i.i217.i
  %i.aem = phi ptr [ %i.aep, %.lr.ph.i.i.i.i.i.i.i.i217.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i218.i = phi ptr [ %i.aen, %.lr.ph.i.i.i.i.i.i.i.i217.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i218.i.ph, %.lr.ph.i.i.i.i.i.i.i.i217.i.preheader474 ]
  %i.aen = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i218.i, i64 -4 ; 3 uses
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !93, !noalias !237
  %i.aep = getelementptr inbounds i8, ptr %i.aem, i64 -4 ; 3 uses
  store i32 %i.aeo, ptr %i.aep, align 4, !tbaa !93, !noalias !237
  %.not.i.i.i.i.i.i.i.i219.i = icmp eq ptr %i.aen, %storemerge.i220272276.i
  br i1 %.not.i.i.i.i.i.i.i.i219.i, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i217.i, !llvm.loop !196

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i217.i, %middle.block, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i
  %storemerge.i220.i = phi ptr [ %i.adl, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE18__construct_at_endEmRKj.exit.i.i ], [ %i.aee, %middle.block ], [ %i.aep, %.lr.ph.i.i.i.i.i.i.i.i217.i ] ; 2 uses
  %.not.i13.i.i = icmp eq ptr %storemerge.i220272276.i, null
  br i1 %.not.i13.i.i, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEmRKj.exit.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %storemerge.i220272276.i, i64 noundef %i.adf) #20, !noalias !230
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEmRKj.exit.i

_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEmRKj.exit.i: ; preds = %.lr.ph.i.i212.i, %middle.block446, %bb.dc, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i, %bb.cz
  %.sroa.13.5.i = phi ptr [ %.sroa.13.4.i, %bb.cz ], [ %i.adx, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.adx, %bb.dc ], [ %.sroa.13.4.i, %middle.block446 ], [ %.sroa.13.4.i, %.lr.ph.i.i212.i ]
  %storemerge.i220271.i = phi ptr [ %storemerge.i220272276.i, %bb.cz ], [ %storemerge.i220.i, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %storemerge.i220.i, %bb.dc ], [ %storemerge.i220272276.i, %middle.block446 ], [ %storemerge.i220272276.i, %.lr.ph.i.i212.i ] ; 2 uses
  %i.aeq = phi ptr [ %i.zy, %bb.cz ], [ %i.adm, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i ], [ %i.adm, %bb.dc ], [ %i.acu, %middle.block446 ], [ %i.acu, %.lr.ph.i.i212.i ]
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i220271.i, i64 %i.aaw ; 2 uses
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !93, !noalias !230
  %i.aet = zext i32 %i.aes to i64
  %i.aeu = icmp ult i64 %i.ack, %i.aet
  br i1 %i.aeu, label %bb.dd, label %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i"

bb.dd:                                            ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEmRKj.exit.i
  store i32 %i.acj, ptr %i.aer, align 4, !tbaa !93, !noalias !230
  br label %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i"

"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i": ; preds = %bb.dd, %_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEmRKj.exit.i
  %spec.select.i.i = call i32 @llvm.umax.i32(i32 %i.aav, i32 %.059.i280.i)
  br label %bb.de

bb.de:                                            ; preds = %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i", %.critedge.i.i, %.lr.ph281.i
  %.sroa.13.6.i = phi ptr [ %.sroa.13.4.i, %.critedge.i.i ], [ %.sroa.13.5.i, %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i" ], [ %.sroa.13.4.i, %.lr.ph281.i ] ; 7 uses
  %storemerge.i220269.i = phi ptr [ %storemerge.i220272276.i, %.critedge.i.i ], [ %storemerge.i220271.i, %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i" ], [ %storemerge.i220272276.i, %.lr.ph281.i ] ; 7 uses
  %i.aev = phi ptr [ %i.zy, %.critedge.i.i ], [ %i.aeq, %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i" ], [ %i.zy, %.lr.ph281.i ] ; 7 uses
  %.3.i.i = phi i32 [ %.059.i280.i, %.critedge.i.i ], [ %spec.select.i.i, %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i" ], [ %.059.i280.i, %.lr.ph281.i ]
  %.056.i.i = phi i32 [ %i.aav, %.critedge.i.i ], [ %i.aav, %"_ZZN3jxl12_GLOBAL__N_117ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS5_INS_5TokenENS4_9allocatorIS6_EEEENS7_IS9_EEEERKNS_10LZ77ParamsEENK3$_0clEmm.exit.i.i" ], [ 0, %.lr.ph281.i ]
  %i.aew = add nuw i32 %.061.i279.i, 1            ; 2 uses
  %i.aex = load i32, ptr %i.os, align 8, !tbaa !112, !noalias !230
  %.not79.i.i = icmp ult i32 %i.aew, %i.aex
  br i1 %.not79.i.i, label %bb.df, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i"

bb.df:                                            ; preds = %bb.de
  %i.aey = load i32, ptr %i.oi, align 8, !tbaa !99, !noalias !230 ; 3 uses
  %i.aez = icmp ugt i32 %i.aey, 2
  %i.afa = icmp ugt i32 %.056.i.i, %i.aey
  %or.cond82.i.i = and i1 %i.aez, %i.afa
  %i.afb = zext i32 %.065.i277.i to i64           ; 2 uses
  br i1 %or.cond82.i.i, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.afc = load ptr, ptr %i.om, align 8, !tbaa !92, !noalias !230
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.afc, i64 %i.afb
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !93, !noalias !230 ; 3 uses
  %i.aff = icmp eq i32 %.065.i277.i, %i.afe
  br i1 %i.aff, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i", label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.afg = zext i32 %i.afe to i64
  %i.afh = load ptr, ptr %i.ok, align 8, !tbaa !92, !noalias !230
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %i.afg
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !93, !noalias !230
  %.not81.i.i = icmp eq i32 %i.afj, %i.aey
  br i1 %.not81.i.i, label %bb.dk, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i"

bb.di:                                            ; preds = %bb.df
  %i.afk = load ptr, ptr %i.oh, align 8, !tbaa !92, !noalias !230
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %i.afb
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !93, !noalias !230 ; 3 uses
  %i.afn = icmp eq i32 %.065.i277.i, %i.afm
  br i1 %i.afn, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i", label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.afo = zext i32 %i.afm to i64
  %i.afp = load ptr, ptr %i.of, align 8, !tbaa !97, !noalias !230
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %i.afo
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !93, !noalias !230
  %.not80.i.i = icmp eq i32 %i.afr, %.0.i.i183.i
  br i1 %.not80.i.i, label %bb.dk, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i"

bb.dk:                                            ; preds = %bb.dj, %bb.dh
  %.166.i.i = phi i32 [ %i.afe, %bb.dh ], [ %i.afm, %bb.dj ] ; 4 uses
  %.not.i184.i = icmp ugt i32 %.166.i.i, %i.wb
  %i.afs = sub nuw i32 %i.wb, %.166.i.i
  %i.aft = load i64, ptr %i.oe, align 8, !noalias !230
  %i.afu = trunc i64 %i.aft to i32
  %i.afv = sub i32 %i.zm, %.166.i.i
  %i.afw = add i32 %i.afv, %i.afu
  %i.afx = select i1 %.not.i184.i, i32 %i.afw, i32 %i.afs ; 2 uses
  %i.afy = icmp slt i32 %i.afx, %i.zx
  br i1 %i.afy, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i", label %.lr.ph281.i

"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i": ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.de, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i182.i
  %.sroa.13.7.i = phi ptr [ %.sroa.13.3.i, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i182.i ], [ %.sroa.13.6.i, %bb.de ], [ %.sroa.13.6.i, %bb.dg ], [ %.sroa.13.6.i, %bb.dh ], [ %.sroa.13.6.i, %bb.di ], [ %.sroa.13.6.i, %bb.dj ], [ %.sroa.13.6.i, %bb.dk ] ; 3 uses
  %storemerge.i220273.i = phi ptr [ %.sroa.0.3.i, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i182.i ], [ %storemerge.i220269.i, %bb.de ], [ %storemerge.i220269.i, %bb.dg ], [ %storemerge.i220269.i, %bb.dh ], [ %storemerge.i220269.i, %bb.di ], [ %storemerge.i220269.i, %bb.dj ], [ %storemerge.i220269.i, %bb.dk ] ; 6 uses
  %i.afz = phi ptr [ %.sroa.0.3.i, %_ZNK3jxl12_GLOBAL__N_19HashChain7GetHashEm.exit.i182.i ], [ %i.aev, %bb.de ], [ %i.aev, %bb.dg ], [ %i.aev, %bb.dh ], [ %i.aev, %bb.di ], [ %i.aev, %bb.dj ], [ %i.aev, %bb.dk ] ; 2 uses
  %i.aga = ptrtoint ptr %i.afz to i64
  %i.agb = ptrtoint ptr %storemerge.i220273.i to i64
  %i.agc = sub i64 %i.aga, %i.agb
  %i.agd = ashr exact i64 %i.agc, 2               ; 5 uses
  %.not147.i = icmp ugt i64 %i.agd, %i.tm
  br i1 %.not147.i, label %.lr.ph304.preheader.i.a, label %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge"

"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge": ; preds = %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i"
  %.pre186 = load ptr, ptr %i.qi, align 8, !tbaa !43, !noalias !230
  br label %.thread.i25

.lr.ph304.preheader.i.a:                          ; preds = %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i"
  %i.age = getelementptr inbounds i8, ptr %i.afz, i64 -4 ; 2 uses
  %.0133299.i = add nsw i64 %i.agd, -1            ; 2 uses
  %.not148300.i = icmp ult i64 %.0133299.i, %i.tm
  br i1 %.not148300.i, label %.lr.ph306.i.loopexit, label %.lr.ph304.preheader.i

.lr.ph304.preheader.i:                            ; preds = %.lr.ph304.preheader.i.a
  %12 = load i32, ptr %i.age, align 4, !tbaa !93, !noalias !230
  %13 = zext i32 %12 to i64
  br label %.lr.ph304.i

.lr.ph306.i.loopexit:                             ; preds = %.lr.ph304.i, %.lr.ph304.preheader.i.a
  %i.agf = load ptr, ptr %i.qi, align 8, !tbaa !43, !noalias !230 ; 3 uses
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.agf, i64 %.0135310.i ; 2 uses
  %.val169.i = load i64, ptr %6, align 8, !noalias !230 ; 2 uses
  %.val170.i = load ptr, ptr %i.nz, align 8, !noalias !230 ; 2 uses
  %i.agh = load i32, ptr %i.ot, align 8, !tbaa !113, !noalias !238 ; 2 uses
  %i.agi = load i32, ptr %i.ox, align 4, !tbaa !114, !noalias !230
  %.val173.i = load i64, ptr %i.oy, align 8, !noalias !230
  %i.agj = mul i64 %.val173.i, %.val169.i
  %i.agk = getelementptr [4 x i8], ptr %.val170.i, i64 %i.agj
  br label %bb.dl

.lr.ph304.i:                                      ; preds = %.lr.ph304.i, %.lr.ph304.preheader.i
  %.0133302.i = phi i64 [ %.0133.i, %.lr.ph304.i ], [ %.0133299.i, %.lr.ph304.preheader.i ] ; 2 uses
  %.0134301.i = phi i64 [ %spec.select.i, %.lr.ph304.i ], [ %13, %.lr.ph304.preheader.i ]
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i220273.i, i64 %.0133302.i ; 2 uses
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !93, !noalias !230
  %i.agn = zext i32 %i.agm to i64
  %spec.select.i = call i64 @llvm.umin.i64(i64 %.0134301.i, i64 %i.agn) ; 2 uses
  %i.ago = trunc nuw i64 %spec.select.i to i32
  store i32 %i.ago, ptr %i.agl, align 4, !tbaa !93, !noalias !230
  %.0133.i = add i64 %.0133302.i, -1              ; 2 uses
  %.not148.i = icmp ult i64 %.0133.i, %i.tm
  br i1 %.not148.i, label %.lr.ph306.i.loopexit, label %.lr.ph304.i, !llvm.loop !201

._crit_edge307.i:                                 ; preds = %bb.dp
  %i.agp = load i32, ptr %i.age, align 4, !tbaa !93, !noalias !230 ; 2 uses
  %i.agq = icmp eq i32 %i.agp, 0
  %or.cond.i52 = select i1 %i.agq, i1 %i.vd, i1 false
  %i.agr = icmp eq i32 %i.agp, 1
  %or.cond3.i = select i1 %i.agr, i1 %i.ve, i1 false
  %or.cond320.i = select i1 %or.cond.i52, i1 true, i1 %or.cond3.i
  br i1 %or.cond320.i, label %bb.dq, label %.thread.i25

bb.dl:                                            ; preds = %bb.dp, %.lr.ph306.i.loopexit
  %.0132305.i = phi i64 [ %i.tm, %.lr.ph306.i.loopexit ], [ %i.aiy, %bb.dp ] ; 4 uses
  %i.ags = load i32, ptr %i.agg, align 4, !noalias !230
  %i.agt = lshr i32 %i.ags, 1
  %i.agu = zext nneg i32 %i.agt to i64
  %i.agv = trunc i64 %.0132305.i to i32           ; 2 uses
  %i.agw = sub i32 %i.agv, %i.sk                  ; 4 uses
  %i.agx = icmp ugt i32 %i.agh, %i.agw
  br i1 %i.agx, label %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.agy = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agw, i1 true) ; 2 uses
  %i.agz = xor i32 %i.agy, 31                     ; 3 uses
  %.neg.i.i.i = ashr exact i32 -2147483648, %i.agy
  %i.aha = add i32 %.neg.i.i.i, %i.agw            ; 2 uses
  %i.ahb = load i32, ptr %i.ou, align 4, !tbaa !115, !noalias !238
  %i.ahc = sub i32 %i.agz, %i.ahb
  %i.ahd = load i32, ptr %i.ov, align 4, !tbaa !116, !noalias !238 ; 2 uses
  %i.ahe = load i32, ptr %i.ow, align 8, !tbaa !117, !noalias !238 ; 3 uses
  %i.ahf = add i32 %i.ahe, %i.ahd                 ; 2 uses
  %i.ahg = shl i32 %i.ahc, %i.ahf
  %i.ahh = add i32 %i.ahg, %i.agh
  %i.ahi = sub i32 %i.agz, %i.ahd
  %i.ahj = lshr i32 %i.aha, %i.ahi
  %i.ahk = shl i32 %i.ahj, %i.ahe
  %i.ahl = add i32 %i.ahh, %i.ahk
  %notmask.i.i.i = shl nsw i32 -1, %i.ahe
  %i.ahm = xor i32 %notmask.i.i.i, -1
  %i.ahn = and i32 %i.aha, %i.ahm
  %i.aho = add i32 %i.ahl, %i.ahn
  %i.ahp = sub i32 %i.agz, %i.ahf
  %i.ahq = uitofp i32 %i.ahp to float
  br label %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i

_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i: ; preds = %bb.dm, %bb.dl
  %.02.i.i = phi float [ %i.ahq, %bb.dm ], [ 0.000000e+00, %bb.dl ]
  %.0.i187.i = phi i32 [ %i.aho, %bb.dm ], [ %i.agw, %bb.dl ]
  %i.ahr = add i32 %.0.i187.i, %i.agi
  %i.ahs = zext i32 %i.ahr to i64
  %i.aht = mul i64 %.val169.i, %i.agu
  %i.ahu = getelementptr [4 x i8], ptr %.val170.i, i64 %i.aht
  %i.ahv = getelementptr [4 x i8], ptr %i.ahu, i64 %i.ahs
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !57, !noalias !230
  %i.ahx = fadd float %.02.i.i, %i.ahw
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i220273.i, i64 %.0132305.i ; 2 uses
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !93, !noalias !230 ; 4 uses
  %i.aia = icmp ult i32 %i.ahz, 16
  br i1 %i.aia, label %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator8DistCostEmRKNS_10LZ77ParamsE.exit.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i
  %i.aib = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahz, i1 true) ; 3 uses
  %.neg.i.i188.i = ashr exact i32 -2147483648, %i.aib
  %i.aic = add i32 %.neg.i.i188.i, %i.ahz
  %i.aid = sub nuw nsw i32 29, %i.aib             ; 2 uses
  %i.aie = lshr i32 %i.aic, %i.aid
  %i.aif = shl nuw nsw i32 %i.aib, 2
  %reass.sub111 = sub nsw i32 %i.aie, %i.aif
  %i.aig = add nsw i32 %reass.sub111, 124
  %i.aih = uitofp nneg i32 %i.aid to float
  br label %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator8DistCostEmRKNS_10LZ77ParamsE.exit.i

_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator8DistCostEmRKNS_10LZ77ParamsE.exit.i: ; preds = %bb.dn, %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i
  %.05.i.i = phi float [ %i.aih, %bb.dn ], [ 0.000000e+00, %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i ]
  %.0.i189.in.i = phi i32 [ %i.aig, %bb.dn ], [ %i.ahz, %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator7LenCostEmmRKNS_10LZ77ParamsE.exit.i ]
  %.0.i189.i = zext nneg i32 %.0.i189.in.i to i64
  %i.aii = getelementptr [4 x i8], ptr %i.agk, i64 %.0.i189.i
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !57, !noalias !230
  %i.aik = fadd float %.05.i.i, %i.aij
  %i.ail = fadd float %i.ahx, %i.aik
  %i.aim = load float, ptr %i.xw, align 4, !tbaa !233, !noalias !230
  %i.ain = fadd float %i.aim, %i.ail              ; 2 uses
  %i.aio = getelementptr [16 x i8], ptr %i.xv, i64 %.0132305.i ; 4 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 12 ; 2 uses
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !233, !noalias !230
  %i.air = fcmp ogt float %i.aiq, %i.ain
  br i1 %i.air, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator8DistCostEmRKNS_10LZ77ParamsE.exit.i
  store i32 %i.agv, ptr %i.aio, align 4, !tbaa !235, !noalias !230
  %i.ais = load i32, ptr %i.ahy, align 4, !tbaa !93, !noalias !230
  %i.ait = add i32 %i.ais, 1
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aio, i64 4
  store i32 %i.ait, ptr %i.aiu, align 4, !tbaa !234, !noalias !230
  %i.aiv = load i32, ptr %i.agg, align 4, !noalias !230
  %i.aiw = lshr i32 %i.aiv, 1
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  store i32 %i.aiw, ptr %i.aix, align 4, !tbaa !236, !noalias !230
  store float %i.ain, ptr %i.aip, align 4, !tbaa !233, !noalias !230
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZNK3jxl12_GLOBAL__N_119SymbolCostEstimator8DistCostEmRKNS_10LZ77ParamsE.exit.i
  %i.aiy = add nuw i64 %.0132305.i, 1             ; 2 uses
  %exitcond354.not.i = icmp eq i64 %i.aiy, %i.agd
  br i1 %exitcond354.not.i, label %._crit_edge307.i, label %bb.dl, !llvm.loop !202

bb.dq:                                            ; preds = %._crit_edge307.i
  %i.aiz = add i64 %.0138308.i, 1                 ; 2 uses
  %i.aja = icmp ugt i64 %i.aiz, 7
  %i.ajb = icmp ugt i64 %i.agd, 9
  %or.cond238.i = and i1 %i.aja, %i.ajb           ; 2 uses
  %i.ajc = add nsw i64 %i.agd, -10
  %spec.select241.i = select i1 %or.cond238.i, i64 0, i64 %i.aiz
  %spec.select242.i = select i1 %or.cond238.i, i64 %i.ajc, i64 0
  br label %.thread.i25

.thread.i25:                                      ; preds = %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge", %bb.dq, %._crit_edge307.i, %bb.ci
  %i.ajd = phi ptr [ %i.agf, %bb.dq ], [ %i.agf, %._crit_edge307.i ], [ %.pre186, %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge" ], [ %i.vg, %bb.ci ] ; 3 uses
  %.sroa.0.4.i = phi ptr [ %storemerge.i220273.i, %bb.dq ], [ %storemerge.i220273.i, %._crit_edge307.i ], [ %storemerge.i220273.i, %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge" ], [ %.sroa.0.3.i, %bb.ci ] ; 3 uses
  %.sroa.13.8.i = phi ptr [ %.sroa.13.7.i, %bb.dq ], [ %.sroa.13.7.i, %._crit_edge307.i ], [ %.sroa.13.7.i, %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge" ], [ %.sroa.13.3.i, %bb.ci ] ; 3 uses
  %.3.i26 = phi i64 [ %spec.select241.i, %bb.dq ], [ 0, %._crit_edge307.i ], [ %.0138308.i, %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge" ], [ %.0138308.i, %bb.ci ]
  %.2.i27 = phi i64 [ %spec.select242.i, %bb.dq ], [ 0, %._crit_edge307.i ], [ 0, %"_ZNK3jxl12_GLOBAL__N_19HashChain11FindMatchesIZNS0_17ApplyLZ77_OptimalERKNS_15HistogramParamsEmRKNSt3__16vectorINS7_INS_5TokenENS6_9allocatorIS8_EEEENS9_ISB_EEEERKNS_10LZ77ParamsEE3$_0EEvmiRKT_.exit.i..thread.i25_crit_edge" ], [ %i.yp, %bb.ci ]
  %i.aje = load ptr, ptr %i.qk, align 8, !tbaa !42, !noalias !230 ; 2 uses
  %i.ajf = ptrtoint ptr %i.aje to i64
  %i.ajg = ptrtoint ptr %i.ajd to i64
  %i.ajh = sub i64 %i.ajf, %i.ajg
  %i.aji = ashr exact i64 %i.ajh, 3               ; 2 uses
  %i.ajj = icmp ult i64 %i.xy, %i.aji
  br i1 %i.ajj, label %bb.bu, label %.preheader246.i, !llvm.loop !203

bb.dr:                                            ; preds = %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJRjS7_EEERS2_DpOT_.exit.i, %.lr.ph315.i
  %.0131314.i = phi i64 [ %i.aji, %.lr.ph315.i ], [ %i.ana, %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJRjS7_EEERS2_DpOT_.exit.i ] ; 3 uses
  %i.ajk = getelementptr inbounds nuw [16 x i8], ptr %i.uc, i64 %.0131314.i ; 4 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 4
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !234, !noalias !230 ; 2 uses
  %i.ajn = icmp ne i32 %i.ajm, 0                  ; 2 uses
  br i1 %i.ajn, label %bb.ds, label %.critedge.i

bb.ds:                                            ; preds = %bb.dr
  %i.ajo = add i32 %i.ajm, -1                     ; 2 uses
  %i.ajp = load i64, ptr %i.oy, align 8, !tbaa !62, !noalias !230
  %i.ajq = trunc i64 %i.ajp to i32                ; 2 uses
  %i.ajr = load ptr, ptr %i.vf, align 8, !tbaa !42, !noalias !230 ; 5 uses
  %i.ajs = load ptr, ptr %i.rf, align 8, !tbaa !52, !noalias !230 ; 2 uses
  %i.ajt = icmp ult ptr %i.ajr, %i.ajs
  br i1 %i.ajt, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.aju = shl i32 %i.ajq, 1
  store i32 %i.aju, ptr %i.ajr, align 4, !noalias !230
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajr, i64 4
  store i32 %i.ajo, ptr %i.ajv, align 4, !tbaa !55, !noalias !230
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  br label %_ZNSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit.i51

bb.du:                                            ; preds = %bb.ds
  %i.ajx = load ptr, ptr %i.qj, align 8, !tbaa !43, !noalias !230
  %i.ajy = ptrtoint ptr %i.ajr to i64
  %i.ajz = ptrtoint ptr %i.ajx to i64             ; 2 uses
  %i.aka = sub i64 %i.ajy, %i.ajz                 ; 2 uses
  %i.akb = ashr exact i64 %i.aka, 3
  %i.akc = add nsw i64 %i.akb, 1                  ; 2 uses
  %i.akd = icmp ugt i64 %i.akc, 2305843009213693951
  br i1 %i.akd, label %bb.dv, label %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i40

bb.dv:                                            ; preds = %bb.du
  call void @_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.qj) #17, !noalias !230
  unreachable

_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i40: ; preds = %bb.du
  %i.ake = ptrtoint ptr %i.ajs to i64
  %i.akf = sub i64 %i.ake, %i.ajz                 ; 2 uses
  %.not.i.i.i190.i = icmp ult i64 %i.akf, 9223372036854775800
  %i.akg = ashr exact i64 %i.akf, 2
  %.sroa.speculated.i.i.i.i41 = call i64 @llvm.umax.i64(i64 %i.akg, i64 %i.akc)
  %.0.i.i.i.i42 = select i1 %.not.i.i.i190.i, i64 %.sroa.speculated.i.i.i.i41, i64 2305843009213693951 ; 4 uses
  %i.akh = icmp ne i64 %.0.i.i.i.i42, 0
  call void @llvm.assume(i1 %i.akh)
  %i.aki = icmp ugt i64 %.0.i.i.i.i42, 2305843009213693951
  br i1 %i.aki, label %bb.dw, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i43

bb.dw:                                            ; preds = %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i40
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #17, !noalias !230
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl5TokenEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i43: ; preds = %_ZNKSt3__16vectorIN3jxl5TokenENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i40
  %i.akj = shl nuw i64 %.0.i.i.i.i42, 3
  %i.akk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akj) #18, !noalias !230 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.aka ; 5 uses
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %i.akk, i64 %.0.i.i.i.i42
  %i.akn = shl i32 %i.ajq, 1
  store i32 %i.akn, ptr %i.akl, align 4, !noalias !230
end_hunk_1
