Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/string-to-double?download=true
inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKcEEdT_ibPi:bb.a
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit272, %_ZN17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread

bb.ax:                                            ; preds = %bb.aq, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread
  %.promoted448539 = ptrtoaddr ptr %.promoted448 to i64
  %i.gg = icmp eq i8 %.pre550, 48
  br i1 %i.gg, label %.lr.ph450, label %._crit_edge

.lr.ph450:                                        ; preds = %bb.ax
  br i1 %i.eg, label %.split361.us.preheader, label %_ZN17double_conversionL7isDigitEii.exit.thread.i277

.split361.us.preheader:                           ; preds = %.lr.ph450
  %i.gh = add i64 %i.a, %i.g
  %i.gi = sub i64 %i.gh, %.promoted448539
  %scevgep540 = getelementptr i8, ptr %.promoted448, i64 %i.gi ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.promoted448, i64 1 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.h
  br i1 %i.gk, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, label %.backedge415.us

.split361.us:                                     ; preds = %.backedge415.us
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gn, i64 1 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.h
  br i1 %i.gm, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, label %.backedge415.us, !llvm.loop !43

.backedge415.us:                                  ; preds = %.split361.us.preheader, %.split361.us
  %i.gn = phi ptr [ %i.gl, %.split361.us ], [ %i.gj, %.split361.us.preheader ] ; 3 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !23
  %i.gp = icmp eq i8 %i.go, 48
  br i1 %i.gp, label %.split361.us, label %._crit_edge, !llvm.loop !43

