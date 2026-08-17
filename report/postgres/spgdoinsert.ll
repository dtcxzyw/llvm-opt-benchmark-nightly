inline.NumInlined: 118
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@spgdoinsert:bb.a
  %.pre-phi.i = phi i64 [ %.pre717.i, %._crit_edge716.i ], [ %i.apx, %BufferGetPage.exit537.i ] ; 2 uses
  store volatile i64 %.pre-phi.i, ptr %.sroa.67.2, align 8
  br i1 %.not466.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  store volatile i64 %.pre-phi.i, ptr %.sroa.34.01028, align 8
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi, %bb.ft, %bb.fs, %bb.fr, %bb.fp
  %i.apy = load volatile i32, ptr @CritSectionCount, align 4
  %i.apz = add i32 %i.apy, -1
  store volatile i32 %i.apz, ptr @CritSectionCount, align 4
  br i1 %.not473.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @SpGistSetLastUsedPage(ptr noundef nonnull %0, i32 noundef %.0416.i) #10
  call void @UnlockReleaseBuffer(i32 noundef %.0416.i) #10
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.not482.i = icmp eq i32 %.sroa.3.0.i, 0
  br i1 %.not482.i, label %doPickSplit.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @SpGistSetLastUsedPage(ptr noundef nonnull %0, i32 noundef %.sroa.3.0.i) #10
  call void @UnlockReleaseBuffer(i32 noundef %.sroa.3.0.i) #10
  br label %doPickSplit.exit

doPickSplit.exit:                                 ; preds = %bb.gm, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br i1 %.2.i, label %.thread428, label %bb.go

bb.go:                                            ; preds = %doPickSplit.exit
  call void @pfree(ptr noundef nonnull %i.fc) #10
  br label %.preheader

.preheader:                                       ; preds = %bb.ab, %bb.go
  %.sroa.29.3.ph = phi i32 [ %.sroa.29.5, %bb.go ], [ %.sroa.29.1, %bb.ab ] ; 2 uses
  %.sroa.0308.3.ph = phi i32 [ %.sroa.0308.5, %bb.go ], [ %.sroa.0308.1, %bb.ab ]
  %.sroa.67.1.ph = phi ptr [ %.sroa.67.2, %bb.go ], [ %.0.i.i, %bb.ab ]
  %.sroa.117.2.ph = phi i16 [ %.sroa.117.5, %bb.go ], [ %.sroa.117.01033, %bb.ab ]
  %i.aqa = load volatile i32, ptr @InterruptPending, align 4
  %.not15210081013 = icmp eq i32 %i.aqa, 0
  br i1 %.not15210081013, label %.lr.ph1009.lr.ph, label %.thread428, !prof !11

.lr.ph1009.lr.ph:                                 ; preds = %.preheader
  %i.aqb = trunc i32 %.sroa.57301.01025 to i16
  %i.aqc = zext i16 %.sroa.48.01026 to i64
  %i.aqd = getelementptr i8, ptr %.sroa.34.01028, i64 20
  %i.aqe = getelementptr [4 x i8], ptr %i.aqd, i64 %i.aqc
  br label %.lr.ph1009

.lr.ph1009:                                       ; preds = %.lr.ph1009.lr.ph, %spgAddNodeAction.exit
  %.sroa.117.2.ph4951017 = phi i16 [ %.sroa.117.2.ph, %.lr.ph1009.lr.ph ], [ %.sroa.117.6, %spgAddNodeAction.exit ] ; 13 uses
  %.sroa.67.1.ph4941016 = phi ptr [ %.sroa.67.1.ph, %.lr.ph1009.lr.ph ], [ %.sroa.67.3, %spgAddNodeAction.exit ] ; 21 uses
  %.sroa.0308.3.ph4931015 = phi i32 [ %.sroa.0308.3.ph, %.lr.ph1009.lr.ph ], [ %.sroa.0308.7, %spgAddNodeAction.exit ] ; 7 uses
  %.sroa.29.3.ph4921014 = phi i32 [ %.sroa.29.3.ph, %.lr.ph1009.lr.ph ], [ %.sroa.29.6, %spgAddNodeAction.exit ] ; 16 uses
  %i.aqf = zext i16 %.sroa.117.2.ph4951017 to i64
  %i.aqg = getelementptr i8, ptr %.sroa.67.1.ph4941016, i64 20
  %i.aqh = getelementptr [4 x i8], ptr %i.aqg, i64 %i.aqf ; 2 uses
  %.off.i241 = add i32 %.sroa.0308.3.ph4931015, -1
  %switch.i242 = icmp ult i32 %.off.i241, 2       ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.sroa.67.1.ph4941016, i64 16 ; 2 uses
  %i.aqj = add i32 %.sroa.0308.3.ph4931015, 1
  %i.aqk = urem i32 %i.aqj, 3
  br label %bb.gp

