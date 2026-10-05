Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/lz4hc?download=true
inline.NumInlined: 720
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@LZ4HC_compress_generic:bb.a
  br i1 %i.ant, label %.lr.ph1611.i, label %._crit_edge1612.i, !prof !36

._crit_edge1612.i:                                ; preds = %bb.gp, %bb.go
  %.251.i.i367.lcssa.i = phi ptr [ %.150.i.i364.i, %bb.go ], [ %i.anr, %bb.gp ] ; 5 uses
  %.246.i.i368.lcssa.i = phi ptr [ %.145.i.i365.i, %bb.go ], [ %i.ans, %bb.gp ] ; 4 uses
  %i.anu = getelementptr inbounds i8, ptr %spec.select457.i363.i, i64 -3
  %i.anv = icmp ult ptr %.251.i.i367.lcssa.i, %i.anu
  br i1 %i.anv, label %bb.gq, label %bb.gs

bb.gq:                                            ; preds = %._crit_edge1612.i
  %.246.i.i368.val.i = load i32, ptr %.246.i.i368.lcssa.i, align 1, !tbaa !28
  %.251.i.i367.val.i = load i32, ptr %.251.i.i367.lcssa.i, align 1, !tbaa !28
  %i.anw = icmp eq i32 %.246.i.i368.val.i, %.251.i.i367.val.i
  br i1 %i.anw, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.anx = getelementptr inbounds nuw i8, ptr %.251.i.i367.lcssa.i, i64 4
  %i.any = getelementptr inbounds nuw i8, ptr %.246.i.i368.lcssa.i, i64 4
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %._crit_edge1612.i
  %.453.i.i370.i = phi ptr [ %i.anx, %bb.gr ], [ %.251.i.i367.lcssa.i, %bb.gq ], [ %.251.i.i367.lcssa.i, %._crit_edge1612.i ] ; 5 uses
  %.448.i.i371.i = phi ptr [ %i.any, %bb.gr ], [ %.246.i.i368.lcssa.i, %bb.gq ], [ %.246.i.i368.lcssa.i, %._crit_edge1612.i ] ; 4 uses
  %i.anz = getelementptr inbounds i8, ptr %spec.select457.i363.i, i64 -1
  %i.aoa = icmp ult ptr %.453.i.i370.i, %i.anz
  br i1 %i.aoa, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %.448.i.i371.val.i = load i16, ptr %.448.i.i371.i, align 1, !tbaa !38
  %.453.i.i370.val.i = load i16, ptr %.453.i.i370.i, align 1, !tbaa !38
  %i.aob = icmp eq i16 %.448.i.i371.val.i, %.453.i.i370.val.i
  br i1 %i.aob, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.aoc = getelementptr inbounds nuw i8, ptr %.453.i.i370.i, i64 2
  %i.aod = getelementptr inbounds nuw i8, ptr %.448.i.i371.i, i64 2
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gs
  %.554.i.i372.i = phi ptr [ %i.aoc, %bb.gu ], [ %.453.i.i370.i, %bb.gt ], [ %.453.i.i370.i, %bb.gs ] ; 4 uses
  %.5.i.i373.i = phi ptr [ %i.aod, %bb.gu ], [ %.448.i.i371.i, %bb.gt ], [ %.448.i.i371.i, %bb.gs ]
  %i.aoe = icmp ult ptr %.554.i.i372.i, %spec.select457.i363.i
  br i1 %i.aoe, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.aof = load i8, ptr %.5.i.i373.i, align 1, !tbaa !39
  %i.aog = load i8, ptr %.554.i.i372.i, align 1, !tbaa !39
  %i.aoh = icmp eq i8 %i.aof, %i.aog
  %spec.select.i.i390.idx.i = zext i1 %i.aoh to i64
  %spec.select.i.i390.i = getelementptr inbounds nuw i8, ptr %.554.i.i372.i, i64 %spec.select.i.i390.idx.i
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.6.i.i374.i = phi ptr [ %.554.i.i372.i, %bb.gv ], [ %spec.select.i.i390.i, %bb.gw ]
  %i.aoi = ptrtoint ptr %.6.i.i374.i to i64
  %i.aoj = sub i64 %i.aoi, %i.amr
  %i.aok = trunc i64 %i.aoj to i32
  br label %LZ4_count.exit.i375.i

LZ4_count.exit.i375.i:                            ; preds = %bb.gx, %.thread1153.i, %bb.gn
  %.4.i.i376.i = phi i32 [ %i.anq, %.thread1153.i ], [ %i.aok, %bb.gx ], [ %i.ani, %bb.gn ]
  %i.aol = add nsw i32 %.4.i.i376.i, 4
  br i1 %.not443.i377.i, label %LZ4HC_countBack.exit.i382.i, label %bb.gy

bb.gy:                                            ; preds = %LZ4_count.exit.i375.i
  %.neg1321.i = sub nsw i64 %i.amb, %i.amv
  %..i.i378.i = tail call i64 @llvm.smax.i64(i64 %gepdiff1319.i, i64 %.neg1321.i) ; 2 uses
  %i.aom = trunc i64 %..i.i378.i to i32           ; 2 uses
  %i.aon = icmp slt i32 %i.aom, -3
  %sext2450.i = shl i64 %..i.i378.i, 32
  %i.aoo = ashr exact i64 %sext2450.i, 32         ; 3 uses
  br i1 %i.aon, label %.lr.ph1617.preheader.i, label %.preheader1352.i

.lr.ph1617.preheader.i:                           ; preds = %bb.gy
  %invariant.op2677.i = add nsw i64 %i.aoo, 3
  br label %.lr.ph1617.i

.preheader1352.loopexit.i:                        ; preds = %bb.gz
  %i.aop = trunc nsw i64 %indvars.iv.next2091.i to i32
  br label %.preheader1352.i

.preheader1352.i:                                 ; preds = %.preheader1352.loopexit.i, %bb.gy
  %.027.i.i380.lcssa.i = phi i32 [ %i.aop, %.preheader1352.loopexit.i ], [ 0, %bb.gy ] ; 2 uses
  %i.aoq = sext i32 %.027.i.i380.lcssa.i to i64   ; 2 uses
  %smin2095.i = tail call i32 @llvm.smin.i32(i32 %.027.i.i380.lcssa.i, i32 %i.aom) ; 2 uses
  %i.aor = icmp slt i64 %i.aoo, %i.aoq
  br i1 %i.aor, label %.lr.ph1080, label %LZ4HC_countBack.exit.i382.i

.lr.ph1617.i:                                     ; preds = %bb.gz, %.lr.ph1617.preheader.i
  %indvars.iv2090.i = phi i64 [ 0, %.lr.ph1617.preheader.i ], [ %indvars.iv.next2091.i, %bb.gz ] ; 4 uses
  %i.aos = getelementptr inbounds i8, ptr %i.vo, i64 %indvars.iv2090.i
  %i.aot = getelementptr inbounds i8, ptr %i.aos, i64 -4
  %.val567.i = load i32, ptr %i.aot, align 1, !tbaa !28 ; 2 uses
  %i.aou = getelementptr inbounds i8, ptr %i.amw, i64 %indvars.iv2090.i
  %i.aov = getelementptr inbounds i8, ptr %i.aou, i64 -4
  %.val566.i = load i32, ptr %i.aov, align 1, !tbaa !28 ; 2 uses
  %.not.i531.i387.i = icmp eq i32 %.val567.i, %.val566.i
  br i1 %.not.i531.i387.i, label %bb.gz, label %.thread1157.i

.thread1157.i:                                    ; preds = %.lr.ph1617.i
  %i.aow = trunc nsw i64 %indvars.iv2090.i to i32
  %i.aox = xor i32 %.val566.i, %.val567.i
  %i.aoy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.aox, i1 true)
  %i.aoz = lshr i32 %i.aoy, 3
  %i.apa = sub nsw i32 %i.aow, %i.aoz
  br label %LZ4HC_countBack.exit.i382.i

bb.gz:                                            ; preds = %.lr.ph1617.i
  %indvars.iv.next2091.i = add nsw i64 %indvars.iv2090.i, -4 ; 3 uses
  %i.apb = icmp sgt i64 %indvars.iv.next2091.i, %invariant.op2677.i
  br i1 %i.apb, label %.lr.ph1617.i, label %.preheader1352.loopexit.i

bb.ha:                                            ; preds = %.lr.ph1080
  %i.apc = icmp sgt i64 %indvars.iv.next2094.i, %i.aoo
  br i1 %i.apc, label %.lr.ph1080, label %LZ4HC_countBack.exit.i382.i, !llvm.loop !0

.lr.ph1080:                                       ; preds = %.preheader1352.i, %bb.ha
  %indvars.iv2093.i1079 = phi i64 [ %indvars.iv.next2094.i, %bb.ha ], [ %i.aoq, %.preheader1352.i ] ; 2 uses
  %indvars.iv.next2094.i = add nsw i64 %indvars.iv2093.i1079, -1 ; 4 uses
  %i.apd = getelementptr inbounds i8, ptr %i.vo, i64 %indvars.iv.next2094.i
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !39
  %i.apf = getelementptr inbounds i8, ptr %i.amw, i64 %indvars.iv.next2094.i
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !39
  %i.aph = icmp eq i8 %i.ape, %i.apg
  br i1 %i.aph, label %bb.ha, label %LZ4HC_countBack.exit.i382.loopexit.split.loop.exit.i, !llvm.loop !0

LZ4HC_countBack.exit.i382.loopexit.split.loop.exit.i: ; preds = %.lr.ph1080
  %i.api = trunc nsw i64 %indvars.iv2093.i1079 to i32
  br label %LZ4HC_countBack.exit.i382.i

LZ4HC_countBack.exit.i382.i:                      ; preds = %bb.ha, %.preheader1352.i, %LZ4HC_countBack.exit.i382.loopexit.split.loop.exit.i, %.thread1157.i, %LZ4_count.exit.i375.i
  %i.apj = phi i32 [ 0, %LZ4_count.exit.i375.i ], [ %i.apa, %.thread1157.i ], [ %i.api, %LZ4HC_countBack.exit.i382.loopexit.split.loop.exit.i ], [ %smin2095.i, %.preheader1352.i ], [ %smin2095.i, %bb.ha ] ; 2 uses
  %i.apk = sub i32 %i.aol, %i.apj                 ; 2 uses
  %i.apl = icmp sgt i32 %i.apk, %.19.i3581624.i1081 ; 2 uses
  %.20368.i384.i = select i1 %i.apl, i32 %i.amt, i32 %.19367.i3551621.i1084
  %.8345.i385.i = select i1 %i.apl, i32 %i.apj, i32 %.7344.i3561622.i1083
  %.20.i386.i = tail call i32 @llvm.smax.i32(i32 %i.apk, i32 %.19.i3581624.i1081)
  br label %bb.hb

bb.hb:                                            ; preds = %LZ4HC_countBack.exit.i382.i, %bb.gk
  %.21369.i360.i = phi i32 [ %.20368.i384.i, %LZ4HC_countBack.exit.i382.i ], [ %.19367.i3551621.i1084, %bb.gk ] ; 2 uses
  %.9346.i361.i = phi i32 [ %.8345.i385.i, %LZ4HC_countBack.exit.i382.i ], [ %.7344.i3561622.i1083, %bb.gk ] ; 2 uses
  %.21.i362.i = phi i32 [ %.20.i386.i, %LZ4HC_countBack.exit.i382.i ], [ %.19.i3581624.i1081, %bb.gk ] ; 2 uses
  %i.apm = and i32 %.0315.i3571623.i1082, 65535
  %i.apn = zext nneg i32 %i.apm to i64
  %i.apo = getelementptr inbounds nuw [2 x i8], ptr %i.ams, i64 %i.apn
  %i.app = load i16, ptr %i.apo, align 2, !tbaa !40
  %i.apq = zext i16 %i.app to i32                 ; 2 uses
  %i.apr = sub i32 %.16397.i3541620.i1085, %i.apq ; 2 uses
  %i.aps = sub i32 %i.vw, %i.apr                  ; 2 uses
  %i.apt = icmp ugt i32 %i.aps, 65535
  %i.apu = sub i32 %.0315.i3571623.i1082, %i.apq
  %.not442.i359.i = icmp eq i32 %i.amu, 0
  %or.cond1113 = select i1 %i.apt, i1 true, i1 %.not442.i359.i
  br i1 %or.cond1113, label %LZ4HC_InsertAndGetWiderMatch.exit559.i, label %bb.gk, !llvm.loop !5

LZ4HC_InsertAndGetWiderMatch.exit559.i:           ; preds = %bb.hb, %bb.gj, %.thread1137.thread.i
  %.22370.i344.i = phi i32 [ %.18366.i339.i, %.thread1137.thread.i ], [ %.18366.i339.i, %bb.gj ], [ %.21369.i360.i, %bb.hb ]
  %.10347.i345.i = phi i32 [ %.6343.i340.i, %.thread1137.thread.i ], [ %.6343.i340.i, %bb.gj ], [ %.9346.i361.i, %bb.hb ]
  %.22.i346.i = phi i32 [ %.18.i341.i, %.thread1137.thread.i ], [ %.18.i341.i, %bb.gj ], [ %.21.i362.i, %bb.hb ]
  %i.apv = sext i32 %.10347.i345.i to i64
  %i.apw = getelementptr inbounds i8, ptr %i.vo, i64 %i.apv
  br label %bb.hc

bb.hc:                                            ; preds = %LZ4HC_InsertAndGetWiderMatch.exit559.i, %bb.de
  %.sroa.090.sroa.12.0.i.i = phi i32 [ %.22.i346.i, %LZ4HC_InsertAndGetWiderMatch.exit559.i ], [ 0, %bb.de ] ; 3 uses
  %.sroa.090.sroa.0.0.i.i = phi i32 [ %.22370.i344.i, %LZ4HC_InsertAndGetWiderMatch.exit559.i ], [ 0, %bb.de ] ; 2 uses
  %.2.i.i = phi ptr [ %i.apw, %LZ4HC_InsertAndGetWiderMatch.exit559.i ], [ %.1337.i.i, %bb.de ] ; 7 uses
  %.not358.i.i = icmp sgt i32 %.sroa.090.sroa.12.0.i.i, %.sroa.0162.sroa.14.0.i.i
  br i1 %.not358.i.i, label %bb.ho, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %.1978.ph.lcssa21552159.i = ptrtoaddr ptr %.1978.ph.i to i64
  %.1988.lcssa21612163.i = ptrtoaddr ptr %.1988.i to i64
  %i.apx = getelementptr i8, ptr %.1.ph.i, i64 1  ; 4 uses
  %i.apy = ptrtoint ptr %.1988.i to i64
  %i.apz = ptrtoint ptr %.1978.ph.i to i64
  %i.aqa = sub i64 %i.apy, %i.apz                 ; 7 uses
  %i.aqb = udiv i64 %i.aqa, 255
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apx, i64 %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 %i.aqa
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %i.aqf = icmp ugt ptr %i.aqe, %spec.select.i.i
  %or.cond.i90.i = select i1 %.not.i47.i, i1 %i.aqf, i1 false
  br i1 %or.cond.i90.i, label %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aqg = icmp ugt i64 %i.aqa, 14
  br i1 %i.aqg, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.aqh = add i64 %i.aqa, -15                    ; 2 uses
  store i8 -16, ptr %.1.ph.i, align 1, !tbaa !39
  %i.aqi = icmp ugt i64 %i.aqh, 254
  br i1 %i.aqi, label %.lr.ph1754.preheader.i, label %._crit_edge1755.i

.lr.ph1754.preheader.i:                           ; preds = %bb.hf
  %i.aqj = add i64 %i.aqa, -270                   ; 2 uses
  %i.aqk = udiv i64 %i.aqj, 255                   ; 3 uses
  %i.aql = add nuw nsw i64 %i.aqk, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.apx, i8 -1, i64 range(i64 0, 72340172838076675) %i.aql, i1 false), !tbaa !39
  %scevgep2148.i = getelementptr i8, ptr %.1.ph.i, i64 2
  %scevgep2149.i = getelementptr i8, ptr %scevgep2148.i, i64 %i.aqk
  %.neg2451.i = mul i64 %i.aqk, -255
  %i.aqm = add i64 %.neg2451.i, %i.aqj
  br label %._crit_edge1755.i

._crit_edge1755.i:                                ; preds = %.lr.ph1754.preheader.i, %bb.hf
  %.39.lcssa.i = phi ptr [ %i.apx, %bb.hf ], [ %scevgep2149.i, %.lr.ph1754.preheader.i ] ; 2 uses
  %.0.i97.lcssa.i = phi i64 [ %i.aqh, %bb.hf ], [ %i.aqm, %.lr.ph1754.preheader.i ]
  %i.aqn = trunc nuw i64 %.0.i97.lcssa.i to i8
  %i.aqo = getelementptr inbounds nuw i8, ptr %.39.lcssa.i, i64 1
  store i8 %i.aqn, ptr %.39.lcssa.i, align 1, !tbaa !39
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %.tr.i91.i = trunc nuw nsw i64 %i.aqa to i8
  %i.aqp = shl nuw i8 %.tr.i91.i, 4
  store i8 %i.aqp, ptr %.1.ph.i, align 1, !tbaa !39
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %._crit_edge1755.i
  %.35.i = phi ptr [ %i.aqo, %._crit_edge1755.i ], [ %i.apx, %bb.hg ] ; 3 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %.35.i, i64 %i.aqa ; 3 uses
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hi, %bb.hh
  %.09.i.i = phi ptr [ %.35.i, %bb.hh ], [ %i.aqs, %bb.hi ] ; 2 uses
  %.0.i99.i = phi ptr [ %.1978.ph.i, %bb.hh ], [ %i.aqt, %bb.hi ] ; 2 uses
  %i.aqr = load i64, ptr %.0.i99.i, align 1
  store i64 %i.aqr, ptr %.09.i.i, align 1
  %i.aqs = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %.0.i99.i, i64 8
  %i.aqu = icmp ult ptr %i.aqs, %i.aqq
  br i1 %i.aqu, label %bb.hi, label %LZ4_wildCopy8.exit.i, !llvm.loop !7

LZ4_wildCopy8.exit.i:                             ; preds = %bb.hi
  %i.aqv = trunc i64 %.sroa.0162.sroa.0.0.in.i.i to i16
  store i16 %i.aqv, ptr %i.aqq, align 1, !tbaa !38
  %i.aqw = getelementptr i8, ptr %i.aqq, i64 2    ; 4 uses
  %i.aqx = add nsw i64 %i.vm, -4                  ; 3 uses
  %i.aqy = udiv i64 %i.aqx, 255
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqw, i64 %i.aqy
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 6
  %i.arb = icmp ugt ptr %i.ara, %spec.select.i.i
  %or.cond64.i93.i = select i1 %.not.i47.i, i1 %i.arb, i1 false
  br i1 %or.cond64.i93.i, label %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i, label %bb.hj

bb.hj:                                            ; preds = %LZ4_wildCopy8.exit.i
  %i.arc = icmp ugt i64 %i.aqx, 14
  br i1 %i.arc, label %bb.hk, label %bb.hn

bb.hk:                                            ; preds = %bb.hj
  %i.ard = load i8, ptr %.1.ph.i, align 1, !tbaa !39
  %i.are = add i8 %i.ard, 15
  store i8 %i.are, ptr %.1.ph.i, align 1, !tbaa !39
  %i.arf = add nsw i64 %i.vm, -19                 ; 2 uses
  %i.arg = icmp ugt i64 %i.arf, 509
  br i1 %i.arg, label %.lr.ph1761.preheader.i, label %._crit_edge1762.i

.lr.ph1761.preheader.i:                           ; preds = %bb.hk
  %i.arh = add nsw i64 %i.vm, -529                ; 2 uses
  %i.ari = udiv i64 %i.arh, 510                   ; 2 uses
  %i.arj = shl nuw nsw i64 %i.ari, 1              ; 2 uses
  %i.ark = add nuw nsw i64 %i.arj, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aqw, i8 -1, i64 range(i64 0, 72340172838076675) %i.ark, i1 false), !tbaa !39
  %scevgep2154.i = getelementptr i8, ptr %.35.i, i64 4
  %i.arl = sub i64 0, %.1978.ph.lcssa21552159.i
  %scevgep2160.i = getelementptr i8, ptr %scevgep2154.i, i64 %i.arl
  %i.arm = getelementptr i8, ptr %scevgep2160.i, i64 %i.arj
  %scevgep2164.i = getelementptr i8, ptr %i.arm, i64 %.1988.lcssa21612163.i
  %.neg2452.i = mul i64 %i.ari, -510
  %i.arn = add i64 %.neg2452.i, %i.arh
  br label %._crit_edge1762.i

._crit_edge1762.i:                                ; preds = %.lr.ph1761.preheader.i, %bb.hk
  %.37.lcssa.i = phi ptr [ %i.aqw, %bb.hk ], [ %scevgep2164.i, %.lr.ph1761.preheader.i ] ; 3 uses
  %.050.i95.lcssa.i = phi i64 [ %i.arf, %bb.hk ], [ %i.arn, %.lr.ph1761.preheader.i ] ; 3 uses
  %i.aro = icmp samesign ugt i64 %.050.i95.lcssa.i, 254
  br i1 %i.aro, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %._crit_edge1762.i
  %i.arp = add nsw i64 %.050.i95.lcssa.i, -255
  %i.arq = getelementptr inbounds nuw i8, ptr %.37.lcssa.i, i64 1
  store i8 -1, ptr %.37.lcssa.i, align 1, !tbaa !39
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %._crit_edge1762.i
  %.38.i = phi ptr [ %i.arq, %bb.hl ], [ %.37.lcssa.i, %._crit_edge1762.i ] ; 2 uses
  %.1.i96.i = phi i64 [ %i.arp, %bb.hl ], [ %.050.i95.lcssa.i, %._crit_edge1762.i ]
  %i.arr = trunc nuw i64 %.1.i96.i to i8
  %i.ars = getelementptr inbounds nuw i8, ptr %.38.i, i64 1
  store i8 %i.arr, ptr %.38.i, align 1, !tbaa !39
  br label %.outer1361.backedge.i

bb.hn:                                            ; preds = %bb.hj
  %i.art = trunc nuw nsw i64 %i.aqx to i8
  %i.aru = load i8, ptr %.1.ph.i, align 1, !tbaa !39
  %i.arv = add i8 %i.aru, %i.art
  store i8 %i.arv, ptr %.1.ph.i, align 1, !tbaa !39
  br label %.outer1361.backedge.i

.outer1361.backedge.i:                            ; preds = %bb.ml, %bb.mk, %bb.hn, %bb.hm
  %.0987.ph.be.i = phi ptr [ %i.vn, %bb.hn ], [ %i.vn, %bb.hm ], [ %i.asq, %bb.mk ], [ %i.asq, %bb.ml ] ; 3 uses
  %.0976.ph.be.i = phi ptr [ %i.aqw, %bb.hn ], [ %i.ars, %bb.hm ], [ %i.bqz, %bb.mk ], [ %i.bqc, %bb.ml ] ; 2 uses
  %.0338.i.ph.be.i = phi ptr [ %.1339.i.ph.i, %bb.hn ], [ %.1339.i.ph.i, %bb.hm ], [ %.3341.i.i, %bb.mk ], [ %.3341.i.i, %bb.ml ]
  %.0336.i.ph.be.i = phi ptr [ %.2.i.i, %bb.hn ], [ %.2.i.i, %bb.hm ], [ %.5.i.i, %bb.mk ], [ %.5.i.i, %bb.ml ]
  %.not.i381544.i = icmp ugt ptr %.0987.ph.be.i, %i.dj
  br i1 %.not.i381544.i, label %.loopexit.i, label %.lr.ph1546.i, !llvm.loop !6

bb.ho:                                            ; preds = %bb.hc
  %i.arw = icmp ult ptr %.0335.i.ph.i, %.1988.i
  %i.arx = getelementptr inbounds i8, ptr %.1988.i, i64 %i.btl
  %i.ary = icmp ult ptr %.2.i.i, %i.arx
  %or.cond.i40.i = select i1 %i.arw, i1 %i.ary, i1 false ; 3 uses
  %.3990.i = select i1 %or.cond.i40.i, ptr %.0335.i.ph.i, ptr %.1988.i ; 2 uses
  %i.arz = ptrtoint ptr %.2.i.i to i64
  %i.asa = ptrtoint ptr %.3990.i to i64
  %i.asb = sub i64 %i.arz, %i.asa
  %i.asc = icmp slt i64 %i.asb, 3
  %.sroa.090.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.090.sroa.0.0.i.i to i64
  br i1 %i.asc, label %bb.de, label %.preheader1355.i

.preheader1355.i:                                 ; preds = %bb.ho
  %.sroa.0232.4.extract.shift.i.le.i = lshr i64 %.sroa.0232.0.i.ph.i, 32
  %.sroa.0232.4.extract.trunc.i.le.i = trunc nuw i64 %.sroa.0232.4.extract.shift.i.le.i to i32
  %.sroa.0162.sroa.14.1.i.le.i = select i1 %or.cond.i40.i, i32 %.sroa.0232.4.extract.trunc.i.le.i, i32 %.sroa.0162.sroa.14.0.i.i
  %.sroa.0162.sroa.0.1.i.le.v.i = select i1 %or.cond.i40.i, i64 %.sroa.0232.0.i.ph.i, i64 %.sroa.0162.sroa.0.0.in.i.i
  %.sroa.0162.sroa.0.1.i.le.i = trunc i64 %.sroa.0162.sroa.0.1.i.le.v.i to i32
  br label %.outer.i

bb.hp:                                            ; preds = %.outer.i, %bb.mn
  %.sroa.090.sroa.12.1.i.i = phi i32 [ %.sroa.051.sroa.8.0.i.i, %bb.mn ], [ %.sroa.090.sroa.12.1.i.ph.i, %.outer.i ] ; 4 uses
  %.sroa.090.sroa.0.1.i.i = phi i32 [ %.sroa.090.sroa.0.0.extract.trunc130.i.i, %bb.mn ], [ %.sroa.090.sroa.0.1.i.ph.i, %.outer.i ] ; 6 uses
  %.2340.i.i = phi ptr [ %.3341.i.i, %bb.mn ], [ %.2340.i.ph.i, %.outer.i ]
  %.3.i.i = phi ptr [ %.3341.i.i, %bb.mn ], [ %.3.i.ph.i, %.outer.i ] ; 4 uses
  %i.asd = ptrtoint ptr %.3.i.i to i64            ; 2 uses
  %i.ase = sub i64 %i.asd, %i.bvy                 ; 2 uses
  %i.asf = icmp slt i64 %i.ase, 18
  br i1 %i.asf, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.asg = sext i32 %.sroa.090.sroa.12.1.i.i to i64
  %i.ash = getelementptr inbounds i8, ptr %.3.i.i, i64 %i.asg
  %i.asi = getelementptr inbounds i8, ptr %i.ash, i64 -4
  %i.asj = icmp ugt ptr %i.bwa, %i.asi
  %i.ask = trunc i64 %i.ase to i32
  %i.asl = add i32 %.sroa.090.sroa.12.1.i.i, -4
  %i.asm = add i32 %i.asl, %i.ask
  %.0331.i.i = select i1 %i.asj, i32 %i.asm, i32 %spec.store.select.i.i
  %.neg.i.i = sub i64 %i.bvy, %i.asd
  %.neg359.i.i = trunc i64 %.neg.i.i to i32
  %i.asn = add i32 %.0331.i.i, %.neg359.i.i
  %i.aso = tail call i32 @llvm.smax.i32(i32 %i.asn, i32 0) ; 2 uses
  %.sroa.090.sroa.12.2.i.i = sub nsw i32 %.sroa.090.sroa.12.1.i.i, %i.aso
  %.4.i.idx.i = zext nneg i32 %i.aso to i64
  %.4.i.i = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 %.4.i.idx.i
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.sroa.090.sroa.12.3.i.i = phi i32 [ %.sroa.090.sroa.12.2.i.i, %bb.hq ], [ %.sroa.090.sroa.12.1.i.i, %bb.hp ] ; 12 uses
  %.5.i.i = phi ptr [ %.4.i.i, %bb.hq ], [ %.3.i.i, %bb.hp ] ; 18 uses
  %i.asp = sext i32 %.sroa.090.sroa.12.3.i.i to i64 ; 7 uses
  %i.asq = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.asp ; 9 uses
  %.not360.i.i = icmp ugt ptr %i.asq, %i.dj
  br i1 %.not360.i.i, label %bb.lp, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.asr = getelementptr inbounds i8, ptr %i.asq, i64 -3 ; 14 uses
  %i.ass = load ptr, ptr %i.g, align 8, !tbaa !42 ; 5 uses
  %i.ast = load ptr, ptr %i.m, align 8, !tbaa !25 ; 12 uses
  %i.asu = load i32, ptr %i.r, align 8, !tbaa !26 ; 13 uses
  %i.asv = ptrtoint ptr %i.asr to i64
  %i.asw = ptrtoint ptr %i.ast to i64             ; 2 uses
  %i.asx = sub i64 %i.asv, %i.asw                 ; 2 uses
  %i.asy = trunc i64 %i.asx to i32
  %i.asz = add i32 %i.asu, %i.asy                 ; 9 uses
  %i.ata = load i32, ptr %i.t, align 4, !tbaa !45 ; 6 uses
  %i.atb = add i32 %i.ata, 65536
  %i.atc = icmp ugt i32 %i.atb, %i.asz            ; 2 uses
  %i.atd = add i32 %i.asz, -65535
  %i.ate = select i1 %i.atc, i32 %i.ata, i32 %i.atd ; 5 uses
  %i.atf = load ptr, ptr %i.dp, align 8, !tbaa !44 ; 10 uses
  %i.atg = zext i32 %i.asu to i64                 ; 3 uses
  %i.ath = zext i32 %i.ata to i64
  %i.ati = sub nsw i64 %i.atg, %i.ath             ; 5 uses
  %.ptr1328.i = getelementptr inbounds i8, ptr %i.atf, i64 %i.ati ; 2 uses
  %i.atj = add nsw i64 %i.asp, -3                 ; 2 uses
  %i.atk = trunc i64 %i.atj to i32                ; 2 uses
  %.val580.i = load i32, ptr %i.asr, align 1, !tbaa !28 ; 18 uses
  %i.atl = load i32, ptr %i.dq, align 8, !tbaa !43 ; 4 uses
  %i.atm = icmp ult i32 %i.atl, %i.asz
  br i1 %i.atm, label %.lr.ph1642.i, label %LZ4HC_Insert.exit.i127.i

.lr.ph1642.i:                                     ; preds = %bb.hs
  %i.atn = sub nsw i64 0, %i.atg
  %invariant.gep1643.i = getelementptr i8, ptr %i.ast, i64 %i.atn ; 3 uses
  %i.ato = zext i32 %i.atl to i64                 ; 6 uses
  %i.atp = zext i32 %i.asz to i64                 ; 3 uses
  %i.atq = sub nsw i64 %i.atp, %i.ato
  %xtraiter1330 = and i64 %i.atq, 1
  %lcmp.mod1331.not = icmp eq i64 %xtraiter1330, 0
  br i1 %lcmp.mod1331.not, label %.prol.loopexit1329, label %.prol.loopexit1329.unr-lcssa

.prol.loopexit1329.unr-lcssa:                     ; preds = %.lr.ph1642.i
  %gep1644.i.prol = getelementptr i8, ptr %invariant.gep1643.i, i64 %i.ato
  %.val589.i.prol = load i32, ptr %gep1644.i.prol, align 1, !tbaa !28
  %i.atr = mul i32 %.val589.i.prol, -1640531535
  %i.ats = lshr i32 %i.atr, 17
  %i.att = zext nneg i32 %i.ats to i64
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.att ; 2 uses
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !29
  %i.atw = sub i32 %i.atl, %i.atv
  %i.atx = tail call i32 @llvm.umin.i32(i32 %i.atw, i32 65535)
  %i.aty = trunc nuw i32 %i.atx to i16
  %i.atz = and i64 %i.ato, 65535
  %i.aua = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.atz
  store i16 %i.aty, ptr %i.aua, align 2, !tbaa !40
  store i32 %i.atl, ptr %i.atu, align 4, !tbaa !29
  %indvars.iv.next2098.i.prol = add nuw nsw i64 %i.ato, 1
  br label %.prol.loopexit1329

.prol.loopexit1329:                               ; preds = %.prol.loopexit1329.unr-lcssa, %.lr.ph1642.i
  %indvars.iv2097.i.unr = phi i64 [ %i.ato, %.lr.ph1642.i ], [ %indvars.iv.next2098.i.prol, %.prol.loopexit1329.unr-lcssa ]
  %i.aub = add nsw i64 %i.atp, -1
  %i.auc = icmp eq i64 %i.aub, %i.ato
  br i1 %i.auc, label %LZ4HC_Insert.exit.i127.loopexit.i, label %.lr.ph1642.i.new

.lr.ph1642.i.new:                                 ; preds = %.prol.loopexit1329, %.lr.ph1642.i.new
  %indvars.iv2097.i = phi i64 [ %indvars.iv.next2098.i.1, %.lr.ph1642.i.new ], [ %indvars.iv2097.i.unr, %.prol.loopexit1329 ] ; 5 uses
  %gep1644.i = getelementptr i8, ptr %invariant.gep1643.i, i64 %indvars.iv2097.i
  %.val589.i = load i32, ptr %gep1644.i, align 1, !tbaa !28
  %i.aud = mul i32 %.val589.i, -1640531535
  %i.aue = lshr i32 %i.aud, 17
  %i.auf = zext nneg i32 %i.aue to i64
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.auf ; 2 uses
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !29
  %i.aui = trunc nuw i64 %indvars.iv2097.i to i32 ; 2 uses
  %i.auj = sub i32 %i.aui, %i.auh
  %i.auk = tail call i32 @llvm.umin.i32(i32 %i.auj, i32 65535)
  %i.aul = trunc nuw i32 %i.auk to i16
  %i.aum = and i64 %indvars.iv2097.i, 65535
  %i.aun = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.aum
  store i16 %i.aul, ptr %i.aun, align 2, !tbaa !40
  store i32 %i.aui, ptr %i.aug, align 4, !tbaa !29
  %indvars.iv.next2098.i = add nuw nsw i64 %indvars.iv2097.i, 1 ; 3 uses
  %gep1644.i.1 = getelementptr i8, ptr %invariant.gep1643.i, i64 %indvars.iv.next2098.i
  %.val589.i.1 = load i32, ptr %gep1644.i.1, align 1, !tbaa !28
  %i.auo = mul i32 %.val589.i.1, -1640531535
  %i.aup = lshr i32 %i.auo, 17
  %i.auq = zext nneg i32 %i.aup to i64
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.auq ; 2 uses
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !29
  %i.aut = trunc nuw i64 %indvars.iv.next2098.i to i32 ; 2 uses
  %i.auu = sub i32 %i.aut, %i.aus
  %i.auv = tail call i32 @llvm.umin.i32(i32 %i.auu, i32 65535)
  %i.auw = trunc nuw i32 %i.auv to i16
  %i.aux = and i64 %indvars.iv.next2098.i, 65535
  %i.auy = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.aux
  store i16 %i.auw, ptr %i.auy, align 2, !tbaa !40
  store i32 %i.aut, ptr %i.aur, align 4, !tbaa !29
  %indvars.iv.next2098.i.1 = add nuw nsw i64 %indvars.iv2097.i, 2 ; 2 uses
  %exitcond428.not.1 = icmp eq i64 %indvars.iv.next2098.i.1, %i.atp
  br i1 %exitcond428.not.1, label %LZ4HC_Insert.exit.i127.loopexit.i, label %.lr.ph1642.i.new, !llvm.loop !1

LZ4HC_Insert.exit.i127.loopexit.i:                ; preds = %.lr.ph1642.i.new, %.prol.loopexit1329
end_hunk_0
begin_hunk_1_@LZ4HC_compress_generic:bb.a
  %.246.i.i166.lcssa.i = phi ptr [ %.145.i.i163.i, %bb.lb ], [ %i.bkv, %bb.lc ] ; 4 uses
  %i.bkx = getelementptr inbounds i8, ptr %spec.select457.i161.i, i64 -3
  %i.bky = icmp ult ptr %.251.i.i165.lcssa.i, %i.bkx
  br i1 %i.bky, label %bb.ld, label %bb.lf

bb.ld:                                            ; preds = %._crit_edge1701.i
  %.246.i.i166.val.i = load i32, ptr %.246.i.i166.lcssa.i, align 1, !tbaa !28
  %.251.i.i165.val.i = load i32, ptr %.251.i.i165.lcssa.i, align 1, !tbaa !28
  %i.bkz = icmp eq i32 %.246.i.i166.val.i, %.251.i.i165.val.i
  br i1 %i.bkz, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  %i.bla = getelementptr inbounds nuw i8, ptr %.251.i.i165.lcssa.i, i64 4
  %i.blb = getelementptr inbounds nuw i8, ptr %.246.i.i166.lcssa.i, i64 4
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld, %._crit_edge1701.i
  %.453.i.i168.i = phi ptr [ %i.bla, %bb.le ], [ %.251.i.i165.lcssa.i, %bb.ld ], [ %.251.i.i165.lcssa.i, %._crit_edge1701.i ] ; 5 uses
  %.448.i.i169.i = phi ptr [ %i.blb, %bb.le ], [ %.246.i.i166.lcssa.i, %bb.ld ], [ %.246.i.i166.lcssa.i, %._crit_edge1701.i ] ; 4 uses
  %i.blc = getelementptr inbounds i8, ptr %spec.select457.i161.i, i64 -1
  %i.bld = icmp ult ptr %.453.i.i168.i, %i.blc
  br i1 %i.bld, label %bb.lg, label %bb.li

bb.lg:                                            ; preds = %bb.lf
  %.448.i.i169.val.i = load i16, ptr %.448.i.i169.i, align 1, !tbaa !38
  %.453.i.i168.val.i = load i16, ptr %.453.i.i168.i, align 1, !tbaa !38
  %i.ble = icmp eq i16 %.448.i.i169.val.i, %.453.i.i168.val.i
  br i1 %i.ble, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.blf = getelementptr inbounds nuw i8, ptr %.453.i.i168.i, i64 2
  %i.blg = getelementptr inbounds nuw i8, ptr %.448.i.i169.i, i64 2
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg, %bb.lf
  %.554.i.i170.i = phi ptr [ %i.blf, %bb.lh ], [ %.453.i.i168.i, %bb.lg ], [ %.453.i.i168.i, %bb.lf ] ; 4 uses
  %.5.i.i171.i = phi ptr [ %i.blg, %bb.lh ], [ %.448.i.i169.i, %bb.lg ], [ %.448.i.i169.i, %bb.lf ]
  %i.blh = icmp ult ptr %.554.i.i170.i, %spec.select457.i161.i
  br i1 %i.blh, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.bli = load i8, ptr %.5.i.i171.i, align 1, !tbaa !39
  %i.blj = load i8, ptr %.554.i.i170.i, align 1, !tbaa !39
  %i.blk = icmp eq i8 %i.bli, %i.blj
  %spec.select.i.i178.idx.i = zext i1 %i.blk to i64
  %spec.select.i.i178.i = getelementptr inbounds nuw i8, ptr %.554.i.i170.i, i64 %spec.select.i.i178.idx.i
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %.6.i.i172.i = phi ptr [ %.554.i.i170.i, %bb.li ], [ %spec.select.i.i178.i, %bb.lj ]
  %i.bll = ptrtoint ptr %.6.i.i172.i to i64
  %i.blm = sub i64 %i.bll, %i.bju
  %i.bln = trunc i64 %i.blm to i32
  br label %LZ4_count.exit.i173.i

LZ4_count.exit.i173.i:                            ; preds = %bb.lk, %.thread1239.i, %bb.la
  %.4.i.i174.i = phi i32 [ %i.bkt, %.thread1239.i ], [ %i.bln, %bb.lk ], [ %i.bkl, %bb.la ]
  %i.blo = add nsw i32 %.4.i.i174.i, 4
  br i1 %.not443.i.i, label %LZ4HC_countBack.exit.i.i, label %bb.ll

bb.ll:                                            ; preds = %LZ4_count.exit.i173.i
  %.neg1331.i = sub nsw i64 %i.bje, %i.bjy
  %..i.i.i = tail call i64 @llvm.smax.i64(i64 %gepdiff1329.i, i64 %.neg1331.i) ; 2 uses
  %i.blp = trunc i64 %..i.i.i to i32              ; 2 uses
  %i.blq = icmp slt i32 %i.blp, -3
  %sext2458.i = shl i64 %..i.i.i, 32
  %i.blr = ashr exact i64 %sext2458.i, 32         ; 3 uses
  br i1 %i.blq, label %.lr.ph1706.preheader.i, label %.preheader.i

.lr.ph1706.preheader.i:                           ; preds = %bb.ll
  %invariant.op2686.i = add nsw i64 %i.blr, 3
  br label %.lr.ph1706.i

.preheader.loopexit.i:                            ; preds = %bb.lm
  %i.bls = trunc nsw i64 %indvars.iv.next2115.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.ll
  %.027.i.i.lcssa.i = phi i32 [ %i.bls, %.preheader.loopexit.i ], [ 0, %bb.ll ] ; 2 uses
  %i.blt = sext i32 %.027.i.i.lcssa.i to i64      ; 2 uses
  %smin2119.i = tail call i32 @llvm.smin.i32(i32 %.027.i.i.lcssa.i, i32 %i.blp) ; 2 uses
  %i.blu = icmp slt i64 %i.blr, %i.blt
  br i1 %i.blu, label %.lr.ph1105, label %LZ4HC_countBack.exit.i.i

.lr.ph1706.i:                                     ; preds = %bb.lm, %.lr.ph1706.preheader.i
  %indvars.iv2114.i = phi i64 [ 0, %.lr.ph1706.preheader.i ], [ %indvars.iv.next2115.i, %bb.lm ] ; 4 uses
  %i.blv = getelementptr inbounds i8, ptr %i.asr, i64 %indvars.iv2114.i
  %i.blw = getelementptr inbounds i8, ptr %i.blv, i64 -4
  %.val578.i = load i32, ptr %i.blw, align 1, !tbaa !28 ; 2 uses
  %i.blx = getelementptr inbounds i8, ptr %i.bjz, i64 %indvars.iv2114.i
  %i.bly = getelementptr inbounds i8, ptr %i.blx, i64 -4
  %.val577.i = load i32, ptr %i.bly, align 1, !tbaa !28 ; 2 uses
  %.not.i531.i.i = icmp eq i32 %.val578.i, %.val577.i
  br i1 %.not.i531.i.i, label %bb.lm, label %.thread1243.i

.thread1243.i:                                    ; preds = %.lr.ph1706.i
  %i.blz = trunc nsw i64 %indvars.iv2114.i to i32
  %i.bma = xor i32 %.val577.i, %.val578.i
  %i.bmb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.bma, i1 true)
  %i.bmc = lshr i32 %i.bmb, 3
  %i.bmd = sub nsw i32 %i.blz, %i.bmc
  br label %LZ4HC_countBack.exit.i.i

bb.lm:                                            ; preds = %.lr.ph1706.i
  %indvars.iv.next2115.i = add nsw i64 %indvars.iv2114.i, -4 ; 3 uses
  %i.bme = icmp sgt i64 %indvars.iv.next2115.i, %invariant.op2686.i
  br i1 %i.bme, label %.lr.ph1706.i, label %.preheader.loopexit.i

bb.ln:                                            ; preds = %.lr.ph1105
  %i.bmf = icmp sgt i64 %indvars.iv.next2118.i, %i.blr
  br i1 %i.bmf, label %.lr.ph1105, label %LZ4HC_countBack.exit.i.i, !llvm.loop !0

.lr.ph1105:                                       ; preds = %.preheader.i, %bb.ln
  %indvars.iv2117.i1104 = phi i64 [ %indvars.iv.next2118.i, %bb.ln ], [ %i.blt, %.preheader.i ] ; 2 uses
  %indvars.iv.next2118.i = add nsw i64 %indvars.iv2117.i1104, -1 ; 4 uses
  %i.bmg = getelementptr inbounds i8, ptr %i.asr, i64 %indvars.iv.next2118.i
  %i.bmh = load i8, ptr %i.bmg, align 1, !tbaa !39
  %i.bmi = getelementptr inbounds i8, ptr %i.bjz, i64 %indvars.iv.next2118.i
  %i.bmj = load i8, ptr %i.bmi, align 1, !tbaa !39
  %i.bmk = icmp eq i8 %i.bmh, %i.bmj
  br i1 %i.bmk, label %bb.ln, label %LZ4HC_countBack.exit.i.loopexit.split.loop.exit.i, !llvm.loop !0

LZ4HC_countBack.exit.i.loopexit.split.loop.exit.i: ; preds = %.lr.ph1105
  %i.bml = trunc nsw i64 %indvars.iv2117.i1104 to i32
  br label %LZ4HC_countBack.exit.i.i

LZ4HC_countBack.exit.i.i:                         ; preds = %bb.ln, %.preheader.i, %LZ4HC_countBack.exit.i.loopexit.split.loop.exit.i, %.thread1243.i, %LZ4_count.exit.i173.i
  %i.bmm = phi i32 [ 0, %LZ4_count.exit.i173.i ], [ %i.bmd, %.thread1243.i ], [ %i.bml, %LZ4HC_countBack.exit.i.loopexit.split.loop.exit.i ], [ %smin2119.i, %.preheader.i ], [ %smin2119.i, %bb.ln ] ; 2 uses
  %i.bmn = sub i32 %i.blo, %i.bmm                 ; 2 uses
  %i.bmo = icmp sgt i32 %i.bmn, %.19.i1561713.i1106 ; 2 uses
  %.20368.i175.i = select i1 %i.bmo, i32 %i.bjw, i32 %.19367.i1531710.i1109
  %.8345.i176.i = select i1 %i.bmo, i32 %i.bmm, i32 %.7344.i1541711.i1108
  %.20.i177.i = tail call i32 @llvm.smax.i32(i32 %i.bmn, i32 %.19.i1561713.i1106)
  br label %bb.lo

bb.lo:                                            ; preds = %LZ4HC_countBack.exit.i.i, %bb.kx
  %.21369.i158.i = phi i32 [ %.20368.i175.i, %LZ4HC_countBack.exit.i.i ], [ %.19367.i1531710.i1109, %bb.kx ] ; 2 uses
  %.9346.i159.i = phi i32 [ %.8345.i176.i, %LZ4HC_countBack.exit.i.i ], [ %.7344.i1541711.i1108, %bb.kx ] ; 2 uses
  %.21.i160.i = phi i32 [ %.20.i177.i, %LZ4HC_countBack.exit.i.i ], [ %.19.i1561713.i1106, %bb.kx ] ; 2 uses
  %i.bmp = and i32 %.0315.i1551712.i1107, 65535
  %i.bmq = zext nneg i32 %i.bmp to i64
  %i.bmr = getelementptr inbounds nuw [2 x i8], ptr %i.bjv, i64 %i.bmq
  %i.bms = load i16, ptr %i.bmr, align 2, !tbaa !40
  %i.bmt = zext i16 %i.bms to i32                 ; 2 uses
  %i.bmu = sub i32 %.16397.i1521709.i1110, %i.bmt ; 2 uses
  %i.bmv = sub i32 %i.asz, %i.bmu                 ; 2 uses
  %i.bmw = icmp ugt i32 %i.bmv, 65535
  %i.bmx = sub i32 %.0315.i1551712.i1107, %i.bmt
  %.not442.i157.i = icmp eq i32 %i.bjx, 0
  %or.cond1114 = select i1 %i.bmw, i1 true, i1 %.not442.i157.i
  br i1 %or.cond1114, label %LZ4HC_InsertAndGetWiderMatch.exit327.i, label %bb.kx, !llvm.loop !5

LZ4HC_InsertAndGetWiderMatch.exit327.i:           ; preds = %bb.lo, %bb.kw, %.thread1223.thread.i
  %.22370.i142.i = phi i32 [ %.18366.i137.i, %.thread1223.thread.i ], [ %.18366.i137.i, %bb.kw ], [ %.21369.i158.i, %bb.lo ]
  %.10347.i143.i = phi i32 [ %.6343.i138.i, %.thread1223.thread.i ], [ %.6343.i138.i, %bb.kw ], [ %.9346.i159.i, %bb.lo ]
  %.22.i144.i = phi i32 [ %.18.i139.i, %.thread1223.thread.i ], [ %.18.i139.i, %bb.kw ], [ %.21.i160.i, %bb.lo ]
  %.sroa.0312.0.insert.ext.i147.i = zext i32 %.22370.i142.i to i64
  %i.bmy = sext i32 %.10347.i143.i to i64
  %i.bmz = getelementptr inbounds i8, ptr %i.asr, i64 %i.bmy
  br label %bb.lp

bb.lp:                                            ; preds = %LZ4HC_InsertAndGetWiderMatch.exit327.i, %bb.hr
  %.sroa.051.sroa.8.0.i.i = phi i32 [ %.22.i144.i, %LZ4HC_InsertAndGetWiderMatch.exit327.i ], [ 0, %bb.hr ] ; 5 uses
  %.sroa.051.sroa.0.0.i.i = phi i64 [ %.sroa.0312.0.insert.ext.i147.i, %LZ4HC_InsertAndGetWiderMatch.exit327.i ], [ 0, %bb.hr ] ; 3 uses
  %.3341.i.i = phi ptr [ %i.bmz, %LZ4HC_InsertAndGetWiderMatch.exit327.i ], [ %.2340.i.i, %bb.hr ] ; 11 uses
  %.not361.i.i = icmp sgt i32 %.sroa.051.sroa.8.0.i.i, %.sroa.090.sroa.12.3.i.i
  br i1 %.not361.i.i, label %bb.mm, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %.5.i.lcssa21932196.i = ptrtoaddr ptr %.5.i.i to i64
  %i.bna = icmp ult ptr %.5.i.i, %i.bwc
  %i.bnb = ptrtoint ptr %.5.i.i to i64            ; 3 uses
  %i.bnc = sub i64 %i.bnb, %i.bvy
  %i.bnd = trunc i64 %i.bnc to i32
  %.sroa.0162.sroa.14.3.i.i = select i1 %i.bna, i32 %i.bnd, i32 %.sroa.0162.sroa.14.2.i.ph.i ; 3 uses
  %i.bne = getelementptr i8, ptr %.5.ph.i, i64 1  ; 4 uses
  %i.bnf = ptrtoint ptr %.4981.ph.i to i64        ; 2 uses
  %i.bng = sub i64 %i.bvy, %i.bnf                 ; 7 uses
  %i.bnh = udiv i64 %i.bng, 255
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bne, i64 %i.bnh
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bni, i64 %i.bng
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 8
  %i.bnl = icmp ugt ptr %i.bnk, %spec.select.i.i
  %or.cond.i71.i = select i1 %.not.i47.i, i1 %i.bnl, i1 false
  br i1 %or.cond.i71.i, label %LZ4HC_encodeSequence.exit.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bnm = icmp ugt i64 %i.bng, 14
  br i1 %i.bnm, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.bnn = add i64 %i.bng, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bno = icmp ugt i64 %i.bnn, 254
  br i1 %i.bno, label %.lr.ph1768.preheader.i, label %._crit_edge1769.i

.lr.ph1768.preheader.i:                           ; preds = %bb.ls
  %i.bnp = add i64 %i.bng, -270                   ; 2 uses
  %i.bnq = udiv i64 %i.bnp, 255                   ; 3 uses
  %i.bnr = add nuw nsw i64 %i.bnq, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bne, i8 -1, i64 range(i64 0, 72340172838076675) %i.bnr, i1 false), !tbaa !39
  %scevgep2171.i = getelementptr i8, ptr %.5.ph.i, i64 2
  %scevgep2175.i = getelementptr i8, ptr %scevgep2171.i, i64 %i.bnq
  %.neg2460.i = mul i64 %i.bnq, -255
  %i.bns = add i64 %.neg2460.i, %i.bnp
  br label %._crit_edge1769.i

._crit_edge1769.i:                                ; preds = %.lr.ph1768.preheader.i, %bb.ls
  %.28.lcssa.i = phi ptr [ %i.bne, %bb.ls ], [ %scevgep2175.i, %.lr.ph1768.preheader.i ] ; 2 uses
  %.0.i78.lcssa.i = phi i64 [ %i.bnn, %bb.ls ], [ %i.bns, %.lr.ph1768.preheader.i ]
  %i.bnt = trunc nuw i64 %.0.i78.lcssa.i to i8
  %i.bnu = getelementptr inbounds nuw i8, ptr %.28.lcssa.i, i64 1
  store i8 %i.bnt, ptr %.28.lcssa.i, align 1, !tbaa !39
  br label %bb.lu

bb.lt:                                            ; preds = %bb.lr
  %.tr.i72.i = trunc nuw nsw i64 %i.bng to i8
  %i.bnv = shl nuw i8 %.tr.i72.i, 4
  store i8 %i.bnv, ptr %.5.ph.i, align 1, !tbaa !39
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %._crit_edge1769.i
  %.24.i = phi ptr [ %i.bnu, %._crit_edge1769.i ], [ %i.bne, %bb.lt ] ; 3 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %.24.i, i64 %i.bng ; 3 uses
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lv, %bb.lu
  %.09.i103.i = phi ptr [ %.24.i, %bb.lu ], [ %i.bny, %bb.lv ] ; 2 uses
  %.0.i104.i = phi ptr [ %.4981.ph.i, %bb.lu ], [ %i.bnz, %bb.lv ] ; 2 uses
  %i.bnx = load i64, ptr %.0.i104.i, align 1
  store i64 %i.bnx, ptr %.09.i103.i, align 1
  %i.bny = getelementptr inbounds nuw i8, ptr %.09.i103.i, i64 8 ; 2 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %.0.i104.i, i64 8
  %i.boa = icmp ult ptr %i.bny, %i.bnw
  br i1 %i.boa, label %bb.lv, label %LZ4_wildCopy8.exit105.i, !llvm.loop !7

LZ4_wildCopy8.exit105.i:                          ; preds = %bb.lv
  %i.bob = trunc i32 %.sroa.0162.sroa.0.2.i.ph.i to i16
  store i16 %i.bob, ptr %i.bnw, align 1, !tbaa !38
  %i.boc = getelementptr i8, ptr %i.bnw, i64 2    ; 4 uses
  %i.bod = sext i32 %.sroa.0162.sroa.14.3.i.i to i64 ; 5 uses
  %i.boe = add nsw i64 %i.bod, -4                 ; 3 uses
  %i.bof = udiv i64 %i.boe, 255
  %i.bog = getelementptr inbounds nuw i8, ptr %i.boc, i64 %i.bof
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 6
  %i.boi = icmp ugt ptr %i.boh, %spec.select.i.i
  %or.cond64.i74.i = select i1 %.not.i47.i, i1 %i.boi, i1 false
  br i1 %or.cond64.i74.i, label %LZ4HC_encodeSequence.exit.i, label %bb.lw

bb.lw:                                            ; preds = %LZ4_wildCopy8.exit105.i
  %i.boj = icmp ugt i64 %i.boe, 14
  br i1 %i.boj, label %bb.lx, label %bb.ma

bb.lx:                                            ; preds = %bb.lw
  %i.bok = load i8, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bol = add i8 %i.bok, 15
  store i8 %i.bol, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bom = add nsw i64 %i.bod, -19                ; 2 uses
  %i.bon = icmp ugt i64 %i.bom, 509
  br i1 %i.bon, label %.lr.ph1775.preheader.i, label %._crit_edge1776.i

.lr.ph1775.preheader.i:                           ; preds = %bb.lx
  %i.boo = add nsw i64 %i.bod, -529               ; 2 uses
  %i.bop = udiv i64 %i.boo, 510                   ; 2 uses
  %i.boq = shl nuw nsw i64 %i.bop, 1              ; 2 uses
  %i.bor = add nuw nsw i64 %i.boq, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.boc, i8 -1, i64 range(i64 0, 72340172838076675) %i.bor, i1 false), !tbaa !39
  %scevgep2179.i = getelementptr i8, ptr %.24.i, i64 4
  %i.bos = sub i64 %i.boq, %i.bnf
  %scevgep2180.i = getelementptr i8, ptr %scevgep2179.i, i64 %i.bos
  %scevgep2184.i = getelementptr i8, ptr %scevgep2180.i, i64 %i.bvy
  %.neg2461.i = mul i64 %i.bop, -510
  %i.bot = add i64 %.neg2461.i, %i.boo
  br label %._crit_edge1776.i

._crit_edge1776.i:                                ; preds = %.lr.ph1775.preheader.i, %bb.lx
  %.26.lcssa.i = phi ptr [ %i.boc, %bb.lx ], [ %scevgep2184.i, %.lr.ph1775.preheader.i ] ; 3 uses
  %.050.i76.lcssa.i = phi i64 [ %i.bom, %bb.lx ], [ %i.bot, %.lr.ph1775.preheader.i ] ; 3 uses
  %i.bou = icmp samesign ugt i64 %.050.i76.lcssa.i, 254
  br i1 %i.bou, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %._crit_edge1776.i
  %i.bov = add nsw i64 %.050.i76.lcssa.i, -255
  %i.bow = getelementptr inbounds nuw i8, ptr %.26.lcssa.i, i64 1
  store i8 -1, ptr %.26.lcssa.i, align 1, !tbaa !39
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %._crit_edge1776.i
  %.27.i = phi ptr [ %i.bow, %bb.ly ], [ %.26.lcssa.i, %._crit_edge1776.i ] ; 2 uses
  %.1.i77.i = phi i64 [ %i.bov, %bb.ly ], [ %.050.i76.lcssa.i, %._crit_edge1776.i ]
  %i.box = trunc nuw i64 %.1.i77.i to i8
  %i.boy = getelementptr inbounds nuw i8, ptr %.27.i, i64 1
  store i8 %i.box, ptr %.27.i, align 1, !tbaa !39
  br label %bb.mb

bb.ma:                                            ; preds = %bb.lw
  %i.boz = trunc nuw nsw i64 %i.boe to i8
  %i.bpa = load i8, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bpb = add i8 %i.bpa, %i.boz
  store i8 %i.bpb, ptr %.5.ph.i, align 1, !tbaa !39
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %.25.i = phi ptr [ %i.boy, %bb.lz ], [ %i.boc, %bb.ma ] ; 10 uses
  %i.bpc = getelementptr inbounds i8, ptr %.4991.ph.i, i64 %i.bod ; 4 uses
  %i.bpd = getelementptr i8, ptr %.25.i, i64 1    ; 4 uses
  %i.bpe = ptrtoint ptr %i.bpc to i64             ; 2 uses
  %i.bpf = sub i64 %i.bnb, %i.bpe                 ; 6 uses
  %i.bpg = udiv i64 %i.bpf, 255
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpd, i64 %i.bpg
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 %i.bpf
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 8
  %i.bpk = icmp ugt ptr %i.bpj, %spec.select.i.i
  %or.cond.i60.i = select i1 %.not.i47.i, i1 %i.bpk, i1 false
  br i1 %or.cond.i60.i, label %LZ4HC_encodeSequence.exit.i, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bpl = icmp ugt i64 %i.bpf, 14
  br i1 %i.bpl, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.bpm = add i64 %i.bpf, -15                    ; 2 uses
  store i8 -16, ptr %.25.i, align 1, !tbaa !39
  %i.bpn = icmp ugt i64 %i.bpm, 254
  br i1 %i.bpn, label %.lr.ph1782.preheader.i, label %._crit_edge1783.i

.lr.ph1782.preheader.i:                           ; preds = %bb.md
  %i.bpo = add i64 %i.bnb, -270
  %i.bpp = sub i64 %i.bpo, %i.bpe                 ; 2 uses
  %i.bpq = udiv i64 %i.bpp, 255                   ; 3 uses
  %i.bpr = add nuw nsw i64 %i.bpq, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bpd, i8 -1, i64 range(i64 0, 72340172838076675) %i.bpr, i1 false), !tbaa !39
  %scevgep2185.i = getelementptr i8, ptr %.25.i, i64 2
  %scevgep2186.i = getelementptr i8, ptr %scevgep2185.i, i64 %i.bpq
  %.neg2462.i = mul i64 %i.bpq, -255
  %i.bps = add i64 %.neg2462.i, %i.bpp
  br label %._crit_edge1783.i

._crit_edge1783.i:                                ; preds = %.lr.ph1782.preheader.i, %bb.md
  %.22.lcssa.i = phi ptr [ %i.bpd, %bb.md ], [ %scevgep2186.i, %.lr.ph1782.preheader.i ] ; 2 uses
  %.0.i67.lcssa.i = phi i64 [ %i.bpm, %bb.md ], [ %i.bps, %.lr.ph1782.preheader.i ]
  %i.bpt = trunc nuw i64 %.0.i67.lcssa.i to i8
  %i.bpu = getelementptr inbounds nuw i8, ptr %.22.lcssa.i, i64 1
  store i8 %i.bpt, ptr %.22.lcssa.i, align 1, !tbaa !39
  br label %bb.mf

bb.me:                                            ; preds = %bb.mc
  %.tr.i61.i = trunc nuw nsw i64 %i.bpf to i8
  %i.bpv = shl nuw i8 %.tr.i61.i, 4
  store i8 %i.bpv, ptr %.25.i, align 1, !tbaa !39
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %._crit_edge1783.i
  %.18.i = phi ptr [ %i.bpu, %._crit_edge1783.i ], [ %i.bpd, %bb.me ] ; 3 uses
  %i.bpw = getelementptr inbounds nuw i8, ptr %.18.i, i64 %i.bpf ; 3 uses
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mg, %bb.mf
  %.09.i106.i = phi ptr [ %.18.i, %bb.mf ], [ %i.bpy, %bb.mg ] ; 2 uses
  %.0.i107.i = phi ptr [ %i.bpc, %bb.mf ], [ %i.bpz, %bb.mg ] ; 2 uses
  %i.bpx = load i64, ptr %.0.i107.i, align 1
  store i64 %i.bpx, ptr %.09.i106.i, align 1
  %i.bpy = getelementptr inbounds nuw i8, ptr %.09.i106.i, i64 8 ; 2 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %.0.i107.i, i64 8
  %i.bqa = icmp ult ptr %i.bpy, %i.bpw
  br i1 %i.bqa, label %bb.mg, label %LZ4_wildCopy8.exit108.i, !llvm.loop !7

LZ4_wildCopy8.exit108.i:                          ; preds = %bb.mg
  %i.bqb = trunc i32 %.sroa.090.sroa.0.1.i.i to i16
  store i16 %i.bqb, ptr %i.bpw, align 1, !tbaa !38
  %i.bqc = getelementptr i8, ptr %i.bpw, i64 2    ; 4 uses
  %i.bqd = add nsw i64 %i.asp, -4                 ; 3 uses
  %i.bqe = udiv i64 %i.bqd, 255
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqc, i64 %i.bqe
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 6
  %i.bqh = icmp ugt ptr %i.bqg, %spec.select.i.i
  %or.cond64.i63.i = select i1 %.not.i47.i, i1 %i.bqh, i1 false
  br i1 %or.cond64.i63.i, label %LZ4HC_encodeSequence.exit.i, label %bb.mh

bb.mh:                                            ; preds = %LZ4_wildCopy8.exit108.i
  %i.bqi = icmp ugt i64 %i.bqd, 14
  br i1 %i.bqi, label %bb.mi, label %bb.ml

bb.mi:                                            ; preds = %bb.mh
  %i.bqj = load i8, ptr %.25.i, align 1, !tbaa !39
  %i.bqk = add i8 %i.bqj, 15
  store i8 %i.bqk, ptr %.25.i, align 1, !tbaa !39
  %i.bql = add nsw i64 %i.asp, -19                ; 2 uses
  %i.bqm = icmp ugt i64 %i.bql, 509
  br i1 %i.bqm, label %.lr.ph1789.preheader.i, label %._crit_edge1790.i

.lr.ph1789.preheader.i:                           ; preds = %bb.mi
  %i.bqn = add nsw i64 %i.asp, -529               ; 2 uses
  %i.bqo = udiv i64 %i.bqn, 510                   ; 2 uses
  %i.bqp = shl nuw nsw i64 %i.bqo, 1              ; 2 uses
  %i.bqq = add nuw nsw i64 %i.bqp, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bqc, i8 -1, i64 range(i64 0, 72340172838076675) %i.bqq, i1 false), !tbaa !39
  %scevgep2187.i = getelementptr i8, ptr %.18.i, i64 4
  %i.bqr = add i64 %i.bvy, %i.bod
  %i.bqs = sub i64 0, %i.bqr
  %scevgep2192.i = getelementptr i8, ptr %scevgep2187.i, i64 %i.bqs
  %i.bqt = getelementptr i8, ptr %scevgep2192.i, i64 %i.bqp
  %scevgep2197.i = getelementptr i8, ptr %i.bqt, i64 %.5.i.lcssa21932196.i
  %.neg2463.i = mul i64 %i.bqo, -510
  %i.bqu = add i64 %.neg2463.i, %i.bqn
  br label %._crit_edge1790.i

._crit_edge1790.i:                                ; preds = %.lr.ph1789.preheader.i, %bb.mi
  %.20.lcssa.i = phi ptr [ %i.bqc, %bb.mi ], [ %scevgep2197.i, %.lr.ph1789.preheader.i ] ; 3 uses
  %.050.i65.lcssa.i = phi i64 [ %i.bql, %bb.mi ], [ %i.bqu, %.lr.ph1789.preheader.i ] ; 3 uses
  %i.bqv = icmp samesign ugt i64 %.050.i65.lcssa.i, 254
  br i1 %i.bqv, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %._crit_edge1790.i
  %i.bqw = add nsw i64 %.050.i65.lcssa.i, -255
  %i.bqx = getelementptr inbounds nuw i8, ptr %.20.lcssa.i, i64 1
  store i8 -1, ptr %.20.lcssa.i, align 1, !tbaa !39
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %._crit_edge1790.i
  %.21.i = phi ptr [ %i.bqx, %bb.mj ], [ %.20.lcssa.i, %._crit_edge1790.i ] ; 2 uses
  %.1.i66.i = phi i64 [ %i.bqw, %bb.mj ], [ %.050.i65.lcssa.i, %._crit_edge1790.i ]
  %i.bqy = trunc nuw i64 %.1.i66.i to i8
  %i.bqz = getelementptr inbounds nuw i8, ptr %.21.i, i64 1
  store i8 %i.bqy, ptr %.21.i, align 1, !tbaa !39
  br label %.outer1361.backedge.i

bb.ml:                                            ; preds = %bb.mh
  %i.bra = trunc nuw nsw i64 %i.bqd to i8
  %i.brb = load i8, ptr %.25.i, align 1, !tbaa !39
  %i.brc = add i8 %i.brb, %i.bra
  store i8 %i.brc, ptr %.25.i, align 1, !tbaa !39
  br label %.outer1361.backedge.i

bb.mm:                                            ; preds = %bb.lp
  %i.brd = icmp ult ptr %.3341.i.i, %i.bwd
  br i1 %i.brd, label %bb.mn, label %bb.nc

bb.mn:                                            ; preds = %bb.mm
  %.not365.i.i = icmp ult ptr %.3341.i.i, %i.bwc
  %.sroa.090.sroa.0.0.extract.trunc130.i.i = trunc nuw i64 %.sroa.051.sroa.0.0.i.i to i32 ; 2 uses
  br i1 %.not365.i.i, label %bb.hp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.bre = icmp ult ptr %.5.i.i, %i.bwc
  br i1 %i.bre, label %bb.mp, label %bb.mq

bb.mp:                                            ; preds = %bb.mo
  %i.brf = ptrtoint ptr %i.bwc to i64
  %i.brg = ptrtoint ptr %.5.i.i to i64
  %i.brh = sub i64 %i.brf, %i.brg                 ; 2 uses
  %i.bri = trunc i64 %i.brh to i32
  %sext.i.i = shl i64 %i.brh, 32
  %i.brj = ashr exact i64 %sext.i.i, 32
  %i.brk = getelementptr inbounds i8, ptr %.5.i.i, i64 %i.brj
  %i.brl = sub nsw i32 %.sroa.090.sroa.12.3.i.i, %i.bri ; 2 uses
  %i.brm = icmp slt i32 %i.brl, 4                 ; 3 uses
  %.sroa.090.sroa.12.4.i.i = select i1 %i.brm, i32 %.sroa.051.sroa.8.0.i.i, i32 %i.brl
  %.sroa.090.sroa.0.2.i.i = select i1 %i.brm, i32 %.sroa.090.sroa.0.0.extract.trunc130.i.i, i32 %.sroa.090.sroa.0.1.i.i
  %.6.i.i = select i1 %i.brm, ptr %.3341.i.i, ptr %i.brk
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  %.sroa.090.sroa.12.5.i.i = phi i32 [ %.sroa.090.sroa.12.4.i.i, %bb.mp ], [ %.sroa.090.sroa.12.3.i.i, %bb.mo ]
  %.sroa.090.sroa.0.3.i.i = phi i32 [ %.sroa.090.sroa.0.2.i.i, %bb.mp ], [ %.sroa.090.sroa.0.1.i.i, %bb.mo ]
  %.7.i.i = phi ptr [ %.6.i.i, %bb.mp ], [ %.5.i.i, %bb.mo ] ; 2 uses
  %i.brn = getelementptr i8, ptr %.5.ph.i, i64 1  ; 4 uses
  %i.bro = ptrtoint ptr %.4981.ph.i to i64        ; 2 uses
  %i.brp = sub i64 %i.bvy, %i.bro                 ; 7 uses
  %i.brq = udiv i64 %i.brp, 255
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brn, i64 %i.brq
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 %i.brp
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brs, i64 8
  %i.bru = icmp ugt ptr %i.brt, %spec.select.i.i
  %or.cond.i44.i = select i1 %.not.i47.i, i1 %i.bru, i1 false
  br i1 %or.cond.i44.i, label %LZ4HC_encodeSequence.exit.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.brv = icmp ugt i64 %i.brp, 14
  br i1 %i.brv, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.brw = add i64 %i.brp, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph.i, align 1, !tbaa !39
  %i.brx = icmp ugt i64 %i.brw, 254
  br i1 %i.brx, label %.lr.ph1740.preheader.i, label %._crit_edge1741.i

.lr.ph1740.preheader.i:                           ; preds = %bb.ms
  %i.bry = add i64 %i.brp, -270                   ; 2 uses
  %i.brz = udiv i64 %i.bry, 255                   ; 3 uses
  %i.bsa = add nuw nsw i64 %i.brz, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.brn, i8 -1, i64 range(i64 0, 72340172838076675) %i.bsa, i1 false), !tbaa !39
  %scevgep2130.i = getelementptr i8, ptr %.5.ph.i, i64 2
  %scevgep2134.i = getelementptr i8, ptr %scevgep2130.i, i64 %i.brz
  %.neg2467.i = mul i64 %i.brz, -255
  %i.bsb = add i64 %.neg2467.i, %i.bry
  br label %._crit_edge1741.i

._crit_edge1741.i:                                ; preds = %.lr.ph1740.preheader.i, %bb.ms
  %.10.lcssa.i = phi ptr [ %i.brn, %bb.ms ], [ %scevgep2134.i, %.lr.ph1740.preheader.i ] ; 2 uses
  %.0.i46.lcssa.i = phi i64 [ %i.brw, %bb.ms ], [ %i.bsb, %.lr.ph1740.preheader.i ]
  %i.bsc = trunc nuw i64 %.0.i46.lcssa.i to i8
  %i.bsd = getelementptr inbounds nuw i8, ptr %.10.lcssa.i, i64 1
  store i8 %i.bsc, ptr %.10.lcssa.i, align 1, !tbaa !39
  br label %bb.mu

bb.mt:                                            ; preds = %bb.mr
  %.tr.i.i = trunc nuw nsw i64 %i.brp to i8
  %i.bse = shl nuw i8 %.tr.i.i, 4
  store i8 %i.bse, ptr %.5.ph.i, align 1, !tbaa !39
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %._crit_edge1741.i
  %.6.i = phi ptr [ %i.bsd, %._crit_edge1741.i ], [ %i.brn, %bb.mt ] ; 3 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %.6.i, i64 %i.brp ; 3 uses
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mv, %bb.mu
  %.09.i112.i = phi ptr [ %.6.i, %bb.mu ], [ %i.bsh, %bb.mv ] ; 2 uses
  %.0.i113.i = phi ptr [ %.4981.ph.i, %bb.mu ], [ %i.bsi, %bb.mv ] ; 2 uses
  %i.bsg = load i64, ptr %.0.i113.i, align 1
  store i64 %i.bsg, ptr %.09.i112.i, align 1
  %i.bsh = getelementptr inbounds nuw i8, ptr %.09.i112.i, i64 8 ; 2 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %.0.i113.i, i64 8
  %i.bsj = icmp ult ptr %i.bsh, %i.bsf
  br i1 %i.bsj, label %bb.mv, label %LZ4_wildCopy8.exit114.i, !llvm.loop !7

LZ4_wildCopy8.exit114.i:                          ; preds = %bb.mv
  %i.bsk = trunc i32 %.sroa.0162.sroa.0.2.i.ph.i to i16
  store i16 %i.bsk, ptr %i.bsf, align 1, !tbaa !38
  %i.bsl = getelementptr i8, ptr %i.bsf, i64 2    ; 4 uses
  %i.bsm = add nsw i64 %i.bwb, -4                 ; 3 uses
  %i.bsn = udiv i64 %i.bsm, 255
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsl, i64 %i.bsn
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 6
  %i.bsq = icmp ugt ptr %i.bsp, %spec.select.i.i
  %or.cond64.i.i = select i1 %.not.i47.i, i1 %i.bsq, i1 false
  br i1 %or.cond64.i.i, label %LZ4HC_encodeSequence.exit.i, label %bb.mw

bb.mw:                                            ; preds = %LZ4_wildCopy8.exit114.i
  %i.bsr = icmp ugt i64 %i.bsm, 14
  br i1 %i.bsr, label %bb.mx, label %bb.na

bb.mx:                                            ; preds = %bb.mw
  %i.bss = load i8, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bst = add i8 %i.bss, 15
  store i8 %i.bst, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bsu = add nsw i64 %i.bwb, -19                ; 2 uses
  %i.bsv = icmp ugt i64 %i.bsu, 509
  br i1 %i.bsv, label %.lr.ph1747.preheader.i, label %._crit_edge1748.i

.lr.ph1747.preheader.i:                           ; preds = %bb.mx
  %i.bsw = add nsw i64 %i.bwb, -529               ; 2 uses
  %i.bsx = udiv i64 %i.bsw, 510                   ; 2 uses
  %i.bsy = shl nuw nsw i64 %i.bsx, 1              ; 2 uses
  %i.bsz = add nuw nsw i64 %i.bsy, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bsl, i8 -1, i64 range(i64 0, 72340172838076675) %i.bsz, i1 false), !tbaa !39
  %scevgep2138.i = getelementptr i8, ptr %.6.i, i64 4
  %i.bta = sub i64 0, %i.bro
  %scevgep2139.i = getelementptr i8, ptr %scevgep2138.i, i64 %i.bta
  %i.btb = getelementptr i8, ptr %scevgep2139.i, i64 %i.bsy
  %scevgep2143.i = getelementptr i8, ptr %i.btb, i64 %i.bvy
  %.neg2468.i = mul i64 %i.bsx, -510
  %i.btc = add i64 %.neg2468.i, %i.bsw
  br label %._crit_edge1748.i

._crit_edge1748.i:                                ; preds = %.lr.ph1747.preheader.i, %bb.mx
  %.8.lcssa.i = phi ptr [ %i.bsl, %bb.mx ], [ %scevgep2143.i, %.lr.ph1747.preheader.i ] ; 3 uses
  %.050.i.lcssa.i = phi i64 [ %i.bsu, %bb.mx ], [ %i.btc, %.lr.ph1747.preheader.i ] ; 3 uses
  %i.btd = icmp samesign ugt i64 %.050.i.lcssa.i, 254
  br i1 %i.btd, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %._crit_edge1748.i
  %i.bte = add nsw i64 %.050.i.lcssa.i, -255
  %i.btf = getelementptr inbounds nuw i8, ptr %.8.lcssa.i, i64 1
  store i8 -1, ptr %.8.lcssa.i, align 1, !tbaa !39
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %._crit_edge1748.i
  %.9.i = phi ptr [ %i.btf, %bb.my ], [ %.8.lcssa.i, %._crit_edge1748.i ] ; 2 uses
  %.1.i45.i = phi i64 [ %i.bte, %bb.my ], [ %.050.i.lcssa.i, %._crit_edge1748.i ]
  %i.btg = trunc nuw i64 %.1.i45.i to i8
  %i.bth = getelementptr inbounds nuw i8, ptr %.9.i, i64 1
  store i8 %i.btg, ptr %.9.i, align 1, !tbaa !39
  br label %bb.nb

bb.na:                                            ; preds = %bb.mw
  %i.bti = trunc nuw nsw i64 %i.bsm to i8
  %i.btj = load i8, ptr %.5.ph.i, align 1, !tbaa !39
  %i.btk = add i8 %i.btj, %i.bti
  store i8 %i.btk, ptr %.5.ph.i, align 1, !tbaa !39
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz
  %.11.ph.i = phi ptr [ %i.bsl, %bb.na ], [ %i.bth, %bb.mz ]
  %.sroa.090.sroa.12.0.insert.ext154.i.i = zext i32 %.sroa.090.sroa.12.5.i.i to i64
  %.sroa.090.sroa.12.0.insert.shift155.i.i = shl nuw i64 %.sroa.090.sroa.12.0.insert.ext154.i.i, 32
  %.sroa.090.sroa.0.0.insert.ext136.i.i = zext i32 %.sroa.090.sroa.0.3.i.i to i64
  %.sroa.090.sroa.0.0.insert.insert138.i.i = or disjoint i64 %.sroa.090.sroa.12.0.insert.shift155.i.i, %.sroa.090.sroa.0.0.insert.ext136.i.i
  br label %.outer1358.i

.outer1358.i:                                     ; preds = %bb.nb, %.preheader1356.i
  %.1988.ph.i = phi ptr [ %.09871545.i, %.preheader1356.i ], [ %.3341.i.i, %bb.nb ]
  %.1978.ph.i = phi ptr [ %.0977.ph1827.i, %.preheader1356.i ], [ %i.bwc, %bb.nb ] ; 6 uses
  %.1.ph.i = phi ptr [ %.0976.ph1828.i, %.preheader1356.i ], [ %.11.ph.i, %bb.nb ] ; 11 uses
  %.sroa.0232.0.i.ph.i = phi i64 [ %.sroa.0312.0.insert.insert.i.le.i, %.preheader1356.i ], [ %.sroa.090.sroa.0.0.insert.insert138.i.i, %bb.nb ] ; 3 uses
  %.sroa.0162.sroa.14.0.i.ph.i = phi i32 [ %.22.i.i, %.preheader1356.i ], [ %.sroa.051.sroa.8.0.i.i, %bb.nb ]
  %.sroa.0162.sroa.0.0.in.i.ph.i = phi i64 [ %.sroa.0312.0.insert.insert.i.le.i, %.preheader1356.i ], [ %.sroa.051.sroa.0.0.i.i, %bb.nb ]
  %.1339.i.ph.i = phi ptr [ %.0338.i.ph1829.i, %.preheader1356.i ], [ %.3341.i.i, %bb.nb ] ; 3 uses
  %.1337.i.ph.i = phi ptr [ %.0336.i.ph1830.i, %.preheader1356.i ], [ %.7.i.i, %bb.nb ]
  %.0335.i.ph.i = phi ptr [ %.09871545.i, %.preheader1356.i ], [ %.7.i.i, %bb.nb ] ; 2 uses
  %i.btl = ashr i64 %.sroa.0232.0.i.ph.i, 32
  br label %bb.de

bb.nc:                                            ; preds = %bb.mm
  %i.btm = icmp ult ptr %.5.i.i, %i.bwc
  br i1 %i.btm, label %bb.nd, label %bb.ng

bb.nd:                                            ; preds = %bb.nc
  %i.btn = ptrtoint ptr %.5.i.i to i64            ; 2 uses
  %i.bto = sub i64 %i.btn, %i.bvy                 ; 3 uses
  %i.btp = icmp slt i64 %i.bto, 18
  br i1 %i.btp, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.btq = getelementptr inbounds i8, ptr %i.asq, i64 -4
  %i.btr = icmp ugt ptr %i.bwa, %i.btq
  %i.bts = trunc i64 %i.bto to i32
  %i.btt = add i32 %.sroa.090.sroa.12.3.i.i, -4
  %i.btu = add i32 %i.btt, %i.bts
  %.sroa.0162.sroa.14.5.i.i = select i1 %i.btr, i32 %i.btu, i32 %spec.store.select.i.i ; 2 uses
  %.neg362.i.i = sub i64 %i.bvy, %i.btn
  %.neg363.i.i = trunc i64 %.neg362.i.i to i32
  %i.btv = add i32 %.sroa.0162.sroa.14.5.i.i, %.neg363.i.i
  %i.btw = tail call i32 @llvm.smax.i32(i32 %i.btv, i32 0) ; 2 uses
  %.sroa.090.sroa.12.6.i.i = sub nsw i32 %.sroa.090.sroa.12.3.i.i, %i.btw
  %.8.i.idx.i = zext nneg i32 %i.btw to i64
  %.8.i.i = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 %.8.i.idx.i
  br label %bb.ng

bb.nf:                                            ; preds = %bb.nd
  %i.btx = trunc i64 %i.bto to i32
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %bb.ne, %bb.nc
  %.sroa.0162.sroa.14.6.i.i = phi i32 [ %.sroa.0162.sroa.14.5.i.i, %bb.ne ], [ %i.btx, %bb.nf ], [ %.sroa.0162.sroa.14.2.i.ph.i, %bb.nc ] ; 3 uses
  %.sroa.090.sroa.12.7.i.i = phi i32 [ %.sroa.090.sroa.12.6.i.i, %bb.ne ], [ %.sroa.090.sroa.12.3.i.i, %bb.nf ], [ %.sroa.090.sroa.12.3.i.i, %bb.nc ]
  %.9.i.i = phi ptr [ %.8.i.i, %bb.ne ], [ %.5.i.i, %bb.nf ], [ %.5.i.i, %bb.nc ]
  %i.bty = getelementptr i8, ptr %.5.ph.i, i64 1  ; 4 uses
  %i.btz = ptrtoint ptr %.4981.ph.i to i64        ; 2 uses
  %i.bua = sub i64 %i.bvy, %i.btz                 ; 7 uses
  %i.bub = udiv i64 %i.bua, 255
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bty, i64 %i.bub
  %i.bud = getelementptr inbounds nuw i8, ptr %i.buc, i64 %i.bua
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 8
  %i.buf = icmp ugt ptr %i.bue, %spec.select.i.i
  %or.cond.i49.i = select i1 %.not.i47.i, i1 %i.buf, i1 false
  br i1 %or.cond.i49.i, label %LZ4HC_encodeSequence.exit.i, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bug = icmp ugt i64 %i.bua, 14
  br i1 %i.bug, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.buh = add i64 %i.bua, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bui = icmp ugt i64 %i.buh, 254
  br i1 %i.bui, label %.lr.ph1726.preheader.i, label %._crit_edge1727.i

.lr.ph1726.preheader.i:                           ; preds = %bb.ni
  %i.buj = add i64 %i.bvy, -270
  %i.buk = sub i64 %i.buj, %i.btz                 ; 2 uses
  %i.bul = udiv i64 %i.buk, 255                   ; 3 uses
  %i.bum = add nuw nsw i64 %i.bul, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bty, i8 -1, i64 range(i64 0, 72340172838076675) %i.bum, i1 false), !tbaa !39
  %scevgep.i = getelementptr i8, ptr %.5.ph.i, i64 2
  %scevgep2121.i = getelementptr i8, ptr %scevgep.i, i64 %i.bul
  %.neg2464.i = mul i64 %i.bul, -255
  %i.bun = add i64 %.neg2464.i, %i.buk
  br label %._crit_edge1727.i

._crit_edge1727.i:                                ; preds = %.lr.ph1726.preheader.i, %bb.ni
  %.16.lcssa.i = phi ptr [ %i.bty, %bb.ni ], [ %scevgep2121.i, %.lr.ph1726.preheader.i ] ; 2 uses
  %.0.i56.lcssa.i = phi i64 [ %i.buh, %bb.ni ], [ %i.bun, %.lr.ph1726.preheader.i ]
  %i.buo = trunc nuw i64 %.0.i56.lcssa.i to i8
  %i.bup = getelementptr inbounds nuw i8, ptr %.16.lcssa.i, i64 1
  store i8 %i.buo, ptr %.16.lcssa.i, align 1, !tbaa !39
  br label %bb.nk

bb.nj:                                            ; preds = %bb.nh
  %.tr.i50.i = trunc nuw nsw i64 %i.bua to i8
  %i.buq = shl nuw i8 %.tr.i50.i, 4
  store i8 %i.buq, ptr %.5.ph.i, align 1, !tbaa !39
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %._crit_edge1727.i
  %.12.i = phi ptr [ %i.bup, %._crit_edge1727.i ], [ %i.bty, %bb.nj ] ; 3 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %.12.i, i64 %i.bua ; 3 uses
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nl, %bb.nk
  %.09.i109.i = phi ptr [ %.12.i, %bb.nk ], [ %i.but, %bb.nl ] ; 2 uses
  %.0.i110.i = phi ptr [ %.4981.ph.i, %bb.nk ], [ %i.buu, %bb.nl ] ; 2 uses
  %i.bus = load i64, ptr %.0.i110.i, align 1
  store i64 %i.bus, ptr %.09.i109.i, align 1
  %i.but = getelementptr inbounds nuw i8, ptr %.09.i109.i, i64 8 ; 2 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %.0.i110.i, i64 8
  %i.buv = icmp ult ptr %i.but, %i.bur
  br i1 %i.buv, label %bb.nl, label %LZ4_wildCopy8.exit111.i, !llvm.loop !7

LZ4_wildCopy8.exit111.i:                          ; preds = %bb.nl
  %i.buw = trunc i32 %.sroa.0162.sroa.0.2.i.ph.i to i16
  store i16 %i.buw, ptr %i.bur, align 1, !tbaa !38
  %i.bux = getelementptr i8, ptr %i.bur, i64 2    ; 4 uses
  %i.buy = sext i32 %.sroa.0162.sroa.14.6.i.i to i64 ; 4 uses
  %i.buz = add nsw i64 %i.buy, -4                 ; 3 uses
  %i.bva = udiv i64 %i.buz, 255
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bux, i64 %i.bva
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bvb, i64 6
  %i.bvd = icmp ugt ptr %i.bvc, %spec.select.i.i
  %or.cond64.i52.i = select i1 %.not.i47.i, i1 %i.bvd, i1 false
  br i1 %or.cond64.i52.i, label %LZ4HC_encodeSequence.exit.i, label %bb.nm

bb.nm:                                            ; preds = %LZ4_wildCopy8.exit111.i
  %i.bve = icmp ugt i64 %i.buz, 14
  br i1 %i.bve, label %bb.nn, label %bb.nq

bb.nn:                                            ; preds = %bb.nm
  %i.bvf = load i8, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bvg = add i8 %i.bvf, 15
  store i8 %i.bvg, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bvh = add nsw i64 %i.buy, -19                ; 2 uses
  %i.bvi = icmp ugt i64 %i.bvh, 509
  br i1 %i.bvi, label %.lr.ph1733.preheader.i, label %._crit_edge1734.i

.lr.ph1733.preheader.i:                           ; preds = %bb.nn
  %i.bvj = add nsw i64 %i.buy, -529               ; 2 uses
  %i.bvk = udiv i64 %i.bvj, 510                   ; 2 uses
  %i.bvl = shl nuw nsw i64 %i.bvk, 1              ; 2 uses
  %i.bvm = add nuw nsw i64 %i.bvl, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bux, i8 -1, i64 range(i64 0, 72340172838076675) %i.bvm, i1 false), !tbaa !39
  %scevgep2122.i = getelementptr i8, ptr %.12.i, i64 4
  %i.bvn = getelementptr i8, ptr %scevgep2122.i, i64 %i.bua
  %scevgep2123.i = getelementptr i8, ptr %i.bvn, i64 %i.bvl
  %.neg2465.i = mul i64 %i.bvk, -510
  %i.bvo = add i64 %.neg2465.i, %i.bvj
  br label %._crit_edge1734.i

._crit_edge1734.i:                                ; preds = %.lr.ph1733.preheader.i, %bb.nn
  %.14.lcssa.i = phi ptr [ %i.bux, %bb.nn ], [ %scevgep2123.i, %.lr.ph1733.preheader.i ] ; 3 uses
  %.050.i54.lcssa.i = phi i64 [ %i.bvh, %bb.nn ], [ %i.bvo, %.lr.ph1733.preheader.i ] ; 3 uses
  %i.bvp = icmp samesign ugt i64 %.050.i54.lcssa.i, 254
  br i1 %i.bvp, label %bb.no, label %bb.np

bb.no:                                            ; preds = %._crit_edge1734.i
  %i.bvq = add nsw i64 %.050.i54.lcssa.i, -255
  %i.bvr = getelementptr inbounds nuw i8, ptr %.14.lcssa.i, i64 1
  store i8 -1, ptr %.14.lcssa.i, align 1, !tbaa !39
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %._crit_edge1734.i
  %.15.i = phi ptr [ %i.bvr, %bb.no ], [ %.14.lcssa.i, %._crit_edge1734.i ] ; 2 uses
  %.1.i55.i = phi i64 [ %i.bvq, %bb.no ], [ %.050.i54.lcssa.i, %._crit_edge1734.i ]
  %i.bvs = trunc nuw i64 %.1.i55.i to i8
  %i.bvt = getelementptr inbounds nuw i8, ptr %.15.i, i64 1
  store i8 %i.bvs, ptr %.15.i, align 1, !tbaa !39
  br label %bb.nr

bb.nq:                                            ; preds = %bb.nm
  %i.bvu = trunc nuw nsw i64 %i.buz to i8
  %i.bvv = load i8, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bvw = add i8 %i.bvv, %i.bvu
  store i8 %i.bvw, ptr %.5.ph.i, align 1, !tbaa !39
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %bb.np
  %.13.i = phi ptr [ %i.bvt, %bb.np ], [ %i.bux, %bb.nq ]
  %i.bvx = getelementptr inbounds i8, ptr %.4991.ph.i, i64 %i.buy
  %.sroa.090.sroa.0.0.extract.trunc131.i.i = trunc nuw i64 %.sroa.051.sroa.0.0.i.i to i32
  br label %.outer.i

.outer.i:                                         ; preds = %bb.nr, %.preheader1355.i
  %.4991.ph.i = phi ptr [ %.3990.i, %.preheader1355.i ], [ %.9.i.i, %bb.nr ] ; 11 uses
  %.4981.ph.i = phi ptr [ %.1978.ph.i, %.preheader1355.i ], [ %i.bvx, %bb.nr ] ; 12 uses
  %.5.ph.i = phi ptr [ %.1.ph.i, %.preheader1355.i ], [ %.13.i, %bb.nr ] ; 30 uses
  %.sroa.0162.sroa.14.2.i.ph.i = phi i32 [ %.sroa.0162.sroa.14.1.i.le.i, %.preheader1355.i ], [ %.sroa.090.sroa.12.7.i.i, %bb.nr ] ; 6 uses
  %.sroa.0162.sroa.0.2.i.ph.i = phi i32 [ %.sroa.0162.sroa.0.1.i.le.i, %.preheader1355.i ], [ %.sroa.090.sroa.0.1.i.i, %bb.nr ] ; 9 uses
  %.sroa.090.sroa.12.1.i.ph.i = phi i32 [ %.sroa.090.sroa.12.0.i.i, %.preheader1355.i ], [ %.sroa.051.sroa.8.0.i.i, %bb.nr ]
  %.sroa.090.sroa.0.1.i.ph.i = phi i32 [ %.sroa.090.sroa.0.0.i.i, %.preheader1355.i ], [ %.sroa.090.sroa.0.0.extract.trunc131.i.i, %bb.nr ]
  %.2340.i.ph.i = phi ptr [ %.1339.i.ph.i, %.preheader1355.i ], [ %.3341.i.i, %bb.nr ]
  %.3.i.ph.i = phi ptr [ %.2.i.i, %.preheader1355.i ], [ %.3341.i.i, %bb.nr ]
  %i.bvy = ptrtoint ptr %.4991.ph.i to i64        ; 12 uses
  %spec.store.select.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.0162.sroa.14.2.i.ph.i, i32 18) ; 3 uses
  %i.bvz = sext i32 %spec.store.select.i.i to i64
  %i.bwa = getelementptr inbounds i8, ptr %.4991.ph.i, i64 %i.bvz ; 2 uses
  %i.bwb = sext i32 %.sroa.0162.sroa.14.2.i.ph.i to i64 ; 4 uses
  %i.bwc = getelementptr inbounds i8, ptr %.4991.ph.i, i64 %i.bwb ; 7 uses
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwc, i64 3
  br label %bb.hp

.loopexit.i:                                      ; preds = %.outer1361.backedge.i, %bb.dd, %LZ4HC_encodeSequence.exit87.i, %bb.o
  %.3980.i = phi ptr [ %1, %bb.o ], [ %i.cak, %LZ4HC_encodeSequence.exit87.i ], [ %.0977.ph1827.i, %bb.dd ], [ %.0987.ph.be.i, %.outer1361.backedge.i ] ; 3 uses
  %.2.i = phi ptr [ %2, %bb.o ], [ %.34.i, %LZ4HC_encodeSequence.exit87.i ], [ %.0976.ph1828.i, %bb.dd ], [ %.0976.ph.be.i, %.outer1361.backedge.i ] ; 3 uses
  %i.bwe = ptrtoint ptr %i.di to i64
  %i.bwf = ptrtoint ptr %.3980.i to i64
  %i.bwg = sub i64 %i.bwe, %i.bwf                 ; 3 uses
  %i.bwh = add i64 %i.bwg, 240
  %i.bwi = udiv i64 %i.bwh, 255
  %spec.select375.i.idx.i = select i1 %i.cv, i64 5, i64 0
  %spec.select375.i.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %spec.select375.i.idx.i ; 2 uses
  %.not371.i.i = icmp ne i32 %6, 0
  %i.bwj = getelementptr i8, ptr %.2.i, i64 %i.bwi
  %i.bwk = getelementptr i8, ptr %i.bwj, i64 1
  %i.bwl = getelementptr i8, ptr %i.bwk, i64 %i.bwg
  %i.bwm = icmp ugt ptr %i.bwl, %spec.select375.i.i
  %or.cond.i = select i1 %.not371.i.i, i1 %i.bwm, i1 false
  br i1 %or.cond.i, label %bb.ns, label %bb.nt

.thread1281.i:                                    ; preds = %bb.nx, %bb.nw
  %i.bwn = ptrtoint ptr %i.di to i64
  %i.bwo = sub i64 %i.bwn, %i.bxz                 ; 3 uses
  %i.bwp = add i64 %i.bwo, 240
  %i.bwq = udiv i64 %i.bwp, 255
  %i.bwr = getelementptr i8, ptr %.0332.i.i, i64 %i.bwq
  %i.bws = getelementptr i8, ptr %i.bwr, i64 1
  %i.bwt = getelementptr i8, ptr %i.bws, i64 %i.bwo
  %i.bwu = icmp ugt ptr %i.bwt, %i.dm
  br i1 %i.bwu, label %.thread1288.i, label %bb.nt

bb.ns:                                            ; preds = %.loopexit.i
  %i.bwv = icmp eq i32 %6, 1
  br i1 %i.bwv, label %LZ4HC_compress_hashChain.exit.thread.i, label %.thread1288.i

.thread1288.i:                                    ; preds = %bb.ns, %.thread1281.i
  %spec.select375.i128012851294.i = phi ptr [ %spec.select375.i.i, %bb.ns ], [ %i.dm, %.thread1281.i ]
  %.2127812861293.i = phi ptr [ %.2.i, %bb.ns ], [ %.0332.i.i, %.thread1281.i ] ; 2 uses
  %.3980127612871292.i = phi ptr [ %.3980.i, %bb.ns ], [ %.2979.i, %.thread1281.i ]
  %i.bww = ptrtoint ptr %spec.select375.i128012851294.i to i64
  %i.bwx = ptrtoint ptr %.2127812861293.i to i64
  %i.bwy = xor i64 %i.bwx, -1
  %i.bwz = add i64 %i.bwy, %i.bww                 ; 2 uses
  %i.bxa = add i64 %i.bwz, 241
  %i.bxb = lshr i64 %i.bxa, 8
  %i.bxc = sub i64 %i.bwz, %i.bxb
  br label %bb.nt

bb.nt:                                            ; preds = %.thread1288.i, %.thread1281.i, %.loopexit.i
  %.21279.i = phi ptr [ %.2127812861293.i, %.thread1288.i ], [ %.0332.i.i, %.thread1281.i ], [ %.2.i, %.loopexit.i ] ; 6 uses
  %.39801277.i = phi ptr [ %.3980127612871292.i, %.thread1288.i ], [ %.2979.i, %.thread1281.i ], [ %.3980.i, %.loopexit.i ] ; 2 uses
  %.0329.i.i = phi i64 [ %i.bxc, %.thread1288.i ], [ %i.bwo, %.thread1281.i ], [ %i.bwg, %.loopexit.i ] ; 7 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %.39801277.i, i64 %.0329.i.i
  %i.bxe = icmp ugt i64 %.0329.i.i, 14
  %.41847.i = getelementptr i8, ptr %.21279.i, i64 1 ; 3 uses
  br i1 %i.bxe, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  %i.bxf = add i64 %.0329.i.i, -15                ; 2 uses
  store i8 -16, ptr %.21279.i, align 1, !tbaa !39
  %i.bxg = icmp ugt i64 %i.bxf, 254
  br i1 %i.bxg, label %.lr.ph1851.preheader.i, label %._crit_edge1852.i

.lr.ph1851.preheader.i:                           ; preds = %bb.nu
  %i.bxh = add i64 %.0329.i.i, -270               ; 2 uses
  %i.bxi = udiv i64 %i.bxh, 255                   ; 3 uses
  %i.bxj = add nuw nsw i64 %i.bxi, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.41847.i, i8 -1, i64 range(i64 0, 72340172838076673) %i.bxj, i1 false), !tbaa !39
  %scevgep2200.i = getelementptr i8, ptr %.21279.i, i64 %i.bxj
  %.neg2471.i = mul i64 %i.bxi, -255
  %i.bxk = add i64 %.neg2471.i, %i.bxh
  %i.bxl = getelementptr i8, ptr %.21279.i, i64 %i.bxi
  %scevgep2201.i = getelementptr i8, ptr %i.bxl, i64 2
  br label %._crit_edge1852.i

._crit_edge1852.i:                                ; preds = %.lr.ph1851.preheader.i, %bb.nu
  %.21279.pn.lcssa.i = phi ptr [ %.21279.i, %bb.nu ], [ %scevgep2200.i, %.lr.ph1851.preheader.i ]
  %.0.i39.lcssa.i = phi i64 [ %i.bxf, %bb.nu ], [ %i.bxk, %.lr.ph1851.preheader.i ]
  %.4.lcssa.i = phi ptr [ %.41847.i, %bb.nu ], [ %scevgep2201.i, %.lr.ph1851.preheader.i ]
  %i.bxm = trunc nuw i64 %.0.i39.lcssa.i to i8
  %i.bxn = getelementptr inbounds nuw i8, ptr %.21279.pn.lcssa.i, i64 2
  store i8 %i.bxm, ptr %.4.lcssa.i, align 1, !tbaa !39
  br label %.critedge.i.i

bb.nv:                                            ; preds = %bb.nt
  %.0329.tr.i.i = trunc nuw nsw i64 %.0329.i.i to i8
  %i.bxo = shl nuw i8 %.0329.tr.i.i, 4
  store i8 %i.bxo, ptr %.21279.i, align 1, !tbaa !39
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.nv, %._crit_edge1852.i
  %.3.i = phi ptr [ %i.bxn, %._crit_edge1852.i ], [ %.41847.i, %bb.nv ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.3.i, ptr align 1 %.39801277.i, i64 %.0329.i.i, i1 false)
  %i.bxp = getelementptr inbounds nuw i8, ptr %.3.i, i64 %.0329.i.i
  %i.bxq = ptrtoint ptr %i.bxd to i64
  %i.bxr = ptrtoint ptr %1 to i64
  %i.bxs = sub i64 %i.bxq, %i.bxr
  %i.bxt = trunc i64 %i.bxs to i32
  store i32 %i.bxt, ptr %3, align 4, !tbaa !29
  %i.bxu = ptrtoint ptr %i.bxp to i64
  %i.bxv = ptrtoint ptr %2 to i64
  %i.bxw = sub i64 %i.bxu, %i.bxv
  %i.bxx = trunc i64 %i.bxw to i32
  br label %LZ4HC_compress_hashChain.exit.i

LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i: ; preds = %LZ4_wildCopy8.exit.i
  %.sroa.0162.sroa.0.0.i.le1638.le1823.i = trunc i64 %.sroa.0162.sroa.0.0.in.i.i to i32
  br label %LZ4HC_encodeSequence.exit.i

LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i: ; preds = %bb.hd
  %.sroa.0162.sroa.0.0.i.le1638.le.i = trunc i64 %.sroa.0162.sroa.0.0.in.i.i to i32
  br label %LZ4HC_encodeSequence.exit.i

LZ4HC_encodeSequence.exit.i:                      ; preds = %LZ4_wildCopy8.exit108.i, %bb.mb, %LZ4_wildCopy8.exit105.i, %bb.lq, %LZ4_wildCopy8.exit114.i, %bb.mq, %LZ4_wildCopy8.exit111.i, %bb.ng, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i
  %.2989.i = phi ptr [ %.1988.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.4991.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.1988.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.4991.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.4991.ph.i, %bb.ng ], [ %.4991.ph.i, %bb.mq ], [ %.4991.ph.i, %bb.lq ], [ %.5.i.i, %bb.mb ], [ %.4991.ph.i, %LZ4_wildCopy8.exit105.i ], [ %.5.i.i, %LZ4_wildCopy8.exit108.i ] ; 2 uses
  %.2979.i = phi ptr [ %.1978.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.4981.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.1978.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.4981.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.4981.ph.i, %bb.ng ], [ %.4981.ph.i, %bb.mq ], [ %.4981.ph.i, %bb.lq ], [ %i.bpc, %bb.mb ], [ %.4981.ph.i, %LZ4_wildCopy8.exit105.i ], [ %i.bpc, %LZ4_wildCopy8.exit108.i ] ; 4 uses
  %.sroa.0162.sroa.14.7.i.i = phi i32 [ %.sroa.0162.sroa.14.0.i.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.sroa.0162.sroa.14.6.i.i, %LZ4_wildCopy8.exit111.i ], [ %.sroa.0162.sroa.14.0.i.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.sroa.0162.sroa.14.2.i.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.sroa.0162.sroa.14.6.i.i, %bb.ng ], [ %.sroa.0162.sroa.14.2.i.ph.i, %bb.mq ], [ %.sroa.0162.sroa.14.3.i.i, %bb.lq ], [ %.sroa.090.sroa.12.3.i.i, %bb.mb ], [ %.sroa.0162.sroa.14.3.i.i, %LZ4_wildCopy8.exit105.i ], [ %.sroa.090.sroa.12.3.i.i, %LZ4_wildCopy8.exit108.i ]
  %.sroa.0162.sroa.0.3.i.i = phi i32 [ %.sroa.0162.sroa.0.0.i.le1638.le.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.sroa.0162.sroa.0.2.i.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.sroa.0162.sroa.0.0.i.le1638.le1823.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.sroa.0162.sroa.0.2.i.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.sroa.0162.sroa.0.2.i.ph.i, %bb.ng ], [ %.sroa.0162.sroa.0.2.i.ph.i, %bb.mq ], [ %.sroa.0162.sroa.0.2.i.ph.i, %bb.lq ], [ %.sroa.090.sroa.0.1.i.i, %bb.mb ], [ %.sroa.0162.sroa.0.2.i.ph.i, %LZ4_wildCopy8.exit105.i ], [ %.sroa.090.sroa.0.1.i.i, %LZ4_wildCopy8.exit108.i ]
  %.0332.i.i = phi ptr [ %.1.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.5.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.1.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.5.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.5.ph.i, %bb.ng ], [ %.5.ph.i, %bb.mq ], [ %.5.ph.i, %bb.lq ], [ %.25.i, %bb.mb ], [ %.5.ph.i, %LZ4_wildCopy8.exit105.i ], [ %.25.i, %LZ4_wildCopy8.exit108.i ] ; 12 uses
  br i1 %i.cv, label %bb.nw, label %LZ4HC_compress_hashChain.exit.thread.i

bb.nw:                                            ; preds = %LZ4HC_encodeSequence.exit.i
  %i.bxy = ptrtoint ptr %.2989.i to i64           ; 3 uses
  %i.bxz = ptrtoint ptr %.2979.i to i64           ; 4 uses
  %i.bya = sub i64 %i.bxy, %i.bxz                 ; 6 uses
  %i.byb = add i64 %i.bya, 240
  %i.byc = udiv i64 %i.byb, 255
  %i.byd = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 2 uses
  %i.bye = getelementptr i8, ptr %.0332.i.i, i64 %i.byc
  %i.byf = getelementptr i8, ptr %i.bye, i64 1
  %i.byg = getelementptr i8, ptr %i.byf, i64 %i.bya ; 3 uses
  %.not370.i.i = icmp ugt ptr %i.byg, %i.byd
  br i1 %.not370.i.i, label %.thread1281.i, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.byh = ptrtoint ptr %i.byd to i64
  %i.byi = ptrtoint ptr %i.byg to i64
  %i.byj = sub i64 %i.byh, %i.byi
  %i.byk = mul i64 %i.byj, 255
  %i.byl = add i64 %i.byk, 18
  %i.bym = sext i32 %.sroa.0162.sroa.14.7.i.i to i64
  %spec.select376.i1333.i = tail call i64 @llvm.umin.i64(i64 %i.byl, i64 %i.bym)
  %i.byn = getelementptr inbounds nuw i8, ptr %i.byg, i64 2
  %i.byo = ptrtoint ptr %i.dm to i64
  %i.byp = ptrtoint ptr %i.byn to i64
  %sext.i = shl i64 %spec.select376.i1333.i, 32
  %i.byq = ashr exact i64 %sext.i, 32             ; 5 uses
  %i.byr = add i64 %i.byq, %i.byo
  %i.bys = sub i64 %i.byp, %i.byr
  %i.byt = icmp slt i64 %i.bys, -12
  br i1 %i.byt, label %bb.ny, label %.thread1281.i

bb.ny:                                            ; preds = %bb.nx
  %i.byu = getelementptr i8, ptr %.0332.i.i, i64 1 ; 3 uses
  %i.byv = icmp ugt i64 %i.bya, 14
  br i1 %i.byv, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.byw = add i64 %i.bya, -15                    ; 2 uses
  store i8 -16, ptr %.0332.i.i, align 1, !tbaa !39
  %i.byx = icmp ugt i64 %i.byw, 254
  br i1 %i.byx, label %.lr.ph1836.preheader.i, label %._crit_edge1837.i

.lr.ph1836.preheader.i:                           ; preds = %bb.nz
  %i.byy = add i64 %i.bxy, -270
  %i.byz = sub i64 %i.byy, %i.bxz                 ; 2 uses
  %i.bza = udiv i64 %i.byz, 255                   ; 3 uses
  %i.bzb = add nuw nsw i64 %i.bza, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.byu, i8 -1, i64 range(i64 0, 72340172838076675) %i.bzb, i1 false), !tbaa !39
  %i.bzc = getelementptr i8, ptr %.0332.i.i, i64 %i.bza
  %scevgep2198.i = getelementptr i8, ptr %i.bzc, i64 2
  %.neg2469.i = mul i64 %i.bza, -255
  %i.bzd = add i64 %.neg2469.i, %i.byz
  br label %._crit_edge1837.i

._crit_edge1837.i:                                ; preds = %.lr.ph1836.preheader.i, %bb.nz
  %.33.lcssa.i = phi ptr [ %i.byu, %bb.nz ], [ %scevgep2198.i, %.lr.ph1836.preheader.i ] ; 2 uses
  %.0.i86.lcssa.i = phi i64 [ %i.byw, %bb.nz ], [ %i.bzd, %.lr.ph1836.preheader.i ]
  %i.bze = trunc nuw i64 %.0.i86.lcssa.i to i8
  %i.bzf = getelementptr inbounds nuw i8, ptr %.33.lcssa.i, i64 1
  store i8 %i.bze, ptr %.33.lcssa.i, align 1, !tbaa !39
  br label %bb.ob

bb.oa:                                            ; preds = %bb.ny
  %.tr.i81.i = trunc nuw nsw i64 %i.bya to i8
  %i.bzg = shl nuw i8 %.tr.i81.i, 4
  store i8 %i.bzg, ptr %.0332.i.i, align 1, !tbaa !39
  br label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %._crit_edge1837.i
  %.30.i = phi ptr [ %i.bzf, %._crit_edge1837.i ], [ %i.byu, %bb.oa ] ; 3 uses
  %i.bzh = getelementptr inbounds nuw i8, ptr %.30.i, i64 %i.bya ; 3 uses
  br label %bb.oc

bb.oc:                                            ; preds = %bb.oc, %bb.ob
  %.09.i100.i = phi ptr [ %.30.i, %bb.ob ], [ %i.bzj, %bb.oc ] ; 2 uses
  %.0.i101.i = phi ptr [ %.2979.i, %bb.ob ], [ %i.bzk, %bb.oc ] ; 2 uses
  %i.bzi = load i64, ptr %.0.i101.i, align 1
  store i64 %i.bzi, ptr %.09.i100.i, align 1
  %i.bzj = getelementptr inbounds nuw i8, ptr %.09.i100.i, i64 8 ; 2 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %.0.i101.i, i64 8
  %i.bzl = icmp ult ptr %i.bzj, %i.bzh
  br i1 %i.bzl, label %bb.oc, label %LZ4_wildCopy8.exit102.i, !llvm.loop !7

LZ4_wildCopy8.exit102.i:                          ; preds = %bb.oc
  %i.bzm = trunc i32 %.sroa.0162.sroa.0.3.i.i to i16
  store i16 %i.bzm, ptr %i.bzh, align 1, !tbaa !38
  %i.bzn = getelementptr i8, ptr %i.bzh, i64 2    ; 3 uses
  %i.bzo = add nsw i64 %i.byq, -4                 ; 2 uses
  %i.bzp = icmp ugt i64 %i.bzo, 14
  br i1 %i.bzp, label %bb.od, label %bb.og

bb.od:                                            ; preds = %LZ4_wildCopy8.exit102.i
  %i.bzq = load i8, ptr %.0332.i.i, align 1, !tbaa !39
  %i.bzr = add i8 %i.bzq, 15
  store i8 %i.bzr, ptr %.0332.i.i, align 1, !tbaa !39
  %i.bzs = add nsw i64 %i.byq, -19                ; 2 uses
  %i.bzt = icmp ugt i64 %i.bzs, 509
  br i1 %i.bzt, label %.lr.ph1843.preheader.i, label %._crit_edge1844.i

.lr.ph1843.preheader.i:                           ; preds = %bb.od
  %i.bzu = add nsw i64 %i.byq, -529               ; 2 uses
  %i.bzv = udiv i64 %i.bzu, 510                   ; 2 uses
  %i.bzw = shl nuw nsw i64 %i.bzv, 1              ; 2 uses
  %i.bzx = add nuw nsw i64 %i.bzw, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bzn, i8 -1, i64 range(i64 0, 72340172838076675) %i.bzx, i1 false), !tbaa !39
  %i.bzy = add i64 %i.bxy, 4
  %i.bzz = sub i64 %i.bzy, %i.bxz
  %i.caa = getelementptr i8, ptr %.30.i, i64 %i.bzz
  %scevgep2199.i = getelementptr i8, ptr %i.caa, i64 %i.bzw
  %.neg2470.i = mul i64 %i.bzv, -510
  %i.cab = add i64 %.neg2470.i, %i.bzu
  br label %._crit_edge1844.i

._crit_edge1844.i:                                ; preds = %.lr.ph1843.preheader.i, %bb.od
  %.31.lcssa.i = phi ptr [ %i.bzn, %bb.od ], [ %scevgep2199.i, %.lr.ph1843.preheader.i ] ; 3 uses
  %.050.i84.lcssa.i = phi i64 [ %i.bzs, %bb.od ], [ %i.cab, %.lr.ph1843.preheader.i ] ; 3 uses
  %i.cac = icmp samesign ugt i64 %.050.i84.lcssa.i, 254
  br i1 %i.cac, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %._crit_edge1844.i
  %i.cad = add nsw i64 %.050.i84.lcssa.i, -255
  %i.cae = getelementptr inbounds nuw i8, ptr %.31.lcssa.i, i64 1
  store i8 -1, ptr %.31.lcssa.i, align 1, !tbaa !39
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %._crit_edge1844.i
  %.32.i = phi ptr [ %i.cae, %bb.oe ], [ %.31.lcssa.i, %._crit_edge1844.i ] ; 2 uses
  %.1.i85.i = phi i64 [ %i.cad, %bb.oe ], [ %.050.i84.lcssa.i, %._crit_edge1844.i ]
  %i.caf = trunc nuw i64 %.1.i85.i to i8
  %i.cag = getelementptr inbounds nuw i8, ptr %.32.i, i64 1
  store i8 %i.caf, ptr %.32.i, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit87.i

bb.og:                                            ; preds = %LZ4_wildCopy8.exit102.i
  %i.cah = trunc nuw nsw i64 %i.bzo to i8
  %i.cai = load i8, ptr %.0332.i.i, align 1, !tbaa !39
  %i.caj = add i8 %i.cai, %i.cah
  store i8 %i.caj, ptr %.0332.i.i, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit87.i

LZ4HC_encodeSequence.exit87.i:                    ; preds = %bb.og, %bb.of
  %.34.i = phi ptr [ %i.cag, %bb.of ], [ %i.bzn, %bb.og ]
  %i.cak = getelementptr inbounds i8, ptr %.2989.i, i64 %i.byq
  br label %.loopexit.i

bb.oh:                                            ; preds = %bb.m
  %i.cal = getelementptr inbounds nuw i8, ptr %0, i64 262182
  %i.cam = load i8, ptr %i.cal, align 2, !tbaa !51
  %.not.i.i = icmp ne i8 %i.cam, 0
  %i.can = zext i1 %.not.i.i to i32
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.25.0.copyload.i.i = load i32, ptr %.sroa.25.0..sroa_idx.i.i, align 4, !tbaa !29
  %.sroa.04.4.extract.shift8.i.i = lshr i64 %.sroa.04.0.copyload.i.i, 32
  %.sroa.04.4.extract.trunc9.i.i = trunc nuw i64 %.sroa.04.4.extract.shift8.i.i to i32
  %i.cao = zext i32 %.sroa.25.0.copyload.i.i to i64
  %i.cap = icmp sgt i32 %5, 11
  %i.caq = zext i1 %i.cap to i32
  %i.car = tail call fastcc i32 @LZ4HC_compress_optimal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %.sroa.04.4.extract.trunc9.i.i, i64 noundef %i.cao, i32 noundef range(i32 0, 3) %6, i32 noundef %i.caq, i32 noundef 1, i32 noundef %i.can)
  br label %LZ4HC_compress_hashChain.exit.i

LZ4HC_compress_hashChain.exit.i:                  ; preds = %bb.oh, %.critedge.i.i, %bb.n
  %.0.i.i = phi i32 [ %i.dg, %bb.n ], [ %i.car, %bb.oh ], [ %i.bxx, %.critedge.i.i ] ; 3 uses
  %i.cas = icmp slt i32 %.0.i.i, 1
  br i1 %i.cas, label %LZ4HC_compress_hashChain.exit.thread.i, label %LZ4HC_compress_generic_dictCtx.exit

LZ4HC_compress_hashChain.exit.thread.i:           ; preds = %LZ4HC_compress_hashChain.exit.i, %LZ4HC_encodeSequence.exit.i, %bb.ns
  %.0.i1296.i = phi i32 [ %.0.i.i, %LZ4HC_compress_hashChain.exit.i ], [ 0, %bb.ns ], [ 0, %LZ4HC_encodeSequence.exit.i ]
  %i.cat = getelementptr inbounds nuw i8, ptr %0, i64 262183
  store i8 1, ptr %i.cat, align 1, !tbaa !41
  br label %LZ4HC_compress_generic_dictCtx.exit

LZ4HC_compress_generic_dictCtx.exit:              ; preds = %LZ4HC_compress_hashChain.exit.thread.i, %LZ4HC_compress_hashChain.exit.i, %bb.l, %bb.k, %LZ4HC_setExternalDict.exit.i, %bb.d, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.z, %bb.d ], [ %i.cu, %LZ4HC_setExternalDict.exit.i ], [ 0, %bb.l ], [ 0, %bb.k ], [ %.0.i1296.i, %LZ4HC_compress_hashChain.exit.thread.i ], [ %.0.i.i, %LZ4HC_compress_hashChain.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compress_HC_extStateHC(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp ne ptr %0, null
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 7
  %.not.i = icmp eq i64 %i.d, 0
  %or.cond10.i = and i1 %i.b, %.not.i
  br i1 %or.cond10.i, label %LZ4_compress_HC_extStateHC_fastReset.exit, label %LZ4_initStreamHC.exit.thread

LZ4_compress_HC_extStateHC_fastReset.exit:        ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %0, i8 0, i64 262184, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 262184
  store ptr null, ptr %i.g, align 8, !tbaa !42
  %i.h = icmp slt i32 %5, 1
  %i.i = tail call i32 @llvm.umin.i32(i32 %5, i32 12)
  %i.j = trunc nuw nsw i32 %i.i to i16
  %i.k = select i1 %i.h, i16 9, i16 %i.j
  store i16 %i.k, ptr %i.e, align 4, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 262176
  store i32 65536, ptr %i.n, align 8, !tbaa !43
  store ptr %1, ptr %i.m, align 8, !tbaa !25
  store ptr %1, ptr %i.f, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 262160
  store ptr %1, ptr %i.o, align 8, !tbaa !44
  store i32 65536, ptr %i.l, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 262172
  store i32 65536, ptr %i.p, align 4, !tbaa !45
  %i.q = tail call i32 @LZ4_compressBound(i32 noundef %3) #18
  %i.r = icmp slt i32 %4, %i.q
  %..i = zext i1 %i.r to i32
  %i.s = call fastcc i32 @LZ4HC_compress_generic(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %5, i32 noundef %..i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %LZ4_initStreamHC.exit.thread

LZ4_initStreamHC.exit.thread:                     ; preds = %bb.a, %LZ4_compress_HC_extStateHC_fastReset.exit
  %.0 = phi i32 [ %i.s, %LZ4_compress_HC_extStateHC_fastReset.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef ptr @LZ4_initStreamHC(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i64 %1, 262199
  %or.cond.not13 = and i1 %i.a, %i.b
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 7
  %.not = icmp eq i64 %i.d, 0
  %or.cond10 = and i1 %or.cond.not13, %.not
  br i1 %or.cond10, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %0, i8 0, i64 262192, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262180
  store i16 9, ptr %i.e, align 4, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compress_HC(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(262200) ptr @malloc(i64 noundef 262200) #19 ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = and i64 %i.d, 7
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %LZ4_compress_HC_extStateHC_fastReset.exit.i, label %LZ4_compress_HC_extStateHC.exit

LZ4_compress_HC_extStateHC_fastReset.exit.i:      ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %i.b, i8 0, i64 262184, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 262180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 262144
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 262184
  store ptr null, ptr %i.h, align 8, !tbaa !42
  %i.i = icmp slt i32 %4, 1
  %i.j = tail call i32 @llvm.umin.i32(i32 %4, i32 12)
  %i.k = trunc nuw nsw i32 %i.j to i16
  %i.l = select i1 %i.i, i16 9, i16 %i.k
  store i16 %i.l, ptr %i.f, align 4, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 262168
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 262152
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 262176
  store i32 65536, ptr %i.o, align 8, !tbaa !43
  store ptr %0, ptr %i.n, align 8, !tbaa !25
  store ptr %0, ptr %i.g, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 262160
  store ptr %0, ptr %i.p, align 8, !tbaa !44
  store i32 65536, ptr %i.m, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 262172
  store i32 65536, ptr %i.q, align 4, !tbaa !45
  %i.r = tail call i32 @LZ4_compressBound(i32 noundef %2) #18
  %i.s = icmp slt i32 %3, %i.r
  %..i.i = zext i1 %i.s to i32
  %i.t = call fastcc i32 @LZ4HC_compress_generic(ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef %4, i32 noundef %..i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %LZ4_compress_HC_extStateHC.exit

LZ4_compress_HC_extStateHC.exit:                  ; preds = %bb.b, %LZ4_compress_HC_extStateHC_fastReset.exit.i
  %.0.i = phi i32 [ %i.t, %LZ4_compress_HC_extStateHC_fastReset.exit.i ], [ 0, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.b) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %LZ4_compress_HC_extStateHC.exit
  %.0 = phi i32 [ %.0.i, %LZ4_compress_HC_extStateHC.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
end_hunk_1
begin_hunk_2_@LZ4HC_compress_generic_noDictCtx:bb.a
  %i.acw = ptrtoint ptr %i.aam to i64
  %i.acx = ptrtoint ptr %.1.lcssa.i625 to i64
  %i.acy = sub i64 %i.acw, %i.acx                 ; 3 uses
  %i.acz = trunc i64 %i.acy to i32                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ada = and i64 %i.acy, 4294967295
  %i.adb = sub nsw i64 0, %i.ada
  %i.adc = getelementptr inbounds i8, ptr %i.aam, i64 %i.adb
  %i.add = icmp eq ptr %i.adc, %i.ox
  %or.cond454.i312 = select i1 %i.aag, i1 %i.add, i1 false
  %or.cond455.i313 = select i1 %or.cond454.i312, i1 %i.se, i1 false
  br i1 %or.cond455.i313, label %bb.ex, label %bb.fa

bb.ex:                                            ; preds = %LZ4HC_reverseCountPattern.exit632
  %i.ade = sub i64 0, %i.acy
  %i.adf = and i64 %i.ade, 3
  %i.adg = icmp eq i64 %i.adf, 0
  %.neg1153 = mul i32 %i.acz, 24
  %i.adh = tail call i32 @llvm.fshl.i32(i32 %.val444, i32 %.val444, i32 %.neg1153)
  %.0.i634 = select i1 %i.adg, i32 %.val444, i32 %i.adh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.0.i634, ptr %i.c, align 4, !tbaa !29
  br i1 %.not.i6362516, label %._crit_edge2520, label %.lr.ph2519, !prof !48

bb.ey:                                            ; preds = %.lr.ph2519
  %.not.i636 = icmp slt i64 %.013.i635.idx2517, 8
  br i1 %.not.i636, label %._crit_edge2520, label %.lr.ph2519, !prof !49, !llvm.loop !3

.lr.ph2519:                                       ; preds = %bb.ex, %bb.ey
  %.013.i635.idx2517 = phi i64 [ %.013.i635.add, %bb.ey ], [ %i.pm, %bb.ex ] ; 3 uses
  %.013.i635.add = add nsw i64 %.013.i635.idx2517, -4 ; 3 uses
  %.ptr1154 = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.013.i635.add
  %.val.i637 = load i32, ptr %.ptr1154, align 1, !tbaa !28
  %.not14.i638 = icmp eq i32 %.val.i637, %.0.i634
  br i1 %.not14.i638, label %bb.ey, label %.thread2140, !llvm.loop !3

.thread2140:                                      ; preds = %.lr.ph2519
  %.013.i635.ptr.le2141 = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.013.i635.idx2517
  br label %.lr.ph.i642.preheader

._crit_edge2520:                                  ; preds = %bb.ey, %bb.ex
  %.013.i635.idx.lcssa = phi i64 [ %i.pm, %bb.ex ], [ %.013.i635.add, %bb.ey ] ; 2 uses
  %.013.i635.ptr.le = getelementptr inbounds i8, ptr %i.pj, i64 %.013.i635.idx.lcssa ; 2 uses
  %i.adi = icmp sgt i64 %.013.i635.idx.lcssa, 0
  br i1 %i.adi, label %.lr.ph.i642.preheader, label %LZ4HC_reverseCountPattern.exit646, !prof !50

.lr.ph.i642.preheader:                            ; preds = %.thread2140, %._crit_edge2520
  %.116.i644.ph = phi ptr [ %.013.i635.ptr.le, %._crit_edge2520 ], [ %.013.i635.ptr.le2141, %.thread2140 ]
  br label %.lr.ph.i642

bb.ez:                                            ; preds = %.lr.ph.i642
  %i.adj = getelementptr inbounds i8, ptr %.017.i643, i64 -1
  %i.adk = icmp ugt ptr %i.adl, %i.pj
  br i1 %i.adk, label %.lr.ph.i642, label %LZ4HC_reverseCountPattern.exit646, !prof !36, !llvm.loop !4

.lr.ph.i642:                                      ; preds = %.lr.ph.i642.preheader, %bb.ez
  %.017.i643 = phi ptr [ %i.adj, %bb.ez ], [ %i.ao, %.lr.ph.i642.preheader ] ; 2 uses
  %.116.i644 = phi ptr [ %i.adl, %bb.ez ], [ %.116.i644.ph, %.lr.ph.i642.preheader ] ; 2 uses
  %i.adl = getelementptr inbounds i8, ptr %.116.i644, i64 -1 ; 3 uses
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !39
  %i.adn = load i8, ptr %.017.i643, align 1, !tbaa !39
  %.not15.i645 = icmp eq i8 %i.adm, %i.adn
  br i1 %.not15.i645, label %bb.ez, label %LZ4HC_reverseCountPattern.exit646

LZ4HC_reverseCountPattern.exit646:                ; preds = %bb.ez, %.lr.ph.i642, %._crit_edge2520
  %.1.lcssa.i639 = phi ptr [ %.013.i635.ptr.le, %._crit_edge2520 ], [ %i.pj, %bb.ez ], [ %.116.i644, %.lr.ph.i642 ]
  %i.ado = ptrtoint ptr %.1.lcssa.i639 to i64
  %i.adp = sub i64 %i.sf, %i.ado
  %i.adq = trunc i64 %i.adp to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.adr = add i32 %i.adq, %i.acz
  br label %bb.fa

bb.fa:                                            ; preds = %LZ4HC_reverseCountPattern.exit646, %LZ4HC_reverseCountPattern.exit632
  %.0316.i314 = phi i32 [ %i.acz, %LZ4HC_reverseCountPattern.exit632 ], [ %i.adr, %LZ4HC_reverseCountPattern.exit646 ]
  %i.ads = sub i32 %i.zk, %.0316.i314
  %i.adt = tail call i32 @llvm.umax.i32(i32 %i.ads, i32 %i.pi) ; 8 uses
  %i.adu = sub i32 %i.zk, %i.adt
  %i.adv = zext i32 %i.adu to i64
  %i.adw = add nuw nsw i64 %.0317.i310, %i.adv    ; 2 uses
  %.not438.i315 = icmp ult i64 %i.adw, %.1372.i296
  %.not439.i316 = icmp ugt i64 %.0317.i310, %.1372.i296
  %or.cond456.i317 = or i1 %.not439.i316, %.not438.i315
  br i1 %or.cond456.i317, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.adx = trunc i64 %.0317.i310 to i32
  %i.ady = trunc i64 %.1372.i296 to i32
  %i.adz = sub i32 %i.zk, %i.ady
  %i.aea = add i32 %i.adz, %i.adx                 ; 2 uses
  %i.aeb = sub i32 %i.aea, %i.oy
  %i.aec = icmp ugt i32 %i.aeb, -4
  %..i319 = select i1 %i.aec, i32 %i.oy, i32 %i.aea
  br label %.thread996

bb.fc:                                            ; preds = %bb.fa
  %i.aed = sub i32 %i.adt, %i.oy
  %i.aee = icmp ugt i32 %i.aed, -4
  br i1 %i.aee, label %.thread996, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  br i1 %.not433.i341, label %bb.fe, label %.thread996

bb.fe:                                            ; preds = %bb.fd
  %i.aef = tail call i64 @llvm.umin.i64(i64 %i.adw, i64 %.1372.i296) ; 2 uses
  %i.aeg = sext i32 %.5.i282 to i64
  %i.aeh = icmp ugt i64 %i.aef, %i.aeg
  br i1 %i.aeh, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.aei = zext i32 %i.adt to i64
  %i.aej = sub i64 %i.ri, %i.aei
  %i.aek = icmp ugt i64 %i.aej, 65535
  br i1 %i.aek, label %LZ4HC_InsertAndGetWiderMatch.exit437.loopexit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ael = trunc i64 %i.aef to i32
  %i.aem = sub i32 %i.pd, %i.adt
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fe
  %.6354.i332 = phi i32 [ %i.aem, %bb.fg ], [ %.5353.i279, %bb.fe ] ; 2 uses
  %.6.i333 = phi i32 [ %i.ael, %bb.fg ], [ %.5.i282, %bb.fe ] ; 2 uses
  %i.aen = and i32 %i.adt, 65535
  %i.aeo = zext nneg i32 %i.aen to i64
  %i.aep = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.aeo
  %i.aeq = load i16, ptr %i.aep, align 2, !tbaa !40
  %i.aer = zext i16 %i.aeq to i32                 ; 2 uses
  %i.aes = icmp ult i32 %i.adt, %i.aer
  %i.aet = sub nuw i32 %i.adt, %i.aer
  br i1 %i.aes, label %LZ4HC_InsertAndGetWiderMatch.exit437.loopexit, label %.thread996

.thread968:                                       ; preds = %bb.eg, %bb.ee, %bb.em, %bb.el, %bb.ek
  %.3379.i289 = phi i32 [ %.0376.i2611383, %bb.ee ], [ 2, %bb.em ], [ 2, %bb.el ], [ %.1377.i295, %bb.ek ], [ 1, %bb.eg ]
  %.3374.i290 = phi i64 [ %.0371.i2621384, %bb.ee ], [ %.1372.i296, %bb.em ], [ %.1372.i296, %bb.el ], [ %.1372.i296, %bb.ek ], [ %.0371.i2621384, %bb.eg ]
  %i.aeu = zext i16 %i.zi to i32
  %i.aev = sub i32 %.0381.i2601382, %i.aeu
  br label %.thread996

.thread996:                                       ; preds = %bb.fh, %bb.fc, %bb.fd, %bb.fb, %.thread968
  %.16.i2931007 = phi i32 [ %.5.i282, %.thread968 ], [ %.5.i282, %bb.fb ], [ %.5.i282, %bb.fc ], [ %.5.i282, %bb.fd ], [ %.6.i333, %bb.fh ] ; 2 uses
  %.16364.i2911006 = phi i32 [ %.5353.i279, %.thread968 ], [ %.5353.i279, %bb.fb ], [ %.5353.i279, %bb.fc ], [ %.5353.i279, %bb.fd ], [ %.6354.i332, %bb.fh ] ; 2 uses
  %.3374.i2901005 = phi i64 [ %.3374.i290, %.thread968 ], [ %.1372.i296, %bb.fb ], [ %.1372.i296, %bb.fc ], [ %.1372.i296, %bb.fd ], [ %.1372.i296, %bb.fh ]
  %.3379.i2891004 = phi i32 [ %.3379.i289, %.thread968 ], [ 2, %bb.fb ], [ 2, %bb.fc ], [ 2, %bb.fd ], [ 2, %bb.fh ]
  %.15396.i284 = phi i32 [ %i.aev, %.thread968 ], [ %..i319, %bb.fb ], [ %i.oy, %bb.fc ], [ %i.adt, %bb.fd ], [ %i.aet, %bb.fh ] ; 2 uses
  %i.aew = icmp uge i32 %.15396.i284, %i.pi
  %i.aex = icmp sgt i32 %.0403.i2581381, 1
  %i.aey = select i1 %i.aew, i1 %i.aex, i1 false
  br i1 %i.aey, label %bb.cf, label %LZ4HC_InsertAndGetWiderMatch.exit437.loopexit

LZ4HC_InsertAndGetWiderMatch.exit437.loopexit:    ; preds = %bb.fh, %bb.ff, %.thread996
  %.18366.i267.ph = phi i32 [ %.16364.i2911006, %.thread996 ], [ %.6354.i332, %bb.fh ], [ %.5353.i279, %bb.ff ]
  %.18.i269.ph = phi i32 [ %.16.i2931007, %.thread996 ], [ %.6.i333, %bb.fh ], [ %.5.i282, %bb.ff ]
  %i.aez = sext i32 %.5342.i280 to i64
  br label %LZ4HC_InsertAndGetWiderMatch.exit437

LZ4HC_InsertAndGetWiderMatch.exit437:             ; preds = %LZ4HC_InsertAndGetWiderMatch.exit437.loopexit, %LZ4HC_Insert.exit.i257
  %.18366.i267 = phi i32 [ 0, %LZ4HC_Insert.exit.i257 ], [ %.18366.i267.ph, %LZ4HC_InsertAndGetWiderMatch.exit437.loopexit ]
  %.6343.i268 = phi i64 [ 0, %LZ4HC_Insert.exit.i257 ], [ %i.aez, %LZ4HC_InsertAndGetWiderMatch.exit437.loopexit ]
  %.18.i269 = phi i32 [ %.sroa.0162.sroa.14.0.i, %LZ4HC_Insert.exit.i257 ], [ %.18.i269.ph, %LZ4HC_InsertAndGetWiderMatch.exit437.loopexit ]
  %i.afa = getelementptr inbounds i8, ptr %i.ow, i64 %.6343.i268
  br label %bb.fi

bb.fi:                                            ; preds = %LZ4HC_InsertAndGetWiderMatch.exit437, %bb.cd
  %.sroa.090.sroa.12.0.i = phi i32 [ %.18.i269, %LZ4HC_InsertAndGetWiderMatch.exit437 ], [ 0, %bb.cd ] ; 3 uses
  %.sroa.090.sroa.0.0.i = phi i32 [ %.18366.i267, %LZ4HC_InsertAndGetWiderMatch.exit437 ], [ 0, %bb.cd ] ; 2 uses
  %.2.i = phi ptr [ %i.afa, %LZ4HC_InsertAndGetWiderMatch.exit437 ], [ %.1337.i, %bb.cd ] ; 7 uses
  %.not358.i = icmp sgt i32 %.sroa.090.sroa.12.0.i, %.sroa.0162.sroa.14.0.i
  br i1 %.not358.i, label %bb.fu, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %.1845.ph.lcssa18551859 = ptrtoaddr ptr %.1845.ph to i64
  %.1855.lcssa18611863 = ptrtoaddr ptr %.1855 to i64
  %i.afb = getelementptr i8, ptr %.1.ph, i64 1    ; 4 uses
  %i.afc = ptrtoint ptr %.1855 to i64             ; 2 uses
  %i.afd = ptrtoint ptr %.1845.ph to i64          ; 2 uses
  %i.afe = sub i64 %i.afc, %i.afd                 ; 6 uses
  %i.aff = udiv i64 %i.afe, 255
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.aff
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 %i.afe
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  %i.afj = icmp ugt ptr %i.afi, %spec.select.i
  %or.cond.i58 = select i1 %.not.i15, i1 %i.afj, i1 false
  br i1 %or.cond.i58, label %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.afk = icmp ugt i64 %i.afe, 14
  br i1 %i.afk, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.afl = add i64 %i.afe, -15                    ; 2 uses
  store i8 -16, ptr %.1.ph, align 1, !tbaa !39
  %i.afm = icmp ugt i64 %i.afl, 254
  br i1 %i.afm, label %.lr.ph1491.preheader, label %._crit_edge1492

.lr.ph1491.preheader:                             ; preds = %bb.fl
  %i.afn = add i64 %i.afc, -270
  %i.afo = sub i64 %i.afn, %i.afd                 ; 2 uses
  %i.afp = udiv i64 %i.afo, 255                   ; 3 uses
  %i.afq = add nuw nsw i64 %i.afp, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.afb, i8 -1, i64 range(i64 0, 72340172838076675) %i.afq, i1 false), !tbaa !39
  %scevgep1848 = getelementptr i8, ptr %.1.ph, i64 2
  %scevgep1849 = getelementptr i8, ptr %scevgep1848, i64 %i.afp
  %.neg2116 = mul i64 %i.afp, -255
  %i.afr = add i64 %.neg2116, %i.afo
  br label %._crit_edge1492

._crit_edge1492:                                  ; preds = %.lr.ph1491.preheader, %bb.fl
  %.39.lcssa = phi ptr [ %i.afb, %bb.fl ], [ %scevgep1849, %.lr.ph1491.preheader ] ; 2 uses
  %.0.i65.lcssa = phi i64 [ %i.afl, %bb.fl ], [ %i.afr, %.lr.ph1491.preheader ]
  %i.afs = trunc nuw i64 %.0.i65.lcssa to i8
  %i.aft = getelementptr inbounds nuw i8, ptr %.39.lcssa, i64 1
  store i8 %i.afs, ptr %.39.lcssa, align 1, !tbaa !39
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fk
  %.tr.i59 = trunc nuw nsw i64 %i.afe to i8
  %i.afu = shl nuw i8 %.tr.i59, 4
  store i8 %i.afu, ptr %.1.ph, align 1, !tbaa !39
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %._crit_edge1492
  %.35 = phi ptr [ %i.aft, %._crit_edge1492 ], [ %i.afb, %bb.fm ] ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %.35, i64 %i.afe ; 3 uses
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fo, %bb.fn
  %.09.i = phi ptr [ %.35, %bb.fn ], [ %i.afx, %bb.fo ] ; 2 uses
  %.0.i67 = phi ptr [ %.1845.ph, %bb.fn ], [ %i.afy, %bb.fo ] ; 2 uses
  %i.afw = load i64, ptr %.0.i67, align 1
  store i64 %i.afw, ptr %.09.i, align 1
  %i.afx = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.0.i67, i64 8
  %i.afz = icmp ult ptr %i.afx, %i.afv
  br i1 %i.afz, label %bb.fo, label %LZ4_wildCopy8.exit, !llvm.loop !7

LZ4_wildCopy8.exit:                               ; preds = %bb.fo
  %i.aga = trunc i64 %.sroa.0162.sroa.0.0.in.i to i16
  store i16 %i.aga, ptr %i.afv, align 1, !tbaa !38
  %i.agb = getelementptr i8, ptr %i.afv, i64 2    ; 4 uses
  %i.agc = add nsw i64 %i.ou, -4                  ; 3 uses
  %i.agd = udiv i64 %i.agc, 255
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 %i.agd
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 6
  %i.agg = icmp ugt ptr %i.agf, %spec.select.i
  %or.cond64.i61 = select i1 %.not.i15, i1 %i.agg, i1 false
  br i1 %or.cond64.i61, label %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit, label %bb.fp

bb.fp:                                            ; preds = %LZ4_wildCopy8.exit
  %i.agh = icmp ugt i64 %i.agc, 14
  br i1 %i.agh, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.agi = load i8, ptr %.1.ph, align 1, !tbaa !39
  %i.agj = add i8 %i.agi, 15
  store i8 %i.agj, ptr %.1.ph, align 1, !tbaa !39
  %i.agk = add nsw i64 %i.ou, -19                 ; 2 uses
  %i.agl = icmp ugt i64 %i.agk, 509
  br i1 %i.agl, label %.lr.ph1498.preheader, label %._crit_edge1499

.lr.ph1498.preheader:                             ; preds = %bb.fq
  %i.agm = add nsw i64 %i.ou, -529                ; 2 uses
  %i.agn = udiv i64 %i.agm, 510                   ; 2 uses
  %i.ago = shl nuw nsw i64 %i.agn, 1              ; 2 uses
  %i.agp = add nuw nsw i64 %i.ago, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.agb, i8 -1, i64 range(i64 0, 72340172838076675) %i.agp, i1 false), !tbaa !39
  %scevgep1854 = getelementptr i8, ptr %.35, i64 4
  %i.agq = sub i64 0, %.1845.ph.lcssa18551859
  %scevgep1860 = getelementptr i8, ptr %scevgep1854, i64 %i.agq
  %i.agr = getelementptr i8, ptr %scevgep1860, i64 %i.ago
  %scevgep1864 = getelementptr i8, ptr %i.agr, i64 %.1855.lcssa18611863
  %.neg2117 = mul i64 %i.agn, -510
  %i.ags = add i64 %.neg2117, %i.agm
  br label %._crit_edge1499

._crit_edge1499:                                  ; preds = %.lr.ph1498.preheader, %bb.fq
  %.37.lcssa = phi ptr [ %i.agb, %bb.fq ], [ %scevgep1864, %.lr.ph1498.preheader ] ; 3 uses
  %.050.i63.lcssa = phi i64 [ %i.agk, %bb.fq ], [ %i.ags, %.lr.ph1498.preheader ] ; 3 uses
  %i.agt = icmp samesign ugt i64 %.050.i63.lcssa, 254
  br i1 %i.agt, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %._crit_edge1499
  %i.agu = add nsw i64 %.050.i63.lcssa, -255
  %i.agv = getelementptr inbounds nuw i8, ptr %.37.lcssa, i64 1
  store i8 -1, ptr %.37.lcssa, align 1, !tbaa !39
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %._crit_edge1499
  %.38 = phi ptr [ %i.agv, %bb.fr ], [ %.37.lcssa, %._crit_edge1499 ] ; 2 uses
  %.1.i64 = phi i64 [ %i.agu, %bb.fr ], [ %.050.i63.lcssa, %._crit_edge1499 ]
  %i.agw = trunc nuw i64 %.1.i64 to i8
  %i.agx = getelementptr inbounds nuw i8, ptr %.38, i64 1
  store i8 %i.agw, ptr %.38, align 1, !tbaa !39
  br label %.outer1185.backedge

bb.ft:                                            ; preds = %bb.fp
  %i.agy = trunc nuw nsw i64 %i.agc to i8
  %i.agz = load i8, ptr %.1.ph, align 1, !tbaa !39
  %i.aha = add i8 %i.agz, %i.agy
  store i8 %i.aha, ptr %.1.ph, align 1, !tbaa !39
  br label %.outer1185.backedge

.outer1185.backedge:                              ; preds = %bb.jy, %bb.jx, %bb.ft, %bb.fs
  %.0854.ph.be = phi ptr [ %i.ov, %bb.ft ], [ %i.ov, %bb.fs ], [ %i.ahv, %bb.jx ], [ %i.ahv, %bb.jy ] ; 3 uses
  %.0.ph.be = phi ptr [ %i.agb, %bb.ft ], [ %i.agx, %bb.fs ], [ %i.bcb, %bb.jx ], [ %i.bbe, %bb.jy ] ; 2 uses
  %.0338.i.ph.be = phi ptr [ %.1339.i.ph, %bb.ft ], [ %.1339.i.ph, %bb.fs ], [ %.3341.i, %bb.jx ], [ %.3341.i, %bb.jy ]
  %.0336.i.ph.be = phi ptr [ %.2.i, %bb.ft ], [ %.2.i, %bb.fs ], [ %.5.i, %bb.jx ], [ %.5.i, %bb.jy ]
  %.not.i61339 = icmp ugt ptr %.0854.ph.be, %i.w
  br i1 %.not.i61339, label %.loopexit, label %.lr.ph1341, !llvm.loop !6

bb.fu:                                            ; preds = %bb.fi
  %i.ahb = icmp ult ptr %.0335.i.ph, %.1855
  %i.ahc = getelementptr inbounds i8, ptr %.1855, i64 %i.ben
  %i.ahd = icmp ult ptr %.2.i, %i.ahc
  %or.cond.i8 = select i1 %i.ahb, i1 %i.ahd, i1 false ; 3 uses
  %.3857 = select i1 %or.cond.i8, ptr %.0335.i.ph, ptr %.1855 ; 2 uses
  %i.ahe = ptrtoint ptr %.2.i to i64
  %i.ahf = ptrtoint ptr %.3857 to i64
  %i.ahg = sub i64 %i.ahe, %i.ahf
  %i.ahh = icmp slt i64 %i.ahg, 3
  %.sroa.090.sroa.0.0.insert.ext.i = zext i32 %.sroa.090.sroa.0.0.i to i64
  br i1 %i.ahh, label %bb.cd, label %.preheader1179

.preheader1179:                                   ; preds = %bb.fu
  %.sroa.0232.4.extract.shift.i.le = lshr i64 %.sroa.0232.0.i.ph, 32
  %.sroa.0232.4.extract.trunc.i.le = trunc nuw i64 %.sroa.0232.4.extract.shift.i.le to i32
  %.sroa.0162.sroa.14.1.i.le = select i1 %or.cond.i8, i32 %.sroa.0232.4.extract.trunc.i.le, i32 %.sroa.0162.sroa.14.0.i
  %.sroa.0162.sroa.0.1.i.le.v = select i1 %or.cond.i8, i64 %.sroa.0232.0.i.ph, i64 %.sroa.0162.sroa.0.0.in.i
  %.sroa.0162.sroa.0.1.i.le = trunc i64 %.sroa.0162.sroa.0.1.i.le.v to i32
  br label %.outer

bb.fv:                                            ; preds = %bb.ka, %.outer
  %.sroa.090.sroa.12.1.i = phi i32 [ %.sroa.051.sroa.8.0.i, %bb.ka ], [ %.sroa.090.sroa.12.1.i.ph, %.outer ] ; 4 uses
  %.sroa.090.sroa.0.1.i = phi i32 [ %.sroa.090.sroa.0.0.extract.trunc130.i, %bb.ka ], [ %.sroa.090.sroa.0.1.i.ph, %.outer ] ; 6 uses
  %.2340.i = phi ptr [ %.3341.i, %bb.ka ], [ %.2340.i.ph, %.outer ]
  %.3.i = phi ptr [ %.3341.i, %bb.ka ], [ %.3.i.ph, %.outer ] ; 4 uses
  %i.ahi = ptrtoint ptr %.3.i to i64              ; 2 uses
  %i.ahj = sub i64 %i.ahi, %i.bhb                 ; 2 uses
  %i.ahk = icmp slt i64 %i.ahj, 18
  br i1 %i.ahk, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.ahl = sext i32 %.sroa.090.sroa.12.1.i to i64
  %i.ahm = getelementptr inbounds i8, ptr %.3.i, i64 %i.ahl
  %i.ahn = getelementptr inbounds i8, ptr %i.ahm, i64 -4
  %i.aho = icmp ugt ptr %i.bhd, %i.ahn
  %i.ahp = trunc i64 %i.ahj to i32
  %i.ahq = add i32 %.sroa.090.sroa.12.1.i, -4
  %i.ahr = add i32 %i.ahq, %i.ahp
  %.0331.i = select i1 %i.aho, i32 %i.ahr, i32 %spec.store.select.i
  %.neg.i = sub i64 %i.bhb, %i.ahi
  %.neg359.i = trunc i64 %.neg.i to i32
  %i.ahs = add i32 %.0331.i, %.neg359.i
  %i.aht = tail call i32 @llvm.smax.i32(i32 %i.ahs, i32 0) ; 2 uses
  %.sroa.090.sroa.12.2.i = sub nsw i32 %.sroa.090.sroa.12.1.i, %i.aht
  %.4.i.idx = zext nneg i32 %i.aht to i64
  %.4.i = getelementptr inbounds nuw i8, ptr %.3.i, i64 %.4.i.idx
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.sroa.090.sroa.12.3.i = phi i32 [ %.sroa.090.sroa.12.2.i, %bb.fw ], [ %.sroa.090.sroa.12.1.i, %bb.fv ] ; 12 uses
  %.5.i = phi ptr [ %.4.i, %bb.fw ], [ %.3.i, %bb.fv ] ; 18 uses
  %i.ahu = sext i32 %.sroa.090.sroa.12.3.i to i64 ; 6 uses
  %i.ahv = getelementptr inbounds i8, ptr %.5.i, i64 %i.ahu ; 7 uses
  %.not360.i = icmp ugt ptr %i.ahv, %i.w
  br i1 %.not360.i, label %bb.jc, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ahw = getelementptr inbounds i8, ptr %i.ahv, i64 -3 ; 10 uses
  %i.ahx = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 12 uses
  %i.ahy = load i32, ptr %i.ad, align 8, !tbaa !26 ; 13 uses
  %i.ahz = ptrtoint ptr %i.ahw to i64
  %i.aia = ptrtoint ptr %i.ahx to i64             ; 2 uses
  %i.aib = sub i64 %i.ahz, %i.aia                 ; 2 uses
  %i.aic = trunc i64 %i.aib to i32
  %i.aid = add i32 %i.ahy, %i.aic                 ; 7 uses
  %i.aie = load i32, ptr %i.ae, align 4, !tbaa !45 ; 6 uses
  %i.aif = add i32 %i.aie, 65536
  %i.aig = icmp ugt i32 %i.aif, %i.aid
  %i.aih = add i32 %i.aid, -65535
  %i.aii = select i1 %i.aig, i32 %i.aie, i32 %i.aih ; 4 uses
  %i.aij = load ptr, ptr %i.af, align 8, !tbaa !44 ; 10 uses
  %i.aik = zext i32 %i.ahy to i64                 ; 3 uses
  %i.ail = zext i32 %i.aie to i64
  %i.aim = sub nsw i64 %i.aik, %i.ail             ; 5 uses
  %.ptr1162 = getelementptr inbounds i8, ptr %i.aij, i64 %i.aim ; 2 uses
  %i.ain = add nsw i64 %i.ahu, -3                 ; 2 uses
  %.val452 = load i32, ptr %i.ahw, align 1, !tbaa !28 ; 17 uses
  %i.aio = load i32, ptr %i.ag, align 8, !tbaa !43 ; 4 uses
  %i.aip = icmp ult i32 %i.aio, %i.aid
  br i1 %i.aip, label %.lr.ph1408, label %LZ4HC_Insert.exit.i95

.lr.ph1408:                                       ; preds = %bb.fy
  %i.aiq = sub nsw i64 0, %i.aik
  %invariant.gep1409 = getelementptr i8, ptr %i.ahx, i64 %i.aiq ; 3 uses
  %i.air = zext i32 %i.aio to i64                 ; 6 uses
  %i.ais = zext i32 %i.aid to i64                 ; 3 uses
  %i.ait = sub nsw i64 %i.ais, %i.air
  %xtraiter2723 = and i64 %i.ait, 1
  %lcmp.mod2724.not = icmp eq i64 %xtraiter2723, 0
  br i1 %lcmp.mod2724.not, label %.prol.loopexit2722, label %.prol.loopexit2722.unr-lcssa

.prol.loopexit2722.unr-lcssa:                     ; preds = %.lr.ph1408
  %gep1410.prol = getelementptr i8, ptr %invariant.gep1409, i64 %i.air
  %.val459.prol = load i32, ptr %gep1410.prol, align 1, !tbaa !28
  %i.aiu = mul i32 %.val459.prol, -1640531535
  %i.aiv = lshr i32 %i.aiu, 17
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aiw ; 2 uses
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !29
  %i.aiz = sub i32 %i.aio, %i.aiy
  %i.aja = tail call i32 @llvm.umin.i32(i32 %i.aiz, i32 65535)
  %i.ajb = trunc nuw i32 %i.aja to i16
  %i.ajc = and i64 %i.air, 65535
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ajc
  store i16 %i.ajb, ptr %i.ajd, align 2, !tbaa !40
  store i32 %i.aio, ptr %i.aix, align 4, !tbaa !29
  %indvars.iv.next1805.prol = add nuw nsw i64 %i.air, 1
  br label %.prol.loopexit2722

.prol.loopexit2722:                               ; preds = %.prol.loopexit2722.unr-lcssa, %.lr.ph1408
  %indvars.iv1804.unr = phi i64 [ %i.air, %.lr.ph1408 ], [ %indvars.iv.next1805.prol, %.prol.loopexit2722.unr-lcssa ]
  %i.aje = add nsw i64 %i.ais, -1
  %i.ajf = icmp eq i64 %i.aje, %i.air
  br i1 %i.ajf, label %LZ4HC_Insert.exit.i95.loopexit, label %.lr.ph1408.new

.lr.ph1408.new:                                   ; preds = %.prol.loopexit2722, %.lr.ph1408.new
  %indvars.iv1804 = phi i64 [ %indvars.iv.next1805.1, %.lr.ph1408.new ], [ %indvars.iv1804.unr, %.prol.loopexit2722 ] ; 5 uses
  %gep1410 = getelementptr i8, ptr %invariant.gep1409, i64 %indvars.iv1804
  %.val459 = load i32, ptr %gep1410, align 1, !tbaa !28
  %i.ajg = mul i32 %.val459, -1640531535
  %i.ajh = lshr i32 %i.ajg, 17
  %i.aji = zext nneg i32 %i.ajh to i64
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aji ; 2 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !29
  %i.ajl = trunc nuw i64 %indvars.iv1804 to i32   ; 2 uses
  %i.ajm = sub i32 %i.ajl, %i.ajk
  %i.ajn = tail call i32 @llvm.umin.i32(i32 %i.ajm, i32 65535)
  %i.ajo = trunc nuw i32 %i.ajn to i16
  %i.ajp = and i64 %indvars.iv1804, 65535
  %i.ajq = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ajp
  store i16 %i.ajo, ptr %i.ajq, align 2, !tbaa !40
  store i32 %i.ajl, ptr %i.ajj, align 4, !tbaa !29
  %indvars.iv.next1805 = add nuw nsw i64 %indvars.iv1804, 1 ; 3 uses
  %gep1410.1 = getelementptr i8, ptr %invariant.gep1409, i64 %indvars.iv.next1805
  %.val459.1 = load i32, ptr %gep1410.1, align 1, !tbaa !28
  %i.ajr = mul i32 %.val459.1, -1640531535
  %i.ajs = lshr i32 %i.ajr, 17
  %i.ajt = zext nneg i32 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ajt ; 2 uses
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !29
  %i.ajw = trunc nuw i64 %indvars.iv.next1805 to i32 ; 2 uses
  %i.ajx = sub i32 %i.ajw, %i.ajv
  %i.ajy = tail call i32 @llvm.umin.i32(i32 %i.ajx, i32 65535)
  %i.ajz = trunc nuw i32 %i.ajy to i16
  %i.aka = and i64 %indvars.iv.next1805, 65535
  %i.akb = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.aka
  store i16 %i.ajz, ptr %i.akb, align 2, !tbaa !40
  store i32 %i.ajw, ptr %i.aju, align 4, !tbaa !29
  %indvars.iv.next1805.1 = add nuw nsw i64 %indvars.iv1804, 2 ; 2 uses
  %i.akc = icmp samesign ult i64 %indvars.iv.next1805.1, %i.ais
  br i1 %i.akc, label %.lr.ph1408.new, label %LZ4HC_Insert.exit.i95.loopexit, !llvm.loop !1

LZ4HC_Insert.exit.i95.loopexit:                   ; preds = %.lr.ph1408.new, %.prol.loopexit2722
  %.val460.pre = load i32, ptr %i.ahw, align 1, !tbaa !28
  br label %LZ4HC_Insert.exit.i95
end_hunk_2
begin_hunk_3_@LZ4HC_compress_generic_noDictCtx:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.awa = and i64 %i.avy, 4294967295
  %i.awb = sub nsw i64 0, %i.awa
  %i.awc = getelementptr inbounds i8, ptr %i.atm, i64 %i.awb
  %i.awd = icmp eq ptr %i.awc, %i.ahx
  %or.cond454.i150 = select i1 %i.atg, i1 %i.awd, i1 false
  %or.cond455.i151 = select i1 %or.cond454.i150, i1 %i.ale, i1 false
  br i1 %or.cond455.i151, label %bb.ir, label %bb.iu

bb.ir:                                            ; preds = %LZ4HC_reverseCountPattern.exit714
  %i.awe = sub i64 0, %i.avy
  %i.awf = and i64 %i.awe, 3
  %i.awg = icmp eq i64 %i.awf, 0
  %.neg1160 = mul i32 %i.avz, 24
  %i.awh = tail call i32 @llvm.fshl.i32(i32 %.val452, i32 %.val452, i32 %.neg1160)
  %.0.i716 = select i1 %i.awg, i32 %.val452, i32 %i.awh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.0.i716, ptr %i.a, align 4, !tbaa !29
  br i1 %.not.i7182534, label %._crit_edge2538, label %.lr.ph2537, !prof !48

bb.is:                                            ; preds = %.lr.ph2537
  %.not.i718 = icmp slt i64 %.013.i717.idx2535, 8
  br i1 %.not.i718, label %._crit_edge2538, label %.lr.ph2537, !prof !49, !llvm.loop !3

.lr.ph2537:                                       ; preds = %bb.ir, %bb.is
  %.013.i717.idx2535 = phi i64 [ %.013.i717.add, %bb.is ], [ %i.aim, %bb.ir ] ; 3 uses
  %.013.i717.add = add nsw i64 %.013.i717.idx2535, -4 ; 3 uses
  %.ptr1161 = getelementptr inbounds nuw i8, ptr %i.aij, i64 %.013.i717.add
  %.val.i719 = load i32, ptr %.ptr1161, align 1, !tbaa !28
  %.not14.i720 = icmp eq i32 %.val.i719, %.0.i716
  br i1 %.not14.i720, label %bb.is, label %.thread2143, !llvm.loop !3

.thread2143:                                      ; preds = %.lr.ph2537
  %.013.i717.ptr.le2144 = getelementptr inbounds nuw i8, ptr %i.aij, i64 %.013.i717.idx2535
  br label %.lr.ph.i724.preheader

._crit_edge2538:                                  ; preds = %bb.is, %bb.ir
  %.013.i717.idx.lcssa = phi i64 [ %i.aim, %bb.ir ], [ %.013.i717.add, %bb.is ] ; 2 uses
  %.013.i717.ptr.le = getelementptr inbounds i8, ptr %i.aij, i64 %.013.i717.idx.lcssa ; 2 uses
  %i.awi = icmp sgt i64 %.013.i717.idx.lcssa, 0
  br i1 %i.awi, label %.lr.ph.i724.preheader, label %LZ4HC_reverseCountPattern.exit728, !prof !50

.lr.ph.i724.preheader:                            ; preds = %.thread2143, %._crit_edge2538
  %.116.i726.ph = phi ptr [ %.013.i717.ptr.le, %._crit_edge2538 ], [ %.013.i717.ptr.le2144, %.thread2143 ]
  br label %.lr.ph.i724

bb.it:                                            ; preds = %.lr.ph.i724
  %i.awj = getelementptr inbounds i8, ptr %.017.i725, i64 -1
  %i.awk = icmp ugt ptr %i.awl, %i.aij
  br i1 %i.awk, label %.lr.ph.i724, label %LZ4HC_reverseCountPattern.exit728, !prof !36, !llvm.loop !4

.lr.ph.i724:                                      ; preds = %.lr.ph.i724.preheader, %bb.it
  %.017.i725 = phi ptr [ %i.awj, %bb.it ], [ %i.aq, %.lr.ph.i724.preheader ] ; 2 uses
  %.116.i726 = phi ptr [ %i.awl, %bb.it ], [ %.116.i726.ph, %.lr.ph.i724.preheader ] ; 2 uses
  %i.awl = getelementptr inbounds i8, ptr %.116.i726, i64 -1 ; 3 uses
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !39
  %i.awn = load i8, ptr %.017.i725, align 1, !tbaa !39
  %.not15.i727 = icmp eq i8 %i.awm, %i.awn
  br i1 %.not15.i727, label %bb.it, label %LZ4HC_reverseCountPattern.exit728

LZ4HC_reverseCountPattern.exit728:                ; preds = %bb.it, %.lr.ph.i724, %._crit_edge2538
  %.1.lcssa.i721 = phi ptr [ %.013.i717.ptr.le, %._crit_edge2538 ], [ %i.aij, %bb.it ], [ %.116.i726, %.lr.ph.i724 ]
  %i.awo = ptrtoint ptr %.1.lcssa.i721 to i64
  %i.awp = sub i64 %i.alf, %i.awo
  %i.awq = trunc i64 %i.awp to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.awr = add i32 %i.awq, %i.avz
  br label %bb.iu

bb.iu:                                            ; preds = %LZ4HC_reverseCountPattern.exit728, %LZ4HC_reverseCountPattern.exit714
  %.0316.i152 = phi i32 [ %i.avz, %LZ4HC_reverseCountPattern.exit714 ], [ %i.awr, %LZ4HC_reverseCountPattern.exit728 ]
  %i.aws = sub i32 %i.ask, %.0316.i152
  %i.awt = tail call i32 @llvm.umax.i32(i32 %i.aws, i32 %i.aii) ; 8 uses
  %i.awu = sub i32 %i.ask, %i.awt
  %i.awv = zext i32 %i.awu to i64
  %i.aww = add nuw nsw i64 %.0317.i148, %i.awv    ; 2 uses
  %.not438.i153 = icmp ult i64 %i.aww, %.1372.i134
  %.not439.i154 = icmp ugt i64 %.0317.i148, %.1372.i134
  %or.cond456.i155 = or i1 %.not439.i154, %.not438.i153
  br i1 %or.cond456.i155, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.awx = trunc i64 %.0317.i148 to i32
  %i.awy = trunc i64 %.1372.i134 to i32
  %i.awz = sub i32 %i.ask, %i.awy
  %i.axa = add i32 %i.awz, %i.awx                 ; 2 uses
  %i.axb = sub i32 %i.axa, %i.ahy
  %i.axc = icmp ugt i32 %i.axb, -4
  %..i157 = select i1 %i.axc, i32 %i.ahy, i32 %i.axa
  br label %.thread1071

bb.iw:                                            ; preds = %bb.iu
  %i.axd = sub i32 %i.awt, %i.ahy
  %i.axe = icmp ugt i32 %i.axd, -4
  br i1 %i.axe, label %.thread1071, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  br i1 %.not433.i, label %bb.iy, label %.thread1071

bb.iy:                                            ; preds = %bb.ix
  %i.axf = tail call i64 @llvm.umin.i64(i64 %i.aww, i64 %.1372.i134) ; 2 uses
  %i.axg = sext i32 %.5.i120 to i64
  %i.axh = icmp ugt i64 %i.axf, %i.axg
  br i1 %i.axh, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %bb.iy
  %i.axi = zext i32 %i.awt to i64
  %i.axj = sub i64 %i.aki, %i.axi
  %i.axk = icmp ugt i64 %i.axj, 65535
  br i1 %i.axk, label %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.axl = trunc i64 %i.axf to i32
  %i.axm = sub i32 %i.aid, %i.awt
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iy
  %.6354.i170 = phi i32 [ %i.axm, %bb.ja ], [ %.5353.i117, %bb.iy ] ; 2 uses
  %.6.i171 = phi i32 [ %i.axl, %bb.ja ], [ %.5.i120, %bb.iy ] ; 2 uses
  %i.axn = and i32 %i.awt, 65535
  %i.axo = zext nneg i32 %i.axn to i64
  %i.axp = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.axo
  %i.axq = load i16, ptr %i.axp, align 2, !tbaa !40
  %i.axr = zext i16 %i.axq to i32                 ; 2 uses
  %i.axs = icmp ult i32 %i.awt, %i.axr
  %i.axt = sub nuw i32 %i.awt, %i.axr
  br i1 %i.axs, label %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit, label %.thread1071

.thread1043:                                      ; preds = %bb.ia, %bb.hy, %bb.ig, %bb.if, %bb.ie
  %.3379.i127 = phi i32 [ %.0376.i991443, %bb.hy ], [ 2, %bb.ig ], [ 2, %bb.if ], [ %.1377.i133, %bb.ie ], [ 1, %bb.ia ]
  %.3374.i128 = phi i64 [ %.0371.i1001444, %bb.hy ], [ %.1372.i134, %bb.ig ], [ %.1372.i134, %bb.if ], [ %.1372.i134, %bb.ie ], [ %.0371.i1001444, %bb.ia ]
  %i.axu = zext i16 %i.asi to i32
  %i.axv = sub i32 %.0381.i981442, %i.axu
  br label %.thread1071

.thread1071:                                      ; preds = %bb.jb, %bb.iw, %bb.ix, %bb.iv, %.thread1043
  %.16.i1311082 = phi i32 [ %.5.i120, %.thread1043 ], [ %.5.i120, %bb.iv ], [ %.5.i120, %bb.iw ], [ %.5.i120, %bb.ix ], [ %.6.i171, %bb.jb ] ; 2 uses
  %.16364.i1291081 = phi i32 [ %.5353.i117, %.thread1043 ], [ %.5353.i117, %bb.iv ], [ %.5353.i117, %bb.iw ], [ %.5353.i117, %bb.ix ], [ %.6354.i170, %bb.jb ] ; 2 uses
  %.3374.i1281080 = phi i64 [ %.3374.i128, %.thread1043 ], [ %.1372.i134, %bb.iv ], [ %.1372.i134, %bb.iw ], [ %.1372.i134, %bb.ix ], [ %.1372.i134, %bb.jb ]
  %.3379.i1271079 = phi i32 [ %.3379.i127, %.thread1043 ], [ 2, %bb.iv ], [ 2, %bb.iw ], [ 2, %bb.ix ], [ 2, %bb.jb ]
  %.15396.i122 = phi i32 [ %i.axv, %.thread1043 ], [ %..i157, %bb.iv ], [ %i.ahy, %bb.iw ], [ %i.awt, %bb.ix ], [ %i.axt, %bb.jb ] ; 2 uses
  %i.axw = icmp uge i32 %.15396.i122, %i.aii
  %i.axx = icmp sgt i32 %.0403.i961441, 1
  %i.axy = select i1 %i.axw, i1 %i.axx, i1 false
  br i1 %i.axy, label %bb.fz, label %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit

LZ4HC_InsertAndGetWiderMatch.exit255.loopexit:    ; preds = %bb.jb, %bb.iz, %.thread1071
  %.18366.i105.ph = phi i32 [ %.16364.i1291081, %.thread1071 ], [ %.6354.i170, %bb.jb ], [ %.5353.i117, %bb.iz ]
  %.18.i107.ph = phi i32 [ %.16.i1311082, %.thread1071 ], [ %.6.i171, %bb.jb ], [ %.5.i120, %bb.iz ]
  %i.axz = zext i32 %.18366.i105.ph to i64
  %i.aya = sext i32 %.5342.i118 to i64
  br label %LZ4HC_InsertAndGetWiderMatch.exit255

LZ4HC_InsertAndGetWiderMatch.exit255:             ; preds = %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit, %LZ4HC_Insert.exit.i95
  %.18366.i105 = phi i64 [ 0, %LZ4HC_Insert.exit.i95 ], [ %i.axz, %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit ]
  %.6343.i106 = phi i64 [ 0, %LZ4HC_Insert.exit.i95 ], [ %i.aya, %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit ]
  %.18.i107 = phi i32 [ %.sroa.090.sroa.12.3.i, %LZ4HC_Insert.exit.i95 ], [ %.18.i107.ph, %LZ4HC_InsertAndGetWiderMatch.exit255.loopexit ]
  %i.ayb = getelementptr inbounds i8, ptr %i.ahw, i64 %.6343.i106
  br label %bb.jc

bb.jc:                                            ; preds = %LZ4HC_InsertAndGetWiderMatch.exit255, %bb.fx
  %.sroa.051.sroa.8.0.i = phi i32 [ %.18.i107, %LZ4HC_InsertAndGetWiderMatch.exit255 ], [ 0, %bb.fx ] ; 5 uses
  %.sroa.051.sroa.0.0.i = phi i64 [ %.18366.i105, %LZ4HC_InsertAndGetWiderMatch.exit255 ], [ 0, %bb.fx ] ; 3 uses
  %.3341.i = phi ptr [ %i.ayb, %LZ4HC_InsertAndGetWiderMatch.exit255 ], [ %.2340.i, %bb.fx ] ; 11 uses
  %.not361.i = icmp sgt i32 %.sroa.051.sroa.8.0.i, %.sroa.090.sroa.12.3.i
  br i1 %.not361.i, label %bb.jz, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %.5.i.lcssa18931896 = ptrtoaddr ptr %.5.i to i64
  %i.ayc = icmp ult ptr %.5.i, %i.bhf
  %i.ayd = ptrtoint ptr %.5.i to i64              ; 3 uses
  %i.aye = sub i64 %i.ayd, %i.bhb
  %i.ayf = trunc i64 %i.aye to i32
  %.sroa.0162.sroa.14.3.i = select i1 %i.ayc, i32 %i.ayf, i32 %.sroa.0162.sroa.14.2.i.ph ; 3 uses
  %i.ayg = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.ayh = ptrtoint ptr %.4848.ph to i64          ; 3 uses
  %i.ayi = sub i64 %i.bhb, %i.ayh                 ; 6 uses
  %i.ayj = udiv i64 %i.ayi, 255
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayg, i64 %i.ayj
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 %i.ayi
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayl, i64 8
  %i.ayn = icmp ugt ptr %i.aym, %spec.select.i
  %or.cond.i39 = select i1 %.not.i15, i1 %i.ayn, i1 false
  br i1 %or.cond.i39, label %LZ4HC_encodeSequence.exit, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.ayo = icmp ugt i64 %i.ayi, 14
  br i1 %i.ayo, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.ayp = add i64 %i.ayi, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !39
  %i.ayq = icmp ugt i64 %i.ayp, 254
  br i1 %i.ayq, label %.lr.ph1505.preheader, label %._crit_edge1506

.lr.ph1505.preheader:                             ; preds = %bb.jf
  %reass.sub2122 = sub i64 %i.bhb, %i.ayh
  %i.ayr = add i64 %reass.sub2122, -270           ; 2 uses
  %i.ays = udiv i64 %i.ayr, 255                   ; 3 uses
  %i.ayt = add nuw nsw i64 %i.ays, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ayg, i8 -1, i64 range(i64 0, 72340172838076675) %i.ayt, i1 false), !tbaa !39
  %scevgep1871 = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep1875 = getelementptr i8, ptr %scevgep1871, i64 %i.ays
  %.neg2123 = mul i64 %i.ays, -255
  %i.ayu = add i64 %.neg2123, %i.ayr
  br label %._crit_edge1506

._crit_edge1506:                                  ; preds = %.lr.ph1505.preheader, %bb.jf
  %.28.lcssa = phi ptr [ %i.ayg, %bb.jf ], [ %scevgep1875, %.lr.ph1505.preheader ] ; 2 uses
  %.0.i46.lcssa = phi i64 [ %i.ayp, %bb.jf ], [ %i.ayu, %.lr.ph1505.preheader ]
  %i.ayv = trunc nuw i64 %.0.i46.lcssa to i8
  %i.ayw = getelementptr inbounds nuw i8, ptr %.28.lcssa, i64 1
  store i8 %i.ayv, ptr %.28.lcssa, align 1, !tbaa !39
  br label %bb.jh

bb.jg:                                            ; preds = %bb.je
  %.tr.i40 = trunc nuw nsw i64 %i.ayi to i8
  %i.ayx = shl nuw i8 %.tr.i40, 4
  store i8 %i.ayx, ptr %.5.ph, align 1, !tbaa !39
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %._crit_edge1506
  %.24 = phi ptr [ %i.ayw, %._crit_edge1506 ], [ %i.ayg, %bb.jg ] ; 3 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %.24, i64 %i.ayi ; 3 uses
  br label %bb.ji

bb.ji:                                            ; preds = %bb.ji, %bb.jh
  %.09.i71 = phi ptr [ %.24, %bb.jh ], [ %i.aza, %bb.ji ] ; 2 uses
  %.0.i72 = phi ptr [ %.4848.ph, %bb.jh ], [ %i.azb, %bb.ji ] ; 2 uses
  %i.ayz = load i64, ptr %.0.i72, align 1
  store i64 %i.ayz, ptr %.09.i71, align 1
  %i.aza = getelementptr inbounds nuw i8, ptr %.09.i71, i64 8 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %.0.i72, i64 8
  %i.azc = icmp ult ptr %i.aza, %i.ayy
  br i1 %i.azc, label %bb.ji, label %LZ4_wildCopy8.exit73, !llvm.loop !7

LZ4_wildCopy8.exit73:                             ; preds = %bb.ji
  %i.azd = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.azd, ptr %i.ayy, align 1, !tbaa !38
  %i.aze = getelementptr i8, ptr %i.ayy, i64 2    ; 4 uses
  %i.azf = sext i32 %.sroa.0162.sroa.14.3.i to i64 ; 5 uses
  %i.azg = add nsw i64 %i.azf, -4                 ; 3 uses
  %i.azh = udiv i64 %i.azg, 255
  %i.azi = getelementptr inbounds nuw i8, ptr %i.aze, i64 %i.azh
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 6
  %i.azk = icmp ugt ptr %i.azj, %spec.select.i
  %or.cond64.i42 = select i1 %.not.i15, i1 %i.azk, i1 false
  br i1 %or.cond64.i42, label %LZ4HC_encodeSequence.exit, label %bb.jj

bb.jj:                                            ; preds = %LZ4_wildCopy8.exit73
  %i.azl = icmp ugt i64 %i.azg, 14
  br i1 %i.azl, label %bb.jk, label %bb.jn

bb.jk:                                            ; preds = %bb.jj
  %i.azm = load i8, ptr %.5.ph, align 1, !tbaa !39
  %i.azn = add i8 %i.azm, 15
  store i8 %i.azn, ptr %.5.ph, align 1, !tbaa !39
  %i.azo = add nsw i64 %i.azf, -19                ; 2 uses
  %i.azp = icmp ugt i64 %i.azo, 509
  br i1 %i.azp, label %.lr.ph1512.preheader, label %._crit_edge1513

.lr.ph1512.preheader:                             ; preds = %bb.jk
  %i.azq = add nsw i64 %i.azf, -529               ; 2 uses
  %i.azr = udiv i64 %i.azq, 510                   ; 2 uses
  %i.azs = shl nuw nsw i64 %i.azr, 1              ; 2 uses
  %i.azt = add nuw nsw i64 %i.azs, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aze, i8 -1, i64 range(i64 0, 72340172838076675) %i.azt, i1 false), !tbaa !39
  %scevgep1879 = getelementptr i8, ptr %.24, i64 4
  %i.azu = sub i64 %i.azs, %i.ayh
  %scevgep1880 = getelementptr i8, ptr %scevgep1879, i64 %i.azu
  %scevgep1884 = getelementptr i8, ptr %scevgep1880, i64 %i.bhb
  %.neg2124 = mul i64 %i.azr, -510
  %i.azv = add i64 %.neg2124, %i.azq
  br label %._crit_edge1513

._crit_edge1513:                                  ; preds = %.lr.ph1512.preheader, %bb.jk
  %.26.lcssa = phi ptr [ %i.aze, %bb.jk ], [ %scevgep1884, %.lr.ph1512.preheader ] ; 3 uses
  %.050.i44.lcssa = phi i64 [ %i.azo, %bb.jk ], [ %i.azv, %.lr.ph1512.preheader ] ; 3 uses
  %i.azw = icmp samesign ugt i64 %.050.i44.lcssa, 254
  br i1 %i.azw, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %._crit_edge1513
  %i.azx = add nsw i64 %.050.i44.lcssa, -255
  %i.azy = getelementptr inbounds nuw i8, ptr %.26.lcssa, i64 1
  store i8 -1, ptr %.26.lcssa, align 1, !tbaa !39
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %._crit_edge1513
  %.27 = phi ptr [ %i.azy, %bb.jl ], [ %.26.lcssa, %._crit_edge1513 ] ; 2 uses
  %.1.i45 = phi i64 [ %i.azx, %bb.jl ], [ %.050.i44.lcssa, %._crit_edge1513 ]
  %i.azz = trunc nuw i64 %.1.i45 to i8
  %i.baa = getelementptr inbounds nuw i8, ptr %.27, i64 1
  store i8 %i.azz, ptr %.27, align 1, !tbaa !39
  br label %bb.jo

bb.jn:                                            ; preds = %bb.jj
  %i.bab = trunc nuw nsw i64 %i.azg to i8
  %i.bac = load i8, ptr %.5.ph, align 1, !tbaa !39
  %i.bad = add i8 %i.bac, %i.bab
  store i8 %i.bad, ptr %.5.ph, align 1, !tbaa !39
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %.25 = phi ptr [ %i.baa, %bb.jm ], [ %i.aze, %bb.jn ] ; 10 uses
  %i.bae = getelementptr inbounds i8, ptr %.4858.ph, i64 %i.azf ; 4 uses
  %i.baf = getelementptr i8, ptr %.25, i64 1      ; 4 uses
  %i.bag = ptrtoint ptr %i.bae to i64             ; 2 uses
  %i.bah = sub i64 %i.ayd, %i.bag                 ; 6 uses
  %i.bai = udiv i64 %i.bah, 255
  %i.baj = getelementptr inbounds nuw i8, ptr %i.baf, i64 %i.bai
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 %i.bah
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bak, i64 8
  %i.bam = icmp ugt ptr %i.bal, %spec.select.i
  %or.cond.i28 = select i1 %.not.i15, i1 %i.bam, i1 false
  br i1 %or.cond.i28, label %LZ4HC_encodeSequence.exit, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.ban = icmp ugt i64 %i.bah, 14
  br i1 %i.ban, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.bao = add i64 %i.bah, -15                    ; 2 uses
  store i8 -16, ptr %.25, align 1, !tbaa !39
  %i.bap = icmp ugt i64 %i.bao, 254
  br i1 %i.bap, label %.lr.ph1519.preheader, label %._crit_edge1520

.lr.ph1519.preheader:                             ; preds = %bb.jq
  %i.baq = add i64 %i.ayd, -270
  %i.bar = sub i64 %i.baq, %i.bag                 ; 2 uses
  %i.bas = udiv i64 %i.bar, 255                   ; 3 uses
  %i.bat = add nuw nsw i64 %i.bas, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.baf, i8 -1, i64 range(i64 0, 72340172838076675) %i.bat, i1 false), !tbaa !39
  %scevgep1885 = getelementptr i8, ptr %.25, i64 2
  %scevgep1886 = getelementptr i8, ptr %scevgep1885, i64 %i.bas
  %.neg2125 = mul i64 %i.bas, -255
  %i.bau = add i64 %.neg2125, %i.bar
  br label %._crit_edge1520

._crit_edge1520:                                  ; preds = %.lr.ph1519.preheader, %bb.jq
  %.22.lcssa = phi ptr [ %i.baf, %bb.jq ], [ %scevgep1886, %.lr.ph1519.preheader ] ; 2 uses
  %.0.i35.lcssa = phi i64 [ %i.bao, %bb.jq ], [ %i.bau, %.lr.ph1519.preheader ]
  %i.bav = trunc nuw i64 %.0.i35.lcssa to i8
  %i.baw = getelementptr inbounds nuw i8, ptr %.22.lcssa, i64 1
  store i8 %i.bav, ptr %.22.lcssa, align 1, !tbaa !39
  br label %bb.js

bb.jr:                                            ; preds = %bb.jp
  %.tr.i29 = trunc nuw nsw i64 %i.bah to i8
  %i.bax = shl nuw i8 %.tr.i29, 4
  store i8 %i.bax, ptr %.25, align 1, !tbaa !39
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %._crit_edge1520
  %.18 = phi ptr [ %i.baw, %._crit_edge1520 ], [ %i.baf, %bb.jr ] ; 3 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %.18, i64 %i.bah ; 3 uses
  br label %bb.jt

bb.jt:                                            ; preds = %bb.jt, %bb.js
  %.09.i74 = phi ptr [ %.18, %bb.js ], [ %i.bba, %bb.jt ] ; 2 uses
  %.0.i75 = phi ptr [ %i.bae, %bb.js ], [ %i.bbb, %bb.jt ] ; 2 uses
  %i.baz = load i64, ptr %.0.i75, align 1
  store i64 %i.baz, ptr %.09.i74, align 1
  %i.bba = getelementptr inbounds nuw i8, ptr %.09.i74, i64 8 ; 2 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %.0.i75, i64 8
  %i.bbc = icmp ult ptr %i.bba, %i.bay
  br i1 %i.bbc, label %bb.jt, label %LZ4_wildCopy8.exit76, !llvm.loop !7

LZ4_wildCopy8.exit76:                             ; preds = %bb.jt
  %i.bbd = trunc i32 %.sroa.090.sroa.0.1.i to i16
  store i16 %i.bbd, ptr %i.bay, align 1, !tbaa !38
  %i.bbe = getelementptr i8, ptr %i.bay, i64 2    ; 4 uses
  %i.bbf = add nsw i64 %i.ahu, -4                 ; 3 uses
  %i.bbg = udiv i64 %i.bbf, 255
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %i.bbg
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 6
  %i.bbj = icmp ugt ptr %i.bbi, %spec.select.i
  %or.cond64.i31 = select i1 %.not.i15, i1 %i.bbj, i1 false
  br i1 %or.cond64.i31, label %LZ4HC_encodeSequence.exit, label %bb.ju

bb.ju:                                            ; preds = %LZ4_wildCopy8.exit76
  %i.bbk = icmp ugt i64 %i.bbf, 14
  br i1 %i.bbk, label %bb.jv, label %bb.jy

bb.jv:                                            ; preds = %bb.ju
  %i.bbl = load i8, ptr %.25, align 1, !tbaa !39
  %i.bbm = add i8 %i.bbl, 15
  store i8 %i.bbm, ptr %.25, align 1, !tbaa !39
  %i.bbn = add nsw i64 %i.ahu, -19                ; 2 uses
  %i.bbo = icmp ugt i64 %i.bbn, 509
  br i1 %i.bbo, label %.lr.ph1526.preheader, label %._crit_edge1527

.lr.ph1526.preheader:                             ; preds = %bb.jv
  %i.bbp = add nsw i64 %i.ahu, -529               ; 2 uses
  %i.bbq = udiv i64 %i.bbp, 510                   ; 2 uses
  %i.bbr = shl nuw nsw i64 %i.bbq, 1              ; 2 uses
  %i.bbs = add nuw nsw i64 %i.bbr, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bbe, i8 -1, i64 range(i64 0, 72340172838076675) %i.bbs, i1 false), !tbaa !39
  %scevgep1887 = getelementptr i8, ptr %.18, i64 4
  %i.bbt = add i64 %i.azf, %i.bhb
  %i.bbu = sub i64 0, %i.bbt
  %scevgep1892 = getelementptr i8, ptr %scevgep1887, i64 %i.bbu
  %i.bbv = getelementptr i8, ptr %scevgep1892, i64 %i.bbr
  %scevgep1897 = getelementptr i8, ptr %i.bbv, i64 %.5.i.lcssa18931896
  %.neg2126 = mul i64 %i.bbq, -510
  %i.bbw = add i64 %.neg2126, %i.bbp
  br label %._crit_edge1527

._crit_edge1527:                                  ; preds = %.lr.ph1526.preheader, %bb.jv
  %.20.lcssa = phi ptr [ %i.bbe, %bb.jv ], [ %scevgep1897, %.lr.ph1526.preheader ] ; 3 uses
  %.050.i33.lcssa = phi i64 [ %i.bbn, %bb.jv ], [ %i.bbw, %.lr.ph1526.preheader ] ; 3 uses
  %i.bbx = icmp samesign ugt i64 %.050.i33.lcssa, 254
  br i1 %i.bbx, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %._crit_edge1527
  %i.bby = add nsw i64 %.050.i33.lcssa, -255
  %i.bbz = getelementptr inbounds nuw i8, ptr %.20.lcssa, i64 1
  store i8 -1, ptr %.20.lcssa, align 1, !tbaa !39
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %._crit_edge1527
  %.21 = phi ptr [ %i.bbz, %bb.jw ], [ %.20.lcssa, %._crit_edge1527 ] ; 2 uses
  %.1.i34 = phi i64 [ %i.bby, %bb.jw ], [ %.050.i33.lcssa, %._crit_edge1527 ]
  %i.bca = trunc nuw i64 %.1.i34 to i8
  %i.bcb = getelementptr inbounds nuw i8, ptr %.21, i64 1
  store i8 %i.bca, ptr %.21, align 1, !tbaa !39
  br label %.outer1185.backedge

bb.jy:                                            ; preds = %bb.ju
  %i.bcc = trunc nuw nsw i64 %i.bbf to i8
  %i.bcd = load i8, ptr %.25, align 1, !tbaa !39
  %i.bce = add i8 %i.bcd, %i.bcc
  store i8 %i.bce, ptr %.25, align 1, !tbaa !39
  br label %.outer1185.backedge

bb.jz:                                            ; preds = %bb.jc
  %i.bcf = icmp ult ptr %.3341.i, %i.bhg
  br i1 %i.bcf, label %bb.ka, label %bb.kp

bb.ka:                                            ; preds = %bb.jz
  %.not365.i = icmp ult ptr %.3341.i, %i.bhf
  %.sroa.090.sroa.0.0.extract.trunc130.i = trunc nuw i64 %.sroa.051.sroa.0.0.i to i32 ; 2 uses
  br i1 %.not365.i, label %bb.fv, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.bcg = icmp ult ptr %.5.i, %i.bhf
  br i1 %i.bcg, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.bch = ptrtoint ptr %i.bhf to i64
  %i.bci = ptrtoint ptr %.5.i to i64
  %i.bcj = sub i64 %i.bch, %i.bci                 ; 2 uses
  %i.bck = trunc i64 %i.bcj to i32
  %sext.i = shl i64 %i.bcj, 32
  %i.bcl = ashr exact i64 %sext.i, 32
  %i.bcm = getelementptr inbounds i8, ptr %.5.i, i64 %i.bcl
  %i.bcn = sub nsw i32 %.sroa.090.sroa.12.3.i, %i.bck ; 2 uses
  %i.bco = icmp slt i32 %i.bcn, 4                 ; 3 uses
  %.sroa.090.sroa.12.4.i = select i1 %i.bco, i32 %.sroa.051.sroa.8.0.i, i32 %i.bcn
  %.sroa.090.sroa.0.2.i = select i1 %i.bco, i32 %.sroa.090.sroa.0.0.extract.trunc130.i, i32 %.sroa.090.sroa.0.1.i
  %.6.i = select i1 %i.bco, ptr %.3341.i, ptr %i.bcm
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.sroa.090.sroa.12.5.i = phi i32 [ %.sroa.090.sroa.12.4.i, %bb.kc ], [ %.sroa.090.sroa.12.3.i, %bb.kb ]
  %.sroa.090.sroa.0.3.i = phi i32 [ %.sroa.090.sroa.0.2.i, %bb.kc ], [ %.sroa.090.sroa.0.1.i, %bb.kb ]
  %.7.i = phi ptr [ %.6.i, %bb.kc ], [ %.5.i, %bb.kb ] ; 2 uses
  %i.bcp = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.bcq = ptrtoint ptr %.4848.ph to i64          ; 3 uses
  %i.bcr = sub i64 %i.bhb, %i.bcq                 ; 6 uses
  %i.bcs = udiv i64 %i.bcr, 255
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcp, i64 %i.bcs
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 %i.bcr
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 8
  %i.bcw = icmp ugt ptr %i.bcv, %spec.select.i
  %or.cond.i12 = select i1 %.not.i15, i1 %i.bcw, i1 false
  br i1 %or.cond.i12, label %LZ4HC_encodeSequence.exit, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.bcx = icmp ugt i64 %i.bcr, 14
  br i1 %i.bcx, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.bcy = add i64 %i.bcr, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !39
  %i.bcz = icmp ugt i64 %i.bcy, 254
  br i1 %i.bcz, label %.lr.ph1477.preheader, label %._crit_edge1478

.lr.ph1477.preheader:                             ; preds = %bb.kf
  %reass.sub2129 = sub i64 %i.bhb, %i.bcq
  %i.bda = add i64 %reass.sub2129, -270           ; 2 uses
  %i.bdb = udiv i64 %i.bda, 255                   ; 3 uses
  %i.bdc = add nuw nsw i64 %i.bdb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bcp, i8 -1, i64 range(i64 0, 72340172838076675) %i.bdc, i1 false), !tbaa !39
  %scevgep1830 = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep1834 = getelementptr i8, ptr %scevgep1830, i64 %i.bdb
  %.neg2130 = mul i64 %i.bdb, -255
  %i.bdd = add i64 %.neg2130, %i.bda
  br label %._crit_edge1478

._crit_edge1478:                                  ; preds = %.lr.ph1477.preheader, %bb.kf
  %.10.lcssa = phi ptr [ %i.bcp, %bb.kf ], [ %scevgep1834, %.lr.ph1477.preheader ] ; 2 uses
  %.0.i14.lcssa = phi i64 [ %i.bcy, %bb.kf ], [ %i.bdd, %.lr.ph1477.preheader ]
  %i.bde = trunc nuw i64 %.0.i14.lcssa to i8
  %i.bdf = getelementptr inbounds nuw i8, ptr %.10.lcssa, i64 1
  store i8 %i.bde, ptr %.10.lcssa, align 1, !tbaa !39
  br label %bb.kh

bb.kg:                                            ; preds = %bb.ke
  %.tr.i = trunc nuw nsw i64 %i.bcr to i8
  %i.bdg = shl nuw i8 %.tr.i, 4
  store i8 %i.bdg, ptr %.5.ph, align 1, !tbaa !39
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %._crit_edge1478
  %.6 = phi ptr [ %i.bdf, %._crit_edge1478 ], [ %i.bcp, %bb.kg ] ; 3 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %.6, i64 %i.bcr ; 3 uses
  br label %bb.ki

bb.ki:                                            ; preds = %bb.ki, %bb.kh
  %.09.i80 = phi ptr [ %.6, %bb.kh ], [ %i.bdj, %bb.ki ] ; 2 uses
  %.0.i81 = phi ptr [ %.4848.ph, %bb.kh ], [ %i.bdk, %bb.ki ] ; 2 uses
  %i.bdi = load i64, ptr %.0.i81, align 1
  store i64 %i.bdi, ptr %.09.i80, align 1
  %i.bdj = getelementptr inbounds nuw i8, ptr %.09.i80, i64 8 ; 2 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %.0.i81, i64 8
  %i.bdl = icmp ult ptr %i.bdj, %i.bdh
  br i1 %i.bdl, label %bb.ki, label %LZ4_wildCopy8.exit82, !llvm.loop !7

LZ4_wildCopy8.exit82:                             ; preds = %bb.ki
  %i.bdm = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.bdm, ptr %i.bdh, align 1, !tbaa !38
  %i.bdn = getelementptr i8, ptr %i.bdh, i64 2    ; 4 uses
  %i.bdo = add nsw i64 %i.bhe, -4                 ; 3 uses
  %i.bdp = udiv i64 %i.bdo, 255
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdn, i64 %i.bdp
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 6
  %i.bds = icmp ugt ptr %i.bdr, %spec.select.i
  %or.cond64.i = select i1 %.not.i15, i1 %i.bds, i1 false
  br i1 %or.cond64.i, label %LZ4HC_encodeSequence.exit, label %bb.kj

bb.kj:                                            ; preds = %LZ4_wildCopy8.exit82
  %i.bdt = icmp ugt i64 %i.bdo, 14
  br i1 %i.bdt, label %bb.kk, label %bb.kn

bb.kk:                                            ; preds = %bb.kj
  %i.bdu = load i8, ptr %.5.ph, align 1, !tbaa !39
  %i.bdv = add i8 %i.bdu, 15
  store i8 %i.bdv, ptr %.5.ph, align 1, !tbaa !39
  %i.bdw = add nsw i64 %i.bhe, -19                ; 2 uses
  %i.bdx = icmp ugt i64 %i.bdw, 509
  br i1 %i.bdx, label %.lr.ph1484.preheader, label %._crit_edge1485

.lr.ph1484.preheader:                             ; preds = %bb.kk
  %i.bdy = add nsw i64 %i.bhe, -529               ; 2 uses
  %i.bdz = udiv i64 %i.bdy, 510                   ; 2 uses
  %i.bea = shl nuw nsw i64 %i.bdz, 1              ; 2 uses
  %i.beb = add nuw nsw i64 %i.bea, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bdn, i8 -1, i64 range(i64 0, 72340172838076675) %i.beb, i1 false), !tbaa !39
  %scevgep1838 = getelementptr i8, ptr %.6, i64 4
  %i.bec = sub i64 0, %i.bcq
  %scevgep1839 = getelementptr i8, ptr %scevgep1838, i64 %i.bec
  %i.bed = getelementptr i8, ptr %scevgep1839, i64 %i.bea
  %scevgep1843 = getelementptr i8, ptr %i.bed, i64 %i.bhb
  %.neg2131 = mul i64 %i.bdz, -510
  %i.bee = add i64 %.neg2131, %i.bdy
  br label %._crit_edge1485

._crit_edge1485:                                  ; preds = %.lr.ph1484.preheader, %bb.kk
  %.8.lcssa = phi ptr [ %i.bdn, %bb.kk ], [ %scevgep1843, %.lr.ph1484.preheader ] ; 3 uses
  %.050.i.lcssa = phi i64 [ %i.bdw, %bb.kk ], [ %i.bee, %.lr.ph1484.preheader ] ; 3 uses
  %i.bef = icmp samesign ugt i64 %.050.i.lcssa, 254
  br i1 %i.bef, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %._crit_edge1485
  %i.beg = add nsw i64 %.050.i.lcssa, -255
  %i.beh = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 1
  store i8 -1, ptr %.8.lcssa, align 1, !tbaa !39
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %._crit_edge1485
  %.9 = phi ptr [ %i.beh, %bb.kl ], [ %.8.lcssa, %._crit_edge1485 ] ; 2 uses
  %.1.i13 = phi i64 [ %i.beg, %bb.kl ], [ %.050.i.lcssa, %._crit_edge1485 ]
  %i.bei = trunc nuw i64 %.1.i13 to i8
  %i.bej = getelementptr inbounds nuw i8, ptr %.9, i64 1
  store i8 %i.bei, ptr %.9, align 1, !tbaa !39
  br label %bb.ko

bb.kn:                                            ; preds = %bb.kj
  %i.bek = trunc nuw nsw i64 %i.bdo to i8
  %i.bel = load i8, ptr %.5.ph, align 1, !tbaa !39
  %i.bem = add i8 %i.bel, %i.bek
  store i8 %i.bem, ptr %.5.ph, align 1, !tbaa !39
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %.11.ph = phi ptr [ %i.bdn, %bb.kn ], [ %i.bej, %bb.km ]
  %.sroa.090.sroa.12.0.insert.ext154.i = zext i32 %.sroa.090.sroa.12.5.i to i64
  %.sroa.090.sroa.12.0.insert.shift155.i = shl nuw i64 %.sroa.090.sroa.12.0.insert.ext154.i, 32
  %.sroa.090.sroa.0.0.insert.ext136.i = zext i32 %.sroa.090.sroa.0.3.i to i64
  %.sroa.090.sroa.0.0.insert.insert138.i = or disjoint i64 %.sroa.090.sroa.12.0.insert.shift155.i, %.sroa.090.sroa.0.0.insert.ext136.i
  br label %.outer1182

.outer1182:                                       ; preds = %.preheader1180, %bb.ko
  %.1855.ph = phi ptr [ %.08541340, %.preheader1180 ], [ %.3341.i, %bb.ko ]
  %.1845.ph = phi ptr [ %.0844.ph1564, %.preheader1180 ], [ %i.bhf, %bb.ko ] ; 6 uses
  %.1.ph = phi ptr [ %.0.ph1565, %.preheader1180 ], [ %.11.ph, %bb.ko ] ; 11 uses
  %.sroa.0232.0.i.ph = phi i64 [ %.sroa.0312.0.insert.insert.i.le, %.preheader1180 ], [ %.sroa.090.sroa.0.0.insert.insert138.i, %bb.ko ] ; 3 uses
  %.sroa.0162.sroa.14.0.i.ph = phi i32 [ %.18.i.ph, %.preheader1180 ], [ %.sroa.051.sroa.8.0.i, %bb.ko ]
  %.sroa.0162.sroa.0.0.in.i.ph = phi i64 [ %.sroa.0312.0.insert.insert.i.le, %.preheader1180 ], [ %.sroa.051.sroa.0.0.i, %bb.ko ]
  %.1339.i.ph = phi ptr [ %.0338.i.ph1566, %.preheader1180 ], [ %.3341.i, %bb.ko ] ; 3 uses
  %.1337.i.ph = phi ptr [ %.0336.i.ph1567, %.preheader1180 ], [ %.7.i, %bb.ko ]
  %.0335.i.ph = phi ptr [ %.08541340, %.preheader1180 ], [ %.7.i, %bb.ko ] ; 2 uses
  %i.ben = ashr i64 %.sroa.0232.0.i.ph, 32
  br label %bb.cd

bb.kp:                                            ; preds = %bb.jz
  %i.beo = icmp ult ptr %.5.i, %i.bhf
  br i1 %i.beo, label %bb.kq, label %bb.kt

bb.kq:                                            ; preds = %bb.kp
  %i.bep = ptrtoint ptr %.5.i to i64              ; 2 uses
  %i.beq = sub i64 %i.bep, %i.bhb                 ; 3 uses
  %i.ber = icmp slt i64 %i.beq, 18
  br i1 %i.ber, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.bes = getelementptr inbounds i8, ptr %i.ahv, i64 -4
  %i.bet = icmp ugt ptr %i.bhd, %i.bes
  %i.beu = trunc i64 %i.beq to i32
  %i.bev = add i32 %.sroa.090.sroa.12.3.i, -4
  %i.bew = add i32 %i.bev, %i.beu
  %.sroa.0162.sroa.14.5.i = select i1 %i.bet, i32 %i.bew, i32 %spec.store.select.i ; 2 uses
  %.neg362.i = sub i64 %i.bhb, %i.bep
  %.neg363.i = trunc i64 %.neg362.i to i32
  %i.bex = add i32 %.sroa.0162.sroa.14.5.i, %.neg363.i
  %i.bey = tail call i32 @llvm.smax.i32(i32 %i.bex, i32 0) ; 2 uses
  %.sroa.090.sroa.12.6.i = sub nsw i32 %.sroa.090.sroa.12.3.i, %i.bey
  %.8.i.idx = zext nneg i32 %i.bey to i64
  %.8.i = getelementptr inbounds nuw i8, ptr %.5.i, i64 %.8.i.idx
  br label %bb.kt

bb.ks:                                            ; preds = %bb.kq
  %i.bez = trunc i64 %i.beq to i32
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr, %bb.kp
  %.sroa.0162.sroa.14.6.i = phi i32 [ %.sroa.0162.sroa.14.5.i, %bb.kr ], [ %i.bez, %bb.ks ], [ %.sroa.0162.sroa.14.2.i.ph, %bb.kp ] ; 3 uses
  %.sroa.090.sroa.12.7.i = phi i32 [ %.sroa.090.sroa.12.6.i, %bb.kr ], [ %.sroa.090.sroa.12.3.i, %bb.ks ], [ %.sroa.090.sroa.12.3.i, %bb.kp ]
  %.9.i = phi ptr [ %.8.i, %bb.kr ], [ %.5.i, %bb.ks ], [ %.5.i, %bb.kp ]
  %i.bfa = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.bfb = ptrtoint ptr %.4848.ph to i64          ; 3 uses
  %i.bfc = sub i64 %i.bhb, %i.bfb                 ; 6 uses
  %i.bfd = udiv i64 %i.bfc, 255
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bfd
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 %i.bfc
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 8
  %i.bfh = icmp ugt ptr %i.bfg, %spec.select.i
  %or.cond.i17 = select i1 %.not.i15, i1 %i.bfh, i1 false
  br i1 %or.cond.i17, label %LZ4HC_encodeSequence.exit, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bfi = icmp ugt i64 %i.bfc, 14
  br i1 %i.bfi, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.bfj = add i64 %i.bfc, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !39
  %i.bfk = icmp ugt i64 %i.bfj, 254
  br i1 %i.bfk, label %.lr.ph1463.preheader, label %._crit_edge1464

.lr.ph1463.preheader:                             ; preds = %bb.kv
  %i.bfl = add i64 %i.bhb, -270
  %i.bfm = sub i64 %i.bfl, %i.bfb                 ; 2 uses
  %i.bfn = udiv i64 %i.bfm, 255                   ; 3 uses
  %i.bfo = add nuw nsw i64 %i.bfn, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bfa, i8 -1, i64 range(i64 0, 72340172838076675) %i.bfo, i1 false), !tbaa !39
  %scevgep = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep1821 = getelementptr i8, ptr %scevgep, i64 %i.bfn
  %.neg2127 = mul i64 %i.bfn, -255
  %i.bfp = add i64 %.neg2127, %i.bfm
  br label %._crit_edge1464

._crit_edge1464:                                  ; preds = %.lr.ph1463.preheader, %bb.kv
  %.16.lcssa = phi ptr [ %i.bfa, %bb.kv ], [ %scevgep1821, %.lr.ph1463.preheader ] ; 2 uses
  %.0.i24.lcssa = phi i64 [ %i.bfj, %bb.kv ], [ %i.bfp, %.lr.ph1463.preheader ]
  %i.bfq = trunc nuw i64 %.0.i24.lcssa to i8
  %i.bfr = getelementptr inbounds nuw i8, ptr %.16.lcssa, i64 1
  store i8 %i.bfq, ptr %.16.lcssa, align 1, !tbaa !39
  br label %bb.kx

bb.kw:                                            ; preds = %bb.ku
  %.tr.i18 = trunc nuw nsw i64 %i.bfc to i8
  %i.bfs = shl nuw i8 %.tr.i18, 4
  store i8 %i.bfs, ptr %.5.ph, align 1, !tbaa !39
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %._crit_edge1464
  %.12 = phi ptr [ %i.bfr, %._crit_edge1464 ], [ %i.bfa, %bb.kw ] ; 3 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %.12, i64 %i.bfc ; 3 uses
  br label %bb.ky

bb.ky:                                            ; preds = %bb.ky, %bb.kx
  %.09.i77 = phi ptr [ %.12, %bb.kx ], [ %i.bfv, %bb.ky ] ; 2 uses
  %.0.i78 = phi ptr [ %.4848.ph, %bb.kx ], [ %i.bfw, %bb.ky ] ; 2 uses
  %i.bfu = load i64, ptr %.0.i78, align 1
  store i64 %i.bfu, ptr %.09.i77, align 1
  %i.bfv = getelementptr inbounds nuw i8, ptr %.09.i77, i64 8 ; 2 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %.0.i78, i64 8
  %i.bfx = icmp ult ptr %i.bfv, %i.bft
  br i1 %i.bfx, label %bb.ky, label %LZ4_wildCopy8.exit79, !llvm.loop !7

LZ4_wildCopy8.exit79:                             ; preds = %bb.ky
  %i.bfy = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.bfy, ptr %i.bft, align 1, !tbaa !38
  %i.bfz = getelementptr i8, ptr %i.bft, i64 2    ; 4 uses
  %i.bga = sext i32 %.sroa.0162.sroa.14.6.i to i64 ; 4 uses
  %i.bgb = add nsw i64 %i.bga, -4                 ; 3 uses
  %i.bgc = udiv i64 %i.bgb, 255
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bgc
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 6
  %i.bgf = icmp ugt ptr %i.bge, %spec.select.i
  %or.cond64.i20 = select i1 %.not.i15, i1 %i.bgf, i1 false
  br i1 %or.cond64.i20, label %LZ4HC_encodeSequence.exit, label %bb.kz

bb.kz:                                            ; preds = %LZ4_wildCopy8.exit79
  %i.bgg = icmp ugt i64 %i.bgb, 14
  br i1 %i.bgg, label %bb.la, label %bb.ld

bb.la:                                            ; preds = %bb.kz
  %i.bgh = load i8, ptr %.5.ph, align 1, !tbaa !39
  %i.bgi = add i8 %i.bgh, 15
  store i8 %i.bgi, ptr %.5.ph, align 1, !tbaa !39
  %i.bgj = add nsw i64 %i.bga, -19                ; 2 uses
  %i.bgk = icmp ugt i64 %i.bgj, 509
  br i1 %i.bgk, label %.lr.ph1470.preheader, label %._crit_edge1471

.lr.ph1470.preheader:                             ; preds = %bb.la
  %i.bgl = add nsw i64 %i.bga, -529               ; 2 uses
  %i.bgm = udiv i64 %i.bgl, 510                   ; 2 uses
  %i.bgn = shl nuw nsw i64 %i.bgm, 1              ; 2 uses
  %i.bgo = add nuw nsw i64 %i.bgn, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bfz, i8 -1, i64 range(i64 0, 72340172838076675) %i.bgo, i1 false), !tbaa !39
  %scevgep1822 = getelementptr i8, ptr %.12, i64 4
  %i.bgp = add i64 %i.bgn, %i.bhb
  %i.bgq = sub i64 %i.bgp, %i.bfb
  %scevgep1823 = getelementptr i8, ptr %scevgep1822, i64 %i.bgq
  %.neg2128 = mul i64 %i.bgm, -510
  %i.bgr = add i64 %.neg2128, %i.bgl
  br label %._crit_edge1471

._crit_edge1471:                                  ; preds = %.lr.ph1470.preheader, %bb.la
  %.14.lcssa = phi ptr [ %i.bfz, %bb.la ], [ %scevgep1823, %.lr.ph1470.preheader ] ; 3 uses
  %.050.i22.lcssa = phi i64 [ %i.bgj, %bb.la ], [ %i.bgr, %.lr.ph1470.preheader ] ; 3 uses
  %i.bgs = icmp samesign ugt i64 %.050.i22.lcssa, 254
  br i1 %i.bgs, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %._crit_edge1471
  %i.bgt = add nsw i64 %.050.i22.lcssa, -255
  %i.bgu = getelementptr inbounds nuw i8, ptr %.14.lcssa, i64 1
  store i8 -1, ptr %.14.lcssa, align 1, !tbaa !39
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %._crit_edge1471
  %.15 = phi ptr [ %i.bgu, %bb.lb ], [ %.14.lcssa, %._crit_edge1471 ] ; 2 uses
  %.1.i23 = phi i64 [ %i.bgt, %bb.lb ], [ %.050.i22.lcssa, %._crit_edge1471 ]
  %i.bgv = trunc nuw i64 %.1.i23 to i8
  %i.bgw = getelementptr inbounds nuw i8, ptr %.15, i64 1
  store i8 %i.bgv, ptr %.15, align 1, !tbaa !39
  br label %bb.le

bb.ld:                                            ; preds = %bb.kz
  %i.bgx = trunc nuw nsw i64 %i.bgb to i8
  %i.bgy = load i8, ptr %.5.ph, align 1, !tbaa !39
  %i.bgz = add i8 %i.bgy, %i.bgx
  store i8 %i.bgz, ptr %.5.ph, align 1, !tbaa !39
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %.13 = phi ptr [ %i.bgw, %bb.lc ], [ %i.bfz, %bb.ld ]
  %i.bha = getelementptr inbounds i8, ptr %.4858.ph, i64 %i.bga
  %.sroa.090.sroa.0.0.extract.trunc131.i = trunc nuw i64 %.sroa.051.sroa.0.0.i to i32
  br label %.outer

.outer:                                           ; preds = %.preheader1179, %bb.le
  %.4858.ph = phi ptr [ %.3857, %.preheader1179 ], [ %.9.i, %bb.le ] ; 11 uses
  %.4848.ph = phi ptr [ %.1845.ph, %.preheader1179 ], [ %i.bha, %bb.le ] ; 12 uses
  %.5.ph = phi ptr [ %.1.ph, %.preheader1179 ], [ %.13, %bb.le ] ; 30 uses
  %.sroa.0162.sroa.14.2.i.ph = phi i32 [ %.sroa.0162.sroa.14.1.i.le, %.preheader1179 ], [ %.sroa.090.sroa.12.7.i, %bb.le ] ; 6 uses
  %.sroa.0162.sroa.0.2.i.ph = phi i32 [ %.sroa.0162.sroa.0.1.i.le, %.preheader1179 ], [ %.sroa.090.sroa.0.1.i, %bb.le ] ; 9 uses
  %.sroa.090.sroa.12.1.i.ph = phi i32 [ %.sroa.090.sroa.12.0.i, %.preheader1179 ], [ %.sroa.051.sroa.8.0.i, %bb.le ]
  %.sroa.090.sroa.0.1.i.ph = phi i32 [ %.sroa.090.sroa.0.0.i, %.preheader1179 ], [ %.sroa.090.sroa.0.0.extract.trunc131.i, %bb.le ]
  %.2340.i.ph = phi ptr [ %.1339.i.ph, %.preheader1179 ], [ %.3341.i, %bb.le ]
  %.3.i.ph = phi ptr [ %.2.i, %.preheader1179 ], [ %.3341.i, %bb.le ]
  %i.bhb = ptrtoint ptr %.4858.ph to i64          ; 15 uses
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %.sroa.0162.sroa.14.2.i.ph, i32 18) ; 3 uses
  %i.bhc = sext i32 %spec.store.select.i to i64
  %i.bhd = getelementptr inbounds i8, ptr %.4858.ph, i64 %i.bhc ; 2 uses
  %i.bhe = sext i32 %.sroa.0162.sroa.14.2.i.ph to i64 ; 4 uses
  %i.bhf = getelementptr inbounds i8, ptr %.4858.ph, i64 %i.bhe ; 7 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 3
  br label %bb.fv

.loopexit:                                        ; preds = %.outer1185.backedge, %LZ4HC_InsertAndGetWiderMatch.exit.thread, %LZ4HC_encodeSequence.exit55, %bb.e
  %.3847 = phi ptr [ %1, %bb.e ], [ %i.bln, %LZ4HC_encodeSequence.exit55 ], [ %.0844.ph1564, %LZ4HC_InsertAndGetWiderMatch.exit.thread ], [ %.0854.ph.be, %.outer1185.backedge ] ; 3 uses
  %.2 = phi ptr [ %2, %bb.e ], [ %.34, %LZ4HC_encodeSequence.exit55 ], [ %.0.ph1565, %LZ4HC_InsertAndGetWiderMatch.exit.thread ], [ %.0.ph.be, %.outer1185.backedge ] ; 3 uses
  %i.bhh = ptrtoint ptr %i.v to i64
  %i.bhi = ptrtoint ptr %.3847 to i64
  %i.bhj = sub i64 %i.bhh, %i.bhi                 ; 3 uses
  %i.bhk = add i64 %i.bhj, 240
  %i.bhl = udiv i64 %i.bhk, 255
  %spec.select375.i.idx = select i1 %i.g, i64 5, i64 0
  %spec.select375.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %spec.select375.i.idx ; 2 uses
  %.not371.i = icmp ne i32 %6, 0
  %i.bhm = getelementptr i8, ptr %.2, i64 %i.bhl
  %i.bhn = getelementptr i8, ptr %i.bhm, i64 1
  %i.bho = getelementptr i8, ptr %i.bhn, i64 %i.bhj
  %i.bhp = icmp ugt ptr %i.bho, %spec.select375.i
  %or.cond = select i1 %.not371.i, i1 %i.bhp, i1 false
  br i1 %or.cond, label %bb.lf, label %bb.lg

.thread1118:                                      ; preds = %bb.lj, %bb.lk
  %i.bhq = ptrtoint ptr %i.v to i64
  %i.bhr = sub i64 %i.bhq, %i.bjc                 ; 3 uses
  %i.bhs = add i64 %i.bhr, 240
  %i.bht = udiv i64 %i.bhs, 255
  %i.bhu = getelementptr i8, ptr %.0332.i, i64 %i.bht
  %i.bhv = getelementptr i8, ptr %i.bhu, i64 1
  %i.bhw = getelementptr i8, ptr %i.bhv, i64 %i.bhr
  %i.bhx = icmp ugt ptr %i.bhw, %i.z
  br i1 %i.bhx, label %.thread1125, label %bb.lg

bb.lf:                                            ; preds = %.loopexit
  %i.bhy = icmp eq i32 %6, 1
  br i1 %i.bhy, label %LZ4HC_compress_hashChain.exit.thread, label %.thread1125

.thread1125:                                      ; preds = %.thread1118, %bb.lf
  %spec.select375.i111711221131 = phi ptr [ %spec.select375.i, %bb.lf ], [ %i.z, %.thread1118 ]
  %.2111511231130 = phi ptr [ %.2, %bb.lf ], [ %.0332.i, %.thread1118 ] ; 2 uses
  %.3847111311241129 = phi ptr [ %.3847, %bb.lf ], [ %.2846, %.thread1118 ]
  %i.bhz = ptrtoint ptr %spec.select375.i111711221131 to i64
  %i.bia = ptrtoint ptr %.2111511231130 to i64
  %i.bib = xor i64 %i.bia, -1
  %i.bic = add i64 %i.bib, %i.bhz                 ; 2 uses
  %i.bid = add i64 %i.bic, 241
  %i.bie = lshr i64 %i.bid, 8
  %i.bif = sub i64 %i.bic, %i.bie
  br label %bb.lg

bb.lg:                                            ; preds = %.thread1118, %.thread1125, %.loopexit
  %.21116 = phi ptr [ %.2111511231130, %.thread1125 ], [ %.0332.i, %.thread1118 ], [ %.2, %.loopexit ] ; 6 uses
  %.38471114 = phi ptr [ %.3847111311241129, %.thread1125 ], [ %.2846, %.thread1118 ], [ %.3847, %.loopexit ] ; 2 uses
  %.0329.i = phi i64 [ %i.bif, %.thread1125 ], [ %i.bhr, %.thread1118 ], [ %i.bhj, %.loopexit ] ; 7 uses
  %i.big = getelementptr inbounds nuw i8, ptr %.38471114, i64 %.0329.i
  %i.bih = icmp ugt i64 %.0329.i, 14
  %.41584 = getelementptr i8, ptr %.21116, i64 1  ; 3 uses
  br i1 %i.bih, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.bii = add i64 %.0329.i, -15                  ; 2 uses
  store i8 -16, ptr %.21116, align 1, !tbaa !39
  %i.bij = icmp ugt i64 %i.bii, 254
  br i1 %i.bij, label %.lr.ph1588.preheader, label %._crit_edge1589

.lr.ph1588.preheader:                             ; preds = %bb.lh
  %i.bik = add i64 %.0329.i, -270                 ; 2 uses
  %i.bil = udiv i64 %i.bik, 255                   ; 3 uses
  %i.bim = add nuw nsw i64 %i.bil, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.41584, i8 -1, i64 range(i64 0, 72340172838076673) %i.bim, i1 false), !tbaa !39
  %scevgep1900 = getelementptr i8, ptr %.21116, i64 %i.bim
  %.neg2134 = mul i64 %i.bil, -255
  %i.bin = add i64 %.neg2134, %i.bik
  %i.bio = getelementptr i8, ptr %.21116, i64 %i.bil
  %scevgep1901 = getelementptr i8, ptr %i.bio, i64 2
  br label %._crit_edge1589

._crit_edge1589:                                  ; preds = %.lr.ph1588.preheader, %bb.lh
  %.21116.pn.lcssa = phi ptr [ %.21116, %bb.lh ], [ %scevgep1900, %.lr.ph1588.preheader ]
  %.0.i7.lcssa = phi i64 [ %i.bii, %bb.lh ], [ %i.bin, %.lr.ph1588.preheader ]
  %.4.lcssa = phi ptr [ %.41584, %bb.lh ], [ %scevgep1901, %.lr.ph1588.preheader ]
  %i.bip = trunc nuw i64 %.0.i7.lcssa to i8
  %i.biq = getelementptr inbounds nuw i8, ptr %.21116.pn.lcssa, i64 2
  store i8 %i.bip, ptr %.4.lcssa, align 1, !tbaa !39
  br label %.critedge.i

bb.li:                                            ; preds = %bb.lg
  %.0329.tr.i = trunc nuw nsw i64 %.0329.i to i8
  %i.bir = shl nuw i8 %.0329.tr.i, 4
  store i8 %i.bir, ptr %.21116, align 1, !tbaa !39
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.li, %._crit_edge1589
  %.3 = phi ptr [ %i.biq, %._crit_edge1589 ], [ %.41584, %bb.li ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.3, ptr align 1 %.38471114, i64 %.0329.i, i1 false)
  %i.bis = getelementptr inbounds nuw i8, ptr %.3, i64 %.0329.i
  %i.bit = ptrtoint ptr %i.big to i64
  %i.biu = ptrtoint ptr %1 to i64
  %i.biv = sub i64 %i.bit, %i.biu
  %i.biw = trunc i64 %i.biv to i32
  store i32 %i.biw, ptr %3, align 4, !tbaa !29
  %i.bix = ptrtoint ptr %i.bis to i64
  %i.biy = ptrtoint ptr %2 to i64
  %i.biz = sub i64 %i.bix, %i.biy
  %i.bja = trunc i64 %i.biz to i32
  br label %LZ4HC_compress_hashChain.exit

LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit: ; preds = %LZ4_wildCopy8.exit
  %.sroa.0162.sroa.0.0.i.le1404.le1560 = trunc i64 %.sroa.0162.sroa.0.0.in.i to i32
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530: ; preds = %bb.fj
  %.sroa.0162.sroa.0.0.i.le1404.le = trunc i64 %.sroa.0162.sroa.0.0.in.i to i32
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.jd, %LZ4_wildCopy8.exit73, %LZ4_wildCopy8.exit76, %bb.jo, %LZ4_wildCopy8.exit82, %bb.kd, %LZ4_wildCopy8.exit79, %bb.kt, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530
  %.2856 = phi ptr [ %.1855, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.4858.ph, %LZ4_wildCopy8.exit79 ], [ %.1855, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.4858.ph, %LZ4_wildCopy8.exit82 ], [ %.4858.ph, %bb.kt ], [ %.4858.ph, %bb.kd ], [ %.4858.ph, %bb.jd ], [ %.5.i, %bb.jo ], [ %.4858.ph, %LZ4_wildCopy8.exit73 ], [ %.5.i, %LZ4_wildCopy8.exit76 ] ; 2 uses
  %.2846 = phi ptr [ %.1845.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.4848.ph, %LZ4_wildCopy8.exit79 ], [ %.1845.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.4848.ph, %LZ4_wildCopy8.exit82 ], [ %.4848.ph, %bb.kt ], [ %.4848.ph, %bb.kd ], [ %.4848.ph, %bb.jd ], [ %i.bae, %bb.jo ], [ %.4848.ph, %LZ4_wildCopy8.exit73 ], [ %i.bae, %LZ4_wildCopy8.exit76 ] ; 4 uses
  %.sroa.0162.sroa.14.7.i = phi i32 [ %.sroa.0162.sroa.14.0.i, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.sroa.0162.sroa.14.6.i, %LZ4_wildCopy8.exit79 ], [ %.sroa.0162.sroa.14.0.i, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.sroa.0162.sroa.14.2.i.ph, %LZ4_wildCopy8.exit82 ], [ %.sroa.0162.sroa.14.6.i, %bb.kt ], [ %.sroa.0162.sroa.14.2.i.ph, %bb.kd ], [ %.sroa.0162.sroa.14.3.i, %bb.jd ], [ %.sroa.090.sroa.12.3.i, %bb.jo ], [ %.sroa.0162.sroa.14.3.i, %LZ4_wildCopy8.exit73 ], [ %.sroa.090.sroa.12.3.i, %LZ4_wildCopy8.exit76 ]
  %.sroa.0162.sroa.0.3.i = phi i32 [ %.sroa.0162.sroa.0.0.i.le1404.le, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit79 ], [ %.sroa.0162.sroa.0.0.i.le1404.le1560, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit82 ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.kt ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.kd ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.jd ], [ %.sroa.090.sroa.0.1.i, %bb.jo ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit73 ], [ %.sroa.090.sroa.0.1.i, %LZ4_wildCopy8.exit76 ]
  %.0332.i = phi ptr [ %.1.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.5.ph, %LZ4_wildCopy8.exit79 ], [ %.1.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.5.ph, %LZ4_wildCopy8.exit82 ], [ %.5.ph, %bb.kt ], [ %.5.ph, %bb.kd ], [ %.5.ph, %bb.jd ], [ %.25, %bb.jo ], [ %.5.ph, %LZ4_wildCopy8.exit73 ], [ %.25, %LZ4_wildCopy8.exit76 ] ; 12 uses
  br i1 %i.g, label %bb.lj, label %LZ4HC_compress_hashChain.exit.thread

bb.lj:                                            ; preds = %LZ4HC_encodeSequence.exit
  %i.bjb = ptrtoint ptr %.2856 to i64             ; 3 uses
  %i.bjc = ptrtoint ptr %.2846 to i64             ; 4 uses
  %i.bjd = sub i64 %i.bjb, %i.bjc                 ; 6 uses
  %i.bje = add i64 %i.bjd, 240
  %i.bjf = udiv i64 %i.bje, 255
  %i.bjg = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  %i.bjh = getelementptr i8, ptr %.0332.i, i64 %i.bjf
  %i.bji = getelementptr i8, ptr %i.bjh, i64 1
  %i.bjj = getelementptr i8, ptr %i.bji, i64 %i.bjd ; 3 uses
  %.not370.i = icmp ugt ptr %i.bjj, %i.bjg
  br i1 %.not370.i, label %.thread1118, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bjk = ptrtoint ptr %i.bjg to i64
  %i.bjl = ptrtoint ptr %i.bjj to i64
  %i.bjm = sub i64 %i.bjk, %i.bjl
  %i.bjn = mul i64 %i.bjm, 255
  %i.bjo = add i64 %i.bjn, 18
  %i.bjp = sext i32 %.sroa.0162.sroa.14.7.i to i64
  %spec.select376.i1164 = tail call i64 @llvm.umin.i64(i64 %i.bjo, i64 %i.bjp)
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjj, i64 2
  %i.bjr = ptrtoint ptr %i.z to i64
  %i.bjs = ptrtoint ptr %i.bjq to i64
  %sext = shl i64 %spec.select376.i1164, 32
  %i.bjt = ashr exact i64 %sext, 32               ; 5 uses
  %i.bju = add i64 %i.bjt, %i.bjr
  %i.bjv = sub i64 %i.bjs, %i.bju
  %i.bjw = icmp slt i64 %i.bjv, -12
  br i1 %i.bjw, label %bb.ll, label %.thread1118

bb.ll:                                            ; preds = %bb.lk
  %i.bjx = getelementptr i8, ptr %.0332.i, i64 1  ; 3 uses
  %i.bjy = icmp ugt i64 %i.bjd, 14
  br i1 %i.bjy, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.bjz = add i64 %i.bjd, -15                    ; 2 uses
  store i8 -16, ptr %.0332.i, align 1, !tbaa !39
  %i.bka = icmp ugt i64 %i.bjz, 254
  br i1 %i.bka, label %.lr.ph1573.preheader, label %._crit_edge1574

.lr.ph1573.preheader:                             ; preds = %bb.lm
  %i.bkb = add i64 %i.bjb, -270
  %i.bkc = sub i64 %i.bkb, %i.bjc                 ; 2 uses
  %i.bkd = udiv i64 %i.bkc, 255                   ; 3 uses
  %i.bke = add nuw nsw i64 %i.bkd, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bjx, i8 -1, i64 range(i64 0, 72340172838076675) %i.bke, i1 false), !tbaa !39
  %i.bkf = getelementptr i8, ptr %.0332.i, i64 %i.bkd
  %scevgep1898 = getelementptr i8, ptr %i.bkf, i64 2
  %.neg2132 = mul i64 %i.bkd, -255
  %i.bkg = add i64 %.neg2132, %i.bkc
  br label %._crit_edge1574

._crit_edge1574:                                  ; preds = %.lr.ph1573.preheader, %bb.lm
  %.33.lcssa = phi ptr [ %i.bjx, %bb.lm ], [ %scevgep1898, %.lr.ph1573.preheader ] ; 2 uses
  %.0.i54.lcssa = phi i64 [ %i.bjz, %bb.lm ], [ %i.bkg, %.lr.ph1573.preheader ]
  %i.bkh = trunc nuw i64 %.0.i54.lcssa to i8
  %i.bki = getelementptr inbounds nuw i8, ptr %.33.lcssa, i64 1
  store i8 %i.bkh, ptr %.33.lcssa, align 1, !tbaa !39
  br label %bb.lo

bb.ln:                                            ; preds = %bb.ll
  %.tr.i49 = trunc nuw nsw i64 %i.bjd to i8
  %i.bkj = shl nuw i8 %.tr.i49, 4
  store i8 %i.bkj, ptr %.0332.i, align 1, !tbaa !39
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %._crit_edge1574
  %.30 = phi ptr [ %i.bki, %._crit_edge1574 ], [ %i.bjx, %bb.ln ] ; 3 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %.30, i64 %i.bjd ; 3 uses
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lp, %bb.lo
  %.09.i68 = phi ptr [ %.30, %bb.lo ], [ %i.bkm, %bb.lp ] ; 2 uses
  %.0.i69 = phi ptr [ %.2846, %bb.lo ], [ %i.bkn, %bb.lp ] ; 2 uses
  %i.bkl = load i64, ptr %.0.i69, align 1
  store i64 %i.bkl, ptr %.09.i68, align 1
  %i.bkm = getelementptr inbounds nuw i8, ptr %.09.i68, i64 8 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %.0.i69, i64 8
  %i.bko = icmp ult ptr %i.bkm, %i.bkk
  br i1 %i.bko, label %bb.lp, label %LZ4_wildCopy8.exit70, !llvm.loop !7

LZ4_wildCopy8.exit70:                             ; preds = %bb.lp
  %i.bkp = trunc i32 %.sroa.0162.sroa.0.3.i to i16
  store i16 %i.bkp, ptr %i.bkk, align 1, !tbaa !38
  %i.bkq = getelementptr i8, ptr %i.bkk, i64 2    ; 3 uses
  %i.bkr = add nsw i64 %i.bjt, -4                 ; 2 uses
  %i.bks = icmp ugt i64 %i.bkr, 14
  br i1 %i.bks, label %bb.lq, label %bb.lt

bb.lq:                                            ; preds = %LZ4_wildCopy8.exit70
  %i.bkt = load i8, ptr %.0332.i, align 1, !tbaa !39
  %i.bku = add i8 %i.bkt, 15
  store i8 %i.bku, ptr %.0332.i, align 1, !tbaa !39
  %i.bkv = add nsw i64 %i.bjt, -19                ; 2 uses
  %i.bkw = icmp ugt i64 %i.bkv, 509
  br i1 %i.bkw, label %.lr.ph1580.preheader, label %._crit_edge1581

.lr.ph1580.preheader:                             ; preds = %bb.lq
  %i.bkx = add nsw i64 %i.bjt, -529               ; 2 uses
  %i.bky = udiv i64 %i.bkx, 510                   ; 2 uses
  %i.bkz = shl nuw nsw i64 %i.bky, 1              ; 2 uses
  %i.bla = add nuw nsw i64 %i.bkz, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bkq, i8 -1, i64 range(i64 0, 72340172838076675) %i.bla, i1 false), !tbaa !39
  %i.blb = add i64 %i.bkz, %i.bjb
  %i.blc = add i64 %i.blb, 4
  %i.bld = sub i64 %i.blc, %i.bjc
  %scevgep1899 = getelementptr i8, ptr %.30, i64 %i.bld
  %.neg2133 = mul i64 %i.bky, -510
  %i.ble = add i64 %.neg2133, %i.bkx
  br label %._crit_edge1581

._crit_edge1581:                                  ; preds = %.lr.ph1580.preheader, %bb.lq
  %.31.lcssa = phi ptr [ %i.bkq, %bb.lq ], [ %scevgep1899, %.lr.ph1580.preheader ] ; 3 uses
  %.050.i52.lcssa = phi i64 [ %i.bkv, %bb.lq ], [ %i.ble, %.lr.ph1580.preheader ] ; 3 uses
  %i.blf = icmp samesign ugt i64 %.050.i52.lcssa, 254
  br i1 %i.blf, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %._crit_edge1581
  %i.blg = add nsw i64 %.050.i52.lcssa, -255
  %i.blh = getelementptr inbounds nuw i8, ptr %.31.lcssa, i64 1
  store i8 -1, ptr %.31.lcssa, align 1, !tbaa !39
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %._crit_edge1581
  %.32 = phi ptr [ %i.blh, %bb.lr ], [ %.31.lcssa, %._crit_edge1581 ] ; 2 uses
  %.1.i53 = phi i64 [ %i.blg, %bb.lr ], [ %.050.i52.lcssa, %._crit_edge1581 ]
  %i.bli = trunc nuw i64 %.1.i53 to i8
  %i.blj = getelementptr inbounds nuw i8, ptr %.32, i64 1
  store i8 %i.bli, ptr %.32, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit55

bb.lt:                                            ; preds = %LZ4_wildCopy8.exit70
  %i.blk = trunc nuw nsw i64 %i.bkr to i8
  %i.bll = load i8, ptr %.0332.i, align 1, !tbaa !39
  %i.blm = add i8 %i.bll, %i.blk
  store i8 %i.blm, ptr %.0332.i, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit55

LZ4HC_encodeSequence.exit55:                      ; preds = %bb.ls, %bb.lt
  %.34 = phi ptr [ %i.blj, %bb.ls ], [ %i.bkq, %bb.lt ]
  %i.bln = getelementptr inbounds i8, ptr %.2856, i64 %i.bjt
  br label %.loopexit

bb.lu:                                            ; preds = %bb.c
  %i.blo = getelementptr inbounds nuw i8, ptr %0, i64 262182
  %i.blp = load i8, ptr %i.blo, align 2, !tbaa !51
  %.not.i = icmp ne i8 %i.blp, 0
  %i.blq = zext i1 %.not.i to i32
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.25.0.copyload.i = load i32, ptr %.sroa.25.0..sroa_idx.i, align 4, !tbaa !29
  %.sroa.04.4.extract.shift8.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.04.4.extract.trunc9.i = trunc nuw i64 %.sroa.04.4.extract.shift8.i to i32
  %i.blr = zext i32 %.sroa.25.0.copyload.i to i64
  %i.bls = icmp sgt i32 %5, 11
  %i.blt = zext i1 %i.bls to i32
  %i.blu = tail call fastcc i32 @LZ4HC_compress_optimal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %.sroa.04.4.extract.trunc9.i, i64 noundef %i.blr, i32 noundef range(i32 0, 3) %6, i32 noundef %i.blt, i32 noundef 0, i32 noundef %i.blq)
  br label %LZ4HC_compress_hashChain.exit

LZ4HC_compress_hashChain.exit:                    ; preds = %.critedge.i, %bb.lu, %bb.d
  %.0.i = phi i32 [ %i.t, %bb.d ], [ %i.blu, %bb.lu ], [ %i.bja, %.critedge.i ] ; 3 uses
  %i.blv = icmp slt i32 %.0.i, 1
  br i1 %i.blv, label %LZ4HC_compress_hashChain.exit.thread, label %LZ4HC_compress_generic_internal.exit

LZ4HC_compress_hashChain.exit.thread:             ; preds = %LZ4HC_encodeSequence.exit, %bb.lf, %LZ4HC_compress_hashChain.exit
  %.0.i1133 = phi i32 [ %.0.i, %LZ4HC_compress_hashChain.exit ], [ 0, %bb.lf ], [ 0, %LZ4HC_encodeSequence.exit ]
  %i.blw = getelementptr inbounds nuw i8, ptr %0, i64 262183
  store i8 1, ptr %i.blw, align 1, !tbaa !41
  br label %LZ4HC_compress_generic_internal.exit

LZ4HC_compress_generic_internal.exit:             ; preds = %bb.a, %bb.b, %LZ4HC_compress_hashChain.exit, %LZ4HC_compress_hashChain.exit.thread
  %.040.i = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.0.i1133, %LZ4HC_compress_hashChain.exit.thread ], [ %.0.i, %LZ4HC_compress_hashChain.exit ]
  ret i32 %.040.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LZ4MID_compress(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef range(i32 0, 3) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 7 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !29     ; 4 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -12 ; 10 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -5 ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 4 uses
  %i.h = sext i32 %4 to i64
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 11 uses
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = ptrtoint ptr %i.k to i64                 ; 5 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 262160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 6 uses
  %.not = icmp ne i32 %6, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %select_searchDict_function.exit

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %select_searchDict_function.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 262180
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !46
  %i.ab = add i16 %i.aa, -1
  %i.ac = icmp ult i16 %i.ab, 2
  %LZ4MID_searchExtDict.LZ4MID_searchHCDict.i = select i1 %i.ac, ptr @LZ4MID_searchExtDict, ptr @LZ4MID_searchHCDict
  br label %select_searchDict_function.exit

select_searchDict_function.exit:                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ad = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %LZ4MID_searchExtDict.LZ4MID_searchHCDict.i, %bb.c ]
  %i.ae = or i32 %i.b, %4
  %or.cond298 = icmp slt i32 %i.ae, 0
  %i.af = icmp sgt i32 %i.b, 2113929216
  %or.cond299 = or i1 %i.af, %or.cond298
  br i1 %or.cond299, label %bb.dg, label %bb.d

bb.d:                                             ; preds = %select_searchDict_function.exit
  %i.ag = icmp eq i32 %5, 2                       ; 3 uses
  %spec.select.idx = select i1 %i.ag, i64 -5, i64 0
  %spec.select = getelementptr inbounds i8, ptr %i.i, i64 %spec.select.idx ; 3 uses
  %i.ah = icmp samesign ult i32 %i.b, 13
  br i1 %i.ah, label %.loopexit, label %.lr.ph726

.lr.ph726:                                        ; preds = %bb.d
  %i.ai = zext i32 %i.m to i64
  %i.aj = sub nsw i64 0, %i.ai
  %invariant.gep = getelementptr i8, ptr %i.k, i64 %i.aj
  %i.ak = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %i.al = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %.not.i388 = icmp ne i32 %5, 0                  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph726, %bb.cp
  %.0497725 = phi ptr [ %2, %.lr.ph726 ], [ %.2499, %bb.cp ] ; 20 uses
  %.0510724 = phi ptr [ %1, %.lr.ph726 ], [ %.1511, %bb.cp ] ; 9 uses
  %.0514723 = phi ptr [ %1, %.lr.ph726 ], [ %.6520, %bb.cp ] ; 27 uses
  %i.an = ptrtoint ptr %.0514723 to i64           ; 18 uses
  %i.ao = sub i64 %i.an, %i.o
  %i.ap = trunc i64 %i.ao to i32                  ; 7 uses
  %i.aq = add i32 %i.m, %i.ap                     ; 9 uses
  %.val423 = load i64, ptr %.0514723, align 1, !tbaa !34 ; 5 uses
  %i.ar = mul i64 %.val423, -3523014627193167104
  %i.as = lshr i64 %i.ar, 50
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29 ; 6 uses
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !29
  %i.av = sub i32 %i.aq, %i.au                    ; 3 uses
  %i.aw = icmp ult i32 %i.av, 65536
  br i1 %i.aw, label %bb.f, label %.thread537

bb.f:                                             ; preds = %bb.e
  %.not281 = icmp ult i32 %i.au, %i.m
  br i1 %.not281, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = zext i32 %i.au to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ax ; 3 uses
  %i.ay = icmp ult ptr %.0514723, %i.e
  br i1 %i.ay, label %bb.h, label %bb.j, !prof !31

bb.h:                                             ; preds = %bb.g
  %.val398 = load i64, ptr %gep, align 1, !tbaa !34 ; 2 uses
  %.not.i383 = icmp eq i64 %.val398, %.val423
  br i1 %.not.i383, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.0514723, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = xor i64 %.val398, %.val423
  %i.bc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bb, i1 true)
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = lshr i32 %i.bd, 3
  br label %LZ4_count.exit387

bb.j:                                             ; preds = %.thread, %bb.g
  %.150.i366 = phi ptr [ %i.az, %.thread ], [ %.0514723, %bb.g ] ; 3 uses
  %.145.i367 = phi ptr [ %i.ba, %.thread ], [ %gep, %bb.g ] ; 2 uses
  %i.bf = icmp ult ptr %.150.i366, %i.e
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !prof !35

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.246.i370668 = phi ptr [ %i.bo, %bb.k ], [ %.145.i367, %bb.j ] ; 2 uses
  %.251.i369667 = phi ptr [ %i.bn, %bb.k ], [ %.150.i366, %bb.j ] ; 3 uses
  %.246.i370.val400 = load i64, ptr %.246.i370668, align 1, !tbaa !34 ; 2 uses
  %.251.i369.val399 = load i64, ptr %.251.i369667, align 1, !tbaa !34 ; 2 uses
  %.not59.i379 = icmp eq i64 %.246.i370.val400, %.251.i369.val399
  br i1 %.not59.i379, label %bb.k, label %.thread525

.thread525:                                       ; preds = %.lr.ph
  %i.bg = xor i64 %.251.i369.val399, %.246.i370.val400
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bg, i1 true)
end_hunk_3
begin_hunk_4_@LZ4MID_compress:bb.a
  %.251.i.val415 = load i64, ptr %.251.i691, align 1, !tbaa !34 ; 2 uses
  %.not59.i = icmp eq i64 %.246.i.val416, %.251.i.val415
  br i1 %.not59.i, label %bb.bp, label %.thread573

.thread573:                                       ; preds = %.lr.ph694
  %i.ib = xor i64 %.251.i.val415, %.246.i.val416
  %i.ic = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ib, i1 true)
  %i.id = lshr i64 %i.ic, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %.251.i691, i64 %i.id
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = sub i64 %i.if, %i.an
  %i.ih = trunc i64 %i.ig to i32
  br label %LZ4_count.exit

bb.bp:                                            ; preds = %.lr.ph694
  %i.ii = getelementptr inbounds nuw i8, ptr %.251.i691, i64 8 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.246.i692, i64 8 ; 2 uses
  %i.ik = icmp ult ptr %i.ii, %i.hs
  br i1 %i.ik, label %.lr.ph694, label %._crit_edge695, !prof !36

._crit_edge695:                                   ; preds = %bb.bp, %bb.bo
  %.251.i.lcssa = phi ptr [ %.150.i, %bb.bo ], [ %i.ii, %bb.bp ] ; 5 uses
  %.246.i.lcssa = phi ptr [ %.145.i, %bb.bo ], [ %i.ij, %bb.bp ] ; 4 uses
  %i.il = getelementptr inbounds i8, ptr %i.hr, i64 -3
  %i.im = icmp ult ptr %.251.i.lcssa, %i.il
  br i1 %i.im, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %._crit_edge695
  %.246.i.val = load i32, ptr %.246.i.lcssa, align 1, !tbaa !28
  %.251.i.val = load i32, ptr %.251.i.lcssa, align 1, !tbaa !28
  %i.in = icmp eq i32 %.246.i.val, %.251.i.val
  br i1 %i.in, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.io = getelementptr inbounds nuw i8, ptr %.251.i.lcssa, i64 4
  %i.ip = getelementptr inbounds nuw i8, ptr %.246.i.lcssa, i64 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %._crit_edge695
  %.453.i = phi ptr [ %i.io, %bb.br ], [ %.251.i.lcssa, %bb.bq ], [ %.251.i.lcssa, %._crit_edge695 ] ; 5 uses
  %.448.i = phi ptr [ %i.ip, %bb.br ], [ %.246.i.lcssa, %bb.bq ], [ %.246.i.lcssa, %._crit_edge695 ] ; 4 uses
  %i.iq = getelementptr inbounds i8, ptr %i.hr, i64 -1
  %i.ir = icmp ult ptr %.453.i, %i.iq
  br i1 %i.ir, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.448.i.val = load i16, ptr %.448.i, align 1, !tbaa !38
  %.453.i.val = load i16, ptr %.453.i, align 1, !tbaa !38
  %i.is = icmp eq i16 %.448.i.val, %.453.i.val
  br i1 %i.is, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.it = getelementptr inbounds nuw i8, ptr %.453.i, i64 2
  %i.iu = getelementptr inbounds nuw i8, ptr %.448.i, i64 2
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %.554.i = phi ptr [ %i.it, %bb.bu ], [ %.453.i, %bb.bt ], [ %.453.i, %bb.bs ] ; 4 uses
  %.5.i = phi ptr [ %i.iu, %bb.bu ], [ %.448.i, %bb.bt ], [ %.448.i, %bb.bs ]
  %i.iv = icmp ult ptr %.554.i, %i.hr
  br i1 %i.iv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.iw = load i8, ptr %.5.i, align 1, !tbaa !39
  %i.ix = load i8, ptr %.554.i, align 1, !tbaa !39
  %i.iy = icmp eq i8 %i.iw, %i.ix
  %spec.select.i.idx = zext i1 %i.iy to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.554.i, i64 %spec.select.i.idx
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.6.i = phi ptr [ %.554.i, %bb.bv ], [ %spec.select.i, %bb.bw ]
  %i.iz = ptrtoint ptr %.6.i to i64
  %i.ja = sub i64 %i.iz, %i.an
  %i.jb = trunc i64 %i.ja to i32
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %.thread573, %bb.bn, %bb.bx
  %.4.i = phi i32 [ %i.ih, %.thread573 ], [ %i.jb, %bb.bx ], [ %i.hz, %bb.bn ] ; 2 uses
  %i.jc = icmp ult i32 %.4.i, 4
  br i1 %i.jc, label %.thread583, label %.thread578

.thread583:                                       ; preds = %LZ4_count.exit343, %LZ4_count.exit, %bb.bk, %.thread537
  %i.jd = sub i32 %i.aq, %i.v
  %i.je = icmp ult i32 %i.jd, 65527
  %or.cond293 = select i1 %.not, i1 %i.je, i1 false
  br i1 %or.cond293, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.thread583
  %i.jf = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.jg = tail call { i64, i32 } %i.ad(ptr noundef nonnull %.0514723, i32 noundef %i.aq, ptr noundef nonnull %i.f, ptr noundef %i.jf, i32 noundef %i.v) #18, !callees !60
  %.fca.0.extract = extractvalue { i64, i32 } %i.jg, 0 ; 2 uses
  %.sroa.039.4.extract.shift = lshr i64 %.fca.0.extract, 32
  %.sroa.039.4.extract.trunc = trunc nuw i64 %.sroa.039.4.extract.shift to i32 ; 2 uses
  %i.jh = icmp sgt i32 %.sroa.039.4.extract.trunc, 3
  %.sroa.039.0.extract.trunc = trunc i64 %.fca.0.extract to i32
  br i1 %i.jh, label %.thread578, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.thread583
  %i.ji = ptrtoint ptr %.0510724 to i64
  %i.jj = sub i64 %i.an, %i.ji
  %i.jk = ashr i64 %i.jj, 9
  %i.jl = getelementptr i8, ptr %.0514723, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.jl, i64 1
  br label %bb.cp, !llvm.loop !57

.thread578:                                       ; preds = %LZ4_count.exit321, %bb.bj, %LZ4_count.exit, %LZ4_count.exit365, %LZ4_count.exit387, %bb.av, %bb.by
  %.pre-phi809 = phi i32 [ %i.ap, %LZ4_count.exit321 ], [ %.pre808, %bb.bj ], [ %i.ap, %LZ4_count.exit ], [ %i.ap, %LZ4_count.exit365 ], [ %i.ap, %LZ4_count.exit387 ], [ %i.ap, %bb.av ], [ %i.ap, %bb.by ]
  %.pre-phi = phi i64 [ %i.an, %LZ4_count.exit321 ], [ %.pre, %bb.bj ], [ %i.an, %LZ4_count.exit ], [ %i.an, %LZ4_count.exit365 ], [ %i.an, %LZ4_count.exit387 ], [ %i.an, %bb.av ], [ %i.an, %bb.by ] ; 2 uses
  %.4518 = phi ptr [ %.0514723, %LZ4_count.exit321 ], [ %i.fq, %bb.bj ], [ %.0514723, %LZ4_count.exit ], [ %.0514723, %LZ4_count.exit365 ], [ %.0514723, %LZ4_count.exit387 ], [ %.0514723, %bb.av ], [ %.0514723, %bb.by ] ; 5 uses
  %.10244 = phi i32 [ %.4.i333, %LZ4_count.exit321 ], [ %.4.i311, %bb.bj ], [ %.4.i, %LZ4_count.exit ], [ %.4.i355, %LZ4_count.exit365 ], [ %.4.i377, %LZ4_count.exit387 ], [ %.4.i333, %bb.av ], [ %.sroa.039.4.extract.trunc, %bb.by ] ; 3 uses
  %.13 = phi i32 [ %i.ed, %LZ4_count.exit321 ], [ %i.fw, %bb.bj ], [ %i.ed, %LZ4_count.exit ], [ %i.av, %LZ4_count.exit365 ], [ %i.av, %LZ4_count.exit387 ], [ %i.ed, %bb.av ], [ %.sroa.039.0.extract.trunc, %bb.by ] ; 5 uses
  %i.jn = icmp ugt ptr %.4518, %.0510724
  %i.jo = icmp ult i32 %.13, %.pre-phi809
  %i.jp = and i1 %i.jn, %i.jo
  br i1 %i.jp, label %.lr.ph700, label %.critedge

.lr.ph700:                                        ; preds = %.thread578
  %i.jq = xor i32 %.13, -1
  %i.jr = sext i32 %i.jq to i64                   ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %.4518, i64 -1 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !39
  %i.ju = getelementptr inbounds i8, ptr %.4518, i64 %i.jr
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !39
  %i.jw = icmp eq i8 %i.jt, %i.jv
  br i1 %i.jw, label %.lr.ph922, label %.critedge

bb.ca:                                            ; preds = %.lr.ph922
  %i.jx = getelementptr inbounds i8, ptr %i.kc, i64 -1 ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !39
  %i.jz = getelementptr inbounds i8, ptr %i.kc, i64 %i.jr
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !39
  %i.kb = icmp eq i8 %i.jy, %i.ka
  br i1 %i.kb, label %.lr.ph922, label %.critedge, !llvm.loop !58

.lr.ph922:                                        ; preds = %.lr.ph700, %bb.ca
  %i.kc = phi ptr [ %i.jx, %bb.ca ], [ %i.js, %.lr.ph700 ] ; 6 uses
  %.11245699921 = phi i32 [ %i.kd, %bb.ca ], [ %.10244, %.lr.ph700 ]
  %i.kd = add i32 %.11245699921, 1                ; 3 uses
  %i.ke = icmp ugt ptr %i.kc, %.0510724
  %i.kf = ptrtoint ptr %i.kc to i64               ; 3 uses
  %i.kg = sub i64 %i.kf, %i.o
  %i.kh = trunc i64 %i.kg to i32
  %i.ki = icmp ult i32 %.13, %i.kh
  %i.kj = and i1 %i.ke, %i.ki
  br i1 %i.kj, label %bb.ca, label %..critedge.loopexit_crit_edge, !llvm.loop !58

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph922
  br label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %bb.ca, %.lr.ph700, %..critedge.loopexit_crit_edge, %.thread578
  %.5519.lcssa = phi ptr [ %.4518, %.thread578 ], [ %.4518, %.lr.ph700 ], [ %i.kc, %..critedge.loopexit_crit_edge ], [ %i.kc, %bb.ca ] ; 6 uses
  %.11245.lcssa = phi i32 [ %.10244, %.thread578 ], [ %.10244, %.lr.ph700 ], [ %i.kd, %..critedge.loopexit_crit_edge ], [ %i.kd, %bb.ca ] ; 2 uses
  %.lcssa = phi i64 [ %.pre-phi, %.thread578 ], [ %.pre-phi, %.lr.ph700 ], [ %i.kf, %..critedge.loopexit_crit_edge ], [ %i.kf, %bb.ca ] ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.5519.lcssa, i64 1 ; 2 uses
  %.val421 = load i64, ptr %i.kk, align 1, !tbaa !34
  %i.kl = mul i64 %.val421, -3523014627193167104
  %i.km = lshr i64 %i.kl, 50
  %i.kn = add i32 %i.aq, 1                        ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.km
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !29
  %i.kp = getelementptr inbounds nuw i8, ptr %.5519.lcssa, i64 2
  %.val420 = load i64, ptr %i.kp, align 1, !tbaa !34
  %i.kq = mul i64 %.val420, -3523014627193167104
  %i.kr = lshr i64 %i.kq, 50
  %i.ks = add i32 %i.aq, 2
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kr
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !29
  %.val426 = load i32, ptr %i.kk, align 1, !tbaa !28
  %i.ku = mul i32 %.val426, -1640531535
  %i.kv = lshr i32 %i.ku, 18
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kw
  store i32 %i.kn, ptr %i.kx, align 4, !tbaa !29
  %i.ky = getelementptr i8, ptr %.0497725, i64 1  ; 7 uses
  %i.kz = ptrtoint ptr %.0510724 to i64           ; 7 uses
  %i.la = sub i64 %.lcssa, %i.kz                  ; 6 uses
  %i.lb = udiv i64 %i.la, 255
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.la
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = icmp ugt ptr %i.le, %spec.select
  %or.cond.i = select i1 %.not.i388, i1 %i.lf, i1 false
  br i1 %or.cond.i, label %bb.cu, label %bb.cb

bb.cb:                                            ; preds = %.critedge
  %i.lg = icmp ugt i64 %i.la, 14
  br i1 %i.lg, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lh = add i64 %i.la, -15                      ; 2 uses
  store i8 -16, ptr %.0497725, align 1, !tbaa !39
  %i.li = icmp ugt i64 %i.lh, 254
  br i1 %i.li, label %.lr.ph711.preheader, label %._crit_edge712

.lr.ph711.preheader:                              ; preds = %bb.cc
  %i.lj = add i64 %.lcssa, -270
  %i.lk = sub i64 %i.lj, %i.kz                    ; 2 uses
  %i.ll = udiv i64 %i.lk, 255                     ; 3 uses
  %i.lm = add nuw nsw i64 %i.ll, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ky, i8 -1, i64 range(i64 0, 72340172838076675) %i.lm, i1 false), !tbaa !39
  %scevgep = getelementptr i8, ptr %.0497725, i64 2
  %scevgep789 = getelementptr i8, ptr %scevgep, i64 %i.ll
  %.neg = mul i64 %i.ll, -255
  %i.ln = add i64 %.neg, %i.lk
  br label %._crit_edge712

._crit_edge712:                                   ; preds = %.lr.ph711.preheader, %bb.cc
  %.15.lcssa = phi ptr [ %i.ky, %bb.cc ], [ %scevgep789, %.lr.ph711.preheader ] ; 2 uses
  %.0.i392.lcssa = phi i64 [ %i.lh, %bb.cc ], [ %i.ln, %.lr.ph711.preheader ]
  %i.lo = trunc nuw i64 %.0.i392.lcssa to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %.15.lcssa, i64 1
  store i8 %i.lo, ptr %.15.lcssa, align 1, !tbaa !39
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %.tr.i389 = trunc nuw nsw i64 %i.la to i8
  %i.lq = shl nuw i8 %.tr.i389, 4
  store i8 %i.lq, ptr %.0497725, align 1, !tbaa !39
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge712
  %.11506 = phi ptr [ %i.lp, %._crit_edge712 ], [ %i.ky, %bb.cd ] ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.11506, i64 %i.la ; 3 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %bb.ce
  %.09.i = phi ptr [ %.11506, %bb.ce ], [ %i.lt, %bb.cf ] ; 2 uses
  %.0.i394 = phi ptr [ %.0510724, %bb.ce ], [ %i.lu, %bb.cf ] ; 2 uses
  %i.ls = load i64, ptr %.0.i394, align 1
  store i64 %i.ls, ptr %.09.i, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i394, i64 8
  %i.lv = icmp ult ptr %i.lt, %i.lr
  br i1 %i.lv, label %bb.cf, label %LZ4_wildCopy8.exit, !llvm.loop !7

LZ4_wildCopy8.exit:                               ; preds = %bb.cf
  %i.lw = trunc i32 %.13 to i16
  store i16 %i.lw, ptr %i.lr, align 1, !tbaa !38
  %i.lx = getelementptr i8, ptr %i.lr, i64 2      ; 4 uses
  %i.ly = sext i32 %.11245.lcssa to i64           ; 4 uses
  %i.lz = add nsw i64 %i.ly, -4                   ; 3 uses
  %i.ma = udiv i64 %i.lz, 255
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 6
  %i.md = icmp ugt ptr %i.mc, %spec.select
  %or.cond64.i = select i1 %.not.i388, i1 %i.md, i1 false
  br i1 %or.cond64.i, label %bb.cu, label %bb.cg

bb.cg:                                            ; preds = %LZ4_wildCopy8.exit
  %i.me = icmp ugt i64 %i.lz, 14
  br i1 %i.me, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.mf = load i8, ptr %.0497725, align 1, !tbaa !39
  %i.mg = add i8 %i.mf, 15
  store i8 %i.mg, ptr %.0497725, align 1, !tbaa !39
  %i.mh = add nsw i64 %i.ly, -19                  ; 2 uses
  %i.mi = icmp ugt i64 %i.mh, 509
  br i1 %i.mi, label %.lr.ph718.preheader, label %._crit_edge719

.lr.ph718.preheader:                              ; preds = %bb.ch
  %i.mj = add nsw i64 %i.ly, -529                 ; 2 uses
  %i.mk = udiv i64 %i.mj, 510                     ; 2 uses
  %i.ml = shl nuw nsw i64 %i.mk, 1                ; 2 uses
  %i.mm = add nuw nsw i64 %i.ml, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lx, i8 -1, i64 range(i64 0, 72340172838076675) %i.mm, i1 false), !tbaa !39
  %scevgep790 = getelementptr i8, ptr %.11506, i64 4
  %i.mn = add i64 %.lcssa, %i.ml
  %i.mo = sub i64 %i.mn, %i.kz
  %scevgep791 = getelementptr i8, ptr %scevgep790, i64 %i.mo
  %.neg858 = mul i64 %i.mk, -510
  %i.mp = add i64 %.neg858, %i.mj
  br label %._crit_edge719

._crit_edge719:                                   ; preds = %.lr.ph718.preheader, %bb.ch
  %.13508.lcssa = phi ptr [ %i.lx, %bb.ch ], [ %scevgep791, %.lr.ph718.preheader ] ; 3 uses
  %.050.i390.lcssa = phi i64 [ %i.mh, %bb.ch ], [ %i.mp, %.lr.ph718.preheader ] ; 3 uses
  %i.mq = icmp samesign ugt i64 %.050.i390.lcssa, 254
  br i1 %i.mq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %._crit_edge719
  %i.mr = add nsw i64 %.050.i390.lcssa, -255
  %i.ms = getelementptr inbounds nuw i8, ptr %.13508.lcssa, i64 1
  store i8 -1, ptr %.13508.lcssa, align 1, !tbaa !39
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge719
  %.14509 = phi ptr [ %i.ms, %bb.ci ], [ %.13508.lcssa, %._crit_edge719 ] ; 2 uses
  %.1.i391 = phi i64 [ %i.mr, %bb.ci ], [ %.050.i390.lcssa, %._crit_edge719 ]
  %i.mt = trunc nuw i64 %.1.i391 to i8
  %i.mu = getelementptr inbounds nuw i8, ptr %.14509, i64 1
  store i8 %i.mt, ptr %.14509, align 1, !tbaa !39
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cg
  %i.mv = trunc nuw nsw i64 %i.lz to i8
  %i.mw = load i8, ptr %.0497725, align 1, !tbaa !39
  %i.mx = add i8 %i.mw, %i.mv
  store i8 %i.mx, ptr %.0497725, align 1, !tbaa !39
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %.12507 = phi ptr [ %i.mu, %bb.cj ], [ %i.lx, %bb.ck ] ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %.5519.lcssa, i64 %i.ly ; 9 uses
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = sub i64 %i.mz, %i.o                     ; 2 uses
  %i.nb = trunc i64 %i.na to i32
  %i.nc = add i32 %i.m, %i.nb                     ; 4 uses
  %i.nd = add i32 %i.nc, -2                       ; 3 uses
  %i.ne = icmp ult i32 %i.nd, %i.r
  br i1 %i.ne, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.nf = icmp sgt i64 %i.na, 5
  br i1 %i.nf, label %bb.cn, label %bb.co, !prof !31

bb.cn:                                            ; preds = %bb.cm
  %i.ng = getelementptr inbounds i8, ptr %i.my, i64 -5
  %.val419 = load i64, ptr %i.ng, align 1, !tbaa !34
  %i.nh = mul i64 %.val419, -3523014627193167104
  %i.ni = lshr i64 %i.nh, 50
  %i.nj = add i32 %i.nc, -5
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ni
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !29
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.nl = getelementptr inbounds i8, ptr %i.my, i64 -3
  %.val418 = load i64, ptr %i.nl, align 1, !tbaa !34
  %i.nm = mul i64 %.val418, -3523014627193167104
  %i.nn = lshr i64 %i.nm, 50
  %i.no = add i32 %i.nc, -3
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nn
  store i32 %i.no, ptr %i.np, align 4, !tbaa !29
  %i.nq = getelementptr inbounds i8, ptr %i.my, i64 -2 ; 2 uses
  %.val417 = load i64, ptr %i.nq, align 1, !tbaa !34
  %i.nr = mul i64 %.val417, -3523014627193167104
  %i.ns = lshr i64 %i.nr, 50
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ns
  store i32 %i.nd, ptr %i.nt, align 4, !tbaa !29
  %.val425 = load i32, ptr %i.nq, align 1, !tbaa !28
  %i.nu = mul i32 %.val425, -1640531535
  %i.nv = lshr i32 %i.nu, 18
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.nw
  store i32 %i.nd, ptr %i.nx, align 4, !tbaa !29
  %i.ny = getelementptr inbounds i8, ptr %i.my, i64 -1
  %.val424 = load i32, ptr %i.ny, align 1, !tbaa !28
  %i.nz = mul i32 %.val424, -1640531535
  %i.oa = lshr i32 %i.nz, 18
  %i.ob = add i32 %i.nc, -1
  %i.oc = zext nneg i32 %i.oa to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oc
  store i32 %i.ob, ptr %i.od, align 4, !tbaa !29
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cl, %bb.co, %bb.bz
  %.6520 = phi ptr [ %i.my, %bb.co ], [ %i.my, %bb.cl ], [ %i.jm, %bb.bz ] ; 2 uses
  %.1511 = phi ptr [ %i.my, %bb.co ], [ %i.my, %bb.cl ], [ %.0510724, %bb.bz ] ; 2 uses
  %.2499 = phi ptr [ %.12507, %bb.co ], [ %.12507, %bb.cl ], [ %.0497725, %bb.bz ] ; 2 uses
  %.not280 = icmp ugt ptr %.6520, %i.e
  br i1 %.not280, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.cp, %LZ4HC_encodeSequence.exit, %bb.d
  %.2512 = phi ptr [ %1, %bb.d ], [ %i.sh, %LZ4HC_encodeSequence.exit ], [ %.1511, %bb.cp ] ; 3 uses
  %.3500 = phi ptr [ %2, %bb.d ], [ %.10505, %LZ4HC_encodeSequence.exit ], [ %.2499, %bb.cp ] ; 3 uses
  %i.oe = ptrtoint ptr %i.d to i64
  %i.of = ptrtoint ptr %.2512 to i64
  %i.og = sub i64 %i.oe, %i.of                    ; 3 uses
  %i.oh = add i64 %i.og, 240
  %i.oi = udiv i64 %i.oh, 255
  %spec.select294.idx = select i1 %i.ag, i64 5, i64 0
  %spec.select294 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %spec.select294.idx ; 2 uses
  %.not288 = icmp ne i32 %5, 0
  %i.oj = getelementptr i8, ptr %.3500, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 1
  %i.ol = getelementptr i8, ptr %i.ok, i64 %i.og
  %i.om = icmp ugt ptr %i.ol, %spec.select294
  %or.cond650 = select i1 %.not288, i1 %i.om, i1 false
  br i1 %or.cond650, label %bb.cq, label %bb.cr

.thread632:                                       ; preds = %bb.cw, %bb.cv
  %i.on = ptrtoint ptr %i.d to i64
  %i.oo = sub i64 %i.on, %i.kz                    ; 3 uses
  %i.op = add i64 %i.oo, 240
  %i.oq = udiv i64 %i.op, 255
  %i.or = getelementptr i8, ptr %.0497725, i64 %i.oq
  %i.os = getelementptr i8, ptr %i.or, i64 1
  %i.ot = getelementptr i8, ptr %i.os, i64 %i.oo
  %i.ou = icmp ugt ptr %i.ot, %i.i
  br i1 %i.ou, label %.thread639, label %bb.cr

bb.cq:                                            ; preds = %.loopexit
  %i.ov = icmp eq i32 %5, 1
  br i1 %i.ov, label %bb.dg, label %.thread639

.thread639:                                       ; preds = %.thread632, %bb.cq
  %spec.select294631636645 = phi ptr [ %spec.select294, %bb.cq ], [ %i.i, %.thread632 ]
  %.3500629637644 = phi ptr [ %.3500, %bb.cq ], [ %.0497725, %.thread632 ] ; 2 uses
  %.2512627638643 = phi ptr [ %.2512, %bb.cq ], [ %.0510724, %.thread632 ]
  %i.ow = ptrtoint ptr %spec.select294631636645 to i64
  %i.ox = ptrtoint ptr %.3500629637644 to i64
  %i.oy = xor i64 %i.ox, -1
  %i.oz = add i64 %i.oy, %i.ow                    ; 2 uses
  %i.pa = add i64 %i.oz, 241
  %i.pb = lshr i64 %i.pa, 8
  %i.pc = sub i64 %i.oz, %i.pb
  br label %bb.cr

bb.cr:                                            ; preds = %.thread632, %.thread639, %.loopexit
  %.3500630 = phi ptr [ %.3500629637644, %.thread639 ], [ %.0497725, %.thread632 ], [ %.3500, %.loopexit ] ; 6 uses
  %.2512628 = phi ptr [ %.2512627638643, %.thread639 ], [ %.0510724, %.thread632 ], [ %.2512, %.loopexit ] ; 2 uses
  %.0220 = phi i64 [ %i.pc, %.thread639 ], [ %i.oo, %.thread632 ], [ %i.og, %.loopexit ] ; 7 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.2512628, i64 %.0220
  %i.pe = icmp ugt i64 %.0220, 14
  %.4501743 = getelementptr i8, ptr %.3500630, i64 1 ; 3 uses
  br i1 %i.pe, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.pf = add i64 %.0220, -15                     ; 2 uses
  store i8 -16, ptr %.3500630, align 1, !tbaa !39
  %i.pg = icmp ugt i64 %i.pf, 254
  br i1 %i.pg, label %.lr.ph747.preheader, label %._crit_edge748

.lr.ph747.preheader:                              ; preds = %bb.cs
  %i.ph = add i64 %.0220, -270                    ; 2 uses
  %i.pi = udiv i64 %i.ph, 255                     ; 3 uses
  %i.pj = add nuw nsw i64 %i.pi, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4501743, i8 -1, i64 range(i64 0, 72340172838076673) %i.pj, i1 false), !tbaa !39
  %scevgep804 = getelementptr i8, ptr %.3500630, i64 %i.pj
  %.neg861 = mul i64 %i.pi, -255
  %i.pk = add i64 %.neg861, %i.ph
  %i.pl = getelementptr i8, ptr %.3500630, i64 %i.pi
  %scevgep805 = getelementptr i8, ptr %i.pl, i64 2
  br label %._crit_edge748

._crit_edge748:                                   ; preds = %.lr.ph747.preheader, %bb.cs
  %.3500630.pn.lcssa = phi ptr [ %.3500630, %bb.cs ], [ %scevgep804, %.lr.ph747.preheader ]
  %.0.lcssa = phi i64 [ %i.pf, %bb.cs ], [ %i.pk, %.lr.ph747.preheader ]
  %.4501.lcssa = phi ptr [ %.4501743, %bb.cs ], [ %scevgep805, %.lr.ph747.preheader ]
  %i.pm = trunc nuw i64 %.0.lcssa to i8
  %i.pn = getelementptr inbounds nuw i8, ptr %.3500630.pn.lcssa, i64 2
  store i8 %i.pm, ptr %.4501.lcssa, align 1, !tbaa !39
  br label %.critedge296

bb.ct:                                            ; preds = %bb.cr
  %.0220.tr = trunc nuw nsw i64 %.0220 to i8
  %i.po = shl nuw i8 %.0220.tr, 4
  store i8 %i.po, ptr %.3500630, align 1, !tbaa !39
  br label %.critedge296

.critedge296:                                     ; preds = %bb.ct, %._crit_edge748
  %.5502 = phi ptr [ %i.pn, %._crit_edge748 ], [ %.4501743, %bb.ct ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.5502, ptr align 1 %.2512628, i64 %.0220, i1 false)
  %i.pp = getelementptr inbounds nuw i8, ptr %.5502, i64 %.0220
  %i.pq = ptrtoint ptr %i.pd to i64
  %i.pr = ptrtoint ptr %1 to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %i.pt = trunc i64 %i.ps to i32
  store i32 %i.pt, ptr %3, align 4, !tbaa !29
  %i.pu = ptrtoint ptr %i.pp to i64
  %i.pv = ptrtoint ptr %2 to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = trunc i64 %i.pw to i32
  br label %bb.dg

bb.cu:                                            ; preds = %.critedge, %LZ4_wildCopy8.exit
  %.5519.lcssa.lcssa798799 = ptrtoaddr ptr %.5519.lcssa to i64
  br i1 %i.ag, label %bb.cv, label %bb.dg

bb.cv:                                            ; preds = %bb.cu
  %i.py = ptrtoint ptr %.5519.lcssa to i64        ; 2 uses
  %i.pz = sub i64 %i.py, %i.kz                    ; 6 uses
  %i.qa = add i64 %i.pz, 240
  %i.qb = udiv i64 %i.qa, 255
  %i.qc = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 2 uses
  %i.qd = getelementptr i8, ptr %.0497725, i64 %i.qb
  %i.qe = getelementptr i8, ptr %i.qd, i64 1
  %i.qf = getelementptr i8, ptr %i.qe, i64 %i.pz  ; 3 uses
  %.not287 = icmp ugt ptr %i.qf, %i.qc
  br i1 %.not287, label %.thread632, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qg = ptrtoint ptr %i.qc to i64
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = mul i64 %i.qi, 255
  %i.qk = add i64 %i.qj, 18
  %i.ql = zext i32 %.11245.lcssa to i64
  %spec.select297653 = tail call i64 @llvm.umin.i64(i64 %i.qk, i64 %i.ql) ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 2
  %i.qn = ptrtoint ptr %i.i to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = add i64 %spec.select297653, %i.qn
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = icmp slt i64 %i.qq, -12
  br i1 %i.qr, label %bb.cx, label %.thread632

bb.cx:                                            ; preds = %bb.cw
  %i.qs = icmp ugt i64 %i.pz, 14
  br i1 %i.qs, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.qt = add i64 %i.pz, -15                      ; 2 uses
  store i8 -16, ptr %.0497725, align 1, !tbaa !39
  %i.qu = icmp ugt i64 %i.qt, 254
  br i1 %i.qu, label %.lr.ph732.preheader, label %._crit_edge733

.lr.ph732.preheader:                              ; preds = %bb.cy
  %i.qv = add i64 %i.py, -270
  %i.qw = sub i64 %i.qv, %i.kz                    ; 2 uses
  %i.qx = udiv i64 %i.qw, 255                     ; 3 uses
  %i.qy = add nuw nsw i64 %i.qx, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ky, i8 -1, i64 range(i64 0, 72340172838076675) %i.qy, i1 false), !tbaa !39
  %i.qz = getelementptr i8, ptr %.0497725, i64 %i.qx
  %scevgep794 = getelementptr i8, ptr %i.qz, i64 2
  %.neg859 = mul i64 %i.qx, -255
  %i.ra = add i64 %.neg859, %i.qw
  br label %._crit_edge733

._crit_edge733:                                   ; preds = %.lr.ph732.preheader, %bb.cy
  %.9.lcssa = phi ptr [ %i.ky, %bb.cy ], [ %scevgep794, %.lr.ph732.preheader ] ; 2 uses
  %.0.i.lcssa = phi i64 [ %i.qt, %bb.cy ], [ %i.ra, %.lr.ph732.preheader ]
  %i.rb = trunc nuw i64 %.0.i.lcssa to i8
  %i.rc = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 1
  store i8 %i.rb, ptr %.9.lcssa, align 1, !tbaa !39
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %.tr.i = trunc nuw nsw i64 %i.pz to i8
  %i.rd = shl nuw i8 %.tr.i, 4
  store i8 %i.rd, ptr %.0497725, align 1, !tbaa !39
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %._crit_edge733
  %.6 = phi ptr [ %i.rc, %._crit_edge733 ], [ %i.ky, %bb.cz ] ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.6, i64 %i.pz ; 3 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.09.i395 = phi ptr [ %.6, %bb.da ], [ %i.rg, %bb.db ] ; 2 uses
  %.0.i396 = phi ptr [ %.0510724, %bb.da ], [ %i.rh, %bb.db ] ; 2 uses
  %i.rf = load i64, ptr %.0.i396, align 1
  store i64 %i.rf, ptr %.09.i395, align 1
  %i.rg = getelementptr inbounds nuw i8, ptr %.09.i395, i64 8 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0.i396, i64 8
  %i.ri = icmp ult ptr %i.rg, %i.re
  br i1 %i.ri, label %bb.db, label %LZ4_wildCopy8.exit397, !llvm.loop !7

LZ4_wildCopy8.exit397:                            ; preds = %bb.db
  %i.rj = trunc i32 %.13 to i16
  store i16 %i.rj, ptr %i.re, align 1, !tbaa !38
  %i.rk = getelementptr i8, ptr %i.re, i64 2      ; 3 uses
  %sext = shl nuw i64 %spec.select297653, 32
  %i.rl = ashr exact i64 %sext, 32                ; 4 uses
  %i.rm = add nsw i64 %i.rl, -4                   ; 2 uses
  %i.rn = icmp ugt i64 %i.rm, 14
  br i1 %i.rn, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %LZ4_wildCopy8.exit397
  %i.ro = load i8, ptr %.0497725, align 1, !tbaa !39
  %i.rp = add i8 %i.ro, 15
  store i8 %i.rp, ptr %.0497725, align 1, !tbaa !39
  %i.rq = add nsw i64 %i.rl, -19                  ; 2 uses
  %i.rr = icmp ugt i64 %i.rq, 509
  br i1 %i.rr, label %.lr.ph739.preheader, label %._crit_edge740

.lr.ph739.preheader:                              ; preds = %bb.dc
  %i.rs = add nsw i64 %i.rl, -529                 ; 2 uses
  %i.rt = udiv i64 %i.rs, 510                     ; 2 uses
  %i.ru = shl nuw nsw i64 %i.rt, 1                ; 2 uses
  %i.rv = add nuw nsw i64 %i.ru, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.rk, i8 -1, i64 range(i64 0, 72340172838076675) %i.rv, i1 false), !tbaa !39
  %scevgep797 = getelementptr i8, ptr %.6, i64 4
  %i.rw = add i64 %i.ru, %.5519.lcssa.lcssa798799
  %i.rx = sub i64 %i.rw, %i.kz
  %scevgep803 = getelementptr i8, ptr %scevgep797, i64 %i.rx
  %.neg860 = mul i64 %i.rt, -510
  %i.ry = add i64 %.neg860, %i.rs
  br label %._crit_edge740

._crit_edge740:                                   ; preds = %.lr.ph739.preheader, %bb.dc
  %.7503.lcssa = phi ptr [ %i.rk, %bb.dc ], [ %scevgep803, %.lr.ph739.preheader ] ; 3 uses
  %.050.i.lcssa = phi i64 [ %i.rq, %bb.dc ], [ %i.ry, %.lr.ph739.preheader ] ; 3 uses
  %i.rz = icmp samesign ugt i64 %.050.i.lcssa, 254
  br i1 %i.rz, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %._crit_edge740
  %i.sa = add nsw i64 %.050.i.lcssa, -255
  %i.sb = getelementptr inbounds nuw i8, ptr %.7503.lcssa, i64 1
  store i8 -1, ptr %.7503.lcssa, align 1, !tbaa !39
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %._crit_edge740
  %.8504 = phi ptr [ %i.sb, %bb.dd ], [ %.7503.lcssa, %._crit_edge740 ] ; 2 uses
  %.1.i = phi i64 [ %i.sa, %bb.dd ], [ %.050.i.lcssa, %._crit_edge740 ]
  %i.sc = trunc nuw i64 %.1.i to i8
  %i.sd = getelementptr inbounds nuw i8, ptr %.8504, i64 1
  store i8 %i.sc, ptr %.8504, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit

bb.df:                                            ; preds = %LZ4_wildCopy8.exit397
  %i.se = trunc nuw nsw i64 %i.rm to i8
  %i.sf = load i8, ptr %.0497725, align 1, !tbaa !39
  %i.sg = add i8 %i.sf, %i.se
  store i8 %i.sg, ptr %.0497725, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.de, %bb.df
  %.10505 = phi ptr [ %i.sd, %bb.de ], [ %i.rk, %bb.df ]
  %i.sh = getelementptr inbounds i8, ptr %.5519.lcssa, i64 %i.rl
  br label %.loopexit

bb.dg:                                            ; preds = %bb.cu, %bb.cq, %select_searchDict_function.exit, %.critedge296
  %.1 = phi i32 [ 0, %bb.cq ], [ 0, %select_searchDict_function.exit ], [ 0, %bb.cu ], [ %i.px, %.critedge296 ]
  ret i32 %.1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @LZ4HC_compress_optimal(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i64 noundef range(i64 0, 4294967296) %6, i32 noundef range(i32 0, 3) %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(65584) ptr @malloc(i64 noundef 65584) #19 ; 52 uses
  %i.h = load i32, ptr %3, align 4, !tbaa !29     ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -12 ; 27 uses
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -5 ; 37 uses
  %i.m = icmp eq ptr %i.g, null
  br i1 %i.m, label %.thread1632, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sext i32 %4 to i64
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n ; 5 uses
  store i32 0, ptr %3, align 4, !tbaa !29
  %i.p = icmp eq i32 %7, 2                        ; 3 uses
  %spec.select.idx = select i1 %i.p, i64 -5, i64 0
  %spec.select = getelementptr inbounds i8, ptr %i.o, i64 %spec.select.idx ; 5 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %6, i64 4095) ; 2 uses
  %.not1966 = icmp slt i32 %i.h, 12
  br i1 %.not1966, label %.loopexit1682, label %.lr.ph1971

.lr.ph1971:                                       ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 21 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 262160
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %.not.i.i755 = icmp ne i32 %10, 0               ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.j, i64 -6 ; 6 uses
  %i.z = ptrtoaddr ptr %i.l to i64                ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.ac = icmp ne i32 %9, 0                       ; 3 uses
  %.not408 = icmp eq i32 %8, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.not.i = icmp ne i32 %7, 0                     ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.bh = icmp sgt i32 %5, 0
  %i.bi = icmp sgt i32 %5, 0
  %i.bj = icmp sgt i32 %5, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1971, %.loopexit1677
  %.012861969 = phi ptr [ %2, %.lr.ph1971 ], [ %.3, %.loopexit1677 ] ; 13 uses
  %.012911968 = phi ptr [ %1, %.lr.ph1971 ], [ %.31294, %.loopexit1677 ] ; 7 uses
  %.012981967 = phi ptr [ %1, %.lr.ph1971 ], [ %.31301, %.loopexit1677 ] ; 17 uses
  %i.bk = ptrtoint ptr %.012981967 to i64         ; 4 uses
  %i.bl = ptrtoint ptr %.012911968 to i64         ; 3 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 17 uses
  %i.bn = trunc i64 %i.bm to i32                  ; 8 uses
  %i.bo = load ptr, ptr %i.r, align 8, !tbaa !42  ; 11 uses
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !25  ; 29 uses
  %i.bq = load i32, ptr %i.t, align 8, !tbaa !26  ; 33 uses
  %i.br = ptrtoint ptr %i.bp to i64               ; 6 uses
  %i.bs = sub i64 %i.bk, %i.br                    ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = add i32 %i.bq, %i.bt                    ; 10 uses
  %i.bv = load i32, ptr %i.u, align 4, !tbaa !45  ; 12 uses
  %i.bw = add i32 %i.bv, 65536                    ; 3 uses
  %i.bx = icmp ugt i32 %i.bw, %i.bu               ; 2 uses
  %i.by = add i32 %i.bu, -65535
  %i.bz = select i1 %i.bx, i32 %i.bv, i32 %i.by   ; 5 uses
  %i.ca = load ptr, ptr %i.v, align 8, !tbaa !44  ; 28 uses
  %i.cb = zext i32 %i.bq to i64                   ; 6 uses
  %i.cc = zext i32 %i.bv to i64
  %i.cd = sub nsw i64 %i.cb, %i.cc                ; 13 uses
  %.ptr1656.ptr.ptr = getelementptr inbounds i8, ptr %i.ca, i64 %i.cd ; 4 uses
  %.val937 = load i32, ptr %.012981967, align 1, !tbaa !28 ; 18 uses
  %i.ce = load i32, ptr %i.w, align 8, !tbaa !43  ; 4 uses
  %i.cf = icmp ult i32 %i.ce, %i.bu
  br i1 %i.cf, label %.lr.ph, label %LZ4HC_Insert.exit.i.i684

.lr.ph:                                           ; preds = %bb.c
  %i.cg = sub nsw i64 0, %i.cb
  %invariant.gep = getelementptr i8, ptr %i.bp, i64 %i.cg ; 3 uses
  %i.ch = zext i32 %i.ce to i64                   ; 6 uses
  %i.ci = zext i32 %i.bu to i64                   ; 3 uses
  %i.cj = sub nsw i64 %i.ci, %i.ch
  %xtraiter = and i64 %i.cj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.ch
  %.val948.prol = load i32, ptr %gep.prol, align 1, !tbaa !28
  %i.ck = mul i32 %.val948.prol, -1640531535
  %i.cl = lshr i32 %i.ck, 17
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !29
  %i.cp = sub i32 %i.ce, %i.co
  %i.cq = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 65535)
  %i.cr = trunc nuw i32 %i.cq to i16
  %i.cs = and i64 %i.ch, 65535
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cs
  store i16 %i.cr, ptr %i.ct, align 2, !tbaa !40
  store i32 %i.ce, ptr %i.cn, align 4, !tbaa !29
  %indvars.iv.next.prol = add nuw nsw i64 %i.ch, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.ch, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cu = add nsw i64 %i.ci, -1
  %i.cv = icmp eq i64 %i.cu, %i.ch
  br i1 %i.cv, label %LZ4HC_Insert.exit.i.i684.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %.val948 = load i32, ptr %gep, align 1, !tbaa !28
  %i.cw = mul i32 %.val948, -1640531535
  %i.cx = lshr i32 %i.cw, 17
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !29
  %i.db = trunc nuw i64 %indvars.iv to i32        ; 2 uses
end_hunk_4
begin_hunk_5_@LZ4HC_compress_optimal:bb.a
  %.0315.i.i72317892667 = phi i32 [ %i.rd, %.lr.ph1792 ], [ %i.to, %bb.cp ] ; 3 uses
  %.19.i.i72417902666 = phi i32 [ %.18.i.i696, %.lr.ph1792 ], [ %.21.i.i728, %bb.cp ] ; 3 uses
  %i.rm = phi i32 [ %i.rh, %.lr.ph1792 ], [ %i.tm, %bb.cp ]
  %i.rn = add nsw i32 %.in, -1                    ; 2 uses
  %i.ro = zext i32 %.0315.i.i72317892667 to i64   ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.ro ; 3 uses
  %.val936 = load i32, ptr %i.rp, align 1, !tbaa !28
  %i.rq = icmp eq i32 %.val936, %.val937
  br i1 %i.rq, label %bb.cc, label %bb.cp

bb.cc:                                            ; preds = %bb.cb
  %i.rr = sub i64 %i.qy, %i.ro
  %i.rs = getelementptr inbounds nuw i8, ptr %.012981967, i64 %i.rr ; 2 uses
  %i.rt = icmp ugt ptr %i.rs, %i.l
  %spec.select457.i.i729 = select i1 %i.rt, ptr %i.l, ptr %i.rs ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rp, i64 4 ; 2 uses
  %i.rv = getelementptr inbounds i8, ptr %spec.select457.i.i729, i64 -7 ; 3 uses
  %i.rw = icmp ult ptr %i.dz, %i.rv
  br i1 %i.rw, label %bb.cd, label %bb.cf, !prof !31

bb.cd:                                            ; preds = %bb.cc
  %.val970 = load i64, ptr %i.ru, align 1, !tbaa !34 ; 2 uses
  %.val969 = load i64, ptr %i.dz, align 1, !tbaa !34 ; 2 uses
  %.not.i.i.i751 = icmp eq i64 %.val970, %.val969
  br i1 %.not.i.i.i751, label %.thread1377, label %bb.ce

.thread1377:                                      ; preds = %bb.cd
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rp, i64 12
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ry = xor i64 %.val969, %.val970
  %i.rz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ry, i1 true)
  %i.sa = trunc nuw nsw i64 %i.rz to i32
  %i.sb = lshr i32 %i.sa, 3
  br label %LZ4_count.exit.i.i741

bb.cf:                                            ; preds = %.thread1377, %bb.cc
  %.150.i.i.i730 = phi ptr [ %i.eb, %.thread1377 ], [ %i.dz, %bb.cc ] ; 3 uses
  %.145.i.i.i731 = phi ptr [ %i.rx, %.thread1377 ], [ %i.ru, %bb.cc ] ; 2 uses
  %i.sc = icmp ult ptr %.150.i.i.i730, %i.rv
  br i1 %i.sc, label %.lr.ph1781, label %._crit_edge1782, !prof !35

.lr.ph1781:                                       ; preds = %bb.cf, %bb.cg
  %.246.i.i.i7341779 = phi ptr [ %i.sl, %bb.cg ], [ %.145.i.i.i731, %bb.cf ] ; 2 uses
  %.251.i.i.i7331778 = phi ptr [ %i.sk, %bb.cg ], [ %.150.i.i.i730, %bb.cf ] ; 3 uses
  %.246.i.i.i734.val972 = load i64, ptr %.246.i.i.i7341779, align 1, !tbaa !34 ; 2 uses
  %.251.i.i.i733.val971 = load i64, ptr %.251.i.i.i7331778, align 1, !tbaa !34 ; 2 uses
  %.not59.i.i.i747 = icmp eq i64 %.246.i.i.i734.val972, %.251.i.i.i733.val971
  br i1 %.not59.i.i.i747, label %bb.cg, label %.thread1381

.thread1381:                                      ; preds = %.lr.ph1781
  %i.sd = xor i64 %.251.i.i.i733.val971, %.246.i.i.i734.val972
  %i.se = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.sd, i1 true)
  %i.sf = lshr i64 %i.se, 3
  %i.sg = getelementptr inbounds nuw i8, ptr %.251.i.i.i7331778, i64 %i.sf
  %i.sh = ptrtoint ptr %i.sg to i64
  %i.si = sub i64 %i.sh, %i.ec
  %i.sj = trunc i64 %i.si to i32
  br label %LZ4_count.exit.i.i741

bb.cg:                                            ; preds = %.lr.ph1781
  %i.sk = getelementptr inbounds nuw i8, ptr %.251.i.i.i7331778, i64 8 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.246.i.i.i7341779, i64 8 ; 2 uses
  %i.sm = icmp ult ptr %i.sk, %i.rv
  br i1 %i.sm, label %.lr.ph1781, label %._crit_edge1782, !prof !36

._crit_edge1782:                                  ; preds = %bb.cg, %bb.cf
  %.251.i.i.i733.lcssa = phi ptr [ %.150.i.i.i730, %bb.cf ], [ %i.sk, %bb.cg ] ; 5 uses
  %.246.i.i.i734.lcssa = phi ptr [ %.145.i.i.i731, %bb.cf ], [ %i.sl, %bb.cg ] ; 4 uses
  %i.sn = getelementptr inbounds i8, ptr %spec.select457.i.i729, i64 -3
  %i.so = icmp ult ptr %.251.i.i.i733.lcssa, %i.sn
  br i1 %i.so, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %._crit_edge1782
  %.246.i.i.i734.val = load i32, ptr %.246.i.i.i734.lcssa, align 1, !tbaa !28
  %.251.i.i.i733.val = load i32, ptr %.251.i.i.i733.lcssa, align 1, !tbaa !28
  %i.sp = icmp eq i32 %.246.i.i.i734.val, %.251.i.i.i733.val
  br i1 %i.sp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.sq = getelementptr inbounds nuw i8, ptr %.251.i.i.i733.lcssa, i64 4
  %i.sr = getelementptr inbounds nuw i8, ptr %.246.i.i.i734.lcssa, i64 4
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %._crit_edge1782
  %.453.i.i.i736 = phi ptr [ %i.sq, %bb.ci ], [ %.251.i.i.i733.lcssa, %bb.ch ], [ %.251.i.i.i733.lcssa, %._crit_edge1782 ] ; 5 uses
  %.448.i.i.i737 = phi ptr [ %i.sr, %bb.ci ], [ %.246.i.i.i734.lcssa, %bb.ch ], [ %.246.i.i.i734.lcssa, %._crit_edge1782 ] ; 4 uses
  %i.ss = getelementptr inbounds i8, ptr %spec.select457.i.i729, i64 -1
  %i.st = icmp ult ptr %.453.i.i.i736, %i.ss
  br i1 %i.st, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %.448.i.i.i737.val = load i16, ptr %.448.i.i.i737, align 1, !tbaa !38
  %.453.i.i.i736.val = load i16, ptr %.453.i.i.i736, align 1, !tbaa !38
  %i.su = icmp eq i16 %.448.i.i.i737.val, %.453.i.i.i736.val
  br i1 %i.su, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.sv = getelementptr inbounds nuw i8, ptr %.453.i.i.i736, i64 2
  %i.sw = getelementptr inbounds nuw i8, ptr %.448.i.i.i737, i64 2
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.554.i.i.i738 = phi ptr [ %i.sv, %bb.cl ], [ %.453.i.i.i736, %bb.ck ], [ %.453.i.i.i736, %bb.cj ] ; 4 uses
  %.5.i.i.i739 = phi ptr [ %i.sw, %bb.cl ], [ %.448.i.i.i737, %bb.ck ], [ %.448.i.i.i737, %bb.cj ]
  %i.sx = icmp ult ptr %.554.i.i.i738, %spec.select457.i.i729
  br i1 %i.sx, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.sy = load i8, ptr %.5.i.i.i739, align 1, !tbaa !39
  %i.sz = load i8, ptr %.554.i.i.i738, align 1, !tbaa !39
  %i.ta = icmp eq i8 %i.sy, %i.sz
  %spec.select.i.i.i746.idx = zext i1 %i.ta to i64
  %spec.select.i.i.i746 = getelementptr inbounds nuw i8, ptr %.554.i.i.i738, i64 %spec.select.i.i.i746.idx
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.6.i.i.i740 = phi ptr [ %.554.i.i.i738, %bb.cm ], [ %spec.select.i.i.i746, %bb.cn ]
  %i.tb = ptrtoint ptr %.6.i.i.i740 to i64
  %i.tc = sub i64 %i.tb, %i.ec
  %i.td = trunc i64 %i.tc to i32
  br label %LZ4_count.exit.i.i741

LZ4_count.exit.i.i741:                            ; preds = %.thread1381, %bb.ce, %bb.co
  %.4.i.i.i742 = phi i32 [ %i.sj, %.thread1381 ], [ %i.td, %bb.co ], [ %i.sb, %bb.ce ]
  %i.te = add nsw i32 %.4.i.i.i742, 4             ; 2 uses
  %i.tf = icmp sgt i32 %i.te, %.19.i.i72417902666
  %.20368.i.i743 = select i1 %i.tf, i32 %i.rm, i32 %.19367.i.i72117872668
  %.20.i.i745 = tail call i32 @llvm.smax.i32(i32 %i.te, i32 %.19.i.i72417902666)
  br label %bb.cp

bb.cp:                                            ; preds = %LZ4_count.exit.i.i741, %bb.cb
  %.21369.i.i726 = phi i32 [ %.20368.i.i743, %LZ4_count.exit.i.i741 ], [ %.19367.i.i72117872668, %bb.cb ] ; 2 uses
  %.21.i.i728 = phi i32 [ %.20.i.i745, %LZ4_count.exit.i.i741 ], [ %.19.i.i72417902666, %bb.cb ] ; 2 uses
  %i.tg = and i32 %.0315.i.i72317892667, 65535
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [2 x i8], ptr %i.rl, i64 %i.th
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !40
  %i.tk = zext i16 %i.tj to i32                   ; 2 uses
  %i.tl = sub i32 %.16397.i.i72017862669, %i.tk   ; 2 uses
  %i.tm = sub i32 %i.bu, %i.tl                    ; 2 uses
  %i.tn = icmp ugt i32 %i.tm, 65535
  %i.to = sub i32 %.0315.i.i72317892667, %i.tk
  %.not442.i.i725 = icmp eq i32 %i.rn, 0
  %or.cond2754 = select i1 %i.tn, i1 true, i1 %.not442.i.i725
  br i1 %or.cond2754, label %LZ4HC_InsertAndGetWiderMatch.exit.i699, label %bb.cb, !llvm.loop !5

LZ4HC_InsertAndGetWiderMatch.exit.i699:           ; preds = %bb.cp, %bb.ca, %.thread1369
  %.22370.i.i700 = phi i32 [ %.18366.i.i694, %.thread1369 ], [ %.18366.i.i694, %bb.ca ], [ %.21369.i.i726, %bb.cp ] ; 4 uses
  %.22.i.i702 = phi i32 [ %.18.i.i696, %.thread1369 ], [ %.18.i.i696, %bb.ca ], [ %.21.i.i728, %bb.cp ] ; 3 uses
  %.not.i709 = icmp sgt i32 %.22.i.i702, 3
  br i1 %.not.i709, label %LZ4HC_FindLongerMatch.exit915, label %LZ4HC_FindLongerMatch.exit915.thread

LZ4HC_FindLongerMatch.exit915:                    ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i699
  %.sroa.2313.0.insert.ext.i.i703 = zext nneg i32 %.22.i.i702 to i64
  %i.tp = add nsw i32 %.22.i.i702, -19
  %i.tq = icmp ult i32 %i.tp, 18
  %or.cond.i715 = and i1 %.not.i.i755, %i.tq
  %.sroa.03.sroa.4.0.insert.shift.i717 = select i1 %or.cond.i715, i64 18, i64 %.sroa.2313.0.insert.ext.i.i703 ; 15 uses
  %.sroa.0162.4.extract.trunc = trunc nuw nsw i64 %.sroa.03.sroa.4.0.insert.shift.i717 to i32
  %i.tr = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i717, %spec.store.select
  br i1 %i.tr, label %bb.cq, label %.preheader1681.preheader

.preheader1681.preheader:                         ; preds = %LZ4HC_FindLongerMatch.exit915
  %sext2368 = shl i64 %i.bm, 32                   ; 3 uses
  %i.ts = ashr exact i64 %sext2368, 32            ; 3 uses
  %i.tt = icmp sgt i64 %i.ts, 14
  %i.tu = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.tt, label %LZ4HC_literalsPrice.exit924.thread, label %LZ4HC_literalsPrice.exit924

LZ4HC_FindLongerMatch.exit915.thread:             ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i699
  %i.tv = getelementptr inbounds nuw i8, ptr %.012981967, i64 1
  br label %.loopexit1677, !llvm.loop !62

bb.cq:                                            ; preds = %LZ4HC_FindLongerMatch.exit915
  %i.tw = getelementptr i8, ptr %.012861969, i64 1 ; 4 uses
  %i.tx = udiv i64 %i.bm, 255
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.bm
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = icmp ugt ptr %i.ua, %spec.select
  %or.cond.i432 = select i1 %.not.i, i1 %i.ub, i1 false
  br i1 %or.cond.i432, label %.thread1572, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.uc = icmp ugt i64 %i.bm, 14
  br i1 %i.uc, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ud = add i64 %i.bm, -15                      ; 2 uses
  store i8 -16, ptr %.012861969, align 1, !tbaa !39
  %i.ue = icmp ugt i64 %i.ud, 254
  br i1 %i.ue, label %.lr.ph1955.preheader, label %._crit_edge1956

.lr.ph1955.preheader:                             ; preds = %bb.cs
  %i.uf = add i64 %i.bk, -270
  %i.ug = sub i64 %i.uf, %i.bl                    ; 2 uses
  %i.uh = udiv i64 %i.ug, 255                     ; 3 uses
  %i.ui = add nuw nsw i64 %i.uh, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.tw, i8 -1, i64 range(i64 0, 72340172838076675) %i.ui, i1 false), !tbaa !39
  %scevgep2154 = getelementptr i8, ptr %.012861969, i64 2
  %scevgep2155 = getelementptr i8, ptr %scevgep2154, i64 %i.uh
  %.neg2371 = mul i64 %i.uh, -255
  %i.uj = add i64 %.neg2371, %i.ug
  br label %._crit_edge1956

._crit_edge1956:                                  ; preds = %.lr.ph1955.preheader, %bb.cs
  %.23.lcssa = phi ptr [ %i.tw, %bb.cs ], [ %scevgep2155, %.lr.ph1955.preheader ] ; 2 uses
  %.0.i439.lcssa = phi i64 [ %i.ud, %bb.cs ], [ %i.uj, %.lr.ph1955.preheader ]
  %i.uk = trunc nuw i64 %.0.i439.lcssa to i8
  %i.ul = getelementptr inbounds nuw i8, ptr %.23.lcssa, i64 1
  store i8 %i.uk, ptr %.23.lcssa, align 1, !tbaa !39
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %.tr.i433 = trunc nuw nsw i64 %i.bm to i8
  %i.um = shl nuw i8 %.tr.i433, 4
  store i8 %i.um, ptr %.012861969, align 1, !tbaa !39
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %._crit_edge1956
  %.19 = phi ptr [ %i.ul, %._crit_edge1956 ], [ %i.tw, %bb.ct ] ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.19, i64 %i.bm ; 3 uses
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.09.i = phi ptr [ %.19, %bb.cu ], [ %i.up, %bb.cv ] ; 2 uses
  %.0.i441 = phi ptr [ %.012911968, %bb.cu ], [ %i.uq, %bb.cv ] ; 2 uses
  %i.uo = load i64, ptr %.0.i441, align 1
  store i64 %i.uo, ptr %.09.i, align 1
  %i.up = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.0.i441, i64 8
  %i.ur = icmp ult ptr %i.up, %i.un
  br i1 %i.ur, label %bb.cv, label %LZ4_wildCopy8.exit, !llvm.loop !7

LZ4_wildCopy8.exit:                               ; preds = %bb.cv
  %i.us = trunc i32 %.22370.i.i700 to i16
  store i16 %i.us, ptr %i.un, align 1, !tbaa !38
  %i.ut = getelementptr i8, ptr %i.un, i64 2      ; 4 uses
  %i.uu = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i717, -4 ; 2 uses
  %.lhs.trunc = trunc i64 %i.uu to i32
  %i.uv = udiv i32 %.lhs.trunc, 255
  %.zext = zext nneg i32 %i.uv to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 %.zext
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 6
  %i.uy = icmp ugt ptr %i.ux, %spec.select
  %or.cond64.i435 = select i1 %.not.i, i1 %i.uy, i1 false
  br i1 %or.cond64.i435, label %.thread1572, label %bb.cw

bb.cw:                                            ; preds = %LZ4_wildCopy8.exit
  %i.uz = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i717, 18
  br i1 %i.uz, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.va = load i8, ptr %.012861969, align 1, !tbaa !39
  %i.vb = add i8 %i.va, 15
  store i8 %i.vb, ptr %.012861969, align 1, !tbaa !39
  %i.vc = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i717, -19
  %i.vd = icmp samesign ugt i64 %.sroa.03.sroa.4.0.insert.shift.i717, 528
  br i1 %i.vd, label %.lr.ph1962.preheader, label %._crit_edge1963

.lr.ph1962.preheader:                             ; preds = %bb.cx
  %i.ve = add nsw i64 %.sroa.03.sroa.4.0.insert.shift.i717, -529 ; 2 uses
  %.lhs.trunc2409 = trunc i64 %i.ve to i32
  %i.vf = udiv i32 %.lhs.trunc2409, 510
  %.zext2410 = zext nneg i32 %i.vf to i64         ; 2 uses
  %i.vg = shl nuw nsw i64 %.zext2410, 1           ; 2 uses
  %i.vh = add nuw nsw i64 %i.vg, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ut, i8 -1, i64 range(i64 0, 72340172838076675) %i.vh, i1 false), !tbaa !39
  %scevgep2156 = getelementptr i8, ptr %.19, i64 4
  %i.vi = add i64 %i.vg, %i.bk
  %i.vj = sub i64 %i.vi, %i.bl
  %scevgep2157 = getelementptr i8, ptr %scevgep2156, i64 %i.vj
  %.neg2372 = mul nsw i64 %.zext2410, -510
  %i.vk = add nsw i64 %.neg2372, %i.ve
  br label %._crit_edge1963

._crit_edge1963:                                  ; preds = %.lr.ph1962.preheader, %bb.cx
  %.21.lcssa = phi ptr [ %i.ut, %bb.cx ], [ %scevgep2157, %.lr.ph1962.preheader ] ; 3 uses
  %.050.i437.lcssa = phi i64 [ %i.vc, %bb.cx ], [ %i.vk, %.lr.ph1962.preheader ] ; 3 uses
  %i.vl = icmp samesign ugt i64 %.050.i437.lcssa, 254
  br i1 %i.vl, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %._crit_edge1963
  %i.vm = add nsw i64 %.050.i437.lcssa, -255
  %i.vn = getelementptr inbounds nuw i8, ptr %.21.lcssa, i64 1
  store i8 -1, ptr %.21.lcssa, align 1, !tbaa !39
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge1963
  %.22 = phi ptr [ %i.vn, %bb.cy ], [ %.21.lcssa, %._crit_edge1963 ] ; 2 uses
  %.1.i438 = phi i64 [ %i.vm, %bb.cy ], [ %.050.i437.lcssa, %._crit_edge1963 ]
  %i.vo = trunc nuw i64 %.1.i438 to i8
  %i.vp = getelementptr inbounds nuw i8, ptr %.22, i64 1
  store i8 %i.vo, ptr %.22, align 1, !tbaa !39
  br label %select.unfold1581

bb.da:                                            ; preds = %bb.cw
  %i.vq = trunc nuw nsw i64 %i.uu to i8
  %i.vr = load i8, ptr %.012861969, align 1, !tbaa !39
  %i.vs = add i8 %i.vr, %i.vq
  store i8 %i.vs, ptr %.012861969, align 1, !tbaa !39
  br label %select.unfold1581

.lr.ph1801:                                       ; preds = %LZ4HC_literalsPrice.exit924.2, %bb.db
  %i.vt = phi i32 [ %i.xc, %bb.db ], [ %i.xb, %LZ4HC_literalsPrice.exit924.2 ]
  %.0.i923.3 = phi i32 [ %i.xi, %bb.db ], [ %i.xb, %LZ4HC_literalsPrice.exit924.2 ]
  store i32 1, ptr %i.be, align 4, !tbaa !68
  store i32 0, ptr %i.bf, align 4, !tbaa !69
  store i32 %i.vt, ptr %i.bg, align 4, !tbaa !70
  store i32 %.0.i923.3, ptr %i.bd, align 4, !tbaa !71
  %i.vu = icmp sgt i32 %i.bn, 14
  %i.vv = add nsw i32 %i.bn, -15
  %i.vw = udiv i32 %i.vv, 255
  %i.vx = add nuw nsw i32 %i.bn, 1
  %i.vy = add nuw nsw i32 %i.vx, %i.vw
  %spec.select1997 = select i1 %i.vu, i32 %i.vy, i32 %i.bn ; 2 uses
  %i.vz = add nsw i32 %spec.select1997, 3
  %invariant.op = add i32 %spec.select1997, 4
  br label %LZ4HC_literalsPrice.exit.i930

LZ4HC_literalsPrice.exit924.thread:               ; preds = %.preheader1681.preheader
  %i.wa = add i32 %i.tu, -15
  %i.wb = udiv i32 %i.wa, 255
  %i.wc = add nuw nsw i64 %i.ts, 1                ; 2 uses
  %i.wd = trunc nuw nsw i64 %i.wc to i32          ; 2 uses
  %i.we = add nuw nsw i32 %i.wb, %i.wd
  store i32 1, ptr %i.as, align 4, !tbaa !68
  store i32 0, ptr %i.at, align 4, !tbaa !69
  store i32 %i.bn, ptr %i.au, align 4, !tbaa !70
  store i32 %i.we, ptr %i.g, align 4, !tbaa !71
  %i.wf = trunc nuw i64 %i.wc to i32
  br label %LZ4HC_literalsPrice.exit924.1.thread

LZ4HC_literalsPrice.exit924:                      ; preds = %.preheader1681.preheader
  %.pre2166 = add i32 %i.tu, 1                    ; 3 uses
  store i32 1, ptr %i.ah, align 4, !tbaa !68
  store i32 0, ptr %i.ai, align 4, !tbaa !69
  store i32 %i.bn, ptr %i.aj, align 4, !tbaa !70
  store i32 %i.bn, ptr %i.g, align 4, !tbaa !71
  %i.wg = icmp eq i64 %sext2368, 60129542144
  br i1 %i.wg, label %LZ4HC_literalsPrice.exit924.1.thread, label %LZ4HC_literalsPrice.exit924.1

LZ4HC_literalsPrice.exit924.1.thread:             ; preds = %LZ4HC_literalsPrice.exit924, %LZ4HC_literalsPrice.exit924.thread
  %.pre-phi2387 = phi i32 [ %i.wf, %LZ4HC_literalsPrice.exit924.thread ], [ 15, %LZ4HC_literalsPrice.exit924 ] ; 2 uses
  %.pre-phi21672386 = phi i32 [ %i.wd, %LZ4HC_literalsPrice.exit924.thread ], [ %.pre2166, %LZ4HC_literalsPrice.exit924 ]
  %i.wh = add i32 %.pre-phi2387, -15
  %i.wi = udiv i32 %i.wh, 255
  %i.wj = add nuw i32 %.pre-phi2387, 1
  %i.wk = add nuw nsw i32 %i.wj, %i.wi
  store i32 1, ptr %i.aw, align 4, !tbaa !68
  store i32 0, ptr %i.ax, align 4, !tbaa !69
  store i32 %.pre-phi21672386, ptr %i.ay, align 4, !tbaa !70
  store i32 %i.wk, ptr %i.av, align 4, !tbaa !71
  %i.wl = trunc i64 %i.bm to i32
  %i.wm = add i32 %i.wl, 2
  br label %LZ4HC_literalsPrice.exit924.2.thread

LZ4HC_literalsPrice.exit924.1:                    ; preds = %LZ4HC_literalsPrice.exit924
  store i32 1, ptr %i.al, align 4, !tbaa !68
  store i32 0, ptr %i.am, align 4, !tbaa !69
  store i32 %.pre2166, ptr %i.an, align 4, !tbaa !70
  store i32 %.pre2166, ptr %i.ak, align 4, !tbaa !71
  %i.wn = icmp sgt i64 %i.ts, 12
  %i.wo = trunc i64 %i.bm to i32
  %i.wp = add i32 %i.wo, 2                        ; 3 uses
  br i1 %i.wn, label %LZ4HC_literalsPrice.exit924.2.thread, label %LZ4HC_literalsPrice.exit924.2

LZ4HC_literalsPrice.exit924.2.thread:             ; preds = %LZ4HC_literalsPrice.exit924.1, %LZ4HC_literalsPrice.exit924.1.thread
  %i.wq = phi i32 [ %i.wm, %LZ4HC_literalsPrice.exit924.1.thread ], [ %i.wp, %LZ4HC_literalsPrice.exit924.1 ]
  %i.wr = trunc i64 %i.bm to i32
  %i.ws = add i32 %i.wr, -13
  %i.wt = udiv i32 %i.ws, 255
  %i.wu = trunc i64 %i.bm to i32
  %i.wv = add i32 %i.wu, 3
  %i.ww = add nuw nsw i32 %i.wv, %i.wt
  store i32 1, ptr %i.ba, align 4, !tbaa !68
  store i32 0, ptr %i.bb, align 4, !tbaa !69
  store i32 %i.wq, ptr %i.bc, align 4, !tbaa !70
  store i32 %i.ww, ptr %i.az, align 4, !tbaa !71
  %i.wx = trunc i64 %i.bm to i32
  %i.wy = add i32 %i.wx, 3
  br label %bb.db

LZ4HC_literalsPrice.exit924.2:                    ; preds = %LZ4HC_literalsPrice.exit924.1
  store i32 1, ptr %i.ap, align 4, !tbaa !68
  store i32 0, ptr %i.aq, align 4, !tbaa !69
  store i32 %i.wp, ptr %i.ar, align 4, !tbaa !70
  store i32 %i.wp, ptr %i.ao, align 4, !tbaa !71
  %i.wz = icmp eq i64 %sext2368, 51539607552
  %i.xa = trunc i64 %i.bm to i32
  %i.xb = add i32 %i.xa, 3                        ; 3 uses
  br i1 %i.wz, label %bb.db, label %.lr.ph1801

bb.db:                                            ; preds = %LZ4HC_literalsPrice.exit924.2.thread, %LZ4HC_literalsPrice.exit924.2
  %i.xc = phi i32 [ %i.wy, %LZ4HC_literalsPrice.exit924.2.thread ], [ %i.xb, %LZ4HC_literalsPrice.exit924.2 ]
  %i.xd = trunc i64 %i.bm to i32
  %i.xe = add i32 %i.xd, -12
  %i.xf = udiv i32 %i.xe, 255
  %i.xg = trunc i64 %i.bm to i32
  %i.xh = add i32 %i.xg, 4
  %i.xi = add nuw nsw i32 %i.xh, %i.xf
  br label %.lr.ph1801

LZ4HC_literalsPrice.exit.i930:                    ; preds = %.lr.ph1801, %LZ4HC_sequencePrice.exit933
  %indvars.iv2122 = phi i64 [ 4, %.lr.ph1801 ], [ %indvars.iv.next2123, %LZ4HC_sequencePrice.exit933 ] ; 6 uses
  %i.xj = icmp samesign ugt i64 %indvars.iv2122, 18
  br i1 %i.xj, label %bb.dc, label %LZ4HC_sequencePrice.exit933

bb.dc:                                            ; preds = %LZ4HC_literalsPrice.exit.i930
  %i.xk = trunc i64 %indvars.iv2122 to i32
  %i.xl = add i32 %i.xk, -19
  %i.xm = udiv i32 %i.xl, 255
  %.reass = add i32 %i.xm, %invariant.op
  br label %LZ4HC_sequencePrice.exit933

LZ4HC_sequencePrice.exit933:                      ; preds = %LZ4HC_literalsPrice.exit.i930, %bb.dc
  %.0.i932 = phi i32 [ %.reass, %bb.dc ], [ %i.vz, %LZ4HC_literalsPrice.exit.i930 ]
  %i.xn = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv2122 ; 4 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xp = trunc nuw nsw i64 %indvars.iv2122 to i32
  store i32 %i.xp, ptr %i.xo, align 4, !tbaa !68
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  store i32 %.22370.i.i700, ptr %i.xq, align 4, !tbaa !69
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 12
  store i32 %i.bn, ptr %i.xr, align 4, !tbaa !70
  store i32 %.0.i932, ptr %i.xn, align 4, !tbaa !71
  %indvars.iv.next2123 = add nuw nsw i64 %indvars.iv2122, 1
  %exitcond.not = icmp eq i64 %indvars.iv2122, %.sroa.03.sroa.4.0.insert.shift.i717
  br i1 %exitcond.not, label %.lr.ph1926, label %LZ4HC_literalsPrice.exit.i930, !llvm.loop !63

.lr.ph1926:                                       ; preds = %LZ4HC_sequencePrice.exit933
  %i.xs = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.03.sroa.4.0.insert.shift.i717 ; 3 uses
  %i.xt = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.03.sroa.4.0.insert.shift.i717 ; 4 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  store i32 1, ptr %i.xv, align 4, !tbaa !68
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 20
  store i32 0, ptr %i.xw, align 4, !tbaa !69
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 28
  store i32 1, ptr %i.xx, align 4, !tbaa !70
  %i.xy = load i32, ptr %i.xs, align 4, !tbaa !71
  %i.xz = add nsw i32 %i.xy, 1
  store i32 %i.xz, ptr %i.xu, align 4, !tbaa !71
  %i.ya = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.03.sroa.4.0.insert.shift.i717 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 32
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ya, i64 40
  store i32 1, ptr %i.yc, align 4, !tbaa !68
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ya, i64 36
  store i32 0, ptr %i.yd, align 4, !tbaa !69
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ya, i64 44
  store i32 2, ptr %i.ye, align 4, !tbaa !70
  %i.yf = load i32, ptr %i.xs, align 4, !tbaa !71
  %i.yg = add nsw i32 %i.yf, 2
  store i32 %i.yg, ptr %i.yb, align 4, !tbaa !71
  %i.yh = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.03.sroa.4.0.insert.shift.i717 ; 4 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 48
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 56
  store i32 1, ptr %i.yj, align 4, !tbaa !68
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 52
  store i32 0, ptr %i.yk, align 4, !tbaa !69
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yh, i64 60
  store i32 3, ptr %i.yl, align 4, !tbaa !70
  %i.ym = load i32, ptr %i.xs, align 4, !tbaa !71
  %i.yn = add nsw i32 %i.ym, 3
  store i32 %i.yn, ptr %i.yi, align 4, !tbaa !71
  %i.yo = sub nsw i64 0, %i.cb
  %invariant.gep1806 = getelementptr i8, ptr %i.bp, i64 %i.yo ; 6 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.bo, i64 262144 ; 2 uses
end_hunk_5
begin_hunk_6_@LZ4HC_compress_optimal:bb.a
  %i.blz = load i32, ptr %i.blt, align 4, !tbaa !71
  %i.bma = add nsw i32 %i.blz, 1
  store i32 %i.bma, ptr %i.blv, align 4, !tbaa !71
  %i.bmb = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bls ; 4 uses
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 32
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmb, i64 40
  store i32 1, ptr %i.bmd, align 4, !tbaa !68
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bmb, i64 36
  store i32 0, ptr %i.bme, align 4, !tbaa !69
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bmb, i64 44
  store i32 2, ptr %i.bmf, align 4, !tbaa !70
  %i.bmg = load i32, ptr %i.blt, align 4, !tbaa !71
  %i.bmh = add nsw i32 %i.bmg, 2
  store i32 %i.bmh, ptr %i.bmc, align 4, !tbaa !71
  %i.bmi = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bls ; 4 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 48
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmi, i64 56
  store i32 1, ptr %i.bmk, align 4, !tbaa !68
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmi, i64 52
  store i32 0, ptr %i.bml, align 4, !tbaa !69
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmi, i64 60
  store i32 3, ptr %i.bmm, align 4, !tbaa !70
  %i.bmn = load i32, ptr %i.blt, align 4, !tbaa !71
  %i.bmo = add nsw i32 %i.bmn, 3
  store i32 %i.bmo, ptr %i.bmj, align 4, !tbaa !71
  br label %.loopexit

bb.kz:                                            ; preds = %.lr.ph1920.split, %bb.li
  %indvars.iv2139 = phi i64 [ 4, %.lr.ph1920.split ], [ %indvars.iv.next2140, %bb.li ] ; 8 uses
  %i.bmp = add nuw nsw i64 %indvars.iv2139, %indvars.iv2148 ; 3 uses
  br i1 %i.bir, label %bb.la, label %bb.ld

bb.la:                                            ; preds = %bb.kz
  br i1 %i.bis, label %bb.lb, label %LZ4HC_literalsPrice.exit.i

bb.lb:                                            ; preds = %bb.la
  %i.bmq = load i32, ptr %i.biv, align 4, !tbaa !71
  br label %LZ4HC_literalsPrice.exit.i

LZ4HC_literalsPrice.exit.i:                       ; preds = %bb.la, %bb.lb
  %i.bmr = phi i32 [ %i.bmq, %bb.lb ], [ 0, %bb.la ]
  %i.bms = icmp samesign ugt i64 %indvars.iv2139, 18
  br i1 %i.bms, label %bb.lc, label %LZ4HC_sequencePrice.exit929

bb.lc:                                            ; preds = %LZ4HC_literalsPrice.exit.i
  %i.bmt = trunc i64 %indvars.iv2139 to i32
  %i.bmu = add nsw i32 %i.bmt, -19
  %i.bmv = udiv i32 %i.bmu, 255
  %.reass3007 = add i32 %i.bmv, %invariant.op3006
  br label %LZ4HC_sequencePrice.exit929

LZ4HC_sequencePrice.exit929:                      ; preds = %LZ4HC_literalsPrice.exit.i, %bb.lc
  %.0.i928 = phi i32 [ %.reass3007, %bb.lc ], [ %i.bix, %LZ4HC_literalsPrice.exit.i ]
  %i.bmw = add nsw i32 %.0.i928, %i.bmr
  br label %bb.lf

bb.ld:                                            ; preds = %bb.kz
  %i.bmx = icmp samesign ugt i64 %indvars.iv2139, 18
  br i1 %i.bmx, label %bb.le, label %LZ4HC_sequencePrice.exit

bb.le:                                            ; preds = %bb.ld
  %i.bmy = trunc i64 %indvars.iv2139 to i32
  %i.bmz = add nsw i32 %i.bmy, -19
  %i.bna = udiv i32 %i.bmz, 255
  %i.bnb = add nuw nsw i32 %i.bna, 4
  br label %LZ4HC_sequencePrice.exit

LZ4HC_sequencePrice.exit:                         ; preds = %bb.ld, %bb.le
  %.0.i926 = phi i32 [ %i.bnb, %bb.le ], [ 3, %bb.ld ]
  %i.bnc = add nsw i32 %.0.i926, %i.bim
  br label %bb.lf

bb.lf:                                            ; preds = %LZ4HC_sequencePrice.exit, %LZ4HC_sequencePrice.exit929
  %.0344 = phi i32 [ %i.bmw, %LZ4HC_sequencePrice.exit929 ], [ %i.bnc, %LZ4HC_sequencePrice.exit ] ; 2 uses
  %.0343 = phi i32 [ %i.bif, %LZ4HC_sequencePrice.exit929 ], [ 0, %LZ4HC_sequencePrice.exit ]
  %i.bnd = trunc nuw i64 %i.bmp to i32
  %i.bne = icmp slt i32 %i.biw, %i.bnd
  br i1 %i.bne, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.bnf = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bmp
  %i.bng = load i32, ptr %i.bnf, align 4, !tbaa !71
  %i.bnh = sub nsw i32 %i.bng, %10
  %.not413 = icmp sgt i32 %.0344, %i.bnh
  br i1 %.not413, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bni = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bmp ; 4 uses
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bni, i64 8
  %i.bnk = trunc nuw nsw i64 %indvars.iv2139 to i32
  store i32 %i.bnk, ptr %i.bnj, align 4, !tbaa !68
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bni, i64 4
  store i32 %.22370.i.i.sink, ptr %i.bnl, align 4, !tbaa !69
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bni, i64 12
  store i32 %.0343, ptr %i.bnm, align 4, !tbaa !70
  store i32 %.0344, ptr %i.bni, align 4, !tbaa !71
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg
  %indvars.iv.next2140 = add nuw nsw i64 %indvars.iv2139, 1 ; 2 uses
  %exitcond2143.not = icmp eq i64 %indvars.iv2139, %i.biy
  br i1 %exitcond2143.not, label %.preheader.loopexit.peel.begin, label %bb.kz, !llvm.loop !64

bb.lj:                                            ; preds = %bb.kk
  %i.bnn = add nuw nsw i32 %i.bia, 1
  br label %bb.lk

.loopexit:                                        ; preds = %LZ4HC_InsertAndGetWiderMatch.exit.i, %LZ4HC_InsertAndGetWiderMatch.exit.i466, %.preheader, %bb.dg, %LZ4HC_FindLongerMatch.exit682, %bb.dh
  %.4379.ph = phi i32 [ %.03751925, %bb.dg ], [ %.03751925, %bb.dh ], [ %.03751925, %LZ4HC_FindLongerMatch.exit682 ], [ %.1376.lcssa, %.preheader ], [ %.03751925, %LZ4HC_InsertAndGetWiderMatch.exit.i466 ], [ %.03751925, %LZ4HC_InsertAndGetWiderMatch.exit.i ] ; 3 uses
  %indvars.iv.next2149 = add nuw nsw i64 %indvars.iv2148, 1 ; 2 uses
  %i.bno = zext nneg i32 %.4379.ph to i64
  %i.bnp = icmp samesign ult i64 %indvars.iv.next2149, %i.bno
  br i1 %i.bnp, label %bb.dd, label %.thread1566, !llvm.loop !65

.thread1566:                                      ; preds = %.loopexit, %bb.dd
  %.0375.lcssa.ph = phi i32 [ %.4379.ph, %.loopexit ], [ %.03751925, %bb.dd ] ; 3 uses
  %i.bnq = zext nneg i32 %.0375.lcssa.ph to i64
  %i.bnr = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.bnq ; 2 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnr, i64 8
  %i.bnt = load i32, ptr %i.bns, align 4, !tbaa !68 ; 2 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnr, i64 4
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !69
  %i.bnw = sub nsw i32 %.0375.lcssa.ph, %i.bnt
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %.thread1566
  %.2389 = phi i32 [ %i.bnt, %.thread1566 ], [ %.sroa.0104.4.extract.trunc, %bb.lj ]
  %.2386 = phi i32 [ %i.bnv, %.thread1566 ], [ %.22370.i.i.sink, %bb.lj ]
  %.1383 = phi i32 [ %i.bnw, %.thread1566 ], [ %i.bia, %bb.lj ]
  %.6381 = phi i32 [ %.0375.lcssa.ph, %.thread1566 ], [ %i.bnn, %bb.lj ] ; 2 uses
  br label %bb.ll

bb.ll:                                            ; preds = %bb.ll, %bb.lk
  %.0340 = phi i32 [ %.1383, %bb.lk ], [ %i.boe, %bb.ll ] ; 3 uses
  %.0339 = phi i32 [ %.2389, %bb.lk ], [ %i.boa, %bb.ll ]
  %.0338 = phi i32 [ %.2386, %bb.lk ], [ %i.boc, %bb.ll ]
  %i.bnx = sext i32 %.0340 to i64
  %i.bny = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bnx ; 2 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 8 ; 2 uses
  %i.boa = load i32, ptr %i.bnz, align 4, !tbaa !68 ; 3 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bny, i64 4 ; 2 uses
  %i.boc = load i32, ptr %i.bob, align 4, !tbaa !69
  store i32 %.0339, ptr %i.bnz, align 4, !tbaa !68
  store i32 %.0338, ptr %i.bob, align 4, !tbaa !69
  %i.bod = icmp sgt i32 %i.boa, %.0340
  %i.boe = sub nsw i32 %.0340, %i.boa
  br i1 %i.bod, label %.preheader1676, label %bb.ll

.preheader1676:                                   ; preds = %bb.ll
  %i.bof = icmp sgt i32 %.6381, 0
  br i1 %i.bof, label %.lr.ph1948, label %.loopexit1677

.lr.ph1948:                                       ; preds = %.preheader1676, %bb.ly
  %.03371947 = phi i32 [ %.1, %bb.ly ], [ 0, %.preheader1676 ] ; 3 uses
  %.112871946 = phi ptr [ %.21288, %bb.ly ], [ %.012861969, %.preheader1676 ] ; 10 uses
  %.112921945 = phi ptr [ %.21293, %bb.ly ], [ %.012911968, %.preheader1676 ] ; 4 uses
  %.112991944 = phi ptr [ %.21300, %bb.ly ], [ %.012981967, %.preheader1676 ] ; 4 uses
  %i.bog = sext i32 %.03371947 to i64
  %i.boh = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bog ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 8
  %i.boj = load i32, ptr %i.boi, align 4, !tbaa !68 ; 4 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boh, i64 4
  %i.bol = load i32, ptr %i.bok, align 4, !tbaa !69 ; 2 uses
  %i.bom = icmp eq i32 %i.boj, 1
  br i1 %i.bom, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %.lr.ph1948
  %i.bon = getelementptr inbounds nuw i8, ptr %.112991944, i64 1
  %i.boo = add nsw i32 %.03371947, 1
  br label %bb.ly, !llvm.loop !66

bb.ln:                                            ; preds = %.lr.ph1948
  %i.bop = add nsw i32 %i.boj, %.03371947
  %i.boq = getelementptr i8, ptr %.112871946, i64 1 ; 4 uses
  %i.bor = ptrtoint ptr %.112991944 to i64        ; 3 uses
  %i.bos = ptrtoint ptr %.112921945 to i64        ; 3 uses
  %i.bot = sub i64 %i.bor, %i.bos                 ; 6 uses
  %i.bou = udiv i64 %i.bot, 255
  %i.bov = getelementptr inbounds nuw i8, ptr %i.boq, i64 %i.bou
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 %i.bot
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 8
  %i.boy = icmp ugt ptr %i.box, %spec.select
  %or.cond.i = select i1 %.not.i, i1 %i.boy, i1 false
  br i1 %or.cond.i, label %.thread1572.loopexit, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.boz = icmp ugt i64 %i.bot, 14
  br i1 %i.boz, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.bpa = add i64 %i.bot, -15                    ; 2 uses
  store i8 -16, ptr %.112871946, align 1, !tbaa !39
  %i.bpb = icmp ugt i64 %i.bpa, 254
  br i1 %i.bpb, label %.lr.ph1933.preheader, label %._crit_edge1934

.lr.ph1933.preheader:                             ; preds = %bb.lp
  %i.bpc = add i64 %i.bor, -270
  %i.bpd = sub i64 %i.bpc, %i.bos                 ; 2 uses
  %i.bpe = udiv i64 %i.bpd, 255                   ; 3 uses
  %i.bpf = add nuw nsw i64 %i.bpe, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.boq, i8 -1, i64 range(i64 0, 72340172838076675) %i.bpf, i1 false), !tbaa !39
  %scevgep = getelementptr i8, ptr %.112871946, i64 2
  %scevgep2151 = getelementptr i8, ptr %scevgep, i64 %i.bpe
  %.neg2369 = mul i64 %i.bpe, -255
  %i.bpg = add i64 %.neg2369, %i.bpd
  br label %._crit_edge1934

._crit_edge1934:                                  ; preds = %.lr.ph1933.preheader, %bb.lp
  %.17.lcssa = phi ptr [ %i.boq, %bb.lp ], [ %scevgep2151, %.lr.ph1933.preheader ] ; 2 uses
  %.0.i428.lcssa = phi i64 [ %i.bpa, %bb.lp ], [ %i.bpg, %.lr.ph1933.preheader ]
  %i.bph = trunc nuw i64 %.0.i428.lcssa to i8
  %i.bpi = getelementptr inbounds nuw i8, ptr %.17.lcssa, i64 1
  store i8 %i.bph, ptr %.17.lcssa, align 1, !tbaa !39
  br label %bb.lr

bb.lq:                                            ; preds = %bb.lo
  %.tr.i425 = trunc nuw nsw i64 %i.bot to i8
  %i.bpj = shl nuw i8 %.tr.i425, 4
  store i8 %i.bpj, ptr %.112871946, align 1, !tbaa !39
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %._crit_edge1934
  %.13 = phi ptr [ %i.bpi, %._crit_edge1934 ], [ %i.boq, %bb.lq ] ; 3 uses
  %i.bpk = getelementptr inbounds nuw i8, ptr %.13, i64 %i.bot ; 3 uses
  br label %bb.ls

bb.ls:                                            ; preds = %bb.ls, %bb.lr
  %.09.i442 = phi ptr [ %.13, %bb.lr ], [ %i.bpm, %bb.ls ] ; 2 uses
  %.0.i443 = phi ptr [ %.112921945, %bb.lr ], [ %i.bpn, %bb.ls ] ; 2 uses
  %i.bpl = load i64, ptr %.0.i443, align 1
  store i64 %i.bpl, ptr %.09.i442, align 1
  %i.bpm = getelementptr inbounds nuw i8, ptr %.09.i442, i64 8 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %.0.i443, i64 8
  %i.bpo = icmp ult ptr %i.bpm, %i.bpk
  br i1 %i.bpo, label %bb.ls, label %LZ4_wildCopy8.exit444, !llvm.loop !7

LZ4_wildCopy8.exit444:                            ; preds = %bb.ls
  %i.bpp = trunc i32 %i.bol to i16
  store i16 %i.bpp, ptr %i.bpk, align 1, !tbaa !38
  %i.bpq = getelementptr i8, ptr %i.bpk, i64 2    ; 4 uses
  %i.bpr = sext i32 %i.boj to i64                 ; 4 uses
  %i.bps = add nsw i64 %i.bpr, -4                 ; 3 uses
  %i.bpt = udiv i64 %i.bps, 255
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpq, i64 %i.bpt
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 6
  %i.bpw = icmp ugt ptr %i.bpv, %spec.select
  %or.cond64.i = select i1 %.not.i, i1 %i.bpw, i1 false
  br i1 %or.cond64.i, label %.thread1572.loopexit, label %bb.lt

bb.lt:                                            ; preds = %LZ4_wildCopy8.exit444
  %i.bpx = icmp ugt i64 %i.bps, 14
  br i1 %i.bpx, label %bb.lu, label %bb.lx

bb.lu:                                            ; preds = %bb.lt
  %i.bpy = load i8, ptr %.112871946, align 1, !tbaa !39
  %i.bpz = add i8 %i.bpy, 15
  store i8 %i.bpz, ptr %.112871946, align 1, !tbaa !39
  %i.bqa = add nsw i64 %i.bpr, -19                ; 2 uses
  %i.bqb = icmp ugt i64 %i.bqa, 509
  br i1 %i.bqb, label %.lr.ph1940.preheader, label %._crit_edge1941

.lr.ph1940.preheader:                             ; preds = %bb.lu
  %i.bqc = add nsw i64 %i.bpr, -529               ; 2 uses
  %i.bqd = udiv i64 %i.bqc, 510                   ; 2 uses
  %i.bqe = shl nuw nsw i64 %i.bqd, 1              ; 2 uses
  %i.bqf = add nuw nsw i64 %i.bqe, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bpq, i8 -1, i64 range(i64 0, 72340172838076675) %i.bqf, i1 false), !tbaa !39
  %scevgep2152 = getelementptr i8, ptr %.13, i64 4
  %i.bqg = add i64 %i.bqe, %i.bor
  %i.bqh = sub i64 %i.bqg, %i.bos
  %scevgep2153 = getelementptr i8, ptr %scevgep2152, i64 %i.bqh
  %.neg2370 = mul i64 %i.bqd, -510
  %i.bqi = add i64 %.neg2370, %i.bqc
  br label %._crit_edge1941

._crit_edge1941:                                  ; preds = %.lr.ph1940.preheader, %bb.lu
  %.15.lcssa = phi ptr [ %i.bpq, %bb.lu ], [ %scevgep2153, %.lr.ph1940.preheader ] ; 3 uses
  %.050.i426.lcssa = phi i64 [ %i.bqa, %bb.lu ], [ %i.bqi, %.lr.ph1940.preheader ] ; 3 uses
  %i.bqj = icmp samesign ugt i64 %.050.i426.lcssa, 254
  br i1 %i.bqj, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %._crit_edge1941
  %i.bqk = add nsw i64 %.050.i426.lcssa, -255
  %i.bql = getelementptr inbounds nuw i8, ptr %.15.lcssa, i64 1
  store i8 -1, ptr %.15.lcssa, align 1, !tbaa !39
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %._crit_edge1941
  %.16 = phi ptr [ %i.bql, %bb.lv ], [ %.15.lcssa, %._crit_edge1941 ] ; 2 uses
  %.1.i427 = phi i64 [ %i.bqk, %bb.lv ], [ %.050.i426.lcssa, %._crit_edge1941 ]
  %i.bqm = trunc nuw i64 %.1.i427 to i8
  %i.bqn = getelementptr inbounds nuw i8, ptr %.16, i64 1
  store i8 %i.bqm, ptr %.16, align 1, !tbaa !39
  br label %select.unfold1571

bb.lx:                                            ; preds = %bb.lt
  %i.bqo = trunc nuw nsw i64 %i.bps to i8
  %i.bqp = load i8, ptr %.112871946, align 1, !tbaa !39
  %i.bqq = add i8 %i.bqp, %i.bqo
  store i8 %i.bqq, ptr %.112871946, align 1, !tbaa !39
  br label %select.unfold1571

select.unfold1571:                                ; preds = %bb.lx, %bb.lw
  %.14 = phi ptr [ %i.bqn, %bb.lw ], [ %i.bpq, %bb.lx ]
  %i.bqr = getelementptr inbounds i8, ptr %.112991944, i64 %i.bpr ; 2 uses
  br label %bb.ly

bb.ly:                                            ; preds = %select.unfold1571, %bb.lm
  %.21300 = phi ptr [ %i.bon, %bb.lm ], [ %i.bqr, %select.unfold1571 ] ; 2 uses
  %.21293 = phi ptr [ %.112921945, %bb.lm ], [ %i.bqr, %select.unfold1571 ] ; 2 uses
  %.21288 = phi ptr [ %.112871946, %bb.lm ], [ %.14, %select.unfold1571 ] ; 2 uses
  %.1 = phi i32 [ %i.boo, %bb.lm ], [ %i.bop, %select.unfold1571 ] ; 2 uses
  %i.bqs = icmp slt i32 %.1, %.6381
  br i1 %i.bqs, label %.lr.ph1948, label %.loopexit1677

select.unfold1581:                                ; preds = %bb.da, %bb.cz
  %.20 = phi ptr [ %i.vp, %bb.cz ], [ %i.ut, %bb.da ]
  %i.bqt = getelementptr inbounds nuw i8, ptr %.012981967, i64 %.sroa.03.sroa.4.0.insert.shift.i717 ; 2 uses
  br label %.loopexit1677

.loopexit1677:                                    ; preds = %bb.ly, %.preheader1676, %select.unfold1581, %LZ4HC_FindLongerMatch.exit915.thread
  %.31301 = phi ptr [ %i.tv, %LZ4HC_FindLongerMatch.exit915.thread ], [ %i.bqt, %select.unfold1581 ], [ %.012981967, %.preheader1676 ], [ %.21300, %bb.ly ] ; 2 uses
  %.31294 = phi ptr [ %.012911968, %LZ4HC_FindLongerMatch.exit915.thread ], [ %i.bqt, %select.unfold1581 ], [ %.012911968, %.preheader1676 ], [ %.21293, %bb.ly ] ; 2 uses
  %.3 = phi ptr [ %.012861969, %LZ4HC_FindLongerMatch.exit915.thread ], [ %.20, %select.unfold1581 ], [ %.012861969, %.preheader1676 ], [ %.21288, %bb.ly ] ; 2 uses
  %.not = icmp ugt ptr %.31301, %i.k
  br i1 %.not, label %.loopexit1682, label %bb.c

.loopexit1682:                                    ; preds = %.loopexit1677, %bb.b, %LZ4HC_encodeSequence.exit
  %.41295 = phi ptr [ %i.bva, %LZ4HC_encodeSequence.exit ], [ %1, %bb.b ], [ %.31294, %.loopexit1677 ] ; 3 uses
  %.41289 = phi ptr [ %.12, %LZ4HC_encodeSequence.exit ], [ %2, %bb.b ], [ %.3, %.loopexit1677 ] ; 3 uses
  %i.bqu = ptrtoint ptr %i.j to i64
  %i.bqv = ptrtoint ptr %.41295 to i64
  %i.bqw = sub i64 %i.bqu, %i.bqv                 ; 3 uses
  %i.bqx = add i64 %i.bqw, 240
  %i.bqy = udiv i64 %i.bqx, 255
  %spec.select422.idx = select i1 %i.p, i64 5, i64 0
  %spec.select422 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %spec.select422.idx ; 2 uses
  %.not417 = icmp ne i32 %7, 0
  %i.bqz = getelementptr i8, ptr %.41289, i64 %i.bqy
  %i.bra = getelementptr i8, ptr %i.bqz, i64 1
  %i.brb = getelementptr i8, ptr %i.bra, i64 %i.bqw
  %i.brc = icmp ugt ptr %i.brb, %spec.select422
  %or.cond1655 = select i1 %.not417, i1 %i.brc, i1 false
  br i1 %or.cond1655, label %bb.lz, label %bb.ma

.thread1609:                                      ; preds = %bb.mf, %bb.me
  %i.brd = ptrtoint ptr %i.j to i64
  %i.bre = sub i64 %i.brd, %i.bsq                 ; 3 uses
  %i.brf = add i64 %i.bre, 240
  %i.brg = udiv i64 %i.brf, 255
  %i.brh = getelementptr i8, ptr %.4.ph, i64 %i.brg
  %i.bri = getelementptr i8, ptr %i.brh, i64 1
  %i.brj = getelementptr i8, ptr %i.bri, i64 %i.bre
  %i.brk = icmp ugt ptr %i.brj, %i.o
  br i1 %i.brk, label %.thread1618, label %bb.ma

bb.lz:                                            ; preds = %.loopexit1682
  %i.brl = icmp eq i32 %7, 1
  br i1 %i.brl, label %bb.mp, label %.thread1618

.thread1618:                                      ; preds = %.thread1609, %bb.lz
  %spec.select422160816141625 = phi ptr [ %spec.select422, %bb.lz ], [ %i.o, %.thread1609 ]
  %.41289160616151624 = phi ptr [ %.41289, %bb.lz ], [ %.4.ph, %.thread1609 ] ; 2 uses
  %.41295160416161623 = phi ptr [ %.41295, %bb.lz ], [ %.31294.ph, %.thread1609 ]
  %i.brm = ptrtoint ptr %spec.select422160816141625 to i64
  %i.brn = ptrtoint ptr %.41289160616151624 to i64
  %i.bro = xor i64 %i.brn, -1
  %i.brp = add i64 %i.bro, %i.brm                 ; 2 uses
  %i.brq = add i64 %i.brp, 241
  %i.brr = lshr i64 %i.brq, 8
  %i.brs = sub i64 %i.brp, %i.brr
  br label %bb.ma

bb.ma:                                            ; preds = %.thread1609, %.thread1618, %.loopexit1682
  %.412891607 = phi ptr [ %.41289160616151624, %.thread1618 ], [ %.4.ph, %.thread1609 ], [ %.41289, %.loopexit1682 ] ; 6 uses
  %.412951605 = phi ptr [ %.41295160416161623, %.thread1618 ], [ %.31294.ph, %.thread1609 ], [ %.41295, %.loopexit1682 ] ; 2 uses
  %.0336 = phi i64 [ %i.brs, %.thread1618 ], [ %i.bre, %.thread1609 ], [ %i.bqw, %.loopexit1682 ] ; 7 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %.412951605, i64 %.0336
  %i.bru = icmp ugt i64 %.0336, 14
  %.512901988 = getelementptr i8, ptr %.412891607, i64 1 ; 3 uses
  br i1 %i.bru, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  %i.brv = add i64 %.0336, -15                    ; 2 uses
  store i8 -16, ptr %.412891607, align 1, !tbaa !39
  %i.brw = icmp ugt i64 %i.brv, 254
  br i1 %i.brw, label %.lr.ph1992.preheader, label %._crit_edge1993

.lr.ph1992.preheader:                             ; preds = %bb.mb
  %i.brx = add i64 %.0336, -270                   ; 2 uses
  %i.bry = udiv i64 %i.brx, 255                   ; 3 uses
  %i.brz = add nuw nsw i64 %i.bry, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.512901988, i8 -1, i64 range(i64 0, 72340172838076673) %i.brz, i1 false), !tbaa !39
  %scevgep2160 = getelementptr i8, ptr %.412891607, i64 %i.brz
  %.neg2375 = mul i64 %i.bry, -255
  %i.bsa = add i64 %.neg2375, %i.brx
  %i.bsb = getelementptr i8, ptr %.412891607, i64 %i.bry
  %scevgep2161 = getelementptr i8, ptr %i.bsb, i64 2
  br label %._crit_edge1993

._crit_edge1993:                                  ; preds = %.lr.ph1992.preheader, %bb.mb
  %.412891607.pn.lcssa = phi ptr [ %.412891607, %bb.mb ], [ %scevgep2160, %.lr.ph1992.preheader ]
  %.0.lcssa = phi i64 [ %i.brv, %bb.mb ], [ %i.bsa, %.lr.ph1992.preheader ]
  %.51290.lcssa = phi ptr [ %.512901988, %bb.mb ], [ %scevgep2161, %.lr.ph1992.preheader ]
  %i.bsc = trunc nuw i64 %.0.lcssa to i8
  %i.bsd = getelementptr inbounds nuw i8, ptr %.412891607.pn.lcssa, i64 2
  store i8 %i.bsc, ptr %.51290.lcssa, align 1, !tbaa !39
  br label %bb.md

bb.mc:                                            ; preds = %bb.ma
  %.0336.tr = trunc nuw nsw i64 %.0336 to i8
  %i.bse = shl nuw i8 %.0336.tr, 4
  store i8 %i.bse, ptr %.412891607, align 1, !tbaa !39
  br label %bb.md

bb.md:                                            ; preds = %._crit_edge1993, %bb.mc
  %.6 = phi ptr [ %i.bsd, %._crit_edge1993 ], [ %.512901988, %bb.mc ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.6, ptr align 1 %.412951605, i64 %.0336, i1 false)
  %i.bsf = getelementptr inbounds nuw i8, ptr %.6, i64 %.0336
  %i.bsg = ptrtoint ptr %i.brt to i64
  %i.bsh = ptrtoint ptr %1 to i64
  %i.bsi = sub i64 %i.bsg, %i.bsh
  %i.bsj = trunc i64 %i.bsi to i32
  store i32 %i.bsj, ptr %3, align 4, !tbaa !29
  %i.bsk = ptrtoint ptr %i.bsf to i64
  %i.bsl = ptrtoint ptr %2 to i64
  %i.bsm = sub i64 %i.bsk, %i.bsl
  %i.bsn = trunc i64 %i.bsm to i32
  br label %bb.mp

.thread1572.loopexit:                             ; preds = %bb.ln, %LZ4_wildCopy8.exit444
  %i.bso = sext i32 %i.boj to i64
  br label %.thread1572

.thread1572:                                      ; preds = %LZ4_wildCopy8.exit, %bb.cq, %.thread1572.loopexit
  %.31301.ph = phi ptr [ %.112991944, %.thread1572.loopexit ], [ %.012981967, %bb.cq ], [ %.012981967, %LZ4_wildCopy8.exit ] ; 2 uses
  %.31294.ph = phi ptr [ %.112921945, %.thread1572.loopexit ], [ %.012911968, %bb.cq ], [ %.012911968, %LZ4_wildCopy8.exit ] ; 4 uses
  %.5374.ph = phi i32 [ %i.bol, %.thread1572.loopexit ], [ %.22370.i.i700, %bb.cq ], [ %.22370.i.i700, %LZ4_wildCopy8.exit ]
  %.5.ph = phi i64 [ %i.bso, %.thread1572.loopexit ], [ %.sroa.03.sroa.4.0.insert.shift.i717, %bb.cq ], [ %.sroa.03.sroa.4.0.insert.shift.i717, %LZ4_wildCopy8.exit ]
  %.4.ph = phi ptr [ %.112871946, %.thread1572.loopexit ], [ %.012861969, %bb.cq ], [ %.012861969, %LZ4_wildCopy8.exit ] ; 12 uses
  br i1 %i.p, label %bb.me, label %bb.mp

bb.me:                                            ; preds = %.thread1572
  %i.bsp = ptrtoint ptr %.31301.ph to i64         ; 3 uses
  %i.bsq = ptrtoint ptr %.31294.ph to i64         ; 4 uses
  %i.bsr = sub i64 %i.bsp, %i.bsq                 ; 6 uses
  %i.bss = add i64 %i.bsr, 240
  %i.bst = udiv i64 %i.bss, 255
  %i.bsu = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.bsv = getelementptr i8, ptr %.4.ph, i64 %i.bst
  %i.bsw = getelementptr i8, ptr %i.bsv, i64 1
  %i.bsx = getelementptr i8, ptr %i.bsw, i64 %i.bsr ; 3 uses
  %.not416 = icmp ugt ptr %i.bsx, %i.bsu
  br i1 %.not416, label %.thread1609, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bsy = ptrtoint ptr %i.bsu to i64
  %i.bsz = ptrtoint ptr %i.bsx to i64
  %i.bta = sub i64 %i.bsy, %i.bsz
  %i.btb = mul i64 %i.bta, 255
  %i.btc = add i64 %i.btb, 18
  %spec.select4241662 = tail call i64 @llvm.umin.i64(i64 %i.btc, i64 %.5.ph)
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bsx, i64 2
  %i.bte = ptrtoint ptr %i.o to i64
  %i.btf = ptrtoint ptr %i.btd to i64
  %sext = shl i64 %spec.select4241662, 32
  %i.btg = ashr exact i64 %sext, 32               ; 5 uses
  %i.bth = add i64 %i.btg, %i.bte
  %i.bti = sub i64 %i.btf, %i.bth
  %i.btj = icmp slt i64 %i.bti, -12
  br i1 %i.btj, label %bb.mg, label %.thread1609

bb.mg:                                            ; preds = %bb.mf
  %i.btk = getelementptr i8, ptr %.4.ph, i64 1    ; 3 uses
  %i.btl = icmp ugt i64 %i.bsr, 14
  br i1 %i.btl, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  %i.btm = add i64 %i.bsr, -15                    ; 2 uses
  store i8 -16, ptr %.4.ph, align 1, !tbaa !39
  %i.btn = icmp ugt i64 %i.btm, 254
  br i1 %i.btn, label %.lr.ph1977.preheader, label %._crit_edge1978

.lr.ph1977.preheader:                             ; preds = %bb.mh
  %i.bto = add i64 %i.bsp, -270
  %i.btp = sub i64 %i.bto, %i.bsq                 ; 2 uses
  %i.btq = udiv i64 %i.btp, 255                   ; 3 uses
  %i.btr = add nuw nsw i64 %i.btq, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.btk, i8 -1, i64 range(i64 0, 72340172838076675) %i.btr, i1 false), !tbaa !39
  %i.bts = getelementptr i8, ptr %.4.ph, i64 %i.btq
  %scevgep2158 = getelementptr i8, ptr %i.bts, i64 2
  %.neg2373 = mul i64 %i.btq, -255
  %i.btt = add i64 %.neg2373, %i.btp
  br label %._crit_edge1978

._crit_edge1978:                                  ; preds = %.lr.ph1977.preheader, %bb.mh
  %.11.lcssa = phi ptr [ %i.btk, %bb.mh ], [ %scevgep2158, %.lr.ph1977.preheader ] ; 2 uses
  %.0.i.lcssa = phi i64 [ %i.btm, %bb.mh ], [ %i.btt, %.lr.ph1977.preheader ]
  %i.btu = trunc nuw i64 %.0.i.lcssa to i8
  %i.btv = getelementptr inbounds nuw i8, ptr %.11.lcssa, i64 1
  store i8 %i.btu, ptr %.11.lcssa, align 1, !tbaa !39
  br label %bb.mj

bb.mi:                                            ; preds = %bb.mg
  %.tr.i = trunc nuw nsw i64 %i.bsr to i8
  %i.btw = shl nuw i8 %.tr.i, 4
  store i8 %i.btw, ptr %.4.ph, align 1, !tbaa !39
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %._crit_edge1978
  %.8 = phi ptr [ %i.btv, %._crit_edge1978 ], [ %i.btk, %bb.mi ] ; 3 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %.8, i64 %i.bsr ; 3 uses
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mk, %bb.mj
  %.09.i445 = phi ptr [ %.8, %bb.mj ], [ %i.btz, %bb.mk ] ; 2 uses
  %.0.i446 = phi ptr [ %.31294.ph, %bb.mj ], [ %i.bua, %bb.mk ] ; 2 uses
  %i.bty = load i64, ptr %.0.i446, align 1
  store i64 %i.bty, ptr %.09.i445, align 1
  %i.btz = getelementptr inbounds nuw i8, ptr %.09.i445, i64 8 ; 2 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %.0.i446, i64 8
  %i.bub = icmp ult ptr %i.btz, %i.btx
  br i1 %i.bub, label %bb.mk, label %LZ4_wildCopy8.exit447, !llvm.loop !7

LZ4_wildCopy8.exit447:                            ; preds = %bb.mk
  %i.buc = trunc i32 %.5374.ph to i16
  store i16 %i.buc, ptr %i.btx, align 1, !tbaa !38
  %i.bud = getelementptr i8, ptr %i.btx, i64 2    ; 3 uses
  %i.bue = add nsw i64 %i.btg, -4                 ; 2 uses
  %i.buf = icmp ugt i64 %i.bue, 14
  br i1 %i.buf, label %bb.ml, label %bb.mo

bb.ml:                                            ; preds = %LZ4_wildCopy8.exit447
  %i.bug = load i8, ptr %.4.ph, align 1, !tbaa !39
  %i.buh = add i8 %i.bug, 15
  store i8 %i.buh, ptr %.4.ph, align 1, !tbaa !39
  %i.bui = add nsw i64 %i.btg, -19                ; 2 uses
  %i.buj = icmp ugt i64 %i.bui, 509
  br i1 %i.buj, label %.lr.ph1984.preheader, label %._crit_edge1985

.lr.ph1984.preheader:                             ; preds = %bb.ml
  %i.buk = add nsw i64 %i.btg, -529               ; 2 uses
  %i.bul = udiv i64 %i.buk, 510                   ; 2 uses
  %i.bum = shl nuw nsw i64 %i.bul, 1              ; 2 uses
  %i.bun = add nuw nsw i64 %i.bum, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bud, i8 -1, i64 range(i64 0, 72340172838076675) %i.bun, i1 false), !tbaa !39
  %i.buo = add i64 %i.bum, %i.bsp
  %i.bup = add i64 %i.buo, 4
  %i.buq = sub i64 %i.bup, %i.bsq
  %scevgep2159 = getelementptr i8, ptr %.8, i64 %i.buq
  %.neg2374 = mul i64 %i.bul, -510
  %i.bur = add i64 %.neg2374, %i.buk
  br label %._crit_edge1985

._crit_edge1985:                                  ; preds = %.lr.ph1984.preheader, %bb.ml
  %.9.lcssa = phi ptr [ %i.bud, %bb.ml ], [ %scevgep2159, %.lr.ph1984.preheader ] ; 3 uses
  %.050.i.lcssa = phi i64 [ %i.bui, %bb.ml ], [ %i.bur, %.lr.ph1984.preheader ] ; 3 uses
  %i.bus = icmp samesign ugt i64 %.050.i.lcssa, 254
  br i1 %i.bus, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %._crit_edge1985
  %i.but = add nsw i64 %.050.i.lcssa, -255
  %i.buu = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 1
  store i8 -1, ptr %.9.lcssa, align 1, !tbaa !39
  br label %bb.mn

bb.mn:                                            ; preds = %bb.mm, %._crit_edge1985
  %.10 = phi ptr [ %i.buu, %bb.mm ], [ %.9.lcssa, %._crit_edge1985 ] ; 2 uses
  %.1.i = phi i64 [ %i.but, %bb.mm ], [ %.050.i.lcssa, %._crit_edge1985 ]
  %i.buv = trunc nuw i64 %.1.i to i8
  %i.buw = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.buv, ptr %.10, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit

bb.mo:                                            ; preds = %LZ4_wildCopy8.exit447
  %i.bux = trunc nuw nsw i64 %i.bue to i8
  %i.buy = load i8, ptr %.4.ph, align 1, !tbaa !39
  %i.buz = add i8 %i.buy, %i.bux
  store i8 %i.buz, ptr %.4.ph, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.mn, %bb.mo
  %.12 = phi ptr [ %i.buw, %bb.mn ], [ %i.bud, %bb.mo ]
  %i.bva = getelementptr inbounds i8, ptr %.31301.ph, i64 %i.btg
  br label %.loopexit1682

bb.mp:                                            ; preds = %bb.md, %.thread1572, %bb.lz
  %.1349 = phi i32 [ 0, %bb.lz ], [ %i.bsn, %bb.md ], [ 0, %.thread1572 ]
  tail call void @free(ptr noundef nonnull %i.g) #18
  br label %.thread1632

.thread1632:                                      ; preds = %bb.a, %bb.mp
  %.0347 = phi i32 [ 0, %bb.a ], [ %.1349, %bb.mp ]
  ret i32 %.0347
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i32 } @LZ4MID_searchExtDict(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 262144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 262152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 262168
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = add i64 %i.g, %i.j                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 65536
  %.val105 = load i64, ptr %0, align 1            ; 6 uses
  %i.m = mul i64 %.val105, -3523014627193167104
  %i.n = lshr i64 %i.m, 50
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29   ; 2 uses
  %i.q = trunc i64 %i.k to i32                    ; 2 uses
  %i.r = add i32 %4, %i.p
  %.neg = sub i32 %1, %i.r
  %i.s = add i32 %.neg, %i.q                      ; 2 uses
  %i.t = icmp ult i32 %i.s, 65536
  br i1 %i.t, label %bb.b, label %.thread114

bb.b:                                             ; preds = %bb.a
  %i.u = sub nsw i64 0, %i.j
  %i.v = getelementptr inbounds i8, ptr %i.d, i64 %i.u
  %i.w = zext i32 %i.p to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w ; 3 uses
  %i.y = sub i64 %i.k, %i.w
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa
  %. = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ab) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %. ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -7 ; 2 uses
  %i.ae = icmp sgt i64 %., 7
  br i1 %i.ae, label %bb.c, label %bb.e, !prof !31

bb.c:                                             ; preds = %bb.b
  %.val98 = load i64, ptr %i.x, align 1, !tbaa !34 ; 2 uses
  %.not.i93 = icmp eq i64 %.val98, %.val105
  br i1 %.not.i93, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = xor i64 %.val98, %.val105
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ah, i1 true)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = lshr i32 %i.aj, 3
  br label %bb.o

bb.e:                                             ; preds = %.thread, %bb.b
  %.150.i76 = phi ptr [ %i.af, %.thread ], [ %0, %bb.b ] ; 3 uses
  %.145.i77 = phi ptr [ %i.ag, %.thread ], [ %i.x, %bb.b ] ; 2 uses
  %i.al = icmp ult ptr %.150.i76, %i.ad
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !prof !35

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.246.i80152 = phi ptr [ %i.au, %bb.f ], [ %.145.i77, %bb.e ] ; 2 uses
  %.251.i79151 = phi ptr [ %i.at, %bb.f ], [ %.150.i76, %bb.e ] ; 3 uses
  %.246.i80.val100 = load i64, ptr %.246.i80152, align 1, !tbaa !34 ; 2 uses
  %.251.i79.val99 = load i64, ptr %.251.i79151, align 1, !tbaa !34 ; 2 uses
  %.not59.i89 = icmp eq i64 %.246.i80.val100, %.251.i79.val99
  br i1 %.not59.i89, label %bb.f, label %.thread110

.thread110:                                       ; preds = %.lr.ph
  %i.am = xor i64 %.251.i79.val99, %.246.i80.val100
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.am, i1 true)
  %i.ao = lshr i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.251.i79151, i64 %i.ao
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.aa
  %i.as = trunc i64 %i.ar to i32
  br label %bb.o

bb.f:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.251.i79151, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.246.i80152, i64 8 ; 2 uses
  %i.av = icmp ult ptr %i.at, %i.ad
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !prof !36

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.251.i79.lcssa = phi ptr [ %.150.i76, %bb.e ], [ %i.at, %bb.f ] ; 5 uses
  %.246.i80.lcssa = phi ptr [ %.145.i77, %bb.e ], [ %i.au, %bb.f ] ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ac, i64 -3
  %i.ax = icmp ult ptr %.251.i79.lcssa, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %.246.i80.val = load i32, ptr %.246.i80.lcssa, align 1, !tbaa !28
  %.251.i79.val = load i32, ptr %.251.i79.lcssa, align 1, !tbaa !28
  %i.ay = icmp eq i32 %.246.i80.val, %.251.i79.val
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.251.i79.lcssa, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.246.i80.lcssa, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge
  %.453.i82 = phi ptr [ %i.az, %bb.h ], [ %.251.i79.lcssa, %bb.g ], [ %.251.i79.lcssa, %._crit_edge ] ; 5 uses
  %.448.i83 = phi ptr [ %i.ba, %bb.h ], [ %.246.i80.lcssa, %bb.g ], [ %.246.i80.lcssa, %._crit_edge ] ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.bc = icmp ult ptr %.453.i82, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.448.i83.val = load i16, ptr %.448.i83, align 1, !tbaa !38
  %.453.i82.val = load i16, ptr %.453.i82, align 1, !tbaa !38
  %i.bd = icmp eq i16 %.448.i83.val, %.453.i82.val
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.453.i82, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.448.i83, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.554.i84 = phi ptr [ %i.be, %bb.k ], [ %.453.i82, %bb.j ], [ %.453.i82, %bb.i ] ; 4 uses
  %.5.i85 = phi ptr [ %i.bf, %bb.k ], [ %.448.i83, %bb.j ], [ %.448.i83, %bb.i ]
  %i.bg = icmp ult ptr %.554.i84, %i.ac
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = load i8, ptr %.5.i85, align 1, !tbaa !39
  %i.bi = load i8, ptr %.554.i84, align 1, !tbaa !39
  %i.bj = icmp eq i8 %i.bh, %i.bi
  %spec.select.i88.idx = zext i1 %i.bj to i64
  %spec.select.i88 = getelementptr inbounds nuw i8, ptr %.554.i84, i64 %spec.select.i88.idx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.6.i86 = phi ptr [ %.554.i84, %bb.l ], [ %spec.select.i88, %bb.m ]
  %i.bk = ptrtoint ptr %.6.i86 to i64
  %i.bl = sub i64 %i.bk, %i.aa
  %i.bm = trunc i64 %i.bl to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d, %.thread110
  %.4.i87 = phi i32 [ %i.as, %.thread110 ], [ %i.bm, %bb.n ], [ %i.ak, %bb.d ] ; 2 uses
  %i.bn = icmp slt i32 %.4.i87, 4
  br i1 %i.bn, label %.thread114, label %.thread136
end_hunk_6