_ZN17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph450, %.backedge415
  %i.gq = phi ptr [ %i.gu, %.backedge415 ], [ %.promoted448, %.lr.ph450 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1 ; 4 uses
  %i.gs = icmp eq ptr %i.gr, %i.h
  br i1 %i.gs, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread, label %bb.ay

.backedge415:                                     ; preds = %bb.az, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281
  %i.gt = phi i8 [ %.pre551.pre, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281 ], [ %i.ha, %bb.az ]
  %i.gu = phi ptr [ %i.gr, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281 ], [ %i.gw, %bb.az ] ; 2 uses
  %i.gv = icmp eq i8 %i.gt, 48
  br i1 %i.gv, label %_ZN17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !43

bb.ay:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i277
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 2 ; 3 uses
  %i.gx = icmp ne ptr %i.gw, %i.h
  %.pre551.pre = load i8, ptr %i.gr, align 1, !tbaa !23 ; 2 uses
  %i.gy = sext i8 %.pre551.pre to i32
  %i.gz = icmp eq i32 %i.gy, %i.ef
  %or.cond648 = select i1 %i.gx, i1 %i.gz, i1 false
  br i1 %or.cond648, label %bb.az, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281

bb.az:                                            ; preds = %bb.ay
  %i.ha = load i8, ptr %i.gw, align 1, !tbaa !23  ; 3 uses
  %i.hb = sext i8 %i.ha to i32
  %i.hc = add nsw i32 %i.hb, -48
  %or.cond.i25.i278 = icmp ult i32 %i.hc, 10
  %i.hd = icmp ult i8 %i.ha, 58
  %or.cond19.i26.i279 = and i1 %i.hd, %or.cond.i25.i278
  br i1 %or.cond19.i26.i279, label %.backedge415, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281: ; preds = %bb.az, %bb.ay
  br label %.backedge415

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit281.thread: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i277, %.split361.us, %.split361.us.preheader
  %.us-phi = phi ptr [ %scevgep540, %.split361.us.preheader ], [ %scevgep540, %.split361.us ], [ %i.gr, %_ZN17double_conversionL7isDigitEii.exit.thread.i277 ]
  %i.he = ptrtoint ptr %.us-phi to i64
  %i.hf = ptrtoint ptr %1 to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = trunc i64 %i.hg to i32
  store i32 %i.hh, ptr %4, align 4, !tbaa !17
  %i.hi = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge415, %.backedge415.us, %bb.ax
  %.lcssa449 = phi ptr [ %.promoted448, %bb.ax ], [ %i.gn, %.backedge415.us ], [ %i.gu, %.backedge415 ] ; 2 uses
  store ptr %.lcssa449, ptr %i.b, align 8
  %i.hj = trunc i32 %i.et to i8
  %i.hk = lshr i8 %i.hj, 1
  br label %.critedge227

.critedge227:                                     ; preds = %bb.al, %._crit_edge
  %.promoted455 = phi ptr [ %i.ea, %bb.al ], [ %.lcssa449, %._crit_edge ] ; 3 uses
  %i.hl = phi i8 [ 0, %bb.al ], [ %i.hk, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.hm = load i8, ptr %.promoted455, align 1, !tbaa !23 ; 3 uses
  %i.hn = add i8 %i.hm, -48
  %or.cond228457 = icmp ult i8 %i.hn, 10
  br i1 %or.cond228457, label %.lr.ph463, label %.critedge

.lr.ph463:                                        ; preds = %.critedge227
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hp = load i16, ptr %i.ho, align 8, !tbaa !35 ; 2 uses
  %i.hq = zext i16 %i.hp to i32
  %i.hr = icmp eq i16 %i.hp, 0
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph463, %.backedge414
  %i.hs = phi i8 [ %i.hm, %.lr.ph463 ], [ %i.ik, %.backedge414 ] ; 2 uses
  %.0166462 = phi i32 [ 0, %.lr.ph463 ], [ %.1167, %.backedge414 ] ; 3 uses
  %.0171461 = phi i32 [ 0, %.lr.ph463 ], [ %.1172, %.backedge414 ] ; 2 uses
  %.0174460 = phi i1 [ false, %.lr.ph463 ], [ %.1175, %.backedge414 ] ; 2 uses
  %.0185459 = phi i32 [ 0, %.lr.ph463 ], [ %.1186, %.backedge414 ] ; 3 uses
  %.0192458 = phi i8 [ %i.hl, %.lr.ph463 ], [ %i.ig, %.backedge414 ]
  %i.ht = phi ptr [ %.promoted455, %.lr.ph463 ], [ %i.ij, %.backedge414 ] ; 5 uses
  %i.hu = icmp slt i32 %.0166462, 772
  br i1 %i.hu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hv = add nsw i32 %.0185459, 1
  %i.hw = sext i32 %.0185459 to i64
  %i.hx = getelementptr inbounds i8, ptr %i.d, i64 %i.hw
  store i8 %i.hs, ptr %i.hx, align 1, !tbaa !23
  %i.hy = add nsw i32 %.0166462, 1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hz = add nsw i32 %.0171461, 1
  %i.ia = icmp ne i8 %i.hs, 48
  %i.ib = or i1 %.0174460, %i.ia
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1186 = phi i32 [ %i.hv, %bb.bb ], [ %.0185459, %bb.bc ] ; 5 uses
  %.1175 = phi i1 [ %.0174460, %bb.bb ], [ %i.ib, %bb.bc ] ; 5 uses
  %.1172 = phi i32 [ %.0171461, %bb.bb ], [ %i.hz, %bb.bc ] ; 5 uses
  %.1167 = phi i32 [ %i.hy, %bb.bb ], [ %.0166462, %bb.bc ] ; 2 uses
  %i.ic = trunc i8 %.0192458 to i1
  br i1 %i.ic, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.id = load i8, ptr %i.ht, align 1, !tbaa !23
  %i.ie = icmp slt i8 %i.id, 56
  %i.if = zext i1 %i.ie to i8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ig = phi i8 [ 0, %bb.bd ], [ %i.if, %bb.be ] ; 5 uses
  br i1 %i.hr, label %.split364, label %bb.bg

.split364:                                        ; preds = %bb.bf
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ht, i64 1 ; 3 uses
  %i.ii = icmp eq ptr %i.ih, %i.h
  br i1 %i.ii, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, label %.backedge414

.backedge414:                                     ; preds = %bb.bj, %.split364, %.split365, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit290
  %i.ij = phi ptr [ %i.ih, %.split364 ], [ %i.iq, %.split365 ], [ %i.iq, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit290 ], [ %i.is, %bb.bj ] ; 3 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !23  ; 3 uses
  %i.il = add i8 %i.ik, -48
  %or.cond228 = icmp ult i8 %i.il, 10
  br i1 %or.cond228, label %bb.ba, label %.critedge, !llvm.loop !44

bb.bg:                                            ; preds = %bb.bf
  %i.im = load i8, ptr %i.ht, align 1, !tbaa !23  ; 2 uses
  %i.in = sext i8 %i.im to i32
  %i.io = add nsw i32 %i.in, -48
  %or.cond.i.i282 = icmp ult i32 %i.io, 10
  %i.ip = icmp ult i8 %i.im, 58
  %or.cond19.i.i283 = and i1 %i.ip, %or.cond.i.i282
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ht, i64 1 ; 6 uses
  %i.ir = icmp eq ptr %i.iq, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN17double_conversionL7isDigitEii.exit.thread.i286, label %.split365

.split365:                                        ; preds = %bb.bg
  br i1 %i.ir, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, label %.backedge414

_ZN17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.bg
  br i1 %i.ir, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.sink.split, label %bb.bh

bb.bh:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i286
  %i.is = getelementptr inbounds nuw i8, ptr %i.ht, i64 2 ; 3 uses
  %i.it = icmp eq ptr %i.is, %i.h
  br i1 %i.it, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit290, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iu = load i8, ptr %i.iq, align 1, !tbaa !23
  %i.iv = sext i8 %i.iu to i32
  %i.iw = icmp eq i32 %i.iv, %i.hq
  br i1 %i.iw, label %bb.bj, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit290

bb.bj:                                            ; preds = %bb.bi
  %i.ix = load i8, ptr %i.is, align 1, !tbaa !23  ; 2 uses
  %i.iy = sext i8 %i.ix to i32
  %i.iz = add nsw i32 %i.iy, -48
  %or.cond.i25.i287 = icmp ult i32 %i.iz, 10
  %i.ja = icmp ult i8 %i.ix, 58
  %or.cond19.i26.i288 = and i1 %i.ja, %or.cond.i25.i287
  br i1 %or.cond19.i26.i288, label %.backedge414, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit290

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit290: ; preds = %bb.bj, %bb.bh, %bb.bi
  br label %.backedge414

.critedge:                                        ; preds = %.backedge414, %.critedge227
  %.lcssa456 = phi ptr [ %.promoted455, %.critedge227 ], [ %i.ij, %.backedge414 ] ; 3 uses
  %.0192.lcssa = phi i8 [ %i.hl, %.critedge227 ], [ %i.ig, %.backedge414 ]
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge414 ] ; 6 uses
  %.0174.lcssa = phi i1 [ false, %.critedge227 ], [ %.1175, %.backedge414 ] ; 4 uses
  %.0171.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1172, %.backedge414 ] ; 10 uses
  %.0166.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1167, %.backedge414 ] ; 5 uses
  %.lcssa = phi i8 [ %i.hm, %.critedge227 ], [ %i.ik, %.backedge414 ]
  store ptr %.lcssa456, ptr %i.b, align 8
  %5 = icmp eq i32 %.0166.lcssa, 0                ; 2 uses
  %spec.select = select i1 %5, i8 0, i8 %.0192.lcssa ; 6 uses
  %i.jb = icmp eq i8 %.lcssa, 46
  br i1 %i.jb, label %bb.bk, label %.critedge11