bb.gp:                                            ; preds = %.lr.ph1009, %spgSplitNodeAction.exit
  %.val = load i32, ptr %i.aqh, align 4
  %i.aql = and i32 %.val, 32767
  %i.aqm = zext nneg i32 %i.aql to i64
  %i.aqn = getelementptr inbounds nuw i8, ptr %.sroa.67.1.ph4941016, i64 %i.aqm ; 21 uses
  %i.aqo = load i64, ptr %3, align 8
  store i64 %i.aqo, ptr %12, align 8
  %i.aqp = load i64, ptr %i.e, align 16
  store i64 %i.aqp, ptr %i.cv, align 8
  store i32 %.01171037, ptr %i.cw, align 8
  %i.aqq = load i32, ptr %i.aqn, align 4
  %i.aqr = trunc i32 %i.aqq to i8
  %i.aqs = lshr i8 %i.aqr, 2
  %i.aqt = and i8 %i.aqs, 1
  store i8 %i.aqt, ptr %i.cx, align 4
  %i.aqu = load i32, ptr %i.aqn, align 4
  %i.aqv = icmp ugt i32 %i.aqu, 65535
  %i.aqw = zext i1 %i.aqv to i8
  store i8 %i.aqw, ptr %i.cy, align 1
  %i.aqx = load i32, ptr %i.aqn, align 4
  %.not153 = icmp ult i32 %i.aqx, 65536
  br i1 %.not153, label %bb.gt, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aqy = load i8, ptr %i.cz, align 2, !range !7, !noundef !8
  %i.aqz = trunc nuw i8 %i.aqy to i1
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8 ; 2 uses
  br i1 %i.aqz, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.arb = load i64, ptr %i.ara, align 8
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gq
  %i.arc = ptrtoint ptr %i.ara to i64
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gp, %bb.gr, %bb.gs
  %i.ard = phi i64 [ %i.arc, %bb.gs ], [ %i.arb, %bb.gr ], [ 0, %bb.gp ]
  store i64 %i.ard, ptr %i.da, align 8
  %i.are = load i32, ptr %i.aqn, align 4
  %i.arf = lshr i32 %i.are, 3
  %i.arg = and i32 %i.arf, 8191
  store i32 %i.arg, ptr %i.db, align 8
  %i.arh = call ptr @spgExtractNodeLabels(ptr noundef %1, ptr noundef nonnull %i.aqn) #10
  store ptr %i.arh, ptr %i.dc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, i8 0, i64 56, i1 false)
  br i1 %i.j, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ari = load ptr, ptr %i.bw, align 8
  %i.arj = load i32, ptr %i.ari, align 4
  %i.ark = call i64 @FunctionCall2Coll(ptr noundef %.0125423, i32 noundef %i.arj, i64 noundef %i.dd, i64 noundef %i.de) #10 ; 0 uses
  %.pr.pre1563.pre = load i32, ptr %13, align 8
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  store i32 1, ptr %13, align 8
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %.pr.pre1563 = phi i32 [ 1, %bb.gv ], [ %.pr.pre1563.pre, %bb.gu ] ; 3 uses
  %i.arl = load i32, ptr %i.aqn, align 4          ; 2 uses
  %i.arm = and i32 %i.arl, 4
  %.not154 = icmp eq i32 %i.arm, 0
  br i1 %.not154, label %thread-pre-split, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  switch i32 %.pr.pre1563, label %thread-pre-split [
    i32 2, label %bb.gy
    i32 1, label %bb.gz
  ]

bb.gy:                                            ; preds = %bb.gx
  %i.arn = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.aro = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2207, ptr noundef nonnull @__func__.spgdoinsert) #10
  unreachable

bb.gz:                                            ; preds = %bb.gx
  %i.arp = lshr i32 %i.arl, 3
  %i.arq = and i32 %i.arp, 8191
  %i.arr = add nsw i32 %i.arq, -1
  %i.ars = sext i32 %i.arr to i64
  %i.art = call i64 @pg_prng_uint64_range(ptr noundef nonnull @pg_global_prng_state, i64 noundef 0, i64 noundef %i.ars) #10
  %i.aru = trunc i64 %i.art to i32
  store i32 %i.aru, ptr %i.df, align 8
  %.pr.pre = load i32, ptr %13, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.gz, %bb.gw, %bb.gx
  %i.arv = phi i32 [ %.pr.pre1563, %bb.gx ], [ %.pr.pre1563, %bb.gw ], [ %.pr.pre, %bb.gz ]
  switch i32 %i.arv, label %bb.kg [
    i32 1, label %bb.ha
    i32 2, label %bb.hk
    i32 3, label %bb.jc
  ]

bb.ha:                                            ; preds = %thread-pre-split
  %i.arw = load i32, ptr %i.df, align 8           ; 5 uses
  %.not.i207 = icmp eq i32 %.sroa.8.01031, 0
  %.not39.i = icmp eq i32 %.sroa.8.01031, %.sroa.29.3.ph4921014
  %or.cond486 = select i1 %.not.i207, i1 true, i1 %.not39.i
  br i1 %or.cond486, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @SpGistSetLastUsedPage(ptr noundef %0, i32 noundef %.sroa.8.01031) #10
  call void @UnlockReleaseBuffer(i32 noundef %.sroa.8.01031) #10
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8
  %i.ary = load i32, ptr %i.aqn, align 4          ; 2 uses
  %i.arz = lshr i32 %i.ary, 16
  %i.asa = zext nneg i32 %i.arz to i64
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arx, i64 %i.asa ; 3 uses
  %i.asc = lshr i32 %i.ary, 3
  %i.asd = and i32 %i.asc, 8191                   ; 2 uses
  %i.ase = icmp eq i32 %i.asd, 0
  %i.asf = icmp eq i32 %i.arw, 0                  ; 2 uses
  %or.cond2.i = or i1 %i.asf, %i.ase
  br i1 %or.cond2.i, label %._crit_edge.i211, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.hc
  %i.asg = add i32 %i.arw, -1
  %i.ash = add nsw i32 %i.asd, -1
  %umin.i = call i32 @llvm.umin.i32(i32 %i.asg, i32 %i.ash) ; 3 uses
  %i.asi = add i32 %umin.i, 1                     ; 2 uses
  %xtraiter3154 = and i32 %i.asi, 3               ; 3 uses
  %i.asj = icmp ult i32 %umin.i, 3
  br i1 %i.asj, label %.lr.ph.i208.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter3159 = and i32 %i.asi, -4
  br label %.lr.ph.i208