bb.bk:                                            ; preds = %.critedge
  %i.jc = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.jc, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond7, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.je = load double, ptr %i.jd, align 8, !tbaa !25
  br label %.thread370

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.jc, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jg = load i16, ptr %i.jf, align 8, !tbaa !35 ; 4 uses
  %i.jh = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_(ptr noundef %i.b, i16 noundef zeroext %i.jg, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.jh, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %6 = icmp ne i32 %.0166.lcssa, 0
  %or.cond9 = or i1 %i.ec, %6
  br i1 %or.cond9, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread390, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !25
  br label %.thread370

bb.bq:                                            ; preds = %bb.bn
  %.promoted474.pre = load ptr, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  %i.jk = load i8, ptr %.promoted474.pre, align 1, !tbaa !23 ; 2 uses
  %7 = icmp eq i8 %i.jk, 48
  %or.cond649 = select i1 %5, i1 %7, i1 false
  br i1 %or.cond649, label %.lr.ph472, label %.loopexit

.lr.ph472:                                        ; preds = %bb.bq, %bb.bs
  %.0157471 = phi i32 [ %i.js, %bb.bs ], [ 0, %bb.bq ]
  %i.jl = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_(ptr noundef %i.b, i16 noundef zeroext %i.jg, i32 noundef 10, ptr nonnull %i.h)
  br i1 %i.jl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph472
  %i.jm = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %1 to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = trunc i64 %i.jp to i32
  store i32 %i.jq, ptr %4, align 4, !tbaa !17
  %i.jr = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread370

bb.bs:                                            ; preds = %.lr.ph472
  %i.js = add nsw i32 %.0157471, -1               ; 2 uses
  %i.jt = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !23  ; 2 uses
  %i.jv = icmp eq i8 %i.ju, 48
  br i1 %i.jv, label %.lr.ph472, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %bb.bs, %bb.bq
  %i.jw = phi i8 [ %i.jk, %bb.bq ], [ %i.ju, %bb.bs ] ; 2 uses
  %.promoted474 = phi ptr [ %.promoted474.pre, %bb.bq ], [ %i.jt, %bb.bs ] ; 2 uses
  %.1158 = phi i32 [ 0, %bb.bq ], [ %i.js, %bb.bs ] ; 2 uses
  %i.jx = add i8 %i.jw, -48
  %or.cond229476 = icmp ult i8 %i.jx, 10
  br i1 %or.cond229476, label %.lr.ph482, label %.critedge11.loopexit

.lr.ph482:                                        ; preds = %.loopexit
  %i.jy = zext i16 %i.jg to i32
  %i.jz = icmp eq i16 %i.jg, 0
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph482, %.backedge
  %i.ka = phi i8 [ %i.jw, %.lr.ph482 ], [ %i.kn, %.backedge ] ; 2 uses
  %.2159480 = phi i32 [ %.1158, %.lr.ph482 ], [ %.3160, %.backedge ] ; 2 uses
  %.2168479 = phi i32 [ %.0166.lcssa, %.lr.ph482 ], [ %.3169, %.backedge ] ; 3 uses
  %.2176478 = phi i1 [ %.0174.lcssa, %.lr.ph482 ], [ %.3177, %.backedge ] ; 2 uses
  %.2187477 = phi i32 [ %.0185.lcssa, %.lr.ph482 ], [ %.3188, %.backedge ] ; 3 uses
  %i.kb = phi ptr [ %.promoted474, %.lr.ph482 ], [ %i.km, %.backedge ] ; 4 uses
  %i.kc = icmp slt i32 %.2168479, 772
  br i1 %i.kc, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.kd = add nsw i32 %.2187477, 1
  %i.ke = sext i32 %.2187477 to i64
  %i.kf = getelementptr inbounds i8, ptr %i.d, i64 %i.ke
  store i8 %i.ka, ptr %i.kf, align 1, !tbaa !23
  %i.kg = add nsw i32 %.2168479, 1
  %i.kh = add nsw i32 %.2159480, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.ki = icmp ne i8 %i.ka, 48
  %i.kj = or i1 %.2176478, %i.ki
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.3188 = phi i32 [ %i.kd, %bb.bu ], [ %.2187477, %bb.bv ] ; 4 uses
  %.3177 = phi i1 [ %.2176478, %bb.bu ], [ %i.kj, %bb.bv ] ; 3 uses
  %.3169 = phi i32 [ %i.kg, %bb.bu ], [ %.2168479, %bb.bv ] ; 2 uses
  %.3160 = phi i32 [ %i.kh, %bb.bu ], [ %.2159480, %bb.bv ] ; 3 uses
  br i1 %i.jz, label %.split367, label %bb.bx

.split367:                                        ; preds = %bb.bw
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kb, i64 1 ; 3 uses
  %i.kl = icmp eq ptr %i.kk, %i.h
  br i1 %i.kl, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604, label %.backedge

.backedge:                                        ; preds = %bb.ca, %.split367, %.split368, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299
  %i.km = phi ptr [ %i.kk, %.split367 ], [ %i.kt, %.split368 ], [ %i.kt, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299 ], [ %i.kv, %bb.ca ] ; 3 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !23  ; 2 uses
  %i.ko = add i8 %i.kn, -48
  %or.cond229 = icmp ult i8 %i.ko, 10
  br i1 %or.cond229, label %bb.bt, label %.critedge11.loopexit, !llvm.loop !46

bb.bx:                                            ; preds = %bb.bw
  %i.kp = load i8, ptr %i.kb, align 1, !tbaa !23  ; 2 uses
  %i.kq = sext i8 %i.kp to i32
  %i.kr = add nsw i32 %i.kq, -48
  %or.cond.i.i291 = icmp ult i32 %i.kr, 10
  %i.ks = icmp ult i8 %i.kp, 58
  %or.cond19.i.i292 = and i1 %i.ks, %or.cond.i.i291
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kb, i64 1 ; 6 uses
  %i.ku = icmp eq ptr %i.kt, %i.h                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN17double_conversionL7isDigitEii.exit.thread.i295, label %.split368

.split368:                                        ; preds = %bb.bx
  br i1 %i.ku, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604, label %.backedge

_ZN17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.bx
  br i1 %i.ku, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread604, label %bb.by

bb.by:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kb, i64 2 ; 3 uses
  %i.kw = icmp eq ptr %i.kv, %i.h
  br i1 %i.kw, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kx = load i8, ptr %i.kt, align 1, !tbaa !23
  %i.ky = sext i8 %i.kx to i32
  %i.kz = icmp eq i32 %i.ky, %i.jy
  br i1 %i.kz, label %bb.ca, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299

bb.ca:                                            ; preds = %bb.bz
  %i.la = load i8, ptr %i.kv, align 1, !tbaa !23  ; 2 uses
  %i.lb = sext i8 %i.la to i32
  %i.lc = add nsw i32 %i.lb, -48
  %or.cond.i25.i296 = icmp ult i32 %i.lc, 10
  %i.ld = icmp ult i8 %i.la, 58
  %or.cond19.i26.i297 = and i1 %i.ld, %or.cond.i25.i296
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit299: ; preds = %bb.ca, %bb.by, %bb.bz
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa475 = phi ptr [ %.promoted474, %.loopexit ], [ %i.km, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2176.lcssa = phi i1 [ %.0174.lcssa, %.loopexit ], [ %.3177, %.backedge ]
  %.2168.lcssa = phi i32 [ %.0166.lcssa, %.loopexit ], [ %.3169, %.backedge ]
  %.2159.lcssa = phi i32 [ %.1158, %.loopexit ], [ %.3160, %.backedge ]
  store ptr %.lcssa475, ptr %i.b, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.le = phi ptr [ %.lcssa456, %.critedge ], [ %.lcssa475, %.critedge11.loopexit ] ; 8 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 11 uses
  %.4178 = phi i1 [ %.0174.lcssa, %.critedge ], [ %.2176.lcssa, %.critedge11.loopexit ] ; 7 uses
  %.4170 = phi i32 [ %.0166.lcssa, %.critedge ], [ %.2168.lcssa, %.critedge11.loopexit ]
  %.4161 = phi i32 [ 0, %.critedge ], [ %.2159.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.not12 = xor i1 %i.ec, true
  %i.lf = icmp eq i32 %.4161, 0
  %or.cond14 = select i1 %.not12, i1 %i.lf, i1 false
  %i.lg = icmp eq i32 %.4170, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.lg, i1 false
  br i1 %or.cond16, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.critedge11
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.li = load double, ptr %i.lh, align 8, !tbaa !25
  br label %.thread370

bb.cc:                                            ; preds = %.critedge11
  %i.lj = load i8, ptr %i.le, align 1, !tbaa !23
  switch i8 %i.lj, label %bb.cx [
    i8 101, label %bb.cd
    i8 69, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %i.lk = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.lk, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.k
  br i1 %or.cond19, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !25
  br label %.thread370

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.lk, label %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit315.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ln = getelementptr inbounds nuw i8, ptr %i.le, i64 1 ; 4 uses
  store ptr %i.ln, ptr %i.b, align 8, !tbaa !16
  %i.lo = icmp eq ptr %i.ln, %i.h
  br i1 %i.lo, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.k, label %.split611, label %bb.ci

.split611:                                        ; preds = %bb.ch
  store ptr %i.le, ptr %i.b, align 8, !tbaa !16
  %i.lp = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.db, label %bb.dc

bb.ci:                                            ; preds = %bb.ch
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !25
  br label %.thread370

bb.cj:                                            ; preds = %bb.cg
  %i.ls = load i8, ptr %i.ln, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.ls, label %bb.cn [
    i8 43, label %bb.ck
    i8 45, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj
  %i.lt = getelementptr inbounds nuw i8, ptr %i.le, i64 2 ; 3 uses
  store ptr %i.lt, ptr %i.b, align 8, !tbaa !16
  %i.lu = icmp eq ptr %i.lt, %i.h
  br i1 %i.lu, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
end_hunk_0
begin_hunk_1_@_ZNK17double_conversion23StringToDoubleConverter12StringToIeeeIPKtEEdT_ibPi:bb.a
  br i1 %i.fi, label %.lr.ph445, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272, !llvm.loop !3

.lr.ph445:                                        ; preds = %.lr.ph.i267.preheader, %.lr.ph.i267
  %i.fj = phi ptr [ %i.fk, %.lr.ph.i267 ], [ %.promoted.i265, %.lr.ph.i267.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2 ; 5 uses
  %.not.not.i271 = icmp eq ptr %i.fk, %i.g
  br i1 %.not.not.i271, label %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272.loopexit_crit_edge, label %.lr.ph.i267, !llvm.loop !3

._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272.loopexit_crit_edge: ; preds = %.lr.ph445
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272, !llvm.loop !3

_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272: ; preds = %.lr.ph.i267, %.lr.ph.i267.preheader, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272.loopexit_crit_edge, %bb.av
  %i.fl = phi ptr [ %.promoted.i265, %bb.av ], [ %.promoted.i265, %.lr.ph.i267.preheader ], [ %i.fk, %._ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272.loopexit_crit_edge ], [ %i.fk, %.lr.ph.i267 ]
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %1 to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = lshr exact i64 %i.fo, 1
  %i.fq = trunc i64 %i.fp to i32
  store i32 %i.fq, ptr %4, align 4, !tbaa !17
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit272, %_ZN17double_conversionL7isDigitEii.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread

bb.ax:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit.thread
  %i.fr = icmp eq i16 %.pre538, 48
  br i1 %i.fr, label %.lr.ph450, label %._crit_edge

.lr.ph450:                                        ; preds = %bb.aq, %bb.ax
  br i1 %i.dz, label %.split361.us, label %_ZN17double_conversionL7isDigitEii.exit.thread.i277

.split361.us:                                     ; preds = %.lr.ph450, %.backedge415.us
  %i.fs = phi ptr [ %i.ft, %.backedge415.us ], [ %.promoted448, %.lr.ph450 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 2 ; 5 uses
  %i.fu = icmp eq ptr %i.ft, %i.g
  br i1 %i.fu, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281.thread, label %.backedge415.us

.backedge415.us:                                  ; preds = %.split361.us
  %i.fv = load i16, ptr %i.ft, align 2, !tbaa !41
  %i.fw = icmp eq i16 %i.fv, 48
  br i1 %i.fw, label %.split361.us, label %._crit_edge, !llvm.loop !48

_ZN17double_conversionL7isDigitEii.exit.thread.i277: ; preds = %.lr.ph450, %.backedge415
  %i.fx = phi ptr [ %i.gb, %.backedge415 ], [ %.promoted448, %.lr.ph450 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 2 ; 4 uses
  %i.fz = icmp eq ptr %i.fy, %i.g
  br i1 %i.fz, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281.thread, label %bb.ay

.backedge415:                                     ; preds = %bb.az, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281
  %i.ga = phi i16 [ %.pre539.pre, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281 ], [ %i.gg, %bb.az ]
  %i.gb = phi ptr [ %i.fy, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281 ], [ %i.gd, %bb.az ] ; 2 uses
  %i.gc = icmp eq i16 %i.ga, 48
  br i1 %i.gc, label %_ZN17double_conversionL7isDigitEii.exit.thread.i277, label %._crit_edge, !llvm.loop !48

bb.ay:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i277
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 3 uses
  %i.ge = icmp ne ptr %i.gd, %i.g
  %.pre539.pre = load i16, ptr %i.fy, align 2, !tbaa !41 ; 2 uses
  %i.gf = icmp eq i16 %.pre539.pre, %i.dy
  %or.cond646 = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond646, label %bb.az, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281

bb.az:                                            ; preds = %bb.ay
  %i.gg = load i16, ptr %i.gd, align 2, !tbaa !41 ; 2 uses
  %i.gh = add i16 %i.gg, -48
  %or.cond19.i26.i279 = icmp ult i16 %i.gh, 10
  br i1 %or.cond19.i26.i279, label %.backedge415, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281: ; preds = %bb.az, %bb.ay
  br label %.backedge415

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit281.thread: ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i277, %.split361.us
  %.us-phi = phi ptr [ %i.ft, %.split361.us ], [ %i.fy, %_ZN17double_conversionL7isDigitEii.exit.thread.i277 ]
  %i.gi = ptrtoint ptr %.us-phi to i64
  %i.gj = ptrtoint ptr %1 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = lshr exact i64 %i.gk, 1
  %i.gm = trunc i64 %i.gl to i32
  store i32 %i.gm, ptr %4, align 4, !tbaa !17
  %i.gn = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread

._crit_edge:                                      ; preds = %.backedge415, %.backedge415.us, %bb.aq, %bb.ax
  %.lcssa449 = phi ptr [ %.promoted448, %bb.ax ], [ %.promoted448, %bb.aq ], [ %i.ft, %.backedge415.us ], [ %i.gb, %.backedge415 ] ; 2 uses
  store ptr %.lcssa449, ptr %i.a, align 8
  %i.go = trunc i32 %i.ej to i8
  %i.gp = lshr i8 %i.go, 1
  br label %.critedge227

.critedge227:                                     ; preds = %bb.al, %._crit_edge
  %.promoted455 = phi ptr [ %i.du, %bb.al ], [ %.lcssa449, %._crit_edge ] ; 3 uses
  %i.gq = phi i8 [ 0, %bb.al ], [ %i.gp, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.gr = load i16, ptr %.promoted455, align 2, !tbaa !41 ; 3 uses
  %i.gs = add i16 %i.gr, -48
  %or.cond228457 = icmp ult i16 %i.gs, 10
  br i1 %or.cond228457, label %.lr.ph463, label %.critedge

.lr.ph463:                                        ; preds = %.critedge227
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gu = load i16, ptr %i.gt, align 8, !tbaa !35 ; 2 uses
  %i.gv = icmp eq i16 %i.gu, 0
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph463, %.backedge414
  %i.gw = phi i16 [ %i.gr, %.lr.ph463 ], [ %i.hp, %.backedge414 ] ; 2 uses
  %.0166462 = phi i32 [ 0, %.lr.ph463 ], [ %.1167, %.backedge414 ] ; 3 uses
  %.0171461 = phi i32 [ 0, %.lr.ph463 ], [ %.1172, %.backedge414 ] ; 2 uses
  %.0174460 = phi i1 [ false, %.lr.ph463 ], [ %.1175, %.backedge414 ] ; 2 uses
  %.0185459 = phi i32 [ 0, %.lr.ph463 ], [ %.1186, %.backedge414 ] ; 3 uses
  %.0192458 = phi i8 [ %i.gq, %.lr.ph463 ], [ %i.hl, %.backedge414 ]
  %i.gx = phi ptr [ %.promoted455, %.lr.ph463 ], [ %i.ho, %.backedge414 ] ; 5 uses
  %i.gy = icmp slt i32 %.0166462, 772
  br i1 %i.gy, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gz = trunc nuw nsw i16 %i.gw to i8
  %i.ha = add nsw i32 %.0185459, 1
  %i.hb = sext i32 %.0185459 to i64
  %i.hc = getelementptr inbounds i8, ptr %i.c, i64 %i.hb
  store i8 %i.gz, ptr %i.hc, align 1, !tbaa !23
  %i.hd = add nsw i32 %.0166462, 1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.he = add nsw i32 %.0171461, 1
  %i.hf = icmp ne i16 %i.gw, 48
  %i.hg = or i1 %.0174460, %i.hf
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1186 = phi i32 [ %i.ha, %bb.bb ], [ %.0185459, %bb.bc ] ; 5 uses
  %.1175 = phi i1 [ %.0174460, %bb.bb ], [ %i.hg, %bb.bc ] ; 5 uses
  %.1172 = phi i32 [ %.0171461, %bb.bb ], [ %i.he, %bb.bc ] ; 5 uses
  %.1167 = phi i32 [ %i.hd, %bb.bb ], [ %.0166462, %bb.bc ] ; 2 uses
  %i.hh = trunc i8 %.0192458 to i1
  br i1 %i.hh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hi = load i16, ptr %i.gx, align 2, !tbaa !41
  %i.hj = icmp ult i16 %i.hi, 56
  %i.hk = zext i1 %i.hj to i8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.hl = phi i8 [ 0, %bb.bd ], [ %i.hk, %bb.be ] ; 5 uses
  br i1 %i.gv, label %.split364, label %bb.bg

.split364:                                        ; preds = %bb.bf
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 2 ; 3 uses
  %i.hn = icmp eq ptr %i.hm, %i.g
  br i1 %i.hn, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, label %.backedge414

.backedge414:                                     ; preds = %bb.bj, %.split364, %.split365, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit290
  %i.ho = phi ptr [ %i.hm, %.split364 ], [ %i.ht, %.split365 ], [ %i.ht, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit290 ], [ %i.hv, %bb.bj ] ; 3 uses
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !41 ; 3 uses
  %i.hq = add i16 %i.hp, -48
  %or.cond228 = icmp ult i16 %i.hq, 10
  br i1 %or.cond228, label %bb.ba, label %.critedge, !llvm.loop !49

bb.bg:                                            ; preds = %bb.bf
  %i.hr = load i16, ptr %i.gx, align 2, !tbaa !41
  %i.hs = add i16 %i.hr, -48
  %or.cond19.i.i283 = icmp ult i16 %i.hs, 10
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gx, i64 2 ; 6 uses
  %i.hu = icmp eq ptr %i.ht, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i283, label %_ZN17double_conversionL7isDigitEii.exit.thread.i286, label %.split365

.split365:                                        ; preds = %bb.bg
  br i1 %i.hu, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, label %.backedge414

_ZN17double_conversionL7isDigitEii.exit.thread.i286: ; preds = %bb.bg
  br i1 %i.hu, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.sink.split, label %bb.bh

bb.bh:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i286
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gx, i64 4 ; 3 uses
  %i.hw = icmp eq ptr %i.hv, %i.g
  br i1 %i.hw, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit290, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hx = load i16, ptr %i.ht, align 2, !tbaa !41
  %i.hy = icmp eq i16 %i.hx, %i.gu
  br i1 %i.hy, label %bb.bj, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit290

bb.bj:                                            ; preds = %bb.bi
  %i.hz = load i16, ptr %i.hv, align 2, !tbaa !41
  %i.ia = add i16 %i.hz, -48
  %or.cond19.i26.i288 = icmp ult i16 %i.ia, 10
  br i1 %or.cond19.i26.i288, label %.backedge414, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit290

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit290: ; preds = %bb.bj, %bb.bh, %bb.bi
  br label %.backedge414

.critedge:                                        ; preds = %.backedge414, %.critedge227
  %.lcssa456 = phi ptr [ %.promoted455, %.critedge227 ], [ %i.ho, %.backedge414 ] ; 3 uses
  %.0192.lcssa = phi i8 [ %i.gq, %.critedge227 ], [ %i.hl, %.backedge414 ]
  %.0185.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1186, %.backedge414 ] ; 6 uses
  %.0174.lcssa = phi i1 [ false, %.critedge227 ], [ %.1175, %.backedge414 ] ; 4 uses
  %.0171.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1172, %.backedge414 ] ; 10 uses
  %.0166.lcssa = phi i32 [ 0, %.critedge227 ], [ %.1167, %.backedge414 ] ; 5 uses
  %.lcssa = phi i16 [ %i.gr, %.critedge227 ], [ %i.hp, %.backedge414 ]
  store ptr %.lcssa456, ptr %i.a, align 8
  %5 = icmp eq i32 %.0166.lcssa, 0                ; 2 uses
  %spec.select = select i1 %5, i8 0, i8 %.0192.lcssa ; 6 uses
  %i.ib = icmp eq i16 %.lcssa, 46
  br i1 %i.ib, label %bb.bk, label %.critedge11

bb.bk:                                            ; preds = %.critedge
  %i.ic = trunc i8 %spec.select to i1             ; 2 uses
  %.not = xor i1 %i.ic, true
  %or.cond7 = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond7, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ie = load double, ptr %i.id, align 8, !tbaa !25
  br label %.thread370

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.ic, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ig = load i16, ptr %i.if, align 8, !tbaa !35 ; 4 uses
  %i.ih = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_(ptr noundef %i.a, i16 noundef zeroext %i.ig, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.ih, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %6 = icmp ne i32 %.0166.lcssa, 0
  %or.cond9 = or i1 %i.dw, %6
  br i1 %or.cond9, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread390, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !25
  br label %.thread370

bb.bq:                                            ; preds = %bb.bn
  %.promoted474.pre = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %i.ik = load i16, ptr %.promoted474.pre, align 2, !tbaa !41 ; 2 uses
  %7 = icmp eq i16 %i.ik, 48
  %or.cond647 = select i1 %5, i1 %7, i1 false
  br i1 %or.cond647, label %.lr.ph472, label %.loopexit

.lr.ph472:                                        ; preds = %bb.bq, %bb.bs
  %.0157471 = phi i32 [ %i.it, %bb.bs ], [ 0, %bb.bq ]
  %i.il = call fastcc noundef zeroext i1 @_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_(ptr noundef %i.a, i16 noundef zeroext %i.ig, i32 noundef 10, ptr nonnull %i.g)
  br i1 %i.il, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph472
  %i.im = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %1 to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = lshr exact i64 %i.ip, 1
  %i.ir = trunc i64 %i.iq to i32
  store i32 %i.ir, ptr %4, align 4, !tbaa !17
  %i.is = select i1 %.0180, double -0.000000e+00, double 0.000000e+00
  br label %.thread370

bb.bs:                                            ; preds = %.lr.ph472
  %i.it = add nsw i32 %.0157471, -1               ; 2 uses
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !41 ; 2 uses
  %i.iw = icmp eq i16 %i.iv, 48
  br i1 %i.iw, label %.lr.ph472, label %.loopexit, !llvm.loop !50

.loopexit:                                        ; preds = %bb.bs, %bb.bq
  %i.ix = phi i16 [ %i.ik, %bb.bq ], [ %i.iv, %bb.bs ] ; 2 uses
  %.promoted474 = phi ptr [ %.promoted474.pre, %bb.bq ], [ %i.iu, %bb.bs ] ; 2 uses
  %.1158 = phi i32 [ 0, %bb.bq ], [ %i.it, %bb.bs ] ; 2 uses
  %i.iy = add i16 %i.ix, -48
  %or.cond229476 = icmp ult i16 %i.iy, 10
  br i1 %or.cond229476, label %.lr.ph482, label %.critedge11.loopexit

.lr.ph482:                                        ; preds = %.loopexit
  %i.iz = icmp eq i16 %i.ig, 0
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph482, %.backedge
  %i.ja = phi i16 [ %i.ix, %.lr.ph482 ], [ %i.jo, %.backedge ] ; 2 uses
  %.2159480 = phi i32 [ %.1158, %.lr.ph482 ], [ %.3160, %.backedge ] ; 2 uses
  %.2168479 = phi i32 [ %.0166.lcssa, %.lr.ph482 ], [ %.3169, %.backedge ] ; 3 uses
  %.2176478 = phi i1 [ %.0174.lcssa, %.lr.ph482 ], [ %.3177, %.backedge ] ; 2 uses
  %.2187477 = phi i32 [ %.0185.lcssa, %.lr.ph482 ], [ %.3188, %.backedge ] ; 3 uses
  %i.jb = phi ptr [ %.promoted474, %.lr.ph482 ], [ %i.jn, %.backedge ] ; 4 uses
  %i.jc = icmp slt i32 %.2168479, 772
  br i1 %i.jc, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jd = trunc nuw nsw i16 %i.ja to i8
  %i.je = add nsw i32 %.2187477, 1
  %i.jf = sext i32 %.2187477 to i64
  %i.jg = getelementptr inbounds i8, ptr %i.c, i64 %i.jf
  store i8 %i.jd, ptr %i.jg, align 1, !tbaa !23
  %i.jh = add nsw i32 %.2168479, 1
  %i.ji = add nsw i32 %.2159480, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.jj = icmp ne i16 %i.ja, 48
  %i.jk = or i1 %.2176478, %i.jj
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.3188 = phi i32 [ %i.je, %bb.bu ], [ %.2187477, %bb.bv ] ; 4 uses
  %.3177 = phi i1 [ %.2176478, %bb.bu ], [ %i.jk, %bb.bv ] ; 3 uses
  %.3169 = phi i32 [ %i.jh, %bb.bu ], [ %.2168479, %bb.bv ] ; 2 uses
  %.3160 = phi i32 [ %i.ji, %bb.bu ], [ %.2159480, %bb.bv ] ; 3 uses
  br i1 %i.iz, label %.split367, label %bb.bx

.split367:                                        ; preds = %bb.bw
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 2 ; 3 uses
  %i.jm = icmp eq ptr %i.jl, %i.g
  br i1 %i.jm, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598, label %.backedge

.backedge:                                        ; preds = %bb.ca, %.split367, %.split368, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299
  %i.jn = phi ptr [ %i.jl, %.split367 ], [ %i.js, %.split368 ], [ %i.js, %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299 ], [ %i.ju, %bb.ca ] ; 3 uses
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !41 ; 2 uses
  %i.jp = add i16 %i.jo, -48
  %or.cond229 = icmp ult i16 %i.jp, 10
  br i1 %or.cond229, label %bb.bt, label %.critedge11.loopexit, !llvm.loop !51

bb.bx:                                            ; preds = %bb.bw
  %i.jq = load i16, ptr %i.jb, align 2, !tbaa !41
  %i.jr = add i16 %i.jq, -48
  %or.cond19.i.i292 = icmp ult i16 %i.jr, 10
  %i.js = getelementptr inbounds nuw i8, ptr %i.jb, i64 2 ; 6 uses
  %i.jt = icmp eq ptr %i.js, %i.g                 ; 2 uses
  br i1 %or.cond19.i.i292, label %_ZN17double_conversionL7isDigitEii.exit.thread.i295, label %.split368

.split368:                                        ; preds = %bb.bx
  br i1 %i.jt, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598, label %.backedge

_ZN17double_conversionL7isDigitEii.exit.thread.i295: ; preds = %bb.bx
  br i1 %i.jt, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread598, label %bb.by

bb.by:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i295
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jb, i64 4 ; 3 uses
  %i.jv = icmp eq ptr %i.ju, %i.g
  br i1 %i.jv, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jw = load i16, ptr %i.js, align 2, !tbaa !41
  %i.jx = icmp eq i16 %i.jw, %i.ig
  br i1 %i.jx, label %bb.ca, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299

bb.ca:                                            ; preds = %bb.bz
  %i.jy = load i16, ptr %i.ju, align 2, !tbaa !41
  %i.jz = add i16 %i.jy, -48
  %or.cond19.i26.i297 = icmp ult i16 %i.jz, 10
  br i1 %or.cond19.i26.i297, label %.backedge, label %_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299

_ZN17double_conversionL7AdvanceIPKtEEbPT_tiRS3_.exit299: ; preds = %bb.ca, %bb.by, %bb.bz
  br label %.backedge

.critedge11.loopexit:                             ; preds = %.backedge, %.loopexit
  %.lcssa475 = phi ptr [ %.promoted474, %.loopexit ], [ %i.jn, %.backedge ] ; 2 uses
  %.2187.lcssa = phi i32 [ %.0185.lcssa, %.loopexit ], [ %.3188, %.backedge ]
  %.2176.lcssa = phi i1 [ %.0174.lcssa, %.loopexit ], [ %.3177, %.backedge ]
  %.2168.lcssa = phi i32 [ %.0166.lcssa, %.loopexit ], [ %.3169, %.backedge ]
  %.2159.lcssa = phi i32 [ %.1158, %.loopexit ], [ %.3160, %.backedge ]
  store ptr %.lcssa475, ptr %i.a, align 8
  br label %.critedge11

.critedge11:                                      ; preds = %.critedge11.loopexit, %.critedge
  %i.ka = phi ptr [ %.lcssa456, %.critedge ], [ %.lcssa475, %.critedge11.loopexit ] ; 8 uses
  %.4189 = phi i32 [ %.0185.lcssa, %.critedge ], [ %.2187.lcssa, %.critedge11.loopexit ] ; 11 uses
  %.4178 = phi i1 [ %.0174.lcssa, %.critedge ], [ %.2176.lcssa, %.critedge11.loopexit ] ; 7 uses
  %.4170 = phi i32 [ %.0166.lcssa, %.critedge ], [ %.2168.lcssa, %.critedge11.loopexit ]
  %.4161 = phi i32 [ 0, %.critedge ], [ %.2159.lcssa, %.critedge11.loopexit ] ; 6 uses
  %.not12 = xor i1 %i.dw, true
  %i.kb = icmp eq i32 %.4161, 0
  %or.cond14 = select i1 %.not12, i1 %i.kb, i1 false
  %i.kc = icmp eq i32 %.4170, 0
  %or.cond16 = select i1 %or.cond14, i1 %i.kc, i1 false
  br i1 %or.cond16, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.critedge11
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !25
  br label %.thread370

bb.cc:                                            ; preds = %.critedge11
  %i.kf = load i16, ptr %i.ka, align 2, !tbaa !41
  switch i16 %i.kf, label %bb.cw [
    i16 101, label %bb.cd
    i16 69, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %i.kg = trunc i8 %spec.select to i1             ; 2 uses
  %.not17 = xor i1 %i.kg, true
  %or.cond19 = select i1 %.not17, i1 true, i1 %i.j
  br i1 %or.cond19, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !25
  br label %.thread370

bb.cf:                                            ; preds = %bb.cd
  br i1 %i.kg, label %_ZN17double_conversionL17AdvanceToNonspaceIPKtEEbPT_S3_.exit315.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 2 ; 3 uses
  %i.kk = icmp eq ptr %i.kj, %i.g
  br i1 %i.kk, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.j, label %.split605, label %bb.ci

.split605:                                        ; preds = %bb.ch
  store ptr %i.ka, ptr %i.a, align 8, !tbaa !40
  %i.kl = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.da, label %bb.db

bb.ci:                                            ; preds = %bb.ch
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kn = load double, ptr %i.km, align 8, !tbaa !25
  br label %.thread370

bb.cj:                                            ; preds = %bb.cg
  %i.ko = load i16, ptr %i.kj, align 2, !tbaa !41 ; 2 uses
  switch i16 %i.ko, label %bb.cn [
    i16 43, label %bb.ck
    i16 45, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj
  %i.kp = zext nneg i16 %i.ko to i32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ka, i64 4 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.g
  br i1 %i.kr, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.j, label %.split606, label %bb.cm

.split606:                                        ; preds = %bb.cl
  store ptr %i.ka, ptr %i.a, align 8, !tbaa !40
  %i.ks = add nsw i32 %.4161, %.0171.lcssa        ; 2 uses
  br i1 %.4178, label %bb.da, label %bb.db

end_hunk_1