.lr.ph.i208:                                      ; preds = %.lr.ph.i208, %.lr.ph.preheader.i.new
  %.04.i = phi ptr [ %i.asb, %.lr.ph.preheader.i.new ], [ %i.asz, %.lr.ph.i208 ] ; 2 uses
  %niter3160 = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter3160.next.3, %.lr.ph.i208 ]
  %i.ask = getelementptr i8, ptr %.04.i, i64 6
  %.0.val.i.a = load i16, ptr %i.ask, align 2
  %i.asl = and i16 %.0.val.i.a, 8191
  %i.asm = zext nneg i16 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr %.04.i, i64 %i.asm ; 2 uses
  %i.aso = getelementptr i8, ptr %i.asn, i64 6
  %.0.val.i.1.a = load i16, ptr %i.aso, align 2
  %i.asp = and i16 %.0.val.i.1.a, 8191
  %i.asq = zext nneg i16 %i.asp to i64
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asn, i64 %i.asq ; 2 uses
  %i.ass = getelementptr i8, ptr %i.asr, i64 6
  %.0.val.i.2.a = load i16, ptr %i.ass, align 2
  %i.ast = and i16 %.0.val.i.2.a, 8191
  %i.asu = zext nneg i16 %i.ast to i64
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asr, i64 %i.asu ; 2 uses
  %i.asw = getelementptr i8, ptr %i.asv, i64 6
  %.0.val.i.3.a = load i16, ptr %i.asw, align 2
  %i.asx = and i16 %.0.val.i.3.a, 8191
  %i.asy = zext nneg i16 %i.asx to i64
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.asy ; 3 uses
  %niter3160.next.3 = add i32 %niter3160, 4       ; 2 uses
  %niter3160.ncmp.3 = icmp eq i32 %niter3160.next.3, %unroll_iter3159
  br i1 %niter3160.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i208, !llvm.loop !31

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i208
  %lcmp.mod3156.not = icmp eq i32 %xtraiter3154, 0
  br i1 %lcmp.mod3156.not, label %._crit_edge.loopexit.i, label %.lr.ph.i208.epil.preheader

.lr.ph.i208.epil.preheader:                       ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %.04.i.epil.init = phi ptr [ %i.asb, %.lr.ph.preheader.i ], [ %i.asz, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod3158 = icmp ne i32 %xtraiter3154, 0
  call void @llvm.assume(i1 %lcmp.mod3158)
  br label %.lr.ph.i208.epil

.lr.ph.i208.epil:                                 ; preds = %.lr.ph.i208.epil, %.lr.ph.i208.epil.preheader
  %.04.i.epil = phi ptr [ %i.atd, %.lr.ph.i208.epil ], [ %.04.i.epil.init, %.lr.ph.i208.epil.preheader ] ; 2 uses
  %epil.iter3155 = phi i32 [ %epil.iter3155.next, %.lr.ph.i208.epil ], [ 0, %.lr.ph.i208.epil.preheader ]
  %i.ata = getelementptr i8, ptr %.04.i.epil, i64 6
  %.0.val.i.epil = load i16, ptr %i.ata, align 2
  %i.atb = and i16 %.0.val.i.epil, 8191
  %i.atc = zext nneg i16 %i.atb to i64
  %i.atd = getelementptr inbounds nuw i8, ptr %.04.i.epil, i64 %i.atc ; 2 uses
  %epil.iter3155.next = add i32 %epil.iter3155, 1 ; 2 uses
  %epil.iter3155.cmp.not = icmp eq i32 %epil.iter3155.next, %xtraiter3154
  br i1 %epil.iter3155.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i208.epil, !llvm.loop !32

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i208.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa2792 = phi ptr [ %i.asz, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.atd, %.lr.ph.i208.epil ]
  %i.ate = add nuw nsw i32 %umin.i, 1
  %i.atf = icmp eq i32 %i.ate, %i.arw
  br i1 %i.atf, label %ItemPointerIsValid.exit.i209, label %bb.hd

._crit_edge.i211:                                 ; preds = %bb.hc
  br i1 %i.asf, label %ItemPointerIsValid.exit.i209, label %bb.hd

bb.hd:                                            ; preds = %._crit_edge.i211, %._crit_edge.loopexit.i
  %i.atg = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ath = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.arw) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1486, ptr noundef nonnull @__func__.spgMatchNodeAction) #10
  unreachable

ItemPointerIsValid.exit.i209:                     ; preds = %._crit_edge.i211, %._crit_edge.loopexit.i
  %.0.lcssa10.i = phi ptr [ %.lcssa2792, %._crit_edge.loopexit.i ], [ %i.asb, %._crit_edge.i211 ] ; 3 uses
  %i.ati = getelementptr i8, ptr %.0.lcssa10.i, i64 4
  %i.atj = load i16, ptr %i.ati, align 2          ; 2 uses
  %.not1.i = icmp eq i16 %i.atj, 0
  br i1 %.not1.i, label %spgMatchNodeAction.exit, label %bb.he

bb.he:                                            ; preds = %ItemPointerIsValid.exit.i209
  %.0.val42.i = load i16, ptr %.0.lcssa10.i, align 2
  %i.atk = getelementptr i8, ptr %.0.lcssa10.i, i64 2
  %.0.val43.i = load i16, ptr %i.atk, align 2
  %i.atl = zext i16 %.0.val42.i to i32
  %i.atm = shl nuw i32 %i.atl, 16
  %i.atn = zext i16 %.0.val43.i to i32
  %i.ato = or disjoint i32 %i.atm, %i.atn
  br label %spgMatchNodeAction.exit

spgMatchNodeAction.exit:                          ; preds = %ItemPointerIsValid.exit.i209, %bb.he
  %.sroa.0308.6 = phi i32 [ %i.ato, %bb.he ], [ -1, %ItemPointerIsValid.exit.i209 ]
  %i.atp = load i32, ptr %i.dw, align 4
  %i.atq = add i32 %i.atp, %.01171037
  br i1 %i.j, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %spgMatchNodeAction.exit
  %i.atr = load i64, ptr %i.dj, align 8
  store i64 %i.atr, ptr %i.e, align 16
  %i.ats = call i64 @SpGistGetLeafTupleSize(ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %4) #10
  %i.att = trunc i64 %i.ats to i32
  %i.atu = add i32 %i.att, 4
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %spgMatchNodeAction.exit
  %.1123 = phi i32 [ %.01221036, %spgMatchNodeAction.exit ], [ %i.atu, %bb.hf ] ; 5 uses
  %i.atv = icmp ugt i32 %.1123, 8160
  br i1 %i.atv, label %bb.hh, label %.thread435

bb.hh:                                            ; preds = %bb.hg
  %i.atw = load i8, ptr %i.dx, align 1, !range !7, !noundef !8
  %i.atx = trunc nuw i8 %i.atw to i1
  %.not = xor i1 %i.atx, true
  %or.cond3 = or i1 %i.j, %.not
  br i1 %or.cond3, label %.thread439, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.aty = icmp slt i32 %.1123, %.01291034
  br i1 %i.aty, label %.thread435, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.atz = add i32 %.01261035, 1                  ; 2 uses
  %i.aua = icmp slt i32 %i.atz, 10
  br i1 %i.aua, label %.thread435, label %.thread439

.thread439:                                       ; preds = %bb.hh, %bb.hj
  %i.aub = sext i32 %.1123 to i64
  %i.auc = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.aud = call i32 @errcode(i32 noundef 261) #10 ; 0 uses
  %i.aue = add nsw i64 %i.aub, -4
  %i.auf = load ptr, ptr %i.cr, align 8
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 4
  %i.auh = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3, i64 noundef %i.aue, i64 noundef 8156, ptr noundef nonnull %i.aug) #10 ; 0 uses
  %i.aui = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.4) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2277, ptr noundef nonnull @__func__.spgdoinsert) #10
  unreachable

bb.hk:                                            ; preds = %thread-pre-split
  %i.auj = load ptr, ptr %i.dc, align 8
  %i.auk = icmp eq ptr %i.auj, null
  br i1 %i.auk, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.aul = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.aum = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2290, ptr noundef nonnull @__func__.spgdoinsert) #10
  unreachable

bb.hm:                                            ; preds = %bb.hk
  %i.aun = load i32, ptr %i.dj, align 8           ; 3 uses
  %i.auo = load i64, ptr %i.df, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.aup = icmp slt i32 %i.aun, 0
  %i.auq = load i32, ptr %i.aqn, align 4
  %i.aur = lshr i32 %i.auq, 3
  %i.aus = and i32 %i.aur, 8191                   ; 3 uses
  br i1 %i.aup, label %bb.hp, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aut = icmp samesign ugt i32 %i.aun, %i.aus
  br i1 %i.aut, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.auu = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.auv = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.16) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 90, ptr noundef nonnull @__func__.addNode) #10
  unreachable

bb.hp:                                            ; preds = %bb.hn, %bb.hm
  %.031.i.i = phi i32 [ %i.aun, %bb.hn ], [ %i.aus, %bb.hm ] ; 2 uses
  %i.auw = add nuw nsw i32 %i.aus, 1
  %i.aux = zext nneg i32 %i.auw to i64
  %i.auy = call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.aux) #10 ; 3 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8 ; 3 uses
  %i.ava = load i32, ptr %i.aqn, align 4          ; 2 uses
  %i.avb = and i32 %i.ava, 65528
  %.not36.i.i = icmp eq i32 %i.avb, 0
  br i1 %.not36.i.i, label %.._crit_edge.i_crit_edge.i, label %.lr.ph.preheader.i.i212

.._crit_edge.i_crit_edge.i:                       ; preds = %bb.hp
  %.pre.i236 = zext nneg i32 %.031.i.i to i64
  br label %._crit_edge.i.i216

.lr.ph.preheader.i.i212:                          ; preds = %bb.hp
  %i.avc = lshr i32 %i.ava, 16
  %i.avd = zext nneg i32 %i.avc to i64
  %i.ave = getelementptr inbounds nuw i8, ptr %i.auz, i64 %i.avd
  %i.avf = zext nneg i32 %.031.i.i to i64         ; 2 uses
  br label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %bb.hs, %.lr.ph.preheader.i.i212
  %indvars.iv.i.i214 = phi i64 [ 0, %.lr.ph.preheader.i.i212 ], [ %indvars.iv.next.i.i215, %bb.hs ] ; 3 uses
  %.03234.i.i = phi ptr [ %i.ave, %.lr.ph.preheader.i.i212 ], [ %i.avm, %bb.hs ] ; 4 uses
  %i.avg = icmp samesign ult i64 %indvars.iv.i.i214, %i.avf
  %i.avh = getelementptr inbounds nuw [8 x i8], ptr %i.auy, i64 %indvars.iv.i.i214 ; 2 uses
  br i1 %i.avg, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %.lr.ph.i.i213
  store ptr %.03234.i.i, ptr %i.avh, align 8
  br label %bb.hs

bb.hr:                                            ; preds = %.lr.ph.i.i213
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 8
  store ptr %.03234.i.i, ptr %i.avi, align 8
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %indvars.iv.next.i.i215 = add nuw nsw i64 %indvars.iv.i.i214, 1 ; 2 uses
  %i.avj = getelementptr i8, ptr %.03234.i.i, i64 6
  %.032.val.i.i = load i16, ptr %i.avj, align 2
  %i.avk = and i16 %.032.val.i.i, 8191
  %i.avl = zext nneg i16 %i.avk to i64
  %i.avm = getelementptr inbounds nuw i8, ptr %.03234.i.i, i64 %i.avl
  %i.avn = load i32, ptr %i.aqn, align 4
  %i.avo = lshr i32 %i.avn, 3
  %i.avp = and i32 %i.avo, 8191
  %i.avq = zext nneg i32 %i.avp to i64
  %i.avr = icmp samesign ult i64 %indvars.iv.next.i.i215, %i.avq
  br i1 %i.avr, label %.lr.ph.i.i213, label %._crit_edge.i.i216, !llvm.loop !33

._crit_edge.i.i216:                               ; preds = %bb.hs, %.._crit_edge.i_crit_edge.i
  %.pre-phi.i217 = phi i64 [ %.pre.i236, %.._crit_edge.i_crit_edge.i ], [ %i.avf, %bb.hs ]
  %i.avs = call ptr @spgFormNodeTuple(ptr noundef %1, i64 noundef %i.auo, i1 noundef zeroext false) #10
  %i.avt = getelementptr inbounds nuw [8 x i8], ptr %i.auy, i64 %.pre-phi.i217
  store ptr %i.avs, ptr %i.avt, align 8
  %i.avu = load i32, ptr %i.aqn, align 4          ; 2 uses
  %i.avv = lshr i32 %i.avu, 16                    ; 2 uses
  %.not.i.i218 = icmp eq i32 %i.avv, 0
  br i1 %.not.i.i218, label %addNode.exit.i, label %bb.ht

bb.ht:                                            ; preds = %._crit_edge.i.i216
  %i.avw = load i8, ptr %i.cz, align 2, !range !7, !noundef !8
  %i.avx = trunc nuw i8 %i.avw to i1
end_hunk_0
