Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 423
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_str_vappendf:bb.a
  %i.afa = load i32, ptr %3, align 8, !tbaa !3778
  %i.afb = icmp slt i32 %.2623, %i.afa
  br i1 %i.afb, label %bb.hx, label %.lr.ph1401.prol.loopexit.unr-lcssa

bb.hx:                                            ; preds = %.lr.ph1401.prol
  %i.afc = load ptr, ptr %i.ah, align 8, !tbaa !3780
  %i.afd = add nsw i32 %.2623, 1
  %i.afe = sext i32 %.2623 to i64
  %i.aff = getelementptr inbounds i8, ptr %i.afc, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !741
  br label %.lr.ph1401.prol.loopexit.unr-lcssa

.lr.ph1401.prol.loopexit.unr-lcssa:               ; preds = %bb.hx, %.lr.ph1401.prol
  %.4625.prol = phi i32 [ %i.afd, %bb.hx ], [ %.2623, %.lr.ph1401.prol ]
  %i.afh = phi i8 [ %i.afg, %bb.hx ], [ 48, %.lr.ph1401.prol ]
  %i.afi = getelementptr inbounds nuw i8, ptr %.17.lcssa, i64 1 ; 2 uses
  store i8 %i.afh, ptr %.17.lcssa, align 1, !tbaa !741
  br label %.lr.ph1401.prol.loopexit

.lr.ph1401.prol.loopexit:                         ; preds = %.lr.ph1401.prol.loopexit.unr-lcssa, %.lr.ph1401.preheader
  %.in1442.unr = phi i32 [ %.8736.lcssa, %.lr.ph1401.preheader ], [ %i.aez, %.lr.ph1401.prol.loopexit.unr-lcssa ]
  %.36241400.unr = phi i32 [ %.2623, %.lr.ph1401.preheader ], [ %.4625.prol, %.lr.ph1401.prol.loopexit.unr-lcssa ]
  %.181399.unr = phi ptr [ %.17.lcssa, %.lr.ph1401.preheader ], [ %i.afi, %.lr.ph1401.prol.loopexit.unr-lcssa ]
  %.lcssa2105.unr = phi ptr [ poison, %.lr.ph1401.preheader ], [ %i.afi, %.lr.ph1401.prol.loopexit.unr-lcssa ]
  %i.afj = icmp eq i32 %.8736.lcssa, 1
  br i1 %i.afj, label %._crit_edge1402, label %.lr.ph1401

.lr.ph1401:                                       ; preds = %.lr.ph1401.prol.loopexit, %bb.ia
  %.in1442 = phi i32 [ %i.aft, %bb.ia ], [ %.in1442.unr, %.lr.ph1401.prol.loopexit ] ; 2 uses
  %.36241400 = phi i32 [ %.4625.1, %bb.ia ], [ %.36241400.unr, %.lr.ph1401.prol.loopexit ] ; 4 uses
  %.181399 = phi ptr [ %i.agc, %bb.ia ], [ %.181399.unr, %.lr.ph1401.prol.loopexit ] ; 3 uses
  %i.afk = load i32, ptr %3, align 8, !tbaa !3778
  %i.afl = icmp slt i32 %.36241400, %i.afk
  br i1 %i.afl, label %bb.hy, label %.lr.ph1401.1

bb.hy:                                            ; preds = %.lr.ph1401
  %i.afm = load ptr, ptr %i.ah, align 8, !tbaa !3780
  %i.afn = add nsw i32 %.36241400, 1
  %i.afo = sext i32 %.36241400 to i64
  %i.afp = getelementptr inbounds i8, ptr %i.afm, i64 %i.afo
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !741
  br label %.lr.ph1401.1

.lr.ph1401.1:                                     ; preds = %.lr.ph1401, %bb.hy
  %.4625 = phi i32 [ %i.afn, %bb.hy ], [ %.36241400, %.lr.ph1401 ] ; 4 uses
  %i.afr = phi i8 [ %i.afq, %bb.hy ], [ 48, %.lr.ph1401 ]
  %i.afs = getelementptr inbounds nuw i8, ptr %.181399, i64 1
  store i8 %i.afr, ptr %.181399, align 1, !tbaa !741
  %i.aft = add nsw i32 %.in1442, -2
  %i.afu = load i32, ptr %3, align 8, !tbaa !3778
  %i.afv = icmp slt i32 %.4625, %i.afu
  br i1 %i.afv, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %.lr.ph1401.1
  %i.afw = load ptr, ptr %i.ah, align 8, !tbaa !3780
  %i.afx = add nsw i32 %.4625, 1
  %i.afy = sext i32 %.4625 to i64
  %i.afz = getelementptr inbounds i8, ptr %i.afw, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !741
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %.lr.ph1401.1
  %.4625.1 = phi i32 [ %i.afx, %bb.hz ], [ %.4625, %.lr.ph1401.1 ]
  %i.agb = phi i8 [ %i.aga, %bb.hz ], [ 48, %.lr.ph1401.1 ]
  %i.agc = getelementptr inbounds nuw i8, ptr %.181399, i64 2 ; 2 uses
  store i8 %i.agb, ptr %i.afs, align 1, !tbaa !741
  %i.agd = icmp sgt i32 %.in1442, 2
  br i1 %i.agd, label %.lr.ph1401, label %._crit_edge1402, !llvm.loop !3748

._crit_edge1402:                                  ; preds = %.lr.ph1401.prol.loopexit, %bb.ia, %.preheader1231
  %.18.lcssa = phi ptr [ %.17.lcssa, %.preheader1231 ], [ %.lcssa2105.unr, %.lr.ph1401.prol.loopexit ], [ %i.agc, %bb.ia ] ; 2 uses
  %i.age = icmp ne i8 %.0644, 0
  %i.agf = icmp ne i8 %i.adw, 0
  %or.cond20 = select i1 %i.age, i1 %i.agf, i1 false
  br i1 %or.cond20, label %.preheader1229, label %.loopexit1230

.preheader1229:                                   ; preds = %._crit_edge1402, %bb.ib
  %.19 = phi ptr [ %i.agg, %bb.ib ], [ %.18.lcssa, %._crit_edge1402 ] ; 4 uses
  %i.agg = getelementptr inbounds i8, ptr %.19, i64 -1 ; 5 uses
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !741
  switch i8 %i.agh, label %.loopexit1230 [
    i8 48, label %bb.ib
    i8 46, label %bb.ic
  ]

bb.ib:                                            ; preds = %.preheader1229
  store i8 0, ptr %i.agg, align 1, !tbaa !741
  br label %.preheader1229, !llvm.loop !3749

bb.ic:                                            ; preds = %.preheader1229
  br i1 %.not870, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.agi = getelementptr inbounds nuw i8, ptr %.19, i64 1
  store i8 48, ptr %.19, align 1, !tbaa !741
  br label %.loopexit1230

bb.ie:                                            ; preds = %bb.ic
  store i8 0, ptr %i.agg, align 1, !tbaa !741
  br label %.loopexit1230

.loopexit1230:                                    ; preds = %.preheader1229, %bb.ie, %bb.id, %._crit_edge1402
  %.20 = phi ptr [ %i.agi, %bb.id ], [ %i.agg, %bb.ie ], [ %.18.lcssa, %._crit_edge1402 ], [ %.19, %.preheader1229 ] ; 5 uses
  br i1 %.1674, label %bb.if, label %bb.ii

bb.if:                                            ; preds = %.loopexit1230
  %i.agj = load i32, ptr %i.af, align 4, !tbaa !3779 ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !3772
  %i.agm = zext i8 %i.agl to i64
  %i.agn = getelementptr inbounds nuw i8, ptr @aDigits, i64 %i.agm
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !741
  %i.agp = getelementptr inbounds nuw i8, ptr %.20, i64 1
  store i8 %i.ago, ptr %.20, align 1, !tbaa !741
  %i.agq = icmp slt i32 %i.agj, 1                 ; 2 uses
  %i.agr = sub nsw i32 1, %i.agj
  %i.ags = add nsw i32 %i.agj, -1
  %.sink = select i1 %i.agq, i8 45, i8 43
  %.0649 = select i1 %i.agq, i32 %i.agr, i32 %i.ags ; 4 uses
  store i8 %.sink, ptr %i.agp, align 1, !tbaa !741
  %.21 = getelementptr inbounds nuw i8, ptr %.20, i64 2 ; 2 uses
  %i.agt = icmp samesign ugt i32 %.0649, 99
  br i1 %i.agt, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.agu = udiv i32 %.0649, 100
  %i.agv = trunc i32 %i.agu to i8
  %i.agw = add i8 %i.agv, 48
  %i.agx = getelementptr inbounds nuw i8, ptr %.20, i64 3
  store i8 %i.agw, ptr %.21, align 1, !tbaa !741
  %i.agy = urem i32 %.0649, 100
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.22 = phi ptr [ %i.agx, %bb.ig ], [ %.21, %bb.if ] ; 3 uses
  %.1650 = phi i32 [ %i.agy, %bb.ig ], [ %.0649, %bb.if ]
  %.lhs.trunc = trunc nuw nsw i32 %.1650 to i8    ; 2 uses
  %i.agz = udiv i8 %.lhs.trunc, 10
  %i.aha = or disjoint i8 %i.agz, 48
  %i.ahb = getelementptr inbounds nuw i8, ptr %.22, i64 1
  store i8 %i.aha, ptr %.22, align 1, !tbaa !741
  %i.ahc = urem i8 %.lhs.trunc, 10
  %i.ahd = or disjoint i8 %i.ahc, 48
  %i.ahe = getelementptr inbounds nuw i8, ptr %.22, i64 2
  store i8 %i.ahd, ptr %i.ahb, align 1, !tbaa !741
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %.loopexit1230
  %.23 = phi ptr [ %i.ahe, %bb.ih ], [ %.20, %.loopexit1230 ] ; 2 uses
  store i8 0, ptr %.23, align 1, !tbaa !741
  %i.ahf = ptrtoint ptr %.23 to i64
  %i.ahg = ptrtoint ptr %.11750.ph to i64
  %i.ahh = sub i64 %i.ahf, %i.ahg                 ; 2 uses
  %i.ahi = trunc i64 %i.ahh to i32                ; 5 uses
  %i.ahj = icmp ne i8 %.16881111, 0
  %i.ahk = icmp eq i8 %.27021103, 0
  %or.cond22.not1221 = select i1 %i.ahj, i1 %i.ahk, i1 false
  %i.ahl = icmp sgt i32 %.37061101, %i.ahi
  %or.cond904 = select i1 %or.cond22.not1221, i1 %i.ahl, i1 false
  br i1 %or.cond904, label %bb.ij, label %printfTempBuf.exit959

bb.ij:                                            ; preds = %bb.ii
  %i.ahm = sub i32 %.37061101, %i.ahi             ; 5 uses
  %.not8821404 = icmp slt i32 %i.ahi, 0
  br i1 %.not8821404, label %.lr.ph1413.preheader, label %iter.check

iter.check:                                       ; preds = %bb.ij
  %i.ahn = sext i32 %.37061101 to i64             ; 12 uses
  %i.aho = sext i32 %i.ahm to i64                 ; 3 uses
  %i.ahp = add nsw i64 %i.ahn, 1
  %smin2019 = call i64 @llvm.smin.i64(i64 %i.ahn, i64 %i.aho)
  %i.ahq = sub i64 %i.ahp, %smin2019              ; 7 uses
  %min.iters.check = icmp ult i64 %i.ahq, 8
  br i1 %min.iters.check, label %.lr.ph1407.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %smin = call i64 @llvm.smin.i64(i64 %i.ahn, i64 %i.aho)
  %i.ahr = sub i64 %i.ahn, %smin                  ; 2 uses
  %i.ahs = trunc i64 %i.ahr to i32
  %i.aht = icmp ugt i32 %i.ahs, %i.ahi
  %i.ahu = icmp ugt i64 %i.ahr, 4294967295
  %i.ahv = or i1 %i.aht, %i.ahu
  br i1 %i.ahv, label %.lr.ph1407.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ahw = and i64 %i.ahh, 2147483647
  %i.ahx = sub nsw i64 %i.ahn, %i.ahw
  %diff.check = icmp ugt i64 %i.ahx, -32
  br i1 %diff.check, label %.lr.ph1407.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check2020 = icmp ult i64 %i.ahq, 32
  br i1 %min.iters.check2020, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ahy = and i64 %i.ahq, 24
  %n.vec = and i64 %i.ahq, -32                    ; 4 uses
  %i.ahz = sub i64 %i.ahn, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aia = sub i64 %i.ahn, %index                 ; 2 uses
  %i.aib = trunc nsw i64 %i.aia to i32
  %i.aic = sub nuw nsw i32 %i.aib, %i.ahm
  %i.aid = zext nneg i32 %i.aic to i64
  %i.aie = getelementptr inbounds nuw i8, ptr %.11750.ph, i64 %i.aid ; 2 uses
  %i.aif = getelementptr inbounds i8, ptr %i.aie, i64 -15
  %i.aig = getelementptr inbounds i8, ptr %i.aie, i64 -31
  %wide.load = load <16 x i8>, ptr %i.aif, align 1, !tbaa !741
  %wide.load2021 = load <16 x i8>, ptr %i.aig, align 1, !tbaa !741
  %i.aih = getelementptr inbounds i8, ptr %.11750.ph, i64 %i.aia ; 2 uses
  %i.aii = getelementptr inbounds i8, ptr %i.aih, i64 -15
  %i.aij = getelementptr inbounds i8, ptr %i.aih, i64 -31
  store <16 x i8> %wide.load, ptr %i.aii, align 1, !tbaa !741
  store <16 x i8> %wide.load2021, ptr %i.aij, align 1, !tbaa !741
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aik = icmp eq i64 %index.next, %n.vec
  br i1 %i.aik, label %middle.block, label %vector.body, !llvm.loop !3750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ahq, %n.vec
  br i1 %cmp.n, label %.lr.ph1413.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ahy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1407.preheader, label %vec.epilog.ph, !prof !793

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2022 = and i64 %i.ahq, -8                 ; 3 uses
  %i.ail = sub i64 %i.ahn, %n.vec2022
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2023 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2025, %vec.epilog.vector.body ] ; 2 uses
  %i.aim = sub i64 %i.ahn, %index2023             ; 2 uses
  %i.ain = trunc nsw i64 %i.aim to i32
  %i.aio = sub nuw nsw i32 %i.ain, %i.ahm
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw i8, ptr %.11750.ph, i64 %i.aip
  %i.air = getelementptr inbounds i8, ptr %i.aiq, i64 -7
  %wide.load2024 = load <8 x i8>, ptr %i.air, align 1, !tbaa !741
  %i.ais = getelementptr inbounds i8, ptr %.11750.ph, i64 %i.aim
  %i.ait = getelementptr inbounds i8, ptr %i.ais, i64 -7
  store <8 x i8> %wide.load2024, ptr %i.ait, align 1, !tbaa !741
  %index.next2025 = add nuw i64 %index2023, 8     ; 2 uses
  %i.aiu = icmp eq i64 %index.next2025, %n.vec2022
  br i1 %i.aiu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3751

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2026 = icmp eq i64 %i.ahq, %n.vec2022
  br i1 %cmp.n2026, label %.lr.ph1413.preheader, label %.lr.ph1407.preheader

.lr.ph1407.preheader:                             ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1506.ph = phi i64 [ %i.ahn, %iter.check ], [ %i.ahn, %vector.scevcheck ], [ %i.ahn, %vector.memcheck ], [ %i.ahz, %vec.epilog.iter.check ], [ %i.ail, %vec.epilog.middle.block ]
  br label %.lr.ph1407

.lr.ph1407:                                       ; preds = %.lr.ph1407.preheader, %.lr.ph1407
  %indvars.iv1506 = phi i64 [ %indvars.iv.next1507, %.lr.ph1407 ], [ %indvars.iv1506.ph, %.lr.ph1407.preheader ] ; 4 uses
  %i.aiv = trunc nsw i64 %indvars.iv1506 to i32
  %i.aiw = sub nuw nsw i32 %i.aiv, %i.ahm
  %i.aix = zext nneg i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw i8, ptr %.11750.ph, i64 %i.aix
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !741
  %i.aja = getelementptr inbounds i8, ptr %.11750.ph, i64 %indvars.iv1506
  store i8 %i.aiz, ptr %i.aja, align 1, !tbaa !741
  %indvars.iv.next1507 = add nsw i64 %indvars.iv1506, -1
  %.not882.not = icmp sgt i64 %indvars.iv1506, %i.aho
  br i1 %.not882.not, label %.lr.ph1407, label %.lr.ph1413.preheader, !llvm.loop !3752

.lr.ph1413.preheader:                             ; preds = %.lr.ph1407, %middle.block, %vec.epilog.middle.block, %bb.ij
  %.not1637.not.not.not = icmp ne i8 %.2671, 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not1637.not.not.not to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr i8, ptr %.11750.ph, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.ajb = zext i32 %i.ahm to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel, i8 48, i64 %i.ajb, i1 false), !tbaa !741
  br label %printfTempBuf.exit959

printfTempBuf.exit959.thread1161:                 ; preds = %bb.gv, %bb.he, %bb.hc, %bb.hd, %bb.hi, %sqlite3_str_reset.exit.i1026
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %sqlite3_str_append.exit920

printfTempBuf.exit959:                            ; preds = %.lr.ph1413.preheader, %bb.ii, %bb.gn, %bb.gh
  %.24 = phi ptr [ %i.abg, %bb.gh ], [ %.9748, %bb.gn ], [ %.11750.ph, %bb.ii ], [ %.11750.ph, %.lr.ph1413.preheader ]
  %.3720 = phi i32 [ %i.abh, %bb.gh ], [ %i.abm, %bb.gn ], [ %i.ahi, %bb.ii ], [ %.37061101, %.lr.ph1413.preheader ]
  %.4655 = phi ptr [ null, %bb.gh ], [ null, %bb.gn ], [ %.3654.ph, %bb.ii ], [ %.3654.ph, %.lr.ph1413.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %sqlite3RecordErrorOffsetOfExpr.exit

bb.ik:                                            ; preds = %bb.bf
  br i1 %.not, label %bb.il, label %sqlite3RecordErrorOffsetOfExpr.exit

bb.il:                                            ; preds = %bb.ik
  %i.ajc = load i32, ptr %i.q, align 8, !tbaa !759
  %i.ajd = load i32, ptr %2, align 8              ; 3 uses
  %i.aje = icmp ult i32 %i.ajd, 41
  br i1 %i.aje, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.ajf = load ptr, ptr %i.w, align 8
  %i.ajg = zext nneg i32 %i.ajd to i64
  %i.ajh = getelementptr i8, ptr %i.ajf, i64 %i.ajg
  %i.aji = add nuw nsw i32 %i.ajd, 8
  store i32 %i.aji, ptr %2, align 8
  br label %bb.io

bb.in:                                            ; preds = %bb.il
  %i.ajj = load ptr, ptr %i.v, align 8            ; 2 uses
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 8
  store ptr %i.ajk, ptr %i.v, align 8
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.ajl = phi ptr [ %i.ajh, %bb.im ], [ %i.ajj, %bb.in ]
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !794
  store i32 %i.ajc, ptr %i.ajm, align 4, !tbaa !576
  br label %sqlite3RecordErrorOffsetOfExpr.exit

bb.ip:                                            ; preds = %bb.bf
  store i8 37, ptr %i.a, align 16, !tbaa !741
  br label %sqlite3RecordErrorOffsetOfExpr.exit

bb.iq:                                            ; preds = %bb.bf
  br i1 %.not, label %bb.ja, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ajn = load i32, ptr %.0643, align 8, !tbaa !764
  %i.ajo = load i32, ptr %i.t, align 4, !tbaa !765 ; 3 uses
  %.not.i960 = icmp sgt i32 %i.ajn, %i.ajo
  br i1 %.not.i960, label %bb.is, label %getTextArg.exit.thread

bb.is:                                            ; preds = %bb.ir
  %i.ajp = load ptr, ptr %i.u, align 8, !tbaa !766
  %i.ajq = add nsw i32 %i.ajo, 1
  store i32 %i.ajq, ptr %i.t, align 4, !tbaa !765
  %i.ajr = sext i32 %i.ajo to i64
  %i.ajs = getelementptr inbounds [8 x i8], ptr %i.ajp, i64 %i.ajr
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !767 ; 5 uses
  %.not.i.i1038 = icmp eq ptr %i.ajt, null
  br i1 %.not.i.i1038, label %getTextArg.exit.thread, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 20
  %i.ajv = load i16, ptr %i.aju, align 4, !tbaa !694 ; 2 uses
  %i.ajw = and i16 %i.ajv, 514
  %i.ajx = icmp eq i16 %i.ajw, 514
  br i1 %i.ajx, label %bb.iu, label %bb.iw

bb.iu:                                            ; preds = %bb.it
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajt, i64 22
  %i.ajz = load i8, ptr %i.ajy, align 2, !tbaa !795
  %i.aka = icmp eq i8 %i.ajz, 1
  br i1 %i.aka, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !768
  br label %getTextArg.exit

bb.iw:                                            ; preds = %bb.iu, %bb.it
  %i.akd = and i16 %i.ajv, 1
  %.not9.i.i = icmp eq i16 %i.akd, 0
  br i1 %.not9.i.i, label %bb.ix, label %getTextArg.exit.thread

bb.ix:                                            ; preds = %bb.iw
  %i.ake = call fastcc ptr @valueToText(ptr noundef nonnull %i.ajt, i8 noundef zeroext 1), !inline_history !3753
  br label %getTextArg.exit

getTextArg.exit:                                  ; preds = %bb.ix, %bb.iv
  %.0.i961 = phi ptr [ %i.ake, %bb.ix ], [ %i.akc, %bb.iv ] ; 5 uses
  %.not865 = icmp eq ptr %.0.i961, null
  br i1 %.not865, label %getTextArg.exit.thread, label %bb.iy

bb.iy:                                            ; preds = %getTextArg.exit
  %i.akf = load i8, ptr %.0.i961, align 1, !tbaa !741 ; 2 uses
  store i8 %i.akf, ptr %i.a, align 16, !tbaa !741
  %i.akg = icmp ugt i8 %i.akf, -65
  br i1 %i.akg, label %.preheader1235.preheader, label %.critedge24

.preheader1235.preheader:                         ; preds = %bb.iy
  %.25 = getelementptr inbounds nuw i8, ptr %.0.i961, i64 1
  %i.akh = load i8, ptr %.25, align 1, !tbaa !741 ; 2 uses
  %i.aki = icmp slt i8 %i.akh, -64
  br i1 %i.aki, label %.preheader1235.1, label %.critedge24

.preheader1235.1:                                 ; preds = %.preheader1235.preheader
  store i8 %i.akh, ptr %i.z, align 1, !tbaa !741
  %.25.1 = getelementptr inbounds nuw i8, ptr %.0.i961, i64 2
  %i.akj = load i8, ptr %.25.1, align 1, !tbaa !741 ; 2 uses
  %i.akk = icmp slt i8 %i.akj, -64
  br i1 %i.akk, label %.preheader1235.2, label %.critedge24

.preheader1235.2:                                 ; preds = %.preheader1235.1
  store i8 %i.akj, ptr %i.aa, align 2, !tbaa !741
  %.25.2 = getelementptr inbounds nuw i8, ptr %.0.i961, i64 3
  %i.akl = load i8, ptr %.25.2, align 1, !tbaa !741 ; 2 uses
  %i.akm = icmp slt i8 %i.akl, -64
  br i1 %i.akm, label %bb.iz, label %.critedge24

bb.iz:                                            ; preds = %.preheader1235.2
  store i8 %i.akl, ptr %i.ab, align 1, !tbaa !741
  br label %.critedge24

getTextArg.exit.thread:                           ; preds = %bb.iw, %bb.is, %bb.ir, %getTextArg.exit
  store i8 0, ptr %i.a, align 16, !tbaa !741
  br label %.critedge24

bb.ja:                                            ; preds = %bb.iq
  %i.akn = load i32, ptr %2, align 8              ; 3 uses
  %i.ako = icmp ult i32 %i.akn, 41
  br i1 %i.ako, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.akp = load ptr, ptr %i.w, align 8
  %i.akq = zext nneg i32 %i.akn to i64
  %i.akr = getelementptr i8, ptr %i.akp, i64 %i.akq
  %i.aks = add nuw nsw i32 %i.akn, 8
  store i32 %i.aks, ptr %2, align 8
  br label %bb.jd

bb.jc:                                            ; preds = %bb.ja
  %i.akt = load ptr, ptr %i.v, align 8            ; 2 uses
  %i.aku = getelementptr i8, ptr %i.akt, i64 8
  store ptr %i.aku, ptr %i.v, align 8
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.akv = phi ptr [ %i.akr, %bb.jb ], [ %i.akt, %bb.jc ]
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !576 ; 13 uses
  %i.akx = icmp ult i32 %i.akw, 128
  br i1 %i.akx, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.aky = trunc nuw nsw i32 %i.akw to i8
  store i8 %i.aky, ptr %i.a, align 16, !tbaa !741
  br label %.critedge24

bb.jf:                                            ; preds = %bb.jd
  %i.akz = icmp ult i32 %i.akw, 2048
  br i1 %i.akz, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.ala = lshr i32 %i.akw, 6
  %i.alb = trunc nuw nsw i32 %i.ala to i8
  %i.alc = or disjoint i8 %i.alb, -64
  store i8 %i.alc, ptr %i.a, align 16, !tbaa !741
  %i.ald = trunc i32 %i.akw to i8
  %i.ale = and i8 %i.ald, 63
  %i.alf = or disjoint i8 %i.ale, -128
  store i8 %i.alf, ptr %i.z, align 1, !tbaa !741
  br label %.critedge24

bb.jh:                                            ; preds = %bb.jf
  %i.alg = icmp ult i32 %i.akw, 65536
end_hunk_0
begin_hunk_1_@sqlite3VdbeExpandSql:bb.a
  %i.eo = getelementptr i8, ptr %i.cu, i64 -40
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !934 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sqlite3_str_append.exit82
  %i.er = getelementptr i8, ptr %i.cu, i64 -48
  %wide.trip.count = zext nneg i32 %i.ep to i64
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.as
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !768
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %indvars.iv
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !741
  %i.ev = zext i8 %i.eu to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.482, i32 noundef %i.ev)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.as, !llvm.loop !3866

._crit_edge:                                      ; preds = %bb.as, %sqlite3_str_append.exit82
  %i.ew = load i32, ptr %i.i, align 8, !tbaa !759 ; 2 uses
  %i.ex = add i32 %i.ew, 1                        ; 2 uses
  %i.ey = load i32, ptr %i.g, align 8, !tbaa !760
  %.not.i83 = icmp ult i32 %i.ex, %i.ey
  br i1 %.not.i83, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %2, ptr noundef nonnull @.str.483, i32 noundef 1), !inline_history !761
  br label %sqlite3_str_append.exit77

bb.au:                                            ; preds = %._crit_edge
  store i32 %i.ex, ptr %i.i, align 8, !tbaa !759
  %i.ez = load ptr, ptr %i.f, align 8, !tbaa !762
  %i.fa = zext i32 %i.ew to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fa
  store i8 39, ptr %i.fb, align 1
  br label %sqlite3_str_append.exit77

sqlite3_str_append.exit77:                        ; preds = %sqlite3VdbeChangeEncoding.exit.thread, %bb.au, %bb.at, %bb.am, %bb.ab, %bb.aa, %.critedge66, %bb.ad, %bb.ao, %bb.af
  %i.fc = load i8, ptr %i.cp, align 1, !tbaa !741
  %.not = icmp eq i8 %i.fc, 0
  br i1 %.not, label %.loopexit, label %bb.j, !llvm.loop !3867

.loopexit:                                        ; preds = %sqlite3_str_append.exit77, %sqlite3_str_append.exit75, %sqlite3_str_append.exit68, %.preheader95, %.preheader94, %sqlite3_str_append.exit71
  %i.fd = load i8, ptr %i.j, align 4, !tbaa !771
  %.not62 = icmp eq i8 %i.fd, 0
  br i1 %.not62, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %.loopexit
  %i.fe = load i8, ptr %i.k, align 1, !tbaa !758
  %i.ff = and i8 %i.fe, 4
  %.not.i85 = icmp eq i8 %i.ff, 0
  br i1 %.not.i85, label %.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fg = load ptr, ptr %i.f, align 8, !tbaa !762 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fh = load ptr, ptr %2, align 8, !tbaa !773
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.fh, ptr noundef nonnull %i.fg)
  br label %.thread

.thread:                                          ; preds = %bb.aw, %bb.ax, %bb.av
  store ptr null, ptr %i.f, align 8, !tbaa !762
  br label %bb.bc

bb.ay:                                            ; preds = %.loopexit
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !762  ; 2 uses
  %.not.i86 = icmp eq ptr %.pr, null
  br i1 %.not.i86, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fi = load i32, ptr %i.i, align 8, !tbaa !759
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.pr, i64 %i.fj
  store i8 0, ptr %i.fk, align 1, !tbaa !741
  %i.fl = load i32, ptr %i.h, align 4, !tbaa !772
  %.not9.i = icmp eq i32 %i.fl, 0
  br i1 %.not9.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fm = load i8, ptr %i.k, align 1, !tbaa !758
  %i.fn = and i8 %i.fm, 4
  %.not10.i = icmp eq i8 %i.fn, 0
  br i1 %.not10.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fo = call fastcc ptr @strAccumFinishRealloc(ptr noundef nonnull %2), !inline_history !18
  br label %sqlite3StrAccumFinish.exit

bb.bc:                                            ; preds = %.thread, %bb.ba, %bb.az, %bb.ay
  %i.fp = load ptr, ptr %i.f, align 8, !tbaa !762
  br label %sqlite3StrAccumFinish.exit

sqlite3StrAccumFinish.exit:                       ; preds = %bb.bb, %bb.bc
  %.0.i87 = phi ptr [ %i.fp, %bb.bc ], [ %i.fo, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  ret ptr %.0.i87
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_preupdate_old(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1149 ; 13 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %sqlite3VdbeMemSetInt64.exit.thread131.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1154
  %i.f = icmp eq i32 %i.e, 18
  br i1 %i.f, label %sqlite3VdbeMemSetInt64.exit.thread131.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1155 ; 3 uses
  %.not93 = icmp eq ptr %i.h, null
  br i1 %.not93, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %sext.i = shl i32 %1, 16
  %i.i = ashr exact i32 %sext.i, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1158 ; 2 uses
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %sqlite3Error.exit.thread.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1159
  %wide.trip.count.i = zext i16 %i.k to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.o = load i16, ptr %i.n, align 2, !tbaa !789
  %i.p = sext i16 %i.o to i32
  %i.q = icmp eq i32 %i.i, %i.p
  br i1 %i.q, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3Error.exit.thread.sink.split, label %bb.e, !llvm.loop !79

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %bb.e
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3TableColumnToIndex.exit

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1160 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 54
  %i.v = load i16, ptr %i.u, align 2, !tbaa !1161
  %i.w = sext i16 %i.v to i32
  %.not94 = icmp slt i32 %1, %i.w
  br i1 %.not94, label %bb.h, label %sqlite3VdbeMemSetInt64.exit.thread131.sink.split

bb.h:                                             ; preds = %bb.g
  %i.x = trunc i32 %1 to i16                      ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1098
  %i.aa = and i32 %i.z, 32
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = icmp slt i16 %i.x, 0
  %or.cond.i = or i1 %i.ac, %i.ab
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %sext = and i32 %1, 32767                       ; 3 uses
  %.not23.i = icmp eq i16 %i.x, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1162 ; 22 uses
  %.pre154 = zext nneg i32 %sext to i64           ; 6 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i32 %sext, 5
  br i1 %min.iters.check, label %.lr.ph.i103.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check175 = icmp samesign ult i32 %sext, 17
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %.pre154, 15                    ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 16, i64 %i.af      ; 2 uses
  %n.vec = sub nsw i64 %.pre154, %i.ah            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.da, %vector.body ]
  %vec.phi176 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.db, %vector.body ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 14
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 78
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 94
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 110
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 126
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 142
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 158
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 174
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 190
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 206
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 222
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 238
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 254
  %i.bo = load i16, ptr %i.ay, align 2, !tbaa !1164
  %i.bp = load i16, ptr %i.az, align 2, !tbaa !1164
  %i.bq = load i16, ptr %i.ba, align 2, !tbaa !1164
  %i.br = load i16, ptr %i.bb, align 2, !tbaa !1164
  %i.bs = load i16, ptr %i.bc, align 2, !tbaa !1164
  %i.bt = load i16, ptr %i.bd, align 2, !tbaa !1164
  %i.bu = load i16, ptr %i.be, align 2, !tbaa !1164
  %i.bv = load i16, ptr %i.bf, align 2, !tbaa !1164
  %i.bw = insertelement <8 x i16> poison, i16 %i.bo, i64 0
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 1
  %i.by = insertelement <8 x i16> %i.bx, i16 %i.bq, i64 2
  %i.bz = insertelement <8 x i16> %i.by, i16 %i.br, i64 3
  %i.ca = insertelement <8 x i16> %i.bz, i16 %i.bs, i64 4
  %i.cb = insertelement <8 x i16> %i.ca, i16 %i.bt, i64 5
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bu, i64 6
  %i.cd = insertelement <8 x i16> %i.cc, i16 %i.bv, i64 7
  %i.ce = load i16, ptr %i.bg, align 2, !tbaa !1164
  %i.cf = load i16, ptr %i.bh, align 2, !tbaa !1164
  %i.cg = load i16, ptr %i.bi, align 2, !tbaa !1164
  %i.ch = load i16, ptr %i.bj, align 2, !tbaa !1164
  %i.ci = load i16, ptr %i.bk, align 2, !tbaa !1164
  %i.cj = load i16, ptr %i.bl, align 2, !tbaa !1164
  %i.ck = load i16, ptr %i.bm, align 2, !tbaa !1164
  %i.cl = load i16, ptr %i.bn, align 2, !tbaa !1164
  %i.cm = insertelement <8 x i16> poison, i16 %i.ce, i64 0
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 1
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 2
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.ch, i64 3
  %i.cq = insertelement <8 x i16> %i.cp, i16 %i.ci, i64 4
  %i.cr = insertelement <8 x i16> %i.cq, i16 %i.cj, i64 5
  %i.cs = insertelement <8 x i16> %i.cr, i16 %i.ck, i64 6
  %i.ct = insertelement <8 x i16> %i.cs, i16 %i.cl, i64 7
  %i.cu = lshr <8 x i16> %i.cd, splat (i16 5)
  %i.cv = lshr <8 x i16> %i.ct, splat (i16 5)
  %i.cw = and <8 x i16> %i.cu, splat (i16 1)
  %i.cx = and <8 x i16> %i.cv, splat (i16 1)
  %i.cy = xor <8 x i16> %i.cw, splat (i16 1)
  %i.cz = xor <8 x i16> %i.cx, splat (i16 1)
  %i.da = add <8 x i16> %i.cy, %vec.phi           ; 2 uses
  %i.db = add <8 x i16> %i.cz, %vec.phi176        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !3868

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.db, %i.da
  %i.dd = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ah, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i103.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.dd, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.de = and i64 %.pre154, 3                     ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = select i1 %i.df, i64 4, i64 %i.de
  %n.vec177 = sub nsw i64 %.pre154, %i.dg         ; 2 uses
  %i.dh = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index178 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next180, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi179 = phi <4 x i16> [ %i.dh, %vec.epilog.ph ], [ %i.eb, %vec.epilog.vector.body ]
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %index178
  %i.dj = getelementptr [16 x i8], ptr %i.ae, i64 %index178
  %i.dk = getelementptr [16 x i8], ptr %i.ae, i64 %index178
  %i.dl = getelementptr [16 x i8], ptr %i.ae, i64 %index178
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 14
  %i.dn = getelementptr i8, ptr %i.dj, i64 30
  %i.do = getelementptr i8, ptr %i.dk, i64 46
  %i.dp = getelementptr i8, ptr %i.dl, i64 62
  %i.dq = load i16, ptr %i.dm, align 2, !tbaa !1164
  %i.dr = load i16, ptr %i.dn, align 2, !tbaa !1164
  %i.ds = load i16, ptr %i.do, align 2, !tbaa !1164
  %i.dt = load i16, ptr %i.dp, align 2, !tbaa !1164
  %i.du = insertelement <4 x i16> poison, i16 %i.dq, i64 0
  %i.dv = insertelement <4 x i16> %i.du, i16 %i.dr, i64 1
  %i.dw = insertelement <4 x i16> %i.dv, i16 %i.ds, i64 2
  %i.dx = insertelement <4 x i16> %i.dw, i16 %i.dt, i64 3
  %i.dy = lshr <4 x i16> %i.dx, splat (i16 5)
  %i.dz = and <4 x i16> %i.dy, splat (i16 1)
  %i.ea = xor <4 x i16> %i.dz, splat (i16 1)
  %i.eb = add <4 x i16> %i.ea, %vec.phi179        ; 2 uses
  %index.next180 = add nuw i64 %index178, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next180, %n.vec177
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3869

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ed = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.eb)
  br label %.lr.ph.i103.preheader

.lr.ph.i103.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i105.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec177, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.dd, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %.lr.ph.i103.preheader, %.lr.ph.i103
  %indvars.iv.i105 = phi i64 [ %indvars.iv.next.i106, %.lr.ph.i103 ], [ %indvars.iv.i105.ph, %.lr.ph.i103.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i103 ], [ %.021.i.ph, %.lr.ph.i103.preheader ]
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv.i105
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 14
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !1164
  %i.eh = lshr i16 %i.eg, 5
  %i.ei = and i16 %i.eh, 1
  %i.ej = xor i16 %i.ei, 1
  %spec.select.i = add i16 %i.ej, %.021.i         ; 2 uses
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i105, 1 ; 2 uses
  %exitcond.not.i107 = icmp eq i64 %indvars.iv.next.i106, %.pre154
  br i1 %exitcond.not.i107, label %._crit_edge.i, label %.lr.ph.i103, !llvm.loop !3870

._crit_edge.i:                                    ; preds = %.lr.ph.i103, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i103 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.pre154
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 14
  %i.em = load i16, ptr %i.el, align 2, !tbaa !1164
  %i.en = and i16 %i.em, 32
  %.not.i108 = icmp eq i16 %i.en, 0
  br i1 %.not.i108, label %sqlite3TableColumnToStorage.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ep = load i16, ptr %i.eo, align 8, !tbaa !1166
  %i.eq = sub i16 %i.x, %.0.lcssa.i
  %i.er = add i16 %i.eq, %i.ep
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.h, %._crit_edge.i, %bb.i
  %.018.i = phi i16 [ %i.x, %bb.h ], [ %i.er, %bb.i ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.es = sext i16 %.018.i to i32
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %._crit_edge.loopexit.split.loop.exit13.i, %sqlite3TableColumnToStorage.exit
  %.081 = phi i32 [ %i.es, %sqlite3TableColumnToStorage.exit ], [ %i.r, %._crit_edge.loopexit.split.loop.exit13.i ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1167 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.ew = load i16, ptr %i.ev, align 8, !tbaa !789
  %i.ex = sext i16 %i.ew to i32
  %i.ey = icmp sge i32 %.081, %i.ex
  %i.ez = icmp slt i32 %.081, 0
  %or.cond = or i1 %i.ez, %i.ey
  br i1 %or.cond, label %sqlite3Error.exit.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %sqlite3TableColumnToIndex.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1160
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 52
  %i.fd = load i16, ptr %i.fc, align 4, !tbaa !1168
  %i.fe = sext i16 %i.fd to i32
  %i.ff = icmp eq i32 %1, %i.fe
  br i1 %i.ff, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  store ptr %i.fg, ptr %2, align 8, !tbaa !767
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !1169 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.fk = load i16, ptr %i.fj, align 4, !tbaa !694
  %i.fl = and i16 %i.fk, -28672
  %.not.i109 = icmp eq i16 %i.fl, 0
  br i1 %.not.i109, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.fg, i64 noundef %i.fi)
end_hunk_1
begin_hunk_2_@sqlite3_preupdate_old:bb.a
  %.not98 = icmp samesign ult i32 %.081, %i.gm
  %i.gn = load ptr, ptr %i.fa, align 8, !tbaa !1160 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !1162
  %i.gq = sext i32 %1 to i64                      ; 4 uses
  %i.gr = getelementptr inbounds [16 x i8], ptr %i.gp, i64 %i.gq ; 3 uses
  br i1 %.not98, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12 ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 4, !tbaa !1176
  %.not100 = icmp eq i16 %i.gt, 0
  br i1 %.not100, label %sqlite3VdbeMemSetInt64.exit.thread144, label %bb.w

sqlite3VdbeMemSetInt64.exit.thread144:            ; preds = %bb.v
  store ptr @columnNullValue.nullMem, ptr %2, align 8, !tbaa !767
  br label %.sink.split

bb.w:                                             ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 4 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !1177 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 54
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !1161
  %i.gz = sext i16 %i.gy to i32
  %i.ha = shl nsw i32 %i.gz, 3
  %i.hb = sext i32 %i.ha to i64
  %i.hc = tail call fastcc ptr @sqlite3DbMallocZero(ptr noundef %0, i64 noundef %i.hb) ; 3 uses
  store ptr %i.hc, ptr %i.gu, align 8, !tbaa !1177
  %.not101 = icmp eq ptr %i.hc, null
  br i1 %.not101, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hd = phi ptr [ %i.hc, %bb.x ], [ %i.gv, %bb.w ]
  %i.he = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.gq
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !767 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.z, label %sqlite3VdbeMemSetInt64.exit.thread148

sqlite3VdbeMemSetInt64.exit.thread148:            ; preds = %bb.y
  store ptr %i.hf, ptr %2, align 8, !tbaa !767
  br label %.sink.split

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store ptr null, ptr %i.a, align 8, !tbaa !767
  %i.hh = load ptr, ptr %i.fa, align 8, !tbaa !1160
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !741
  %i.hk = load i16, ptr %i.gs, align 4, !tbaa !1176
  %i.hl = zext i16 %i.hk to i64
  %i.hm = getelementptr i8, ptr %i.hj, i64 -16
  %i.hn = getelementptr [24 x i8], ptr %i.hm, i64 %i.hl
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !1180 ; 2 uses
  %.not.i112 = icmp eq ptr %i.ho, null
  br i1 %.not.i112, label %sqlite3ValueFromExpr.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gr, i64 9
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !1181
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.hs = load i8, ptr %i.hr, align 4, !tbaa !1136
  %i.ht = call fastcc i32 @valueFromExpr(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ho, i8 noundef zeroext %i.hs, i8 noundef zeroext %i.hq, ptr noundef nonnull %i.a)
  %.pre = load ptr, ptr %i.a, align 8
  br label %sqlite3ValueFromExpr.exit

sqlite3ValueFromExpr.exit:                        ; preds = %bb.z, %bb.aa
  %i.hu = phi ptr [ %.pre, %bb.aa ], [ null, %bb.z ] ; 5 uses
  %i.hv = phi i32 [ %i.ht, %bb.aa ], [ 0, %bb.z ] ; 4 uses
  %i.hw = icmp eq i32 %i.hv, 0
  %i.hx = icmp eq ptr %i.hu, null
  %or.cond3 = select i1 %i.hw, i1 %i.hx, i1 false
  br i1 %or.cond3, label %sqlite3VdbeMemSetInt64.exit.thread167, label %sqlite3VdbeMemSetInt64.exit

sqlite3VdbeMemSetInt64.exit.thread167:            ; preds = %sqlite3ValueFromExpr.exit
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 95022, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  %i.hy = load ptr, ptr %i.gu, align 8, !tbaa !1177
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.gq
  store ptr %i.hu, ptr %i.hz, align 8, !tbaa !767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  store ptr %i.hu, ptr %2, align 8, !tbaa !767
  br label %sqlite3Error.exit.thread.sink.split

bb.ab:                                            ; preds = %bb.u
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gr, i64 9
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !1181
  %i.ic = icmp eq i8 %i.ib, 69
  br i1 %i.ic, label %bb.ac, label %.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.id = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %i.ie = load i16, ptr %i.id, align 4, !tbaa !694
  %i.if = and i16 %i.ie, 36
  %.not99 = icmp eq i16 %i.if, 0
  br i1 %.not99, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @sqlite3VdbeMemRealify(ptr noundef nonnull %i.gj)
  br label %.sink.split

sqlite3VdbeMemSetInt64.exit.thread131.sink.split: ; preds = %bb.g, %bb.a, %bb.b
  %.sink = phi i32 [ 94960, %bb.a ], [ 94960, %bb.b ], [ 94966, %bb.g ]
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1928, i32 noundef %.sink, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %sqlite3Error.exit.thread.sink.split

sqlite3VdbeMemSetInt64.exit:                      ; preds = %sqlite3ValueFromExpr.exit
  %i.ig = load ptr, ptr %i.gu, align 8, !tbaa !1177
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.gq
  store ptr %i.hu, ptr %i.ih, align 8, !tbaa !767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  store ptr %i.hu, ptr %2, align 8, !tbaa !767
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.hv, ptr %i.ii, align 8, !tbaa !959
  %.not.i113 = icmp eq i32 %i.hv, 0
  br i1 %.not.i113, label %bb.ae, label %sqlite3Error.exit.thread

sqlite3Error.exit.thread.sink.split:              ; preds = %bb.f, %bb.d, %sqlite3TableColumnToIndex.exit, %sqlite3VdbeMemSetInt64.exit.thread131.sink.split, %sqlite3VdbeMemSetInt64.exit.thread141, %sqlite3VdbeMemSetInt64.exit.thread167
  %.sink171 = phi i32 [ 11, %sqlite3VdbeMemSetInt64.exit.thread167 ], [ %.082.ph, %sqlite3VdbeMemSetInt64.exit.thread141 ], [ 25, %sqlite3TableColumnToIndex.exit ], [ 25, %bb.d ], [ 21, %sqlite3VdbeMemSetInt64.exit.thread131.sink.split ], [ 25, %bb.f ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sink171, ptr %i.ij, align 8, !tbaa !959
  br label %sqlite3Error.exit.thread

sqlite3Error.exit.thread:                         ; preds = %sqlite3Error.exit.thread.sink.split, %sqlite3VdbeMemSetInt64.exit
  %.7134 = phi i32 [ %i.hv, %sqlite3VdbeMemSetInt64.exit ], [ %.sink171, %sqlite3Error.exit.thread.sink.split ] ; 2 uses
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef %.7134)
  br label %bb.ag

.sink.split:                                      ; preds = %bb.m, %bb.l, %bb.x, %bb.ab, %bb.ac, %bb.ad, %sqlite3DbMallocRaw.exit, %sqlite3VdbeMemSetInt64.exit.thread144, %sqlite3VdbeMemSetInt64.exit.thread148
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.ik, align 8, !tbaa !959
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %sqlite3VdbeMemSetInt64.exit
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !973
  %.not7.i = icmp eq ptr %i.im, null
  br i1 %.not7.i, label %bb.af, label %.split6.i

.split6.i:                                        ; preds = %bb.ae
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef 0)
  br label %sqlite3Error.exit

bb.af:                                            ; preds = %bb.ae
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -1, ptr %i.in, align 4, !tbaa !803
  br label %sqlite3Error.exit

sqlite3Error.exit:                                ; preds = %.split6.i, %bb.af
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !928
  %.not151 = icmp eq i8 %i.ip, 0
  br i1 %.not151, label %sqlite3ApiExit.exit, label %bb.ag

bb.ag:                                            ; preds = %sqlite3Error.exit.thread, %sqlite3Error.exit
  %.7127137 = phi i32 [ %.7134, %sqlite3Error.exit.thread ], [ 0, %sqlite3Error.exit ]
  %i.iq = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %.7127137)
  br label %sqlite3ApiExit.exit

sqlite3ApiExit.exit:                              ; preds = %sqlite3Error.exit, %bb.ag
  %.0.i115 = phi i32 [ %i.iq, %bb.ag ], [ 0, %sqlite3Error.exit ]
  ret i32 %.0.i115
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i16 @sqlite3TableColumnToStorage(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1098
  %i.c = and i32 %i.b, 32
  %i.d = icmp eq i32 %i.c, 0
  %i.e = sext i16 %1 to i32                       ; 2 uses
  %i.f = icmp slt i16 %1, 0
  %or.cond = or i1 %i.f, %i.d
  br i1 %or.cond, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not23 = icmp eq i16 %1, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1162 ; 22 uses
  br i1 %.not23, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 5 uses
  %min.iters.check = icmp ult i16 %1, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i16 %1, 17
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %wide.trip.count, 15             ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 16, i64 %i.i         ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.k     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %vec.phi25 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 62
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 78
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 94
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 110
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 126
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 142
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 158
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 174
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 190
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 206
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 222
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 238
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 254
  %i.ar = load i16, ptr %i.ab, align 2, !tbaa !1164
  %i.as = load i16, ptr %i.ac, align 2, !tbaa !1164
  %i.at = load i16, ptr %i.ad, align 2, !tbaa !1164
  %i.au = load i16, ptr %i.ae, align 2, !tbaa !1164
  %i.av = load i16, ptr %i.af, align 2, !tbaa !1164
  %i.aw = load i16, ptr %i.ag, align 2, !tbaa !1164
  %i.ax = load i16, ptr %i.ah, align 2, !tbaa !1164
  %i.ay = load i16, ptr %i.ai, align 2, !tbaa !1164
  %i.az = insertelement <8 x i16> poison, i16 %i.ar, i64 0
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 1
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 2
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 3
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 4
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 5
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 6
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 7
  %i.bh = load i16, ptr %i.aj, align 2, !tbaa !1164
  %i.bi = load i16, ptr %i.ak, align 2, !tbaa !1164
  %i.bj = load i16, ptr %i.al, align 2, !tbaa !1164
  %i.bk = load i16, ptr %i.am, align 2, !tbaa !1164
  %i.bl = load i16, ptr %i.an, align 2, !tbaa !1164
  %i.bm = load i16, ptr %i.ao, align 2, !tbaa !1164
  %i.bn = load i16, ptr %i.ap, align 2, !tbaa !1164
  %i.bo = load i16, ptr %i.aq, align 2, !tbaa !1164
  %i.bp = insertelement <8 x i16> poison, i16 %i.bh, i64 0
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 1
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 2
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 3
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 4
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 5
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 6
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 7
  %i.bx = lshr <8 x i16> %i.bg, splat (i16 5)
  %i.by = lshr <8 x i16> %i.bw, splat (i16 5)
  %i.bz = and <8 x i16> %i.bx, splat (i16 1)
  %i.ca = and <8 x i16> %i.by, splat (i16 1)
  %i.cb = xor <8 x i16> %i.bz, splat (i16 1)
  %i.cc = xor <8 x i16> %i.ca, splat (i16 1)
  %i.cd = add <8 x i16> %i.cb, %vec.phi           ; 2 uses
  %i.ce = add <8 x i16> %i.cc, %vec.phi25         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !3871

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ce, %i.cd
  %i.cg = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.k, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.cg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ch = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 4, i64 %i.ch
  %n.vec26 = sub nsw i64 %wide.trip.count, %i.cj  ; 2 uses
  %i.ck = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi28 = phi <4 x i16> [ %i.ck, %vec.epilog.ph ], [ %i.de, %vec.epilog.vector.body ]
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index27
  %i.cm = getelementptr [16 x i8], ptr %i.h, i64 %index27
  %i.cn = getelementptr [16 x i8], ptr %i.h, i64 %index27
  %i.co = getelementptr [16 x i8], ptr %i.h, i64 %index27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 14
  %i.cq = getelementptr i8, ptr %i.cm, i64 30
  %i.cr = getelementptr i8, ptr %i.cn, i64 46
  %i.cs = getelementptr i8, ptr %i.co, i64 62
  %i.ct = load i16, ptr %i.cp, align 2, !tbaa !1164
  %i.cu = load i16, ptr %i.cq, align 2, !tbaa !1164
  %i.cv = load i16, ptr %i.cr, align 2, !tbaa !1164
  %i.cw = load i16, ptr %i.cs, align 2, !tbaa !1164
  %i.cx = insertelement <4 x i16> poison, i16 %i.ct, i64 0
  %i.cy = insertelement <4 x i16> %i.cx, i16 %i.cu, i64 1
  %i.cz = insertelement <4 x i16> %i.cy, i16 %i.cv, i64 2
  %i.da = insertelement <4 x i16> %i.cz, i16 %i.cw, i64 3
  %i.db = lshr <4 x i16> %i.da, splat (i16 5)
  %i.dc = and <4 x i16> %i.db, splat (i16 1)
  %i.dd = xor <4 x i16> %i.dc, splat (i16 1)
  %i.de = add <4 x i16> %i.dd, %vec.phi28         ; 2 uses
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.df = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3872

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dg = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.de)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ]
  %.021.ph = phi i16 [ 0, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.021 = phi i16 [ %spec.select, %vec.epilog.scalar.ph ], [ %.021.ph, %vec.epilog.scalar.ph.preheader ]
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 14
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1164
  %i.dk = lshr i16 %i.dj, 5
  %i.dl = and i16 %i.dk, 1
  %i.dm = xor i16 %i.dl, 1
  %spec.select = add i16 %i.dm, %.021             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3873

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %.preheader
  %.0.lcssa = phi i16 [ 0, %.preheader ], [ %spec.select, %vec.epilog.scalar.ph ] ; 2 uses
  %i.dn = zext nneg i32 %i.e to i64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 14
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !1164
  %i.dr = and i16 %i.dq, 32
  %.not = icmp eq i16 %i.dr, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !1166
  %i.du = sub i16 %1, %.0.lcssa
  %i.dv = add i16 %i.du, %i.dt
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a, %bb.b
  %.018 = phi i16 [ %1, %bb.a ], [ %i.dv, %bb.b ], [ %.0.lcssa, %._crit_edge ]
  ret i16 %.018
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @vdbeUnpackRecord(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !789
  %i.c = zext i16 %i.b to i64
  %i.d = mul nuw nsw i64 %i.c, 56
  %i.e = add nuw nsw i64 %i.d, 96                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1116 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.g, i64 noundef %i.e), !inline_history !37
  br label %sqlite3DbMallocRaw.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.e), !inline_history !37
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ] ; 7 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %sqlite3VdbeAllocUnpackedRecord.exit.thread, label %bb.d

bb.d:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !1174
  store ptr %0, ptr %.0.i.i, align 8, !tbaa !1182
  %i.l = load i16, ptr %i.a, align 2, !tbaa !789
  %i.m = add i16 %i.l, 1
end_hunk_2
begin_hunk_3_@sqlite3VdbeMemRealify:bb.a
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = and i32 %i.c, 8
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %0, align 8, !tbaa !741
  br label %sqlite3VdbeRealValue.exit

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 36
  %.not7.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %0, align 8, !tbaa !741
  %i.h = sitofp i64 %i.g to double
  br label %sqlite3VdbeRealValue.exit

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.c, 18
  %.not8.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i, label %sqlite3VdbeRealValue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %0, ptr noundef null), !inline_history !66
  %.pre = load i16, ptr %i.a, align 4, !tbaa !694
  br label %sqlite3VdbeRealValue.exit

sqlite3VdbeRealValue.exit:                        ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.k = phi i16 [ %i.b, %bb.b ], [ %i.b, %bb.d ], [ %.pre, %bb.f ], [ %i.b, %bb.e ]
  %.0.i = phi double [ %i.e, %bb.b ], [ %i.h, %bb.d ], [ %i.j, %bb.f ], [ 0.000000e+00, %bb.e ]
  store double %.0.i, ptr %0, align 8, !tbaa !741
  %i.l = and i16 %i.k, -3520
  %i.m = or disjoint i16 %i.l, 8
  store i16 %i.m, ptr %i.a, align 4, !tbaa !694
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 65536) i32 @sqlite3_preupdate_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1149 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1171
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.f = load i16, ptr %i.e, align 2, !tbaa !789
  %i.g = zext i16 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @sqlite3_preupdate_depth(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1149 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1183
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1184
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @sqlite3_preupdate_blobwrite(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1149 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1185
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_preupdate_new(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1149 ; 16 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1154 ; 3 uses
  %i.e = icmp eq i32 %i.d, 9
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1928, i32 noundef 95118, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %sqlite3Error.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1155 ; 3 uses
  %.not83 = icmp eq ptr %i.g, null
  %.not84 = icmp eq i32 %i.d, 23
  %or.cond94 = or i1 %.not84, %.not83
  br i1 %or.cond94, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %sext.i = shl i32 %1, 16
  %i.h = ashr exact i32 %sext.i, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.j = load i16, ptr %i.i, align 8, !tbaa !1158 ; 2 uses
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %sqlite3Error.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1159
  %wide.trip.count.i = zext i16 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load i16, ptr %i.m, align 2, !tbaa !789
  %i.o = sext i16 %i.n to i32
  %i.p = icmp eq i32 %i.h, %i.o
  br i1 %i.p, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3Error.exit.thread, label %bb.f, !llvm.loop !79

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %bb.f
  %i.q = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3TableColumnToIndex.exit

bb.h:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1160 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 54
  %i.u = load i16, ptr %i.t, align 2, !tbaa !1161
  %i.v = sext i16 %i.u to i32
  %.not85 = icmp slt i32 %1, %i.v
  br i1 %.not85, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1928, i32 noundef 95124, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %sqlite3ApiExit.exit

bb.j:                                             ; preds = %bb.h
  %i.w = trunc i32 %1 to i16                      ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1098
  %i.z = and i32 %i.y, 32
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = icmp slt i16 %i.w, 0
  %or.cond.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %sext = and i32 %1, 32767                       ; 3 uses
  %.not23.i = icmp eq i16 %i.w, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1162 ; 22 uses
  %.pre = zext nneg i32 %sext to i64              ; 6 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i32 %sext, 5
  br i1 %min.iters.check, label %.lr.ph.i95.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check143 = icmp samesign ult i32 %sext, 17
  br i1 %min.iters.check143, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %.pre, 15                       ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.af, i64 16, i64 %i.ae      ; 2 uses
  %n.vec = sub nsw i64 %.pre, %i.ag               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.cz, %vector.body ]
  %vec.phi144 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.da, %vector.body ]
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 30
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 94
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 110
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 126
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 142
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 158
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 174
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 190
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 206
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 222
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 238
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 254
  %i.bn = load i16, ptr %i.ax, align 2, !tbaa !1164
  %i.bo = load i16, ptr %i.ay, align 2, !tbaa !1164
  %i.bp = load i16, ptr %i.az, align 2, !tbaa !1164
  %i.bq = load i16, ptr %i.ba, align 2, !tbaa !1164
  %i.br = load i16, ptr %i.bb, align 2, !tbaa !1164
  %i.bs = load i16, ptr %i.bc, align 2, !tbaa !1164
  %i.bt = load i16, ptr %i.bd, align 2, !tbaa !1164
  %i.bu = load i16, ptr %i.be, align 2, !tbaa !1164
  %i.bv = insertelement <8 x i16> poison, i16 %i.bn, i64 0
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 1
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 2
  %i.by = insertelement <8 x i16> %i.bx, i16 %i.bq, i64 3
  %i.bz = insertelement <8 x i16> %i.by, i16 %i.br, i64 4
  %i.ca = insertelement <8 x i16> %i.bz, i16 %i.bs, i64 5
  %i.cb = insertelement <8 x i16> %i.ca, i16 %i.bt, i64 6
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bu, i64 7
  %i.cd = load i16, ptr %i.bf, align 2, !tbaa !1164
  %i.ce = load i16, ptr %i.bg, align 2, !tbaa !1164
  %i.cf = load i16, ptr %i.bh, align 2, !tbaa !1164
  %i.cg = load i16, ptr %i.bi, align 2, !tbaa !1164
  %i.ch = load i16, ptr %i.bj, align 2, !tbaa !1164
  %i.ci = load i16, ptr %i.bk, align 2, !tbaa !1164
  %i.cj = load i16, ptr %i.bl, align 2, !tbaa !1164
  %i.ck = load i16, ptr %i.bm, align 2, !tbaa !1164
  %i.cl = insertelement <8 x i16> poison, i16 %i.cd, i64 0
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 1
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 2
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 3
  %i.cp = insertelement <8 x i16> %i.co, i16 %i.ch, i64 4
  %i.cq = insertelement <8 x i16> %i.cp, i16 %i.ci, i64 5
  %i.cr = insertelement <8 x i16> %i.cq, i16 %i.cj, i64 6
  %i.cs = insertelement <8 x i16> %i.cr, i16 %i.ck, i64 7
  %i.ct = lshr <8 x i16> %i.cc, splat (i16 5)
  %i.cu = lshr <8 x i16> %i.cs, splat (i16 5)
  %i.cv = and <8 x i16> %i.ct, splat (i16 1)
  %i.cw = and <8 x i16> %i.cu, splat (i16 1)
  %i.cx = xor <8 x i16> %i.cv, splat (i16 1)
  %i.cy = xor <8 x i16> %i.cw, splat (i16 1)
  %i.cz = add <8 x i16> %i.cx, %vec.phi           ; 2 uses
  %i.da = add <8 x i16> %i.cy, %vec.phi144        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !3874

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.da, %i.cz
  %i.dc = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ag, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i95.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.dc, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dd = and i64 %.pre, 3                        ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  %i.df = select i1 %i.de, i64 4, i64 %i.dd
  %n.vec145 = sub nsw i64 %.pre, %i.df            ; 2 uses
  %i.dg = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index146 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi147 = phi <4 x i16> [ %i.dg, %vec.epilog.ph ], [ %i.ea, %vec.epilog.vector.body ]
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index146
  %i.di = getelementptr [16 x i8], ptr %i.ad, i64 %index146
  %i.dj = getelementptr [16 x i8], ptr %i.ad, i64 %index146
  %i.dk = getelementptr [16 x i8], ptr %i.ad, i64 %index146
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 14
  %i.dm = getelementptr i8, ptr %i.di, i64 30
  %i.dn = getelementptr i8, ptr %i.dj, i64 46
  %i.do = getelementptr i8, ptr %i.dk, i64 62
  %i.dp = load i16, ptr %i.dl, align 2, !tbaa !1164
  %i.dq = load i16, ptr %i.dm, align 2, !tbaa !1164
  %i.dr = load i16, ptr %i.dn, align 2, !tbaa !1164
  %i.ds = load i16, ptr %i.do, align 2, !tbaa !1164
  %i.dt = insertelement <4 x i16> poison, i16 %i.dp, i64 0
  %i.du = insertelement <4 x i16> %i.dt, i16 %i.dq, i64 1
  %i.dv = insertelement <4 x i16> %i.du, i16 %i.dr, i64 2
  %i.dw = insertelement <4 x i16> %i.dv, i16 %i.ds, i64 3
  %i.dx = lshr <4 x i16> %i.dw, splat (i16 5)
  %i.dy = and <4 x i16> %i.dx, splat (i16 1)
  %i.dz = xor <4 x i16> %i.dy, splat (i16 1)
  %i.ea = add <4 x i16> %i.dz, %vec.phi147        ; 2 uses
  %index.next148 = add nuw i64 %index146, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next148, %n.vec145
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3875

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ec = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ea)
  br label %.lr.ph.i95.preheader

.lr.ph.i95.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i97.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec145, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.dc, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ]
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.preheader, %.lr.ph.i95
  %indvars.iv.i97 = phi i64 [ %indvars.iv.next.i98, %.lr.ph.i95 ], [ %indvars.iv.i97.ph, %.lr.ph.i95.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i95 ], [ %.021.i.ph, %.lr.ph.i95.preheader ]
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i97
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 14
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !1164
  %i.eg = lshr i16 %i.ef, 5
  %i.eh = and i16 %i.eg, 1
  %i.ei = xor i16 %i.eh, 1
  %spec.select.i = add i16 %i.ei, %.021.i         ; 2 uses
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond.not.i99 = icmp eq i64 %indvars.iv.next.i98, %.pre
  br i1 %exitcond.not.i99, label %._crit_edge.i, label %.lr.ph.i95, !llvm.loop !3876

._crit_edge.i:                                    ; preds = %.lr.ph.i95, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i95 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.pre
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 14
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !1164
  %i.em = and i16 %i.el, 32
  %.not.i100 = icmp eq i16 %i.em, 0
  br i1 %.not.i100, label %sqlite3TableColumnToStorage.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.eo = load i16, ptr %i.en, align 8, !tbaa !1166
  %i.ep = sub i16 %i.w, %.0.lcssa.i
  %i.eq = add i16 %i.ep, %i.eo
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.j, %._crit_edge.i, %bb.k
  %.018.i = phi i16 [ %i.w, %bb.j ], [ %i.eq, %bb.k ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.er = sext i16 %.018.i to i32
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %._crit_edge.loopexit.split.loop.exit13.i, %sqlite3TableColumnToStorage.exit
  %.064 = phi i32 [ %i.er, %sqlite3TableColumnToStorage.exit ], [ %i.q, %._crit_edge.loopexit.split.loop.exit13.i ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1167
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ev = load i16, ptr %i.eu, align 8, !tbaa !789 ; 2 uses
  %i.ew = sext i16 %i.ev to i32
  %i.ex = icmp sge i32 %.064, %i.ew
  %i.ey = icmp slt i32 %.064, 0
  %or.cond = or i1 %i.ey, %i.ex
  br i1 %or.cond, label %sqlite3Error.exit.thread, label %bb.l

bb.l:                                             ; preds = %sqlite3TableColumnToIndex.exit
  %i.ez = icmp eq i32 %i.d, 18
  br i1 %i.ez, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1186 ; 2 uses
  %.not89 = icmp eq ptr %i.fb, null
  br i1 %.not89, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.fc = load ptr, ptr %i.b, align 8, !tbaa !1183
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 104
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !923
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !1187
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [56 x i8], ptr %i.fe, i64 %i.fh ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 20
  %i.fk = load i16, ptr %i.fj, align 4, !tbaa !694
  %i.fl = and i16 %i.fk, 1024
  %.not90 = icmp eq i16 %i.fl, 0
end_hunk_3
begin_hunk_4_@sqlite3WalCheckpoint:bb.a
  %i.eh = load atomic volatile i32, ptr %i.eg monotonic, align 4 ; 3 uses
  %i.ei = icmp ugt i32 %.2115.ph.2.i, %i.eh
  br i1 %i.ei, label %bb.y, label %walBusyLock.exit.thread199.3.i

bb.y:                                             ; preds = %walBusyLock.exit.thread199.2.i
  %.not11.i.3.i = icmp eq ptr %.2.ph.2.i, null
  br i1 %.not11.i.3.i, label %.split.us.i.3.i, label %.split.i.3.i

.split.i.3.i:                                     ; preds = %bb.y, %bb.z
  %i.ej = load i8, ptr %i.bn, align 1, !tbaa !1713
  %.not.i.i.3.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.3.i, label %walLockExclusive.exit.i.3.i, label %walBusyLock.exit.thread.3.i

walLockExclusive.exit.i.3.i:                      ; preds = %.split.i.3.i
  %i.ek = load ptr, ptr %i.bo, align 8, !tbaa !1718 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !870
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 112
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1507
  %i.eo = tail call i32 %i.en(ptr noundef nonnull %i.ek, i32 noundef range(i32 -2147483645, 8) 7, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !4658 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 5
  br i1 %i.ep, label %bb.z, label %walBusyLock.exit.3.i

bb.z:                                             ; preds = %walLockExclusive.exit.i.3.i
  %i.eq = tail call i32 %.2.ph.2.i(ptr noundef %4) #59, !inline_history !4659
  %.not.i.3.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.3.i, label %walBusyLock.exit.thread199.3.i, label %.split.i.3.i, !llvm.loop !4657

.split.us.i.3.i:                                  ; preds = %bb.y
  %i.er = load i8, ptr %i.bn, align 1, !tbaa !1713
  %.not.i.us.i.3.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.us.i.3.i, label %walLockExclusive.exit.us.i.3.i, label %walBusyLock.exit.thread.3.i

walLockExclusive.exit.us.i.3.i:                   ; preds = %.split.us.i.3.i
  %i.es = load ptr, ptr %i.bo, align 8, !tbaa !1718 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !870
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 112
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1507
  %i.ew = tail call i32 %i.ev(ptr noundef nonnull %i.es, i32 noundef range(i32 -2147483645, 8) 7, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !4658
  br label %walBusyLock.exit.3.i

walBusyLock.exit.3.i:                             ; preds = %walLockExclusive.exit.i.3.i, %walLockExclusive.exit.us.i.3.i
  %.us-phi.i.3.i = phi i32 [ %i.ew, %walLockExclusive.exit.us.i.3.i ], [ %i.eo, %walLockExclusive.exit.i.3.i ] ; 3 uses
  switch i32 %.us-phi.i.3.i, label %walCheckpoint.exit [
    i32 0, label %walBusyLock.exit.thread.3.i
    i32 5, label %walBusyLock.exit.thread199.3.i
  ]

walBusyLock.exit.thread.3.i:                      ; preds = %.split.i.3.i, %walBusyLock.exit.3.i, %.split.us.i.3.i
  store atomic volatile i32 -1, ptr %i.eg monotonic, align 4
  %i.ex = load i8, ptr %i.bn, align 1, !tbaa !1713
  %.not.i148.3.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i148.3.i, label %bb.aa, label %walBusyLock.exit.thread199.3.i

bb.aa:                                            ; preds = %walBusyLock.exit.thread.3.i
  %i.ey = load ptr, ptr %i.bo, align 8, !tbaa !1718 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !870
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1507
  %i.fc = tail call i32 %i.fb(ptr noundef nonnull %i.ey, i32 noundef range(i32 -2147483645, 257) 7, i32 noundef range(i32 -253, 5) 1, i32 noundef 9) #59, !inline_history !4660 ; 0 uses
  br label %walBusyLock.exit.thread199.3.i

walBusyLock.exit.thread199.3.i:                   ; preds = %bb.z, %bb.aa, %walBusyLock.exit.thread.3.i, %walBusyLock.exit.3.i, %walBusyLock.exit.thread199.2.i
  %.2115.ph.3.i = phi i32 [ %.2115.ph.2.i, %bb.aa ], [ %.2115.ph.2.i, %walBusyLock.exit.thread.3.i ], [ %.2115.ph.2.i, %walBusyLock.exit.thread199.2.i ], [ %i.eh, %walBusyLock.exit.3.i ], [ %i.eh, %bb.z ] ; 5 uses
  %.2111.ph.3.i = phi i32 [ 0, %bb.aa ], [ 0, %walBusyLock.exit.thread.3.i ], [ %.2111.ph.2.i, %walBusyLock.exit.thread199.2.i ], [ %.us-phi.i.3.i, %walBusyLock.exit.3.i ], [ 5, %bb.z ]
  %.2.ph.3.i = phi ptr [ %.2.ph.2.i, %bb.aa ], [ %.2.ph.2.i, %walBusyLock.exit.thread.3.i ], [ %.2.ph.2.i, %walBusyLock.exit.thread199.2.i ], [ null, %walBusyLock.exit.3.i ], [ null, %bb.z ] ; 4 uses
  %i.fd = load volatile i32, ptr %i.bi, align 4, !tbaa !1819
  %i.fe = icmp ult i32 %i.fd, %.2115.ph.3.i
  br i1 %i.fe, label %bb.ab, label %walUnlockExclusive.exit173.i

bb.ab:                                            ; preds = %walBusyLock.exit.thread199.3.i
  %i.ff = load volatile i32, ptr %i.bi, align 4, !tbaa !1819
  %i.fg = load i32, ptr %i.at, align 8, !tbaa !1796 ; 4 uses
  %i.fh = add i32 %i.fg, 4096
  %i.fi = zext i32 %i.fh to i64
  %i.fj = add nuw nsw i64 %i.fi, 17592186040353
  %i.fk = lshr i64 %i.fj, 12                      ; 2 uses
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = add nsw i32 %i.fl, 1                    ; 2 uses
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 5
  %i.fp = zext i32 %i.fg to i64
  %i.fq = shl nuw nsw i64 %i.fp, 1
  %i.fr = add nuw nsw i64 %i.fq, 8
  %i.fs = add nuw nsw i64 %i.fr, %i.fo            ; 3 uses
  %i.ft = tail call i32 @sqlite3_initialize(), !inline_history !4661
  %.not.i.i149.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i149.i, label %sqlite3_malloc64.exit.i.i, label %.thread98

sqlite3_malloc64.exit.i.i:                        ; preds = %bb.ab
  %i.fu = tail call i32 @llvm.umin.i32(i32 %i.fg, i32 4096)
  %i.fv = shl nuw nsw i32 %i.fu, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = add nuw nsw i64 %i.fs, %i.fw
  %i.fy = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.fx), !inline_history !4661 ; 16 uses
  %.not.i150.i = icmp eq ptr %i.fy, null
  br i1 %.not.i150.i, label %.thread98, label %bb.ac

bb.ac:                                            ; preds = %sqlite3_malloc64.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fy, i8 0, i64 %i.fs, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 4 uses
  store i32 %i.fm, ptr %i.fz, align 4, !tbaa !576
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fs ; 4 uses
  %i.gb = add i32 %i.ff, 4097
  %i.gc = zext i32 %i.gb to i64
  %i.gd = add nuw nsw i64 %i.gc, 17592186040353
  %i.ge = lshr i64 %i.gd, 12                      ; 2 uses
  %i.gf = trunc i64 %i.ge to i32
  %.not73.i.i = icmp sgt i32 %i.gf, %i.fl
  br i1 %.not73.i.i, label %walIteratorInit.exit.i, label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %bb.ac
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %sext.i.i = shl i64 %i.ge, 32
  %i.gk = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %sext84.i.i = shl i64 %i.fk, 32
  %i.gl = ashr exact i64 %sext84.i.i, 32          ; 2 uses
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.gk, i64 %i.gl)
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i.i, %.lr.ph70.i.i
  %indvars.iv76.i.i = phi i64 [ %i.gk, %.lr.ph70.i.i ], [ %indvars.iv.next77.i.i, %.loopexit.i.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #59
  %i.gm = load i32, ptr %i.gh, align 8, !tbaa !1799
  %i.gn = sext i32 %i.gm to i64
  %.not.i.i.i.i = icmp slt i64 %indvars.iv76.i.i, %i.gn
  br i1 %.not.i.i.i.i, label %bb.ae, label %walIndexPage.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.go = load ptr, ptr %i.bh, align 8, !tbaa !1721
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %indvars.iv76.i.i
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !794 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %walIndexPage.exit.i.i.i, label %walIndexPage.exit.thread.i.i.thread.i

walIndexPage.exit.thread.i.i.thread.i:            ; preds = %bb.ae
  %i.gs = icmp eq i64 %indvars.iv76.i.i, 0        ; 2 uses
  %.idx.i209.i = select i1 %i.gs, i64 136, i64 0  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx.i209.i
  %.pre291.i = trunc nsw i64 %indvars.iv76.i.i to i32
  br label %bb.af

walIndexPage.exit.i.i.i:                          ; preds = %bb.ae, %bb.ad
  %i.gu = trunc nsw i64 %indvars.iv76.i.i to i32  ; 2 uses
  %i.gv = call fastcc i32 @walIndexPageRealloc(ptr noundef nonnull %0, i32 noundef %i.gu, ptr noundef nonnull %i.gg), !inline_history !4662 ; 3 uses
  %.pr.i.i.i = load ptr, ptr %i.gg, align 8, !tbaa !1801 ; 2 uses
  %.not.i55.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i55.i.i, label %walHashGet.exit.thread.i.i, label %walIndexPage.exit.thread.i.i.i

walIndexPage.exit.thread.i.i.i:                   ; preds = %walIndexPage.exit.i.i.i
  %i.gw = icmp eq i64 %indvars.iv76.i.i, 0        ; 2 uses
  %.idx.i.i = select i1 %i.gw, i64 136, i64 0     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 %.idx.i.i
  %i.gy = icmp eq i32 %i.gv, 0
  br i1 %i.gy, label %bb.af, label %._crit_edge71.thread91.i.i

walHashGet.exit.thread.i.i:                       ; preds = %walIndexPage.exit.i.i.i
  %spec.store.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.gv, i32 1)
  br label %._crit_edge71.thread91.i.i

bb.af:                                            ; preds = %walIndexPage.exit.thread.i.i.i, %walIndexPage.exit.thread.i.i.thread.i
  %.pre-phi.i = phi i32 [ %.pre291.i, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gu, %walIndexPage.exit.thread.i.i.i ]
  %i.gz = phi ptr [ %i.gt, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gx, %walIndexPage.exit.thread.i.i.i ] ; 9 uses
  %.idx.i210.i = phi i64 [ %.idx.i209.i, %walIndexPage.exit.thread.i.i.thread.i ], [ %.idx.i.i, %walIndexPage.exit.thread.i.i.i ]
  %i.ha = phi i1 [ %i.gs, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gw, %walIndexPage.exit.thread.i.i.i ]
  %i.hb = shl i32 %.pre-phi.i, 12
  %i.hc = add i32 %i.hb, -34
  %i.hd = select i1 %i.ha, i32 0, i32 %i.hc       ; 3 uses
  %i.he = icmp eq i64 %indvars.iv76.i.i, %i.gl
  %gepdiff.i.i = sub nuw nsw i64 16384, %.idx.i210.i
  %i.hf = lshr exact i64 %gepdiff.i.i, 2
  %i.hg = trunc nuw nsw i64 %i.hf to i32
  %i.hh = sub i32 %i.fg, %i.hd
  %storemerge.i.i = select i1 %i.he, i32 %i.hh, i32 %i.hg ; 5 uses
  %i.hi = load i32, ptr %i.fz, align 4, !tbaa !576
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [32 x i8], ptr %i.gj, i64 %i.hj
  %i.hl = zext i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.hl ; 5 uses
  %i.hn = or disjoint i32 %i.hd, 1                ; 2 uses
  store i32 %i.hn, ptr %i.gi, align 8, !tbaa !1802
  %i.ho = icmp sgt i32 %storemerge.i.i, 0
  br i1 %i.ho, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %bb.af
  %wide.trip.count.i.i = zext nneg i32 %storemerge.i.i to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %storemerge.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check233 = icmp ult i32 %storemerge.i.i, 16
  br i1 %min.iters.check233, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hp = and i64 %wide.trip.count.i.i, 12
  %n.vec = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <8 x i16> %vec.ind, ptr %i.hq, align 2, !tbaa !789
  store <8 x i16> %step.add, ptr %i.hr, align 2, !tbaa !789
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !4663

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.lr.ph67.preheader.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec234 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %i.ht = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.ht, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index235 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next237, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind236 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next238, %vec.epilog.vector.body ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %index235
  store <4 x i16> %vec.ind236, ptr %i.hu, align 2, !tbaa !789
  %index.next237 = add nuw i64 %index235, 4       ; 2 uses
  %vec.ind.next238 = add <4 x i16> %vec.ind236, splat (i16 4)
  %i.hv = icmp eq i64 %index.next237, %n.vec234
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4664

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n239 = icmp eq i64 %n.vec234, %wide.trip.count.i.i
  br i1 %cmp.n239, label %.lr.ph67.preheader.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec234, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.hw = trunc i64 %indvars.iv.i.i to i16
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv.i.i
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !789
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph67.preheader.i.i.i, label %.lr.ph.i.i, !llvm.loop !4665

._crit_edge.i.i:                                  ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %10, i8 0, i64 208, i1 false)
  br label %.lr.ph75.preheader.i.i.i

.lr.ph67.preheader.i.i.i:                         ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %10, i8 0, i64 208, i1 false)
  br label %.lr.ph67.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i
  %i.hy = add nuw nsw i32 %.1.lcssa.i.i.i, 1
  %i.hz = icmp ult i32 %.1.lcssa.i.i.i, 12
  br i1 %i.hz, label %.lr.ph75.preheader.i.i.i, label %.loopexit.i.i

.lr.ph75.preheader.i.i.i:                         ; preds = %.preheader.i.i.i, %._crit_edge.i.i
  %.026.lcssa92.i.i.i = phi i32 [ %i.hy, %.preheader.i.i.i ], [ 1, %._crit_edge.i.i ]
  %.052.lcssa91.i.i.i = phi ptr [ %.153.lcssa.i.i.i, %.preheader.i.i.i ], [ null, %._crit_edge.i.i ]
  %.055.lcssa90.i.i.i = phi i32 [ %.156.lcssa.i.i.i, %.preheader.i.i.i ], [ 0, %._crit_edge.i.i ]
  %i.ia = zext nneg i32 %.026.lcssa92.i.i.i to i64
  br label %.lr.ph75.i.i.i

.lr.ph67.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph67.preheader.i.i.i
  %indvars.iv80.i.i.i = phi i64 [ 0, %.lr.ph67.preheader.i.i.i ], [ %indvars.iv.next81.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv80.i.i.i ; 2 uses
  %i.ic = trunc nuw nsw i64 %indvars.iv80.i.i.i to i32 ; 2 uses
  %i.id = and i32 %i.ic, 1
  %.not2859.i.i.i = icmp eq i32 %i.id, 0
  br i1 %.not2859.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph67.i.i.i, %walMerge.exit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %walMerge.exit.i.i.i ], [ 0, %.lr.ph67.i.i.i ] ; 3 uses
  %.15361.i.i.i = phi ptr [ %i.ig, %walMerge.exit.i.i.i ], [ %i.ib, %.lr.ph67.i.i.i ] ; 2 uses
  %.15660.i.i.i = phi i32 [ %.038.lcssa.i.i.i.i, %walMerge.exit.i.i.i ], [ 1, %.lr.ph67.i.i.i ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv.i.i.i ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !4690 ; 6 uses
  %i.ih = load i32, ptr %i.ie, align 16, !tbaa !4691 ; 3 uses
  %i.ii = icmp sgt i32 %.15660.i.i.i, 0           ; 2 uses
  %i.ij = icmp sgt i32 %i.ih, 0                   ; 2 uses
  %i.ik = or i1 %i.ii, %i.ij
  br i1 %i.ik, label %.lr.ph.i.i.i.i, label %walMerge.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i, %bb.al
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.al ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.il = phi i1 [ %i.js, %bb.al ], [ %i.ij, %.lr.ph.i.i.i ]
  %i.im = phi i1 [ %i.jr, %bb.al ], [ %i.ii, %.lr.ph.i.i.i ]
  %.03943.i.i.i.i = phi i32 [ %.1.i.i.i.i, %bb.al ], [ 0, %.lr.ph.i.i.i ] ; 4 uses
  %.04042.i.i.i.i = phi i32 [ %.2.i.i.i.i, %bb.al ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  br i1 %i.il, label %bb.ag, label %.lr.ph._crit_edge.i.i.i.i

.lr.ph._crit_edge.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  %.pre46.i.i.i.i = sext i32 %.03943.i.i.i.i to i64
  br label %bb.ai

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.in = sext i32 %.04042.i.i.i.i to i64         ; 2 uses
  br i1 %i.im, label %bb.ah, label %._crit_edge45.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.io = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !789
  %i.iq = zext i16 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !576
  %i.it = sext i32 %.03943.i.i.i.i to i64         ; 2 uses
  %i.iu = getelementptr inbounds [2 x i8], ptr %.15361.i.i.i, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !789
  %i.iw = zext i16 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !576
  %i.iz = icmp ult i32 %i.is, %i.iy
  br i1 %i.iz, label %._crit_edge45.i.i.i.i, label %bb.ai

._crit_edge45.i.i.i.i:                            ; preds = %bb.ah, %bb.ag
  %i.ja = add nsw i32 %.04042.i.i.i.i, 1
  %i.jb = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.in
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %.lr.ph._crit_edge.i.i.i.i
  %.pre-phi47.i.i.i.i = phi i64 [ %.pre46.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %i.it, %bb.ah ]
  %i.jc = add nsw i32 %.03943.i.i.i.i, 1
  %i.jd = getelementptr inbounds [2 x i8], ptr %.15361.i.i.i, i64 %.pre-phi47.i.i.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge45.i.i.i.i
  %.141.i.i.i.i = phi i32 [ %i.ja, %._crit_edge45.i.i.i.i ], [ %.04042.i.i.i.i, %bb.ai ] ; 4 uses
  %.1.i.i.i.i = phi i32 [ %.03943.i.i.i.i, %._crit_edge45.i.i.i.i ], [ %i.jc, %bb.ai ] ; 2 uses
  %.0.in.i.i.i.i = phi ptr [ %i.jb, %._crit_edge45.i.i.i.i ], [ %i.jd, %bb.ai ]
  %.0.i.i.i.i = load i16, ptr %.0.in.i.i.i.i, align 2, !tbaa !789 ; 2 uses
  %i.je = zext i16 %.0.i.i.i.i to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !576
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.i.i.i.i
  store i16 %.0.i.i.i.i, ptr %i.jh, align 2, !tbaa !789
  %i.ji = icmp slt i32 %.141.i.i.i.i, %i.ih
  br i1 %i.ji, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jj = sext i32 %.141.i.i.i.i to i64
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !789
  %i.jm = zext i16 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !576
  %i.jp = icmp eq i32 %i.jo, %i.jg
  %i.jq = zext i1 %i.jp to i32
  %spec.select.i.i.i.i = add nsw i32 %.141.i.i.i.i, %i.jq
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.2.i.i.i.i = phi i32 [ %.141.i.i.i.i, %bb.aj ], [ %spec.select.i.i.i.i, %bb.ak ] ; 2 uses
  %i.jr = icmp slt i32 %.1.i.i.i.i, %.15660.i.i.i ; 2 uses
  %i.js = icmp slt i32 %.2.i.i.i.i, %i.ih         ; 2 uses
  %i.jt = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %i.jt, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !4666

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.al
  %i.ju = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  br label %walMerge.exit.i.i.i

walMerge.exit.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.lr.ph.i.i.i
  %.038.lcssa.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.ju, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.jv = shl nuw i32 %.038.lcssa.i.i.i.i, 1
  %i.jw = zext i32 %i.jv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ig, ptr nonnull align 2 %i.ga, i64 %i.jw, i1 false)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.jx = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.jy = shl nuw i32 2, %i.jx
  %i.jz = and i32 %i.jy, %i.ic
  %.not28.i.i.i = icmp eq i32 %i.jz, 0
  br i1 %.not28.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4667

._crit_edge.loopexit.i.i.i:                       ; preds = %walMerge.exit.i.i.i
  %i.ka = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.lr.ph67.i.i.i
  %.156.lcssa.i.i.i = phi i32 [ 1, %.lr.ph67.i.i.i ], [ %.038.lcssa.i.i.i.i, %._crit_edge.loopexit.i.i.i ] ; 3 uses
  %.153.lcssa.i.i.i = phi ptr [ %i.ib, %.lr.ph67.i.i.i ], [ %i.ig, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.1.lcssa.i.i.i = phi i32 [ 0, %.lr.ph67.i.i.i ], [ %i.ka, %._crit_edge.loopexit.i.i.i ] ; 3 uses
  %i.kb = zext i32 %.1.lcssa.i.i.i to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.kb ; 2 uses
end_hunk_4
begin_hunk_5_@sqlite3VdbeMemFromBtree
define internal fastcc i32 @sqlite3VdbeMemFromBtree(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef initializes((20, 22)) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  store i16 1, ptr %i.a, align 4, !tbaa !694
  %i.b = icmp ugt i32 %2, 2147483390
  br i1 %i.b, label %sqlite3VdbeMemRelease.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64                  ; 2 uses
  %i.d = zext i32 %1 to i64
  %i.e = add nuw nsw i64 %i.c, %i.d
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.f, align 8, !tbaa !1258 ; 2 uses
  %i.g = getelementptr i8, ptr %.val, i64 52
  %.val.val = load i32, ptr %i.g, align 4, !tbaa !665
  %i.h = getelementptr i8, ptr %.val, i64 64
  %.val.val23 = load i32, ptr %i.h, align 8, !tbaa !1016
  %i.i = zext i32 %.val.val to i64
  %i.j = zext i32 %.val.val23 to i64
  %i.k = mul nuw nsw i64 %i.j, %i.i
  %i.l = icmp samesign ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 86365, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %sqlite3VdbeMemRelease.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !692
  %.not = icmp sgt i32 %i.n, %2
  br i1 %.not, label %sqlite3VdbeMemClearAndResize.exit.thread, label %sqlite3VdbeMemClearAndResize.exit

sqlite3VdbeMemClearAndResize.exit.thread:         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !693  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !768
  store i16 1, ptr %i.a, align 4, !tbaa !694
  br label %bb.e

sqlite3VdbeMemClearAndResize.exit:                ; preds = %bb.d
  %i.r = add nuw nsw i32 %2, 1
  %i.s = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %3, i32 noundef %i.r, i32 noundef 0), !inline_history !1115 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %sqlite3VdbeMemClearAndResize.exit._crit_edge, label %sqlite3VdbeMemRelease.exit

sqlite3VdbeMemClearAndResize.exit._crit_edge:     ; preds = %sqlite3VdbeMemClearAndResize.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !768
  br label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeMemClearAndResize.exit._crit_edge, %sqlite3VdbeMemClearAndResize.exit.thread
  %i.u = phi ptr [ %.pre, %sqlite3VdbeMemClearAndResize.exit._crit_edge ], [ %i.p, %sqlite3VdbeMemClearAndResize.exit.thread ]
  %i.v = tail call fastcc i32 @accessPayload(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.u, i32 noundef 0), !inline_history !80 ; 3 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !768
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.c
  store i8 0, ptr %i.z, align 1, !tbaa !741
  store i16 16, ptr %i.a, align 4, !tbaa !694
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %2, ptr %i.aa, align 8, !tbaa !934
  br label %sqlite3VdbeMemRelease.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = load i16, ptr %i.a, align 4, !tbaa !694
  %i.ac = and i16 %i.ab, -28672
  %.not.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !692
  %.not3.i = icmp eq i32 %i.ad, 0
  br i1 %.not3.i, label %sqlite3VdbeMemRelease.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %3)
  br label %sqlite3VdbeMemRelease.exit

sqlite3VdbeMemRelease.exit:                       ; preds = %bb.i, %bb.h, %sqlite3VdbeMemClearAndResize.exit, %bb.f, %bb.a, %bb.c
  %.019 = phi i32 [ 7, %bb.a ], [ 11, %bb.c ], [ 0, %bb.f ], [ %i.s, %sqlite3VdbeMemClearAndResize.exit ], [ %i.v, %bb.h ], [ %i.v, %bb.i ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @sqlite3BtreeOffset(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call fastcc void @getCellInfo(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1258
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !665
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1124 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1080
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, -1
  %i.l = mul nsw i64 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1133
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1008
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = add nsw i64 %i.s, %i.l
  ret i64 %i.t
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @putVarint64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) unnamed_addr #38 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %.not = icmp ult i64 %1, 72057594037927936
  br i1 %.not, label %.preheader, label %.loopexit.loopexit33

.loopexit.loopexit33:                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.c, align 1, !tbaa !741
  %i.d = lshr i64 %1, 8
  %i.e = trunc i64 %i.d to i8
  %i.f = or i8 %i.e, -128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.f, ptr %i.g, align 1, !tbaa !741
  %i.h = lshr i64 %1, 15
  %i.i = trunc i64 %i.h to i8
  %i.j = or i8 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.j, ptr %i.k, align 1, !tbaa !741
  %i.l = lshr i64 %1, 22
  %i.m = trunc i64 %i.l to i8
  %i.n = or i8 %i.m, -128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.n, ptr %i.o, align 1, !tbaa !741
  %i.p = lshr i64 %1, 29
  %i.q = trunc i64 %i.p to i8
  %i.r = or i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !741
  %i.t = lshr i64 %1, 36
  %i.u = trunc i64 %i.t to i8
  %i.v = or i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !741
  %i.x = lshr i64 %1, 43
  %i.y = trunc i64 %i.x to i8
  %i.z = or i8 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !741
  %i.ab = lshr i64 %1, 50
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = or i8 %i.ac, -128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !741
  %i.af = lshr i64 %1, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, -128
  store i8 %i.ah, ptr %0, align 1, !tbaa !741
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv43 = phi i32 [ %indvars.iv.next44, %.preheader ], [ 1, %bb.a ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 7 uses
  %.125 = phi i64 [ %i.al, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.ai = trunc i64 %.125 to i8
  %i.aj = or i8 %i.ai, -128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !741
  %i.al = lshr i64 %.125, 7                       ; 2 uses
  %.not27 = icmp eq i64 %i.al, 0
  %indvars.iv.next44 = add nuw nsw i32 %indvars.iv43, 1
  br i1 %.not27, label %iter.check, label %.preheader, !llvm.loop !4956

iter.check:                                       ; preds = %.preheader
  %i.am = load i8, ptr %i.a, align 1, !tbaa !741
  %i.an = and i8 %i.am, 127
  store i8 %i.an, ptr %i.a, align 1, !tbaa !741
  %wide.trip.count = zext nneg i32 %indvars.iv43 to i64 ; 6 uses
  %min.iters.check = icmp samesign ult i32 %indvars.iv43, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp samesign ult i32 %indvars.iv43, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.ap = sub nsw i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = sub i64 %indvars.iv, %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -15
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -31
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !741
  %wide.load46 = load <16 x i8>, ptr %i.at, align 1, !tbaa !741
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse47 = shufflevector <16 x i8> %wide.load46, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %reverse, ptr %i.au, align 1, !tbaa !741
  store <16 x i8> %reverse47, ptr %i.av, align 1, !tbaa !741
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !4957

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !793

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.ax = sub nsw i64 %indvars.iv, %n.vec48
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = sub i64 %indvars.iv, %index49
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -7
  %wide.load50 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !741
  %reverse51 = shufflevector <8 x i8> %wide.load50, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %index49
  store <8 x i8> %reverse51, ptr %i.bb, align 1, !tbaa !741
  %index.next52 = add nuw i64 %index49, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4958

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %n.vec48, %wide.trip.count
  br i1 %cmp.n53, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv38.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  %indvars.iv36.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %vec.epilog.scalar.ph ], [ %indvars.iv38.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %vec.epilog.scalar.ph ], [ %indvars.iv36.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv36
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !741
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv38
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !741
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !4959

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bg = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit33, %.loopexit.loopexit
  %.026 = phi i32 [ %i.bg, %.loopexit.loopexit ], [ 9, %.loopexit.loopexit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @moveToRoot(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 6 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !1849  ; 2 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not51 = icmp eq i8 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.pre63 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1124 ; 2 uses
  br i1 %.not51, label %._crit_edge62, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.pre63, i64 112
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !1029 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val57, i64 52
  %i.f = load i16, ptr %i.e, align 4, !tbaa !902
  %i.g = and i16 %i.f, 32
  %.not.i.i = icmp eq i16 %i.g, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val57, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !903  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !904
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !904
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 168 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !905
  %i.o = getelementptr inbounds nuw i8, ptr %.val57, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !906
  store ptr %.val57, ptr %i.m, align 8, !tbaa !905
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !907  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val57, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !908
  %i.t = add i32 %i.s, -1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.w = load i64, ptr %i.v, align 8, !tbaa !637
  %i.x = mul nsw i64 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %.val57, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !901
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !870
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !910
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %i.q, i64 noundef %i.x, ptr noundef %i.z) #59, !inline_history !198 ; 0 uses
  br label %releasePageNotNull.exit

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val57)
  br label %releasePageNotNull.exit

releasePageNotNull.exit:                          ; preds = %bb.d, %bb.e
  %i.ae = load i8, ptr %i.a, align 4, !tbaa !1849
  %i.af = add i8 %i.ae, -1                        ; 3 uses
  store i8 %i.af, ptr %i.a, align 4, !tbaa !1849
  %.not5361 = icmp eq i8 %i.af, 0
  br i1 %.not5361, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %releasePageNotNull.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %releasePageNotNull.exit59
  %i.ah = phi i8 [ %i.af, %.lr.ph ], [ %i.bn, %releasePageNotNull.exit59 ]
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1752
  %i.al = getelementptr i8, ptr %i.ak, i64 112
  %.val = load ptr, ptr %i.al, align 8, !tbaa !1029 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 52
  %i.an = load i16, ptr %i.am, align 4, !tbaa !902
  %i.ao = and i16 %i.an, 32
  %.not.i.i58 = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i58, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !903 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 152 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !904
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !904
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 168 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !905
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 32
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !906
  store ptr %.val, ptr %i.au, align 8, !tbaa !905
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !907 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !908
  %i.bb = add i32 %i.ba, -1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !637
  %i.bf = mul nsw i64 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !901
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !870
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !910
  %i.bl = tail call i32 %i.bk(ptr noundef nonnull %i.ay, i64 noundef %i.bf, ptr noundef %i.bh) #59, !inline_history !198 ; 0 uses
  br label %releasePageNotNull.exit59

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val)
  br label %releasePageNotNull.exit59

releasePageNotNull.exit59:                        ; preds = %bb.g, %bb.h
  %i.bm = load i8, ptr %i.a, align 4, !tbaa !1849
  %i.bn = add i8 %i.bm, -1                        ; 3 uses
  store i8 %i.bn, ptr %i.a, align 4, !tbaa !1849
  %.not53 = icmp eq i8 %i.bn, 0
  br i1 %.not53, label %._crit_edge, label %bb.f, !llvm.loop !4960

._crit_edge:                                      ; preds = %releasePageNotNull.exit59, %releasePageNotNull.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1752 ; 2 uses
  store ptr %i.bp, ptr %.phi.trans.insert, align 8, !tbaa !1124
  br label %bb.y
end_hunk_5
begin_hunk_6_@vtabCallConstructor:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  br label %sqlite3Strlen30.exit

bb.aj:                                            ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.em = load i8, ptr %i.el, align 8
  %i.en = lshr i8 %i.em, 4                        ; 2 uses
  %.not8.i = icmp eq i8 %i.en, 0
  br i1 %.not8.i, label %sqlite3Strlen30.exit, label %sqlite3ColumnType.exit

sqlite3ColumnType.exit:                           ; preds = %bb.aj
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = getelementptr [8 x i8], ptr @sqlite3StdType, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !747 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.critedge, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %sqlite3ColumnType.exit, %bb.ai, %bb.aj
  %.0.i155166 = phi ptr [ %i.er, %sqlite3ColumnType.exit ], [ @.str.4, %bb.aj ], [ %i.ek, %bb.ai ] ; 18 uses
  %i.et = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i155166) #60 ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %i.ev = and i32 %i.eu, 1073741823               ; 3 uses
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %sqlite3Strlen30.exit
  %scevgep = getelementptr i8, ptr %.0.i155166, i64 6
  %wide.trip.count = and i64 %i.et, 1073741823    ; 3 uses
  %i.ex = load i8, ptr %.0.i155166, align 1, !tbaa !741
  %i.ey = and i8 %i.ex, -33
  %i.ez = icmp eq i8 %i.ey, 72
  br i1 %i.ez, label %.lr.ph.i158.1.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.1.peel:                               ; preds = %bb.ak
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 1 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !741
  %i.fc = and i8 %i.fb, -33
  %i.fd = icmp eq i8 %i.fc, 73
  br i1 %i.fd, label %.lr.ph.i158.2.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.2.peel:                               ; preds = %.lr.ph.i158.1.peel
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 2 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !741
  %i.fg = and i8 %i.ff, -33
  %i.fh = icmp eq i8 %i.fg, 68
  br i1 %i.fh, label %.lr.ph.i158.3.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.3.peel:                               ; preds = %.lr.ph.i158.2.peel
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 3 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !741
  %i.fk = and i8 %i.fj, -33
  %i.fl = icmp eq i8 %i.fk, 68
  br i1 %i.fl, label %.lr.ph.i158.4.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.4.peel:                               ; preds = %.lr.ph.i158.3.peel
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 4 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !741
  %i.fo = and i8 %i.fn, -33
  %i.fp = icmp eq i8 %i.fo, 69
  br i1 %i.fp, label %.lr.ph.i158.5.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.5.peel:                               ; preds = %.lr.ph.i158.4.peel
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 5 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !741
  %i.fs = and i8 %i.fr, -33
  %i.ft = icmp eq i8 %i.fs, 78
  br i1 %i.ft, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.peel

sqlite3_strnicmp.exit.peel:                       ; preds = %bb.ak, %.lr.ph.i158.1.peel, %.lr.ph.i158.2.peel, %.lr.ph.i158.3.peel, %.lr.ph.i158.4.peel, %.lr.ph.i158.5.peel
  %.lcssa.peel = phi i32 [ 104, %bb.ak ], [ 105, %.lr.ph.i158.1.peel ], [ 100, %.lr.ph.i158.2.peel ], [ 100, %.lr.ph.i158.3.peel ], [ 101, %.lr.ph.i158.4.peel ], [ 110, %.lr.ph.i158.5.peel ]
  %.023.i.lcssa193.peel = phi ptr [ %.0.i155166, %bb.ak ], [ %i.fa, %.lr.ph.i158.1.peel ], [ %i.fe, %.lr.ph.i158.2.peel ], [ %i.fi, %.lr.ph.i158.3.peel ], [ %i.fm, %.lr.ph.i158.4.peel ], [ %i.fq, %.lr.ph.i158.5.peel ]
  %i.fu = load i8, ptr %.023.i.lcssa193.peel, align 1, !tbaa !741
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !741
  %i.fy = zext i8 %i.fx to i32
  %i.fz = icmp eq i32 %.lcssa.peel, %i.fy
  br i1 %i.fz, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.thread169.peel

sqlite3_strnicmp.exit.thread.peel:                ; preds = %sqlite3_strnicmp.exit.peel, %.lr.ph.i158.5.peel
  %i.ga = load i8, ptr %scevgep, align 1, !tbaa !741 ; 3 uses
  switch i8 %i.ga, label %sqlite3_strnicmp.exit.thread169.peel [
    i8 0, label %bb.am
    i8 32, label %bb.am
  ]

sqlite3_strnicmp.exit.thread169.peel:             ; preds = %sqlite3_strnicmp.exit.thread.peel, %sqlite3_strnicmp.exit.peel
  %exitcond.peel.not = icmp eq i32 %i.ev, 1
  br i1 %exitcond.peel.not, label %.critedge, label %.lr.ph.i158.preheader.peel.next

.lr.ph.i158.preheader.peel.next:                  ; preds = %sqlite3_strnicmp.exit.thread169.peel, %sqlite3_strnicmp.exit.thread169
  %indvars.iv202 = phi i64 [ %indvars.iv.next, %sqlite3_strnicmp.exit.thread169 ], [ 1, %sqlite3_strnicmp.exit.thread169.peel ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv202 ; 10 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !741
  %i.gd = and i8 %i.gc, -33
  %i.ge = icmp eq i8 %i.gd, 72
  br i1 %i.ge, label %.lr.ph.i158.1, label %sqlite3_strnicmp.exit

.lr.ph.i158.1:                                    ; preds = %.lr.ph.i158.preheader.peel.next
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !741
  %i.gh = and i8 %i.gg, -33
  %i.gi = icmp eq i8 %i.gh, 73
  br i1 %i.gi, label %.lr.ph.i158.2, label %sqlite3_strnicmp.exit

.lr.ph.i158.2:                                    ; preds = %.lr.ph.i158.1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 2 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !741
  %i.gl = and i8 %i.gk, -33
  %i.gm = icmp eq i8 %i.gl, 68
  br i1 %i.gm, label %.lr.ph.i158.3, label %sqlite3_strnicmp.exit

.lr.ph.i158.3:                                    ; preds = %.lr.ph.i158.2
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 3 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !741
  %i.gp = and i8 %i.go, -33
  %i.gq = icmp eq i8 %i.gp, 68
  br i1 %i.gq, label %.lr.ph.i158.4, label %sqlite3_strnicmp.exit

.lr.ph.i158.4:                                    ; preds = %.lr.ph.i158.3
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !741
  %i.gt = and i8 %i.gs, -33
  %i.gu = icmp eq i8 %i.gt, 69
  br i1 %i.gu, label %.lr.ph.i158.5, label %sqlite3_strnicmp.exit

.lr.ph.i158.5:                                    ; preds = %.lr.ph.i158.4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gb, i64 5 ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !741
  %i.gx = and i8 %i.gw, -33
  %i.gy = icmp eq i8 %i.gx, 78
  br i1 %i.gy, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i158.preheader.peel.next, %.lr.ph.i158.1, %.lr.ph.i158.2, %.lr.ph.i158.3, %.lr.ph.i158.4, %.lr.ph.i158.5
  %.lcssa = phi i32 [ 104, %.lr.ph.i158.preheader.peel.next ], [ 105, %.lr.ph.i158.1 ], [ 100, %.lr.ph.i158.2 ], [ 100, %.lr.ph.i158.3 ], [ 101, %.lr.ph.i158.4 ], [ 110, %.lr.ph.i158.5 ]
  %.023.i.lcssa193 = phi ptr [ %i.gb, %.lr.ph.i158.preheader.peel.next ], [ %i.gf, %.lr.ph.i158.1 ], [ %i.gj, %.lr.ph.i158.2 ], [ %i.gn, %.lr.ph.i158.3 ], [ %i.gr, %.lr.ph.i158.4 ], [ %i.gv, %.lr.ph.i158.5 ]
  %i.gz = load i8, ptr %.023.i.lcssa193, align 1, !tbaa !741
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !741
  %i.hd = zext i8 %i.hc to i32
  %i.he = icmp eq i32 %.lcssa, %i.hd
  br i1 %i.he, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit.thread169

sqlite3_strnicmp.exit.thread:                     ; preds = %sqlite3_strnicmp.exit, %.lr.ph.i158.5
  %i.hf = getelementptr i8, ptr %i.gb, i64 -1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !741
  %i.hh = icmp eq i8 %i.hg, 32
  br i1 %i.hh, label %bb.al, label %sqlite3_strnicmp.exit.thread169

bb.al:                                            ; preds = %sqlite3_strnicmp.exit.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gb, i64 6
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !741 ; 2 uses
  switch i8 %i.hj, label %sqlite3_strnicmp.exit.thread169 [
    i8 0, label %.loopexit
    i8 32, label %.loopexit
  ]

sqlite3_strnicmp.exit.thread169:                  ; preds = %bb.al, %sqlite3_strnicmp.exit, %sqlite3_strnicmp.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.i158.preheader.peel.next, !llvm.loop !5138

.loopexit:                                        ; preds = %bb.al, %bb.al
  %i.hk = trunc nuw nsw i64 %indvars.iv202 to i32
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %sqlite3_strnicmp.exit.thread.peel, %sqlite3_strnicmp.exit.thread.peel
  %.0112181.lcssa = phi i32 [ 0, %sqlite3_strnicmp.exit.thread.peel ], [ 0, %sqlite3_strnicmp.exit.thread.peel ], [ %i.hk, %.loopexit ] ; 3 uses
  %.lcssa198 = phi ptr [ %.0.i155166, %sqlite3_strnicmp.exit.thread.peel ], [ %.0.i155166, %sqlite3_strnicmp.exit.thread.peel ], [ %i.gb, %.loopexit ] ; 2 uses
  %.lcssa197 = phi i8 [ %i.ga, %sqlite3_strnicmp.exit.thread.peel ], [ %i.ga, %sqlite3_strnicmp.exit.thread.peel ], [ %i.hj, %.loopexit ]
  %.not132.not = icmp eq i8 %.lcssa197, 0
  %i.hl = select i1 %.not132.not, i32 6, i32 7    ; 2 uses
  %i.hm = add nuw nsw i32 %.0112181.lcssa, %i.hl
  %.not133183 = icmp samesign ugt i32 %i.hm, %i.ev
  br i1 %.not133183, label %._crit_edge187, label %iter.check

iter.check:                                       ; preds = %bb.am
  %i.hn = zext nneg i32 %i.hl to i64              ; 2 uses
  %i.ho = zext i32 %.0112181.lcssa to i64         ; 6 uses
  %i.hp = add nuw nsw i64 %i.hn, %i.ho            ; 6 uses
  %i.hq = add nuw nsw i64 %wide.trip.count, 1
  %i.hr = sub nsw i64 %i.hq, %i.hp                ; 7 uses
  %min.iters.check = icmp ult i64 %i.hr, 4
  br i1 %min.iters.check, label %.lr.ph186.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check247 = icmp ult i64 %i.hr, 32
  br i1 %min.iters.check247, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hs = and i64 %i.hr, 28
  %n.vec = and i64 %i.hr, -32                     ; 5 uses
  %i.ht = add nsw i64 %n.vec, %i.ho
  %i.hu = add nsw i64 %i.hp, %n.vec
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %i.hp
  %invariant.gep = getelementptr i8, ptr %.0.i155166, i64 %i.ho
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %index ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load = load <16 x i8>, ptr %i.hw, align 1, !tbaa !741
  %wide.load248 = load <16 x i8>, ptr %i.hx, align 1, !tbaa !741
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !741
  store <16 x i8> %wide.load248, ptr %i.hy, align 1, !tbaa !741
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hz = icmp eq i64 %index.next, %n.vec
  br i1 %i.hz, label %middle.block, label %vector.body, !llvm.loop !5139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hr, %n.vec
  br i1 %cmp.n, label %._crit_edge187, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph186.preheader, label %vec.epilog.ph, !prof !5145

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec250 = and i64 %i.hr, -4                   ; 4 uses
  %i.ia = add nsw i64 %n.vec250, %i.ho
  %i.ib = add nsw i64 %i.hp, %n.vec250
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %i.hp
  %invariant.gep265 = getelementptr i8, ptr %.0.i155166, i64 %i.ho
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index251 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next253, %vec.epilog.vector.body ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index251
  %wide.load252 = load <4 x i8>, ptr %i.id, align 1, !tbaa !741
  %gep266 = getelementptr i8, ptr %invariant.gep265, i64 %index251
  store <4 x i8> %wide.load252, ptr %gep266, align 1, !tbaa !741
  %index.next253 = add nuw i64 %index251, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next253, %n.vec250
  br i1 %i.ie, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5140

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n254 = icmp eq i64 %i.hr, %n.vec250
  br i1 %cmp.n254, label %._crit_edge187, label %.lr.ph186.preheader

.lr.ph186.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv209.ph = phi i64 [ %i.ho, %iter.check ], [ %i.ht, %vec.epilog.iter.check ], [ %i.ia, %vec.epilog.middle.block ]
  %indvars.iv207.ph = phi i64 [ %i.hp, %iter.check ], [ %i.hu, %vec.epilog.iter.check ], [ %i.ib, %vec.epilog.middle.block ]
  br label %.lr.ph186

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %.lr.ph186
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %.lr.ph186 ], [ %indvars.iv209.ph, %.lr.ph186.preheader ] ; 2 uses
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %.lr.ph186 ], [ %indvars.iv207.ph, %.lr.ph186.preheader ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv207
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !741
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv209
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !741
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.ii = add nuw nsw i64 %indvars.iv.next210, %i.hn
  %.not133 = icmp samesign ugt i64 %i.ii, %wide.trip.count
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  br i1 %.not133, label %._crit_edge187, label %.lr.ph186, !llvm.loop !5141

._crit_edge187:                                   ; preds = %.lr.ph186, %middle.block, %vec.epilog.middle.block, %bb.am
  %i.ij = load i8, ptr %.lcssa198, align 1, !tbaa !741
  %i.ik = icmp eq i8 %i.ij, 0
  %i.il = icmp ne i32 %.0112181.lcssa, 0
  %or.cond = and i1 %i.il, %i.ik
  br i1 %or.cond, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge187
  %i.im = getelementptr i8, ptr %.lcssa198, i64 -1
  store i8 0, ptr %i.im, align 1, !tbaa !741
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge187
  %i.in = load ptr, ptr %i.dz, align 8, !tbaa !1162 ; 2 uses
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.in, i64 %indvars.iv214
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 14 ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !1164
  %i.ir = or i16 %i.iq, 2
  store i16 %i.ir, ptr %i.ip, align 2, !tbaa !1164
  %i.is = load i32, ptr %i.ea, align 8, !tbaa !1098
  %i.it = or i32 %i.is, 2
  store i32 %i.it, ptr %i.ea, align 8, !tbaa !1098
  %.pre218 = load i16, ptr %i.dw, align 2, !tbaa !1161
  br label %bb.ap

.critedge:                                        ; preds = %sqlite3_strnicmp.exit.thread169, %sqlite3ColumnType.exit, %sqlite3_strnicmp.exit.thread169.peel, %sqlite3Strlen30.exit
  %i.iu = zext nneg i16 %.0113189 to i32
  %i.iv = load i32, ptr %i.ea, align 8, !tbaa !1098
  %i.iw = or i32 %i.iv, %i.iu
  store i32 %i.iw, ptr %i.ea, align 8, !tbaa !1098
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge, %bb.ao
  %i.ix = phi i16 [ %.pre218, %bb.ao ], [ %i.eb, %.critedge ] ; 2 uses
  %i.iy = phi ptr [ %i.in, %bb.ao ], [ %i.ec, %.critedge ]
  %.1 = phi i16 [ 1024, %bb.ao ], [ %.0113189, %.critedge ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.iz = sext i16 %i.ix to i64
  %i.ja = icmp slt i64 %indvars.iv.next215, %i.iz
  br i1 %i.ja, label %bb.ah, label %sqlite3DbFree.exit161, !llvm.loop !5142

sqlite3DbFree.exit161:                            ; preds = %bb.ap, %bb.ag, %bb.ad, %bb.af, %sqlite3DbFree.exit153
  %.0117 = phi i32 [ %i.bm, %sqlite3DbFree.exit153 ], [ 1, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.ap ]
  call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %.0.i.i)
  br label %sqlite3DbStrDup.exit.thread

sqlite3DbStrDup.exit.thread:                      ; preds = %sqlite3DbMallocRaw.exit.i, %._crit_edge, %sqlite3DbFree.exit161, %sqlite3DbFree.exit, %bb.c
  %.0115 = phi i32 [ 6, %bb.c ], [ %.0117, %sqlite3DbFree.exit161 ], [ 7, %sqlite3DbFree.exit ], [ 7, %._crit_edge ], [ 7, %sqlite3DbMallocRaw.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  ret i32 %.0115
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @valueFromExpr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  store ptr null, ptr %i.c, align 8, !tbaa !767
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0101 = phi ptr [ %1, %bb.a ], [ %i.g, %bb.c ] ; 7 uses
  %i.e = load i8, ptr %.0101, align 8, !tbaa !2042 ; 2 uses
  switch i8 %i.e, label %.loopexit [
    i8 -75, label %bb.c
    i8 -83, label %bb.c
    i8 -80, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !802
  br label %bb.b, !llvm.loop !5146

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0101, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !2094
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.097.in = phi i8 [ %i.i, %bb.d ], [ %i.e, %bb.b ] ; 2 uses
  switch i8 %.097.in, label %bb.k [
    i8 36, label %bb.e
    i8 -82, label %bb.g
  ]

bb.e:                                             ; preds = %.loopexit
  %i.j = getelementptr inbounds nuw i8, ptr %.0101, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !741
  %i.l = tail call fastcc signext i8 @sqlite3AffinityType(ptr noundef %i.k, ptr noundef null) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !802
  %i.o = tail call fastcc i32 @valueFromExpr(ptr noundef %0, ptr noundef %i.n, i8 noundef zeroext %2, i8 noundef zeroext %i.l, ptr noundef %4) ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !767    ; 2 uses
  %.not123 = icmp eq ptr %i.p, null
  br i1 %.not123, label %sqlite3ValueFree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call fastcc i32 @sqlite3VdbeMemCast(ptr noundef nonnull %i.p, i8 noundef zeroext %i.l, i8 noundef zeroext %2) ; 0 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !767
  tail call fastcc void @applyAffinity(ptr noundef %i.r, i8 noundef signext %3, i8 noundef zeroext %2)
  br label %sqlite3ValueFree.exit

bb.g:                                             ; preds = %.loopexit
  %i.s = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !802  ; 7 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !2042  ; 4 uses
  switch i8 %i.u, label %.thread [
    i8 -100, label %bb.h
    i8 -102, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !801
  %i.x = and i32 %i.w, 2048
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !741  ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !741
  %.not115 = icmp eq i8 %i.aa, 48
  br i1 %.not115, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !741
  %i.ad = and i8 %i.ac, -33
  %.not116 = icmp eq i8 %i.ad, 88
  br i1 %.not116, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %.loopexit
end_hunk_6
begin_hunk_7_@valueFromExpr:bb.a
  br i1 %or.cond5, label %bb.ag, label %sqlite3VdbeChangeEncoding.exit

bb.ag:                                            ; preds = %.thread
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 20 ; 4 uses
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !694 ; 2 uses
  %i.bv = and i16 %i.bu, 45
  %i.bw = icmp eq i16 %i.bv, 0
  br i1 %i.bw, label %bb.ah, label %sqlite3VdbeMemNumerify.exit

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.bx = call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.br, ptr noundef nonnull %i.a) ; 6 uses
  store double %i.bx, ptr %i.br, align 8, !tbaa !741
  %i.by = load i32, ptr %i.a, align 4, !tbaa !576
  %or.cond.i = icmp ult i32 %i.by, 2
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !768
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !934
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 22
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !795
  %i.cf = call fastcc i32 @sqlite3Atoi64(ptr noundef %i.ca, ptr noundef nonnull %i.b, i32 noundef %i.cc, i8 noundef zeroext %i.ce)
  %i.cg = icmp slt i32 %i.cf, 2
  br i1 %i.cg, label %.sqlite3RealSameAsInt.exit.thread_crit_edge.i, label %bb.aj

.sqlite3RealSameAsInt.exit.thread_crit_edge.i:    ; preds = %bb.ai
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !571
  br label %sqlite3RealSameAsInt.exit.thread.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ch = fcmp olt double %i.bx, f0xC3DFFFFFFFFFFFFF
  %i.ci = fcmp ogt double %i.bx, f0x43DFFFFFFFFFFFFF
  %i.cj = fptosi double %i.bx to i64
  %spec.select.i.i = select i1 %i.ci, i64 9223372036854775807, i64 %i.cj ; 2 uses
  %.0.i.i = select i1 %i.ch, i64 -9223372036854775808, i64 %spec.select.i.i ; 3 uses
  %i.ck = fcmp oeq double %i.bx, 0.000000e+00
  br i1 %i.ck, label %sqlite3RealSameAsInt.exit.thread.i, label %sqlite3RealSameAsInt.exit.i

sqlite3RealSameAsInt.exit.i:                      ; preds = %bb.aj
  %i.cl = sitofp i64 %.0.i.i to double
  %i.cm = bitcast double %i.bx to i64
  %i.cn = bitcast double %i.cl to i64
  %.not.i.i = icmp ne i64 %i.cm, %i.cn
  %i.co = add i64 %.0.i.i, -2251799813685248
  %i.cp = icmp ult i64 %i.co, -4503599627370496
  %.not17.i = or i1 %i.cp, %.not.i.i
  br i1 %.not17.i, label %bb.ak, label %sqlite3RealSameAsInt.exit.thread.i

sqlite3RealSameAsInt.exit.thread.i:               ; preds = %sqlite3RealSameAsInt.exit.i, %bb.aj, %.sqlite3RealSameAsInt.exit.thread_crit_edge.i
  %i.cq = phi i64 [ %.pre.i, %.sqlite3RealSameAsInt.exit.thread_crit_edge.i ], [ %.0.i.i, %bb.aj ], [ %spec.select.i.i, %sqlite3RealSameAsInt.exit.i ]
  store i64 %i.cq, ptr %i.br, align 8, !tbaa !741
  br label %bb.ak

bb.ak:                                            ; preds = %sqlite3RealSameAsInt.exit.thread.i, %sqlite3RealSameAsInt.exit.i
  %.sink18.i = phi i16 [ 4, %sqlite3RealSameAsInt.exit.thread.i ], [ 8, %sqlite3RealSameAsInt.exit.i ]
  %i.cr = load i16, ptr %i.bt, align 4, !tbaa !694
  %i.cs = and i16 %i.cr, -3520
  %i.ct = or disjoint i16 %i.cs, %.sink18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sqlite3VdbeMemNumerify.exit

sqlite3VdbeMemNumerify.exit:                      ; preds = %bb.ag, %bb.ak
  %i.cu = phi i16 [ %i.ct, %bb.ak ], [ %i.bu, %bb.ag ] ; 3 uses
  %i.cv = and i16 %i.cu, -1043
  store i16 %i.cv, ptr %i.bt, align 4, !tbaa !694
  %i.cw = and i16 %i.cu, 8
  %.not119 = icmp eq i16 %i.cw, 0
  br i1 %.not119, label %bb.am, label %bb.al

bb.al:                                            ; preds = %sqlite3VdbeMemNumerify.exit
  %i.cx = load double, ptr %i.br, align 8, !tbaa !741
  %i.cy = fneg double %i.cx
  store double %i.cy, ptr %i.br, align 8, !tbaa !741
  br label %bb.ap

bb.am:                                            ; preds = %sqlite3VdbeMemNumerify.exit
  %i.cz = load i64, ptr %i.br, align 8, !tbaa !741 ; 2 uses
  %i.da = icmp eq i64 %i.cz, -9223372036854775808
  br i1 %i.da, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store double f0x43E0000000000000, ptr %i.br, align 8, !tbaa !741
  %i.db = and i16 %i.cu, -3520
  %i.dc = or disjoint i16 %i.db, 8
  store i16 %i.dc, ptr %i.bt, align 4, !tbaa !694
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.dd = sub nsw i64 0, %i.cz
  store i64 %i.dd, ptr %i.br, align 8, !tbaa !741
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.al
  call fastcc void @applyAffinity(ptr noundef nonnull %i.br, i8 noundef signext %3, i8 noundef zeroext %2)
  br label %sqlite3VdbeChangeEncoding.exit

bb.aq:                                            ; preds = %bb.k
  %.not.i.i.i.i129 = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i129, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.de = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !37
  br label %sqlite3DbMallocRaw.exit.i.i.i130

bb.as:                                            ; preds = %bb.aq
  %i.df = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !37
  br label %sqlite3DbMallocRaw.exit.i.i.i130

sqlite3DbMallocRaw.exit.i.i.i130:                 ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i131 = phi ptr [ %i.de, %bb.ar ], [ %i.df, %bb.as ] ; 5 uses
  %.not.i.i.i132 = icmp eq ptr %.0.i.i.i.i131, null
  br i1 %.not.i.i.i132, label %valueNew.exit.thread, label %bb.at

bb.at:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i.i130
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.0.i.i.i.i131, i8 0, i64 56, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i131, i64 20
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i131, i64 24
  store ptr %0, ptr %i.dh, align 8, !tbaa !691
  store i16 1, ptr %i.dg, align 4, !tbaa !694
  br label %sqlite3VdbeChangeEncoding.exit

bb.au:                                            ; preds = %bb.k
  %.not.i.i.i.i135 = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i135, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.di = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !37
  br label %sqlite3DbMallocRaw.exit.i.i.i136

bb.aw:                                            ; preds = %bb.au
  %i.dj = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !37
  br label %sqlite3DbMallocRaw.exit.i.i.i136

sqlite3DbMallocRaw.exit.i.i.i136:                 ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i137 = phi ptr [ %i.di, %bb.av ], [ %i.dj, %bb.aw ] ; 6 uses
  %.not.i.i.i138 = icmp eq ptr %.0.i.i.i.i137, null
  br i1 %.not.i.i.i138, label %valueNew.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i.i136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.0.i.i.i.i137, i8 0, i64 56, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i137, i64 20
  store i16 1, ptr %i.dk, align 4, !tbaa !694
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i137, i64 24
  store ptr %0, ptr %i.dl, align 8, !tbaa !691
  %i.dm = getelementptr inbounds nuw i8, ptr %.2103, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !741 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 23 uses
  %i.dp = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.do) #60
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = and i32 %i.dq, 1073741823               ; 3 uses
  %i.ds = add nsw i32 %i.dr, -1
  %i.dt = sdiv i32 %i.ds, 2                       ; 2 uses
  %i.du = add nuw nsw i32 %i.dt, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.dv) ; 8 uses
  %i.dx = add nsw i32 %i.dr, -2                   ; 3 uses
  %.not.i141 = icmp eq ptr %i.dw, null
  br i1 %.not.i141, label %.thread8, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ax
  %i.dy = icmp samesign ugt i32 %i.dr, 2
  br i1 %i.dy, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %i.dz = zext nneg i32 %i.dx to i64              ; 3 uses
  %umax34 = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 2)
  %i.ea = add nsw i64 %umax34, -1
  %i.eb = lshr i64 %i.ea, 1
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.dx, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ed = add nsw i64 %i.dz, -1                   ; 2 uses
  %i.ee = lshr i64 %i.ed, 1
  %i.ef = getelementptr i8, ptr %i.dw, i64 %i.ee
  %scevgep = getelementptr i8, ptr %i.ef, i64 1
  %i.eg = and i64 %i.ed, -2
  %i.eh = getelementptr i8, ptr %i.dn, i64 %i.eg
  %scevgep33 = getelementptr i8, ptr %i.eh, i64 4
  %bound0 = icmp ult ptr %i.dw, %scevgep33
  %bound1 = icmp ult ptr %i.do, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i32 %i.dx, 31
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ei = and i64 %i.ec, 12
  %n.vec = and i64 %i.ec, 9223372036854775792     ; 5 uses
  %i.ej = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ek = shl nuw i64 %index, 1                   ; 16 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 6
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 10
  %i.ew = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 18
  %i.fe = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.fg = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 22
  %i.fi = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 26
  %i.fm = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 28
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ek ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 30
  %i.fq = load i8, ptr %i.el, align 1, !tbaa !741, !alias.scope !5153
  %i.fr = load i8, ptr %i.en, align 1, !tbaa !741, !alias.scope !5153
  %i.fs = load i8, ptr %i.ep, align 1, !tbaa !741, !alias.scope !5153
  %i.ft = load i8, ptr %i.er, align 1, !tbaa !741, !alias.scope !5153
  %i.fu = load i8, ptr %i.et, align 1, !tbaa !741, !alias.scope !5153
  %i.fv = load i8, ptr %i.ev, align 1, !tbaa !741, !alias.scope !5153
  %i.fw = load i8, ptr %i.ex, align 1, !tbaa !741, !alias.scope !5153
  %i.fx = load i8, ptr %i.ez, align 1, !tbaa !741, !alias.scope !5153
  %i.fy = load i8, ptr %i.fb, align 1, !tbaa !741, !alias.scope !5153
  %i.fz = load i8, ptr %i.fd, align 1, !tbaa !741, !alias.scope !5153
  %i.ga = load i8, ptr %i.ff, align 1, !tbaa !741, !alias.scope !5153
  %i.gb = load i8, ptr %i.fh, align 1, !tbaa !741, !alias.scope !5153
  %i.gc = load i8, ptr %i.fj, align 1, !tbaa !741, !alias.scope !5153
  %i.gd = load i8, ptr %i.fl, align 1, !tbaa !741, !alias.scope !5153
  %i.ge = load i8, ptr %i.fn, align 1, !tbaa !741, !alias.scope !5153
  %i.gf = load i8, ptr %i.fp, align 1, !tbaa !741, !alias.scope !5153
  %i.gg = insertelement <16 x i8> poison, i8 %i.fq, i64 0
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 1
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 2
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 3
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 4
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 5
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 6
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 7
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 8
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 9
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 10
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 11
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 12
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 13
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 14
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 15 ; 2 uses
  %i.gw = and <16 x i8> %i.gv, splat (i8 64)
  %i.gx = icmp eq <16 x i8> %i.gw, zeroinitializer
  %i.gy = select <16 x i1> %i.gx, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.gz = add <16 x i8> %i.gy, %i.gv
  %i.ha = shl <16 x i8> %i.gz, splat (i8 4)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.em, i64 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.eo, i64 5
  %i.he = getelementptr inbounds nuw i8, ptr %i.eq, i64 7
  %i.hf = getelementptr inbounds nuw i8, ptr %i.es, i64 9
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eu, i64 11
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ew, i64 13
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ey, i64 15
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fa, i64 17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fc, i64 19
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fe, i64 21
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fg, i64 23
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fi, i64 25
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fk, i64 27
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fm, i64 29
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fo, i64 31
  %i.hr = load i8, ptr %i.hb, align 1, !tbaa !741, !alias.scope !5153
  %i.hs = load i8, ptr %i.hc, align 1, !tbaa !741, !alias.scope !5153
  %i.ht = load i8, ptr %i.hd, align 1, !tbaa !741, !alias.scope !5153
  %i.hu = load i8, ptr %i.he, align 1, !tbaa !741, !alias.scope !5153
  %i.hv = load i8, ptr %i.hf, align 1, !tbaa !741, !alias.scope !5153
  %i.hw = load i8, ptr %i.hg, align 1, !tbaa !741, !alias.scope !5153
  %i.hx = load i8, ptr %i.hh, align 1, !tbaa !741, !alias.scope !5153
  %i.hy = load i8, ptr %i.hi, align 1, !tbaa !741, !alias.scope !5153
  %i.hz = load i8, ptr %i.hj, align 1, !tbaa !741, !alias.scope !5153
  %i.ia = load i8, ptr %i.hk, align 1, !tbaa !741, !alias.scope !5153
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !741, !alias.scope !5153
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !741, !alias.scope !5153
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !741, !alias.scope !5153
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !741, !alias.scope !5153
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !741, !alias.scope !5153
  %i.ig = load i8, ptr %i.hq, align 1, !tbaa !741, !alias.scope !5153
  %i.ih = insertelement <16 x i8> poison, i8 %i.hr, i64 0
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 1
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 2
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 3
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 4
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 5
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 6
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 7
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 8
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 9
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 10
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 11
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 12
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 13
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 14
  %i.iw = insertelement <16 x i8> %i.iv, i8 %i.ig, i64 15 ; 2 uses
  %i.ix = and <16 x i8> %i.iw, splat (i8 64)
  %i.iy = icmp eq <16 x i8> %i.ix, zeroinitializer
  %i.iz = select <16 x i1> %i.iy, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.ja = add <16 x i8> %i.iz, %i.iw
  %i.jb = and <16 x i8> %i.ja, splat (i8 15)
  %i.jc = or disjoint <16 x i8> %i.jb, %i.ha
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dw, i64 %index
  store <16 x i8> %i.jc, ptr %i.jd, align 1, !tbaa !741, !alias.scope !5154, !noalias !5153
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.je = icmp eq i64 %index.next, %n.vec
  br i1 %i.je, label %middle.block, label %vector.body, !llvm.loop !5150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ec, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ei, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.ec, 9223372036854775804   ; 4 uses
  %i.jf = shl nuw i64 %n.vec36, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %i.jg = shl nuw i64 %index37, 1                 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.jg ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jk = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.jg ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.jg ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 6
  %i.jo = load i8, ptr %i.jh, align 1, !tbaa !741, !alias.scope !5153
  %i.jp = load i8, ptr %i.jj, align 1, !tbaa !741, !alias.scope !5153
  %i.jq = load i8, ptr %i.jl, align 1, !tbaa !741, !alias.scope !5153
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !741, !alias.scope !5153
  %i.js = insertelement <4 x i8> poison, i8 %i.jo, i64 0
  %i.jt = insertelement <4 x i8> %i.js, i8 %i.jp, i64 1
  %i.ju = insertelement <4 x i8> %i.jt, i8 %i.jq, i64 2
  %i.jv = insertelement <4 x i8> %i.ju, i8 %i.jr, i64 3 ; 2 uses
  %i.jw = and <4 x i8> %i.jv, splat (i8 64)
  %i.jx = icmp eq <4 x i8> %i.jw, zeroinitializer
  %i.jy = select <4 x i1> %i.jx, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.jz = add <4 x i8> %i.jy, %i.jv
  %i.ka = shl <4 x i8> %i.jz, splat (i8 4)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ji, i64 3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jk, i64 5
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jm, i64 7
  %i.kf = load i8, ptr %i.kb, align 1, !tbaa !741, !alias.scope !5153
  %i.kg = load i8, ptr %i.kc, align 1, !tbaa !741, !alias.scope !5153
  %i.kh = load i8, ptr %i.kd, align 1, !tbaa !741, !alias.scope !5153
  %i.ki = load i8, ptr %i.ke, align 1, !tbaa !741, !alias.scope !5153
  %i.kj = insertelement <4 x i8> poison, i8 %i.kf, i64 0
  %i.kk = insertelement <4 x i8> %i.kj, i8 %i.kg, i64 1
  %i.kl = insertelement <4 x i8> %i.kk, i8 %i.kh, i64 2
  %i.km = insertelement <4 x i8> %i.kl, i8 %i.ki, i64 3 ; 2 uses
  %i.kn = and <4 x i8> %i.km, splat (i8 64)
  %i.ko = icmp eq <4 x i8> %i.kn, zeroinitializer
  %i.kp = select <4 x i1> %i.ko, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.kq = add <4 x i8> %i.kp, %i.km
  %i.kr = and <4 x i8> %i.kq, splat (i8 15)
  %i.ks = or disjoint <4 x i8> %i.kr, %i.ka
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dw, i64 %index37
  store <4 x i8> %i.ks, ptr %i.kt, align 1, !tbaa !741, !alias.scope !5154, !noalias !5153
  %index.next38 = add nuw i64 %index37, 4         ; 2 uses
  %i.ku = icmp eq i64 %index.next38, %n.vec36
  br i1 %i.ku, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5151

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.ec, %n.vec36
  br i1 %cmp.n39, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ej, %vec.epilog.iter.check ], [ %i.jf, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.i ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !741 ; 2 uses
  %i.kx = and i8 %i.kw, 64
  %.not.i.i142 = icmp eq i8 %i.kx, 0
  %i.ky = select i1 %.not.i.i142, i8 0, i8 9
  %i.kz = add i8 %i.ky, %i.kw
  %i.la = shl i8 %i.kz, 4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !741 ; 2 uses
  %i.ld = and i8 %i.lc, 64
  %.not.i16.i = icmp eq i8 %i.ld, 0
  %i.le = select i1 %.not.i16.i, i8 0, i8 9
  %i.lf = add i8 %i.le, %i.lc
  %i.lg = and i8 %i.lf, 15
  %i.lh = or disjoint i8 %i.lg, %i.la
  %i.li = lshr exact i64 %indvars.iv.i, 1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.li
  store i8 %i.lh, ptr %i.lj, align 1, !tbaa !741
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.lk = icmp samesign ult i64 %indvars.iv.next.i, %i.dz
  br i1 %i.lk, label %.lr.ph.i, label %._crit_edge.loopexit.i.loopexit, !llvm.loop !5152

._crit_edge.loopexit.i.loopexit:                  ; preds = %.lr.ph.i
  %i.ll = lshr exact i64 %indvars.iv.next.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %middle.block, %vec.epilog.middle.block, %._crit_edge.loopexit.i.loopexit, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %n.vec36, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.ll, %._crit_edge.loopexit.i.loopexit ]
  %i.lm = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.0.lcssa.i
  store i8 0, ptr %i.lm, align 1, !tbaa !741
  br label %.thread8

.thread8:                                         ; preds = %._crit_edge.i, %bb.ax
  %i.ln = zext nneg i32 %i.dt to i64
  %i.lo = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %.0.i.i.i.i137, ptr noundef %i.dw, i64 noundef %i.ln, i8 noundef zeroext 0, ptr noundef nonnull @sqlite3RowSetClear) ; 0 uses
  br label %sqlite3VdbeChangeEncoding.exit

bb.ay:                                            ; preds = %bb.k
  %.not.i.i.i.i143 = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i143, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lp = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !37
  br label %sqlite3DbMallocRaw.exit.i.i.i144

bb.ba:                                            ; preds = %bb.ay
  %i.lq = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !37
  br label %sqlite3DbMallocRaw.exit.i.i.i144

sqlite3DbMallocRaw.exit.i.i.i144:                 ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i145 = phi ptr [ %i.lp, %bb.az ], [ %i.lq, %bb.ba ] ; 7 uses
  %.not.i.i.i146 = icmp eq ptr %.0.i.i.i.i145, null
  br i1 %.not.i.i.i146, label %sqlite3VdbeChangeEncoding.exit, label %bb.bb

bb.bb:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i.i144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.0.i.i.i.i145, i8 0, i64 56, i1 false)
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i145, i64 20
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i145, i64 24
  store ptr %0, ptr %i.ls, align 8, !tbaa !691
  store i16 4, ptr %i.lr, align 4, !tbaa !694
  %i.lt = getelementptr inbounds nuw i8, ptr %.2103, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !741
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !741
  %i.lx = icmp eq i8 %i.lw, 0
  %i.ly = zext i1 %i.lx to i64
  store i64 %i.ly, ptr %.0.i.i.i.i145, align 8, !tbaa !741
  tail call fastcc void @applyAffinity(ptr noundef nonnull %.0.i.i.i.i145, i8 noundef signext %3, i8 noundef zeroext %2)
  br label %sqlite3VdbeChangeEncoding.exit

sqlite3VdbeChangeEncoding.exit:                   ; preds = %sqlite3DbMallocRaw.exit.i.i.i144, %.thread8, %bb.at, %bb.af, %bb.ae, %bb.ad, %bb.k, %bb.ap, %.thread, %bb.bb, %bb.ab
  %i.lz = phi ptr [ null, %bb.k ], [ %.0.i.i.i.i, %bb.ab ], [ %i.br, %bb.ap ], [ %i.br, %.thread ], [ %.0.i.i.i.i, %bb.ae ], [ %.0.i.i.i.i137, %.thread8 ], [ %.0.i.i.i.i145, %bb.bb ], [ %.0.i.i.i.i131, %bb.at ], [ %.0.i.i.i.i, %bb.ad ], [ %.0.i.i.i.i, %bb.af ], [ null, %sqlite3DbMallocRaw.exit.i.i.i144 ]
  %.090 = phi i32 [ 0, %bb.k ], [ 0, %bb.ab ], [ 0, %bb.ap ], [ 0, %.thread ], [ 0, %bb.ae ], [ 0, %.thread8 ], [ 0, %bb.bb ], [ 0, %bb.at ], [ 0, %bb.ad ], [ %i.bo, %bb.af ], [ 0, %sqlite3DbMallocRaw.exit.i.i.i144 ]
  store ptr %i.lz, ptr %4, align 8, !tbaa !767
  br label %sqlite3ValueFree.exit

valueNew.exit.thread:                             ; preds = %sqlite3DbMallocRaw.exit.i.i.i136, %sqlite3DbMallocRaw.exit.i.i.i130, %sqlite3DbMallocRaw.exit.i.i.i, %sqlite3VdbeMemSetInt64.exit126
  %i.ma = phi ptr [ null, %sqlite3DbMallocRaw.exit.i.i.i130 ], [ null, %sqlite3DbMallocRaw.exit.i.i.i ], [ %.0.i.i.i.i, %sqlite3VdbeMemSetInt64.exit126 ], [ null, %sqlite3DbMallocRaw.exit.i.i.i136 ] ; 6 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !928
  %i.md = icmp eq i8 %i.mc, 0
  br i1 %i.md, label %bb.bc, label %sqlite3DbFree.exit

bb.bc:                                            ; preds = %valueNew.exit.thread
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.mf = load i8, ptr %i.me, align 8, !tbaa !929
  %i.mg = icmp eq i8 %i.mf, 0
  br i1 %i.mg, label %bb.bd, label %sqlite3DbFree.exit

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %i.mb, align 1, !tbaa !928
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !930
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.mk monotonic, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !931
  %i.mn = add i32 %i.mm, 1
  store i32 %i.mn, ptr %i.ml, align 8, !tbaa !931
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.mo, align 4, !tbaa !932
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !774 ; 2 uses
  %.not.i148 = icmp eq ptr %i.mq, null
  br i1 %.not.i148, label %sqlite3DbFree.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.mq, ptr noundef nonnull @.str.133), !inline_history !35
  %i.mr = load ptr, ptr %i.mp, align 8, !tbaa !774 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  store i32 7, ptr %i.ms, align 8, !tbaa !785
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 216
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !933 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3DbFree.exit, label %.lr.ph.i149

.lr.ph.i149:                                      ; preds = %bb.bg, %.lr.ph.i149
  %.020.i = phi ptr [ %.0.i150, %.lr.ph.i149 ], [ %.018.i, %bb.bg ] ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !786
  %i.mv = add nsw i32 %i.mu, 1
  store i32 %i.mv, ptr %i.mt, align 4, !tbaa !786
  %i.mw = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.mw, align 8, !tbaa !785
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i150 = load ptr, ptr %.0.in.i, align 8, !tbaa !933 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i150, null
  br i1 %.not16.i, label %sqlite3DbFree.exit, label %.lr.ph.i149, !llvm.loop !36

sqlite3DbFree.exit:                               ; preds = %.lr.ph.i149, %bb.bg, %bb.bf, %bb.bc, %valueNew.exit.thread
  %.not.i152 = icmp eq ptr %i.ma, null
  br i1 %.not.i152, label %sqlite3ValueFree.exit, label %bb.bh

bb.bh:                                            ; preds = %sqlite3DbFree.exit
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ma, i64 20
  %i.my = load i16, ptr %i.mx, align 4, !tbaa !694
  %i.mz = and i16 %i.my, -28672
  %.not.i.i153 = icmp eq i16 %i.mz, 0
  br i1 %.not.i.i153, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.na = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !692
  %.not3.i.i = icmp eq i32 %i.nb, 0
  br i1 %.not3.i.i, label %sqlite3VdbeMemRelease.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.ma)
  br label %sqlite3VdbeMemRelease.exit.i

sqlite3VdbeMemRelease.exit.i:                     ; preds = %bb.bj, %bb.bi
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !691
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.nd, ptr noundef nonnull %i.ma)
  br label %sqlite3ValueFree.exit

sqlite3ValueFree.exit:                            ; preds = %sqlite3VdbeMemRelease.exit.i, %sqlite3DbFree.exit, %bb.e, %bb.f, %sqlite3VdbeChangeEncoding.exit
  %.0100 = phi i32 [ %i.o, %bb.f ], [ %i.o, %bb.e ], [ %.090, %sqlite3VdbeChangeEncoding.exit ], [ 7, %sqlite3DbFree.exit ], [ 7, %sqlite3VdbeMemRelease.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  ret i32 %.0100
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext range(i8 65, 70) i8 @sqlite3AffinityType(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !741     ; 2 uses
  %.not63 = icmp eq i8 %i.b, 0
  br i1 %.not63, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit86
  %i.c = phi i8 [ %i.ao, %.loopexit86 ], [ %i.b, %bb.a ]
  %.04167 = phi ptr [ %.2, %.loopexit86 ], [ null, %bb.a ] ; 6 uses
  %.04266 = phi i8 [ %.244, %.loopexit86 ], [ 67, %bb.a ] ; 3 uses
  %.04665 = phi i32 [ %i.an, %.loopexit86 ], [ 0, %bb.a ]
  %.04764 = phi ptr [ %i.am, %.loopexit86 ], [ %0, %bb.a ]
  %i.d = shl i32 %.04665, 8
  %i.e = zext i8 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !741
  %i.h = zext i8 %i.g to i32
  %i.i = or disjoint i32 %i.d, %i.h               ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04764, i64 1 ; 8 uses
  switch i32 %i.i, label %.preheader84 [
    i32 1667785074, label %.loopexit86
    i32 1668050786, label %.loopexit87
    i32 1952807028, label %.loopexit87
    i32 1651273570, label %bb.c
end_hunk_7
begin_hunk_8_@sqlite3AffinityType:bb.a
.preheader84:                                     ; preds = %.lr.ph, %bb.c, %.lr.ph.jt66
  %.ph = phi ptr [ %i.j, %.lr.ph ], [ %i.j, %bb.c ], [ %i.ad, %.lr.ph.jt66 ] ; 3 uses
  %.ph85 = phi i32 [ %i.i, %.lr.ph ], [ 1651273570, %bb.c ], [ %i.ac, %.lr.ph.jt66 ] ; 5 uses
  %.0426683.ph = phi i8 [ %.04266, %.lr.ph ], [ %.04266, %bb.c ], [ %.244.jt66, %.lr.ph.jt66 ] ; 2 uses
  %.0416780.ph = phi ptr [ %.04167, %.lr.ph ], [ %.04167, %bb.c ], [ %.2.jt66, %.lr.ph.jt66 ] ; 5 uses
  %i.k = icmp eq i32 %.ph85, 1919246700
  %i.l = icmp eq i8 %.0426683.ph, 67
  %i.m = icmp eq i32 %.ph85, 1718382433
  %i.n = or i1 %i.k, %i.m
  %i.o = icmp eq i32 %.ph85, 1685026146
  %i.p = or i1 %i.o, %i.n
  %or.cond56.peel = select i1 %i.p, i1 %i.l, i1 false
  br i1 %or.cond56.peel, label %bb.b, label %.loopexit153

bb.b:                                             ; preds = %.preheader84
  %i.q = load i8, ptr %.ph, align 1, !tbaa !741   ; 2 uses
  %.not.jt69.peel = icmp eq i8 %i.q, 0
  br i1 %.not.jt69.peel, label %.thread, label %.lr.ph.jt69.peel

.lr.ph.jt69.peel:                                 ; preds = %bb.b
  %i.r = shl i32 %.ph85, 8
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !741
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.r, %i.v               ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.ph, i64 1 ; 5 uses
  switch i32 %i.w, label %.loopexit153 [
    i32 1667785074, label %.loopexit86
    i32 1668050786, label %.loopexit87.loopexit
    i32 1952807028, label %.loopexit87.loopexit
    i32 1651273570, label %.loopexit88
  ]

.lr.ph.jt66:                                      ; preds = %bb.d
  %i.y = zext i8 %i.ap to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !741
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.ar, %i.ab            ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 5 uses
  switch i32 %i.ac, label %.preheader84 [
    i32 1667785074, label %.loopexit86
    i32 1668050786, label %.loopexit87
    i32 1952807028, label %.loopexit87
  ]

.loopexit87.loopexit:                             ; preds = %.lr.ph.jt69.peel, %.lr.ph.jt69.peel
  br label %.loopexit87

.loopexit87:                                      ; preds = %.loopexit87.loopexit, %.lr.ph.jt66, %.lr.ph.jt66, %.lr.ph, %.lr.ph
  %i.ae = phi ptr [ %i.j, %.lr.ph ], [ %i.j, %.lr.ph ], [ %i.ad, %.lr.ph.jt66 ], [ %i.ad, %.lr.ph.jt66 ], [ %i.x, %.loopexit87.loopexit ] ; 2 uses
  %i.af = phi i32 [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ], [ %i.ac, %.lr.ph.jt66 ], [ %i.ac, %.lr.ph.jt66 ], [ %i.w, %.loopexit87.loopexit ]
  %.0416781 = phi ptr [ %.04167, %.lr.ph ], [ %.04167, %.lr.ph ], [ %.2.jt66, %.lr.ph.jt66 ], [ %.2.jt66, %.lr.ph.jt66 ], [ %.0416780.ph, %.loopexit87.loopexit ]
  %.pr = load i8, ptr %i.ae, align 1, !tbaa !741
  %i.ag = shl i32 %i.af, 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  switch i8 %.04266, label %.preheader84 [
    i8 69, label %.loopexit88
    i8 67, label %.loopexit88
  ]

.loopexit88:                                      ; preds = %.lr.ph.jt69.peel, %bb.c, %bb.c
  %i.ah = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.x, %.lr.ph.jt69.peel ] ; 3 uses
  %.0416782 = phi ptr [ %.04167, %bb.c ], [ %.04167, %bb.c ], [ %.0416780.ph, %.lr.ph.jt69.peel ]
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !741 ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 40
  %spec.select = select i1 %i.aj, ptr %i.ah, ptr %.0416782
  br label %bb.d

.loopexit153:                                     ; preds = %.lr.ph.jt69.peel, %.preheader84
  %.lcssa141 = phi ptr [ %.ph, %.preheader84 ], [ %i.x, %.lr.ph.jt69.peel ]
  %.lcssa = phi i32 [ %.ph85, %.preheader84 ], [ %i.w, %.lr.ph.jt69.peel ] ; 2 uses
  %.0426683.lcssa = phi i8 [ %.0426683.ph, %.preheader84 ], [ 69, %.lr.ph.jt69.peel ]
  %i.ak = and i32 %.lcssa, 16777215
  %i.al = icmp eq i32 %i.ak, 6909556
  br i1 %i.al, label %.thread, label %.loopexit86

.loopexit86:                                      ; preds = %.lr.ph.jt69.peel, %.lr.ph.jt66, %.loopexit153, %.lr.ph
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.ad, %.lr.ph.jt66 ], [ %.lcssa141, %.loopexit153 ], [ %i.x, %.lr.ph.jt69.peel ] ; 2 uses
  %i.an = phi i32 [ %i.i, %.lr.ph ], [ %i.ac, %.lr.ph.jt66 ], [ %.lcssa, %.loopexit153 ], [ %i.w, %.lr.ph.jt69.peel ]
  %.244 = phi i8 [ 66, %.lr.ph ], [ 66, %.lr.ph.jt66 ], [ %.0426683.lcssa, %.loopexit153 ], [ 66, %.lr.ph.jt69.peel ] ; 2 uses
  %.2 = phi ptr [ %i.j, %.lr.ph ], [ %i.ad, %.lr.ph.jt66 ], [ %.0416780.ph, %.loopexit153 ], [ %i.x, %.lr.ph.jt69.peel ] ; 2 uses
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !741 ; 2 uses
  %.not = icmp eq i8 %i.ao, 0
  br i1 %.not, label %.thread, label %.lr.ph

bb.d:                                             ; preds = %.loopexit88, %.loopexit87
  %i.ap = phi i8 [ %i.ai, %.loopexit88 ], [ %.pr, %.loopexit87 ] ; 2 uses
  %i.aq = phi ptr [ %i.ah, %.loopexit88 ], [ %i.ae, %.loopexit87 ]
  %i.ar = phi i32 [ 1819238912, %.loopexit88 ], [ %i.ag, %.loopexit87 ]
  %.244.jt66 = phi i8 [ 65, %.loopexit88 ], [ 66, %.loopexit87 ] ; 2 uses
  %.2.jt66 = phi ptr [ %spec.select, %.loopexit88 ], [ %.0416781, %.loopexit87 ] ; 4 uses
  %.not.jt66 = icmp eq i8 %i.ap, 0
  br i1 %.not.jt66, label %.thread, label %.lr.ph.jt66

.thread:                                          ; preds = %.loopexit86, %.loopexit153, %bb.d, %bb.b, %bb.a
  %.041.lcssa = phi ptr [ null, %bb.a ], [ %.0416780.ph, %bb.b ], [ %.2.jt66, %bb.d ], [ %.0416780.ph, %.loopexit153 ], [ %.2, %.loopexit86 ] ; 3 uses
  %.345 = phi i8 [ 67, %bb.a ], [ 69, %bb.b ], [ %.244.jt66, %bb.d ], [ 68, %.loopexit153 ], [ %.244, %.loopexit86 ] ; 2 uses
  %.not52 = icmp eq ptr %1, null
  br i1 %.not52, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !576
  %i.as = icmp ult i8 %.345, 67
  br i1 %i.as, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not53 = icmp eq ptr %.041.lcssa, null
  br i1 %.not53, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.at = load i8, ptr %.041.lcssa, align 1, !tbaa !741 ; 2 uses
  %.not5472 = icmp eq i8 %i.at, 0
  br i1 %.not5472, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader, %bb.h
  %i.au = phi i8 [ %i.bc, %bb.h ], [ %i.at, %.preheader ]
  %.473 = phi ptr [ %i.bb, %bb.h ], [ %.041.lcssa, %.preheader ] ; 2 uses
  %i.av = add i8 %i.au, -58
  %.not55 = icmp ult i8 %i.av, -10
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph74
  %i.aw = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull %.473, ptr noundef %i.a) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !576
  %i.ax = sdiv i32 %.pre, 4
  %i.ay = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 254)
  %i.az = trunc i32 %i.ay to i8
  %i.ba = add i8 %i.az, 1
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph74
  %i.bb = getelementptr inbounds nuw i8, ptr %.473, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !741 ; 2 uses
  %.not54 = icmp eq i8 %i.bc, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph74, !llvm.loop !5155

.loopexit:                                        ; preds = %bb.h, %bb.f, %.preheader, %bb.g, %bb.e
  %spec.store.select = phi i8 [ 1, %bb.e ], [ 1, %.preheader ], [ 5, %bb.f ], [ %i.ba, %bb.g ], [ 1, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %spec.store.select, ptr %i.bd, align 2, !tbaa !2095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.thread
  ret i8 %.345
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3HexToBlob(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -1, 1073741823) %2) unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = add nuw nsw i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.c) ; 8 uses
  %i.e = add nsw i32 %2, -1
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 1
  br i1 %i.f, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.g = zext nneg i32 %i.e to i64                ; 3 uses
  %umax20 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 2)
  %i.h = add nsw i64 %umax20, -1
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw nsw i64 %i.i, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 2)
  %i.k = add nsw i64 %umax, -1                    ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr i8, ptr %i.d, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 1
  %i.n = and i64 %i.k, -2
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep19 = getelementptr i8, ptr %i.o, i64 2
  %bound0 = icmp ult ptr %i.d, %scevgep19
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i32 %2, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.j, 12
  %n.vec = and i64 %i.j, 9223372036854775792      ; 5 uses
  %i.q = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = shl nuw i64 %index, 1                    ; 16 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 22
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 26
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 30
  %i.ax = load i8, ptr %i.s, align 1, !tbaa !741, !alias.scope !5162
  %i.ay = load i8, ptr %i.u, align 1, !tbaa !741, !alias.scope !5162
  %i.az = load i8, ptr %i.w, align 1, !tbaa !741, !alias.scope !5162
  %i.ba = load i8, ptr %i.y, align 1, !tbaa !741, !alias.scope !5162
  %i.bb = load i8, ptr %i.aa, align 1, !tbaa !741, !alias.scope !5162
  %i.bc = load i8, ptr %i.ac, align 1, !tbaa !741, !alias.scope !5162
  %i.bd = load i8, ptr %i.ae, align 1, !tbaa !741, !alias.scope !5162
  %i.be = load i8, ptr %i.ag, align 1, !tbaa !741, !alias.scope !5162
  %i.bf = load i8, ptr %i.ai, align 1, !tbaa !741, !alias.scope !5162
  %i.bg = load i8, ptr %i.ak, align 1, !tbaa !741, !alias.scope !5162
  %i.bh = load i8, ptr %i.am, align 1, !tbaa !741, !alias.scope !5162
  %i.bi = load i8, ptr %i.ao, align 1, !tbaa !741, !alias.scope !5162
  %i.bj = load i8, ptr %i.aq, align 1, !tbaa !741, !alias.scope !5162
  %i.bk = load i8, ptr %i.as, align 1, !tbaa !741, !alias.scope !5162
  %i.bl = load i8, ptr %i.au, align 1, !tbaa !741, !alias.scope !5162
  %i.bm = load i8, ptr %i.aw, align 1, !tbaa !741, !alias.scope !5162
  %i.bn = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 1
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 2
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 3
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 4
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 5
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 6
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 7
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 8
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 9
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 10
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 11
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 12
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 13
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 14
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 15 ; 2 uses
  %i.cd = and <16 x i8> %i.cc, splat (i8 64)
  %i.ce = icmp eq <16 x i8> %i.cd, zeroinitializer
  %i.cf = select <16 x i1> %i.ce, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.cg = add <16 x i8> %i.cf, %i.cc
  %i.ch = shl <16 x i8> %i.cg, splat (i8 4)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ab, i64 11
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.af, i64 15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aj, i64 19
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ap, i64 25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 27
  %i.cw = getelementptr inbounds nuw i8, ptr %i.at, i64 29
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 31
  %i.cy = load i8, ptr %i.ci, align 1, !tbaa !741, !alias.scope !5162
  %i.cz = load i8, ptr %i.cj, align 1, !tbaa !741, !alias.scope !5162
  %i.da = load i8, ptr %i.ck, align 1, !tbaa !741, !alias.scope !5162
  %i.db = load i8, ptr %i.cl, align 1, !tbaa !741, !alias.scope !5162
  %i.dc = load i8, ptr %i.cm, align 1, !tbaa !741, !alias.scope !5162
  %i.dd = load i8, ptr %i.cn, align 1, !tbaa !741, !alias.scope !5162
  %i.de = load i8, ptr %i.co, align 1, !tbaa !741, !alias.scope !5162
  %i.df = load i8, ptr %i.cp, align 1, !tbaa !741, !alias.scope !5162
  %i.dg = load i8, ptr %i.cq, align 1, !tbaa !741, !alias.scope !5162
  %i.dh = load i8, ptr %i.cr, align 1, !tbaa !741, !alias.scope !5162
  %i.di = load i8, ptr %i.cs, align 1, !tbaa !741, !alias.scope !5162
  %i.dj = load i8, ptr %i.ct, align 1, !tbaa !741, !alias.scope !5162
  %i.dk = load i8, ptr %i.cu, align 1, !tbaa !741, !alias.scope !5162
  %i.dl = load i8, ptr %i.cv, align 1, !tbaa !741, !alias.scope !5162
  %i.dm = load i8, ptr %i.cw, align 1, !tbaa !741, !alias.scope !5162
  %i.dn = load i8, ptr %i.cx, align 1, !tbaa !741, !alias.scope !5162
  %i.do = insertelement <16 x i8> poison, i8 %i.cy, i64 0
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 1
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 2
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 3
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 4
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 5
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 6
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 7
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 8
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 9
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 10
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 11
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 12
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 13
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 14
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 15 ; 2 uses
  %i.ee = and <16 x i8> %i.ed, splat (i8 64)
  %i.ef = icmp eq <16 x i8> %i.ee, zeroinitializer
  %i.eg = select <16 x i1> %i.ef, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.eh = add <16 x i8> %i.eg, %i.ed
  %i.ei = and <16 x i8> %i.eh, splat (i8 15)
  %i.ej = or disjoint <16 x i8> %i.ei, %i.ch
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  store <16 x i8> %i.ej, ptr %i.ek, align 1, !tbaa !741, !alias.scope !5163, !noalias !5162
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !5159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.j, 9223372036854775804    ; 4 uses
  %i.em = shl nuw i64 %n.vec22, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.en = shl nuw i64 %index23, 1                 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %i.en ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 %i.en ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %i.en ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 6
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !741, !alias.scope !5162
  %i.ew = load i8, ptr %i.eq, align 1, !tbaa !741, !alias.scope !5162
  %i.ex = load i8, ptr %i.es, align 1, !tbaa !741, !alias.scope !5162
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !741, !alias.scope !5162
  %i.ez = insertelement <4 x i8> poison, i8 %i.ev, i64 0
  %i.fa = insertelement <4 x i8> %i.ez, i8 %i.ew, i64 1
  %i.fb = insertelement <4 x i8> %i.fa, i8 %i.ex, i64 2
  %i.fc = insertelement <4 x i8> %i.fb, i8 %i.ey, i64 3 ; 2 uses
  %i.fd = and <4 x i8> %i.fc, splat (i8 64)
  %i.fe = icmp eq <4 x i8> %i.fd, zeroinitializer
  %i.ff = select <4 x i1> %i.fe, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.fg = add <4 x i8> %i.ff, %i.fc
  %i.fh = shl <4 x i8> %i.fg, splat (i8 4)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 7
  %i.fm = load i8, ptr %i.fi, align 1, !tbaa !741, !alias.scope !5162
  %i.fn = load i8, ptr %i.fj, align 1, !tbaa !741, !alias.scope !5162
  %i.fo = load i8, ptr %i.fk, align 1, !tbaa !741, !alias.scope !5162
  %i.fp = load i8, ptr %i.fl, align 1, !tbaa !741, !alias.scope !5162
  %i.fq = insertelement <4 x i8> poison, i8 %i.fm, i64 0
  %i.fr = insertelement <4 x i8> %i.fq, i8 %i.fn, i64 1
  %i.fs = insertelement <4 x i8> %i.fr, i8 %i.fo, i64 2
  %i.ft = insertelement <4 x i8> %i.fs, i8 %i.fp, i64 3 ; 2 uses
  %i.fu = and <4 x i8> %i.ft, splat (i8 64)
  %i.fv = icmp eq <4 x i8> %i.fu, zeroinitializer
  %i.fw = select <4 x i1> %i.fv, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.fx = add <4 x i8> %i.fw, %i.ft
  %i.fy = and <4 x i8> %i.fx, splat (i8 15)
  %i.fz = or disjoint <4 x i8> %i.fy, %i.fh
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 %index23
  store <4 x i8> %i.fz, ptr %i.ga, align 1, !tbaa !741, !alias.scope !5163, !noalias !5162
  %index.next24 = add nuw i64 %index23, 4         ; 2 uses
  %i.gb = icmp eq i64 %index.next24, %n.vec22
  br i1 %i.gb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5160

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.j, %n.vec22
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !741 ; 2 uses
  %i.ge = and i8 %i.gd, 64
  %.not.i = icmp eq i8 %i.ge, 0
  %i.gf = select i1 %.not.i, i8 0, i8 9
  %i.gg = add i8 %i.gf, %i.gd
  %i.gh = shl i8 %i.gg, 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !741 ; 2 uses
  %i.gk = and i8 %i.gj, 64
  %.not.i16 = icmp eq i8 %i.gk, 0
  %i.gl = select i1 %.not.i16, i8 0, i8 9
  %i.gm = add i8 %i.gl, %i.gj
  %i.gn = and i8 %i.gm, 15
  %i.go = or disjoint i8 %i.gn, %i.gh
  %i.gp = lshr exact i64 %indvars.iv, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gp
  store i8 %i.go, ptr %i.gq, align 1, !tbaa !741
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.gr = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.gr, label %.lr.ph, label %._crit_edge.loopexit.loopexit, !llvm.loop !5161

._crit_edge.loopexit.loopexit:                    ; preds = %.lr.ph
  %i.gs = lshr exact i64 %indvars.iv.next, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %middle.block, %vec.epilog.middle.block, %._crit_edge.loopexit.loopexit, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %n.vec22, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.gs, %._crit_edge.loopexit.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.lcssa
  store i8 0, ptr %i.gt, align 1, !tbaa !741
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @sqlite3VdbeAddOp2(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -1, 511) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !711  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1206
  %.not.i = icmp sgt i32 %i.d, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0), !inline_history !1234
  br label %sqlite3VdbeAddOp3.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !711
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !710
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = trunc i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !938
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !957
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !954
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !955
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !956
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !741
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @sqlite3VdbeAddOp3(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !711  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1206
  %.not = icmp sgt i32 %i.d, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !711
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !710
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = trunc i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !938
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !957
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !954
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !955
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %4, ptr %i.o, align 4, !tbaa !956
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !741
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !939
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @growOp3(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.b, %bb.a
  %i.c = tail call fastcc i32 @growOpArray(ptr noundef %0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %sqlite3VdbeAddOp3.exit

bb.b:                                             ; preds = %tailrecurse
  %i.d = load i32, ptr %i.a, align 8, !tbaa !711  ; 4 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !1206
  %.not.i = icmp sgt i32 %i.e, %i.d
  br i1 %.not.i, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !711
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !710
  %i.i = sext i32 %i.d to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = trunc i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !938
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !957
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !954
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !955
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %4, ptr %i.o, align 4, !tbaa !956
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !741
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %tailrecurse, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 1, %tailrecurse ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @growOpArray(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1232 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1206 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 1
  %i.g = select i1 %.not, i64 42, i64 %i.f        ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !1001 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 156
  %i.j = load i32, ptr %i.i, align 4, !tbaa !576
  %i.k = sext i32 %i.j to i64
  %i.l = icmp sgt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 103 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !928
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %sqlite3OomFault.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.q = load i8, ptr %i.p, align 8, !tbaa !929
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %sqlite3OomFault.exit
end_hunk_8
begin_hunk_9_@sqlite3Update:bb.a
  br i1 %i.yw, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 %i.yr, ptr %i.yt, align 8, !tbaa !711
  br label %sqlite3VdbeJumpHereOrPopInst.exit

bb.ew:                                            ; preds = %bb.eu
  %i.yx = load ptr, ptr %.0.i874382, align 8, !tbaa !687
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 103
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !928
  %.not.i.i.i901 = icmp eq i8 %i.yz, 0
  br i1 %.not.i.i.i901, label %bb.ex, label %sqlite3VdbeChangeP2.exit.i

bb.ex:                                            ; preds = %bb.ew
  %i.za = getelementptr inbounds nuw i8, ptr %.0.i874382, i64 136
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !710
  %i.zc = sext i32 %i.yr to i64
  %i.zd = getelementptr inbounds [24 x i8], ptr %i.zb, i64 %i.zc
  br label %sqlite3VdbeChangeP2.exit.i

sqlite3VdbeChangeP2.exit.i:                       ; preds = %bb.ex, %bb.ew
  %.0.i.i.i = phi ptr [ %i.zd, %bb.ex ], [ @sqlite3VdbeGetOp.dummy, %bb.ew ]
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.yu, ptr %i.ze, align 8, !tbaa !955
  br label %sqlite3VdbeJumpHereOrPopInst.exit

sqlite3VdbeJumpHereOrPopInst.exit:                ; preds = %sqlite3VdbeChangeP2.exit.i, %bb.ev, %.thread99, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  br label %bb.ey

bb.ey:                                            ; preds = %sqlite3VdbeJumpHereOrPopInst.exit, %bb.el
  %.not825 = icmp eq i32 %.2740, 0
  br i1 %.not825, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.not826 = icmp eq i32 %.sroa.0.1, %.465
  %.not827 = icmp eq i32 %.sroa.5.1, %.465
  %or.cond859 = select i1 %.not826, i1 true, i1 %.not827
  br i1 %or.cond859, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.zf = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i874382, i32 noundef 28, i32 noundef %.465, i32 noundef %i.ul, i32 noundef %.1719, i32 noundef %.0733) ; 0 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.not828 = icmp eq i32 %.2740, 1
  br i1 %.not828, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.zg = load i32, ptr %i.uj, align 8, !tbaa !2096
  %i.zh = add nsw i32 %i.zg, -1                   ; 2 uses
  store i32 %i.zh, ptr %i.uj, align 8, !tbaa !2096
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.0736 = phi i32 [ %i.zh, %bb.fc ], [ %i.ul, %bb.fb ]
  %.not829 = icmp eq ptr %i.dg, null
  %i.zi = select i1 %.not829, i32 %.0726, i32 %.1719
  %i.zj = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i874382, i32 noundef 51, i32 noundef %i.zi, i32 noundef %i.ul) ; 0 uses
  br label %bb.fl

bb.fe:                                            ; preds = %bb.ey
  %i.zk = icmp ne ptr %i.dg, null                 ; 2 uses
  %or.cond25 = or i1 %i.zk, %i.yd
  br i1 %or.cond25, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  %i.zl = load i32, ptr %i.uj, align 8, !tbaa !2096
  %i.zm = add nsw i32 %i.zl, -1                   ; 8 uses
  store i32 %i.zm, ptr %i.uj, align 8, !tbaa !2096
  %i.zn = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i874382, i32 noundef 36, i32 noundef %.073468, i32 noundef %i.ul) ; 0 uses
  %i.zo = getelementptr i8, ptr %.0.i874382, i64 144
  %.val = load i32, ptr %i.zo, align 8, !tbaa !711 ; 4 uses
  br i1 %i.yd, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.ce, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.zk, label %.preheader, label %bb.fi

.preheader:                                       ; preds = %bb.fh
  %i.zp = sext i16 %.073076 to i32                ; 2 uses
  %i.zq = icmp sgt i16 %.073076, 0
  br i1 %i.zq, label %.lr.ph221, label %._crit_edge222

.lr.ph221:                                        ; preds = %.preheader, %.lr.ph221
  %.5220 = phi i32 [ %i.zt, %.lr.ph221 ], [ 0, %.preheader ] ; 3 uses
  %i.zr = add nsw i32 %.5220, %.073172
  %i.zs = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i874382, i32 noundef 95, i32 noundef %.073468, i32 noundef %.5220, i32 noundef %i.zr) ; 0 uses
  %i.zt = add nuw nsw i32 %.5220, 1               ; 2 uses
  %exitcond289.not = icmp eq i32 %i.zt, %i.zp
  br i1 %exitcond289.not, label %._crit_edge222, label %.lr.ph221, !llvm.loop !5374

._crit_edge222:                                   ; preds = %.lr.ph221, %.preheader
  %i.zu = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i874382, i32 noundef 28, i32 noundef %.465, i32 noundef %i.zm, i32 noundef %.073172, i32 noundef %i.zp) ; 0 uses
  br label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.zv = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i874382, i32 noundef 136, i32 noundef %.073468, i32 noundef %.0726) ; 0 uses
  %i.zw = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i874382, i32 noundef 31, i32 noundef %.465, i32 noundef %i.zm, i32 noundef %.0726) ; 0 uses
  br label %bb.fl

bb.fj:                                            ; preds = %bb.ff
  %i.zx = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i874382, i32 noundef 135, i32 noundef %.073468, i32 noundef %.1719) ; 0 uses
  %i.zy = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i874382, i32 noundef 28, i32 noundef %.465, i32 noundef %i.zm, i32 noundef %.1719, i32 noundef 0) ; 0 uses
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fe
  %i.zz = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i874382, i32 noundef 36, i32 noundef %.073468, i32 noundef %i.ul) ; 0 uses
  %i.aaa = load i32, ptr %i.uj, align 8, !tbaa !2096
  %i.aab = add nsw i32 %i.aaa, -1                 ; 3 uses
  store i32 %i.aab, ptr %i.uj, align 8, !tbaa !2096
  %i.aac = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i874382, i32 noundef 136, i32 noundef %.073468, i32 noundef %.0726)
  %i.aad = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i874382, i32 noundef 31, i32 noundef %.465, i32 noundef %i.aab, i32 noundef %.0726) ; 0 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fd, %bb.fj, %._crit_edge222, %bb.fi, %bb.fg, %bb.fk, %bb.ei
  %.0765 = phi i32 [ 0, %bb.fd ], [ %.val, %bb.fg ], [ %.val, %._crit_edge222 ], [ %.val, %bb.fi ], [ %.val, %bb.fj ], [ %i.aac, %bb.fk ], [ 0, %bb.ei ]
  %.1737 = phi i32 [ %.0736, %bb.fd ], [ %i.zm, %bb.fg ], [ %i.zm, %._crit_edge222 ], [ %i.zm, %bb.fi ], [ %i.zm, %bb.fj ], [ %i.aab, %bb.fk ], [ %i.ul, %bb.ei ] ; 9 uses
  %.not830 = icmp eq i8 %.0747.lcssa398, 0        ; 2 uses
  br i1 %.not830, label %bb.fq, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  br i1 %i.uh, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %.0744.lcssa400, i32 noundef %.1725)
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.aae = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i874382, i32 noundef 95, i32 noundef %.073468, i32 noundef %.0741.lcssa402, i32 noundef %.1725) ; 0 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.aaf = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i874382, i32 noundef 13, i32 noundef %.1725) ; 0 uses
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fl
  %i.aag = icmp ne i8 %.0750.lcssa396, 0
  %or.cond27 = select i1 %i.aag, i1 true, i1 %i.tg
  %or.cond29 = or i1 %i.tf, %or.cond27
  br i1 %or.cond29, label %bb.fr, label %bb.gd

bb.fr:                                            ; preds = %bb.fq
  br i1 %i.tg, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aah = call fastcc i32 @sqlite3FkOldmask(ptr noundef nonnull %0, ptr noundef %i.t)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %i.aai = phi i32 [ %i.aah, %bb.fs ], [ 0, %bb.fr ]
  %i.aaj = call fastcc i32 @sqlite3TriggerColmask(ptr noundef nonnull %0, ptr noundef %.0.i869, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 3, ptr noundef %i.t, i32 noundef %4)
  %i.aak = or i32 %i.aaj, %i.aai                  ; 2 uses
  %i.aal = load i16, ptr %i.dn, align 2, !tbaa !1161
  %i.aam = icmp sgt i16 %i.aal, 0
  br i1 %i.aam, label %.lr.ph227, label %._crit_edge228

.lr.ph227:                                        ; preds = %bb.ft
  %i.aan = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.aap = icmp eq i32 %i.aak, -1
  br label %bb.fu

bb.fu:                                            ; preds = %.lr.ph227, %bb.gb
  %indvars.iv290 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next291, %bb.gb ] ; 12 uses
  %i.aaq = load ptr, ptr %i.aan, align 8, !tbaa !1162 ; 22 uses
  %i.aar = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %indvars.iv290
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 14
  %i.aat = load i16, ptr %i.aas, align 2, !tbaa !1164 ; 3 uses
  %i.aau = trunc nuw nsw i64 %indvars.iv290 to i32 ; 2 uses
  %i.aav = trunc i64 %indvars.iv290 to i16        ; 4 uses
  %i.aaw = load i32, ptr %i.cs, align 8, !tbaa !1098
  %i.aax = and i32 %i.aaw, 32
  %i.aay = icmp eq i32 %i.aax, 0
  %i.aaz = icmp slt i16 %i.aav, 0
  %or.cond.i = or i1 %i.aaz, %i.aay
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i902

.preheader.i902:                                  ; preds = %bb.fu
  %.not23.i = icmp eq i16 %i.aav, 0
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i902
  %min.iters.check = icmp samesign ult i64 %indvars.iv290, 5
  br i1 %min.iters.check, label %.lr.ph.i903.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check494 = icmp samesign ult i64 %indvars.iv290, 17
  br i1 %min.iters.check494, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aba = and i64 %indvars.iv290, 15             ; 2 uses
  %i.abb = icmp eq i64 %i.aba, 0
  %i.abc = select i1 %i.abb, i64 16, i64 %i.aba   ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv290, %i.abc     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.adv, %vector.body ]
  %vec.phi495 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.adw, %vector.body ]
  %i.abd = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abe = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abf = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abg = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abh = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abi = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abj = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abk = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abl = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abn = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abo = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abp = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abq = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abr = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abs = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abd, i64 14
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abe, i64 30
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abf, i64 46
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abg, i64 62
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abh, i64 78
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abi, i64 94
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abj, i64 110
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abk, i64 126
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abl, i64 142
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abm, i64 158
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abn, i64 174
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abo, i64 190
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abp, i64 206
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abq, i64 222
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abr, i64 238
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abs, i64 254
  %i.acj = load i16, ptr %i.abt, align 2, !tbaa !1164
  %i.ack = load i16, ptr %i.abu, align 2, !tbaa !1164
  %i.acl = load i16, ptr %i.abv, align 2, !tbaa !1164
  %i.acm = load i16, ptr %i.abw, align 2, !tbaa !1164
  %i.acn = load i16, ptr %i.abx, align 2, !tbaa !1164
  %i.aco = load i16, ptr %i.aby, align 2, !tbaa !1164
  %i.acp = load i16, ptr %i.abz, align 2, !tbaa !1164
  %i.acq = load i16, ptr %i.aca, align 2, !tbaa !1164
  %i.acr = insertelement <8 x i16> poison, i16 %i.acj, i64 0
  %i.acs = insertelement <8 x i16> %i.acr, i16 %i.ack, i64 1
  %i.act = insertelement <8 x i16> %i.acs, i16 %i.acl, i64 2
  %i.acu = insertelement <8 x i16> %i.act, i16 %i.acm, i64 3
  %i.acv = insertelement <8 x i16> %i.acu, i16 %i.acn, i64 4
  %i.acw = insertelement <8 x i16> %i.acv, i16 %i.aco, i64 5
  %i.acx = insertelement <8 x i16> %i.acw, i16 %i.acp, i64 6
  %i.acy = insertelement <8 x i16> %i.acx, i16 %i.acq, i64 7
  %i.acz = load i16, ptr %i.acb, align 2, !tbaa !1164
  %i.ada = load i16, ptr %i.acc, align 2, !tbaa !1164
  %i.adb = load i16, ptr %i.acd, align 2, !tbaa !1164
  %i.adc = load i16, ptr %i.ace, align 2, !tbaa !1164
  %i.add = load i16, ptr %i.acf, align 2, !tbaa !1164
  %i.ade = load i16, ptr %i.acg, align 2, !tbaa !1164
  %i.adf = load i16, ptr %i.ach, align 2, !tbaa !1164
  %i.adg = load i16, ptr %i.aci, align 2, !tbaa !1164
  %i.adh = insertelement <8 x i16> poison, i16 %i.acz, i64 0
  %i.adi = insertelement <8 x i16> %i.adh, i16 %i.ada, i64 1
  %i.adj = insertelement <8 x i16> %i.adi, i16 %i.adb, i64 2
  %i.adk = insertelement <8 x i16> %i.adj, i16 %i.adc, i64 3
  %i.adl = insertelement <8 x i16> %i.adk, i16 %i.add, i64 4
  %i.adm = insertelement <8 x i16> %i.adl, i16 %i.ade, i64 5
  %i.adn = insertelement <8 x i16> %i.adm, i16 %i.adf, i64 6
  %i.ado = insertelement <8 x i16> %i.adn, i16 %i.adg, i64 7
  %i.adp = lshr <8 x i16> %i.acy, splat (i16 5)
  %i.adq = lshr <8 x i16> %i.ado, splat (i16 5)
  %i.adr = and <8 x i16> %i.adp, splat (i16 1)
  %i.ads = and <8 x i16> %i.adq, splat (i16 1)
  %i.adt = xor <8 x i16> %i.adr, splat (i16 1)
  %i.adu = xor <8 x i16> %i.ads, splat (i16 1)
  %i.adv = add <8 x i16> %i.adt, %vec.phi         ; 2 uses
  %i.adw = add <8 x i16> %i.adu, %vec.phi495      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.adx = icmp eq i64 %index.next, %n.vec
  br i1 %i.adx, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5375

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.adw, %i.adv
  %i.ady = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.abc, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i903.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.ady, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.adz = and i64 %indvars.iv290, 3              ; 2 uses
  %i.aea = icmp eq i64 %i.adz, 0
  %i.aeb = select i1 %i.aea, i64 4, i64 %i.adz
  %n.vec496 = sub nsw i64 %indvars.iv290, %i.aeb  ; 2 uses
  %i.aec = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index497 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next499, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi498 = phi <4 x i16> [ %i.aec, %vec.epilog.ph ], [ %i.aew, %vec.epilog.vector.body ]
  %i.aed = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index497
  %i.aee = getelementptr [16 x i8], ptr %i.aaq, i64 %index497
  %i.aef = getelementptr [16 x i8], ptr %i.aaq, i64 %index497
  %i.aeg = getelementptr [16 x i8], ptr %i.aaq, i64 %index497
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 14
  %i.aei = getelementptr i8, ptr %i.aee, i64 30
  %i.aej = getelementptr i8, ptr %i.aef, i64 46
  %i.aek = getelementptr i8, ptr %i.aeg, i64 62
  %i.ael = load i16, ptr %i.aeh, align 2, !tbaa !1164
  %i.aem = load i16, ptr %i.aei, align 2, !tbaa !1164
  %i.aen = load i16, ptr %i.aej, align 2, !tbaa !1164
  %i.aeo = load i16, ptr %i.aek, align 2, !tbaa !1164
  %i.aep = insertelement <4 x i16> poison, i16 %i.ael, i64 0
  %i.aeq = insertelement <4 x i16> %i.aep, i16 %i.aem, i64 1
  %i.aer = insertelement <4 x i16> %i.aeq, i16 %i.aen, i64 2
  %i.aes = insertelement <4 x i16> %i.aer, i16 %i.aeo, i64 3
  %i.aet = lshr <4 x i16> %i.aes, splat (i16 5)
  %i.aeu = and <4 x i16> %i.aet, splat (i16 1)
  %i.aev = xor <4 x i16> %i.aeu, splat (i16 1)
  %i.aew = add <4 x i16> %i.aev, %vec.phi498      ; 2 uses
  %index.next499 = add nuw i64 %index497, 4       ; 2 uses
  %i.aex = icmp eq i64 %index.next499, %n.vec496
  br i1 %i.aex, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5376

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aey = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.aew)
  br label %.lr.ph.i903.preheader

.lr.ph.i903.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i905.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec496, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.ady, %vec.epilog.iter.check ], [ %i.aey, %vec.epilog.middle.block ]
  br label %.lr.ph.i903

.lr.ph.i903:                                      ; preds = %.lr.ph.i903.preheader, %.lr.ph.i903
  %indvars.iv.i905 = phi i64 [ %indvars.iv.next.i907, %.lr.ph.i903 ], [ %indvars.iv.i905.ph, %.lr.ph.i903.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i906, %.lr.ph.i903 ], [ %.021.i.ph, %.lr.ph.i903.preheader ]
  %i.aez = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %indvars.iv.i905
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 14
  %i.afb = load i16, ptr %i.afa, align 2, !tbaa !1164
  %i.afc = lshr i16 %i.afb, 5
  %i.afd = and i16 %i.afc, 1
  %i.afe = xor i16 %i.afd, 1
  %spec.select.i906 = add i16 %i.afe, %.021.i     ; 2 uses
  %indvars.iv.next.i907 = add nuw nsw i64 %indvars.iv.i905, 1 ; 2 uses
  %exitcond.not.i908 = icmp eq i64 %indvars.iv.next.i907, %indvars.iv290
  br i1 %exitcond.not.i908, label %._crit_edge.i, label %.lr.ph.i903, !llvm.loop !5377

._crit_edge.i:                                    ; preds = %.lr.ph.i903, %.preheader.i902
  %.0.lcssa.i909 = phi i16 [ 0, %.preheader.i902 ], [ %spec.select.i906, %.lr.ph.i903 ] ; 2 uses
  %i.aff = and i16 %i.aat, 32
  %.not.i910 = icmp eq i16 %i.aff, 0
  br i1 %.not.i910, label %sqlite3TableColumnToStorage.exit, label %bb.fv

bb.fv:                                            ; preds = %._crit_edge.i
  %i.afg = load i16, ptr %i.aao, align 8, !tbaa !1166
  %i.afh = sub i16 %i.aav, %.0.lcssa.i909
  %i.afi = add i16 %i.afh, %i.afg
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.fu, %._crit_edge.i, %bb.fv
  %.018.i = phi i16 [ %i.aav, %bb.fu ], [ %i.afi, %bb.fv ], [ %.0.lcssa.i909, %._crit_edge.i ]
  %i.afj = sext i16 %.018.i to i32
  %i.afk = add nsw i32 %.1722, %i.afj             ; 2 uses
  br i1 %i.aap, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %sqlite3TableColumnToStorage.exit
  %i.afl = icmp samesign ult i64 %indvars.iv290, 32
  br i1 %i.afl, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.afm = shl nuw i32 1, %i.aau
  %i.afn = and i32 %i.afm, %i.aak
  %.not845 = icmp eq i32 %i.afn, 0
  %i.afo = and i16 %i.aat, 1
  %.not846 = icmp eq i16 %i.afo, 0
  %or.cond860 = select i1 %.not845, i1 %.not846, i1 false
  br i1 %or.cond860, label %bb.ga, label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %.old = and i16 %i.aat, 1
  %.not846.old = icmp eq i16 %.old, 0
  br i1 %.not846.old, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx, %sqlite3TableColumnToStorage.exit
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef nonnull %.0.i874382, ptr noundef nonnull %i.t, i32 noundef %.465, i32 noundef %i.aau, i32 noundef %i.afk)
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fx, %bb.fy
  %i.afp = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i874382, i32 noundef 76, i32 noundef 0, i32 noundef %i.afk) ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.afq = load i16, ptr %i.dn, align 2, !tbaa !1161
  %i.afr = sext i16 %i.afq to i64
  %i.afs = icmp slt i64 %indvars.iv.next291, %i.afr
  br i1 %i.afs, label %bb.fu, label %._crit_edge228, !llvm.loop !5378

._crit_edge228:                                   ; preds = %bb.gb, %bb.ft
  %i.aft = icmp eq ptr %i.dg, null
  %or.cond31 = and i1 %i.aft, %.not830
  br i1 %or.cond31, label %bb.gc, label %bb.gd
end_hunk_9
begin_hunk_10_@sqlite3SelectPopWith:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2055
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0.i = phi ptr [ %i.h, %.preheader ], [ %1, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2309 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %findRightmost.exit, label %.preheader, !llvm.loop !5514

findRightmost.exit:                               ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2063 ; 2 uses
  %.not7 = icmp eq ptr %i.j, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %findRightmost.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2397
  store ptr %i.l, ptr %i.b, align 8, !tbaa !1229
  br label %bb.d

bb.d:                                             ; preds = %findRightmost.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %3, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i16, ptr %i.b, align 4, !tbaa !1168
  %i.d = sext i16 %i.c to i32
  %i.e = icmp eq i32 %3, %i.d
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !711  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1206
  %.not.i.i = icmp sgt i32 %i.i, %i.g
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 136, i32 noundef %2, i32 noundef %4, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.e:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.g, 1
  store i32 %i.k, ptr %i.f, align 8, !tbaa !711
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !710
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.n ; 7 uses
  store i8 -120, ptr %i.o, align 8, !tbaa !938
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 0, ptr %i.p, align 2, !tbaa !957
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %2, ptr %i.q, align 4, !tbaa !954
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %4, ptr %i.r, align 8, !tbaa !955
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !956
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !741
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 0, ptr %i.u, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.w = load i8, ptr %i.v, align 1, !tbaa !1192
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1162 ; 23 uses
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 14 ; 4 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !1164 ; 3 uses
  %i.ae = and i16 %i.ad, 32
  %.not = icmp eq i16 %i.ae, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.af, align 8, !tbaa !1232 ; 3 uses
  %i.ag = and i16 %i.ad, 256
  %.not42 = icmp eq i16 %i.ag, 0
  br i1 %.not42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !1198
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %.val, ptr noundef nonnull @.str.669, ptr noundef %i.ah)
  br label %sqlite3VdbeAddOp2.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 68 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !2386
  %i.ak = or disjoint i16 %i.ad, 256
  store i16 %i.ak, ptr %i.ac, align 2, !tbaa !1164
  %i.al = add nsw i32 %2, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !2386
  tail call fastcc void @sqlite3ExprCodeGeneratedColumn(ptr noundef %.val, ptr noundef nonnull %1, ptr noundef nonnull %i.ab, i32 noundef %4)
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !2386
  %i.am = load i16, ptr %i.ac, align 2, !tbaa !1164
  %i.an = and i16 %i.am, -257
  store i16 %i.an, ptr %i.ac, align 2, !tbaa !1164
  br label %sqlite3VdbeAddOp2.exit

bb.k:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1098 ; 2 uses
  %i.aq = and i32 %i.ap, 128
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.l
  %.08.i.in = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.as, %bb.l ]
  %.08.i = load ptr, ptr %.08.i.in, align 8, !tbaa !1201, !nonnull !1293, !noundef !1293 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.au = load i16, ptr %i.at, align 1
  %i.av = and i16 %i.au, 3
  %.not5.i = icmp eq i16 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i

sqlite3PrimaryKeyIndex.exit:                      ; preds = %.lr.ph.i
  %sext.i = shl i32 %3, 16
  %i.ax = ashr exact i32 %sext.i, 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i, i64 96
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !1158 ; 2 uses
  %.not.i43 = icmp eq i16 %i.az, 0
  br i1 %.not.i43, label %.critedge, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %sqlite3PrimaryKeyIndex.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1159
  %wide.trip.count.i = zext i16 %i.az to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i44
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i44 ], [ %indvars.iv.next.i, %bb.n ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !789
  %i.be = sext i16 %i.bd to i32
  %i.bf = icmp eq i32 %i.ax, %i.be
  br i1 %i.bf, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %bb.m, !llvm.loop !79

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %bb.m
  %i.bg = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge

bb.o:                                             ; preds = %bb.k
  %i.bh = trunc i32 %3 to i16                     ; 4 uses
  %i.bi = and i32 %i.ap, 32
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = icmp slt i16 %i.bh, 0
  %or.cond.i = or i1 %i.bk, %i.bj
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %sext = and i32 %3, 32767                       ; 3 uses
  %.not23.i = icmp eq i16 %i.bh, 0
  %.pre = zext nneg i32 %sext to i64              ; 6 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i32 %sext, 5
  br i1 %min.iters.check, label %.lr.ph.i46.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp samesign ult i32 %sext, 17
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %.pre, 15                       ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = select i1 %i.bm, i64 16, i64 %i.bl      ; 2 uses
  %n.vec = sub nsw i64 %.pre, %i.bn               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.eg, %vector.body ]
  %vec.phi64 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.eh, %vector.body ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 46
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 62
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 78
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 94
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 110
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 126
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 142
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 158
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 174
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 190
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 206
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 222
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 238
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 254
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !1164
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !1164
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !1164
  %i.cx = load i16, ptr %i.ch, align 2, !tbaa !1164
  %i.cy = load i16, ptr %i.ci, align 2, !tbaa !1164
  %i.cz = load i16, ptr %i.cj, align 2, !tbaa !1164
  %i.da = load i16, ptr %i.ck, align 2, !tbaa !1164
  %i.db = load i16, ptr %i.cl, align 2, !tbaa !1164
  %i.dc = insertelement <8 x i16> poison, i16 %i.cu, i64 0
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 1
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 2
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 3
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 4
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 5
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 6
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 7
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !1164
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !1164
  %i.dm = load i16, ptr %i.co, align 2, !tbaa !1164
  %i.dn = load i16, ptr %i.cp, align 2, !tbaa !1164
  %i.do = load i16, ptr %i.cq, align 2, !tbaa !1164
  %i.dp = load i16, ptr %i.cr, align 2, !tbaa !1164
  %i.dq = load i16, ptr %i.cs, align 2, !tbaa !1164
  %i.dr = load i16, ptr %i.ct, align 2, !tbaa !1164
  %i.ds = insertelement <8 x i16> poison, i16 %i.dk, i64 0
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 1
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 2
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.dn, i64 3
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 4
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 5
  %i.dy = insertelement <8 x i16> %i.dx, i16 %i.dq, i64 6
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 7
  %i.ea = lshr <8 x i16> %i.dj, splat (i16 5)
  %i.eb = lshr <8 x i16> %i.dz, splat (i16 5)
  %i.ec = and <8 x i16> %i.ea, splat (i16 1)
  %i.ed = and <8 x i16> %i.eb, splat (i16 1)
  %i.ee = xor <8 x i16> %i.ec, splat (i16 1)
  %i.ef = xor <8 x i16> %i.ed, splat (i16 1)
  %i.eg = add <8 x i16> %i.ee, %vec.phi           ; 2 uses
  %i.eh = add <8 x i16> %i.ef, %vec.phi64         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5515

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.eh, %i.eg
  %i.ej = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bn, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i46.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.ej, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ek = and i64 %.pre, 3                        ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  %i.em = select i1 %i.el, i64 4, i64 %i.ek
  %n.vec65 = sub nsw i64 %.pre, %i.em             ; 2 uses
  %i.en = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi67 = phi <4 x i16> [ %i.en, %vec.epilog.ph ], [ %i.fh, %vec.epilog.vector.body ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index66
  %i.ep = getelementptr [16 x i8], ptr %i.z, i64 %index66
  %i.eq = getelementptr [16 x i8], ptr %i.z, i64 %index66
  %i.er = getelementptr [16 x i8], ptr %i.z, i64 %index66
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 14
  %i.et = getelementptr i8, ptr %i.ep, i64 30
  %i.eu = getelementptr i8, ptr %i.eq, i64 46
  %i.ev = getelementptr i8, ptr %i.er, i64 62
  %i.ew = load i16, ptr %i.es, align 2, !tbaa !1164
  %i.ex = load i16, ptr %i.et, align 2, !tbaa !1164
  %i.ey = load i16, ptr %i.eu, align 2, !tbaa !1164
  %i.ez = load i16, ptr %i.ev, align 2, !tbaa !1164
  %i.fa = insertelement <4 x i16> poison, i16 %i.ew, i64 0
  %i.fb = insertelement <4 x i16> %i.fa, i16 %i.ex, i64 1
  %i.fc = insertelement <4 x i16> %i.fb, i16 %i.ey, i64 2
  %i.fd = insertelement <4 x i16> %i.fc, i16 %i.ez, i64 3
  %i.fe = lshr <4 x i16> %i.fd, splat (i16 5)
  %i.ff = and <4 x i16> %i.fe, splat (i16 1)
  %i.fg = xor <4 x i16> %i.ff, splat (i16 1)
  %i.fh = add <4 x i16> %i.fg, %vec.phi67         ; 2 uses
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.fi = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.fi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5516

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fj = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.fh)
  br label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i48.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.ej, %vec.epilog.iter.check ], [ %i.fj, %vec.epilog.middle.block ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader, %.lr.ph.i46
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49, %.lr.ph.i46 ], [ %indvars.iv.i48.ph, %.lr.ph.i46.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i46 ], [ %.021.i.ph, %.lr.ph.i46.preheader ]
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.i48
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 14
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !1164
  %i.fn = lshr i16 %i.fm, 5
  %i.fo = and i16 %i.fn, 1
  %i.fp = xor i16 %i.fo, 1
  %spec.select.i = add i16 %i.fp, %.021.i         ; 2 uses
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %.pre
  br i1 %exitcond.not.i50, label %._crit_edge.i, label %.lr.ph.i46, !llvm.loop !5517

._crit_edge.i:                                    ; preds = %.lr.ph.i46, %.preheader.i
  %.0.lcssa.i51 = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i46 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.pre
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 14
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !1164
  %i.ft = and i16 %i.fs, 32
  %.not.i52 = icmp eq i16 %i.ft, 0
  br i1 %.not.i52, label %sqlite3TableColumnToStorage.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fv = load i16, ptr %i.fu, align 8, !tbaa !1166
  %i.fw = sub i16 %i.bh, %.0.lcssa.i51
  %i.fx = add i16 %i.fw, %i.fv
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.o, %._crit_edge.i, %bb.p
  %.018.i = phi i16 [ %i.bh, %bb.o ], [ %i.fx, %bb.p ], [ %.0.lcssa.i51, %._crit_edge.i ]
  %i.fy = sext i16 %.018.i to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %._crit_edge.loopexit.split.loop.exit13.i, %sqlite3PrimaryKeyIndex.exit, %bb.f, %sqlite3TableColumnToStorage.exit
  %.040 = phi i32 [ 177, %bb.f ], [ 95, %sqlite3TableColumnToStorage.exit ], [ 95, %sqlite3PrimaryKeyIndex.exit ], [ 95, %._crit_edge.loopexit.split.loop.exit13.i ], [ 95, %bb.n ] ; 2 uses
  %.039 = phi i32 [ %3, %bb.f ], [ %i.fy, %sqlite3TableColumnToStorage.exit ], [ -1, %sqlite3PrimaryKeyIndex.exit ], [ %i.bg, %._crit_edge.loopexit.split.loop.exit13.i ], [ -1, %bb.n ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !711 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !1206
  %.not.i53 = icmp sgt i32 %i.gc, %i.ga
  br i1 %.not.i53, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.gd = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef %.040, i32 noundef %2, i32 noundef %.039, i32 noundef %4), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.r:                                             ; preds = %.critedge
  %i.ge = add nsw i32 %i.ga, 1
  store i32 %i.ge, ptr %i.fz, align 8, !tbaa !711
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !710
  %i.gh = sext i32 %i.ga to i64
  %i.gi = getelementptr inbounds [24 x i8], ptr %i.gg, i64 %i.gh ; 7 uses
  %i.gj = trunc nuw i32 %.040 to i8
  store i8 %i.gj, ptr %i.gi, align 8, !tbaa !938
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store i16 0, ptr %i.gk, align 2, !tbaa !957
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 %2, ptr %i.gl, align 4, !tbaa !954
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i32 %.039, ptr %i.gm, align 8, !tbaa !955
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 %4, ptr %i.gn, align 4, !tbaa !956
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store ptr null, ptr %i.go, align 8, !tbaa !741
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
end_hunk_10
begin_hunk_11_@resolveExprStep:bb.a
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 11
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !1197
  %i.aan = icmp eq i8 %i.aam, %.07.i.i567.i
  br i1 %i.aan, label %bb.ff, label %sqlite3StrICmp.exit30.i571.i

bb.ff:                                            ; preds = %bb.fe
  %i.aao = load ptr, ptr %i.aak, align 8, !tbaa !1198
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fj, %bb.ff
  %.013.i26.i575.i = phi ptr [ %i.aao, %bb.ff ], [ %i.aaz, %bb.fj ] ; 2 uses
  %.012.i27.i576.i = phi ptr [ %i.gy, %bb.ff ], [ %i.aba, %bb.fj ] ; 2 uses
  %i.aap = load i8, ptr %.013.i26.i575.i, align 1, !tbaa !741 ; 3 uses
  %i.aaq = load i8, ptr %.012.i27.i576.i, align 1, !tbaa !741 ; 2 uses
  %i.aar = icmp eq i8 %i.aap, %i.aaq
  br i1 %i.aar, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.aas = icmp eq i8 %i.aap, 0
  br i1 %i.aas, label %sqlite3ColumnIndex.exit582.i, label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.aat = zext i8 %i.aap to i64
  %i.aau = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aat
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !741
  %i.aaw = zext i8 %i.aaq to i64
  %i.aax = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !741
  %.not.i28.i577.i = icmp eq i8 %i.aav, %i.aay
  br i1 %.not.i28.i577.i, label %bb.fj, label %sqlite3StrICmp.exit30.i571.i

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.aaz = getelementptr inbounds nuw i8, ptr %.013.i26.i575.i, i64 1
  %i.aba = getelementptr inbounds nuw i8, ptr %.012.i27.i576.i, i64 1
  br label %bb.fg

sqlite3StrICmp.exit30.i571.i:                     ; preds = %bb.fi, %bb.fe
  %indvars.iv.next.i572.i = add nuw nsw i64 %indvars.iv.i570.i, 1 ; 2 uses
  %exitcond.not.i573.i = icmp eq i64 %indvars.iv.next.i572.i, %wide.trip.count.i569.i
  br i1 %exitcond.not.i573.i, label %sqlite3ColumnIndex.exit582.thread746.i, label %bb.fe

sqlite3ColumnIndex.exit582.i:                     ; preds = %bb.fh
  %i.abb = trunc nuw nsw i64 %indvars.iv.i570.i to i32
  br label %sqlite3ColumnIndex.exit582.thread.i

sqlite3ColumnIndex.exit582.thread.i:              ; preds = %bb.fb, %sqlite3ColumnIndex.exit582.i
  %.022.i574745.i = phi i32 [ %i.abb, %sqlite3ColumnIndex.exit582.i ], [ %i.zq, %bb.fb ] ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.3352.i, i64 52
  %i.abd = load i16, ptr %i.abc, align 4, !tbaa !1168
  %i.abe = sext i16 %i.abd to i32
  %i.abf = icmp eq i32 %.022.i574745.i, %i.abe
  %spec.store.select.i = select i1 %i.abf, i32 -1, i32 %.022.i574745.i
  br label %bb.ft

sqlite3ColumnIndex.exit582.thread746.i:           ; preds = %sqlite3StrICmp.exit30.i571.i, %bb.fm
  %.013.i.i583.i = phi ptr [ %i.abq, %bb.fm ], [ %i.gy, %sqlite3StrICmp.exit30.i571.i ] ; 2 uses
  %.012.i.i584.i = phi ptr [ %i.abr, %bb.fm ], [ @.str.781, %sqlite3StrICmp.exit30.i571.i ] ; 2 uses
  %i.abg = load i8, ptr %.013.i.i583.i, align 1, !tbaa !741 ; 3 uses
  %i.abh = load i8, ptr %.012.i.i584.i, align 1, !tbaa !741 ; 2 uses
  %i.abi = icmp eq i8 %i.abg, %i.abh
  br i1 %i.abi, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %sqlite3ColumnIndex.exit582.thread746.i
  %i.abj = icmp eq i8 %i.abg, 0
  br i1 %i.abj, label %.loopexit922.i, label %bb.fm

bb.fl:                                            ; preds = %sqlite3ColumnIndex.exit582.thread746.i
  %i.abk = zext i8 %i.abg to i64
  %i.abl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !741
  %i.abn = zext i8 %i.abh to i64
  %i.abo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !741
  %.not.i.i585.i = icmp eq i8 %i.abm, %i.abp
  br i1 %.not.i.i585.i, label %bb.fm, label %sqlite3StrICmp.exit.i586.i

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.abq = getelementptr inbounds nuw i8, ptr %.013.i.i583.i, i64 1
  %i.abr = getelementptr inbounds nuw i8, ptr %.012.i.i584.i, i64 1
  br label %sqlite3ColumnIndex.exit582.thread746.i

sqlite3StrICmp.exit.i586.i:                       ; preds = %bb.fl, %bb.fp
  %.013.i3.i.i = phi ptr [ %i.acc, %bb.fp ], [ %i.gy, %bb.fl ] ; 2 uses
  %.012.i4.i.i = phi ptr [ %i.acd, %bb.fp ], [ @.str.746, %bb.fl ] ; 2 uses
  %i.abs = load i8, ptr %.013.i3.i.i, align 1, !tbaa !741 ; 3 uses
  %i.abt = load i8, ptr %.012.i4.i.i, align 1, !tbaa !741 ; 2 uses
  %i.abu = icmp eq i8 %i.abs, %i.abt
  br i1 %i.abu, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %sqlite3StrICmp.exit.i586.i
  %i.abv = icmp eq i8 %i.abs, 0
  br i1 %i.abv, label %.loopexit922.i, label %bb.fp

bb.fo:                                            ; preds = %sqlite3StrICmp.exit.i586.i
  %i.abw = zext i8 %i.abs to i64
  %i.abx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !741
  %i.abz = zext i8 %i.abt to i64
  %i.aca = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.abz
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !741
  %.not.i5.i.i = icmp eq i8 %i.aby, %i.acb
  br i1 %.not.i5.i.i, label %bb.fp, label %sqlite3StrICmp.exit7.i.i

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.acc = getelementptr inbounds nuw i8, ptr %.013.i3.i.i, i64 1
  %i.acd = getelementptr inbounds nuw i8, ptr %.012.i4.i.i, i64 1
  br label %sqlite3StrICmp.exit.i586.i

sqlite3StrICmp.exit7.i.i:                         ; preds = %bb.fo, %bb.fs
  %.013.i8.i.i = phi ptr [ %i.aco, %bb.fs ], [ %i.gy, %bb.fo ] ; 2 uses
  %.012.i9.i.i = phi ptr [ %i.acp, %bb.fs ], [ @.str.782, %bb.fo ] ; 2 uses
  %i.ace = load i8, ptr %.013.i8.i.i, align 1, !tbaa !741 ; 3 uses
  %i.acf = load i8, ptr %.012.i9.i.i, align 1, !tbaa !741 ; 2 uses
  %i.acg = icmp eq i8 %i.ace, %i.acf
  br i1 %i.acg, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %sqlite3StrICmp.exit7.i.i
  %i.ach = icmp eq i8 %i.ace, 0
  br i1 %i.ach, label %.loopexit922.i, label %bb.fs

bb.fr:                                            ; preds = %sqlite3StrICmp.exit7.i.i
  %i.aci = zext i8 %i.ace to i64
  %i.acj = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aci
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !741
  %i.acl = zext i8 %i.acf to i64
  %i.acm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.acl
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !741
  %.not.i10.i.i = icmp eq i8 %i.ack, %i.acn
  br i1 %.not.i10.i.i, label %bb.fs, label %.thread750.i

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.aco = getelementptr inbounds nuw i8, ptr %.013.i8.i.i, i64 1
  %i.acp = getelementptr inbounds nuw i8, ptr %.012.i9.i.i, i64 1
  br label %sqlite3StrICmp.exit7.i.i

.loopexit922.i:                                   ; preds = %bb.fk, %bb.fn, %bb.fq
  %i.acq = getelementptr inbounds nuw i8, ptr %.3352.i, i64 48
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !1098
  %i.acs = and i32 %i.acr, 512
  %i.act = icmp eq i32 %i.acs, 0
  br i1 %i.act, label %bb.ft, label %.thread750.i

bb.ft:                                            ; preds = %.loopexit922.i, %sqlite3ColumnIndex.exit582.thread.i
  %.0.i399 = phi i32 [ %spec.store.select.i, %sqlite3ColumnIndex.exit582.thread.i ], [ -1, %.loopexit922.i ] ; 18 uses
  %i.acu = sext i16 %i.zk to i32
  %i.acv = icmp slt i32 %.0.i399, %i.acu
  br i1 %i.acv, label %bb.fu, label %.thread750.i

bb.fu:                                            ; preds = %bb.ft
  %i.acw = getelementptr inbounds nuw i8, ptr %.3352.i, i64 8
  %i.acx = getelementptr inbounds nuw i8, ptr %.3352.i, i64 54
  %i.acy = load i32, ptr %i.gx, align 4, !tbaa !2268 ; 3 uses
  %i.acz = icmp eq i32 %i.acy, 2
  br i1 %i.acz, label %bb.fv, label %bb.fz

bb.fv:                                            ; preds = %bb.fu
  %i.ada = load i8, ptr %i.hc, align 4, !tbaa !1288
  %i.adb = icmp ugt i8 %i.ada, 1
  br i1 %i.adb, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.adc = trunc nsw i32 %.0.i399 to i16
  store i16 %i.adc, ptr %i.ha, align 8, !tbaa !2206
  store ptr %.3352.i, ptr %i.hd, align 8, !tbaa !741
  br label %.thread894.i

bb.fx:                                            ; preds = %bb.fv
  %i.add = getelementptr inbounds nuw i8, ptr %.0409.i, i64 16
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !741
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 72
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !2381
  %i.adh = trunc nsw i32 %.0.i399 to i16          ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.3352.i, i64 48
  %i.adj = load i32, ptr %i.adi, align 8, !tbaa !1098
  %i.adk = and i32 %i.adj, 32
  %i.adl = icmp eq i32 %i.adk, 0
  %i.adm = icmp slt i32 %.0.i399, 0
  %or.cond.i.i = or i1 %i.adm, %i.adl
  br i1 %or.cond.i.i, label %sqlite3TableColumnToStorage.exit.i, label %.preheader.i588.i

.preheader.i588.i:                                ; preds = %bb.fx
  %.not23.i.i = icmp eq i32 %.0.i399, 0
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %iter.check1286

iter.check1286:                                   ; preds = %.preheader.i588.i
  %wide.trip.count.i590.i = zext nneg i32 %.0.i399 to i64 ; 6 uses
  %min.iters.check1272 = icmp ult i32 %.0.i399, 5
  br i1 %min.iters.check1272, label %vec.epilog.scalar.ph1287.preheader, label %vector.main.loop.iter.check1273

vector.main.loop.iter.check1273:                  ; preds = %iter.check1286
  %min.iters.check1274 = icmp ult i32 %.0.i399, 17
  br i1 %min.iters.check1274, label %vec.epilog.ph1290, label %vector.ph1275

vector.ph1275:                                    ; preds = %vector.main.loop.iter.check1273
  %i.adn = and i64 %wide.trip.count.i590.i, 15    ; 2 uses
  %i.ado = icmp eq i64 %i.adn, 0
  %i.adp = select i1 %i.ado, i64 16, i64 %i.adn   ; 2 uses
  %n.vec1276 = sub nsw i64 %wide.trip.count.i590.i, %i.adp ; 3 uses
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.ph1275, %vector.body1277
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1281, %vector.body1277 ] ; 17 uses
  %vec.phi1279 = phi <8 x i16> [ zeroinitializer, %vector.ph1275 ], [ %i.agi, %vector.body1277 ]
  %vec.phi1280 = phi <8 x i16> [ zeroinitializer, %vector.ph1275 ], [ %i.agj, %vector.body1277 ]
  %i.adq = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.adr = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.ads = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.adt = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.adu = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.adv = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.adw = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.adx = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.ady = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.adz = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.aea = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.aeb = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.aec = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.aed = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.aee = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.aef = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1278
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adq, i64 14
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adr, i64 30
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ads, i64 46
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adt, i64 62
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adu, i64 78
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adv, i64 94
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adw, i64 110
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adx, i64 126
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ady, i64 142
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adz, i64 158
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aea, i64 174
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeb, i64 190
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 206
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aed, i64 222
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aee, i64 238
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aef, i64 254
  %i.aew = load i16, ptr %i.aeg, align 2, !tbaa !1164
  %i.aex = load i16, ptr %i.aeh, align 2, !tbaa !1164
  %i.aey = load i16, ptr %i.aei, align 2, !tbaa !1164
  %i.aez = load i16, ptr %i.aej, align 2, !tbaa !1164
  %i.afa = load i16, ptr %i.aek, align 2, !tbaa !1164
  %i.afb = load i16, ptr %i.ael, align 2, !tbaa !1164
  %i.afc = load i16, ptr %i.aem, align 2, !tbaa !1164
  %i.afd = load i16, ptr %i.aen, align 2, !tbaa !1164
  %i.afe = insertelement <8 x i16> poison, i16 %i.aew, i64 0
  %i.aff = insertelement <8 x i16> %i.afe, i16 %i.aex, i64 1
  %i.afg = insertelement <8 x i16> %i.aff, i16 %i.aey, i64 2
  %i.afh = insertelement <8 x i16> %i.afg, i16 %i.aez, i64 3
  %i.afi = insertelement <8 x i16> %i.afh, i16 %i.afa, i64 4
  %i.afj = insertelement <8 x i16> %i.afi, i16 %i.afb, i64 5
  %i.afk = insertelement <8 x i16> %i.afj, i16 %i.afc, i64 6
  %i.afl = insertelement <8 x i16> %i.afk, i16 %i.afd, i64 7
  %i.afm = load i16, ptr %i.aeo, align 2, !tbaa !1164
  %i.afn = load i16, ptr %i.aep, align 2, !tbaa !1164
  %i.afo = load i16, ptr %i.aeq, align 2, !tbaa !1164
  %i.afp = load i16, ptr %i.aer, align 2, !tbaa !1164
  %i.afq = load i16, ptr %i.aes, align 2, !tbaa !1164
  %i.afr = load i16, ptr %i.aet, align 2, !tbaa !1164
  %i.afs = load i16, ptr %i.aeu, align 2, !tbaa !1164
  %i.aft = load i16, ptr %i.aev, align 2, !tbaa !1164
  %i.afu = insertelement <8 x i16> poison, i16 %i.afm, i64 0
  %i.afv = insertelement <8 x i16> %i.afu, i16 %i.afn, i64 1
  %i.afw = insertelement <8 x i16> %i.afv, i16 %i.afo, i64 2
  %i.afx = insertelement <8 x i16> %i.afw, i16 %i.afp, i64 3
  %i.afy = insertelement <8 x i16> %i.afx, i16 %i.afq, i64 4
  %i.afz = insertelement <8 x i16> %i.afy, i16 %i.afr, i64 5
  %i.aga = insertelement <8 x i16> %i.afz, i16 %i.afs, i64 6
  %i.agb = insertelement <8 x i16> %i.aga, i16 %i.aft, i64 7
  %i.agc = lshr <8 x i16> %i.afl, splat (i16 5)
  %i.agd = lshr <8 x i16> %i.agb, splat (i16 5)
  %i.age = and <8 x i16> %i.agc, splat (i16 1)
  %i.agf = and <8 x i16> %i.agd, splat (i16 1)
  %i.agg = xor <8 x i16> %i.age, splat (i16 1)
  %i.agh = xor <8 x i16> %i.agf, splat (i16 1)
  %i.agi = add <8 x i16> %i.agg, %vec.phi1279     ; 2 uses
  %i.agj = add <8 x i16> %i.agh, %vec.phi1280     ; 2 uses
  %index.next1281 = add nuw i64 %index1278, 16    ; 2 uses
  %i.agk = icmp eq i64 %index.next1281, %n.vec1276
  br i1 %i.agk, label %vec.epilog.iter.check1288, label %vector.body1277, !llvm.loop !5568

vec.epilog.iter.check1288:                        ; preds = %vector.body1277
  %bin.rdx1283 = add <8 x i16> %i.agj, %i.agi
  %i.agl = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1283) ; 2 uses
  %min.epilog.iters.check1289 = icmp samesign ult i64 %i.adp, 5
  br i1 %min.epilog.iters.check1289, label %vec.epilog.scalar.ph1287.preheader, label %vec.epilog.ph1290, !prof !1165

vec.epilog.ph1290:                                ; preds = %vector.main.loop.iter.check1273, %vec.epilog.iter.check1288
  %vec.epilog.resume.val1284 = phi i64 [ %n.vec1276, %vec.epilog.iter.check1288 ], [ 0, %vector.main.loop.iter.check1273 ]
  %bc.merge.rdx1285 = phi i16 [ %i.agl, %vec.epilog.iter.check1288 ], [ 0, %vector.main.loop.iter.check1273 ]
  %i.agm = and i64 %wide.trip.count.i590.i, 3     ; 2 uses
  %i.agn = icmp eq i64 %i.agm, 0
  %i.ago = select i1 %i.agn, i64 4, i64 %i.agm
  %n.vec1291 = sub nsw i64 %wide.trip.count.i590.i, %i.ago ; 2 uses
  %i.agp = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1285, i64 0
  br label %vec.epilog.vector.body1292

vec.epilog.vector.body1292:                       ; preds = %vec.epilog.vector.body1292, %vec.epilog.ph1290
  %index1293 = phi i64 [ %vec.epilog.resume.val1284, %vec.epilog.ph1290 ], [ %index.next1295, %vec.epilog.vector.body1292 ] ; 5 uses
  %vec.phi1294 = phi <4 x i16> [ %i.agp, %vec.epilog.ph1290 ], [ %i.ahj, %vec.epilog.vector.body1292 ]
  %i.agq = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1293
  %i.agr = getelementptr [16 x i8], ptr %i.zi, i64 %index1293
  %i.ags = getelementptr [16 x i8], ptr %i.zi, i64 %index1293
  %i.agt = getelementptr [16 x i8], ptr %i.zi, i64 %index1293
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agq, i64 14
  %i.agv = getelementptr i8, ptr %i.agr, i64 30
  %i.agw = getelementptr i8, ptr %i.ags, i64 46
  %i.agx = getelementptr i8, ptr %i.agt, i64 62
  %i.agy = load i16, ptr %i.agu, align 2, !tbaa !1164
  %i.agz = load i16, ptr %i.agv, align 2, !tbaa !1164
  %i.aha = load i16, ptr %i.agw, align 2, !tbaa !1164
  %i.ahb = load i16, ptr %i.agx, align 2, !tbaa !1164
  %i.ahc = insertelement <4 x i16> poison, i16 %i.agy, i64 0
  %i.ahd = insertelement <4 x i16> %i.ahc, i16 %i.agz, i64 1
  %i.ahe = insertelement <4 x i16> %i.ahd, i16 %i.aha, i64 2
  %i.ahf = insertelement <4 x i16> %i.ahe, i16 %i.ahb, i64 3
  %i.ahg = lshr <4 x i16> %i.ahf, splat (i16 5)
  %i.ahh = and <4 x i16> %i.ahg, splat (i16 1)
  %i.ahi = xor <4 x i16> %i.ahh, splat (i16 1)
  %i.ahj = add <4 x i16> %i.ahi, %vec.phi1294     ; 2 uses
  %index.next1295 = add nuw i64 %index1293, 4     ; 2 uses
  %i.ahk = icmp eq i64 %index.next1295, %n.vec1291
  br i1 %i.ahk, label %vec.epilog.middle.block1296, label %vec.epilog.vector.body1292, !llvm.loop !5569

vec.epilog.middle.block1296:                      ; preds = %vec.epilog.vector.body1292
  %i.ahl = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ahj)
  br label %vec.epilog.scalar.ph1287.preheader

vec.epilog.scalar.ph1287.preheader:               ; preds = %iter.check1286, %vec.epilog.iter.check1288, %vec.epilog.middle.block1296
  %indvars.iv.i591.i.ph = phi i64 [ 0, %iter.check1286 ], [ %n.vec1276, %vec.epilog.iter.check1288 ], [ %n.vec1291, %vec.epilog.middle.block1296 ]
  %.021.i.i.ph = phi i16 [ 0, %iter.check1286 ], [ %i.agl, %vec.epilog.iter.check1288 ], [ %i.ahl, %vec.epilog.middle.block1296 ]
  br label %vec.epilog.scalar.ph1287

vec.epilog.scalar.ph1287:                         ; preds = %vec.epilog.scalar.ph1287.preheader, %vec.epilog.scalar.ph1287
  %indvars.iv.i591.i = phi i64 [ %indvars.iv.next.i592.i, %vec.epilog.scalar.ph1287 ], [ %indvars.iv.i591.i.ph, %vec.epilog.scalar.ph1287.preheader ] ; 2 uses
  %.021.i.i = phi i16 [ %spec.select.i.i, %vec.epilog.scalar.ph1287 ], [ %.021.i.i.ph, %vec.epilog.scalar.ph1287.preheader ]
  %i.ahm = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %indvars.iv.i591.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 14
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !1164
  %i.ahp = lshr i16 %i.aho, 5
  %i.ahq = and i16 %i.ahp, 1
  %i.ahr = xor i16 %i.ahq, 1
  %spec.select.i.i = add i16 %i.ahr, %.021.i.i    ; 2 uses
  %indvars.iv.next.i592.i = add nuw nsw i64 %indvars.iv.i591.i, 1 ; 2 uses
  %exitcond.not.i593.i = icmp eq i64 %indvars.iv.next.i592.i, %wide.trip.count.i590.i
  br i1 %exitcond.not.i593.i, label %._crit_edge.i.i, label %vec.epilog.scalar.ph1287, !llvm.loop !5570

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph1287, %.preheader.i588.i
  %.pre-phi.i = phi i64 [ 0, %.preheader.i588.i ], [ %wide.trip.count.i590.i, %vec.epilog.scalar.ph1287 ]
  %.0.lcssa.i.i = phi i16 [ 0, %.preheader.i588.i ], [ %spec.select.i.i, %vec.epilog.scalar.ph1287 ] ; 2 uses
  %i.ahs = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %.pre-phi.i
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 14
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !1164
  %i.ahv = and i16 %i.ahu, 32
  %.not.i594.i = icmp eq i16 %i.ahv, 0
  br i1 %.not.i594.i, label %sqlite3TableColumnToStorage.exit.i, label %bb.fy

bb.fy:                                            ; preds = %._crit_edge.i.i
  %i.ahw = getelementptr inbounds nuw i8, ptr %.3352.i, i64 56
  %i.ahx = load i16, ptr %i.ahw, align 8, !tbaa !1166
  %i.ahy = sub i16 %i.adh, %.0.lcssa.i.i
  %i.ahz = add i16 %i.ahy, %i.ahx
  br label %sqlite3TableColumnToStorage.exit.i

sqlite3TableColumnToStorage.exit.i:               ; preds = %bb.fy, %._crit_edge.i.i, %bb.fx
  %.018.i.i = phi i16 [ %i.adh, %bb.fx ], [ %i.ahz, %bb.fy ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  %i.aia = sext i16 %.018.i.i to i32
  %i.aib = add nsw i32 %i.adg, %i.aia
  store i32 %i.aib, ptr %i.gx, align 4, !tbaa !2268
  br label %.thread894.i

bb.fz:                                            ; preds = %bb.fu
  store ptr %.3352.i, ptr %i.hd, align 8, !tbaa !741
  %i.aic = load i16, ptr %i.hi, align 1
  %i.aid = and i16 %i.aic, 8
  %.not439.i = icmp eq i16 %i.aid, 0
  br i1 %.not439.i, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aie = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 -88, ptr %i.aie, align 2, !tbaa !2094
  %i.aif = trunc nsw i32 %.0.i399 to i16          ; 3 uses
  store i16 %i.aif, ptr %i.ha, align 8, !tbaa !2206
  %i.aig = getelementptr inbounds nuw i8, ptr %.0409.i, i64 16
  %i.aih = load i32, ptr %i.aig, align 8, !tbaa !741
  %i.aii = load i16, ptr %i.acx, align 2, !tbaa !1161
  %i.aij = sext i16 %i.aii to i32
  %i.aik = add nsw i32 %i.aij, 1
  %i.ail = mul nsw i32 %i.aik, %i.acy
  %i.aim = getelementptr inbounds nuw i8, ptr %.3352.i, i64 48
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !1098
  %i.aio = and i32 %i.ain, 32
  %i.aip = icmp eq i32 %i.aio, 0
  %i.aiq = icmp slt i32 %.0.i399, 0
  %or.cond.i595.i = or i1 %i.aiq, %i.aip
  br i1 %or.cond.i595.i, label %sqlite3TableColumnToStorage.exit609.i, label %.preheader.i596.i

.preheader.i596.i:                                ; preds = %bb.ga
  %.not23.i597.i = icmp eq i32 %.0.i399, 0
  %i.air = load ptr, ptr %i.acw, align 8, !tbaa !1162 ; 22 uses
  br i1 %.not23.i597.i, label %._crit_edge.i605.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i596.i
  %wide.trip.count.i599.i = zext nneg i32 %.0.i399 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.0.i399, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1265 = icmp ult i32 %.0.i399, 17
  br i1 %min.iters.check1265, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ais = and i64 %wide.trip.count.i599.i, 15    ; 2 uses
  %i.ait = icmp eq i64 %i.ais, 0
  %i.aiu = select i1 %i.ait, i64 16, i64 %i.ais   ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i599.i, %i.aiu ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.aln, %vector.body ]
  %vec.phi1266 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.alo, %vector.body ]
  %i.aiv = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aiw = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aix = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aiy = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aiz = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aja = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajb = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajc = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajd = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aje = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajf = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajg = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajh = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aji = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajj = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajk = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aiv, i64 14
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aiw, i64 30
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aix, i64 46
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aiy, i64 62
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aiz, i64 78
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aja, i64 94
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajb, i64 110
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajc, i64 126
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajd, i64 142
  %i.aju = getelementptr inbounds nuw i8, ptr %i.aje, i64 158
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajf, i64 174
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajg, i64 190
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajh, i64 206
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.aji, i64 222
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajj, i64 238
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajk, i64 254
  %i.akb = load i16, ptr %i.ajl, align 2, !tbaa !1164
  %i.akc = load i16, ptr %i.ajm, align 2, !tbaa !1164
  %i.akd = load i16, ptr %i.ajn, align 2, !tbaa !1164
  %i.ake = load i16, ptr %i.ajo, align 2, !tbaa !1164
  %i.akf = load i16, ptr %i.ajp, align 2, !tbaa !1164
  %i.akg = load i16, ptr %i.ajq, align 2, !tbaa !1164
  %i.akh = load i16, ptr %i.ajr, align 2, !tbaa !1164
  %i.aki = load i16, ptr %i.ajs, align 2, !tbaa !1164
  %i.akj = insertelement <8 x i16> poison, i16 %i.akb, i64 0
  %i.akk = insertelement <8 x i16> %i.akj, i16 %i.akc, i64 1
  %i.akl = insertelement <8 x i16> %i.akk, i16 %i.akd, i64 2
  %i.akm = insertelement <8 x i16> %i.akl, i16 %i.ake, i64 3
  %i.akn = insertelement <8 x i16> %i.akm, i16 %i.akf, i64 4
  %i.ako = insertelement <8 x i16> %i.akn, i16 %i.akg, i64 5
  %i.akp = insertelement <8 x i16> %i.ako, i16 %i.akh, i64 6
  %i.akq = insertelement <8 x i16> %i.akp, i16 %i.aki, i64 7
  %i.akr = load i16, ptr %i.ajt, align 2, !tbaa !1164
  %i.aks = load i16, ptr %i.aju, align 2, !tbaa !1164
  %i.akt = load i16, ptr %i.ajv, align 2, !tbaa !1164
  %i.aku = load i16, ptr %i.ajw, align 2, !tbaa !1164
  %i.akv = load i16, ptr %i.ajx, align 2, !tbaa !1164
  %i.akw = load i16, ptr %i.ajy, align 2, !tbaa !1164
  %i.akx = load i16, ptr %i.ajz, align 2, !tbaa !1164
  %i.aky = load i16, ptr %i.aka, align 2, !tbaa !1164
  %i.akz = insertelement <8 x i16> poison, i16 %i.akr, i64 0
  %i.ala = insertelement <8 x i16> %i.akz, i16 %i.aks, i64 1
  %i.alb = insertelement <8 x i16> %i.ala, i16 %i.akt, i64 2
  %i.alc = insertelement <8 x i16> %i.alb, i16 %i.aku, i64 3
  %i.ald = insertelement <8 x i16> %i.alc, i16 %i.akv, i64 4
  %i.ale = insertelement <8 x i16> %i.ald, i16 %i.akw, i64 5
  %i.alf = insertelement <8 x i16> %i.ale, i16 %i.akx, i64 6
  %i.alg = insertelement <8 x i16> %i.alf, i16 %i.aky, i64 7
  %i.alh = lshr <8 x i16> %i.akq, splat (i16 5)
  %i.ali = lshr <8 x i16> %i.alg, splat (i16 5)
  %i.alj = and <8 x i16> %i.alh, splat (i16 1)
  %i.alk = and <8 x i16> %i.ali, splat (i16 1)
  %i.all = xor <8 x i16> %i.alj, splat (i16 1)
  %i.alm = xor <8 x i16> %i.alk, splat (i16 1)
  %i.aln = add <8 x i16> %i.all, %vec.phi         ; 2 uses
  %i.alo = add <8 x i16> %i.alm, %vec.phi1266     ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.alp = icmp eq i64 %index.next, %n.vec
  br i1 %i.alp, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5571

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.alo, %i.aln
  %i.alq = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.aiu, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.alq, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.alr = and i64 %wide.trip.count.i599.i, 3     ; 2 uses
  %i.als = icmp eq i64 %i.alr, 0
  %i.alt = select i1 %i.als, i64 4, i64 %i.alr
  %n.vec1267 = sub nsw i64 %wide.trip.count.i599.i, %i.alt ; 2 uses
  %i.alu = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1268 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1270, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi1269 = phi <4 x i16> [ %i.alu, %vec.epilog.ph ], [ %i.amo, %vec.epilog.vector.body ]
  %i.alv = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index1268
  %i.alw = getelementptr [16 x i8], ptr %i.air, i64 %index1268
  %i.alx = getelementptr [16 x i8], ptr %i.air, i64 %index1268
  %i.aly = getelementptr [16 x i8], ptr %i.air, i64 %index1268
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alv, i64 14
  %i.ama = getelementptr i8, ptr %i.alw, i64 30
  %i.amb = getelementptr i8, ptr %i.alx, i64 46
  %i.amc = getelementptr i8, ptr %i.aly, i64 62
  %i.amd = load i16, ptr %i.alz, align 2, !tbaa !1164
  %i.ame = load i16, ptr %i.ama, align 2, !tbaa !1164
  %i.amf = load i16, ptr %i.amb, align 2, !tbaa !1164
  %i.amg = load i16, ptr %i.amc, align 2, !tbaa !1164
  %i.amh = insertelement <4 x i16> poison, i16 %i.amd, i64 0
  %i.ami = insertelement <4 x i16> %i.amh, i16 %i.ame, i64 1
  %i.amj = insertelement <4 x i16> %i.ami, i16 %i.amf, i64 2
  %i.amk = insertelement <4 x i16> %i.amj, i16 %i.amg, i64 3
  %i.aml = lshr <4 x i16> %i.amk, splat (i16 5)
  %i.amm = and <4 x i16> %i.aml, splat (i16 1)
  %i.amn = xor <4 x i16> %i.amm, splat (i16 1)
  %i.amo = add <4 x i16> %i.amn, %vec.phi1269     ; 2 uses
  %index.next1270 = add nuw i64 %index1268, 4     ; 2 uses
  %i.amp = icmp eq i64 %index.next1270, %n.vec1267
  br i1 %i.amp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5572

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.amq = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.amo)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i600.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1267, %vec.epilog.middle.block ]
  %.021.i601.i.ph = phi i16 [ 0, %iter.check ], [ %i.alq, %vec.epilog.iter.check ], [ %i.amq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i600.i = phi i64 [ %indvars.iv.next.i603.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i600.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.021.i601.i = phi i16 [ %spec.select.i602.i, %vec.epilog.scalar.ph ], [ %.021.i601.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.amr = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %indvars.iv.i600.i
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 14
  %i.amt = load i16, ptr %i.ams, align 2, !tbaa !1164
  %i.amu = lshr i16 %i.amt, 5
  %i.amv = and i16 %i.amu, 1
  %i.amw = xor i16 %i.amv, 1
  %spec.select.i602.i = add i16 %i.amw, %.021.i601.i ; 2 uses
  %indvars.iv.next.i603.i = add nuw nsw i64 %indvars.iv.i600.i, 1 ; 2 uses
  %exitcond.not.i604.i = icmp eq i64 %indvars.iv.next.i603.i, %wide.trip.count.i599.i
  br i1 %exitcond.not.i604.i, label %._crit_edge.i605.i, label %vec.epilog.scalar.ph, !llvm.loop !5573

._crit_edge.i605.i:                               ; preds = %vec.epilog.scalar.ph, %.preheader.i596.i
  %.pre-phi1150.i = phi i64 [ 0, %.preheader.i596.i ], [ %wide.trip.count.i599.i, %vec.epilog.scalar.ph ]
  %.0.lcssa.i606.i = phi i16 [ 0, %.preheader.i596.i ], [ %spec.select.i602.i, %vec.epilog.scalar.ph ] ; 2 uses
  %i.amx = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %.pre-phi1150.i
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 14
  %i.amz = load i16, ptr %i.amy, align 2, !tbaa !1164
  %i.ana = and i16 %i.amz, 32
  %.not.i607.i = icmp eq i16 %i.ana, 0
  br i1 %.not.i607.i, label %sqlite3TableColumnToStorage.exit609.i, label %bb.gb

bb.gb:                                            ; preds = %._crit_edge.i605.i
  %i.anb = getelementptr inbounds nuw i8, ptr %.3352.i, i64 56
  %i.anc = load i16, ptr %i.anb, align 8, !tbaa !1166
  %i.and = sub i16 %i.aif, %.0.lcssa.i606.i
  %i.ane = add i16 %i.and, %i.anc
  br label %sqlite3TableColumnToStorage.exit609.i

sqlite3TableColumnToStorage.exit609.i:            ; preds = %bb.gb, %._crit_edge.i605.i, %bb.ga
  %.018.i608.i = phi i16 [ %i.aif, %bb.ga ], [ %i.ane, %bb.gb ], [ %.0.lcssa.i606.i, %._crit_edge.i605.i ]
  %i.anf = sext i16 %.018.i608.i to i32
  %i.ang = add i32 %i.aih, 1
  %i.anh = add i32 %i.ang, %i.ail
  %i.ani = add i32 %i.anh, %i.anf
  store i32 %i.ani, ptr %i.gx, align 4, !tbaa !2268
  br label %.thread894.i

bb.gc:                                            ; preds = %bb.fz
  %i.anj = trunc nsw i32 %.0.i399 to i16
  store i16 %i.anj, ptr %i.ha, align 8, !tbaa !2206
  %i.ank = icmp slt i32 %.0.i399, 0
  br i1 %i.ank, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  store i8 68, ptr %i.hk, align 1, !tbaa !2207
  br label %.thread894.i

bb.ge:                                            ; preds = %bb.gc
  %i.anl = icmp eq i32 %i.acy, 0
  %i.anm = icmp samesign ugt i32 %.0.i399, 31
  %i.ann = shl nuw i32 1, %.0.i399
  %i.ano = select i1 %i.anm, i32 -1, i32 %i.ann   ; 2 uses
  br i1 %i.anl, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.anp = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.anq = load i32, ptr %i.anp, align 8, !tbaa !2426
  %i.anr = or i32 %i.anq, %i.ano
  store i32 %i.anr, ptr %i.anp, align 8, !tbaa !2426
  br label %.thread894.i

bb.gg:                                            ; preds = %bb.ge
  %i.ans = getelementptr inbounds nuw i8, ptr %i.c, i64 244 ; 2 uses
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !2427
  %i.anu = or i32 %i.ant, %i.ano
  store i32 %i.anu, ptr %i.ans, align 4, !tbaa !2427
end_hunk_11
begin_hunk_12_@updateRangeAffinityStr:bb.a
  br label %sqlite3ExprNeedsNoAffinityChange.exit.thread

sqlite3ExprNeedsNoAffinityChange.exit.thread:     ; preds = %.loopexit.i, %bb.o, %sqlite3CompareAffinity.exit.thread, %sqlite3ExprNeedsNoAffinityChange.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !5955

._crit_edge:                                      ; preds = %sqlite3ExprNeedsNoAffinityChange.exit.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeApplyAffinity(ptr nofree captures(none) %.16.val, i32 noundef %0, i32 noundef range(i32 -1, 131071) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ]   ; 4 uses
  %.0184 = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.0193 = phi i32 [ %i.f, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.c = load i8, ptr %.05, align 1, !tbaa !741
  %i.d = icmp slt i8 %i.c, 66
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.e = add nsw i32 %.0184, -1
  %i.f = add nsw i32 %.0193, 1
  %i.g = getelementptr inbounds nuw i8, ptr %.05, i64 1
  %i.h = icmp sgt i32 %.0184, 1
  br i1 %i.h, label %.lr.ph, label %.critedge2, !llvm.loop !347

.critedge:                                        ; preds = %.lr.ph
  %i.i = icmp samesign ugt i32 %.0184, 1
  br i1 %i.i, label %.lr.ph13, label %.critedge2.thread

.lr.ph13:                                         ; preds = %.critedge, %bb.c
  %.112 = phi i32 [ %i.o, %bb.c ], [ %.0184, %.critedge ] ; 4 uses
  %i.j = zext nneg i32 %.112 to i64
  %i.k = getelementptr i8, ptr %.05, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !741
  %i.n = icmp slt i8 %i.m, 66
  br i1 %i.n, label %bb.c, label %.critedge2.thread

bb.c:                                             ; preds = %.lr.ph13
  %i.o = add nsw i32 %.112, -1
  %i.p = icmp sgt i32 %.112, 2
  br i1 %i.p, label %.lr.ph13, label %.critedge2.thread, !llvm.loop !348

.critedge2.thread:                                ; preds = %bb.c, %.lr.ph13, %.critedge
  %.12 = phi i32 [ 1, %.critedge ], [ 1, %bb.c ], [ %.112, %.lr.ph13 ] ; 2 uses
  %i.q = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.16.val, i32 noundef 97, i32 noundef %.0193, i32 noundef %.12, i32 noundef 0, ptr noundef nonnull %.05, i32 noundef %.12) ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.b, %.critedge2.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeDeferredSeek(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1117   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1233 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = or i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !711  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1206
  %.not.i = icmp sgt i32 %i.j, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 142, i32 noundef %3, i32 noundef 0, i32 noundef %2), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.c:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.h, 1
  store i32 %i.l, ptr %i.g, align 8, !tbaa !711
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !710
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.o ; 7 uses
  store i8 -114, ptr %i.p, align 8, !tbaa !938
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 0, ptr %i.q, align 2, !tbaa !957
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %3, ptr %i.r, align 4, !tbaa !954
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !955
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %2, ptr %i.t, align 4, !tbaa !956
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !741
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.v, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.b, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.x = load i16, ptr %i.w, align 4, !tbaa !789
  %i.y = and i16 %i.x, 4128
  %.not = icmp eq i16 %i.y, 0
  br i1 %.not, label %sqlite3VdbeChangeP4.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2248 ; 2 uses
  %.not30 = icmp eq ptr %i.aa, null
  %. = select i1 %.not30, ptr %i.a, ptr %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %., i64 112
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2231
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %sqlite3VdbeChangeP4.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1295 ; 4 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !1001 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 54 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !1161
  %i.aj = sext i16 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 2
  %i.al = add nsw i64 %i.ak, 4                    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.ag, i64 noundef %i.al), !inline_history !37
  br label %sqlite3DbMallocRaw.exit.i

bb.g:                                             ; preds = %bb.e
  %i.an = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.al), !inline_history !37
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.am, %bb.f ], [ %i.an, %bb.g ] ; 17 uses
  %.not.i32 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i32, label %sqlite3VdbeChangeP4.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i, i8 0, i64 %i.al, i1 false)
  %i.ao = load i16, ptr %i.ah, align 2, !tbaa !1161
  %i.ap = sext i16 %i.ao to i32
  store i32 %i.ap, ptr %.0.i.i, align 4, !tbaa !576
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !1158 ; 2 uses
  %i.as = icmp ugt i16 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.at = zext i16 %i.ar to i64
  %i.au = add nuw nsw i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1159
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %wide.trip.count = and i64 %i.au, 4294967295
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !789 ; 10 uses
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !1098
  %i.bd = and i32 %i.bc, 32
  %i.be = icmp eq i32 %i.bd, 0
  %wide.trip.count.i = sext i16 %i.bb to i64      ; 6 uses
  %i.bf = icmp slt i16 %i.bb, 0
  %or.cond.i = or i1 %i.bf, %i.be
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.not23.i = icmp eq i16 %i.bb, 0
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !1162 ; 22 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp ult i16 %i.bb, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i16 %i.bb, 17
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = and i64 %wide.trip.count.i, 15
  %i.bi = and i16 %i.bb, 15
  %i.bj = icmp eq i16 %i.bi, 0
  %i.bk = select i1 %i.bj, i64 16, i64 %i.bh      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.bk  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi48 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 78
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 94
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 110
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 126
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 142
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 158
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 174
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 190
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 206
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 222
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 238
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 254
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !1164
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !1164
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !1164
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !1164
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !1164
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !1164
  %i.cx = load i16, ptr %i.ch, align 2, !tbaa !1164
  %i.cy = load i16, ptr %i.ci, align 2, !tbaa !1164
  %i.cz = insertelement <8 x i16> poison, i16 %i.cr, i64 0
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 1
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 2
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 3
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 4
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 5
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 6
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 7
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !1164
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !1164
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !1164
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !1164
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !1164
  %i.dm = load i16, ptr %i.co, align 2, !tbaa !1164
  %i.dn = load i16, ptr %i.cp, align 2, !tbaa !1164
  %i.do = load i16, ptr %i.cq, align 2, !tbaa !1164
  %i.dp = insertelement <8 x i16> poison, i16 %i.dh, i64 0
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 1
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 2
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 3
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 4
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 5
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.dn, i64 6
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 7
  %i.dx = lshr <8 x i16> %i.dg, splat (i16 5)
  %i.dy = lshr <8 x i16> %i.dw, splat (i16 5)
  %i.dz = and <8 x i16> %i.dx, splat (i16 1)
  %i.ea = and <8 x i16> %i.dy, splat (i16 1)
  %i.eb = xor <8 x i16> %i.dz, splat (i16 1)
  %i.ec = xor <8 x i16> %i.ea, splat (i16 1)
  %i.ed = add <8 x i16> %i.eb, %vec.phi           ; 2 uses
  %i.ee = add <8 x i16> %i.ec, %vec.phi48         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5956

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ee, %i.ed
  %i.eg = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bk, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.eg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.eh = and i64 %wide.trip.count.i, 3
  %i.ei = and i16 %i.bb, 3
  %i.ej = icmp eq i16 %i.ei, 0
  %i.ek = select i1 %i.ej, i64 4, i64 %i.eh
  %n.vec49 = sub nsw i64 %wide.trip.count.i, %i.ek ; 2 uses
  %i.el = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi51 = phi <4 x i16> [ %i.el, %vec.epilog.ph ], [ %i.ff, %vec.epilog.vector.body ]
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index50
  %i.en = getelementptr [16 x i8], ptr %i.bg, i64 %index50
  %i.eo = getelementptr [16 x i8], ptr %i.bg, i64 %index50
  %i.ep = getelementptr [16 x i8], ptr %i.bg, i64 %index50
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 14
  %i.er = getelementptr i8, ptr %i.en, i64 30
  %i.es = getelementptr i8, ptr %i.eo, i64 46
  %i.et = getelementptr i8, ptr %i.ep, i64 62
  %i.eu = load i16, ptr %i.eq, align 2, !tbaa !1164
  %i.ev = load i16, ptr %i.er, align 2, !tbaa !1164
  %i.ew = load i16, ptr %i.es, align 2, !tbaa !1164
  %i.ex = load i16, ptr %i.et, align 2, !tbaa !1164
  %i.ey = insertelement <4 x i16> poison, i16 %i.eu, i64 0
  %i.ez = insertelement <4 x i16> %i.ey, i16 %i.ev, i64 1
  %i.fa = insertelement <4 x i16> %i.ez, i16 %i.ew, i64 2
  %i.fb = insertelement <4 x i16> %i.fa, i16 %i.ex, i64 3
  %i.fc = lshr <4 x i16> %i.fb, splat (i16 5)
  %i.fd = and <4 x i16> %i.fc, splat (i16 1)
  %i.fe = xor <4 x i16> %i.fd, splat (i16 1)
  %i.ff = add <4 x i16> %i.fe, %vec.phi51         ; 2 uses
  %index.next52 = add nuw i64 %index50, 4         ; 2 uses
  %i.fg = icmp eq i64 %index.next52, %n.vec49
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5957

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fh = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ff)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec49, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.fh, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %vec.epilog.scalar.ph ], [ %.021.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 14
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !1164
  %i.fl = lshr i16 %i.fk, 5
  %i.fm = and i16 %i.fl, 1
  %i.fn = xor i16 %i.fm, 1
  %spec.select.i = add i16 %i.fn, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !5958

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %.preheader.i
  %.pre-phi = phi i64 [ 0, %.preheader.i ], [ %wide.trip.count.i, %vec.epilog.scalar.ph ]
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %vec.epilog.scalar.ph ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.pre-phi
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 14
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !1164
  %i.fr = and i16 %i.fq, 32
  %.not.i33 = icmp eq i16 %i.fr, 0
  br i1 %.not.i33, label %sqlite3TableColumnToStorage.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.fs = load i16, ptr %i.az, align 8, !tbaa !1166
  %i.ft = sub i16 %i.bb, %.0.lcssa.i
  %i.fu = add i16 %i.ft, %i.fs
  br label %sqlite3TableColumnToStorage.exit.thread

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.i
  %i.fv = icmp sgt i16 %i.bb, -1
  br i1 %i.fv, label %sqlite3TableColumnToStorage.exit.thread, label %sqlite3TableColumnToStorage.exit._crit_edge

sqlite3TableColumnToStorage.exit._crit_edge:      ; preds = %sqlite3TableColumnToStorage.exit
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.k

sqlite3TableColumnToStorage.exit.thread:          ; preds = %bb.j, %._crit_edge.i, %sqlite3TableColumnToStorage.exit
  %.018.i39 = phi i16 [ %i.bb, %sqlite3TableColumnToStorage.exit ], [ %.0.lcssa.i, %._crit_edge.i ], [ %i.fu, %bb.j ]
  %i.fw = sext i16 %.018.i39 to i64
  %i.fx = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.fy = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %i.ga = trunc nuw nsw i64 %i.fx to i32
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !576
  br label %bb.k

bb.k:                                             ; preds = %sqlite3TableColumnToStorage.exit._crit_edge, %sqlite3TableColumnToStorage.exit.thread
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %sqlite3TableColumnToStorage.exit._crit_edge ], [ %i.fx, %sqlite3TableColumnToStorage.exit.thread ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !5959

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !687 ; 8 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 103
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !928
  %.not.i34 = icmp eq i8 %i.gd, 0
  br i1 %.not.i34, label %bb.x, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 512
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !648
  %i.gg = icmp ult ptr %.0.i.i, %i.gf
  br i1 %i.gg, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 496
end_hunk_12
begin_hunk_13_@sqlite3GenerateRowDelete:bb.a
sqlite3FkRequired.exit:                           ; preds = %sqlite3VdbeAddOp4Int.exit, %bb.e, %bb.o
  %.not174 = icmp eq ptr %2, null
  br i1 %.not174, label %bb.ao, label %bb.p

bb.p:                                             ; preds = %sqlite3FkRequired.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 63
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !1192
  %i.bv = icmp eq i8 %.pre, 2
  %i.bw = zext nneg i8 %8 to i32                  ; 2 uses
  br i1 %i.bv, label %sqlite3TriggerColmask.exit, label %.lr.ph188

.preheader:                                       ; preds = %bb.o, %sqlite3FkReferences.exit.i
  %i.bx = icmp ne ptr %2, null                    ; 2 uses
  %i.by = zext nneg i8 %8 to i32                  ; 2 uses
  %.not24.i184 = icmp eq ptr %2, null
  br i1 %.not24.i184, label %sqlite3TriggerColmask.exit, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.p, %.preheader
  %i.bz = phi i1 [ %i.bx, %.preheader ], [ true, %bb.p ]
  %i.ca = phi i32 [ %i.by, %.preheader ], [ %i.bw, %bb.p ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph188, %bb.v
  %.0.i106186 = phi ptr [ %2, %.lr.ph188 ], [ %i.cx, %bb.v ] ; 6 uses
  %.021.i185 = phi i32 [ 0, %.lr.ph188 ], [ %.2.i, %bb.v ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i106186, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !2389
  %i.ce = icmp eq i8 %i.cd, -127
  br i1 %i.ce, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i106186, i64 17
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !2390
  %i.ch = and i8 %i.cg, 3
  %.not25.i = icmp eq i8 %i.ch, 0
  br i1 %.not25.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i106186, i64 18
  %i.cj = load i8, ptr %i.ci, align 2, !tbaa !673
  %.not27.i = icmp eq i8 %i.cj, 0
  br i1 %.not27.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !2248 ; 2 uses
  %.not.i137 = icmp eq ptr %i.ck, null
  %..i = select i1 %.not.i137, ptr %0, ptr %i.ck
  %i.cl = getelementptr inbounds nuw i8, ptr %..i, i64 168
  %.0.i138181 = load ptr, ptr %i.cl, align 8, !tbaa !2608 ; 2 uses
  %.not19.i139182 = icmp eq ptr %.0.i138181, null
  br i1 %.not19.i139182, label %getRowTrigger.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %.critedge2.i
  %.0.i138183 = phi ptr [ %.0.i138, %.critedge2.i ], [ %.0.i138181, %bb.t ] ; 4 uses
  %i.cm = load ptr, ptr %.0.i138183, align 8, !tbaa !2609
  %.not20.i = icmp eq ptr %i.cm, %.0.i106186
  br i1 %.not20.i, label %bb.u, label %.critedge2.i

bb.u:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i138183, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !2610
  %.not21.i140 = icmp eq i32 %i.co, %i.ca
  br i1 %.not21.i140, label %getRowTrigger.exit.thread, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.u, %.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i138183, i64 8
  %.0.i138 = load ptr, ptr %i.cp, align 8, !tbaa !2608 ; 2 uses
  %.not19.i139 = icmp eq ptr %.0.i138, null
  br i1 %.not19.i139, label %getRowTrigger.exit, label %.lr.ph, !llvm.loop !361

getRowTrigger.exit:                               ; preds = %.critedge2.i, %bb.t
  %i.cq = tail call fastcc ptr @codeRowTrigger(ptr noundef nonnull %0, ptr noundef nonnull %.0.i106186, ptr noundef nonnull %1, i32 noundef %i.ca), !inline_history !5998 ; 2 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !1001
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 84
  store i32 -1, ptr %i.cs, align 4, !tbaa !803
  %.not28.i = icmp eq ptr %i.cq, null
  br i1 %.not28.i, label %bb.v, label %getRowTrigger.exit.thread

getRowTrigger.exit.thread:                        ; preds = %bb.u, %getRowTrigger.exit
  %.1.i169 = phi ptr [ %i.cq, %getRowTrigger.exit ], [ %.0.i138183, %bb.u ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.1.i169, i64 28
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !576
  %i.cv = or i32 %i.cu, %.021.i185
  br label %bb.v

bb.v:                                             ; preds = %getRowTrigger.exit.thread, %getRowTrigger.exit, %bb.s, %bb.r, %bb.q
  %.2.i = phi i32 [ %.021.i185, %bb.q ], [ -1, %bb.s ], [ %.021.i185, %getRowTrigger.exit ], [ %.021.i185, %bb.r ], [ %i.cv, %getRowTrigger.exit.thread ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i106186, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1988 ; 2 uses
  %.not24.i = icmp eq ptr %i.cx, null
  br i1 %.not24.i, label %sqlite3TriggerColmask.exit, label %bb.q, !llvm.loop !362

sqlite3TriggerColmask.exit:                       ; preds = %bb.v, %.preheader, %bb.p
  %i.cy = phi i32 [ %i.bw, %bb.p ], [ %i.by, %.preheader ], [ %i.ca, %bb.v ]
  %i.cz = phi i1 [ true, %bb.p ], [ %i.bx, %.preheader ], [ %i.bz, %bb.v ]
  %.022.i = phi i32 [ -1, %bb.p ], [ 0, %.preheader ], [ %.2.i, %bb.v ]
  %i.da = tail call fastcc i32 @sqlite3FkOldmask(ptr noundef nonnull %0, ptr noundef %1)
  %i.db = or i32 %i.da, %.022.i                   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !1213 ; 2 uses
  %i.de = add i32 %i.dd, 1                        ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !1161
  %i.dh = sext i16 %i.dg to i32
  %i.di = add i32 %i.de, %i.dh
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !1213
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 5 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !711 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !1206
  %.not.i.i = icmp sgt i32 %i.dm, %i.dk
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %sqlite3TriggerColmask.exit
  %i.dn = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 81, i32 noundef %5, i32 noundef %i.de, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.x:                                             ; preds = %sqlite3TriggerColmask.exit
  %i.do = add nsw i32 %i.dk, 1
  store i32 %i.do, ptr %i.dj, align 8, !tbaa !711
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !710
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [24 x i8], ptr %i.dq, i64 %i.dr ; 7 uses
  store i8 81, ptr %i.ds, align 8, !tbaa !938
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i16 0, ptr %i.dt, align 2, !tbaa !957
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %5, ptr %i.du, align 4, !tbaa !954
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 %i.de, ptr %i.dv, align 8, !tbaa !955
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !956
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr null, ptr %i.dx, align 8, !tbaa !741
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 0, ptr %i.dy, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.w, %bb.x
  %i.dz = load i16, ptr %i.df, align 2, !tbaa !1161 ; 2 uses
  %i.ea = icmp sgt i16 %i.dz, 0
  br i1 %i.ea, label %.lr.ph190, label %._crit_edge

.lr.ph190:                                        ; preds = %sqlite3VdbeAddOp2.exit
  %i.eb = icmp eq i32 %i.db, -1
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ee = add i32 %i.dd, 2
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph190, %bb.ad
  %i.ef = phi i16 [ %i.dz, %.lr.ph190 ], [ %i.jd, %bb.ad ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next, %bb.ad ] ; 12 uses
  br i1 %i.eb, label %._crit_edge213, label %bb.z

._crit_edge213:                                   ; preds = %bb.y
  %.pre214 = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.eg = icmp samesign ult i64 %indvars.iv, 32
  br i1 %i.eg, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.eh = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ei = shl nuw i32 1, %i.eh
  %i.ej = and i32 %i.ei, %i.db
  %.not101 = icmp eq i32 %i.ej, 0
  br i1 %.not101, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge213, %bb.aa
  %.pre-phi = phi i32 [ %.pre214, %._crit_edge213 ], [ %i.eh, %bb.aa ] ; 3 uses
  %i.ek = trunc nuw nsw i32 %.pre-phi to i16      ; 2 uses
  %i.el = load i32, ptr %i.f, align 8, !tbaa !1098
  %i.em = and i32 %i.el, 32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab
  %.not23.i = icmp eq i32 %.pre-phi, 0
  %i.eo = load ptr, ptr %i.ec, align 8, !tbaa !1162 ; 22 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check260 = icmp samesign ult i64 %indvars.iv, 17
  br i1 %min.iters.check260, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ep = and i64 %indvars.iv, 15                 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = select i1 %i.eq, i64 16, i64 %i.ep      ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv, %i.er         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.hk, %vector.body ]
  %vec.phi261 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.hl, %vector.body ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 14
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 30
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 46
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 62
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 78
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 94
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 110
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 126
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 142
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 158
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 174
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fd, i64 190
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 206
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ff, i64 222
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 238
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 254
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !1164
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !1164
  %i.ga = load i16, ptr %i.fk, align 2, !tbaa !1164
  %i.gb = load i16, ptr %i.fl, align 2, !tbaa !1164
  %i.gc = load i16, ptr %i.fm, align 2, !tbaa !1164
  %i.gd = load i16, ptr %i.fn, align 2, !tbaa !1164
  %i.ge = load i16, ptr %i.fo, align 2, !tbaa !1164
  %i.gf = load i16, ptr %i.fp, align 2, !tbaa !1164
  %i.gg = insertelement <8 x i16> poison, i16 %i.fy, i64 0
  %i.gh = insertelement <8 x i16> %i.gg, i16 %i.fz, i64 1
  %i.gi = insertelement <8 x i16> %i.gh, i16 %i.ga, i64 2
  %i.gj = insertelement <8 x i16> %i.gi, i16 %i.gb, i64 3
  %i.gk = insertelement <8 x i16> %i.gj, i16 %i.gc, i64 4
  %i.gl = insertelement <8 x i16> %i.gk, i16 %i.gd, i64 5
  %i.gm = insertelement <8 x i16> %i.gl, i16 %i.ge, i64 6
  %i.gn = insertelement <8 x i16> %i.gm, i16 %i.gf, i64 7
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !1164
  %i.gp = load i16, ptr %i.fr, align 2, !tbaa !1164
  %i.gq = load i16, ptr %i.fs, align 2, !tbaa !1164
  %i.gr = load i16, ptr %i.ft, align 2, !tbaa !1164
  %i.gs = load i16, ptr %i.fu, align 2, !tbaa !1164
  %i.gt = load i16, ptr %i.fv, align 2, !tbaa !1164
  %i.gu = load i16, ptr %i.fw, align 2, !tbaa !1164
  %i.gv = load i16, ptr %i.fx, align 2, !tbaa !1164
  %i.gw = insertelement <8 x i16> poison, i16 %i.go, i64 0
  %i.gx = insertelement <8 x i16> %i.gw, i16 %i.gp, i64 1
  %i.gy = insertelement <8 x i16> %i.gx, i16 %i.gq, i64 2
  %i.gz = insertelement <8 x i16> %i.gy, i16 %i.gr, i64 3
  %i.ha = insertelement <8 x i16> %i.gz, i16 %i.gs, i64 4
  %i.hb = insertelement <8 x i16> %i.ha, i16 %i.gt, i64 5
  %i.hc = insertelement <8 x i16> %i.hb, i16 %i.gu, i64 6
  %i.hd = insertelement <8 x i16> %i.hc, i16 %i.gv, i64 7
  %i.he = lshr <8 x i16> %i.gn, splat (i16 5)
  %i.hf = lshr <8 x i16> %i.hd, splat (i16 5)
  %i.hg = and <8 x i16> %i.he, splat (i16 1)
  %i.hh = and <8 x i16> %i.hf, splat (i16 1)
  %i.hi = xor <8 x i16> %i.hg, splat (i16 1)
  %i.hj = xor <8 x i16> %i.hh, splat (i16 1)
  %i.hk = add <8 x i16> %i.hi, %vec.phi           ; 2 uses
  %i.hl = add <8 x i16> %i.hj, %vec.phi261        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5999

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.hl, %i.hk
  %i.hn = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.er, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.hn, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ho = and i64 %indvars.iv, 3                  ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 0
  %i.hq = select i1 %i.hp, i64 4, i64 %i.ho
  %n.vec262 = sub nsw i64 %indvars.iv, %i.hq      ; 2 uses
  %i.hr = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index263 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next265, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi264 = phi <4 x i16> [ %i.hr, %vec.epilog.ph ], [ %i.il, %vec.epilog.vector.body ]
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index263
  %i.ht = getelementptr [16 x i8], ptr %i.eo, i64 %index263
  %i.hu = getelementptr [16 x i8], ptr %i.eo, i64 %index263
  %i.hv = getelementptr [16 x i8], ptr %i.eo, i64 %index263
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 14
  %i.hx = getelementptr i8, ptr %i.ht, i64 30
  %i.hy = getelementptr i8, ptr %i.hu, i64 46
  %i.hz = getelementptr i8, ptr %i.hv, i64 62
  %i.ia = load i16, ptr %i.hw, align 2, !tbaa !1164
  %i.ib = load i16, ptr %i.hx, align 2, !tbaa !1164
  %i.ic = load i16, ptr %i.hy, align 2, !tbaa !1164
  %i.id = load i16, ptr %i.hz, align 2, !tbaa !1164
  %i.ie = insertelement <4 x i16> poison, i16 %i.ia, i64 0
  %i.if = insertelement <4 x i16> %i.ie, i16 %i.ib, i64 1
  %i.ig = insertelement <4 x i16> %i.if, i16 %i.ic, i64 2
  %i.ih = insertelement <4 x i16> %i.ig, i16 %i.id, i64 3
  %i.ii = lshr <4 x i16> %i.ih, splat (i16 5)
  %i.ij = and <4 x i16> %i.ii, splat (i16 1)
  %i.ik = xor <4 x i16> %i.ij, splat (i16 1)
  %i.il = add <4 x i16> %i.ik, %vec.phi264        ; 2 uses
  %index.next265 = add nuw i64 %index263, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next265, %n.vec262
  br i1 %i.im, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6000

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.in = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.il)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec262, %vec.epilog.middle.block ]
  %.021.i107.ph = phi i16 [ 0, %iter.check ], [ %i.hn, %vec.epilog.iter.check ], [ %i.in, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i107 = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i107.ph, %.lr.ph.i.preheader ]
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 14
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !1164
  %i.ir = lshr i16 %i.iq, 5
  %i.is = and i16 %i.ir, 1
  %i.it = xor i16 %i.is, 1
  %spec.select.i = add i16 %i.it, %.021.i107      ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6001

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %indvars.iv
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 14
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !1164
  %i.ix = and i16 %i.iw, 32
  %.not.i108 = icmp eq i16 %i.ix, 0
  br i1 %.not.i108, label %sqlite3TableColumnToStorage.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i
  %i.iy = load i16, ptr %i.ed, align 8, !tbaa !1166
  %i.iz = sub i16 %i.ek, %.0.lcssa.i
  %i.ja = add i16 %i.iz, %i.iy
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.ab, %._crit_edge.i, %bb.ac
  %.018.i = phi i16 [ %i.ek, %bb.ab ], [ %i.ja, %bb.ac ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.jb = sext i16 %.018.i to i32
  %i.jc = add i32 %i.ee, %i.jb
  tail call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %i.b, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %.pre-phi, i32 noundef %i.jc)
  %.pre211 = load i16, ptr %i.df, align 2, !tbaa !1161
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.aa, %sqlite3TableColumnToStorage.exit
  %i.jd = phi i16 [ %i.ef, %bb.z ], [ %i.ef, %bb.aa ], [ %.pre211, %sqlite3TableColumnToStorage.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.je = sext i16 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next, %i.je
  br i1 %i.jf, label %bb.y, label %._crit_edge, !llvm.loop !6002

._crit_edge:                                      ; preds = %bb.ad, %sqlite3VdbeAddOp2.exit
  %.val103 = load i32, ptr %i.dj, align 8, !tbaa !711
  %.not.i110191 = icmp eq ptr %2, null
  br i1 %.not.i110191, label %sqlite3VdbeAddOp4Int.exit117, label %.lr.ph194

.lr.ph194:                                        ; preds = %._crit_edge
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph194, %bb.ak
  %.0.i109192 = phi ptr [ %2, %.lr.ph194 ], [ %i.js, %bb.ak ] ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i109192, i64 16
  %i.ji = load i8, ptr %i.jh, align 8, !tbaa !2389
  %i.jj = icmp eq i8 %i.ji, -127
  br i1 %i.jj, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i109192, i64 17
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !2390
  %i.jm = icmp eq i8 %i.jl, 1
  br i1 %i.jm, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i109192, i64 18
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !673
end_hunk_13
begin_hunk_14_@sqlite3FkCheck:bb.a

sqlite3_stricmp.exit:                             ; preds = %bb.e
  br i1 %.not.i189.not, label %fkChildIsModified.exit, label %sqlite3_stricmp.exit.thread216

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i189.not, label %sqlite3_stricmp.exit.thread216, label %.preheader.i188

.preheader.i188:                                  ; preds = %bb.f, %bb.i
  %.013.i.i = phi ptr [ %i.ay, %bb.i ], [ %i.ak, %bb.f ] ; 2 uses
  %.012.i.i = phi ptr [ %i.az, %bb.i ], [ %i.am, %bb.f ] ; 2 uses
  %i.ao = load i8, ptr %.013.i.i, align 1, !tbaa !741 ; 3 uses
  %i.ap = load i8, ptr %.012.i.i, align 1, !tbaa !741 ; 2 uses
  %i.aq = icmp eq i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i188
  %i.ar = icmp eq i8 %i.ao, 0
  br i1 %i.ar, label %fkChildIsModified.exit, label %bb.i

bb.h:                                             ; preds = %.preheader.i188
  %i.as = zext i8 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !741
  %i.av = zext i8 %i.ap to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !741
  %.not.i.i = icmp eq i8 %i.au, %i.ax
  br i1 %.not.i.i, label %bb.i, label %sqlite3_stricmp.exit.thread216

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %.preheader.i188

sqlite3_stricmp.exit.thread216:                   ; preds = %bb.h, %bb.f, %sqlite3_stricmp.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.0238, i64 64 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0238, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !576 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i, label %fkChildIsModified.exit.thread

.lr.ph.i:                                         ; preds = %sqlite3_stricmp.exit.thread216
  %wide.trip.count27.i = zext nneg i32 %i.bc to i64 ; 2 uses
  br i1 %i.ac, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.j
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %bb.j ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %indvars.iv24.i
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1200
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !576
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %fkChildIsModified.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %fkChildIsModified.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !360

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i190, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i192, %wide.trip.count27.i
  br i1 %exitcond.not.i, label %fkChildIsModified.exit.thread, label %.lr.ph.split.i, !llvm.loop !360

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.k
  %indvars.iv.i190 = phi i64 [ %indvars.iv.next.i192, %bb.k ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %indvars.iv.i190
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1200 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !576
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %fkChildIsModified.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.bq = load i16, ptr %i.ab, align 4, !tbaa !1168
  %i.br = sext i16 %i.bq to i32
  %.not.i191 = icmp eq i32 %i.bl, %i.br
  br i1 %.not.i191, label %fkChildIsModified.exit, label %bb.k

fkChildIsModified.exit:                           ; preds = %bb.g, %bb.l, %.lr.ph.split.i, %.lr.ph.split.us.i, %sqlite3_stricmp.exit, %bb.d
  %i.bs = load i16, ptr %i.g, align 1
  %i.bt = and i16 %i.bs, 1
  %.not175 = icmp eq i16 %i.bt, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %.0238, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !747 ; 2 uses
  br i1 %.not175, label %bb.n, label %bb.m

bb.m:                                             ; preds = %fkChildIsModified.exit
  %i.bw = call fastcc ptr @sqlite3FindTable(ptr noundef %i.f, ptr noundef %i.bv, ptr noundef %i.z)
  br label %bb.o

bb.n:                                             ; preds = %fkChildIsModified.exit
  %i.bx = call fastcc ptr @sqlite3LocateTable(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.bv, ptr noundef %i.z)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0149 = phi ptr [ %i.bw, %bb.m ], [ %i.bx, %bb.n ] ; 9 uses
  %.not176 = icmp eq ptr %.0149, null             ; 2 uses
  br i1 %.not176, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = call fastcc i32 @sqlite3FkLocateIndex(ptr noundef nonnull %0, ptr noundef %.0149, ptr noundef %.0238, ptr noundef %i.a, ptr noundef nonnull %i.b)
  %.not177 = icmp eq i32 %i.by, 0
  br i1 %.not177, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not184, label %sqlite3VdbeAddOp2.exit204, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load i8, ptr %i.ah, align 1, !tbaa !928
  %.not185 = icmp eq i8 %i.bz, 0
  br i1 %.not185, label %bb.s, label %sqlite3VdbeAddOp2.exit204

bb.s:                                             ; preds = %bb.r
  br i1 %.not176, label %bb.t, label %fkChildIsModified.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.ai, align 8, !tbaa !1233 ; 2 uses
  %.not.i193 = icmp eq ptr %i.ca, null
  br i1 %.not.i193, label %bb.u, label %sqlite3GetVdbe.exit

bb.u:                                             ; preds = %bb.t
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !2248
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %0, align 8, !tbaa !1001
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !1409
  %i.cg = and i32 %i.cf, 8
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = load i16, ptr %i.g, align 1
  %i.cj = or i16 %i.ci, 128
  store i16 %i.cj, ptr %i.g, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ck = call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0)
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.t, %bb.x
  %.0.i194 = phi ptr [ %i.ck, %bb.x ], [ %i.ca, %bb.t ] ; 7 uses
  %i.cl = getelementptr i8, ptr %.0.i194, i64 144 ; 5 uses
  %.val = load i32, ptr %i.cl, align 8, !tbaa !711 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0238, i64 40 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !576 ; 2 uses
  %i.co = add i32 %.val, 1
  %i.cp = add i32 %i.co, %i.cn                    ; 2 uses
  %i.cq = icmp sgt i32 %i.cn, 0
  br i1 %i.cq, label %.lr.ph234, label %._crit_edge235

.lr.ph234:                                        ; preds = %sqlite3GetVdbe.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %.0238, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i194, i64 148
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i194, i64 136
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph234, %sqlite3VdbeAddOp2.exit
  %indvars.iv254 = phi i64 [ 0, %.lr.ph234 ], [ %indvars.iv.next255, %sqlite3VdbeAddOp2.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %indvars.iv254
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !1200 ; 2 uses
  %i.cw = load ptr, ptr %.0238, align 8, !tbaa !2233 ; 3 uses
  %i.cx = trunc i32 %i.cv to i16                  ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !1098
  %i.da = and i32 %i.cz, 32
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = icmp slt i16 %i.cx, 0
  %or.cond.i = or i1 %i.dc, %i.db
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i195

.preheader.i195:                                  ; preds = %bb.y
  %sext = and i32 %i.cv, 32767                    ; 3 uses
  %.not23.i = icmp eq i16 %i.cx, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1162 ; 22 uses
  %.pre259 = zext nneg i32 %sext to i64           ; 6 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i195
  %min.iters.check = icmp samesign ult i32 %sext, 5
  br i1 %min.iters.check, label %.lr.ph.i196.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check298 = icmp samesign ult i32 %sext, 17
  br i1 %min.iters.check298, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.df = and i64 %.pre259, 15                    ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  %i.dh = select i1 %i.dg, i64 16, i64 %i.df      ; 2 uses
  %n.vec = sub nsw i64 %.pre259, %i.dh            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ga, %vector.body ]
  %vec.phi299 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.gb, %vector.body ]
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 30
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 46
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 62
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 78
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 94
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 110
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 126
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dq, i64 142
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 158
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ds, i64 174
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 190
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 206
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 222
  %i.em = getelementptr inbounds nuw i8, ptr %i.dw, i64 238
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 254
  %i.eo = load i16, ptr %i.dy, align 2, !tbaa !1164
  %i.ep = load i16, ptr %i.dz, align 2, !tbaa !1164
  %i.eq = load i16, ptr %i.ea, align 2, !tbaa !1164
  %i.er = load i16, ptr %i.eb, align 2, !tbaa !1164
  %i.es = load i16, ptr %i.ec, align 2, !tbaa !1164
  %i.et = load i16, ptr %i.ed, align 2, !tbaa !1164
  %i.eu = load i16, ptr %i.ee, align 2, !tbaa !1164
  %i.ev = load i16, ptr %i.ef, align 2, !tbaa !1164
  %i.ew = insertelement <8 x i16> poison, i16 %i.eo, i64 0
  %i.ex = insertelement <8 x i16> %i.ew, i16 %i.ep, i64 1
  %i.ey = insertelement <8 x i16> %i.ex, i16 %i.eq, i64 2
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 3
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 4
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 5
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 6
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 7
  %i.fe = load i16, ptr %i.eg, align 2, !tbaa !1164
  %i.ff = load i16, ptr %i.eh, align 2, !tbaa !1164
  %i.fg = load i16, ptr %i.ei, align 2, !tbaa !1164
  %i.fh = load i16, ptr %i.ej, align 2, !tbaa !1164
  %i.fi = load i16, ptr %i.ek, align 2, !tbaa !1164
  %i.fj = load i16, ptr %i.el, align 2, !tbaa !1164
  %i.fk = load i16, ptr %i.em, align 2, !tbaa !1164
  %i.fl = load i16, ptr %i.en, align 2, !tbaa !1164
  %i.fm = insertelement <8 x i16> poison, i16 %i.fe, i64 0
  %i.fn = insertelement <8 x i16> %i.fm, i16 %i.ff, i64 1
  %i.fo = insertelement <8 x i16> %i.fn, i16 %i.fg, i64 2
  %i.fp = insertelement <8 x i16> %i.fo, i16 %i.fh, i64 3
  %i.fq = insertelement <8 x i16> %i.fp, i16 %i.fi, i64 4
  %i.fr = insertelement <8 x i16> %i.fq, i16 %i.fj, i64 5
  %i.fs = insertelement <8 x i16> %i.fr, i16 %i.fk, i64 6
  %i.ft = insertelement <8 x i16> %i.fs, i16 %i.fl, i64 7
  %i.fu = lshr <8 x i16> %i.fd, splat (i16 5)
  %i.fv = lshr <8 x i16> %i.ft, splat (i16 5)
  %i.fw = and <8 x i16> %i.fu, splat (i16 1)
  %i.fx = and <8 x i16> %i.fv, splat (i16 1)
  %i.fy = xor <8 x i16> %i.fw, splat (i16 1)
  %i.fz = xor <8 x i16> %i.fx, splat (i16 1)
  %i.ga = add <8 x i16> %i.fy, %vec.phi           ; 2 uses
  %i.gb = add <8 x i16> %i.fz, %vec.phi299        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !6014

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.gb, %i.ga
  %i.gd = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.dh, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i196.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.gd, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ge = and i64 %.pre259, 3                     ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  %i.gg = select i1 %i.gf, i64 4, i64 %i.ge
  %n.vec300 = sub nsw i64 %.pre259, %i.gg         ; 2 uses
  %i.gh = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index301 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next303, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi302 = phi <4 x i16> [ %i.gh, %vec.epilog.ph ], [ %i.hb, %vec.epilog.vector.body ]
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index301
  %i.gj = getelementptr [16 x i8], ptr %i.de, i64 %index301
  %i.gk = getelementptr [16 x i8], ptr %i.de, i64 %index301
  %i.gl = getelementptr [16 x i8], ptr %i.de, i64 %index301
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 14
  %i.gn = getelementptr i8, ptr %i.gj, i64 30
  %i.go = getelementptr i8, ptr %i.gk, i64 46
  %i.gp = getelementptr i8, ptr %i.gl, i64 62
  %i.gq = load i16, ptr %i.gm, align 2, !tbaa !1164
  %i.gr = load i16, ptr %i.gn, align 2, !tbaa !1164
  %i.gs = load i16, ptr %i.go, align 2, !tbaa !1164
  %i.gt = load i16, ptr %i.gp, align 2, !tbaa !1164
  %i.gu = insertelement <4 x i16> poison, i16 %i.gq, i64 0
  %i.gv = insertelement <4 x i16> %i.gu, i16 %i.gr, i64 1
  %i.gw = insertelement <4 x i16> %i.gv, i16 %i.gs, i64 2
  %i.gx = insertelement <4 x i16> %i.gw, i16 %i.gt, i64 3
  %i.gy = lshr <4 x i16> %i.gx, splat (i16 5)
  %i.gz = and <4 x i16> %i.gy, splat (i16 1)
  %i.ha = xor <4 x i16> %i.gz, splat (i16 1)
  %i.hb = add <4 x i16> %i.ha, %vec.phi302        ; 2 uses
  %index.next303 = add nuw i64 %index301, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next303, %n.vec300
  br i1 %i.hc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6015

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hd = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.hb)
  br label %.lr.ph.i196.preheader

.lr.ph.i196.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i197.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec300, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.gd, %vec.epilog.iter.check ], [ %i.hd, %vec.epilog.middle.block ]
  br label %.lr.ph.i196

.lr.ph.i196:                                      ; preds = %.lr.ph.i196.preheader, %.lr.ph.i196
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i198, %.lr.ph.i196 ], [ %indvars.iv.i197.ph, %.lr.ph.i196.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i196 ], [ %.021.i.ph, %.lr.ph.i196.preheader ]
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv.i197
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 14
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !1164
  %i.hh = lshr i16 %i.hg, 5
  %i.hi = and i16 %i.hh, 1
  %i.hj = xor i16 %i.hi, 1
  %spec.select.i = add i16 %i.hj, %.021.i         ; 2 uses
  %indvars.iv.next.i198 = add nuw nsw i64 %indvars.iv.i197, 1 ; 2 uses
  %exitcond.not.i199 = icmp eq i64 %indvars.iv.next.i198, %.pre259
  br i1 %exitcond.not.i199, label %._crit_edge.i, label %.lr.ph.i196, !llvm.loop !6016

._crit_edge.i:                                    ; preds = %.lr.ph.i196, %.preheader.i195
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i195 ], [ %spec.select.i, %.lr.ph.i196 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %.pre259
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 14
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !1164
  %i.hn = and i16 %i.hm, 32
  %.not.i200 = icmp eq i16 %i.hn, 0
  br i1 %.not.i200, label %sqlite3TableColumnToStorage.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.hp = load i16, ptr %i.ho, align 8, !tbaa !1166
  %i.hq = sub i16 %i.cx, %.0.lcssa.i
  %i.hr = add i16 %i.hq, %i.hp
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.y, %._crit_edge.i, %bb.z
  %.018.i = phi i16 [ %i.cx, %bb.y ], [ %i.hr, %bb.z ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.hs = sext i16 %.018.i to i32
  %i.ht = add i32 %i.aj, %i.hs                    ; 2 uses
  %i.hu = load i32, ptr %i.cl, align 8, !tbaa !711 ; 3 uses
  %i.hv = load i32, ptr %i.cs, align 4, !tbaa !1206
  %.not.i.i201 = icmp sgt i32 %i.hv, %i.hu
  br i1 %.not.i.i201, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %sqlite3TableColumnToStorage.exit
  %i.hw = call fastcc i32 @growOp3(ptr noundef nonnull %.0.i194, i32 noundef 51, i32 noundef %i.ht, i32 noundef %i.cp, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.ab:                                            ; preds = %sqlite3TableColumnToStorage.exit
  %i.hx = add nsw i32 %i.hu, 1
  store i32 %i.hx, ptr %i.cl, align 8, !tbaa !711
  %i.hy = load ptr, ptr %i.ct, align 8, !tbaa !710
  %i.hz = sext i32 %i.hu to i64
  %i.ia = getelementptr inbounds [24 x i8], ptr %i.hy, i64 %i.hz ; 7 uses
  store i8 51, ptr %i.ia, align 8, !tbaa !938
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  store i16 0, ptr %i.ib, align 2, !tbaa !957
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store i32 %i.ht, ptr %i.ic, align 4, !tbaa !954
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i32 %i.cp, ptr %i.id, align 8, !tbaa !955
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  store i32 0, ptr %i.ie, align 4, !tbaa !956
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store ptr null, ptr %i.if, align 8, !tbaa !741
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  store i8 0, ptr %i.ig, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.aa, %bb.ab
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %i.ih = load i32, ptr %i.cm, align 8, !tbaa !576
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next255, %i.ii
end_hunk_14
begin_hunk_15_@sqlite3ProcessReturningSubqueries:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @sqlite3ReturningSubqueryCorrelated(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2057 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !576  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !741
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !6041

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2039
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !819
  %i.m = or i32 %i.l, 536870912
  store i32 %i.m, ptr %i.k, align 4, !tbaa !819
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 1, ptr %i.n, align 4, !tbaa !2219
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @sqlite3ReturningSubqueryVarSelect(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !801  ; 2 uses
  %i.c = and i32 %i.b, 4096
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !741
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !819
  %i.h = and i32 %i.g, 536870912
  %.not3 = icmp eq i32 %i.h, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = or i32 %i.b, 64
  store i32 %i.i, ptr %i.a, align 4, !tbaa !801
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fkLookupParent(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(address) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, i32 noundef %6, i32 noundef range(i32 -1, 2) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1233 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %sqlite3GetVdbe.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2248
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !1001
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1409
  %i.i = and i32 %i.h, 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.l = load i16, ptr %i.k, align 1
  %i.m = or i16 %i.l, 128
  store i16 %i.m, ptr %i.k, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.n = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0)
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.a, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ %i.b, %bb.a ] ; 48 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1214
  %i.q = add nsw i32 %i.p, -1                     ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2096 ; 2 uses
  %i.t = add nsw i32 %i.s, -1                     ; 13 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !2096
  %i.u = icmp slt i32 %7, 0
  br i1 %i.u, label %bb.f, label %sqlite3VdbeAddOp2.exit

bb.f:                                             ; preds = %sqlite3GetVdbe.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.w = load i8, ptr %i.v, align 4, !tbaa !741
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !711  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1206
  %.not.i.i = icmp sgt i32 %i.ab, %i.z
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 50, i32 noundef %i.x, i32 noundef %i.t, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.z, 1
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !711
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !710
  %i.ag = sext i32 %i.z to i64
  %i.ah = getelementptr inbounds [24 x i8], ptr %i.af, i64 %i.ag ; 7 uses
  store i8 50, ptr %i.ah, align 8, !tbaa !938
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i16 0, ptr %i.ai, align 2, !tbaa !957
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.x, ptr %i.aj, align 4, !tbaa !954
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.t, ptr %i.ak, align 8, !tbaa !955
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !956
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr null, ptr %i.am, align 8, !tbaa !741
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 0, ptr %i.an, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.h, %bb.g, %sqlite3GetVdbe.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !576 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sqlite3VdbeAddOp2.exit
  %i.ar = add i32 %6, 1
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %sqlite3VdbeAddOp2.exit139
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3VdbeAddOp2.exit139 ] ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !2233  ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !576 ; 2 uses
  %i.ay = trunc i32 %i.ax to i16                  ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1098
  %i.bb = and i32 %i.ba, 32
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = icmp slt i16 %i.ay, 0
  %or.cond.i = or i1 %i.bd, %i.bc
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %sext254 = and i32 %i.ax, 32767                 ; 3 uses
  %.not23.i = icmp eq i16 %i.ay, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1162 ; 22 uses
  %.pre282 = zext nneg i32 %sext254 to i64        ; 6 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i32 %sext254, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check323 = icmp samesign ult i32 %sext254, 17
  br i1 %min.iters.check323, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bg = and i64 %.pre282, 15                    ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 16, i64 %i.bg      ; 2 uses
  %n.vec = sub nsw i64 %.pre282, %i.bi            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.eb, %vector.body ]
  %vec.phi324 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ec, %vector.body ]
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 78
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 94
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 110
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 126
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 142
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 158
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 174
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 190
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 206
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 222
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 238
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 254
  %i.cp = load i16, ptr %i.bz, align 2, !tbaa !1164
  %i.cq = load i16, ptr %i.ca, align 2, !tbaa !1164
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !1164
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !1164
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !1164
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !1164
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !1164
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !1164
  %i.cx = insertelement <8 x i16> poison, i16 %i.cp, i64 0
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 1
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 2
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 3
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 4
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 5
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 6
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 7
  %i.df = load i16, ptr %i.ch, align 2, !tbaa !1164
  %i.dg = load i16, ptr %i.ci, align 2, !tbaa !1164
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !1164
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !1164
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !1164
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !1164
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !1164
  %i.dm = load i16, ptr %i.co, align 2, !tbaa !1164
  %i.dn = insertelement <8 x i16> poison, i16 %i.df, i64 0
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 1
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 2
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 3
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 4
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 5
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 6
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 7
  %i.dv = lshr <8 x i16> %i.de, splat (i16 5)
  %i.dw = lshr <8 x i16> %i.du, splat (i16 5)
  %i.dx = and <8 x i16> %i.dv, splat (i16 1)
  %i.dy = and <8 x i16> %i.dw, splat (i16 1)
  %i.dz = xor <8 x i16> %i.dx, splat (i16 1)
  %i.ea = xor <8 x i16> %i.dy, splat (i16 1)
  %i.eb = add <8 x i16> %i.dz, %vec.phi           ; 2 uses
  %i.ec = add <8 x i16> %i.ea, %vec.phi324        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !6042

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ec, %i.eb
  %i.ee = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bi, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.ee, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ef = and i64 %.pre282, 3                     ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  %i.eh = select i1 %i.eg, i64 4, i64 %i.ef
  %n.vec325 = sub nsw i64 %.pre282, %i.eh         ; 2 uses
  %i.ei = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index326 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next328, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi327 = phi <4 x i16> [ %i.ei, %vec.epilog.ph ], [ %i.fc, %vec.epilog.vector.body ]
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %index326
  %i.ek = getelementptr [16 x i8], ptr %i.bf, i64 %index326
  %i.el = getelementptr [16 x i8], ptr %i.bf, i64 %index326
  %i.em = getelementptr [16 x i8], ptr %i.bf, i64 %index326
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 14
  %i.eo = getelementptr i8, ptr %i.ek, i64 30
  %i.ep = getelementptr i8, ptr %i.el, i64 46
  %i.eq = getelementptr i8, ptr %i.em, i64 62
  %i.er = load i16, ptr %i.en, align 2, !tbaa !1164
  %i.es = load i16, ptr %i.eo, align 2, !tbaa !1164
  %i.et = load i16, ptr %i.ep, align 2, !tbaa !1164
  %i.eu = load i16, ptr %i.eq, align 2, !tbaa !1164
  %i.ev = insertelement <4 x i16> poison, i16 %i.er, i64 0
  %i.ew = insertelement <4 x i16> %i.ev, i16 %i.es, i64 1
  %i.ex = insertelement <4 x i16> %i.ew, i16 %i.et, i64 2
  %i.ey = insertelement <4 x i16> %i.ex, i16 %i.eu, i64 3
  %i.ez = lshr <4 x i16> %i.ey, splat (i16 5)
  %i.fa = and <4 x i16> %i.ez, splat (i16 1)
  %i.fb = xor <4 x i16> %i.fa, splat (i16 1)
  %i.fc = add <4 x i16> %i.fb, %vec.phi327        ; 2 uses
  %index.next328 = add nuw i64 %index326, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next328, %n.vec325
  br i1 %i.fd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6043

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fe = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.fc)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec325, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.ee, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ]
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 14
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !1164
  %i.fi = lshr i16 %i.fh, 5
  %i.fj = and i16 %i.fi, 1
  %i.fk = xor i16 %i.fj, 1
  %spec.select.i = add i16 %i.fk, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.pre282
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6044

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.pre282
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 14
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !1164
  %i.fo = and i16 %i.fn, 32
  %.not.i136 = icmp eq i16 %i.fo, 0
  br i1 %.not.i136, label %sqlite3TableColumnToStorage.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.fq = load i16, ptr %i.fp, align 8, !tbaa !1166
  %i.fr = sub i16 %i.ay, %.0.lcssa.i
  %i.fs = add i16 %i.fr, %i.fq
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.i, %._crit_edge.i, %bb.j
  %.018.i = phi i16 [ %i.ay, %bb.i ], [ %i.fs, %bb.j ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.ft = sext i16 %.018.i to i32
  %i.fu = add i32 %i.ar, %i.ft                    ; 2 uses
  %i.fv = load i32, ptr %i.as, align 8, !tbaa !711 ; 3 uses
  %i.fw = load i32, ptr %i.at, align 4, !tbaa !1206
  %.not.i.i137 = icmp sgt i32 %i.fw, %i.fv
  br i1 %.not.i.i137, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.fx = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 51, i32 noundef %i.fu, i32 noundef %i.t, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit139

bb.l:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.fy = add nsw i32 %i.fv, 1
  store i32 %i.fy, ptr %i.as, align 8, !tbaa !711
  %i.fz = load ptr, ptr %i.au, align 8, !tbaa !710
  %i.ga = sext i32 %i.fv to i64
  %i.gb = getelementptr inbounds [24 x i8], ptr %i.fz, i64 %i.ga ; 7 uses
  store i8 51, ptr %i.gb, align 8, !tbaa !938
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  store i16 0, ptr %i.gc, align 2, !tbaa !957
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i32 %i.fu, ptr %i.gd, align 4, !tbaa !954
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i32 %i.t, ptr %i.ge, align 8, !tbaa !955
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  store i32 0, ptr %i.gf, align 4, !tbaa !956
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store ptr null, ptr %i.gg, align 8, !tbaa !741
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store i8 0, ptr %i.gh, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit139

sqlite3VdbeAddOp2.exit139:                        ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gi = load i32, ptr %i.ao, align 8, !tbaa !576 ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next, %i.gj
  br i1 %i.gk, label %bb.i, label %._crit_edge, !llvm.loop !6045

._crit_edge:                                      ; preds = %sqlite3VdbeAddOp2.exit139, %sqlite3VdbeAddOp2.exit
  %.lcssa = phi i32 [ %i.ap, %sqlite3VdbeAddOp2.exit ], [ %i.gi, %sqlite3VdbeAddOp2.exit139 ] ; 15 uses
  %i.gl = icmp eq i32 %8, 0
  br i1 %i.gl, label %bb.m, label %sqlite3ReleaseTempReg.exit

bb.m:                                             ; preds = %._crit_edge
  %i.gm = icmp eq ptr %3, null
  br i1 %i.gm, label %bb.n, label %bb.ag

bb.n:                                             ; preds = %bb.m
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 4 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !2330 ; 2 uses
  %i.gp = icmp eq i8 %i.go, 0
  br i1 %i.gp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !1213
  %i.gs = add nsw i32 %i.gr, 1                    ; 2 uses
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !1213
  br label %sqlite3GetTempReg.exit

bb.p:                                             ; preds = %bb.n
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.gu = add i8 %i.go, -1                        ; 2 uses
  store i8 %i.gu, ptr %i.gn, align 1, !tbaa !2330
  %i.gv = zext i8 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !576
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.o, %bb.p
  %.0.i140 = phi i32 [ %i.gs, %bb.o ], [ %i.gx, %bb.p ] ; 10 uses
  %i.gy = load ptr, ptr %4, align 8, !tbaa !2233  ; 3 uses
  %i.gz = load i32, ptr %5, align 4, !tbaa !576   ; 2 uses
  %i.ha = trunc i32 %i.gz to i16                  ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !1098
  %i.hd = and i32 %i.hc, 32
  %i.he = icmp eq i32 %i.hd, 0
  %i.hf = icmp slt i16 %i.ha, 0
  %or.cond.i141 = or i1 %i.hf, %i.he
  br i1 %or.cond.i141, label %sqlite3TableColumnToStorage.exit155, label %.preheader.i142

.preheader.i142:                                  ; preds = %sqlite3GetTempReg.exit
  %sext253 = and i32 %i.gz, 32767                 ; 3 uses
  %.not23.i143 = icmp eq i16 %i.ha, 0
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !1162 ; 22 uses
  %.pre275 = zext nneg i32 %sext253 to i64        ; 6 uses
  br i1 %.not23.i143, label %._crit_edge.i151, label %iter.check425

iter.check425:                                    ; preds = %.preheader.i142
  %min.iters.check411 = icmp samesign ult i32 %sext253, 5
  br i1 %min.iters.check411, label %.lr.ph.i144.preheader, label %vector.main.loop.iter.check412

vector.main.loop.iter.check412:                   ; preds = %iter.check425
  %min.iters.check413 = icmp samesign ult i32 %sext253, 17
  br i1 %min.iters.check413, label %vec.epilog.ph429, label %vector.ph414

vector.ph414:                                     ; preds = %vector.main.loop.iter.check412
  %i.hi = and i64 %.pre275, 15                    ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  %i.hk = select i1 %i.hj, i64 16, i64 %i.hi      ; 2 uses
  %n.vec415 = sub nsw i64 %.pre275, %i.hk         ; 3 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.ph414, %vector.body416
  %index417 = phi i64 [ 0, %vector.ph414 ], [ %index.next420, %vector.body416 ] ; 17 uses
  %vec.phi418 = phi <8 x i16> [ zeroinitializer, %vector.ph414 ], [ %i.kd, %vector.body416 ]
  %vec.phi419 = phi <8 x i16> [ zeroinitializer, %vector.ph414 ], [ %i.ke, %vector.body416 ]
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index417
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hl, i64 14
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hm, i64 30
  %i.id = getelementptr inbounds nuw i8, ptr %i.hn, i64 46
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ho, i64 62
  %i.if = getelementptr inbounds nuw i8, ptr %i.hp, i64 78
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 94
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 110
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hs, i64 126
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ht, i64 142
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hu, i64 158
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 174
  %i.im = getelementptr inbounds nuw i8, ptr %i.hw, i64 190
  %i.in = getelementptr inbounds nuw i8, ptr %i.hx, i64 206
  %i.io = getelementptr inbounds nuw i8, ptr %i.hy, i64 222
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 238
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 254
  %i.ir = load i16, ptr %i.ib, align 2, !tbaa !1164
  %i.is = load i16, ptr %i.ic, align 2, !tbaa !1164
  %i.it = load i16, ptr %i.id, align 2, !tbaa !1164
  %i.iu = load i16, ptr %i.ie, align 2, !tbaa !1164
  %i.iv = load i16, ptr %i.if, align 2, !tbaa !1164
  %i.iw = load i16, ptr %i.ig, align 2, !tbaa !1164
  %i.ix = load i16, ptr %i.ih, align 2, !tbaa !1164
  %i.iy = load i16, ptr %i.ii, align 2, !tbaa !1164
  %i.iz = insertelement <8 x i16> poison, i16 %i.ir, i64 0
  %i.ja = insertelement <8 x i16> %i.iz, i16 %i.is, i64 1
  %i.jb = insertelement <8 x i16> %i.ja, i16 %i.it, i64 2
  %i.jc = insertelement <8 x i16> %i.jb, i16 %i.iu, i64 3
  %i.jd = insertelement <8 x i16> %i.jc, i16 %i.iv, i64 4
  %i.je = insertelement <8 x i16> %i.jd, i16 %i.iw, i64 5
  %i.jf = insertelement <8 x i16> %i.je, i16 %i.ix, i64 6
  %i.jg = insertelement <8 x i16> %i.jf, i16 %i.iy, i64 7
  %i.jh = load i16, ptr %i.ij, align 2, !tbaa !1164
  %i.ji = load i16, ptr %i.ik, align 2, !tbaa !1164
  %i.jj = load i16, ptr %i.il, align 2, !tbaa !1164
  %i.jk = load i16, ptr %i.im, align 2, !tbaa !1164
  %i.jl = load i16, ptr %i.in, align 2, !tbaa !1164
  %i.jm = load i16, ptr %i.io, align 2, !tbaa !1164
  %i.jn = load i16, ptr %i.ip, align 2, !tbaa !1164
  %i.jo = load i16, ptr %i.iq, align 2, !tbaa !1164
  %i.jp = insertelement <8 x i16> poison, i16 %i.jh, i64 0
  %i.jq = insertelement <8 x i16> %i.jp, i16 %i.ji, i64 1
  %i.jr = insertelement <8 x i16> %i.jq, i16 %i.jj, i64 2
  %i.js = insertelement <8 x i16> %i.jr, i16 %i.jk, i64 3
  %i.jt = insertelement <8 x i16> %i.js, i16 %i.jl, i64 4
  %i.ju = insertelement <8 x i16> %i.jt, i16 %i.jm, i64 5
  %i.jv = insertelement <8 x i16> %i.ju, i16 %i.jn, i64 6
  %i.jw = insertelement <8 x i16> %i.jv, i16 %i.jo, i64 7
  %i.jx = lshr <8 x i16> %i.jg, splat (i16 5)
  %i.jy = lshr <8 x i16> %i.jw, splat (i16 5)
  %i.jz = and <8 x i16> %i.jx, splat (i16 1)
  %i.ka = and <8 x i16> %i.jy, splat (i16 1)
  %i.kb = xor <8 x i16> %i.jz, splat (i16 1)
  %i.kc = xor <8 x i16> %i.ka, splat (i16 1)
  %i.kd = add <8 x i16> %i.kb, %vec.phi418        ; 2 uses
  %i.ke = add <8 x i16> %i.kc, %vec.phi419        ; 2 uses
  %index.next420 = add nuw i64 %index417, 16      ; 2 uses
  %i.kf = icmp eq i64 %index.next420, %n.vec415
  br i1 %i.kf, label %vec.epilog.iter.check427, label %vector.body416, !llvm.loop !6046

vec.epilog.iter.check427:                         ; preds = %vector.body416
  %bin.rdx422 = add <8 x i16> %i.ke, %i.kd
  %i.kg = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx422) ; 2 uses
  %min.epilog.iters.check428 = icmp samesign ult i64 %i.hk, 5
  br i1 %min.epilog.iters.check428, label %.lr.ph.i144.preheader, label %vec.epilog.ph429, !prof !1165

vec.epilog.ph429:                                 ; preds = %vector.main.loop.iter.check412, %vec.epilog.iter.check427
  %vec.epilog.resume.val423 = phi i64 [ %n.vec415, %vec.epilog.iter.check427 ], [ 0, %vector.main.loop.iter.check412 ]
  %bc.merge.rdx424 = phi i16 [ %i.kg, %vec.epilog.iter.check427 ], [ 0, %vector.main.loop.iter.check412 ]
  %i.kh = and i64 %.pre275, 3                     ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 0
  %i.kj = select i1 %i.ki, i64 4, i64 %i.kh
  %n.vec430 = sub nsw i64 %.pre275, %i.kj         ; 2 uses
  %i.kk = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx424, i64 0
  br label %vec.epilog.vector.body431

vec.epilog.vector.body431:                        ; preds = %vec.epilog.vector.body431, %vec.epilog.ph429
  %index432 = phi i64 [ %vec.epilog.resume.val423, %vec.epilog.ph429 ], [ %index.next434, %vec.epilog.vector.body431 ] ; 5 uses
  %vec.phi433 = phi <4 x i16> [ %i.kk, %vec.epilog.ph429 ], [ %i.le, %vec.epilog.vector.body431 ]
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %index432
  %i.km = getelementptr [16 x i8], ptr %i.hh, i64 %index432
  %i.kn = getelementptr [16 x i8], ptr %i.hh, i64 %index432
  %i.ko = getelementptr [16 x i8], ptr %i.hh, i64 %index432
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 14
  %i.kq = getelementptr i8, ptr %i.km, i64 30
  %i.kr = getelementptr i8, ptr %i.kn, i64 46
  %i.ks = getelementptr i8, ptr %i.ko, i64 62
  %i.kt = load i16, ptr %i.kp, align 2, !tbaa !1164
  %i.ku = load i16, ptr %i.kq, align 2, !tbaa !1164
  %i.kv = load i16, ptr %i.kr, align 2, !tbaa !1164
  %i.kw = load i16, ptr %i.ks, align 2, !tbaa !1164
  %i.kx = insertelement <4 x i16> poison, i16 %i.kt, i64 0
  %i.ky = insertelement <4 x i16> %i.kx, i16 %i.ku, i64 1
  %i.kz = insertelement <4 x i16> %i.ky, i16 %i.kv, i64 2
  %i.la = insertelement <4 x i16> %i.kz, i16 %i.kw, i64 3
  %i.lb = lshr <4 x i16> %i.la, splat (i16 5)
  %i.lc = and <4 x i16> %i.lb, splat (i16 1)
  %i.ld = xor <4 x i16> %i.lc, splat (i16 1)
  %i.le = add <4 x i16> %i.ld, %vec.phi433        ; 2 uses
  %index.next434 = add nuw i64 %index432, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next434, %n.vec430
  br i1 %i.lf, label %vec.epilog.middle.block435, label %vec.epilog.vector.body431, !llvm.loop !6047

vec.epilog.middle.block435:                       ; preds = %vec.epilog.vector.body431
  %i.lg = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.le)
  br label %.lr.ph.i144.preheader

.lr.ph.i144.preheader:                            ; preds = %iter.check425, %vec.epilog.iter.check427, %vec.epilog.middle.block435
  %indvars.iv.i146.ph = phi i64 [ 0, %iter.check425 ], [ %n.vec415, %vec.epilog.iter.check427 ], [ %n.vec430, %vec.epilog.middle.block435 ]
  %.021.i147.ph = phi i16 [ 0, %iter.check425 ], [ %i.kg, %vec.epilog.iter.check427 ], [ %i.lg, %vec.epilog.middle.block435 ]
  br label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.i144.preheader, %.lr.ph.i144
  %indvars.iv.i146 = phi i64 [ %indvars.iv.next.i149, %.lr.ph.i144 ], [ %indvars.iv.i146.ph, %.lr.ph.i144.preheader ] ; 2 uses
  %.021.i147 = phi i16 [ %spec.select.i148, %.lr.ph.i144 ], [ %.021.i147.ph, %.lr.ph.i144.preheader ]
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %indvars.iv.i146
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 14
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !1164
  %i.lk = lshr i16 %i.lj, 5
  %i.ll = and i16 %i.lk, 1
  %i.lm = xor i16 %i.ll, 1
  %spec.select.i148 = add i16 %i.lm, %.021.i147   ; 2 uses
  %indvars.iv.next.i149 = add nuw nsw i64 %indvars.iv.i146, 1 ; 2 uses
  %exitcond.not.i150 = icmp eq i64 %indvars.iv.next.i149, %.pre275
  br i1 %exitcond.not.i150, label %._crit_edge.i151, label %.lr.ph.i144, !llvm.loop !6048

._crit_edge.i151:                                 ; preds = %.lr.ph.i144, %.preheader.i142
  %.0.lcssa.i152 = phi i16 [ 0, %.preheader.i142 ], [ %spec.select.i148, %.lr.ph.i144 ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %.pre275
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 14
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !1164
  %i.lq = and i16 %i.lp, 32
  %.not.i153 = icmp eq i16 %i.lq, 0
  br i1 %.not.i153, label %sqlite3TableColumnToStorage.exit155, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i151
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  %i.ls = load i16, ptr %i.lr, align 8, !tbaa !1166
  %i.lt = sub i16 %i.ha, %.0.lcssa.i152
  %i.lu = add i16 %i.lt, %i.ls
  br label %sqlite3TableColumnToStorage.exit155

sqlite3TableColumnToStorage.exit155:              ; preds = %sqlite3GetTempReg.exit, %._crit_edge.i151, %bb.q
  %.018.i154 = phi i16 [ %i.ha, %sqlite3GetTempReg.exit ], [ %i.lu, %bb.q ], [ %.0.lcssa.i152, %._crit_edge.i151 ]
  %i.lv = sext i16 %.018.i154 to i32
  %i.lw = add i32 %6, 1
  %i.lx = add i32 %i.lw, %i.lv                    ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 12 uses
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !711 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.0.i, i64 148 ; 5 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !1206
  %.not.i.i156 = icmp sgt i32 %i.mb, %i.lz
  br i1 %.not.i.i156, label %bb.s, label %bb.r

bb.r:                                             ; preds = %sqlite3TableColumnToStorage.exit155
  %i.mc = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 82, i32 noundef %i.lx, i32 noundef %.0.i140, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit158

bb.s:                                             ; preds = %sqlite3TableColumnToStorage.exit155
  %i.md = add nsw i32 %i.lz, 1
  store i32 %i.md, ptr %i.ly, align 8, !tbaa !711
  %i.me = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !710
  %i.mg = sext i32 %i.lz to i64
  %i.mh = getelementptr inbounds [24 x i8], ptr %i.mf, i64 %i.mg ; 7 uses
  store i8 82, ptr %i.mh, align 8, !tbaa !938
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  store i16 0, ptr %i.mi, align 2, !tbaa !957
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store i32 %i.lx, ptr %i.mj, align 4, !tbaa !954
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 %.0.i140, ptr %i.mk, align 8, !tbaa !955
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  store i32 0, ptr %i.ml, align 4, !tbaa !956
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store ptr null, ptr %i.mm, align 8, !tbaa !741
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  store i8 0, ptr %i.mn, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit158

sqlite3VdbeAddOp2.exit158:                        ; preds = %bb.r, %bb.s
end_hunk_15
begin_hunk_16_@fkLookupParent:bb.a
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !710 ; 2 uses
  %i.pf = sext i32 %.val135 to i64
  %i.pg = getelementptr [24 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = getelementptr i8, ptr %i.pg, i64 -40
  store i32 %.val135, ptr %i.ph, align 8, !tbaa !955
  %i.pi = sext i32 %.0.i.i160 to i64
  %i.pj = getelementptr inbounds [24 x i8], ptr %i.pe, i64 %i.pi
  br label %sqlite3VdbeJumpHere.exit171

sqlite3VdbeJumpHere.exit171:                      ; preds = %sqlite3VdbeJumpHere.exit, %bb.ad
  %.0.i.i.i170 = phi ptr [ %i.pj, %bb.ad ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeJumpHere.exit ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.0.i.i.i170, i64 8
  store i32 %.val135, ptr %i.pk, align 8, !tbaa !955
  %.not.i172 = icmp eq i32 %.0.i140, 0
  br i1 %.not.i172, label %sqlite3ReleaseTempReg.exit, label %bb.ae

bb.ae:                                            ; preds = %sqlite3VdbeJumpHere.exit171
  %i.pl = load i8, ptr %i.gn, align 1, !tbaa !2330 ; 3 uses
  %i.pm = icmp ult i8 %i.pl, 8
  br i1 %i.pm, label %bb.af, label %sqlite3ReleaseTempReg.exit

bb.af:                                            ; preds = %bb.ae
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.po = add nuw nsw i8 %i.pl, 1
  store i8 %i.po, ptr %i.gn, align 1, !tbaa !2330
  %i.pp = zext nneg i8 %i.pl to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pp
  store i32 %.0.i140, ptr %i.pq, align 4, !tbaa !576
  br label %sqlite3ReleaseTempReg.exit

bb.ag:                                            ; preds = %bb.m
  %i.pr = icmp eq i32 %.lcssa, 1                  ; 2 uses
  br i1 %i.pr, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !2330 ; 2 uses
  %i.pu = icmp eq i8 %i.pt, 0
  br i1 %i.pu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !1213
  %i.px = add nsw i32 %i.pw, 1                    ; 2 uses
  store i32 %i.px, ptr %i.pv, align 4, !tbaa !1213
  br label %sqlite3GetTempRange.exit

bb.aj:                                            ; preds = %bb.ah
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.pz = add i8 %i.pt, -1                        ; 2 uses
  store i8 %i.pz, ptr %i.ps, align 1, !tbaa !2330
  %i.qa = zext i8 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.qa
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !576
  br label %sqlite3GetTempRange.exit

bb.ak:                                            ; preds = %bb.ag
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !2331 ; 2 uses
  %.not.i173 = icmp sgt i32 %.lcssa, %i.qe
  br i1 %.not.i173, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !2365 ; 2 uses
  %i.qh = add nsw i32 %i.qg, %.lcssa
  store i32 %i.qh, ptr %i.qf, align 8, !tbaa !2365
  %i.qi = sub nsw i32 %i.qe, %.lcssa
  store i32 %i.qi, ptr %i.qd, align 4, !tbaa !2331
  br label %sqlite3GetTempRange.exit

bb.am:                                            ; preds = %bb.ak
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !1213 ; 2 uses
  %i.ql = add nsw i32 %i.qk, 1
  %i.qm = add nsw i32 %i.qk, %.lcssa
  store i32 %i.qm, ptr %i.qj, align 4, !tbaa !1213
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.ai, %bb.aj, %bb.al, %bb.am
  %.014.i = phi i32 [ %i.ql, %bb.am ], [ %i.qg, %bb.al ], [ %i.px, %bb.ai ], [ %i.qc, %bb.aj ] ; 7 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !2022 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 10 uses
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !711 ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.0.i, i64 148 ; 5 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !1206
  %.not.i174 = icmp sgt i32 %i.qs, %i.qq
  br i1 %.not.i174, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %sqlite3GetTempRange.exit
  %i.qt = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 113, i32 noundef %i.q, i32 noundef %i.qo, i32 noundef %1), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit176

bb.ao:                                            ; preds = %sqlite3GetTempRange.exit
  %i.qu = add nsw i32 %i.qq, 1
  store i32 %i.qu, ptr %i.qp, align 8, !tbaa !711
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !710
  %i.qx = sext i32 %i.qq to i64
  %i.qy = getelementptr inbounds [24 x i8], ptr %i.qw, i64 %i.qx ; 7 uses
  store i8 113, ptr %i.qy, align 8, !tbaa !938
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 2
  store i16 0, ptr %i.qz, align 2, !tbaa !957
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  store i32 %i.q, ptr %i.ra, align 4, !tbaa !954
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store i32 %i.qo, ptr %i.rb, align 8, !tbaa !955
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 12
  store i32 %1, ptr %i.rc, align 4, !tbaa !956
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store ptr null, ptr %i.rd, align 8, !tbaa !741
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 1
  store i8 0, ptr %i.re, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit176

sqlite3VdbeAddOp3.exit176:                        ; preds = %bb.an, %bb.ao
  %i.rf = load ptr, ptr %i.a, align 8, !tbaa !1233 ; 3 uses
  %i.rg = tail call fastcc ptr @sqlite3KeyInfoOfIndex(ptr noundef nonnull %0, ptr noundef nonnull %3) ; 3 uses
  %.not.i177 = icmp eq ptr %i.rg, null
  br i1 %.not.i177, label %sqlite3VdbeSetP4KeyInfo.exit, label %bb.ap

bb.ap:                                            ; preds = %sqlite3VdbeAddOp3.exit176
  %i.rh = load ptr, ptr %i.rf, align 8, !tbaa !687 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 103
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !928
  %.not.i.i178 = icmp eq i8 %i.rj, 0
  br i1 %.not.i.i178, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 792
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !646
  %i.rm = icmp eq ptr %i.rl, null
  br i1 %i.rm, label %bb.ar, label %sqlite3VdbeSetP4KeyInfo.exit

bb.ar:                                            ; preds = %bb.aq
  tail call fastcc void @sqlite3KeyInfoUnref(ptr noundef nonnull %i.rg)
  br label %sqlite3VdbeSetP4KeyInfo.exit

bb.as:                                            ; preds = %bb.ap
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rf, i64 136
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !710
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rf, i64 144
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !711
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr [24 x i8], ptr %i.ro, i64 %i.rr ; 2 uses
  %i.rt = getelementptr i8, ptr %i.rs, i64 -23
  store i8 -8, ptr %i.rt, align 1, !tbaa !939
  %i.ru = getelementptr i8, ptr %i.rs, i64 -8
  store ptr %i.rg, ptr %i.ru, align 8, !tbaa !741
  br label %sqlite3VdbeSetP4KeyInfo.exit

sqlite3VdbeSetP4KeyInfo.exit:                     ; preds = %sqlite3VdbeAddOp3.exit176, %bb.aq, %bb.ar, %bb.as
  %i.rv = icmp sgt i32 %.lcssa, 0                 ; 2 uses
  br i1 %i.rv, label %.lr.ph257, label %._crit_edge258

.lr.ph257:                                        ; preds = %sqlite3VdbeSetP4KeyInfo.exit
  %i.rw = add i32 %6, 1
  %i.rx = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ry = zext i32 %.014.i to i64
  %wide.trip.count = zext nneg i32 %.lcssa to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph257, %sqlite3VdbeAddOp2.exit196
  %indvars.iv265 = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next266, %sqlite3VdbeAddOp2.exit196 ] ; 3 uses
  %i.rz = load ptr, ptr %4, align 8, !tbaa !2233  ; 3 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv265
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !576 ; 2 uses
  %i.sc = trunc i32 %i.sb to i16                  ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 48
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !1098
  %i.sf = and i32 %i.se, 32
  %i.sg = icmp eq i32 %i.sf, 0
  %i.sh = icmp slt i16 %i.sc, 0
  %or.cond.i179 = or i1 %i.sh, %i.sg
  br i1 %or.cond.i179, label %sqlite3TableColumnToStorage.exit193, label %.preheader.i180

.preheader.i180:                                  ; preds = %bb.at
  %sext252 = and i32 %i.sb, 32767                 ; 3 uses
  %.not23.i181 = icmp eq i16 %i.sc, 0
  %i.si = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !1162 ; 22 uses
  %.pre280 = zext nneg i32 %sext252 to i64        ; 6 uses
  br i1 %.not23.i181, label %._crit_edge.i189, label %iter.check344

iter.check344:                                    ; preds = %.preheader.i180
  %min.iters.check330 = icmp samesign ult i32 %sext252, 5
  br i1 %min.iters.check330, label %.lr.ph.i182.preheader, label %vector.main.loop.iter.check331

vector.main.loop.iter.check331:                   ; preds = %iter.check344
  %min.iters.check332 = icmp samesign ult i32 %sext252, 17
  br i1 %min.iters.check332, label %vec.epilog.ph348, label %vector.ph333

vector.ph333:                                     ; preds = %vector.main.loop.iter.check331
  %i.sk = and i64 %.pre280, 15                    ; 2 uses
  %i.sl = icmp eq i64 %i.sk, 0
  %i.sm = select i1 %i.sl, i64 16, i64 %i.sk      ; 2 uses
  %n.vec334 = sub nsw i64 %.pre280, %i.sm         ; 3 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.ph333, %vector.body335
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 17 uses
  %vec.phi337 = phi <8 x i16> [ zeroinitializer, %vector.ph333 ], [ %i.vf, %vector.body335 ]
  %vec.phi338 = phi <8 x i16> [ zeroinitializer, %vector.ph333 ], [ %i.vg, %vector.body335 ]
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.sr = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.st = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.su = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.sv = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.sw = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.sy = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.sz = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.ta = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.tc = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index336
  %i.td = getelementptr inbounds nuw i8, ptr %i.sn, i64 14
  %i.te = getelementptr inbounds nuw i8, ptr %i.so, i64 30
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sp, i64 46
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sq, i64 62
  %i.th = getelementptr inbounds nuw i8, ptr %i.sr, i64 78
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ss, i64 94
  %i.tj = getelementptr inbounds nuw i8, ptr %i.st, i64 110
  %i.tk = getelementptr inbounds nuw i8, ptr %i.su, i64 126
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sv, i64 142
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sw, i64 158
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sx, i64 174
  %i.to = getelementptr inbounds nuw i8, ptr %i.sy, i64 190
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sz, i64 206
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ta, i64 222
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tb, i64 238
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tc, i64 254
  %i.tt = load i16, ptr %i.td, align 2, !tbaa !1164
  %i.tu = load i16, ptr %i.te, align 2, !tbaa !1164
  %i.tv = load i16, ptr %i.tf, align 2, !tbaa !1164
  %i.tw = load i16, ptr %i.tg, align 2, !tbaa !1164
  %i.tx = load i16, ptr %i.th, align 2, !tbaa !1164
  %i.ty = load i16, ptr %i.ti, align 2, !tbaa !1164
  %i.tz = load i16, ptr %i.tj, align 2, !tbaa !1164
  %i.ua = load i16, ptr %i.tk, align 2, !tbaa !1164
  %i.ub = insertelement <8 x i16> poison, i16 %i.tt, i64 0
  %i.uc = insertelement <8 x i16> %i.ub, i16 %i.tu, i64 1
  %i.ud = insertelement <8 x i16> %i.uc, i16 %i.tv, i64 2
  %i.ue = insertelement <8 x i16> %i.ud, i16 %i.tw, i64 3
  %i.uf = insertelement <8 x i16> %i.ue, i16 %i.tx, i64 4
  %i.ug = insertelement <8 x i16> %i.uf, i16 %i.ty, i64 5
  %i.uh = insertelement <8 x i16> %i.ug, i16 %i.tz, i64 6
  %i.ui = insertelement <8 x i16> %i.uh, i16 %i.ua, i64 7
  %i.uj = load i16, ptr %i.tl, align 2, !tbaa !1164
  %i.uk = load i16, ptr %i.tm, align 2, !tbaa !1164
  %i.ul = load i16, ptr %i.tn, align 2, !tbaa !1164
  %i.um = load i16, ptr %i.to, align 2, !tbaa !1164
  %i.un = load i16, ptr %i.tp, align 2, !tbaa !1164
  %i.uo = load i16, ptr %i.tq, align 2, !tbaa !1164
  %i.up = load i16, ptr %i.tr, align 2, !tbaa !1164
  %i.uq = load i16, ptr %i.ts, align 2, !tbaa !1164
  %i.ur = insertelement <8 x i16> poison, i16 %i.uj, i64 0
  %i.us = insertelement <8 x i16> %i.ur, i16 %i.uk, i64 1
  %i.ut = insertelement <8 x i16> %i.us, i16 %i.ul, i64 2
  %i.uu = insertelement <8 x i16> %i.ut, i16 %i.um, i64 3
  %i.uv = insertelement <8 x i16> %i.uu, i16 %i.un, i64 4
  %i.uw = insertelement <8 x i16> %i.uv, i16 %i.uo, i64 5
  %i.ux = insertelement <8 x i16> %i.uw, i16 %i.up, i64 6
  %i.uy = insertelement <8 x i16> %i.ux, i16 %i.uq, i64 7
  %i.uz = lshr <8 x i16> %i.ui, splat (i16 5)
  %i.va = lshr <8 x i16> %i.uy, splat (i16 5)
  %i.vb = and <8 x i16> %i.uz, splat (i16 1)
  %i.vc = and <8 x i16> %i.va, splat (i16 1)
  %i.vd = xor <8 x i16> %i.vb, splat (i16 1)
  %i.ve = xor <8 x i16> %i.vc, splat (i16 1)
  %i.vf = add <8 x i16> %i.vd, %vec.phi337        ; 2 uses
  %i.vg = add <8 x i16> %i.ve, %vec.phi338        ; 2 uses
  %index.next339 = add nuw i64 %index336, 16      ; 2 uses
  %i.vh = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.vh, label %vec.epilog.iter.check346, label %vector.body335, !llvm.loop !6049

vec.epilog.iter.check346:                         ; preds = %vector.body335
  %bin.rdx341 = add <8 x i16> %i.vg, %i.vf
  %i.vi = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx341) ; 2 uses
  %min.epilog.iters.check347 = icmp samesign ult i64 %i.sm, 5
  br i1 %min.epilog.iters.check347, label %.lr.ph.i182.preheader, label %vec.epilog.ph348, !prof !1165

vec.epilog.ph348:                                 ; preds = %vector.main.loop.iter.check331, %vec.epilog.iter.check346
  %vec.epilog.resume.val342 = phi i64 [ %n.vec334, %vec.epilog.iter.check346 ], [ 0, %vector.main.loop.iter.check331 ]
  %bc.merge.rdx343 = phi i16 [ %i.vi, %vec.epilog.iter.check346 ], [ 0, %vector.main.loop.iter.check331 ]
  %i.vj = and i64 %.pre280, 3                     ; 2 uses
  %i.vk = icmp eq i64 %i.vj, 0
  %i.vl = select i1 %i.vk, i64 4, i64 %i.vj
  %n.vec349 = sub nsw i64 %.pre280, %i.vl         ; 2 uses
  %i.vm = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx343, i64 0
  br label %vec.epilog.vector.body350

vec.epilog.vector.body350:                        ; preds = %vec.epilog.vector.body350, %vec.epilog.ph348
  %index351 = phi i64 [ %vec.epilog.resume.val342, %vec.epilog.ph348 ], [ %index.next353, %vec.epilog.vector.body350 ] ; 5 uses
  %vec.phi352 = phi <4 x i16> [ %i.vm, %vec.epilog.ph348 ], [ %i.wg, %vec.epilog.vector.body350 ]
  %i.vn = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %index351
  %i.vo = getelementptr [16 x i8], ptr %i.sj, i64 %index351
  %i.vp = getelementptr [16 x i8], ptr %i.sj, i64 %index351
  %i.vq = getelementptr [16 x i8], ptr %i.sj, i64 %index351
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 14
  %i.vs = getelementptr i8, ptr %i.vo, i64 30
  %i.vt = getelementptr i8, ptr %i.vp, i64 46
  %i.vu = getelementptr i8, ptr %i.vq, i64 62
  %i.vv = load i16, ptr %i.vr, align 2, !tbaa !1164
  %i.vw = load i16, ptr %i.vs, align 2, !tbaa !1164
  %i.vx = load i16, ptr %i.vt, align 2, !tbaa !1164
  %i.vy = load i16, ptr %i.vu, align 2, !tbaa !1164
  %i.vz = insertelement <4 x i16> poison, i16 %i.vv, i64 0
  %i.wa = insertelement <4 x i16> %i.vz, i16 %i.vw, i64 1
  %i.wb = insertelement <4 x i16> %i.wa, i16 %i.vx, i64 2
  %i.wc = insertelement <4 x i16> %i.wb, i16 %i.vy, i64 3
  %i.wd = lshr <4 x i16> %i.wc, splat (i16 5)
  %i.we = and <4 x i16> %i.wd, splat (i16 1)
  %i.wf = xor <4 x i16> %i.we, splat (i16 1)
  %i.wg = add <4 x i16> %i.wf, %vec.phi352        ; 2 uses
  %index.next353 = add nuw i64 %index351, 4       ; 2 uses
  %i.wh = icmp eq i64 %index.next353, %n.vec349
  br i1 %i.wh, label %vec.epilog.middle.block354, label %vec.epilog.vector.body350, !llvm.loop !6050

vec.epilog.middle.block354:                       ; preds = %vec.epilog.vector.body350
  %i.wi = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.wg)
  br label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %iter.check344, %vec.epilog.iter.check346, %vec.epilog.middle.block354
  %indvars.iv.i184.ph = phi i64 [ 0, %iter.check344 ], [ %n.vec334, %vec.epilog.iter.check346 ], [ %n.vec349, %vec.epilog.middle.block354 ]
  %.021.i185.ph = phi i16 [ 0, %iter.check344 ], [ %i.vi, %vec.epilog.iter.check346 ], [ %i.wi, %vec.epilog.middle.block354 ]
  br label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.preheader, %.lr.ph.i182
  %indvars.iv.i184 = phi i64 [ %indvars.iv.next.i187, %.lr.ph.i182 ], [ %indvars.iv.i184.ph, %.lr.ph.i182.preheader ] ; 2 uses
  %.021.i185 = phi i16 [ %spec.select.i186, %.lr.ph.i182 ], [ %.021.i185.ph, %.lr.ph.i182.preheader ]
  %i.wj = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %indvars.iv.i184
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 14
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !1164
  %i.wm = lshr i16 %i.wl, 5
  %i.wn = and i16 %i.wm, 1
  %i.wo = xor i16 %i.wn, 1
  %spec.select.i186 = add i16 %i.wo, %.021.i185   ; 2 uses
  %indvars.iv.next.i187 = add nuw nsw i64 %indvars.iv.i184, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i187, %.pre280
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i182, !llvm.loop !6051

._crit_edge.i189:                                 ; preds = %.lr.ph.i182, %.preheader.i180
  %.0.lcssa.i190 = phi i16 [ 0, %.preheader.i180 ], [ %spec.select.i186, %.lr.ph.i182 ] ; 2 uses
  %i.wp = getelementptr inbounds nuw [16 x i8], ptr %i.sj, i64 %.pre280
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 14
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !1164
  %i.ws = and i16 %i.wr, 32
  %.not.i191 = icmp eq i16 %i.ws, 0
  br i1 %.not.i191, label %sqlite3TableColumnToStorage.exit193, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i189
  %i.wt = getelementptr inbounds nuw i8, ptr %i.rz, i64 56
  %i.wu = load i16, ptr %i.wt, align 8, !tbaa !1166
  %i.wv = sub i16 %i.sc, %.0.lcssa.i190
  %i.ww = add i16 %i.wv, %i.wu
  br label %sqlite3TableColumnToStorage.exit193

sqlite3TableColumnToStorage.exit193:              ; preds = %bb.at, %._crit_edge.i189, %bb.au
  %.018.i192 = phi i16 [ %i.sc, %bb.at ], [ %i.ww, %bb.au ], [ %.0.lcssa.i190, %._crit_edge.i189 ]
  %i.wx = sext i16 %.018.i192 to i32
  %i.wy = add i32 %i.rw, %i.wx                    ; 2 uses
  %i.wz = add nuw i64 %indvars.iv265, %i.ry       ; 2 uses
  %i.xa = load i32, ptr %i.qp, align 8, !tbaa !711 ; 3 uses
  %i.xb = load i32, ptr %i.qr, align 4, !tbaa !1206
  %.not.i.i194 = icmp sgt i32 %i.xb, %i.xa
  br i1 %.not.i.i194, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %sqlite3TableColumnToStorage.exit193
  %i.xc = trunc i64 %i.wz to i32
  %i.xd = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 81, i32 noundef %i.wy, i32 noundef %i.xc, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit196

bb.aw:                                            ; preds = %sqlite3TableColumnToStorage.exit193
  %i.xe = add nsw i32 %i.xa, 1
  store i32 %i.xe, ptr %i.qp, align 8, !tbaa !711
  %i.xf = load ptr, ptr %i.rx, align 8, !tbaa !710
  %i.xg = sext i32 %i.xa to i64
  %i.xh = getelementptr inbounds [24 x i8], ptr %i.xf, i64 %i.xg ; 7 uses
  store i8 81, ptr %i.xh, align 8, !tbaa !938
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  store i16 0, ptr %i.xi, align 2, !tbaa !957
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  store i32 %i.wy, ptr %i.xj, align 4, !tbaa !954
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xl = trunc i64 %i.wz to i32
  store i32 %i.xl, ptr %i.xk, align 8, !tbaa !955
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xh, i64 12
  store i32 0, ptr %i.xm, align 4, !tbaa !956
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  store ptr null, ptr %i.xn, align 8, !tbaa !741
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  store i8 0, ptr %i.xo, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit196

sqlite3VdbeAddOp2.exit196:                        ; preds = %bb.av, %bb.aw
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge258, label %bb.at, !llvm.loop !6052

._crit_edge258:                                   ; preds = %sqlite3VdbeAddOp2.exit196, %sqlite3VdbeSetP4KeyInfo.exit
  %i.xp = load ptr, ptr %4, align 8, !tbaa !2233
  %i.xq = icmp eq ptr %2, %i.xp
  %i.xr = icmp eq i32 %7, 1
  %or.cond3 = and i1 %i.xr, %i.xq
  br i1 %or.cond3, label %bb.ax, label %sqlite3VdbeGoto.exit233

bb.ax:                                            ; preds = %._crit_edge258
  %.val = load i32, ptr %i.qp, align 8, !tbaa !711 ; 3 uses
  %i.xs = add i32 %.lcssa, 1
  %i.xt = add i32 %i.xs, %.val                    ; 2 uses
  br i1 %i.rv, label %.lr.ph261, label %._crit_edge262

.lr.ph261:                                        ; preds = %bb.ax
  %i.xu = add i32 %6, 1                           ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.xw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.xy = getelementptr inbounds nuw i8, ptr %.0.i, i64 136 ; 2 uses
  %wide.trip.count271 = zext nneg i32 %.lcssa to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph261, %sqlite3VdbeChangeP5.exit230
  %i.xz = phi i32 [ %.val, %.lr.ph261 ], [ %i.aiq, %sqlite3VdbeChangeP5.exit230 ] ; 3 uses
  %indvars.iv268 = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next269, %sqlite3VdbeChangeP5.exit230 ] ; 3 uses
  %i.ya = load ptr, ptr %4, align 8, !tbaa !2233  ; 3 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv268
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !576 ; 2 uses
  %i.yd = trunc i32 %i.yc to i16                  ; 4 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ya, i64 48
  %i.yf = load i32, ptr %i.ye, align 8, !tbaa !1098
  %i.yg = and i32 %i.yf, 32
  %i.yh = icmp eq i32 %i.yg, 0
  %i.yi = icmp slt i16 %i.yd, 0
  %or.cond.i197 = or i1 %i.yi, %i.yh
  br i1 %or.cond.i197, label %sqlite3TableColumnToStorage.exit211, label %.preheader.i198

.preheader.i198:                                  ; preds = %bb.ay
  %sext = and i32 %i.yc, 32767                    ; 3 uses
  %.not23.i199 = icmp eq i16 %i.yd, 0
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !1162 ; 22 uses
  %.pre278 = zext nneg i32 %sext to i64           ; 6 uses
  br i1 %.not23.i199, label %._crit_edge.i207, label %iter.check398

iter.check398:                                    ; preds = %.preheader.i198
  %min.iters.check384 = icmp samesign ult i32 %sext, 5
  br i1 %min.iters.check384, label %.lr.ph.i200.preheader, label %vector.main.loop.iter.check385

vector.main.loop.iter.check385:                   ; preds = %iter.check398
  %min.iters.check386 = icmp samesign ult i32 %sext, 17
  br i1 %min.iters.check386, label %vec.epilog.ph402, label %vector.ph387

vector.ph387:                                     ; preds = %vector.main.loop.iter.check385
  %i.yl = and i64 %.pre278, 15                    ; 2 uses
  %i.ym = icmp eq i64 %i.yl, 0
  %i.yn = select i1 %i.ym, i64 16, i64 %i.yl      ; 2 uses
  %n.vec388 = sub nsw i64 %.pre278, %i.yn         ; 3 uses
  br label %vector.body389

vector.body389:                                   ; preds = %vector.ph387, %vector.body389
  %index390 = phi i64 [ 0, %vector.ph387 ], [ %index.next393, %vector.body389 ] ; 17 uses
  %vec.phi391 = phi <8 x i16> [ zeroinitializer, %vector.ph387 ], [ %i.abg, %vector.body389 ]
  %vec.phi392 = phi <8 x i16> [ zeroinitializer, %vector.ph387 ], [ %i.abh, %vector.body389 ]
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.yq = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.yr = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.yt = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.yu = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.yv = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.yw = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.yx = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.yy = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.yz = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.za = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.zb = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.zc = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.zd = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index390
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yo, i64 14
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yp, i64 30
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yq, i64 46
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yr, i64 62
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ys, i64 78
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yt, i64 94
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yu, i64 110
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yv, i64 126
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yw, i64 142
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yx, i64 158
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yy, i64 174
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yz, i64 190
  %i.zq = getelementptr inbounds nuw i8, ptr %i.za, i64 206
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zb, i64 222
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zc, i64 238
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zd, i64 254
  %i.zu = load i16, ptr %i.ze, align 2, !tbaa !1164
  %i.zv = load i16, ptr %i.zf, align 2, !tbaa !1164
  %i.zw = load i16, ptr %i.zg, align 2, !tbaa !1164
  %i.zx = load i16, ptr %i.zh, align 2, !tbaa !1164
  %i.zy = load i16, ptr %i.zi, align 2, !tbaa !1164
  %i.zz = load i16, ptr %i.zj, align 2, !tbaa !1164
  %i.aaa = load i16, ptr %i.zk, align 2, !tbaa !1164
  %i.aab = load i16, ptr %i.zl, align 2, !tbaa !1164
  %i.aac = insertelement <8 x i16> poison, i16 %i.zu, i64 0
  %i.aad = insertelement <8 x i16> %i.aac, i16 %i.zv, i64 1
  %i.aae = insertelement <8 x i16> %i.aad, i16 %i.zw, i64 2
  %i.aaf = insertelement <8 x i16> %i.aae, i16 %i.zx, i64 3
  %i.aag = insertelement <8 x i16> %i.aaf, i16 %i.zy, i64 4
  %i.aah = insertelement <8 x i16> %i.aag, i16 %i.zz, i64 5
  %i.aai = insertelement <8 x i16> %i.aah, i16 %i.aaa, i64 6
  %i.aaj = insertelement <8 x i16> %i.aai, i16 %i.aab, i64 7
  %i.aak = load i16, ptr %i.zm, align 2, !tbaa !1164
  %i.aal = load i16, ptr %i.zn, align 2, !tbaa !1164
  %i.aam = load i16, ptr %i.zo, align 2, !tbaa !1164
  %i.aan = load i16, ptr %i.zp, align 2, !tbaa !1164
  %i.aao = load i16, ptr %i.zq, align 2, !tbaa !1164
  %i.aap = load i16, ptr %i.zr, align 2, !tbaa !1164
  %i.aaq = load i16, ptr %i.zs, align 2, !tbaa !1164
  %i.aar = load i16, ptr %i.zt, align 2, !tbaa !1164
  %i.aas = insertelement <8 x i16> poison, i16 %i.aak, i64 0
  %i.aat = insertelement <8 x i16> %i.aas, i16 %i.aal, i64 1
  %i.aau = insertelement <8 x i16> %i.aat, i16 %i.aam, i64 2
  %i.aav = insertelement <8 x i16> %i.aau, i16 %i.aan, i64 3
  %i.aaw = insertelement <8 x i16> %i.aav, i16 %i.aao, i64 4
  %i.aax = insertelement <8 x i16> %i.aaw, i16 %i.aap, i64 5
  %i.aay = insertelement <8 x i16> %i.aax, i16 %i.aaq, i64 6
  %i.aaz = insertelement <8 x i16> %i.aay, i16 %i.aar, i64 7
  %i.aba = lshr <8 x i16> %i.aaj, splat (i16 5)
  %i.abb = lshr <8 x i16> %i.aaz, splat (i16 5)
  %i.abc = and <8 x i16> %i.aba, splat (i16 1)
  %i.abd = and <8 x i16> %i.abb, splat (i16 1)
  %i.abe = xor <8 x i16> %i.abc, splat (i16 1)
  %i.abf = xor <8 x i16> %i.abd, splat (i16 1)
  %i.abg = add <8 x i16> %i.abe, %vec.phi391      ; 2 uses
  %i.abh = add <8 x i16> %i.abf, %vec.phi392      ; 2 uses
  %index.next393 = add nuw i64 %index390, 16      ; 2 uses
  %i.abi = icmp eq i64 %index.next393, %n.vec388
  br i1 %i.abi, label %vec.epilog.iter.check400, label %vector.body389, !llvm.loop !6053

vec.epilog.iter.check400:                         ; preds = %vector.body389
  %bin.rdx395 = add <8 x i16> %i.abh, %i.abg
  %i.abj = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx395) ; 2 uses
  %min.epilog.iters.check401 = icmp samesign ult i64 %i.yn, 5
  br i1 %min.epilog.iters.check401, label %.lr.ph.i200.preheader, label %vec.epilog.ph402, !prof !1165

vec.epilog.ph402:                                 ; preds = %vector.main.loop.iter.check385, %vec.epilog.iter.check400
  %vec.epilog.resume.val396 = phi i64 [ %n.vec388, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check385 ]
  %bc.merge.rdx397 = phi i16 [ %i.abj, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check385 ]
  %i.abk = and i64 %.pre278, 3                    ; 2 uses
  %i.abl = icmp eq i64 %i.abk, 0
  %i.abm = select i1 %i.abl, i64 4, i64 %i.abk
  %n.vec403 = sub nsw i64 %.pre278, %i.abm        ; 2 uses
  %i.abn = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx397, i64 0
  br label %vec.epilog.vector.body404

vec.epilog.vector.body404:                        ; preds = %vec.epilog.vector.body404, %vec.epilog.ph402
  %index405 = phi i64 [ %vec.epilog.resume.val396, %vec.epilog.ph402 ], [ %index.next407, %vec.epilog.vector.body404 ] ; 5 uses
  %vec.phi406 = phi <4 x i16> [ %i.abn, %vec.epilog.ph402 ], [ %i.ach, %vec.epilog.vector.body404 ]
  %i.abo = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %index405
  %i.abp = getelementptr [16 x i8], ptr %i.yk, i64 %index405
  %i.abq = getelementptr [16 x i8], ptr %i.yk, i64 %index405
  %i.abr = getelementptr [16 x i8], ptr %i.yk, i64 %index405
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abo, i64 14
  %i.abt = getelementptr i8, ptr %i.abp, i64 30
  %i.abu = getelementptr i8, ptr %i.abq, i64 46
  %i.abv = getelementptr i8, ptr %i.abr, i64 62
  %i.abw = load i16, ptr %i.abs, align 2, !tbaa !1164
  %i.abx = load i16, ptr %i.abt, align 2, !tbaa !1164
  %i.aby = load i16, ptr %i.abu, align 2, !tbaa !1164
  %i.abz = load i16, ptr %i.abv, align 2, !tbaa !1164
  %i.aca = insertelement <4 x i16> poison, i16 %i.abw, i64 0
  %i.acb = insertelement <4 x i16> %i.aca, i16 %i.abx, i64 1
  %i.acc = insertelement <4 x i16> %i.acb, i16 %i.aby, i64 2
  %i.acd = insertelement <4 x i16> %i.acc, i16 %i.abz, i64 3
  %i.ace = lshr <4 x i16> %i.acd, splat (i16 5)
  %i.acf = and <4 x i16> %i.ace, splat (i16 1)
  %i.acg = xor <4 x i16> %i.acf, splat (i16 1)
  %i.ach = add <4 x i16> %i.acg, %vec.phi406      ; 2 uses
  %index.next407 = add nuw i64 %index405, 4       ; 2 uses
  %i.aci = icmp eq i64 %index.next407, %n.vec403
  br i1 %i.aci, label %vec.epilog.middle.block408, label %vec.epilog.vector.body404, !llvm.loop !6054

vec.epilog.middle.block408:                       ; preds = %vec.epilog.vector.body404
  %i.acj = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ach)
  br label %.lr.ph.i200.preheader

.lr.ph.i200.preheader:                            ; preds = %iter.check398, %vec.epilog.iter.check400, %vec.epilog.middle.block408
  %indvars.iv.i202.ph = phi i64 [ 0, %iter.check398 ], [ %n.vec388, %vec.epilog.iter.check400 ], [ %n.vec403, %vec.epilog.middle.block408 ]
  %.021.i203.ph = phi i16 [ 0, %iter.check398 ], [ %i.abj, %vec.epilog.iter.check400 ], [ %i.acj, %vec.epilog.middle.block408 ]
  br label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %.lr.ph.i200.preheader, %.lr.ph.i200
  %indvars.iv.i202 = phi i64 [ %indvars.iv.next.i205, %.lr.ph.i200 ], [ %indvars.iv.i202.ph, %.lr.ph.i200.preheader ] ; 2 uses
  %.021.i203 = phi i16 [ %spec.select.i204, %.lr.ph.i200 ], [ %.021.i203.ph, %.lr.ph.i200.preheader ]
  %i.ack = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %indvars.iv.i202
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 14
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !1164
  %i.acn = lshr i16 %i.acm, 5
  %i.aco = and i16 %i.acn, 1
  %i.acp = xor i16 %i.aco, 1
  %spec.select.i204 = add i16 %i.acp, %.021.i203  ; 2 uses
  %indvars.iv.next.i205 = add nuw nsw i64 %indvars.iv.i202, 1 ; 2 uses
  %exitcond.not.i206 = icmp eq i64 %indvars.iv.next.i205, %.pre278
  br i1 %exitcond.not.i206, label %._crit_edge.i207, label %.lr.ph.i200, !llvm.loop !6055

._crit_edge.i207:                                 ; preds = %.lr.ph.i200, %.preheader.i198
  %.0.lcssa.i208 = phi i16 [ 0, %.preheader.i198 ], [ %spec.select.i204, %.lr.ph.i200 ] ; 2 uses
  %i.acq = getelementptr inbounds nuw [16 x i8], ptr %i.yk, i64 %.pre278
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 14
  %i.acs = load i16, ptr %i.acr, align 2, !tbaa !1164
  %i.act = and i16 %i.acs, 32
  %.not.i209 = icmp eq i16 %i.act, 0
  br i1 %.not.i209, label %sqlite3TableColumnToStorage.exit211, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i207
  %i.acu = getelementptr inbounds nuw i8, ptr %i.ya, i64 56
  %i.acv = load i16, ptr %i.acu, align 8, !tbaa !1166
  %i.acw = sub i16 %i.yd, %.0.lcssa.i208
  %i.acx = add i16 %i.acw, %i.acv
  br label %sqlite3TableColumnToStorage.exit211

sqlite3TableColumnToStorage.exit211:              ; preds = %bb.ay, %._crit_edge.i207, %bb.az
  %.018.i210 = phi i16 [ %i.yd, %bb.ay ], [ %i.acx, %bb.az ], [ %.0.lcssa.i208, %._crit_edge.i207 ]
  %i.acy = sext i16 %.018.i210 to i32
  %i.acz = add i32 %i.xu, %i.acy                  ; 2 uses
  %i.ada = load ptr, ptr %i.xv, align 8, !tbaa !1295 ; 3 uses
  %i.adb = load ptr, ptr %i.xw, align 8, !tbaa !1159
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %i.adb, i64 %indvars.iv268
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !789 ; 10 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ada, i64 48
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !1098
  %i.adg = and i32 %i.adf, 32
  %i.adh = icmp eq i32 %i.adg, 0
  %wide.trip.count.i216 = sext i16 %i.add to i64  ; 6 uses
  %i.adi = icmp slt i16 %i.add, 0
  %or.cond.i212 = or i1 %i.adi, %i.adh
  br i1 %or.cond.i212, label %sqlite3TableColumnToStorage.exit226, label %.preheader.i213

.preheader.i213:                                  ; preds = %sqlite3TableColumnToStorage.exit211
  %.not23.i214 = icmp eq i16 %i.add, 0
  %i.adj = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !1162 ; 22 uses
  br i1 %.not23.i214, label %._crit_edge.i222, label %iter.check371

iter.check371:                                    ; preds = %.preheader.i213
  %min.iters.check357 = icmp ult i16 %i.add, 5
  br i1 %min.iters.check357, label %vec.epilog.scalar.ph372.preheader, label %vector.main.loop.iter.check358

vector.main.loop.iter.check358:                   ; preds = %iter.check371
  %min.iters.check359 = icmp ult i16 %i.add, 17
  br i1 %min.iters.check359, label %vec.epilog.ph375, label %vector.ph360

vector.ph360:                                     ; preds = %vector.main.loop.iter.check358
  %i.adl = and i64 %wide.trip.count.i216, 15
  %i.adm = and i16 %i.add, 15
  %i.adn = icmp eq i16 %i.adm, 0
  %i.ado = select i1 %i.adn, i64 16, i64 %i.adl   ; 2 uses
  %n.vec361 = sub nsw i64 %wide.trip.count.i216, %i.ado ; 3 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.ph360, %vector.body362
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next366, %vector.body362 ] ; 17 uses
  %vec.phi364 = phi <8 x i16> [ zeroinitializer, %vector.ph360 ], [ %i.agh, %vector.body362 ]
  %vec.phi365 = phi <8 x i16> [ zeroinitializer, %vector.ph360 ], [ %i.agi, %vector.body362 ]
  %i.adp = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.adq = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.adr = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.ads = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.adt = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.adu = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.adv = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.adw = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.adx = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.ady = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.adz = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.aea = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.aeb = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.aec = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.aed = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.aee = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index363
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adp, i64 14
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adq, i64 30
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adr, i64 46
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ads, i64 62
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adt, i64 78
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adu, i64 94
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adv, i64 110
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adw, i64 126
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adx, i64 142
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ady, i64 158
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adz, i64 174
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aea, i64 190
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeb, i64 206
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 222
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aed, i64 238
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aee, i64 254
  %i.aev = load i16, ptr %i.aef, align 2, !tbaa !1164
  %i.aew = load i16, ptr %i.aeg, align 2, !tbaa !1164
  %i.aex = load i16, ptr %i.aeh, align 2, !tbaa !1164
  %i.aey = load i16, ptr %i.aei, align 2, !tbaa !1164
  %i.aez = load i16, ptr %i.aej, align 2, !tbaa !1164
  %i.afa = load i16, ptr %i.aek, align 2, !tbaa !1164
  %i.afb = load i16, ptr %i.ael, align 2, !tbaa !1164
  %i.afc = load i16, ptr %i.aem, align 2, !tbaa !1164
  %i.afd = insertelement <8 x i16> poison, i16 %i.aev, i64 0
  %i.afe = insertelement <8 x i16> %i.afd, i16 %i.aew, i64 1
  %i.aff = insertelement <8 x i16> %i.afe, i16 %i.aex, i64 2
  %i.afg = insertelement <8 x i16> %i.aff, i16 %i.aey, i64 3
  %i.afh = insertelement <8 x i16> %i.afg, i16 %i.aez, i64 4
  %i.afi = insertelement <8 x i16> %i.afh, i16 %i.afa, i64 5
  %i.afj = insertelement <8 x i16> %i.afi, i16 %i.afb, i64 6
  %i.afk = insertelement <8 x i16> %i.afj, i16 %i.afc, i64 7
  %i.afl = load i16, ptr %i.aen, align 2, !tbaa !1164
  %i.afm = load i16, ptr %i.aeo, align 2, !tbaa !1164
  %i.afn = load i16, ptr %i.aep, align 2, !tbaa !1164
  %i.afo = load i16, ptr %i.aeq, align 2, !tbaa !1164
  %i.afp = load i16, ptr %i.aer, align 2, !tbaa !1164
  %i.afq = load i16, ptr %i.aes, align 2, !tbaa !1164
  %i.afr = load i16, ptr %i.aet, align 2, !tbaa !1164
  %i.afs = load i16, ptr %i.aeu, align 2, !tbaa !1164
  %i.aft = insertelement <8 x i16> poison, i16 %i.afl, i64 0
  %i.afu = insertelement <8 x i16> %i.aft, i16 %i.afm, i64 1
  %i.afv = insertelement <8 x i16> %i.afu, i16 %i.afn, i64 2
  %i.afw = insertelement <8 x i16> %i.afv, i16 %i.afo, i64 3
  %i.afx = insertelement <8 x i16> %i.afw, i16 %i.afp, i64 4
  %i.afy = insertelement <8 x i16> %i.afx, i16 %i.afq, i64 5
  %i.afz = insertelement <8 x i16> %i.afy, i16 %i.afr, i64 6
  %i.aga = insertelement <8 x i16> %i.afz, i16 %i.afs, i64 7
  %i.agb = lshr <8 x i16> %i.afk, splat (i16 5)
  %i.agc = lshr <8 x i16> %i.aga, splat (i16 5)
  %i.agd = and <8 x i16> %i.agb, splat (i16 1)
  %i.age = and <8 x i16> %i.agc, splat (i16 1)
  %i.agf = xor <8 x i16> %i.agd, splat (i16 1)
  %i.agg = xor <8 x i16> %i.age, splat (i16 1)
  %i.agh = add <8 x i16> %i.agf, %vec.phi364      ; 2 uses
  %i.agi = add <8 x i16> %i.agg, %vec.phi365      ; 2 uses
  %index.next366 = add nuw i64 %index363, 16      ; 2 uses
  %i.agj = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.agj, label %vec.epilog.iter.check373, label %vector.body362, !llvm.loop !6056

vec.epilog.iter.check373:                         ; preds = %vector.body362
  %bin.rdx368 = add <8 x i16> %i.agi, %i.agh
  %i.agk = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx368) ; 2 uses
  %min.epilog.iters.check374 = icmp samesign ult i64 %i.ado, 5
  br i1 %min.epilog.iters.check374, label %vec.epilog.scalar.ph372.preheader, label %vec.epilog.ph375, !prof !1165

vec.epilog.ph375:                                 ; preds = %vector.main.loop.iter.check358, %vec.epilog.iter.check373
  %vec.epilog.resume.val369 = phi i64 [ %n.vec361, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check358 ]
  %bc.merge.rdx370 = phi i16 [ %i.agk, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check358 ]
  %i.agl = and i64 %wide.trip.count.i216, 3
  %i.agm = and i16 %i.add, 3
  %i.agn = icmp eq i16 %i.agm, 0
  %i.ago = select i1 %i.agn, i64 4, i64 %i.agl
  %n.vec376 = sub nsw i64 %wide.trip.count.i216, %i.ago ; 2 uses
  %i.agp = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx370, i64 0
  br label %vec.epilog.vector.body377

vec.epilog.vector.body377:                        ; preds = %vec.epilog.vector.body377, %vec.epilog.ph375
  %index378 = phi i64 [ %vec.epilog.resume.val369, %vec.epilog.ph375 ], [ %index.next380, %vec.epilog.vector.body377 ] ; 5 uses
  %vec.phi379 = phi <4 x i16> [ %i.agp, %vec.epilog.ph375 ], [ %i.ahj, %vec.epilog.vector.body377 ]
  %i.agq = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %index378
  %i.agr = getelementptr [16 x i8], ptr %i.adk, i64 %index378
  %i.ags = getelementptr [16 x i8], ptr %i.adk, i64 %index378
  %i.agt = getelementptr [16 x i8], ptr %i.adk, i64 %index378
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agq, i64 14
  %i.agv = getelementptr i8, ptr %i.agr, i64 30
  %i.agw = getelementptr i8, ptr %i.ags, i64 46
  %i.agx = getelementptr i8, ptr %i.agt, i64 62
  %i.agy = load i16, ptr %i.agu, align 2, !tbaa !1164
  %i.agz = load i16, ptr %i.agv, align 2, !tbaa !1164
  %i.aha = load i16, ptr %i.agw, align 2, !tbaa !1164
  %i.ahb = load i16, ptr %i.agx, align 2, !tbaa !1164
  %i.ahc = insertelement <4 x i16> poison, i16 %i.agy, i64 0
  %i.ahd = insertelement <4 x i16> %i.ahc, i16 %i.agz, i64 1
  %i.ahe = insertelement <4 x i16> %i.ahd, i16 %i.aha, i64 2
  %i.ahf = insertelement <4 x i16> %i.ahe, i16 %i.ahb, i64 3
  %i.ahg = lshr <4 x i16> %i.ahf, splat (i16 5)
  %i.ahh = and <4 x i16> %i.ahg, splat (i16 1)
  %i.ahi = xor <4 x i16> %i.ahh, splat (i16 1)
  %i.ahj = add <4 x i16> %i.ahi, %vec.phi379      ; 2 uses
  %index.next380 = add nuw i64 %index378, 4       ; 2 uses
  %i.ahk = icmp eq i64 %index.next380, %n.vec376
  br i1 %i.ahk, label %vec.epilog.middle.block381, label %vec.epilog.vector.body377, !llvm.loop !6057

vec.epilog.middle.block381:                       ; preds = %vec.epilog.vector.body377
  %i.ahl = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ahj)
  br label %vec.epilog.scalar.ph372.preheader

vec.epilog.scalar.ph372.preheader:                ; preds = %iter.check371, %vec.epilog.iter.check373, %vec.epilog.middle.block381
  %indvars.iv.i217.ph = phi i64 [ 0, %iter.check371 ], [ %n.vec361, %vec.epilog.iter.check373 ], [ %n.vec376, %vec.epilog.middle.block381 ]
  %.021.i218.ph = phi i16 [ 0, %iter.check371 ], [ %i.agk, %vec.epilog.iter.check373 ], [ %i.ahl, %vec.epilog.middle.block381 ]
  br label %vec.epilog.scalar.ph372

vec.epilog.scalar.ph372:                          ; preds = %vec.epilog.scalar.ph372.preheader, %vec.epilog.scalar.ph372
  %indvars.iv.i217 = phi i64 [ %indvars.iv.next.i220, %vec.epilog.scalar.ph372 ], [ %indvars.iv.i217.ph, %vec.epilog.scalar.ph372.preheader ] ; 2 uses
  %.021.i218 = phi i16 [ %spec.select.i219, %vec.epilog.scalar.ph372 ], [ %.021.i218.ph, %vec.epilog.scalar.ph372.preheader ]
  %i.ahm = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %indvars.iv.i217
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 14
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !1164
  %i.ahp = lshr i16 %i.aho, 5
  %i.ahq = and i16 %i.ahp, 1
  %i.ahr = xor i16 %i.ahq, 1
  %spec.select.i219 = add i16 %i.ahr, %.021.i218  ; 2 uses
  %indvars.iv.next.i220 = add nuw nsw i64 %indvars.iv.i217, 1 ; 2 uses
  %exitcond.not.i221 = icmp eq i64 %indvars.iv.next.i220, %wide.trip.count.i216
  br i1 %exitcond.not.i221, label %._crit_edge.i222, label %vec.epilog.scalar.ph372, !llvm.loop !6058

._crit_edge.i222:                                 ; preds = %vec.epilog.scalar.ph372, %.preheader.i213
  %.pre-phi277 = phi i64 [ 0, %.preheader.i213 ], [ %wide.trip.count.i216, %vec.epilog.scalar.ph372 ]
  %.0.lcssa.i223 = phi i16 [ 0, %.preheader.i213 ], [ %spec.select.i219, %vec.epilog.scalar.ph372 ] ; 2 uses
  %i.ahs = getelementptr inbounds nuw [16 x i8], ptr %i.adk, i64 %.pre-phi277
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 14
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !1164
  %i.ahv = and i16 %i.ahu, 32
  %.not.i224 = icmp eq i16 %i.ahv, 0
  br i1 %.not.i224, label %sqlite3TableColumnToStorage.exit226, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.i222
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ada, i64 56
  %i.ahx = load i16, ptr %i.ahw, align 8, !tbaa !1166
  %i.ahy = sub i16 %i.add, %.0.lcssa.i223
  %i.ahz = add i16 %i.ahy, %i.ahx
  br label %sqlite3TableColumnToStorage.exit226

sqlite3TableColumnToStorage.exit226:              ; preds = %sqlite3TableColumnToStorage.exit211, %._crit_edge.i222, %bb.ba
  %.018.i225 = phi i16 [ %i.add, %sqlite3TableColumnToStorage.exit211 ], [ %i.ahz, %bb.ba ], [ %.0.lcssa.i223, %._crit_edge.i222 ]
  %i.aia = sext i16 %.018.i225 to i32
  %i.aib = add nsw i32 %i.xu, %i.aia
  %i.aic = load i16, ptr %i.xx, align 4, !tbaa !1168
  %i.aid = icmp eq i16 %i.add, %i.aic
  %spec.select = select i1 %i.aid, i32 %6, i32 %i.aib ; 2 uses
  %i.aie = load i32, ptr %i.qr, align 4, !tbaa !1206
  %.not.i227 = icmp sgt i32 %i.aie, %i.xz
  br i1 %.not.i227, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %sqlite3TableColumnToStorage.exit226
  %i.aif = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 53, i32 noundef %i.acz, i32 noundef %i.xt, i32 noundef %spec.select), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit229

bb.bc:                                            ; preds = %sqlite3TableColumnToStorage.exit226
  %i.aig = add nsw i32 %i.xz, 1
  store i32 %i.aig, ptr %i.qp, align 8, !tbaa !711
  %i.aih = load ptr, ptr %i.xy, align 8, !tbaa !710
  %i.aii = sext i32 %i.xz to i64
  %i.aij = getelementptr inbounds [24 x i8], ptr %i.aih, i64 %i.aii ; 7 uses
  store i8 53, ptr %i.aij, align 8, !tbaa !938
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 2
  store i16 0, ptr %i.aik, align 2, !tbaa !957
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aij, i64 4
  store i32 %i.acz, ptr %i.ail, align 4, !tbaa !954
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aij, i64 8
  store i32 %i.xt, ptr %i.aim, align 8, !tbaa !955
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aij, i64 12
  store i32 %spec.select, ptr %i.ain, align 4, !tbaa !956
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  store ptr null, ptr %i.aio, align 8, !tbaa !741
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aij, i64 1
  store i8 0, ptr %i.aip, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit229

sqlite3VdbeAddOp3.exit229:                        ; preds = %bb.bb, %bb.bc
end_hunk_16
begin_hunk_17_@fkScanChildren:bb.a
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %9, ptr %i.he, align 8, !tbaa !741
  %i.hf = getelementptr inbounds nuw i8, ptr %.1119, i64 40 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !2211
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !2326
  %i.hj = add nsw i32 %i.hi, %i.hg                ; 2 uses
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !2326
  %i.hk = load ptr, ptr %0, align 8, !tbaa !1001
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 148
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !576 ; 2 uses
  %i.hn = icmp sgt i32 %i.hj, %i.hm
  br i1 %i.hn, label %sqlite3ExprCheckHeight.exit.i, label %bb.av

sqlite3ExprCheckHeight.exit.i:                    ; preds = %bb.au
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.796, i32 noundef %i.hm), !inline_history !2374
  br label %sqlite3ResolveExprNames.exit

bb.av:                                            ; preds = %bb.au
  %i.ho = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %8, ptr noundef nonnull %.1119), !inline_history !2374 ; 0 uses
  %i.hp = load i32, ptr %i.hf, align 8, !tbaa !2211
  %i.hq = load ptr, ptr %8, align 8, !tbaa !2220
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 308 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !2326
  %i.ht = sub nsw i32 %i.hs, %i.hp
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !2326
  %i.hu = load i32, ptr %i.ha, align 8, !tbaa !2259 ; 2 uses
  %i.hv = and i32 %i.hu, 32784
  %i.hw = getelementptr inbounds nuw i8, ptr %.1119, i64 4 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !801
  %i.hy = or i32 %i.hx, %i.hv
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !801
  store i32 %i.hu, ptr %i.ha, align 8, !tbaa !2259
  br label %sqlite3ResolveExprNames.exit

sqlite3ResolveExprNames.exit:                     ; preds = %bb.av, %sqlite3ExprAnd.exit111.thread121, %sqlite3ExprAnd.exit111, %sqlite3ExprCheckHeight.exit.i
  %i.hz = phi i1 [ true, %sqlite3ExprAnd.exit111 ], [ false, %sqlite3ExprCheckHeight.exit.i ], [ false, %bb.av ], [ true, %sqlite3ExprAnd.exit111.thread121 ]
  %.1120 = phi ptr [ null, %sqlite3ExprAnd.exit111 ], [ %.1119, %sqlite3ExprCheckHeight.exit.i ], [ %.1119, %bb.av ], [ null, %sqlite3ExprAnd.exit111.thread121 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !786
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %sqlite3ResolveExprNames.exit
  %i.id = call fastcc ptr @sqlite3WhereBegin(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %.1120, ptr noundef null, ptr noundef null, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0) ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.if = load i8, ptr %i.ie, align 4, !tbaa !741
  %i.ig = zext i8 %i.if to i32                    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !711 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !1206
  %.not.i.i114 = icmp sgt i32 %i.ik, %i.ii
  br i1 %.not.i.i114, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.il = call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 159, i32 noundef %i.ig, i32 noundef %7, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit116

bb.ay:                                            ; preds = %bb.aw
  %i.im = add nsw i32 %i.ii, 1
  store i32 %i.im, ptr %i.ih, align 8, !tbaa !711
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !710
  %i.ip = sext i32 %i.ii to i64
  %i.iq = getelementptr inbounds [24 x i8], ptr %i.io, i64 %i.ip ; 7 uses
  store i8 -97, ptr %i.iq, align 8, !tbaa !938
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  store i16 0, ptr %i.ir, align 2, !tbaa !957
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i32 %i.ig, ptr %i.is, align 4, !tbaa !954
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i32 %7, ptr %i.it, align 8, !tbaa !955
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.iu, align 4, !tbaa !956
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store ptr null, ptr %i.iv, align 8, !tbaa !741
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  store i8 0, ptr %i.iw, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit116

sqlite3VdbeAddOp2.exit116:                        ; preds = %bb.ax, %bb.ay
  %.not = icmp eq ptr %i.id, null
  br i1 %.not, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %sqlite3VdbeAddOp2.exit116
  call fastcc void @sqlite3WhereEnd(ptr noundef nonnull %i.id)
  br label %bb.ba

bb.ba:                                            ; preds = %sqlite3VdbeAddOp2.exit116, %bb.az, %sqlite3ResolveExprNames.exit
  br i1 %i.hz, label %sqlite3ExprDelete.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.a, ptr noundef %.1120), !inline_history !2
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.ba, %bb.bb
  %.not91 = icmp eq i32 %.083, 0
  br i1 %.not91, label %sqlite3VdbeJumpHereOrPopInst.exit, label %bb.bc

bb.bc:                                            ; preds = %sqlite3ExprDelete.exit
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !711 ; 2 uses
  %i.iz = add nsw i32 %i.iy, -1
  %i.ja = icmp eq i32 %.083, %i.iz
  br i1 %i.ja, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 %.083, ptr %i.ix, align 8, !tbaa !711
  br label %sqlite3VdbeJumpHereOrPopInst.exit

bb.be:                                            ; preds = %bb.bc
  %i.jb = load ptr, ptr %.0.i, align 8, !tbaa !687
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 103
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !928
  %.not.i.i.i = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i, label %bb.bf, label %sqlite3VdbeChangeP2.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !710
  %i.jg = sext i32 %.083 to i64
  %i.jh = getelementptr inbounds [24 x i8], ptr %i.jf, i64 %i.jg
  br label %sqlite3VdbeChangeP2.exit.i

sqlite3VdbeChangeP2.exit.i:                       ; preds = %bb.bf, %bb.be
  %.0.i.i.i = phi ptr [ %i.jh, %bb.bf ], [ @sqlite3VdbeGetOp.dummy, %bb.be ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.iy, ptr %i.ji, align 8, !tbaa !955
  br label %sqlite3VdbeJumpHereOrPopInst.exit

sqlite3VdbeJumpHereOrPopInst.exit:                ; preds = %sqlite3VdbeChangeP2.exit.i, %bb.bd, %sqlite3ExprDelete.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @exprTableRegister(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i16 noundef signext %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1001   ; 2 uses
  %i.b = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef 73) ; 16 uses
  %.not24.i.i = icmp eq ptr %i.b, null
  br i1 %.not24.i.i, label %sqlite3ExprAddCollateString.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  store i8 -80, ptr %i.b, align 8, !tbaa !2042
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  store i16 -1, ptr %i.c, align 2, !tbaa !2210
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !741
  store i8 0, ptr %i.d, align 8, !tbaa !741
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 1, ptr %i.f, align 8, !tbaa !2211
  %i.g = icmp sgt i16 %3, -1
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.i = load i16, ptr %i.h, align 4, !tbaa !1168
  %.not27 = icmp eq i16 %3, %i.i
  br i1 %.not27, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1162 ; 22 uses
  %i.l = zext nneg i16 %3 to i64                  ; 6 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1098
  %i.p = and i32 %i.o, 32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.sqlite3TableColumnToStorage.exit_crit_edge, label %.preheader.i

.sqlite3TableColumnToStorage.exit_crit_edge:      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !1164
  br label %sqlite3TableColumnToStorage.exit

.preheader.i:                                     ; preds = %bb.d
  %.not23.i = icmp eq i16 %3, 0
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp ult i16 %3, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i16 %3, 17
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.l, 15                         ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 16, i64 %i.r         ; 2 uses
  %n.vec = sub nsw i64 %i.l, %i.t                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi36 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 30
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 46
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 62
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 94
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 110
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 126
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 142
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 158
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 174
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 190
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 206
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 222
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 238
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 254
  %i.ba = load i16, ptr %i.ak, align 2, !tbaa !1164
  %i.bb = load i16, ptr %i.al, align 2, !tbaa !1164
  %i.bc = load i16, ptr %i.am, align 2, !tbaa !1164
  %i.bd = load i16, ptr %i.an, align 2, !tbaa !1164
  %i.be = load i16, ptr %i.ao, align 2, !tbaa !1164
  %i.bf = load i16, ptr %i.ap, align 2, !tbaa !1164
  %i.bg = load i16, ptr %i.aq, align 2, !tbaa !1164
  %i.bh = load i16, ptr %i.ar, align 2, !tbaa !1164
  %i.bi = insertelement <8 x i16> poison, i16 %i.ba, i64 0
  %i.bj = insertelement <8 x i16> %i.bi, i16 %i.bb, i64 1
  %i.bk = insertelement <8 x i16> %i.bj, i16 %i.bc, i64 2
  %i.bl = insertelement <8 x i16> %i.bk, i16 %i.bd, i64 3
  %i.bm = insertelement <8 x i16> %i.bl, i16 %i.be, i64 4
  %i.bn = insertelement <8 x i16> %i.bm, i16 %i.bf, i64 5
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 6
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 7
  %i.bq = load i16, ptr %i.as, align 2, !tbaa !1164
  %i.br = load i16, ptr %i.at, align 2, !tbaa !1164
  %i.bs = load i16, ptr %i.au, align 2, !tbaa !1164
  %i.bt = load i16, ptr %i.av, align 2, !tbaa !1164
  %i.bu = load i16, ptr %i.aw, align 2, !tbaa !1164
  %i.bv = load i16, ptr %i.ax, align 2, !tbaa !1164
  %i.bw = load i16, ptr %i.ay, align 2, !tbaa !1164
  %i.bx = load i16, ptr %i.az, align 2, !tbaa !1164
  %i.by = insertelement <8 x i16> poison, i16 %i.bq, i64 0
  %i.bz = insertelement <8 x i16> %i.by, i16 %i.br, i64 1
  %i.ca = insertelement <8 x i16> %i.bz, i16 %i.bs, i64 2
  %i.cb = insertelement <8 x i16> %i.ca, i16 %i.bt, i64 3
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bu, i64 4
  %i.cd = insertelement <8 x i16> %i.cc, i16 %i.bv, i64 5
  %i.ce = insertelement <8 x i16> %i.cd, i16 %i.bw, i64 6
  %i.cf = insertelement <8 x i16> %i.ce, i16 %i.bx, i64 7
  %i.cg = lshr <8 x i16> %i.bp, splat (i16 5)
  %i.ch = lshr <8 x i16> %i.cf, splat (i16 5)
  %i.ci = and <8 x i16> %i.cg, splat (i16 1)
  %i.cj = and <8 x i16> %i.ch, splat (i16 1)
  %i.ck = xor <8 x i16> %i.ci, splat (i16 1)
  %i.cl = xor <8 x i16> %i.cj, splat (i16 1)
  %i.cm = add <8 x i16> %i.ck, %vec.phi           ; 2 uses
  %i.cn = add <8 x i16> %i.cl, %vec.phi36         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !6062

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.cn, %i.cm
  %i.cp = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.t, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.cp, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cq = and i64 %i.l, 3                         ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %i.cq
  %n.vec37 = sub nsw i64 %i.l, %i.cs              ; 2 uses
  %i.ct = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi39 = phi <4 x i16> [ %i.ct, %vec.epilog.ph ], [ %i.dn, %vec.epilog.vector.body ]
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index38
  %i.cv = getelementptr [16 x i8], ptr %i.k, i64 %index38
  %i.cw = getelementptr [16 x i8], ptr %i.k, i64 %index38
  %i.cx = getelementptr [16 x i8], ptr %i.k, i64 %index38
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 14
  %i.cz = getelementptr i8, ptr %i.cv, i64 30
  %i.da = getelementptr i8, ptr %i.cw, i64 46
  %i.db = getelementptr i8, ptr %i.cx, i64 62
  %i.dc = load i16, ptr %i.cy, align 2, !tbaa !1164
  %i.dd = load i16, ptr %i.cz, align 2, !tbaa !1164
  %i.de = load i16, ptr %i.da, align 2, !tbaa !1164
  %i.df = load i16, ptr %i.db, align 2, !tbaa !1164
  %i.dg = insertelement <4 x i16> poison, i16 %i.dc, i64 0
  %i.dh = insertelement <4 x i16> %i.dg, i16 %i.dd, i64 1
  %i.di = insertelement <4 x i16> %i.dh, i16 %i.de, i64 2
  %i.dj = insertelement <4 x i16> %i.di, i16 %i.df, i64 3
  %i.dk = lshr <4 x i16> %i.dj, splat (i16 5)
  %i.dl = and <4 x i16> %i.dk, splat (i16 1)
  %i.dm = xor <4 x i16> %i.dl, splat (i16 1)
  %i.dn = add <4 x i16> %i.dm, %vec.phi39         ; 2 uses
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6063

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dp = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dn)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ]
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 14
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !1164
  %i.dt = lshr i16 %i.ds, 5
  %i.du = and i16 %i.dt, 1
  %i.dv = xor i16 %i.du, 1
  %spec.select.i = add i16 %i.dv, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6064

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !1164 ; 3 uses
  %i.dy = and i16 %i.dx, 32
  %.not.i = icmp eq i16 %i.dy, 0
  br i1 %.not.i, label %sqlite3TableColumnToStorage.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ea = load i16, ptr %i.dz, align 8, !tbaa !1166
  %i.eb = sub i16 %3, %.0.lcssa.i
  %i.ec = add i16 %i.eb, %i.ea
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %.sqlite3TableColumnToStorage.exit_crit_edge, %._crit_edge.i, %bb.e
  %i.ed = phi i16 [ %.pre, %.sqlite3TableColumnToStorage.exit_crit_edge ], [ %i.dx, %bb.e ], [ %i.dx, %._crit_edge.i ] ; 2 uses
  %.018.i = phi i16 [ %3, %.sqlite3TableColumnToStorage.exit_crit_edge ], [ %i.ec, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.ee = sext i16 %.018.i to i32
  %i.ef = add i32 %2, 1
  %i.eg = add i32 %i.ef, %i.ee
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !2268
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !1181
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !2207
  %i.el = and i16 %i.ed, 512
  %i.em = icmp eq i16 %i.el, 0
  br i1 %i.em, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.en = load ptr, ptr %i.m, align 8, !tbaa !1198 ; 3 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.en) ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.en, i64 %strlen.i ; 2 uses
  %i.eo = and i16 %i.ed, 4
  %.not10.i = icmp eq i16 %i.eo, 0
  br i1 %.not10.i, label %.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.f
  %scevgep12.i = getelementptr i8, ptr %scevgep.i, i64 1
  %strlen13.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep12.i)
  %i.ep = getelementptr i8, ptr %i.en, i64 %strlen13.i
  %i.eq = getelementptr i8, ptr %i.ep, i64 %strlen.i
  %scevgep14.i = getelementptr i8, ptr %i.eq, i64 1
  br label %.thread

.thread:                                          ; preds = %.preheader.preheader.i, %bb.f
  %.2.i = phi ptr [ %scevgep.i, %bb.f ], [ %scevgep14.i, %.preheader.preheader.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br label %sqlite3TokenInit.exit.i

bb.g:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1395
end_hunk_17
begin_hunk_18_@sqlite3ComputeGeneratedColumns:bb.a
  br i1 %i.ca, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue
  %i.cb = or i16 %i.bh, 128
  store i16 %i.cb, ptr %i.az, align 2, !tbaa !1164
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue
  %i.cc = extractelement <8 x i1> %i.bx, i64 2
  br i1 %i.cc, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.cd = or i16 %i.bi, 128
  store i16 %i.cd, ptr %i.ba, align 2, !tbaa !1164
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.ce = extractelement <8 x i1> %i.bx, i64 3
  br i1 %i.ce, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.cf = or i16 %i.bj, 128
  store i16 %i.cf, ptr %i.bb, align 2, !tbaa !1164
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.cg = extractelement <8 x i1> %i.bx, i64 4
  br i1 %i.cg, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %i.ch = or i16 %i.bk, 128
  store i16 %i.ch, ptr %i.bc, align 2, !tbaa !1164
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.ci = extractelement <8 x i1> %i.bx, i64 5
  br i1 %i.ci, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  %i.cj = or i16 %i.bl, 128
  store i16 %i.cj, ptr %i.bd, align 2, !tbaa !1164
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.ck = extractelement <8 x i1> %i.bx, i64 6
  br i1 %i.ck, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  %i.cl = or i16 %i.bm, 128
  store i16 %i.cl, ptr %i.be, align 2, !tbaa !1164
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.cm = extractelement <8 x i1> %i.bx, i64 7
  br i1 %i.cm, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %i.cn = or i16 %i.bn, 128
  store i16 %i.cn, ptr %i.bf, align 2, !tbaa !1164
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %scalar.ph.preheader, label %vector.body, !llvm.loop !6074

scalar.ph.preheader:                              ; preds = %pred.store.continue119, %.lr.ph79
  %indvars.iv88.ph = phi i64 [ 0, %.lr.ph79 ], [ %n.vec, %pred.store.continue119 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.l
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.l ], [ %indvars.iv88.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv88
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 14 ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !1164 ; 2 uses
  %i.cs = and i16 %i.cr, 96
  %.not68 = icmp eq i16 %i.cs, 0
  br i1 %.not68, label %bb.l, label %bb.k

bb.k:                                             ; preds = %scalar.ph
  %i.ct = or i16 %i.cr, 128
  store i16 %i.ct, ptr %i.cq, align 2, !tbaa !1164
  br label %bb.l

bb.l:                                             ; preds = %scalar.ph, %bb.k
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !6075

._crit_edge:                                      ; preds = %bb.l, %.loopexit
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.cu, align 8, !tbaa !741
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @exprColumnFlagUnion, ptr %i.cv, align 8, !tbaa !2221
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = sub nsw i32 0, %1
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !2386
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 63
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge85, %._crit_edge
  %i.de = phi i16 [ %i.ja, %._crit_edge85 ], [ %i.aj, %._crit_edge ]
  %i.df = icmp sgt i16 %i.de, 0
  br i1 %i.df, label %.lr.ph84, label %.thread

.lr.ph84:                                         ; preds = %bb.m, %bb.t
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %bb.t ], [ 0, %bb.m ] ; 11 uses
  %.05682 = phi i32 [ %.3, %bb.t ], [ 0, %bb.m ]  ; 2 uses
  %.05881 = phi ptr [ %.361, %bb.t ], [ null, %bb.m ] ; 2 uses
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !1162
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %indvars.iv91 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 14 ; 7 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1164 ; 3 uses
  %i.dk = and i16 %i.dj, 128
  %.not66 = icmp eq i16 %i.dk, 0
  br i1 %.not66, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.lr.ph84
  %i.dl = or i16 %i.dj, 256
  store i16 %i.dl, ptr %i.di, align 2, !tbaa !1164
  store i16 0, ptr %i.da, align 4, !tbaa !2219
  %i.dm = getelementptr i8, ptr %i.dh, i64 12
  %.val = load i16, ptr %i.dm, align 4, !tbaa !1176 ; 3 uses
  %i.dn = zext i16 %.val to i32
  %i.do = icmp eq i16 %.val, 0
  br i1 %i.do, label %sqlite3WalkExpr.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = load i8, ptr %i.db, align 1, !tbaa !1192
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %bb.p, label %sqlite3WalkExpr.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.dr = load ptr, ptr %i.dc, align 8, !tbaa !741 ; 3 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %sqlite3WalkExpr.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = load i32, ptr %i.dr, align 8, !tbaa !576
  %i.du = icmp slt i32 %i.dt, %i.dn
  br i1 %i.du, label %sqlite3WalkExpr.exit.thread, label %sqlite3ColumnExpr.exit

sqlite3ColumnExpr.exit:                           ; preds = %bb.q
  %i.dv = zext i16 %.val to i64
  %i.dw = getelementptr [24 x i8], ptr %i.dr, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1180 ; 2 uses
  %.not.i = icmp eq ptr %i.dy, null
  br i1 %.not.i, label %sqlite3WalkExpr.exit.thread, label %sqlite3WalkExpr.exit

sqlite3WalkExpr.exit.thread:                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %sqlite3ColumnExpr.exit
  %i.dz = and i16 %i.dj, -257
  store i16 %i.dz, ptr %i.di, align 2, !tbaa !1164
  br label %bb.r

sqlite3WalkExpr.exit:                             ; preds = %sqlite3ColumnExpr.exit
  %i.ea = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %3, ptr noundef nonnull %i.dy) #62, !inline_history !2223 ; 0 uses
  %.pre = load i16, ptr %i.di, align 2, !tbaa !1164
  %.pre95 = load i16, ptr %i.da, align 4, !tbaa !2219
  %i.eb = and i16 %.pre95, 128
  %i.ec = icmp eq i16 %i.eb, 0
  %i.ed = and i16 %.pre, -257
  store i16 %i.ed, ptr %i.di, align 2, !tbaa !1164
  br i1 %i.ec, label %bb.r, label %bb.t

bb.r:                                             ; preds = %sqlite3WalkExpr.exit.thread, %sqlite3WalkExpr.exit
  %i.ee = trunc i64 %indvars.iv91 to i16          ; 4 uses
  %i.ef = load i32, ptr %i.c, align 8, !tbaa !1098
  %i.eg = and i32 %i.ef, 32
  %i.eh = icmp eq i32 %i.eg, 0
  %i.ei = icmp slt i16 %i.ee, 0
  %or.cond.i = or i1 %i.ei, %i.eh
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  %.not23.i = icmp eq i16 %i.ee, 0
  %i.ej = load ptr, ptr %i.cz, align 8, !tbaa !1162 ; 22 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check121 = icmp samesign ult i64 %indvars.iv91, 5
  br i1 %min.iters.check121, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp samesign ult i64 %indvars.iv91, 17
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph123

vector.ph123:                                     ; preds = %vector.main.loop.iter.check
  %i.ek = and i64 %indvars.iv91, 15               ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  %i.em = select i1 %i.el, i64 16, i64 %i.ek      ; 2 uses
  %n.vec124 = sub nsw i64 %indvars.iv91, %i.em    ; 3 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.ph123, %vector.body125
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next128, %vector.body125 ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph123 ], [ %i.hf, %vector.body125 ]
  %vec.phi127 = phi <8 x i16> [ zeroinitializer, %vector.ph123 ], [ %i.hg, %vector.body125 ]
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 14
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 30
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 46
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 78
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 94
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 110
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 126
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 142
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 158
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 174
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 190
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 206
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 222
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 238
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 254
  %i.ft = load i16, ptr %i.fd, align 2, !tbaa !1164
  %i.fu = load i16, ptr %i.fe, align 2, !tbaa !1164
  %i.fv = load i16, ptr %i.ff, align 2, !tbaa !1164
  %i.fw = load i16, ptr %i.fg, align 2, !tbaa !1164
  %i.fx = load i16, ptr %i.fh, align 2, !tbaa !1164
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !1164
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !1164
  %i.ga = load i16, ptr %i.fk, align 2, !tbaa !1164
  %i.gb = insertelement <8 x i16> poison, i16 %i.ft, i64 0
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 1
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 2
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 3
  %i.gf = insertelement <8 x i16> %i.ge, i16 %i.fx, i64 4
  %i.gg = insertelement <8 x i16> %i.gf, i16 %i.fy, i64 5
  %i.gh = insertelement <8 x i16> %i.gg, i16 %i.fz, i64 6
  %i.gi = insertelement <8 x i16> %i.gh, i16 %i.ga, i64 7
  %i.gj = load i16, ptr %i.fl, align 2, !tbaa !1164
  %i.gk = load i16, ptr %i.fm, align 2, !tbaa !1164
  %i.gl = load i16, ptr %i.fn, align 2, !tbaa !1164
  %i.gm = load i16, ptr %i.fo, align 2, !tbaa !1164
  %i.gn = load i16, ptr %i.fp, align 2, !tbaa !1164
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !1164
  %i.gp = load i16, ptr %i.fr, align 2, !tbaa !1164
  %i.gq = load i16, ptr %i.fs, align 2, !tbaa !1164
  %i.gr = insertelement <8 x i16> poison, i16 %i.gj, i64 0
  %i.gs = insertelement <8 x i16> %i.gr, i16 %i.gk, i64 1
  %i.gt = insertelement <8 x i16> %i.gs, i16 %i.gl, i64 2
  %i.gu = insertelement <8 x i16> %i.gt, i16 %i.gm, i64 3
  %i.gv = insertelement <8 x i16> %i.gu, i16 %i.gn, i64 4
  %i.gw = insertelement <8 x i16> %i.gv, i16 %i.go, i64 5
  %i.gx = insertelement <8 x i16> %i.gw, i16 %i.gp, i64 6
  %i.gy = insertelement <8 x i16> %i.gx, i16 %i.gq, i64 7
  %i.gz = lshr <8 x i16> %i.gi, splat (i16 5)
  %i.ha = lshr <8 x i16> %i.gy, splat (i16 5)
  %i.hb = and <8 x i16> %i.gz, splat (i16 1)
  %i.hc = and <8 x i16> %i.ha, splat (i16 1)
  %i.hd = xor <8 x i16> %i.hb, splat (i16 1)
  %i.he = xor <8 x i16> %i.hc, splat (i16 1)
  %i.hf = add <8 x i16> %i.hd, %vec.phi           ; 2 uses
  %i.hg = add <8 x i16> %i.he, %vec.phi127        ; 2 uses
  %index.next128 = add nuw i64 %index126, 16      ; 2 uses
  %i.hh = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.hh, label %vec.epilog.iter.check, label %vector.body125, !llvm.loop !6076

vec.epilog.iter.check:                            ; preds = %vector.body125
  %bin.rdx = add <8 x i16> %i.hg, %i.hf
  %i.hi = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.em, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec124, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.hi, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.hj = and i64 %indvars.iv91, 3                ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  %i.hl = select i1 %i.hk, i64 4, i64 %i.hj
  %n.vec130 = sub nsw i64 %indvars.iv91, %i.hl    ; 2 uses
  %i.hm = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next133, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi132 = phi <4 x i16> [ %i.hm, %vec.epilog.ph ], [ %i.ig, %vec.epilog.vector.body ]
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index131
  %i.ho = getelementptr [16 x i8], ptr %i.ej, i64 %index131
  %i.hp = getelementptr [16 x i8], ptr %i.ej, i64 %index131
  %i.hq = getelementptr [16 x i8], ptr %i.ej, i64 %index131
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 14
  %i.hs = getelementptr i8, ptr %i.ho, i64 30
  %i.ht = getelementptr i8, ptr %i.hp, i64 46
  %i.hu = getelementptr i8, ptr %i.hq, i64 62
  %i.hv = load i16, ptr %i.hr, align 2, !tbaa !1164
  %i.hw = load i16, ptr %i.hs, align 2, !tbaa !1164
  %i.hx = load i16, ptr %i.ht, align 2, !tbaa !1164
  %i.hy = load i16, ptr %i.hu, align 2, !tbaa !1164
  %i.hz = insertelement <4 x i16> poison, i16 %i.hv, i64 0
  %i.ia = insertelement <4 x i16> %i.hz, i16 %i.hw, i64 1
  %i.ib = insertelement <4 x i16> %i.ia, i16 %i.hx, i64 2
  %i.ic = insertelement <4 x i16> %i.ib, i16 %i.hy, i64 3
  %i.id = lshr <4 x i16> %i.ic, splat (i16 5)
  %i.ie = and <4 x i16> %i.id, splat (i16 1)
  %i.if = xor <4 x i16> %i.ie, splat (i16 1)
  %i.ig = add <4 x i16> %i.if, %vec.phi132        ; 2 uses
  %index.next133 = add nuw i64 %index131, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next133, %n.vec130
  br i1 %i.ih, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6077

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ii = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ig)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec124, %vec.epilog.iter.check ], [ %n.vec130, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.hi, %vec.epilog.iter.check ], [ %i.ii, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ]
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 14
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !1164
  %i.im = lshr i16 %i.il, 5
  %i.in = and i16 %i.im, 1
  %i.io = xor i16 %i.in, 1
  %spec.select.i = add i16 %i.io, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv91
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6078

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv91
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 14
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !1164
  %i.is = and i16 %i.ir, 32
  %.not.i71 = icmp eq i16 %i.is, 0
  br i1 %.not.i71, label %sqlite3TableColumnToStorage.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.it = load i16, ptr %i.dd, align 8, !tbaa !1166
  %i.iu = sub i16 %i.ee, %.0.lcssa.i
  %i.iv = add i16 %i.iu, %i.it
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.r, %._crit_edge.i, %bb.s
  %.018.i = phi i16 [ %i.ee, %bb.r ], [ %i.iv, %bb.s ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.iw = sext i16 %.018.i to i32
  %i.ix = add nsw i32 %1, %i.iw
  call fastcc void @sqlite3ExprCodeGeneratedColumn(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %i.dh, i32 noundef %i.ix)
  %i.iy = load i16, ptr %i.di, align 2, !tbaa !1164
  %i.iz = and i16 %i.iy, -129
  store i16 %i.iz, ptr %i.di, align 2, !tbaa !1164
  br label %bb.t

bb.t:                                             ; preds = %sqlite3TableColumnToStorage.exit, %sqlite3WalkExpr.exit, %.lr.ph84
  %.361 = phi ptr [ %.05881, %.lr.ph84 ], [ %.05881, %sqlite3TableColumnToStorage.exit ], [ %i.dh, %sqlite3WalkExpr.exit ] ; 3 uses
  %.3 = phi i32 [ %.05682, %.lr.ph84 ], [ 1, %sqlite3TableColumnToStorage.exit ], [ %.05682, %sqlite3WalkExpr.exit ] ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.ja = load i16, ptr %i.ai, align 2, !tbaa !1161 ; 2 uses
  %i.jb = sext i16 %i.ja to i64
  %i.jc = icmp slt i64 %indvars.iv.next92, %i.jb
  br i1 %i.jc, label %.lr.ph84, label %._crit_edge85, !llvm.loop !6079

._crit_edge85:                                    ; preds = %bb.t
  %i.jd = icmp ne i32 %.3, 0
  %i.je = icmp ne ptr %.361, null                 ; 2 uses
  %i.jf = select i1 %i.je, i1 %i.jd, i1 false
  br i1 %i.jf, label %bb.m, label %bb.u, !llvm.loop !6080

bb.u:                                             ; preds = %._crit_edge85
  br i1 %i.je, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.jg = load ptr, ptr %.361, align 8, !tbaa !1198
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.669, ptr noundef %i.jg)
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.v, %bb.u
  store i32 0, ptr %i.cy, align 4, !tbaa !2386
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3GenerateConstraintChecks(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 -2147483647, -2147483648) %6, i8 noundef zeroext range(i8 0, 3) %7, i8 noundef zeroext %8, i32 noundef range(i32 -2147483648, 2147483647) %9, ptr nofree noundef nonnull writeonly captures(none) %10, ptr noundef %11, ptr noundef %12) unnamed_addr #0 {
bb.a:
  %13 = alloca %struct.Walker, align 8            ; 7 uses
  %.sroa.9 = alloca ptr, align 8                  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.a = icmp ne i32 %6, 0                        ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1001   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1233 ; 106 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.f = load i16, ptr %i.e, align 2, !tbaa !1161 ; 2 uses
  %wide.trip.count = sext i16 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1098 ; 2 uses
  %i.i = and i32 %i.h, 128
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.b
  %.08.i.in = phi ptr [ %i.o, %.lr.ph.i ], [ %i.k, %bb.b ]
  %.08.i = load ptr, ptr %.08.i.in, align 8, !tbaa !1201, !nonnull !1293, !noundef !1293 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.m = load i16, ptr %i.l, align 1
  %i.n = and i16 %i.m, 3
  %.not5.i = icmp eq i16 %i.n, 2
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i

sqlite3PrimaryKeyIndex.exit:                      ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i, i64 94
  %i.q = load i16, ptr %i.p, align 2, !tbaa !1202
  %i.r = zext i16 %i.q to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %sqlite3PrimaryKeyIndex.exit
  %.0597 = phi ptr [ %.08.i, %sqlite3PrimaryKeyIndex.exit ], [ null, %bb.a ] ; 5 uses
  %.0575 = phi i32 [ %i.r, %sqlite3PrimaryKeyIndex.exit ], [ 1, %bb.a ] ; 8 uses
  %i.s = and i32 %i.h, 2048
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit1006, label %.preheader1005

.preheader1005:                                   ; preds = %bb.c
  %i.t = icmp sgt i16 %i.f, 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.not669 = icmp eq ptr %11, null
  %.not670 = icmp eq i8 %8, 11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = add i32 %5, 1                            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 148 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %.preheader1005
  %i.ae = phi i1 [ false, %.preheader1005 ], [ true, %.backedge ] ; 3 uses
  %i.af = phi i1 [ true, %.preheader1005 ], [ false, %.backedge ]
  %.0534 = phi i32 [ 0, %.preheader1005 ], [ %.1535.lcssa, %.backedge ] ; 2 uses
  %.0532 = phi i32 [ 0, %.preheader1005 ], [ %.1533.lcssa, %.backedge ] ; 2 uses
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %sqlite3VdbeChangeP5.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3VdbeChangeP5.exit ], [ 0, %bb.d ] ; 12 uses
  %.15331019 = phi i32 [ %.2, %sqlite3VdbeChangeP5.exit ], [ %.0532, %bb.d ] ; 10 uses
  %.15351018 = phi i32 [ %.3, %sqlite3VdbeChangeP5.exit ], [ %.0534, %bb.d ] ; 10 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !1162 ; 22 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = and i8 %i.aj, 15                        ; 3 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %sqlite3VdbeChangeP5.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.am = load i16, ptr %i.v, align 4, !tbaa !1168
  %i.an = sext i16 %i.am to i64
  %i.ao = icmp eq i64 %indvars.iv, %i.an
  br i1 %i.ao, label %sqlite3VdbeChangeP5.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !1164 ; 2 uses
  %i.ar = and i16 %i.aq, 96                       ; 3 uses
  %i.as = icmp eq i16 %i.ar, 0
  %or.cond = or i1 %i.ae, %i.as
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add nsw i32 %.15331019, 1
  br label %sqlite3VdbeChangeP5.exit

bb.h:                                             ; preds = %bb.f
  br i1 %.not669, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !576
  %i.aw = icmp sgt i32 %i.av, -1
  %i.ax = icmp ne i16 %i.ar, 0
  %or.cond3 = or i1 %i.ax, %i.aw
  br i1 %or.cond3, label %bb.j, label %sqlite3VdbeChangeP5.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = icmp eq i8 %i.ak, 11
  %narrow671 = select i1 %i.ay, i8 2, i8 %i.ak
  %.0581.in = select i1 %.not670, i8 %narrow671, i8 %8 ; 2 uses
  %i.az = icmp eq i8 %.0581.in, 5
  br i1 %i.az, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !1176
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %.0581 = zext i8 %.0581.in to i32
  %i.bd = icmp ne i16 %i.ar, 0
  %or.cond5 = or i1 %i.af, %i.bd
  br i1 %or.cond5, label %bb.o, label %sqlite3VdbeChangeP5.exit

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.1582 = phi i32 [ 2, %bb.m ], [ 5, %bb.l ], [ %.0581, %bb.n ] ; 3 uses
  %i.be = trunc i64 %indvars.iv to i16            ; 4 uses
  %i.bf = load i32, ptr %i.g, align 8, !tbaa !1098
  %i.bg = and i32 %i.bf, 32
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = icmp slt i16 %i.be, 0
  %or.cond.i = or i1 %i.bi, %i.bh
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %.not23.i = icmp eq i16 %i.be, 0
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 5
  br i1 %min.iters.check, label %.lr.ph.i688.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1257 = icmp samesign ult i64 %indvars.iv, 17
  br i1 %min.iters.check1257, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %indvars.iv, 15                 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = select i1 %i.bk, i64 16, i64 %i.bj      ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv, %i.bl         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %vec.phi1258 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 30
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 46
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 78
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 94
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 110
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 126
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 142
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 158
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 174
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 190
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 206
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 222
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 238
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 254
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !1164
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !1164
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !1164
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !1164
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !1164
  %i.cx = load i16, ptr %i.ch, align 2, !tbaa !1164
  %i.cy = load i16, ptr %i.ci, align 2, !tbaa !1164
  %i.cz = load i16, ptr %i.cj, align 2, !tbaa !1164
  %i.da = insertelement <8 x i16> poison, i16 %i.cs, i64 0
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 1
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 2
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 3
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 4
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 5
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 6
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 7
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !1164
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !1164
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !1164
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !1164
  %i.dm = load i16, ptr %i.co, align 2, !tbaa !1164
  %i.dn = load i16, ptr %i.cp, align 2, !tbaa !1164
  %i.do = load i16, ptr %i.cq, align 2, !tbaa !1164
  %i.dp = load i16, ptr %i.cr, align 2, !tbaa !1164
  %i.dq = insertelement <8 x i16> poison, i16 %i.di, i64 0
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 1
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 2
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 3
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 4
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.dn, i64 5
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 6
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 7
  %i.dy = lshr <8 x i16> %i.dh, splat (i16 5)
  %i.dz = lshr <8 x i16> %i.dx, splat (i16 5)
  %i.ea = and <8 x i16> %i.dy, splat (i16 1)
  %i.eb = and <8 x i16> %i.dz, splat (i16 1)
  %i.ec = xor <8 x i16> %i.ea, splat (i16 1)
  %i.ed = xor <8 x i16> %i.eb, splat (i16 1)
  %i.ee = add <8 x i16> %i.ec, %vec.phi           ; 2 uses
  %i.ef = add <8 x i16> %i.ed, %vec.phi1258       ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !6081

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ef, %i.ee
  %i.eh = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bl, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i688.preheader, label %vec.epilog.ph, !prof !1165

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.eh, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ei = and i64 %indvars.iv, 3                  ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  %i.ek = select i1 %i.ej, i64 4, i64 %i.ei
  %n.vec1259 = sub nsw i64 %indvars.iv, %i.ek     ; 2 uses
  %i.el = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1260 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1262, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi1261 = phi <4 x i16> [ %i.el, %vec.epilog.ph ], [ %i.ff, %vec.epilog.vector.body ]
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index1260
  %i.en = getelementptr [16 x i8], ptr %i.ag, i64 %index1260
  %i.eo = getelementptr [16 x i8], ptr %i.ag, i64 %index1260
  %i.ep = getelementptr [16 x i8], ptr %i.ag, i64 %index1260
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 14
  %i.er = getelementptr i8, ptr %i.en, i64 30
  %i.es = getelementptr i8, ptr %i.eo, i64 46
  %i.et = getelementptr i8, ptr %i.ep, i64 62
  %i.eu = load i16, ptr %i.eq, align 2, !tbaa !1164
  %i.ev = load i16, ptr %i.er, align 2, !tbaa !1164
  %i.ew = load i16, ptr %i.es, align 2, !tbaa !1164
  %i.ex = load i16, ptr %i.et, align 2, !tbaa !1164
  %i.ey = insertelement <4 x i16> poison, i16 %i.eu, i64 0
  %i.ez = insertelement <4 x i16> %i.ey, i16 %i.ev, i64 1
  %i.fa = insertelement <4 x i16> %i.ez, i16 %i.ew, i64 2
  %i.fb = insertelement <4 x i16> %i.fa, i16 %i.ex, i64 3
  %i.fc = lshr <4 x i16> %i.fb, splat (i16 5)
  %i.fd = and <4 x i16> %i.fc, splat (i16 1)
  %i.fe = xor <4 x i16> %i.fd, splat (i16 1)
  %i.ff = add <4 x i16> %i.fe, %vec.phi1261       ; 2 uses
  %index.next1262 = add nuw i64 %index1260, 4     ; 2 uses
  %i.fg = icmp eq i64 %index.next1262, %n.vec1259
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6082

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fh = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ff)
  br label %.lr.ph.i688.preheader

.lr.ph.i688.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1259, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.eh, %vec.epilog.iter.check ], [ %i.fh, %vec.epilog.middle.block ]
  br label %.lr.ph.i688

.lr.ph.i688:                                      ; preds = %.lr.ph.i688.preheader, %.lr.ph.i688
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i688 ], [ %indvars.iv.i.ph, %.lr.ph.i688.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i688 ], [ %.021.i.ph, %.lr.ph.i688.preheader ]
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 14
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !1164
  %i.fl = lshr i16 %i.fk, 5
  %i.fm = and i16 %i.fl, 1
  %i.fn = xor i16 %i.fm, 1
  %spec.select.i = add i16 %i.fn, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i688, !llvm.loop !6083

._crit_edge.i:                                    ; preds = %.lr.ph.i688, %.preheader.i
  %.0.lcssa.i689 = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i688 ] ; 2 uses
  %i.fo = and i16 %i.aq, 32
  %.not.i690 = icmp eq i16 %i.fo, 0
  br i1 %.not.i690, label %sqlite3TableColumnToStorage.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.fp = load i16, ptr %i.w, align 8, !tbaa !1166
  %i.fq = sub i16 %i.be, %.0.lcssa.i689
  %i.fr = add i16 %i.fq, %i.fp
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.o, %._crit_edge.i, %bb.p
  %.018.i = phi i16 [ %i.be, %bb.o ], [ %i.fr, %bb.p ], [ %.0.lcssa.i689, %._crit_edge.i ]
  %i.fs = sext i16 %.018.i to i32
  %i.ft = add i32 %i.x, %i.fs                     ; 7 uses
  %trunc672 = trunc nuw i32 %.1582 to i8
  switch i8 %trunc672, label %bb.ai [
    i8 5, label %bb.q
    i8 2, label %bb.ab
    i8 1, label %bb.ac
    i8 3, label %bb.ac
  ]

bb.q:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.fu = load i32, ptr %i.z, align 8, !tbaa !711 ; 4 uses
  %i.fv = load i32, ptr %i.aa, align 4, !tbaa !1206
  %.not.i.i = icmp sgt i32 %i.fv, %i.fu
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fw = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 52, i32 noundef %i.ft, i32 noundef 0, i32 noundef 0), !inline_history !1234
  br label %sqlite3VdbeAddOp1.exit

bb.s:                                             ; preds = %bb.q
  %i.fx = add nsw i32 %i.fu, 1
  store i32 %i.fx, ptr %i.z, align 8, !tbaa !711
  %i.fy = load ptr, ptr %i.ab, align 8, !tbaa !710
  %i.fz = sext i32 %i.fu to i64
  %i.ga = getelementptr inbounds [24 x i8], ptr %i.fy, i64 %i.fz ; 5 uses
  store i8 52, ptr %i.ga, align 8, !tbaa !938
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  store i16 0, ptr %i.gb, align 2, !tbaa !957
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 %i.ft, ptr %i.gc, align 4, !tbaa !954
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store i8 0, ptr %i.ge, align 1, !tbaa !939
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %bb.r, %bb.s
  %.0.i.i = phi i32 [ %i.fw, %bb.r ], [ %i.fu, %bb.s ]
  %i.gf = add nsw i32 %.15351018, 1
  %i.gg = getelementptr i8, ptr %i.ah, i64 12
end_hunk_18
begin_hunk_19_@sqlite3GenerateConstraintChecks:bb.a
  %i.aen = load ptr, ptr %i.aei, align 8, !tbaa !1982
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  %i.aep = getelementptr inbounds nuw [24 x i8], ptr %i.aeo, i64 %indvars.iv1108
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !1180 ; 2 uses
  %i.aer = load ptr, ptr %0, align 8, !tbaa !1001 ; 3 uses
  %.not.i.i811 = icmp eq ptr %i.aeq, null
  br i1 %.not.i.i811, label %sqlite3ExprDup.exit.i812, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.aes = call fastcc ptr @exprDup(ptr noundef %i.aer, ptr noundef readonly %i.aeq, i32 noundef 0, ptr noundef null), !inline_history !6084
  br label %sqlite3ExprDup.exit.i812

sqlite3ExprDup.exit.i812:                         ; preds = %bb.fu, %bb.ft
  %i.aet = phi ptr [ %i.aes, %bb.fu ], [ null, %bb.ft ] ; 5 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 103
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !928
  %.not.i813 = icmp eq i8 %i.aev, 0
  br i1 %.not.i813, label %bb.fv, label %sqlite3ExprCode.exit

bb.fv:                                            ; preds = %sqlite3ExprDup.exit.i812
  %i.aew = load ptr, ptr %i.c, align 8, !tbaa !1233
  %i.aex = icmp eq ptr %i.aew, null
  br i1 %i.aex, label %sqlite3ExprCode.exit, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aey = trunc nuw nsw i64 %indvars.iv1108 to i32
  %i.aez = add i32 %i.aee, %i.aey                 ; 4 uses
  %i.afa = call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.aet, i32 noundef %i.aez) #62, !inline_history !6092 ; 3 uses
  %.not.i948 = icmp eq i32 %i.afa, %i.aez
  br i1 %.not.i948, label %sqlite3ExprCode.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %.not9.i.i = icmp eq ptr %i.aet, null
  br i1 %.not9.i.i, label %sqlite3ExprSkipCollateAndLikely.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.fx, %bb.gc
  %.010.i.i = phi ptr [ %.1.i.i, %bb.gc ], [ %i.aet, %bb.fx ] ; 5 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !801 ; 3 uses
  %i.afd = and i32 %i.afc, 532480
  %.not7.i.i = icmp eq i32 %i.afd, 0
  br i1 %.not7.i.i, label %sqlite3ExprSkipCollateAndLikely.exit.i, label %bb.fy

bb.fy:                                            ; preds = %.lr.ph.i.i
  %i.afe = and i32 %i.afc, 524288
  %.not8.i.i = icmp eq i32 %i.afe, 0
  br i1 %.not8.i.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aff = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !741
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  br label %bb.gc

bb.ga:                                            ; preds = %bb.fy
  %i.afi = load i8, ptr %.010.i.i, align 8, !tbaa !2042
  %i.afj = icmp eq i8 %i.afi, 114
  br i1 %i.afj, label %bb.gb, label %sqlite3ExprSkipCollateAndLikely.exit.i

bb.gb:                                            ; preds = %bb.ga
  %i.afk = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  %.1.in.i.i = phi ptr [ %i.afh, %bb.fz ], [ %i.afk, %bb.gb ]
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8, !tbaa !798 ; 2 uses
  %.not.i.i949 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i949, label %sqlite3ExprSkipCollateAndLikely.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !300

sqlite3ExprSkipCollateAndLikely.exit.i:           ; preds = %bb.ga, %.lr.ph.i.i
  %i.afl = and i32 %i.afc, 4194304
  %.not17.i952 = icmp eq i32 %i.afl, 0
  br i1 %.not17.i952, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %sqlite3ExprSkipCollateAndLikely.exit.i
  %i.afm = load i8, ptr %.010.i.i, align 8, !tbaa !2042
  %i.afn = icmp eq i8 %i.afm, -80
  br i1 %i.afn, label %bb.ge, label %sqlite3ExprSkipCollateAndLikely.exit.thread.i

sqlite3ExprSkipCollateAndLikely.exit.thread.i:    ; preds = %bb.gc, %bb.gd, %bb.fx
  br label %bb.ge

bb.ge:                                            ; preds = %sqlite3ExprSkipCollateAndLikely.exit.thread.i, %bb.gd, %sqlite3ExprSkipCollateAndLikely.exit.i
  %.0.i950 = phi i32 [ 82, %sqlite3ExprSkipCollateAndLikely.exit.thread.i ], [ 81, %bb.gd ], [ 81, %sqlite3ExprSkipCollateAndLikely.exit.i ] ; 2 uses
  %i.afo = load ptr, ptr %i.c, align 8, !tbaa !1233 ; 4 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 144 ; 2 uses
  %i.afq = load i32, ptr %i.afp, align 8, !tbaa !711 ; 3 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 148
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !1206
  %.not.i.i.i951 = icmp sgt i32 %i.afs, %i.afq
  br i1 %.not.i.i.i951, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aft = call fastcc i32 @growOp3(ptr noundef nonnull %i.afo, i32 noundef range(i32 -1, 511) %.0.i950, i32 noundef %i.afa, i32 noundef %i.aez, i32 noundef 0), !inline_history !6093 ; 0 uses
  br label %sqlite3ExprCode.exit

bb.gg:                                            ; preds = %bb.ge
  %i.afu = add nsw i32 %i.afq, 1
  store i32 %i.afu, ptr %i.afp, align 8, !tbaa !711
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afo, i64 136
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !710
  %i.afx = sext i32 %i.afq to i64
  %i.afy = getelementptr inbounds [24 x i8], ptr %i.afw, i64 %i.afx ; 7 uses
  %i.afz = trunc nuw nsw i32 %.0.i950 to i8
  store i8 %i.afz, ptr %i.afy, align 8, !tbaa !938
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 2
  store i16 0, ptr %i.aga, align 2, !tbaa !957
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afy, i64 4
  store i32 %i.afa, ptr %i.agb, align 4, !tbaa !954
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  store i32 %i.aez, ptr %i.agc, align 8, !tbaa !955
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afy, i64 12
  store i32 0, ptr %i.agd, align 4, !tbaa !956
  %i.age = getelementptr inbounds nuw i8, ptr %i.afy, i64 16
  store ptr null, ptr %i.age, align 8, !tbaa !741
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afy, i64 1
  store i8 0, ptr %i.agf, align 1, !tbaa !939
  br label %sqlite3ExprCode.exit

sqlite3ExprCode.exit:                             ; preds = %bb.gg, %bb.gf, %bb.fw, %bb.fv, %sqlite3ExprDup.exit.i812
  %.not.i8.i814 = icmp eq ptr %i.aet, null
  br i1 %.not.i8.i814, label %sqlite3ExprCodeCopy.exit815, label %bb.gh

bb.gh:                                            ; preds = %sqlite3ExprCode.exit
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.aer, ptr noundef %i.aet), !inline_history !6085
  br label %sqlite3ExprCodeCopy.exit815

sqlite3ExprCodeCopy.exit815:                      ; preds = %sqlite3ExprCode.exit, %bb.gh
  store i32 0, ptr %i.abr, align 4, !tbaa !2386
  br label %sqlite3VdbeAddOp2.exit818

bb.gi:                                            ; preds = %bb.fs
  %i.agg = load i16, ptr %i.abs, align 4, !tbaa !1168
  %i.agh = icmp eq i16 %i.aem, %i.agg
  br i1 %i.agh, label %bb.gj, label %bb.gm

bb.gj:                                            ; preds = %bb.fs, %bb.gi
  %i.agi = add nuw i64 %indvars.iv1108, %i.aej    ; 2 uses
  %i.agj = load i32, ptr %i.abk, align 8, !tbaa !711 ; 3 uses
  %i.agk = load i32, ptr %i.abp, align 4, !tbaa !1206
  %.not.i.i816 = icmp sgt i32 %i.agk, %i.agj
  br i1 %.not.i.i816, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.agl = trunc i64 %i.agi to i32
  %i.agm = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 83, i32 noundef %5, i32 noundef %i.agl, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit818

bb.gl:                                            ; preds = %bb.gj
  %i.agn = add nsw i32 %i.agj, 1
  store i32 %i.agn, ptr %i.abk, align 8, !tbaa !711
  %i.ago = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.agp = sext i32 %i.agj to i64
  %i.agq = getelementptr inbounds [24 x i8], ptr %i.ago, i64 %i.agp ; 7 uses
  store i8 83, ptr %i.agq, align 8, !tbaa !938
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 2
  store i16 0, ptr %i.agr, align 2, !tbaa !957
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agq, i64 4
  store i32 %5, ptr %i.ags, align 4, !tbaa !954
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  %i.agu = trunc i64 %i.agi to i32
  store i32 %i.agu, ptr %i.agt, align 8, !tbaa !955
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agq, i64 12
  store i32 0, ptr %i.agv, align 4, !tbaa !956
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agq, i64 16
  store ptr null, ptr %i.agw, align 8, !tbaa !741
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agq, i64 1
  store i8 0, ptr %i.agx, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit818

bb.gm:                                            ; preds = %bb.gi
  %i.agy = load i32, ptr %i.g, align 8, !tbaa !1098
  %i.agz = and i32 %i.agy, 32
  %i.aha = icmp eq i32 %i.agz, 0
  %wide.trip.count.i823 = sext i16 %i.aem to i64  ; 6 uses
  %i.ahb = icmp slt i16 %i.aem, 0
  %or.cond.i819 = or i1 %i.ahb, %i.aha
  br i1 %or.cond.i819, label %sqlite3TableColumnToStorage.exit833, label %.preheader.i820

.preheader.i820:                                  ; preds = %bb.gm
  %.not23.i821 = icmp eq i16 %i.aem, 0
  %i.ahc = load ptr, ptr %i.abt, align 8, !tbaa !1162 ; 22 uses
  br i1 %.not23.i821, label %._crit_edge.i829, label %iter.check1305

iter.check1305:                                   ; preds = %.preheader.i820
  %min.iters.check1291 = icmp ult i16 %i.aem, 5
  br i1 %min.iters.check1291, label %vec.epilog.scalar.ph1306.preheader, label %vector.main.loop.iter.check1292

vector.main.loop.iter.check1292:                  ; preds = %iter.check1305
  %min.iters.check1293 = icmp ult i16 %i.aem, 17
  br i1 %min.iters.check1293, label %vec.epilog.ph1309, label %vector.ph1294

vector.ph1294:                                    ; preds = %vector.main.loop.iter.check1292
  %i.ahd = and i64 %wide.trip.count.i823, 15
  %i.ahe = and i16 %i.aem, 15
  %i.ahf = icmp eq i16 %i.ahe, 0
  %i.ahg = select i1 %i.ahf, i64 16, i64 %i.ahd   ; 2 uses
  %n.vec1295 = sub nsw i64 %wide.trip.count.i823, %i.ahg ; 3 uses
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.ph1294, %vector.body1296
  %index1297 = phi i64 [ 0, %vector.ph1294 ], [ %index.next1300, %vector.body1296 ] ; 17 uses
  %vec.phi1298 = phi <8 x i16> [ zeroinitializer, %vector.ph1294 ], [ %i.ajz, %vector.body1296 ]
  %vec.phi1299 = phi <8 x i16> [ zeroinitializer, %vector.ph1294 ], [ %i.aka, %vector.body1296 ]
  %i.ahh = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahi = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahj = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahk = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahl = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahm = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahn = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.aho = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahp = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahq = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahr = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahs = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.aht = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahu = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahv = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahw = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1297
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahh, i64 14
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahi, i64 30
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahj, i64 46
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahk, i64 62
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahl, i64 78
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahm, i64 94
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahn, i64 110
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aho, i64 126
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahp, i64 142
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahq, i64 158
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahr, i64 174
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ahs, i64 190
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aht, i64 206
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahu, i64 222
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahv, i64 238
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahw, i64 254
  %i.ain = load i16, ptr %i.ahx, align 2, !tbaa !1164
  %i.aio = load i16, ptr %i.ahy, align 2, !tbaa !1164
  %i.aip = load i16, ptr %i.ahz, align 2, !tbaa !1164
  %i.aiq = load i16, ptr %i.aia, align 2, !tbaa !1164
  %i.air = load i16, ptr %i.aib, align 2, !tbaa !1164
  %i.ais = load i16, ptr %i.aic, align 2, !tbaa !1164
  %i.ait = load i16, ptr %i.aid, align 2, !tbaa !1164
  %i.aiu = load i16, ptr %i.aie, align 2, !tbaa !1164
  %i.aiv = insertelement <8 x i16> poison, i16 %i.ain, i64 0
  %i.aiw = insertelement <8 x i16> %i.aiv, i16 %i.aio, i64 1
  %i.aix = insertelement <8 x i16> %i.aiw, i16 %i.aip, i64 2
  %i.aiy = insertelement <8 x i16> %i.aix, i16 %i.aiq, i64 3
  %i.aiz = insertelement <8 x i16> %i.aiy, i16 %i.air, i64 4
  %i.aja = insertelement <8 x i16> %i.aiz, i16 %i.ais, i64 5
  %i.ajb = insertelement <8 x i16> %i.aja, i16 %i.ait, i64 6
  %i.ajc = insertelement <8 x i16> %i.ajb, i16 %i.aiu, i64 7
  %i.ajd = load i16, ptr %i.aif, align 2, !tbaa !1164
  %i.aje = load i16, ptr %i.aig, align 2, !tbaa !1164
  %i.ajf = load i16, ptr %i.aih, align 2, !tbaa !1164
  %i.ajg = load i16, ptr %i.aii, align 2, !tbaa !1164
  %i.ajh = load i16, ptr %i.aij, align 2, !tbaa !1164
  %i.aji = load i16, ptr %i.aik, align 2, !tbaa !1164
  %i.ajj = load i16, ptr %i.ail, align 2, !tbaa !1164
  %i.ajk = load i16, ptr %i.aim, align 2, !tbaa !1164
  %i.ajl = insertelement <8 x i16> poison, i16 %i.ajd, i64 0
  %i.ajm = insertelement <8 x i16> %i.ajl, i16 %i.aje, i64 1
  %i.ajn = insertelement <8 x i16> %i.ajm, i16 %i.ajf, i64 2
  %i.ajo = insertelement <8 x i16> %i.ajn, i16 %i.ajg, i64 3
  %i.ajp = insertelement <8 x i16> %i.ajo, i16 %i.ajh, i64 4
  %i.ajq = insertelement <8 x i16> %i.ajp, i16 %i.aji, i64 5
  %i.ajr = insertelement <8 x i16> %i.ajq, i16 %i.ajj, i64 6
  %i.ajs = insertelement <8 x i16> %i.ajr, i16 %i.ajk, i64 7
  %i.ajt = lshr <8 x i16> %i.ajc, splat (i16 5)
  %i.aju = lshr <8 x i16> %i.ajs, splat (i16 5)
  %i.ajv = and <8 x i16> %i.ajt, splat (i16 1)
  %i.ajw = and <8 x i16> %i.aju, splat (i16 1)
  %i.ajx = xor <8 x i16> %i.ajv, splat (i16 1)
  %i.ajy = xor <8 x i16> %i.ajw, splat (i16 1)
  %i.ajz = add <8 x i16> %i.ajx, %vec.phi1298     ; 2 uses
  %i.aka = add <8 x i16> %i.ajy, %vec.phi1299     ; 2 uses
  %index.next1300 = add nuw i64 %index1297, 16    ; 2 uses
  %i.akb = icmp eq i64 %index.next1300, %n.vec1295
  br i1 %i.akb, label %vec.epilog.iter.check1307, label %vector.body1296, !llvm.loop !6094

vec.epilog.iter.check1307:                        ; preds = %vector.body1296
  %bin.rdx1302 = add <8 x i16> %i.aka, %i.ajz
  %i.akc = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1302) ; 2 uses
  %min.epilog.iters.check1308 = icmp samesign ult i64 %i.ahg, 5
  br i1 %min.epilog.iters.check1308, label %vec.epilog.scalar.ph1306.preheader, label %vec.epilog.ph1309, !prof !1165

vec.epilog.ph1309:                                ; preds = %vector.main.loop.iter.check1292, %vec.epilog.iter.check1307
  %vec.epilog.resume.val1303 = phi i64 [ %n.vec1295, %vec.epilog.iter.check1307 ], [ 0, %vector.main.loop.iter.check1292 ]
  %bc.merge.rdx1304 = phi i16 [ %i.akc, %vec.epilog.iter.check1307 ], [ 0, %vector.main.loop.iter.check1292 ]
  %i.akd = and i64 %wide.trip.count.i823, 3
  %i.ake = and i16 %i.aem, 3
  %i.akf = icmp eq i16 %i.ake, 0
  %i.akg = select i1 %i.akf, i64 4, i64 %i.akd
  %n.vec1310 = sub nsw i64 %wide.trip.count.i823, %i.akg ; 2 uses
  %i.akh = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1304, i64 0
  br label %vec.epilog.vector.body1311

vec.epilog.vector.body1311:                       ; preds = %vec.epilog.vector.body1311, %vec.epilog.ph1309
  %index1312 = phi i64 [ %vec.epilog.resume.val1303, %vec.epilog.ph1309 ], [ %index.next1314, %vec.epilog.vector.body1311 ] ; 5 uses
  %vec.phi1313 = phi <4 x i16> [ %i.akh, %vec.epilog.ph1309 ], [ %i.alb, %vec.epilog.vector.body1311 ]
  %i.aki = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %index1312
  %i.akj = getelementptr [16 x i8], ptr %i.ahc, i64 %index1312
  %i.akk = getelementptr [16 x i8], ptr %i.ahc, i64 %index1312
  %i.akl = getelementptr [16 x i8], ptr %i.ahc, i64 %index1312
  %i.akm = getelementptr inbounds nuw i8, ptr %i.aki, i64 14
  %i.akn = getelementptr i8, ptr %i.akj, i64 30
  %i.ako = getelementptr i8, ptr %i.akk, i64 46
  %i.akp = getelementptr i8, ptr %i.akl, i64 62
  %i.akq = load i16, ptr %i.akm, align 2, !tbaa !1164
  %i.akr = load i16, ptr %i.akn, align 2, !tbaa !1164
  %i.aks = load i16, ptr %i.ako, align 2, !tbaa !1164
  %i.akt = load i16, ptr %i.akp, align 2, !tbaa !1164
  %i.aku = insertelement <4 x i16> poison, i16 %i.akq, i64 0
  %i.akv = insertelement <4 x i16> %i.aku, i16 %i.akr, i64 1
  %i.akw = insertelement <4 x i16> %i.akv, i16 %i.aks, i64 2
  %i.akx = insertelement <4 x i16> %i.akw, i16 %i.akt, i64 3
  %i.aky = lshr <4 x i16> %i.akx, splat (i16 5)
  %i.akz = and <4 x i16> %i.aky, splat (i16 1)
  %i.ala = xor <4 x i16> %i.akz, splat (i16 1)
  %i.alb = add <4 x i16> %i.ala, %vec.phi1313     ; 2 uses
  %index.next1314 = add nuw i64 %index1312, 4     ; 2 uses
  %i.alc = icmp eq i64 %index.next1314, %n.vec1310
  br i1 %i.alc, label %vec.epilog.middle.block1315, label %vec.epilog.vector.body1311, !llvm.loop !6095

vec.epilog.middle.block1315:                      ; preds = %vec.epilog.vector.body1311
  %i.ald = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.alb)
  br label %vec.epilog.scalar.ph1306.preheader

vec.epilog.scalar.ph1306.preheader:               ; preds = %iter.check1305, %vec.epilog.iter.check1307, %vec.epilog.middle.block1315
  %indvars.iv.i824.ph = phi i64 [ 0, %iter.check1305 ], [ %n.vec1295, %vec.epilog.iter.check1307 ], [ %n.vec1310, %vec.epilog.middle.block1315 ]
  %.021.i825.ph = phi i16 [ 0, %iter.check1305 ], [ %i.akc, %vec.epilog.iter.check1307 ], [ %i.ald, %vec.epilog.middle.block1315 ]
  br label %vec.epilog.scalar.ph1306

vec.epilog.scalar.ph1306:                         ; preds = %vec.epilog.scalar.ph1306.preheader, %vec.epilog.scalar.ph1306
  %indvars.iv.i824 = phi i64 [ %indvars.iv.next.i827, %vec.epilog.scalar.ph1306 ], [ %indvars.iv.i824.ph, %vec.epilog.scalar.ph1306.preheader ] ; 2 uses
  %.021.i825 = phi i16 [ %spec.select.i826, %vec.epilog.scalar.ph1306 ], [ %.021.i825.ph, %vec.epilog.scalar.ph1306.preheader ]
  %i.ale = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %indvars.iv.i824
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 14
  %i.alg = load i16, ptr %i.alf, align 2, !tbaa !1164
  %i.alh = lshr i16 %i.alg, 5
  %i.ali = and i16 %i.alh, 1
  %i.alj = xor i16 %i.ali, 1
  %spec.select.i826 = add i16 %i.alj, %.021.i825  ; 2 uses
  %indvars.iv.next.i827 = add nuw nsw i64 %indvars.iv.i824, 1 ; 2 uses
  %exitcond.not.i828 = icmp eq i64 %indvars.iv.next.i827, %wide.trip.count.i823
  br i1 %exitcond.not.i828, label %._crit_edge.i829, label %vec.epilog.scalar.ph1306, !llvm.loop !6096

._crit_edge.i829:                                 ; preds = %vec.epilog.scalar.ph1306, %.preheader.i820
  %.pre-phi1126 = phi i64 [ 0, %.preheader.i820 ], [ %wide.trip.count.i823, %vec.epilog.scalar.ph1306 ]
  %.0.lcssa.i830 = phi i16 [ 0, %.preheader.i820 ], [ %spec.select.i826, %vec.epilog.scalar.ph1306 ] ; 2 uses
  %i.alk = getelementptr inbounds nuw [16 x i8], ptr %i.ahc, i64 %.pre-phi1126
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 14
  %i.alm = load i16, ptr %i.all, align 2, !tbaa !1164
  %i.aln = and i16 %i.alm, 32
  %.not.i831 = icmp eq i16 %i.aln, 0
  br i1 %.not.i831, label %sqlite3TableColumnToStorage.exit833, label %bb.gn

bb.gn:                                            ; preds = %._crit_edge.i829
  %i.alo = load i16, ptr %i.abu, align 8, !tbaa !1166
  %i.alp = sub i16 %i.aem, %.0.lcssa.i830
  %i.alq = add i16 %i.alp, %i.alo
  br label %sqlite3TableColumnToStorage.exit833

sqlite3TableColumnToStorage.exit833:              ; preds = %bb.gm, %._crit_edge.i829, %bb.gn
  %.018.i832 = phi i16 [ %i.aem, %bb.gm ], [ %i.alq, %bb.gn ], [ %.0.lcssa.i830, %._crit_edge.i829 ]
  %i.alr = sext i16 %.018.i832 to i32
  %i.als = add i32 %i.abo, %i.alr                 ; 2 uses
  %i.alt = add nuw i64 %indvars.iv1108, %i.aej    ; 2 uses
  %i.alu = load i32, ptr %i.abk, align 8, !tbaa !711 ; 3 uses
  %i.alv = load i32, ptr %i.abp, align 4, !tbaa !1206
  %.not.i.i834 = icmp sgt i32 %i.alv, %i.alu
  br i1 %.not.i.i834, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %sqlite3TableColumnToStorage.exit833
  %i.alw = trunc i64 %i.alt to i32
  %i.alx = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 82, i32 noundef %i.als, i32 noundef %i.alw, i32 noundef 0), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit818

bb.gp:                                            ; preds = %sqlite3TableColumnToStorage.exit833
  %i.aly = add nsw i32 %i.alu, 1
  store i32 %i.aly, ptr %i.abk, align 8, !tbaa !711
  %i.alz = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.ama = sext i32 %i.alu to i64
  %i.amb = getelementptr inbounds [24 x i8], ptr %i.alz, i64 %i.ama ; 7 uses
  store i8 82, ptr %i.amb, align 8, !tbaa !938
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 2
  store i16 0, ptr %i.amc, align 2, !tbaa !957
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amb, i64 4
  store i32 %i.als, ptr %i.amd, align 4, !tbaa !954
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  %i.amf = trunc i64 %i.alt to i32
  store i32 %i.amf, ptr %i.ame, align 8, !tbaa !955
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amb, i64 12
  store i32 0, ptr %i.amg, align 4, !tbaa !956
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amb, i64 16
  store ptr null, ptr %i.amh, align 8, !tbaa !741
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amb, i64 1
  store i8 0, ptr %i.ami, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit818

sqlite3VdbeAddOp2.exit818:                        ; preds = %bb.gp, %bb.go, %bb.gl, %bb.gk, %sqlite3ExprCodeCopy.exit815
end_hunk_19
begin_hunk_20_@sqlite3GenerateConstraintChecks:bb.a
  store i32 %i.app, ptr %i.aqp, align 4, !tbaa !954
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8
  store i32 %i.add, ptr %i.aqq, align 8, !tbaa !955
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqn, i64 12
  store i32 %6, ptr %i.aqr, align 4, !tbaa !956
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqn, i64 16
  store ptr null, ptr %i.aqs, align 8, !tbaa !741
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqn, i64 1
  store i8 0, ptr %i.aqt, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit850

sqlite3VdbeAddOp3.exit850:                        ; preds = %bb.hq, %bb.hr
  %i.aqu = load i32, ptr %i.abk, align 8, !tbaa !711 ; 2 uses
  %i.aqv = icmp sgt i32 %i.aqu, 0
  br i1 %i.aqv, label %bb.hs, label %sqlite3VdbeChangeP5.exit851

bb.hs:                                            ; preds = %sqlite3VdbeAddOp3.exit850
  %i.aqw = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.aqx = zext nneg i32 %i.aqu to i64
  %i.aqy = getelementptr [24 x i8], ptr %i.aqw, i64 %i.aqx
  %i.aqz = getelementptr i8, ptr %i.aqy, i64 -22
  store i16 144, ptr %i.aqz, align 2, !tbaa !957
  br label %sqlite3VdbeChangeP5.exit851

bb.ht:                                            ; preds = %bb.hl
  br i1 %i.anb, label %.loopexit, label %.preheader999

.preheader999:                                    ; preds = %bb.ht
  %i.ara = load i16, ptr %i.acc, align 2, !tbaa !1202
  %.not1085 = icmp eq i16 %i.ara, 0
  br i1 %.not1085, label %.loopexit, label %.lr.ph1054

.lr.ph1054:                                       ; preds = %.preheader999
  %i.arb = getelementptr inbounds nuw i8, ptr %.36011067, i64 8
  %i.arc = zext i32 %i.app to i64
  br label %bb.hu

bb.hu:                                            ; preds = %.lr.ph1054, %sqlite3VdbeAddOp3.exit862
  %indvars.iv1111 = phi i64 [ 0, %.lr.ph1054 ], [ %indvars.iv.next1112, %sqlite3VdbeAddOp3.exit862 ] ; 3 uses
  %i.ard = load ptr, ptr %i.acd, align 8, !tbaa !1159
  %i.are = getelementptr inbounds nuw [2 x i8], ptr %i.ard, i64 %indvars.iv1111
  %i.arf = load i16, ptr %i.are, align 2, !tbaa !789
  %i.arg = load i16, ptr %i.aef, align 8, !tbaa !1158 ; 2 uses
  %.not.i852 = icmp eq i16 %i.arg, 0
  br i1 %.not.i852, label %sqlite3TableColumnToIndex.exit, label %.lr.ph.i853

.lr.ph.i853:                                      ; preds = %bb.hu
  %i.arh = load ptr, ptr %i.arb, align 8, !tbaa !1159
  %wide.trip.count.i854 = zext i16 %i.arg to i64
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hw, %.lr.ph.i853
  %indvars.iv.i855 = phi i64 [ 0, %.lr.ph.i853 ], [ %indvars.iv.next.i856, %bb.hw ] ; 3 uses
  %i.ari = getelementptr inbounds nuw [2 x i8], ptr %i.arh, i64 %indvars.iv.i855
  %i.arj = load i16, ptr %i.ari, align 2, !tbaa !789
  %i.ark = icmp eq i16 %i.arf, %i.arj
  br i1 %i.ark, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %indvars.iv.next.i856 = add nuw nsw i64 %indvars.iv.i855, 1 ; 2 uses
  %exitcond.not.i857 = icmp eq i64 %indvars.iv.next.i856, %wide.trip.count.i854
  br i1 %exitcond.not.i857, label %sqlite3TableColumnToIndex.exit, label %bb.hv, !llvm.loop !79

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %bb.hv
  %i.arl = trunc nuw nsw i64 %indvars.iv.i855 to i32
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %bb.hw, %bb.hu, %._crit_edge.loopexit.split.loop.exit13.i
  %.08.i859 = phi i32 [ -1, %bb.hu ], [ %i.arl, %._crit_edge.loopexit.split.loop.exit13.i ], [ -1, %bb.hw ] ; 2 uses
  %i.arm = add nuw i64 %indvars.iv1111, %i.arc    ; 2 uses
  %i.arn = load i32, ptr %i.abk, align 8, !tbaa !711 ; 3 uses
  %i.aro = load i32, ptr %i.abp, align 4, !tbaa !1206
  %.not.i860 = icmp sgt i32 %i.aro, %i.arn
  br i1 %.not.i860, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %sqlite3TableColumnToIndex.exit
  %i.arp = trunc i64 %i.arm to i32
  %i.arq = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 95, i32 noundef %i.adf, i32 noundef %.08.i859, i32 noundef %i.arp), !inline_history !1234 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit862

bb.hy:                                            ; preds = %sqlite3TableColumnToIndex.exit
  %i.arr = add nsw i32 %i.arn, 1
  store i32 %i.arr, ptr %i.abk, align 8, !tbaa !711
  %i.ars = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.art = sext i32 %i.arn to i64
  %i.aru = getelementptr inbounds [24 x i8], ptr %i.ars, i64 %i.art ; 7 uses
  store i8 95, ptr %i.aru, align 8, !tbaa !938
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 2
  store i16 0, ptr %i.arv, align 2, !tbaa !957
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aru, i64 4
  store i32 %i.adf, ptr %i.arw, align 4, !tbaa !954
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  store i32 %.08.i859, ptr %i.arx, align 8, !tbaa !955
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aru, i64 12
  %i.arz = trunc i64 %i.arm to i32
  store i32 %i.arz, ptr %i.ary, align 4, !tbaa !956
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aru, i64 16
  store ptr null, ptr %i.asa, align 8, !tbaa !741
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aru, i64 1
  store i8 0, ptr %i.asb, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit862

sqlite3VdbeAddOp3.exit862:                        ; preds = %bb.hx, %bb.hy
  %indvars.iv.next1112 = add nuw nsw i64 %indvars.iv1111, 1 ; 2 uses
  %i.asc = load i16, ptr %i.acc, align 2, !tbaa !1202
  %i.asd = zext i16 %i.asc to i64
  %i.ase = icmp samesign ult i64 %indvars.iv.next1112, %i.asd
  br i1 %i.ase, label %bb.hu, label %.loopexit, !llvm.loop !6098

.loopexit:                                        ; preds = %sqlite3VdbeAddOp3.exit862, %.preheader999, %bb.ht
  br i1 %i.a, label %bb.hz, label %sqlite3VdbeChangeP5.exit851

bb.hz:                                            ; preds = %.loopexit
  %i.asf = load i16, ptr %i.acc, align 2, !tbaa !1202 ; 2 uses
  %.not1086 = icmp eq i16 %i.asf, 0
  br i1 %.not1086, label %sqlite3VdbeChangeP5.exit851, label %.lr.ph1059.preheader

.lr.ph1059.preheader:                             ; preds = %bb.hz
  %i.asg = getelementptr inbounds nuw i8, ptr %.36011067, i64 99
  %i.ash = load i16, ptr %i.asg, align 1
  %i.asi = and i16 %i.ash, 3
  %i.asj = icmp eq i16 %i.asi, 2
  %i.ask = select i1 %i.asj, i32 %i.aee, i32 %i.app
  %.val684 = load i32, ptr %i.abk, align 8, !tbaa !711
  %i.asl = zext i16 %i.asf to i32
  %i.asm = add nsw i32 %.val684, %i.asl
  br label %.lr.ph1059

.lr.ph1059:                                       ; preds = %.lr.ph1059.preheader, %sqlite3VdbeChangeP5.exit881
  %indvars.iv1114 = phi i64 [ 0, %.lr.ph1059.preheader ], [ %indvars.iv.next1115, %sqlite3VdbeChangeP5.exit881 ] ; 5 uses
  %.05211057 = phi i32 [ 53, %.lr.ph1059.preheader ], [ %spec.select681, %sqlite3VdbeChangeP5.exit881 ]
  %.05221056 = phi i32 [ %i.asm, %.lr.ph1059.preheader ], [ %spec.select, %sqlite3VdbeChangeP5.exit881 ]
  %i.asn = load ptr, ptr %i.ace, align 8, !tbaa !1984
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.asn, i64 %indvars.iv1114
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !747 ; 2 uses
  %i.asq = load ptr, ptr %0, align 8, !tbaa !1001 ; 3 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 100
  %i.ass = load i8, ptr %i.asr, align 4, !tbaa !1136 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asq, i64 197
  %i.asu = load i8, ptr %i.ast, align 1, !tbaa !915 ; 2 uses
  %i.asv = zext i8 %i.asu to i32
  %i.asw = call fastcc ptr @sqlite3FindCollSeq(ptr noundef %i.asq, i8 noundef zeroext %i.ass, ptr noundef %i.asp, i32 noundef %i.asv) ; 5 uses
  %.not.i863 = icmp eq i8 %i.asu, 0
  br i1 %.not.i863, label %bb.ia, label %sqlite3LocateCollSeq.exit

bb.ia:                                            ; preds = %.lr.ph1059
  %.not16.i = icmp eq ptr %i.asw, null
  br i1 %.not16.i, label %.sink.split.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 24
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !1396
  %.not17.i = icmp eq ptr %i.asy, null
  br i1 %.not17.i, label %.sink.split.i, label %sqlite3LocateCollSeq.exit

.sink.split.i:                                    ; preds = %bb.ib, %bb.ia
  %i.asz = call fastcc ptr @sqlite3GetCollSeq(ptr noundef nonnull %0, i8 noundef zeroext %i.ass, ptr noundef %i.asw, ptr noundef %i.asp)
  br label %sqlite3LocateCollSeq.exit

sqlite3LocateCollSeq.exit:                        ; preds = %.lr.ph1059, %bb.ib, %.sink.split.i
  %.0.i864 = phi ptr [ %i.asw, %.lr.ph1059 ], [ %i.asw, %bb.ib ], [ %i.asz, %.sink.split.i ]
  %i.ata = load ptr, ptr %i.acd, align 8, !tbaa !1159
  %i.atb = getelementptr inbounds nuw [2 x i8], ptr %i.ata, i64 %indvars.iv1114
  %i.atc = load i16, ptr %i.atb, align 2, !tbaa !789 ; 9 uses
  %i.atd = load i16, ptr %i.acc, align 2, !tbaa !1202
  %i.ate = zext i16 %i.atd to i64
  %i.atf = add nuw nsw i64 %i.ate, 4294967295
  %i.atg = and i64 %i.atf, 4294967295
  %i.ath = icmp eq i64 %indvars.iv1114, %i.atg    ; 2 uses
  %spec.select = select i1 %i.ath, i32 %i.add, i32 %.05221056 ; 2 uses
  %spec.select681 = select i1 %i.ath, i32 54, i32 %.05211057 ; 2 uses
  %i.ati = load i32, ptr %i.g, align 8, !tbaa !1098
  %i.atj = and i32 %i.ati, 32
  %i.atk = icmp eq i32 %i.atj, 0
  %wide.trip.count.i870 = sext i16 %i.atc to i64  ; 6 uses
  %i.atl = icmp slt i16 %i.atc, 0
  %or.cond.i866 = or i1 %i.atl, %i.atk
  br i1 %or.cond.i866, label %sqlite3TableColumnToStorage.exit880, label %.preheader.i867

.preheader.i867:                                  ; preds = %sqlite3LocateCollSeq.exit
  %.not23.i868 = icmp eq i16 %i.atc, 0
  %i.atm = load ptr, ptr %i.abt, align 8, !tbaa !1162 ; 22 uses
  br i1 %.not23.i868, label %._crit_edge.i876, label %iter.check1278

iter.check1278:                                   ; preds = %.preheader.i867
  %min.iters.check1264 = icmp ult i16 %i.atc, 5
  br i1 %min.iters.check1264, label %vec.epilog.scalar.ph1279.preheader, label %vector.main.loop.iter.check1265

vector.main.loop.iter.check1265:                  ; preds = %iter.check1278
  %min.iters.check1266 = icmp ult i16 %i.atc, 17
  br i1 %min.iters.check1266, label %vec.epilog.ph1282, label %vector.ph1267

vector.ph1267:                                    ; preds = %vector.main.loop.iter.check1265
  %i.atn = and i64 %wide.trip.count.i870, 15
  %i.ato = and i16 %i.atc, 15
  %i.atp = icmp eq i16 %i.ato, 0
  %i.atq = select i1 %i.atp, i64 16, i64 %i.atn   ; 2 uses
  %n.vec1268 = sub nsw i64 %wide.trip.count.i870, %i.atq ; 3 uses
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.ph1267, %vector.body1269
  %index1270 = phi i64 [ 0, %vector.ph1267 ], [ %index.next1273, %vector.body1269 ] ; 17 uses
  %vec.phi1271 = phi <8 x i16> [ zeroinitializer, %vector.ph1267 ], [ %i.awj, %vector.body1269 ]
  %vec.phi1272 = phi <8 x i16> [ zeroinitializer, %vector.ph1267 ], [ %i.awk, %vector.body1269 ]
  %i.atr = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.ats = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.att = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.atu = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.atv = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.atw = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.atx = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.aty = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.atz = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.aua = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.aub = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.auc = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.aud = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.aue = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.auf = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.aug = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1270
  %i.auh = getelementptr inbounds nuw i8, ptr %i.atr, i64 14
  %i.aui = getelementptr inbounds nuw i8, ptr %i.ats, i64 30
  %i.auj = getelementptr inbounds nuw i8, ptr %i.att, i64 46
  %i.auk = getelementptr inbounds nuw i8, ptr %i.atu, i64 62
  %i.aul = getelementptr inbounds nuw i8, ptr %i.atv, i64 78
  %i.aum = getelementptr inbounds nuw i8, ptr %i.atw, i64 94
  %i.aun = getelementptr inbounds nuw i8, ptr %i.atx, i64 110
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aty, i64 126
  %i.aup = getelementptr inbounds nuw i8, ptr %i.atz, i64 142
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aua, i64 158
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aub, i64 174
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auc, i64 190
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aud, i64 206
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aue, i64 222
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auf, i64 238
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aug, i64 254
  %i.aux = load i16, ptr %i.auh, align 2, !tbaa !1164
  %i.auy = load i16, ptr %i.aui, align 2, !tbaa !1164
  %i.auz = load i16, ptr %i.auj, align 2, !tbaa !1164
  %i.ava = load i16, ptr %i.auk, align 2, !tbaa !1164
  %i.avb = load i16, ptr %i.aul, align 2, !tbaa !1164
  %i.avc = load i16, ptr %i.aum, align 2, !tbaa !1164
  %i.avd = load i16, ptr %i.aun, align 2, !tbaa !1164
  %i.ave = load i16, ptr %i.auo, align 2, !tbaa !1164
  %i.avf = insertelement <8 x i16> poison, i16 %i.aux, i64 0
  %i.avg = insertelement <8 x i16> %i.avf, i16 %i.auy, i64 1
  %i.avh = insertelement <8 x i16> %i.avg, i16 %i.auz, i64 2
  %i.avi = insertelement <8 x i16> %i.avh, i16 %i.ava, i64 3
  %i.avj = insertelement <8 x i16> %i.avi, i16 %i.avb, i64 4
  %i.avk = insertelement <8 x i16> %i.avj, i16 %i.avc, i64 5
  %i.avl = insertelement <8 x i16> %i.avk, i16 %i.avd, i64 6
  %i.avm = insertelement <8 x i16> %i.avl, i16 %i.ave, i64 7
  %i.avn = load i16, ptr %i.aup, align 2, !tbaa !1164
  %i.avo = load i16, ptr %i.auq, align 2, !tbaa !1164
  %i.avp = load i16, ptr %i.aur, align 2, !tbaa !1164
  %i.avq = load i16, ptr %i.aus, align 2, !tbaa !1164
  %i.avr = load i16, ptr %i.aut, align 2, !tbaa !1164
  %i.avs = load i16, ptr %i.auu, align 2, !tbaa !1164
  %i.avt = load i16, ptr %i.auv, align 2, !tbaa !1164
  %i.avu = load i16, ptr %i.auw, align 2, !tbaa !1164
  %i.avv = insertelement <8 x i16> poison, i16 %i.avn, i64 0
  %i.avw = insertelement <8 x i16> %i.avv, i16 %i.avo, i64 1
  %i.avx = insertelement <8 x i16> %i.avw, i16 %i.avp, i64 2
  %i.avy = insertelement <8 x i16> %i.avx, i16 %i.avq, i64 3
  %i.avz = insertelement <8 x i16> %i.avy, i16 %i.avr, i64 4
  %i.awa = insertelement <8 x i16> %i.avz, i16 %i.avs, i64 5
  %i.awb = insertelement <8 x i16> %i.awa, i16 %i.avt, i64 6
  %i.awc = insertelement <8 x i16> %i.awb, i16 %i.avu, i64 7
  %i.awd = lshr <8 x i16> %i.avm, splat (i16 5)
  %i.awe = lshr <8 x i16> %i.awc, splat (i16 5)
  %i.awf = and <8 x i16> %i.awd, splat (i16 1)
  %i.awg = and <8 x i16> %i.awe, splat (i16 1)
  %i.awh = xor <8 x i16> %i.awf, splat (i16 1)
  %i.awi = xor <8 x i16> %i.awg, splat (i16 1)
  %i.awj = add <8 x i16> %i.awh, %vec.phi1271     ; 2 uses
  %i.awk = add <8 x i16> %i.awi, %vec.phi1272     ; 2 uses
  %index.next1273 = add nuw i64 %index1270, 16    ; 2 uses
  %i.awl = icmp eq i64 %index.next1273, %n.vec1268
  br i1 %i.awl, label %vec.epilog.iter.check1280, label %vector.body1269, !llvm.loop !6099

vec.epilog.iter.check1280:                        ; preds = %vector.body1269
  %bin.rdx1275 = add <8 x i16> %i.awk, %i.awj
  %i.awm = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1275) ; 2 uses
  %min.epilog.iters.check1281 = icmp samesign ult i64 %i.atq, 5
  br i1 %min.epilog.iters.check1281, label %vec.epilog.scalar.ph1279.preheader, label %vec.epilog.ph1282, !prof !1165

vec.epilog.ph1282:                                ; preds = %vector.main.loop.iter.check1265, %vec.epilog.iter.check1280
  %vec.epilog.resume.val1276 = phi i64 [ %n.vec1268, %vec.epilog.iter.check1280 ], [ 0, %vector.main.loop.iter.check1265 ]
  %bc.merge.rdx1277 = phi i16 [ %i.awm, %vec.epilog.iter.check1280 ], [ 0, %vector.main.loop.iter.check1265 ]
  %i.awn = and i64 %wide.trip.count.i870, 3
  %i.awo = and i16 %i.atc, 3
  %i.awp = icmp eq i16 %i.awo, 0
  %i.awq = select i1 %i.awp, i64 4, i64 %i.awn
  %n.vec1283 = sub nsw i64 %wide.trip.count.i870, %i.awq ; 2 uses
  %i.awr = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1277, i64 0
  br label %vec.epilog.vector.body1284

vec.epilog.vector.body1284:                       ; preds = %vec.epilog.vector.body1284, %vec.epilog.ph1282
  %index1285 = phi i64 [ %vec.epilog.resume.val1276, %vec.epilog.ph1282 ], [ %index.next1287, %vec.epilog.vector.body1284 ] ; 5 uses
  %vec.phi1286 = phi <4 x i16> [ %i.awr, %vec.epilog.ph1282 ], [ %i.axl, %vec.epilog.vector.body1284 ]
  %i.aws = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %index1285
  %i.awt = getelementptr [16 x i8], ptr %i.atm, i64 %index1285
  %i.awu = getelementptr [16 x i8], ptr %i.atm, i64 %index1285
  %i.awv = getelementptr [16 x i8], ptr %i.atm, i64 %index1285
  %i.aww = getelementptr inbounds nuw i8, ptr %i.aws, i64 14
  %i.awx = getelementptr i8, ptr %i.awt, i64 30
  %i.awy = getelementptr i8, ptr %i.awu, i64 46
  %i.awz = getelementptr i8, ptr %i.awv, i64 62
  %i.axa = load i16, ptr %i.aww, align 2, !tbaa !1164
  %i.axb = load i16, ptr %i.awx, align 2, !tbaa !1164
  %i.axc = load i16, ptr %i.awy, align 2, !tbaa !1164
  %i.axd = load i16, ptr %i.awz, align 2, !tbaa !1164
  %i.axe = insertelement <4 x i16> poison, i16 %i.axa, i64 0
  %i.axf = insertelement <4 x i16> %i.axe, i16 %i.axb, i64 1
  %i.axg = insertelement <4 x i16> %i.axf, i16 %i.axc, i64 2
  %i.axh = insertelement <4 x i16> %i.axg, i16 %i.axd, i64 3
  %i.axi = lshr <4 x i16> %i.axh, splat (i16 5)
  %i.axj = and <4 x i16> %i.axi, splat (i16 1)
  %i.axk = xor <4 x i16> %i.axj, splat (i16 1)
  %i.axl = add <4 x i16> %i.axk, %vec.phi1286     ; 2 uses
  %index.next1287 = add nuw i64 %index1285, 4     ; 2 uses
  %i.axm = icmp eq i64 %index.next1287, %n.vec1283
  br i1 %i.axm, label %vec.epilog.middle.block1288, label %vec.epilog.vector.body1284, !llvm.loop !6100

vec.epilog.middle.block1288:                      ; preds = %vec.epilog.vector.body1284
  %i.axn = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.axl)
  br label %vec.epilog.scalar.ph1279.preheader

vec.epilog.scalar.ph1279.preheader:               ; preds = %iter.check1278, %vec.epilog.iter.check1280, %vec.epilog.middle.block1288
  %indvars.iv.i871.ph = phi i64 [ 0, %iter.check1278 ], [ %n.vec1268, %vec.epilog.iter.check1280 ], [ %n.vec1283, %vec.epilog.middle.block1288 ]
  %.021.i872.ph = phi i16 [ 0, %iter.check1278 ], [ %i.awm, %vec.epilog.iter.check1280 ], [ %i.axn, %vec.epilog.middle.block1288 ]
  br label %vec.epilog.scalar.ph1279

vec.epilog.scalar.ph1279:                         ; preds = %vec.epilog.scalar.ph1279.preheader, %vec.epilog.scalar.ph1279
  %indvars.iv.i871 = phi i64 [ %indvars.iv.next.i874, %vec.epilog.scalar.ph1279 ], [ %indvars.iv.i871.ph, %vec.epilog.scalar.ph1279.preheader ] ; 2 uses
  %.021.i872 = phi i16 [ %spec.select.i873, %vec.epilog.scalar.ph1279 ], [ %.021.i872.ph, %vec.epilog.scalar.ph1279.preheader ]
  %i.axo = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %indvars.iv.i871
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 14
  %i.axq = load i16, ptr %i.axp, align 2, !tbaa !1164
  %i.axr = lshr i16 %i.axq, 5
  %i.axs = and i16 %i.axr, 1
  %i.axt = xor i16 %i.axs, 1
  %spec.select.i873 = add i16 %i.axt, %.021.i872  ; 2 uses
  %indvars.iv.next.i874 = add nuw nsw i64 %indvars.iv.i871, 1 ; 2 uses
  %exitcond.not.i875 = icmp eq i64 %indvars.iv.next.i874, %wide.trip.count.i870
  br i1 %exitcond.not.i875, label %._crit_edge.i876, label %vec.epilog.scalar.ph1279, !llvm.loop !6101

._crit_edge.i876:                                 ; preds = %vec.epilog.scalar.ph1279, %.preheader.i867
  %.pre-phi1124 = phi i64 [ 0, %.preheader.i867 ], [ %wide.trip.count.i870, %vec.epilog.scalar.ph1279 ]
  %.0.lcssa.i877 = phi i16 [ 0, %.preheader.i867 ], [ %spec.select.i873, %vec.epilog.scalar.ph1279 ] ; 2 uses
  %i.axu = getelementptr inbounds nuw [16 x i8], ptr %i.atm, i64 %.pre-phi1124
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 14
  %i.axw = load i16, ptr %i.axv, align 2, !tbaa !1164
  %i.axx = and i16 %i.axw, 32
  %.not.i878 = icmp eq i16 %i.axx, 0
  br i1 %.not.i878, label %sqlite3TableColumnToStorage.exit880, label %bb.ic

bb.ic:                                            ; preds = %._crit_edge.i876
  %i.axy = load i16, ptr %i.abu, align 8, !tbaa !1166
  %i.axz = sub i16 %i.atc, %.0.lcssa.i877
  %i.aya = add i16 %i.axz, %i.axy
  br label %sqlite3TableColumnToStorage.exit880

sqlite3TableColumnToStorage.exit880:              ; preds = %sqlite3LocateCollSeq.exit, %._crit_edge.i876, %bb.ic
  %.018.i879 = phi i16 [ %i.atc, %sqlite3LocateCollSeq.exit ], [ %i.aya, %bb.ic ], [ %.0.lcssa.i877, %._crit_edge.i876 ]
  %i.ayb = sext i16 %.018.i879 to i32
  %i.ayc = add nsw i32 %i.acf, %i.ayb
  %i.ayd = trunc nuw nsw i64 %indvars.iv1114 to i32
  %i.aye = add i32 %i.ask, %i.ayd
  %i.ayf = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %i.d, i32 noundef %spec.select681, i32 noundef %i.ayc, i32 noundef %spec.select, i32 noundef %i.aye, ptr noundef %.0.i864, i32 noundef -2) ; 0 uses
  %i.ayg = load i32, ptr %i.abk, align 8, !tbaa !711 ; 2 uses
  %i.ayh = icmp sgt i32 %i.ayg, 0
  br i1 %i.ayh, label %bb.id, label %sqlite3VdbeChangeP5.exit881

bb.id:                                            ; preds = %sqlite3TableColumnToStorage.exit880
  %i.ayi = load ptr, ptr %i.abl, align 8, !tbaa !710
  %i.ayj = zext nneg i32 %i.ayg to i64
  %i.ayk = getelementptr [24 x i8], ptr %i.ayi, i64 %i.ayj
  %i.ayl = getelementptr i8, ptr %i.ayk, i64 -22
  store i16 144, ptr %i.ayl, align 2, !tbaa !957
  br label %sqlite3VdbeChangeP5.exit881

sqlite3VdbeChangeP5.exit881:                      ; preds = %sqlite3TableColumnToStorage.exit880, %bb.id
  %indvars.iv.next1115 = add nuw nsw i64 %indvars.iv1114, 1 ; 2 uses
  %i.aym = load i16, ptr %i.acc, align 2, !tbaa !1202
  %i.ayn = zext i16 %i.aym to i64
  %i.ayo = icmp samesign ult i64 %indvars.iv.next1115, %i.ayn
  br i1 %i.ayo, label %.lr.ph1059, label %sqlite3VdbeChangeP5.exit851, !llvm.loop !6102

sqlite3VdbeChangeP5.exit851:                      ; preds = %sqlite3VdbeChangeP5.exit881, %bb.hz, %bb.hs, %sqlite3VdbeAddOp3.exit850, %.loopexit, %sqlite3VdbeAddOp2.exit847, %sqlite3GetTempRange.exit
  %trunc = trunc nuw i32 %.10 to i8
  switch i8 %trunc, label %bb.ij [
    i8 1, label %bb.ie
    i8 2, label %bb.ie
    i8 3, label %bb.ie
    i8 6, label %bb.if
    i8 4, label %bb.ig
  ]

bb.ie:                                            ; preds = %sqlite3VdbeChangeP5.exit851, %sqlite3VdbeChangeP5.exit851, %sqlite3VdbeChangeP5.exit851
  call fastcc void @sqlite3UniqueConstraint(ptr noundef nonnull %0, i32 noundef %.10, ptr noundef nonnull %.36011067)
end_hunk_20
begin_hunk_21_@unistrFunc:bb.a
  %i.hf = and i8 %i.fz, 64
  %.not.i.i102.3 = icmp eq i8 %i.hf, 0
  %i.hg = select i1 %.not.i.i102.3, i8 0, i8 9
  %i.hh = add i8 %i.hg, %i.fz
  %i.hi = and i8 %i.hh, 15
  %i.hj = or disjoint i8 %i.he, %i.hi
  %i.hk = zext i8 %i.hj to i32
  %i.hl = or disjoint i32 %i.ha, %i.hk            ; 3 uses
  %i.hm = and i8 %i.gf, 64
  %.not.i.i102.4 = icmp eq i8 %i.hm, 0
  %i.hn = select i1 %.not.i.i102.4, i8 0, i8 9
  %i.ho = add i8 %i.hn, %i.gf
  %i.hp = shl nuw nsw i32 %i.hl, 8
  %i.hq = shl i8 %i.ho, 4
  %i.hr = zext i8 %i.hq to i32
  %i.hs = or disjoint i32 %i.hp, %i.hr            ; 5 uses
  %i.ht = and i8 %i.gl, 64
  %.not.i.i102.5 = icmp eq i8 %i.ht, 0
  %i.hu = select i1 %.not.i.i102.5, i8 0, i8 9
  %i.hv = add i8 %i.hu, %i.gl
  %i.hw = and i8 %i.hv, 15
  %i.hx = zext nneg i8 %i.hw to i32
  %i.hy = or disjoint i32 %i.hs, %i.hx            ; 4 uses
  %i.hz = add nuw nsw i32 %.179, 8                ; 4 uses
  %i.ia = zext nneg i32 %.1 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ia ; 7 uses
  %i.ic = icmp samesign ult i32 %i.hs, 128
  br i1 %i.ic, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %isNHex.exit106
  %i.id = trunc nuw nsw i32 %i.hy to i8
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

bb.al:                                            ; preds = %isNHex.exit106
  %i.ie = icmp samesign ult i32 %i.hl, 8
  br i1 %i.ie, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.if = lshr i32 %i.hs, 6
  %i.ig = trunc nuw nsw i32 %i.if to i8
  %i.ih = or disjoint i8 %i.ig, -64
  store i8 %i.ih, ptr %i.ib, align 1, !tbaa !741
  %i.ii = trunc i32 %i.hy to i8
  %i.ij = and i8 %i.ii, 63
  %i.ik = or disjoint i8 %i.ij, -128
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

bb.an:                                            ; preds = %bb.al
  %i.im = icmp eq i8 %i.gy, 0
  br i1 %i.im, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.in = and i8 %i.hd, 15
  %i.io = or disjoint i8 %i.in, -32
  store i8 %i.io, ptr %i.ib, align 1, !tbaa !741
  %i.ip = lshr i32 %i.hs, 6
  %i.iq = trunc i32 %i.ip to i8
  %i.ir = and i8 %i.iq, 63
  %i.is = or disjoint i8 %i.ir, -128
  %i.it = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store i8 %i.is, ptr %i.it, align 1, !tbaa !741
  %i.iu = trunc i32 %i.hy to i8
  %i.iv = and i8 %i.iu, 63
  %i.iw = or disjoint i8 %i.iv, -128
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

bb.ap:                                            ; preds = %bb.an
  %i.iy = lshr i8 %i.gy, 2
  %i.iz = lshr i32 %i.hl, 4
  %i.ja = trunc i32 %i.iz to i8
  %i.jb = lshr i32 %i.hs, 6
  %i.jc = trunc i32 %i.jb to i8
  %i.jd = trunc i32 %i.hy to i8
  %i.je = insertelement <4 x i8> poison, i8 %i.iy, i64 0
  %i.jf = insertelement <4 x i8> %i.je, i8 %i.ja, i64 1
  %i.jg = insertelement <4 x i8> %i.jf, i8 %i.jc, i64 2
  %i.jh = insertelement <4 x i8> %i.jg, i8 %i.jd, i64 3
  %i.ji = and <4 x i8> %i.jh, <i8 7, i8 63, i8 63, i8 63>
  %i.jj = or disjoint <4 x i8> %i.ji, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.jj, ptr %i.ib, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

bb.aq:                                            ; preds = %bb.ad
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !741 ; 3 uses
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !741
  %i.jp = and i8 %i.jo, 8
  %.not.i111 = icmp eq i8 %i.jp, 0
  br i1 %.not.i111, label %isNHex.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !741 ; 3 uses
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !741
  %i.jv = and i8 %i.ju, 8
  %.not.i111.1 = icmp eq i8 %i.jv, 0
  br i1 %.not.i111.1, label %isNHex.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !741 ; 3 uses
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !741
  %i.kb = and i8 %i.ka, 8
  %.not.i111.2 = icmp eq i8 %i.kb, 0
  br i1 %.not.i111.2, label %isNHex.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kc = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !741 ; 3 uses
  %i.ke = zext i8 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !741
  %i.kh = and i8 %i.kg, 8
  %.not.i111.3 = icmp eq i8 %i.kh, 0
  br i1 %.not.i111.3, label %isNHex.exit.thread, label %isNHex.exit116

isNHex.exit116:                                   ; preds = %bb.at
  %i.ki = and i8 %i.jl, 64
  %.not.i.i112 = icmp eq i8 %i.ki, 0
  %i.kj = select i1 %.not.i.i112, i8 0, i8 9
  %i.kk = add i8 %i.kj, %i.jl                     ; 2 uses
  %i.kl = shl i8 %i.kk, 4
  %i.km = and i8 %i.jr, 64
  %.not.i.i112.1 = icmp eq i8 %i.km, 0
  %i.kn = select i1 %.not.i.i112.1, i8 0, i8 9
  %i.ko = add i8 %i.kn, %i.jr
  %i.kp = and i8 %i.ko, 15
  %i.kq = or disjoint i8 %i.kl, %i.kp             ; 2 uses
  %i.kr = zext i8 %i.kq to i32
  %i.ks = and i8 %i.jx, 64
  %.not.i.i112.2 = icmp eq i8 %i.ks, 0
  %i.kt = select i1 %.not.i.i112.2, i8 0, i8 9
  %i.ku = add i8 %i.kt, %i.jx
  %i.kv = shl nuw nsw i32 %i.kr, 8
  %i.kw = shl i8 %i.ku, 4
  %i.kx = zext i8 %i.kw to i32
  %i.ky = or disjoint i32 %i.kv, %i.kx            ; 4 uses
  %i.kz = and i8 %i.kd, 64
  %.not.i.i112.3 = icmp eq i8 %i.kz, 0
  %i.la = select i1 %.not.i.i112.3, i8 0, i8 9
  %i.lb = add i8 %i.la, %i.kd
  %i.lc = and i8 %i.lb, 15
  %i.ld = zext nneg i8 %i.lc to i32
  %i.le = or disjoint i32 %i.ky, %i.ld            ; 3 uses
  %i.lf = add nuw nsw i32 %.179, 6                ; 3 uses
  %i.lg = zext nneg i32 %.1 to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.lg ; 5 uses
  %i.li = icmp samesign ult i32 %i.ky, 128
  br i1 %i.li, label %bb.au, label %bb.av

bb.au:                                            ; preds = %isNHex.exit116
  %i.lj = trunc nuw nsw i32 %i.le to i8
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

bb.av:                                            ; preds = %isNHex.exit116
  %i.lk = icmp ult i8 %i.kq, 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 1 ; 2 uses
  br i1 %i.lk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lm = lshr i32 %i.ky, 6
  %i.ln = trunc nuw nsw i32 %i.lm to i8
  %i.lo = or disjoint i8 %i.ln, -64
  store i8 %i.lo, ptr %i.lh, align 1, !tbaa !741
  %i.lp = trunc i32 %i.le to i8
  %i.lq = and i8 %i.lp, 63
  %i.lr = or disjoint i8 %i.lq, -128
  store i8 %i.lr, ptr %i.ll, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

bb.ax:                                            ; preds = %bb.av
  %i.ls = and i8 %i.kk, 15
  %i.lt = or disjoint i8 %i.ls, -32
  store i8 %i.lt, ptr %i.lh, align 1, !tbaa !741
  %i.lu = lshr i32 %i.ky, 6
  %i.lv = trunc i32 %i.lu to i8
  %i.lw = and i8 %i.lv, 63
  %i.lx = or disjoint i8 %i.lw, -128
  store i8 %i.lx, ptr %i.ll, align 1, !tbaa !741
  %i.ly = trunc i32 %i.le to i8
  %i.lz = and i8 %i.ly, 63
  %i.ma = or disjoint i8 %i.lz, -128
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

bb.ay:                                            ; preds = %bb.ad
  %i.mc = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !741 ; 2 uses
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !741
  %i.mh = and i8 %i.mg, 8
  %.not.i121 = icmp eq i8 %i.mh, 0
  br i1 %.not.i121, label %isNHex.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mi = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !741 ; 2 uses
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !741
  %i.mn = and i8 %i.mm, 8
  %.not.i121.1 = icmp eq i8 %i.mn, 0
  br i1 %.not.i121.1, label %isNHex.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mo = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !741 ; 2 uses
  %i.mq = zext i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !741
  %i.mt = and i8 %i.ms, 8
  %.not.i121.2 = icmp eq i8 %i.mt, 0
  br i1 %.not.i121.2, label %isNHex.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mu = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !741 ; 2 uses
  %i.mw = zext i8 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !741
  %i.mz = and i8 %i.my, 8
  %.not.i121.3 = icmp eq i8 %i.mz, 0
  br i1 %.not.i121.3, label %isNHex.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.na = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !741 ; 3 uses
  %i.nc = zext i8 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !741
  %i.nf = and i8 %i.ne, 8
  %.not.i121.4 = icmp eq i8 %i.nf, 0
  br i1 %.not.i121.4, label %isNHex.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.cj, i64 7
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !741 ; 3 uses
  %i.ni = zext i8 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !741
  %i.nl = and i8 %i.nk, 8
  %.not.i121.5 = icmp eq i8 %i.nl, 0
  br i1 %.not.i121.5, label %isNHex.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !741 ; 3 uses
  %i.no = zext i8 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !741
  %i.nr = and i8 %i.nq, 8
  %.not.i121.6 = icmp eq i8 %i.nr, 0
  br i1 %.not.i121.6, label %isNHex.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ns = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !741 ; 3 uses
  %i.nu = zext i8 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !741
  %i.nx = and i8 %i.nw, 8
  %.not.i121.7 = icmp eq i8 %i.nx, 0
  br i1 %.not.i121.7, label %isNHex.exit.thread, label %isNHex.exit126

isNHex.exit126:                                   ; preds = %bb.bf
  %3 = insertelement <4 x i8> poison, i8 %i.mj, i64 0
  %4 = insertelement <4 x i8> %3, i8 %i.md, i64 1
  %5 = insertelement <4 x i8> %4, i8 %i.mp, i64 2
  %6 = insertelement <4 x i8> %5, i8 %i.mv, i64 3 ; 2 uses
  %7 = and <4 x i8> %6, splat (i8 64)
  %8 = icmp eq <4 x i8> %7, zeroinitializer
  %9 = select <4 x i1> %8, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %10 = add <4 x i8> %9, %6
  %11 = and <4 x i8> %10, splat (i8 15)
  %12 = zext nneg <4 x i8> %11 to <4 x i32>
  %13 = shl nuw nsw <4 x i32> %12, <i32 8, i32 12, i32 4, i32 0>
  %14 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %13) ; 3 uses
  %i.ny = shl nuw nsw i32 %14, 8
  %i.nz = and i8 %i.nb, 64
  %.not.i.i122.4 = icmp eq i8 %i.nz, 0
  %i.oa = select i1 %.not.i.i122.4, i8 0, i8 9
  %i.ob = add i8 %i.oa, %i.nb                     ; 2 uses
  %i.oc = shl i8 %i.ob, 4
  %i.od = and i8 %i.nh, 64
  %.not.i.i122.5 = icmp eq i8 %i.od, 0
  %i.oe = select i1 %.not.i.i122.5, i8 0, i8 9
  %i.of = add i8 %i.oe, %i.nh
  %i.og = and i8 %i.of, 15
  %i.oh = or disjoint i8 %i.oc, %i.og
  %i.oi = zext i8 %i.oh to i32
  %i.oj = or disjoint i32 %i.ny, %i.oi            ; 3 uses
  %i.ok = and i8 %i.nn, 64
  %.not.i.i122.6 = icmp eq i8 %i.ok, 0
  %i.ol = select i1 %.not.i.i122.6, i8 0, i8 9
  %i.om = add i8 %i.ol, %i.nn
  %i.on = shl nuw i32 %i.oj, 8
  %i.oo = shl i8 %i.om, 4
  %i.op = zext i8 %i.oo to i32
  %i.oq = or disjoint i32 %i.on, %i.op            ; 5 uses
  %i.or = and i8 %i.nt, 64
  %.not.i.i122.7 = icmp eq i8 %i.or, 0
  %i.os = select i1 %.not.i.i122.7, i8 0, i8 9
  %i.ot = add i8 %i.os, %i.nt
  %i.ou = and i8 %i.ot, 15
  %i.ov = zext nneg i8 %i.ou to i32
  %i.ow = or disjoint i32 %i.oq, %i.ov            ; 4 uses
  %i.ox = add nuw nsw i32 %.179, 10               ; 4 uses
  %i.oy = zext nneg i32 %.1 to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.oy ; 7 uses
  %i.pa = icmp ult i32 %i.oq, 128
  br i1 %i.pa, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %isNHex.exit126
  %i.pb = trunc nuw nsw i32 %i.ow to i8
  store i8 %i.pb, ptr %i.oz, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

bb.bh:                                            ; preds = %isNHex.exit126
  %i.pc = icmp samesign ult i32 %i.oj, 8
  br i1 %i.pc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.pd = lshr i32 %i.oq, 6
  %i.pe = trunc nuw nsw i32 %i.pd to i8
  %i.pf = or disjoint i8 %i.pe, -64
  store i8 %i.pf, ptr %i.oz, align 1, !tbaa !741
  %i.pg = trunc i32 %i.ow to i8
  %i.ph = and i8 %i.pg, 63
  %i.pi = or disjoint i8 %i.ph, -128
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oz, i64 1
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

bb.bj:                                            ; preds = %bb.bh
  %i.pk = icmp eq i32 %14, 0
  br i1 %i.pk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.pl = and i8 %i.ob, 15
  %i.pm = or disjoint i8 %i.pl, -32
  store i8 %i.pm, ptr %i.oz, align 1, !tbaa !741
  %i.pn = lshr i32 %i.oq, 6
  %i.po = trunc i32 %i.pn to i8
  %i.pp = and i8 %i.po, 63
  %i.pq = or disjoint i8 %i.pp, -128
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oz, i64 1
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !741
  %i.ps = trunc i32 %i.ow to i8
  %i.pt = and i8 %i.ps, 63
  %i.pu = or disjoint i8 %i.pt, -128
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oz, i64 2
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

bb.bl:                                            ; preds = %bb.bj
  %i.pw = lshr i32 %i.oq, 6
  %i.px = lshr i32 %i.oj, 4
  %i.py = trunc i32 %i.ow to i8
  %i.pz = trunc i32 %i.pw to i8
  %i.qa = trunc i32 %i.px to i8
  %i.qb = trunc i32 %14 to i8
  %i.qc = lshr i8 %i.qb, 2
  %i.qd = insertelement <4 x i8> poison, i8 %i.qc, i64 0
  %i.qe = insertelement <4 x i8> %i.qd, i8 %i.qa, i64 1
  %i.qf = insertelement <4 x i8> %i.qe, i8 %i.pz, i64 2
  %i.qg = insertelement <4 x i8> %i.qf, i8 %i.py, i64 3
  %i.qh = and <4 x i8> %i.qg, <i8 7, i8 63, i8 63, i8 63>
  %i.qi = or disjoint <4 x i8> %i.qh, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.qi, ptr %i.oz, align 1, !tbaa !741
  br label %sqlite3AppendOneUtf8Character.exit

sqlite3AppendOneUtf8Character.exit:               ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.ax, %bb.aw, %bb.au, %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.ac, %bb.ab, %bb.z, %bb.x
  %.381 = phi i32 [ %i.ox, %bb.bk ], [ %i.cn, %bb.x ], [ %i.hz, %bb.ap ], [ %i.ox, %bb.bl ], [ %i.ej, %bb.z ], [ %i.ej, %bb.ab ], [ %i.ej, %bb.ac ], [ %i.hz, %bb.ak ], [ %i.hz, %bb.am ], [ %i.hz, %bb.ao ], [ %i.lf, %bb.au ], [ %i.lf, %bb.aw ], [ %i.lf, %bb.ax ], [ %i.ox, %bb.bg ], [ %i.ox, %bb.bi ] ; 2 uses
  %.0.i127.pn = phi i32 [ 3, %bb.bk ], [ 1, %bb.x ], [ 4, %bb.ap ], [ 4, %bb.bl ], [ 1, %bb.z ], [ 2, %bb.ab ], [ 3, %bb.ac ], [ 1, %bb.ak ], [ 2, %bb.am ], [ 3, %bb.ao ], [ 1, %bb.au ], [ 2, %bb.aw ], [ 3, %bb.ax ], [ 1, %bb.bg ], [ 2, %bb.bi ]
  %.3 = add nuw nsw i32 %.0.i127.pn, %.1          ; 2 uses
  %i.qj = icmp slt i32 %.381, %.0.i.i93
  br i1 %i.qj, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %sqlite3AppendOneUtf8Character.exit, %.preheader164, %.thread156
  %.4 = phi i32 [ %i.bx, %.thread156 ], [ 0, %.preheader164 ], [ %.3, %sqlite3AppendOneUtf8Character.exit ]
  %i.qk = sext i32 %.4 to i64                     ; 2 uses
  %i.ql = getelementptr inbounds i8, ptr %i.ai, i64 %i.qk
  store i8 0, ptr %i.ql, align 1, !tbaa !741
  tail call void @sqlite3_result_text64(ptr noundef %0, ptr noundef nonnull %i.ai, i64 noundef %i.qk, ptr noundef nonnull @sqlite3_free, i8 noundef zeroext 16)
  br label %sqlite3_result_error_nomem.exit

isNHex.exit.thread:                               ; preds = %bb.ad, %.preheader.1, %.preheader.2, %.preheader.3, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.qm = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i129 = icmp eq i32 %i.qm, 0
  br i1 %.not.i129, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %isNHex.exit.thread
  %i.qn = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i130, label %sqlite3_mutex_enter.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.qo(ptr noundef nonnull %i.qn) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.bn, %bb.bm
  %i.qp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.qq = tail call i32 %i.qp(ptr noundef nonnull %i.ai) #59, !inline_history !13
  %i.qr = sext i32 %i.qq to i64
  %i.qs = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.qt = sub nsw i64 %i.qs, %i.qr
  store i64 %i.qt, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.qu = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.qv = add nsw i64 %i.qu, -1
  store i64 %i.qv, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.qw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.qw(ptr noundef nonnull %i.ai) #59, !inline_history !755
  %i.qx = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.qx, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.bo

bb.bo:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.qy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.qy(ptr noundef nonnull %i.qx) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.bp:                                            ; preds = %isNHex.exit.thread
  %i.qz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.qz(ptr noundef nonnull %i.ai) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.bo, %bb.bp
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.ra, align 4, !tbaa !576
  %i.rb = load ptr, ptr %0, align 8, !tbaa !767
  %i.rc = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.rb, ptr noundef nonnull @.str.1241, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.e, %bb.a, %bb.t, %bb.s, %bb.p, %sqlite3VdbeMemSetNull.exit.i, %sqlite3_value_text.exit, %sqlite3_free.exit, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quoteFunc(ptr nofree noundef captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %struct.sqlite3_str, align 8        ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.b = load ptr, ptr %0, align 8, !tbaa !767
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !691  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !576
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store ptr null, ptr %i.g, align 8, !tbaa !762
  store ptr %i.d, ptr %3, align 8, !tbaa !773
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !760
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 %i.f, ptr %i.i, align 4, !tbaa !772
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store i32 0, ptr %i.j, align 8, !tbaa !759
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  store i8 0, ptr %i.k, align 4, !tbaa !771
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 29 ; 5 uses
  store i8 0, ptr %i.l, align 1, !tbaa !758
  %i.m = load ptr, ptr %2, align 8, !tbaa !767    ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !743
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1121
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.t = load i16, ptr %i.s, align 4, !tbaa !694  ; 5 uses
  %i.u = and i16 %i.t, 63
  %i.v = zext nneg i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @sqlite3_value_type.aType, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !741
  switch i8 %i.x, label %bb.ad [
    i8 2, label %bb.b
    i8 1, label %bb.j
    i8 4, label %bb.q
    i8 3, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.y = zext i16 %i.t to i32                     ; 3 uses
  %i.z = and i32 %i.y, 8
  %.not.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load double, ptr %i.m, align 8, !tbaa !741
  br label %sqlite3_value_double.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = and i32 %i.y, 36
  %.not7.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not7.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !741
  %i.ad = sitofp i64 %i.ac to double
  br label %sqlite3_value_double.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = and i32 %i.y, 18
  %.not8.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not8.i.i.i, label %sqlite3_value_double.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.m, ptr noundef null), !inline_history !76
  br label %sqlite3_value_double.exit.i

sqlite3_value_double.exit.i:                      ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.0.i.i.i = phi double [ %i.aa, %bb.c ], [ %i.ad, %bb.e ], [ %i.af, %bb.g ], [ 0.000000e+00, %bb.f ] ; 3 uses
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %3, ptr noundef nonnull @.str.1242, double noundef %.0.i.i.i)
  %i.ag = load i32, ptr %i.j, align 8, !tbaa !759 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %sqlite3_str_value.exit.thread.i, label %sqlite3_str_value.exit.i

sqlite3_str_value.exit.i:                         ; preds = %sqlite3_value_double.exit.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !762
  %i.aj = zext i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 0, ptr %i.ak, align 1, !tbaa !741
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !762 ; 3 uses
  %.not45.i = icmp eq ptr %i.al, null
  br i1 %.not45.i, label %sqlite3_str_value.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %sqlite3_str_value.exit.i
  %i.am = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a) ; 0 uses
  %i.an = load double, ptr %i.a, align 8, !tbaa !788
  %i.ao = fcmp une double %.0.i.i.i, %i.an
  br i1 %i.ao, label %bb.i, label %sqlite3_str_value.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i8, ptr %i.l, align 1, !tbaa !758
  %i.aq = and i8 %i.ap, 4
  %.not.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i, label %sqlite3_str_reset.exit.i, label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.i
  %i.ar = load ptr, ptr %3, align 8, !tbaa !773
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.ar, ptr noundef nonnull %i.al)
  %.pre.i.i = load i8, ptr %i.l, align 1, !tbaa !758
  %i.as = and i8 %.pre.i.i, -5
  store i8 %i.as, ptr %i.l, align 1, !tbaa !758
  br label %sqlite3_str_reset.exit.i

sqlite3_str_reset.exit.i:                         ; preds = %sqlite3DbFree.exit.i.i, %bb.i
  store i32 0, ptr %i.h, align 8, !tbaa !760
  store i32 0, ptr %i.j, align 8, !tbaa !759
  store ptr null, ptr %i.g, align 8, !tbaa !762
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %3, ptr noundef nonnull @.str.1243, double noundef %.0.i.i.i)
  br label %sqlite3_str_value.exit.thread.i

sqlite3_str_value.exit.thread.i:                  ; preds = %sqlite3_str_reset.exit.i, %bb.h, %sqlite3_str_value.exit.i, %sqlite3_value_double.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sqlite3QuoteValue.exit

bb.j:                                             ; preds = %bb.a
  %i.at = zext i16 %i.t to i32                    ; 3 uses
  %i.au = and i32 %i.at, 36
end_hunk_21
begin_hunk_22_@porterNext:bb.a
  %i.ap = trunc i64 %indvars.iv.next654 to i32    ; 2 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !2870
  %exitcond657.not = icmp eq i32 %i.o, %i.ap
  br i1 %exitcond657.not, label %.critedge5, label %.lr.ph559, !llvm.loop !6417

.critedge5.loopexit.split.loop.exit:              ; preds = %bb.c
  %i.aq = trunc nsw i64 %indvars.iv653 to i32
  br label %.critedge5

.critedge5.loopexit.split.loop.exit890:           ; preds = %bb.d
  %i.ar = trunc nsw i64 %indvars.iv653 to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge67, %.critedge5.loopexit.split.loop.exit, %.critedge5.loopexit.split.loop.exit890, %.critedge
  %.lcssa496 = phi i32 [ %.promoted558705.lcssa, %.critedge ], [ %i.aq, %.critedge5.loopexit.split.loop.exit ], [ %i.ar, %.critedge5.loopexit.split.loop.exit890 ], [ %i.o, %.critedge67 ] ; 2 uses
  %.not65 = icmp sgt i32 %.lcssa496, %i.ae
  br i1 %.not65, label %bb.e, label %.backedge

bb.e:                                             ; preds = %.critedge5
  %i.as = sub nsw i32 %.lcssa496, %i.ae           ; 12 uses
  %i.at = load i32, ptr %i.h, align 8, !tbaa !2873
  %i.au = icmp sgt i32 %i.as, %i.at
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !2872 ; 2 uses
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = add nuw nsw i32 %i.as, 20               ; 2 uses
  store i32 %i.av, ptr %i.h, align 8, !tbaa !2873
  %i.aw = tail call i32 @sqlite3_initialize(), !inline_history !1272
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread449

sqlite3_realloc64.exit:                           ; preds = %bb.f
  %i.ax = sext i32 %i.av to i64
  %i.ay = tail call fastcc ptr @sqlite3Realloc(ptr noundef %.pre, i64 noundef %i.ax), !inline_history !1272 ; 3 uses
  %.not64.not = icmp eq ptr %i.ay, null
  br i1 %.not64.not, label %.thread449, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !2872
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.az = phi ptr [ %i.ay, %bb.g ], [ %.pre, %bb.e ] ; 24 uses
  %i.ba = ptrtoaddr ptr %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.lcssa ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.bc = add nsw i32 %i.as, -21
  %or.cond.i = icmp ult i32 %i.bc, -18
  %wide.trip.count.i.i = zext i32 %i.as to i64    ; 15 uses
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %min.iters.check985 = icmp ult i32 %i.as, 8
  br i1 %min.iters.check985, label %.lr.ph.i.i.preheader1039, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph.i.i.preheader
  %i.bd = add i64 %indvars.iv.lcssa, %i.e
  %i.be = sub i64 %i.bd, %i.ba
  %diff.check983 = icmp ugt i64 %i.be, -8
  br i1 %diff.check983, label %.lr.ph.i.i.preheader1039, label %vector.ph986

vector.ph986:                                     ; preds = %vector.memcheck982
  %n.vec987 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph986
  %index989 = phi i64 [ 0, %vector.ph986 ], [ %index.next994, %vector.body988 ] ; 3 uses
  %vec.phi990 = phi <4 x i1> [ zeroinitializer, %vector.ph986 ], [ %i.bt, %vector.body988 ]
  %vec.phi991 = phi <4 x i1> [ zeroinitializer, %vector.ph986 ], [ %i.bu, %vector.body988 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index989 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %wide.load992 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !741 ; 4 uses
  %wide.load993 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !741 ; 4 uses
  %i.bh = add <4 x i8> %wide.load992, splat (i8 -65)
  %i.bi = add <4 x i8> %wide.load993, splat (i8 -65)
  %i.bj = icmp ult <4 x i8> %i.bh, splat (i8 26)
  %i.bk = icmp ult <4 x i8> %i.bi, splat (i8 26)
  %i.bl = or disjoint <4 x i8> %wide.load992, splat (i8 32)
  %i.bm = or disjoint <4 x i8> %wide.load993, splat (i8 32)
  %i.bn = select <4 x i1> %i.bj, <4 x i8> %i.bl, <4 x i8> %wide.load992
  %i.bo = select <4 x i1> %i.bk, <4 x i8> %i.bm, <4 x i8> %wide.load993
  %i.bp = add <4 x i8> %wide.load992, splat (i8 -48)
  %i.bq = icmp ult <4 x i8> %i.bp, splat (i8 10)
  %i.br = add <4 x i8> %wide.load993, splat (i8 -48)
  %i.bs = icmp ult <4 x i8> %i.br, splat (i8 10)
  %i.bt = or <4 x i1> %vec.phi990, %i.bq          ; 2 uses
  %i.bu = or <4 x i1> %vec.phi991, %i.bs          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 %index989 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store <4 x i8> %i.bn, ptr %i.bv, align 1, !tbaa !741
  store <4 x i8> %i.bo, ptr %i.bw, align 1, !tbaa !741
  %index.next994 = add nuw i64 %index989, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next994, %n.vec987
  br i1 %i.bx, label %middle.block995, label %vector.body988, !llvm.loop !6418

middle.block995:                                  ; preds = %vector.body988
  %bin.rdx996 = or <4 x i1> %i.bu, %i.bt
  %bin.rdx996.fr = freeze <4 x i1> %bin.rdx996
  %i.by = bitcast <4 x i1> %bin.rdx996.fr to i4
  %.not1035 = icmp ne i4 %i.by, 0
  %rdx.select997 = zext i1 %.not1035 to i32       ; 2 uses
  %cmp.n998 = icmp eq i64 %n.vec987, %wide.trip.count.i.i
  br i1 %cmp.n998, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader1039

.lr.ph.i.i.preheader1039:                         ; preds = %vector.memcheck982, %.lr.ph.i.i.preheader, %middle.block995
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck982 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec987, %middle.block995 ] ; 5 uses
  %.045.i.i.ph = phi i32 [ 0, %vector.memcheck982 ], [ 0, %.lr.ph.i.i.preheader ], [ %rdx.select997, %middle.block995 ] ; 2 uses
  %xtraiter1102 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod1103.not = icmp eq i64 %xtraiter1102, 0
  br i1 %lcmp.mod1103.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader1039
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i.ph
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !741 ; 4 uses
  %i.cb = add i8 %i.ca, -65
  %or.cond.i.i.prol = icmp ult i8 %i.cb, 26
  %i.cc = or disjoint i8 %i.ca, 32
  %.sink.i.i.prol = select i1 %or.cond.i.i.prol, i8 %i.cc, i8 %i.ca
  %i.cd = add i8 %i.ca, -58
  %i.ce = icmp ult i8 %i.cd, -10
  %.2.i.i.prol = select i1 %i.ce, i32 %.045.i.i.ph, i32 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i.ph
  store i8 %.sink.i.i.prol, ptr %i.cf, align 1, !tbaa !741
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader1039
  %.2.i.i.lcssa1040.unr = phi i32 [ poison, %.lr.ph.i.i.preheader1039 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader1039 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.045.i.i.unr = phi i32 [ %.045.i.i.ph, %.lr.ph.i.i.preheader1039 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cg = add nsw i64 %wide.trip.count.i.i, -1
  %i.ch = icmp eq i64 %indvars.iv.i.i.ph, %i.cg
  br i1 %i.ch, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.045.i.i = phi i32 [ %.2.i.i.1, %.lr.ph.i.i ], [ %.045.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !741 ; 4 uses
  %i.ck = add i8 %i.cj, -65
  %or.cond.i.i = icmp ult i8 %i.ck, 26
  %i.cl = or disjoint i8 %i.cj, 32
  %.sink.i.i = select i1 %or.cond.i.i, i8 %i.cl, i8 %i.cj
  %i.cm = add i8 %i.cj, -58
  %i.cn = icmp ult i8 %i.cm, -10
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.co, align 1, !tbaa !741
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !741 ; 4 uses
  %i.cr = add i8 %i.cq, -65
  %or.cond.i.i.1 = icmp ult i8 %i.cr, 26
  %i.cs = or disjoint i8 %i.cq, 32
  %.sink.i.i.1 = select i1 %or.cond.i.i.1, i8 %i.cs, i8 %i.cq
  %i.ct = add i8 %i.cq, -58
  %i.cu = icmp ult i8 %i.ct, -10
  %i.cv = select i1 %i.cu, i1 %i.cn, i1 false
  %.2.i.i.1 = select i1 %i.cv, i32 %.045.i.i, i32 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i.i
  store i8 %.sink.i.i.1, ptr %i.cw, align 1, !tbaa !741
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6419

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block995
  %.2.i.i.lcssa = phi i32 [ %rdx.select997, %middle.block995 ], [ %.2.i.i.lcssa1040.unr, %.lr.ph.i.i.prol.loopexit ], [ %.2.i.i.1, %.lr.ph.i.i ]
  %i.cx = icmp eq i32 %.2.i.i.lcssa, 0
  %i.cy = select i1 %i.cx, i32 10, i32 3          ; 3 uses
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = icmp sgt i32 %i.as, %i.cz
  br i1 %i.da, label %iter.check1020, label %.loopexit.sink.split.i

iter.check1020:                                   ; preds = %._crit_edge.loopexit.i.i
  %i.db = sub i32 %i.as, %i.cy
  %i.dc = zext nneg i32 %i.cy to i64              ; 6 uses
  %i.dd = zext i32 %i.db to i64                   ; 8 uses
  %i.de = add nuw nsw i64 %i.dd, 1
  %umax1003 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %wide.trip.count.i.i)
  %i.df = sub nsw i64 %umax1003, %i.dd            ; 7 uses
  %min.iters.check1005 = icmp ult i64 %i.df, 8
  %i.dg = sub nsw i64 %i.dd, %i.dc
  %diff.check1002 = icmp ugt i64 %i.dg, -32
  %or.cond1036 = select i1 %min.iters.check1005, i1 true, i1 %diff.check1002
  br i1 %or.cond1036, label %.lr.ph50.i.i.preheader, label %vector.main.loop.iter.check1006

vector.main.loop.iter.check1006:                  ; preds = %iter.check1020
  %min.iters.check1007 = icmp ult i64 %i.df, 32
  br i1 %min.iters.check1007, label %vec.epilog.ph1024, label %vector.ph1008

vector.ph1008:                                    ; preds = %vector.main.loop.iter.check1006
  %i.dh = and i64 %i.df, 24
  %n.vec1009 = and i64 %i.df, -32                 ; 5 uses
  %i.di = add nsw i64 %n.vec1009, %i.dd
  %i.dj = or disjoint i64 %n.vec1009, %i.dc       ; 2 uses
  %invariant.gep1146 = getelementptr i8, ptr %i.az, i64 %i.dd
  %invariant.gep1148 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.ph1008, %vector.body1010
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1014, %vector.body1010 ] ; 3 uses
  %gep1147 = getelementptr i8, ptr %invariant.gep1146, i64 %index1011 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %gep1147, i64 16
  %wide.load1012 = load <16 x i8>, ptr %gep1147, align 1, !tbaa !741
  %wide.load1013 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !741
  %gep1149 = getelementptr i8, ptr %invariant.gep1148, i64 %index1011 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %gep1149, i64 16
  store <16 x i8> %wide.load1012, ptr %gep1149, align 1, !tbaa !741
  store <16 x i8> %wide.load1013, ptr %i.dl, align 1, !tbaa !741
  %index.next1014 = add nuw i64 %index1011, 32    ; 2 uses
  %i.dm = icmp eq i64 %index.next1014, %n.vec1009
  br i1 %i.dm, label %middle.block1015, label %vector.body1010, !llvm.loop !6420

middle.block1015:                                 ; preds = %vector.body1010
  %cmp.n1016 = icmp eq i64 %i.df, %n.vec1009
  br i1 %cmp.n1016, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check1022

vec.epilog.iter.check1022:                        ; preds = %middle.block1015
  %min.epilog.iters.check1023 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check1023, label %.lr.ph50.i.i.preheader, label %vec.epilog.ph1024, !prof !793

vec.epilog.ph1024:                                ; preds = %vector.main.loop.iter.check1006, %vec.epilog.iter.check1022
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec1009, %vec.epilog.iter.check1022 ], [ 0, %vector.main.loop.iter.check1006 ]
  %n.vec1025 = and i64 %i.df, -8                  ; 4 uses
  %i.dn = add nsw i64 %n.vec1025, %i.dd
  %i.do = add nsw i64 %n.vec1025, %i.dc           ; 2 uses
  %invariant.gep1150 = getelementptr i8, ptr %i.az, i64 %i.dd
  %invariant.gep1152 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vec.epilog.vector.body1026

vec.epilog.vector.body1026:                       ; preds = %vec.epilog.vector.body1026, %vec.epilog.ph1024
  %index1027 = phi i64 [ %vec.epilog.resume.val1017, %vec.epilog.ph1024 ], [ %index.next1029, %vec.epilog.vector.body1026 ] ; 3 uses
  %gep1151 = getelementptr i8, ptr %invariant.gep1150, i64 %index1027
  %wide.load1028 = load <8 x i8>, ptr %gep1151, align 1, !tbaa !741
  %gep1153 = getelementptr i8, ptr %invariant.gep1152, i64 %index1027
  store <8 x i8> %wide.load1028, ptr %gep1153, align 1, !tbaa !741
  %index.next1029 = add nuw i64 %index1027, 8     ; 2 uses
  %i.dp = icmp eq i64 %index.next1029, %n.vec1025
  br i1 %i.dp, label %vec.epilog.middle.block1030, label %vec.epilog.vector.body1026, !llvm.loop !6421

vec.epilog.middle.block1030:                      ; preds = %vec.epilog.vector.body1026
  %cmp.n1031 = icmp eq i64 %i.df, %n.vec1025
  br i1 %cmp.n1031, label %.loopexit.loopexit.i.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %iter.check1020, %vec.epilog.iter.check1022, %vec.epilog.middle.block1030
  %indvars.iv57.i.i.ph = phi i64 [ %i.dd, %iter.check1020 ], [ %i.di, %vec.epilog.iter.check1022 ], [ %i.dn, %vec.epilog.middle.block1030 ]
  %indvars.iv55.i.i.ph = phi i64 [ %i.dc, %iter.check1020 ], [ %i.dj, %vec.epilog.iter.check1022 ], [ %i.do, %vec.epilog.middle.block1030 ]
  br label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.preheader, %.lr.ph50.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %.lr.ph50.i.i ], [ %indvars.iv57.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ], [ %indvars.iv55.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv57.i.i
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !741
  %i.ds = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv55.i.i
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !741
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next58.i.i, %wide.trip.count.i.i
  br i1 %i.dt, label %.lr.ph50.i.i, label %.loopexit.loopexit.i.i, !llvm.loop !6422

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph50.i.i, %vec.epilog.middle.block1030, %middle.block1015
  %indvars.iv.next56.i.i.lcssa = phi i64 [ %i.do, %vec.epilog.middle.block1030 ], [ %i.dj, %middle.block1015 ], [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ]
  %i.du = trunc nuw nsw i64 %indvars.iv.next56.i.i.lcssa to i32
  br label %.loopexit.sink.split.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.k
  %indvars.iv786.i = phi i64 [ %indvars.iv.next787.i, %bb.k ], [ 0, %bb.h ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 22, %bb.h ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv786.i
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !741 ; 4 uses
  %i.dx = add i8 %i.dw, -65
  %or.cond4.i = icmp ult i8 %i.dx, 26
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.dy = or disjoint i8 %i.dw, 32
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.dz = add i8 %i.dw, -97
  %or.cond7.i = icmp ult i8 %i.dz, 26
  br i1 %or.cond7.i, label %bb.k, label %.lr.ph.i111.i.preheader

.lr.ph.i111.i.preheader:                          ; preds = %bb.j
  %min.iters.check = icmp ult i32 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph.i111.i.preheader1094, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i111.i.preheader
  %i.ea = add i64 %indvars.iv.lcssa, %i.e
  %i.eb = sub i64 %i.ea, %i.ba
  %diff.check = icmp ugt i64 %i.eb, -8
  br i1 %diff.check, label %.lr.ph.i111.i.preheader1094, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 24       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.eq, %vector.body ]
  %vec.phi957 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %wide.load = load <4 x i8>, ptr %i.ec, align 1, !tbaa !741 ; 4 uses
  %wide.load958 = load <4 x i8>, ptr %i.ed, align 1, !tbaa !741 ; 4 uses
  %i.ee = add <4 x i8> %wide.load, splat (i8 -65)
  %i.ef = add <4 x i8> %wide.load958, splat (i8 -65)
  %i.eg = icmp ult <4 x i8> %i.ee, splat (i8 26)
  %i.eh = icmp ult <4 x i8> %i.ef, splat (i8 26)
  %i.ei = or disjoint <4 x i8> %wide.load, splat (i8 32)
  %i.ej = or disjoint <4 x i8> %wide.load958, splat (i8 32)
  %i.ek = select <4 x i1> %i.eg, <4 x i8> %i.ei, <4 x i8> %wide.load
  %i.el = select <4 x i1> %i.eh, <4 x i8> %i.ej, <4 x i8> %wide.load958
  %i.em = add <4 x i8> %wide.load, splat (i8 -48)
  %i.en = icmp ult <4 x i8> %i.em, splat (i8 10)
  %i.eo = add <4 x i8> %wide.load958, splat (i8 -48)
  %i.ep = icmp ult <4 x i8> %i.eo, splat (i8 10)
  %i.eq = or <4 x i1> %vec.phi, %i.en             ; 2 uses
  %i.er = or <4 x i1> %vec.phi957, %i.ep          ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store <4 x i8> %i.ek, ptr %i.es, align 1, !tbaa !741
  store <4 x i8> %i.el, ptr %i.et, align 1, !tbaa !741
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !6423

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.er, %i.eq
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ev = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not1034 = icmp ne i4 %i.ev, 0
  %rdx.select = zext i1 %.not1034 to i32          ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i.preheader1094

.lr.ph.i111.i.preheader1094:                      ; preds = %vector.memcheck, %.lr.ph.i111.i.preheader, %middle.block
  %indvars.iv.i112.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.045.i113.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %rdx.select, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i111.i.prol.loopexit, label %.lr.ph.i111.i.prol

.lr.ph.i111.i.prol:                               ; preds = %.lr.ph.i111.i.preheader1094
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i112.i.ph
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !741 ; 4 uses
  %i.ey = add i8 %i.ex, -65
  %or.cond.i114.i.prol = icmp ult i8 %i.ey, 26
  %i.ez = or disjoint i8 %i.ex, 32
  %.sink.i115.i.prol = select i1 %or.cond.i114.i.prol, i8 %i.ez, i8 %i.ex
  %i.fa = add i8 %i.ex, -58
  %i.fb = icmp ult i8 %i.fa, -10
  %.2.i116.i.prol = select i1 %i.fb, i32 %.045.i113.i.ph, i32 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i.ph
  store i8 %.sink.i115.i.prol, ptr %i.fc, align 1, !tbaa !741
  %indvars.iv.next.i117.i.prol = or disjoint i64 %indvars.iv.i112.i.ph, 1
  br label %.lr.ph.i111.i.prol.loopexit

.lr.ph.i111.i.prol.loopexit:                      ; preds = %.lr.ph.i111.i.prol, %.lr.ph.i111.i.preheader1094
  %.2.i116.i.lcssa1095.unr = phi i32 [ poison, %.lr.ph.i111.i.preheader1094 ], [ %.2.i116.i.prol, %.lr.ph.i111.i.prol ]
  %indvars.iv.i112.i.unr = phi i64 [ %indvars.iv.i112.i.ph, %.lr.ph.i111.i.preheader1094 ], [ %indvars.iv.next.i117.i.prol, %.lr.ph.i111.i.prol ]
  %.045.i113.i.unr = phi i32 [ %.045.i113.i.ph, %.lr.ph.i111.i.preheader1094 ], [ %.2.i116.i.prol, %.lr.ph.i111.i.prol ]
  %i.fd = add nsw i64 %wide.trip.count.i.i, -1
  %i.fe = icmp eq i64 %indvars.iv.i112.i.ph, %i.fd
  br i1 %i.fe, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ %indvars.iv.next.i117.i.1, %.lr.ph.i111.i ], [ %indvars.iv.i112.i.unr, %.lr.ph.i111.i.prol.loopexit ] ; 4 uses
  %.045.i113.i = phi i32 [ %.2.i116.i.1, %.lr.ph.i111.i ], [ %.045.i113.i.unr, %.lr.ph.i111.i.prol.loopexit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i112.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !741 ; 4 uses
  %i.fh = add i8 %i.fg, -65
  %or.cond.i114.i = icmp ult i8 %i.fh, 26
  %i.fi = or disjoint i8 %i.fg, 32
  %.sink.i115.i = select i1 %or.cond.i114.i, i8 %i.fi, i8 %i.fg
  %i.fj = add i8 %i.fg, -58
  %i.fk = icmp ult i8 %i.fj, -10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i
  store i8 %.sink.i115.i, ptr %i.fl, align 1, !tbaa !741
  %indvars.iv.next.i117.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i117.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !741 ; 4 uses
  %i.fo = add i8 %i.fn, -65
  %or.cond.i114.i.1 = icmp ult i8 %i.fo, 26
  %i.fp = or disjoint i8 %i.fn, 32
  %.sink.i115.i.1 = select i1 %or.cond.i114.i.1, i8 %i.fp, i8 %i.fn
  %i.fq = add i8 %i.fn, -58
  %i.fr = icmp ult i8 %i.fq, -10
  %i.fs = select i1 %i.fr, i1 %i.fk, i1 false
  %.2.i116.i.1 = select i1 %i.fs, i32 %.045.i113.i, i32 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i117.i
  store i8 %.sink.i115.i.1, ptr %i.ft, align 1, !tbaa !741
  %indvars.iv.next.i117.i.1 = add nuw nsw i64 %indvars.iv.i112.i, 2 ; 2 uses
  %exitcond.not.i118.i.1 = icmp eq i64 %indvars.iv.next.i117.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i118.i.1, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i, !llvm.loop !6424

._crit_edge.loopexit.i119.i:                      ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i, %middle.block
  %.2.i116.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.2.i116.i.lcssa1095.unr, %.lr.ph.i111.i.prol.loopexit ], [ %.2.i116.i.1, %.lr.ph.i111.i ]
  %i.fu = icmp eq i32 %.2.i116.i.lcssa, 0
  %i.fv = select i1 %i.fu, i32 10, i32 3          ; 3 uses
  %i.fw = shl nuw nsw i32 %i.fv, 1
  %i.fx = icmp sgt i32 %i.as, %i.fw
  br i1 %i.fx, label %iter.check, label %.loopexit.sink.split.i

iter.check:                                       ; preds = %._crit_edge.loopexit.i119.i
  %i.fy = sub nsw i32 %i.as, %i.fv
  %i.fz = zext nneg i32 %i.fv to i64              ; 6 uses
  %i.ga = zext i32 %i.fy to i64                   ; 8 uses
  %i.gb = add nuw nsw i64 %i.ga, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 %wide.trip.count.i.i)
  %i.gc = sub nsw i64 %umax, %i.ga                ; 7 uses
  %min.iters.check962 = icmp ult i64 %i.gc, 8
  %i.gd = sub nsw i64 %i.ga, %i.fz
  %diff.check960 = icmp ugt i64 %i.gd, -32
  %or.cond1037 = select i1 %min.iters.check962, i1 true, i1 %diff.check960
  br i1 %or.cond1037, label %.lr.ph50.i103.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check963 = icmp ult i64 %i.gc, 32
  br i1 %min.iters.check963, label %vec.epilog.ph, label %vector.ph964

vector.ph964:                                     ; preds = %vector.main.loop.iter.check
  %i.ge = and i64 %i.gc, 24
  %n.vec965 = and i64 %i.gc, -32                  ; 5 uses
  %i.gf = add nsw i64 %n.vec965, %i.ga
  %i.gg = or disjoint i64 %n.vec965, %i.fz        ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.az, i64 %i.ga
  %invariant.gep1140 = getelementptr i8, ptr %i.az, i64 %i.fz
  br label %vector.body966

vector.body966:                                   ; preds = %vector.ph964, %vector.body966
  %index967 = phi i64 [ 0, %vector.ph964 ], [ %index.next970, %vector.body966 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index967 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load968 = load <16 x i8>, ptr %gep, align 1, !tbaa !741
  %wide.load969 = load <16 x i8>, ptr %i.gh, align 1, !tbaa !741
  %gep1141 = getelementptr i8, ptr %invariant.gep1140, i64 %index967 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %gep1141, i64 16
  store <16 x i8> %wide.load968, ptr %gep1141, align 1, !tbaa !741
  store <16 x i8> %wide.load969, ptr %i.gi, align 1, !tbaa !741
  %index.next970 = add nuw i64 %index967, 32      ; 2 uses
  %i.gj = icmp eq i64 %index.next970, %n.vec965
  br i1 %i.gj, label %middle.block971, label %vector.body966, !llvm.loop !6425

middle.block971:                                  ; preds = %vector.body966
  %cmp.n972 = icmp eq i64 %i.gc, %n.vec965
  br i1 %cmp.n972, label %.loopexit.loopexit.i108.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block971
  %min.epilog.iters.check = icmp eq i64 %i.ge, 0
  br i1 %min.epilog.iters.check, label %.lr.ph50.i103.i.preheader, label %vec.epilog.ph, !prof !793

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec965, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec975 = and i64 %i.gc, -8                   ; 4 uses
  %i.gk = add nsw i64 %n.vec975, %i.ga
  %i.gl = add nsw i64 %n.vec975, %i.fz            ; 2 uses
  %invariant.gep1142 = getelementptr i8, ptr %i.az, i64 %i.ga
  %invariant.gep1144 = getelementptr i8, ptr %i.az, i64 %i.fz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index976 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next978, %vec.epilog.vector.body ] ; 3 uses
  %gep1143 = getelementptr i8, ptr %invariant.gep1142, i64 %index976
  %wide.load977 = load <8 x i8>, ptr %gep1143, align 1, !tbaa !741
  %gep1145 = getelementptr i8, ptr %invariant.gep1144, i64 %index976
  store <8 x i8> %wide.load977, ptr %gep1145, align 1, !tbaa !741
  %index.next978 = add nuw i64 %index976, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next978, %n.vec975
  br i1 %i.gm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6426

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n979 = icmp eq i64 %i.gc, %n.vec975
  br i1 %cmp.n979, label %.loopexit.loopexit.i108.i, label %.lr.ph50.i103.i.preheader

.lr.ph50.i103.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i104.i.ph = phi i64 [ %i.ga, %iter.check ], [ %i.gf, %vec.epilog.iter.check ], [ %i.gk, %vec.epilog.middle.block ]
  %indvars.iv55.i105.i.ph = phi i64 [ %i.fz, %iter.check ], [ %i.gg, %vec.epilog.iter.check ], [ %i.gl, %vec.epilog.middle.block ]
  br label %.lr.ph50.i103.i

.lr.ph50.i103.i:                                  ; preds = %.lr.ph50.i103.i.preheader, %.lr.ph50.i103.i
  %indvars.iv57.i104.i = phi i64 [ %indvars.iv.next58.i106.i, %.lr.ph50.i103.i ], [ %indvars.iv57.i104.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %indvars.iv55.i105.i = phi i64 [ %indvars.iv.next56.i107.i, %.lr.ph50.i103.i ], [ %indvars.iv55.i105.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv57.i104.i
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !741
  %i.gp = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv55.i105.i
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !741
  %indvars.iv.next58.i106.i = add nuw nsw i64 %indvars.iv57.i104.i, 1 ; 2 uses
  %indvars.iv.next56.i107.i = add nuw nsw i64 %indvars.iv55.i105.i, 1 ; 2 uses
  %i.gq = icmp samesign ult i64 %indvars.iv.next58.i106.i, %wide.trip.count.i.i
  br i1 %i.gq, label %.lr.ph50.i103.i, label %.loopexit.loopexit.i108.i, !llvm.loop !6427

.loopexit.loopexit.i108.i:                        ; preds = %.lr.ph50.i103.i, %vec.epilog.middle.block, %middle.block971
  %indvars.iv.next56.i107.i.lcssa = phi i64 [ %i.gl, %vec.epilog.middle.block ], [ %i.gg, %middle.block971 ], [ %indvars.iv.next56.i107.i, %.lr.ph50.i103.i ]
  %i.gr = trunc nuw nsw i64 %indvars.iv.next56.i107.i.lcssa to i32
  br label %.loopexit.sink.split.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i = phi i8 [ %i.dy, %bb.i ], [ %i.dw, %bb.j ]
  %i.gs = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %.sink.i, ptr %i.gs, align 1, !tbaa !741
  %indvars.iv.next787.i = add nuw nsw i64 %indvars.iv786.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next787.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6428

._crit_edge.i:                                    ; preds = %bb.k
  %i.gt = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.gu = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i ; 3 uses
  store ptr %i.gt, ptr %i.b, align 8, !tbaa !747
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !741 ; 2 uses
  %i.gw = icmp eq i8 %i.gv, 115
  br i1 %i.gw, label %.lr.ph.i121.1.i, label %.lr.ph.i150.i

.lr.ph.i121.1.i:                                  ; preds = %._crit_edge.i
  %i.gx = getelementptr i8, ptr %i.gu, i64 2      ; 4 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !741 ; 2 uses
  switch i8 %i.gy, label %.lr.ph.i137.1.i.thread [
    i8 101, label %.lr.ph.i121.2.i
    i8 115, label %.lr.ph33.i144.preheader.i
  ]

.lr.ph.i121.2.i:                                  ; preds = %.lr.ph.i121.1.i
  %i.gz = getelementptr i8, ptr %i.gu, i64 3      ; 5 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !741
  switch i8 %i.ha, label %.lr.ph.i137.1.i.thread [
    i8 115, label %.lr.ph.i121.3.i
    i8 105, label %.lr.ph33.i131.preheader.i
  ]

.lr.ph.i121.3.i:                                  ; preds = %.lr.ph.i121.2.i
  %i.hb = getelementptr i8, ptr %i.gu, i64 4
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !741
  %i.hd = icmp eq i8 %i.hc, 115
  br i1 %i.hd, label %.lr.ph33.i.preheader.i, label %.lr.ph.i137.1.i.thread

.lr.ph33.i.preheader.i:                           ; preds = %.lr.ph.i121.3.i
  store ptr %i.gz, ptr %i.b, align 8, !tbaa !747
  br label %stem.exit162.thread.i.thread

.lr.ph33.i131.preheader.i:                        ; preds = %.lr.ph.i121.2.i
  store ptr %i.gz, ptr %i.b, align 8, !tbaa !747
  br label %stem.exit162.thread.i.thread

.lr.ph33.i144.preheader.i:                        ; preds = %.lr.ph.i121.1.i
  store i8 115, ptr %i.gx, align 1, !tbaa !741
  br label %stem.exit162.thread.i.thread

.lr.ph.i137.1.i.thread:                           ; preds = %.lr.ph.i121.2.i, %.lr.ph.i121.3.i, %.lr.ph.i121.1.i
  store ptr %i.gx, ptr %i.b, align 8, !tbaa !747
  br label %.lr.ph.i150.i

.lr.ph.i150.i:                                    ; preds = %.lr.ph.i137.1.i.thread, %._crit_edge.i
  %i.he = phi i8 [ %i.gv, %._crit_edge.i ], [ %i.gy, %.lr.ph.i137.1.i.thread ]
  %i.hf = phi ptr [ %i.gt, %._crit_edge.i ], [ %i.gx, %.lr.ph.i137.1.i.thread ] ; 14 uses
  %scevgep799.i = getelementptr i8, ptr %i.hf, i64 3 ; 5 uses
  switch i8 %i.he, label %stem.exit162.thread.ithread-pre-split [
    i8 100, label %.lr.ph.i150.1.i
    i8 103, label %.lr.ph.i163.1.i
  ]

.lr.ph.i150.1.i:                                  ; preds = %.lr.ph.i150.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 1 ; 3 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !741
  %i.hi = icmp eq i8 %i.hh, 101
  br i1 %i.hi, label %.lr.ph.i150.2.i, label %stem.exit162.thread.ithread-pre-split

.lr.ph.i150.2.i:                                  ; preds = %.lr.ph.i150.1.i
  %i.hj = getelementptr i8, ptr %i.hf, i64 2      ; 3 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !741 ; 2 uses
  %i.hl = icmp eq i8 %i.hk, 101
  br i1 %i.hl, label %._crit_edge.i155.i, label %._crit_edge.i178.i

._crit_edge.i155.i:                               ; preds = %.lr.ph.i150.2.i
  %i.hm = load i8, ptr %scevgep799.i, align 1, !tbaa !741 ; 2 uses
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %stem.exit162.thread.ithread-pre-split, label %.lr.ph.i419.i

.lr.ph.i419.i:                                    ; preds = %._crit_edge.i155.i, %bb.n
  %i.ho = phi i8 [ %i.hz, %bb.n ], [ %i.hm, %._crit_edge.i155.i ]
  %.011.i.i = phi ptr [ %i.hy, %bb.n ], [ %scevgep799.i, %._crit_edge.i155.i ] ; 3 uses
  %i.hp = sext i8 %i.ho to i64
  %i.hq = getelementptr i8, ptr @cType, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -97
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !741 ; 2 uses
  %i.ht = icmp slt i8 %i.hs, 2
  br i1 %i.ht, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i419.i
  %i.hu = sext i8 %i.hs to i32
  %i.hv = sub nsw i32 1, %i.hu
  br label %isVowel.exit.i420.i

bb.m:                                             ; preds = %.lr.ph.i419.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1
  %i.hx = call fastcc i32 @isConsonant(ptr noundef nonnull readonly %i.hw), !inline_history !408
  br label %isVowel.exit.i420.i

isVowel.exit.i420.i:                              ; preds = %bb.m, %bb.l
  %.0.i.i421.i = phi i32 [ %i.hx, %bb.m ], [ %i.hv, %bb.l ]
  %.not.i422.i = icmp eq i32 %.0.i.i421.i, 0
  br i1 %.not.i422.i, label %.preheader.i.i, label %bb.n

bb.n:                                             ; preds = %isVowel.exit.i420.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !741 ; 2 uses
  %i.ia = icmp eq i8 %i.hz, 0
  br i1 %i.ia, label %stem.exit162.thread.ithread-pre-split, label %.lr.ph.i419.i, !llvm.loop !409

.preheader.i.i:                                   ; preds = %isVowel.exit.i420.i, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.ic, %.preheader.i.i ], [ %.011.i.i, %isVowel.exit.i420.i ] ; 3 uses
  %i.ib = call fastcc i32 @isConsonant(ptr noundef nonnull %.1.i.i)
  %.not7.i.i = icmp eq i32 %i.ib, 0
  %i.ic = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br i1 %.not7.i.i, label %m_gt_0.exit.i, label %.preheader.i.i, !llvm.loop !410

m_gt_0.exit.i:                                    ; preds = %.preheader.i.i
  %i.id = load i8, ptr %.1.i.i, align 1, !tbaa !741
  %.not619.i = icmp eq i8 %i.id, 0
  br i1 %.not619.i, label %stem.exit162.thread.ithread-pre-split, label %stem.exit162.thread.thread.i

stem.exit162.thread.thread.i:                     ; preds = %m_gt_0.exit.i
  store ptr %i.hg, ptr %i.b, align 8, !tbaa !747
  br label %stem.exit162.thread.i.thread

.lr.ph.i163.1.i:                                  ; preds = %.lr.ph.i150.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !741
  %i.ig = icmp eq i8 %i.if, 110
  br i1 %i.ig, label %.lr.ph.i163.2.i, label %stem.exit162.thread.ithread-pre-split
end_hunk_22
begin_hunk_23_@fts5StructureRelease:bb.a
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.o = tail call i32 %i.n(ptr noundef nonnull %i.i) #59, !inline_history !13
  %i.p = sext i32 %i.o to i64
  %i.q = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.r = sub nsw i64 %i.q, %i.p
  store i64 %i.r, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.t = add nsw i64 %i.s, -1
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.u(ptr noundef nonnull %i.i) #59, !inline_history !755
  %i.v = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.v, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.w(ptr noundef nonnull %i.v) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.g:                                             ; preds = %bb.c
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.x(ptr noundef nonnull %i.i) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %.lr.ph, %sqlite3_mutex_enter.exit.i, %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.d, align 4, !tbaa !576
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !7205

._crit_edge:                                      ; preds = %sqlite3_free.exit, %.preheader
  %i.ab = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i8 = icmp eq i32 %i.ab, 0
  br i1 %.not.i8, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i9, label %sqlite3_mutex_enter.exit.i10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.ad(ptr noundef nonnull %i.ac) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i10

sqlite3_mutex_enter.exit.i10:                     ; preds = %bb.i, %bb.h
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.af = tail call i32 %i.ae(ptr noundef nonnull %0) #59, !inline_history !13
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ai = sub nsw i64 %i.ah, %i.ag
  store i64 %i.ai, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ak = add nsw i64 %i.aj, -1
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.al(ptr noundef nonnull %0) #59, !inline_history !755
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i11 = icmp eq ptr %i.am, null
  br i1 %.not.i4.i11, label %sqlite3_free.exit12, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i10
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.an(ptr noundef nonnull %i.am) #59, !inline_history !756
  br label %sqlite3_free.exit12

bb.k:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ao(ptr noundef nonnull %0) #59, !inline_history !755
  br label %sqlite3_free.exit12

sqlite3_free.exit12:                              ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i10, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @sqlite3Fts5PutVarint(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) unnamed_addr #36 {
bb.a:
  %i.a = icmp ult i64 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %1 to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !741
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 16384
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i64 %1, 7
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = or disjoint i8 %i.e, -128
  store i8 %i.f, ptr %0, align 1, !tbaa !741
  %i.g = trunc i64 %1 to i8
  %i.h = and i8 %i.g, 127
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !741
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @fts5PutVarint64(ptr noundef %0, i64 noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.d ], [ %i.j, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @fts5PutVarint64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) unnamed_addr #38 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %.not = icmp ult i64 %1, 72057594037927936
  br i1 %.not, label %.preheader, label %.loopexit.loopexit33

.loopexit.loopexit33:                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.c, align 1, !tbaa !741
  %i.d = lshr i64 %1, 8
  %i.e = trunc i64 %i.d to i8
  %i.f = or i8 %i.e, -128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.f, ptr %i.g, align 1, !tbaa !741
  %i.h = lshr i64 %1, 15
  %i.i = trunc i64 %i.h to i8
  %i.j = or i8 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.j, ptr %i.k, align 1, !tbaa !741
  %i.l = lshr i64 %1, 22
  %i.m = trunc i64 %i.l to i8
  %i.n = or i8 %i.m, -128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.n, ptr %i.o, align 1, !tbaa !741
  %i.p = lshr i64 %1, 29
  %i.q = trunc i64 %i.p to i8
  %i.r = or i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !741
  %i.t = lshr i64 %1, 36
  %i.u = trunc i64 %i.t to i8
  %i.v = or i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !741
  %i.x = lshr i64 %1, 43
  %i.y = trunc i64 %i.x to i8
  %i.z = or i8 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !741
  %i.ab = lshr i64 %1, 50
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = or i8 %i.ac, -128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !741
  %i.af = lshr i64 %1, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, -128
  store i8 %i.ah, ptr %0, align 1, !tbaa !741
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv43 = phi i32 [ %indvars.iv.next44, %.preheader ], [ 1, %bb.a ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 7 uses
  %.125 = phi i64 [ %i.al, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.ai = trunc i64 %.125 to i8
  %i.aj = or i8 %i.ai, -128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !741
  %i.al = lshr i64 %.125, 7                       ; 2 uses
  %.not27 = icmp eq i64 %i.al, 0
  %indvars.iv.next44 = add nuw nsw i32 %indvars.iv43, 1
  br i1 %.not27, label %iter.check, label %.preheader, !llvm.loop !7206

iter.check:                                       ; preds = %.preheader
  %i.am = load i8, ptr %i.a, align 1, !tbaa !741
  %i.an = and i8 %i.am, 127
  store i8 %i.an, ptr %i.a, align 1, !tbaa !741
  %wide.trip.count = zext nneg i32 %indvars.iv43 to i64 ; 6 uses
  %min.iters.check = icmp samesign ult i32 %indvars.iv43, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp samesign ult i32 %indvars.iv43, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.ap = sub nsw i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = sub i64 %indvars.iv, %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -15
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -31
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !741
  %wide.load46 = load <16 x i8>, ptr %i.at, align 1, !tbaa !741
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse47 = shufflevector <16 x i8> %wide.load46, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %reverse, ptr %i.au, align 1, !tbaa !741
  store <16 x i8> %reverse47, ptr %i.av, align 1, !tbaa !741
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !7207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !793

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.ax = sub nsw i64 %indvars.iv, %n.vec48
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = sub i64 %indvars.iv, %index49
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -7
  %wide.load50 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !741
  %reverse51 = shufflevector <8 x i8> %wide.load50, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %index49
  store <8 x i8> %reverse51, ptr %i.bb, align 1, !tbaa !741
  %index.next52 = add nuw i64 %index49, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %n.vec48, %wide.trip.count
  br i1 %cmp.n53, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv38.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  %indvars.iv36.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %vec.epilog.scalar.ph ], [ %indvars.iv38.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %vec.epilog.scalar.ph ], [ %indvars.iv36.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv36
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !741
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv38
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !741
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !7209

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bg = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit33, %.loopexit.loopexit
  %.026 = phi i32 [ %i.bg, %.loopexit.loopexit ], [ 9, %.loopexit.loopexit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3Fts5StorageConfigValue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  store ptr null, ptr %i.c, align 8, !tbaa !896
  %i.d = call fastcc i32 @fts5StorageGetStmt(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %i.c, ptr noundef null) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %sqlite3_bind_null.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !896  ; 9 uses
  %i.g = tail call fastcc i32 @bindText(ptr noundef %i.f, i32 noundef 1, ptr noundef %1, i64 noundef -1, ptr noundef null, i8 noundef zeroext 1) ; 0 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @sqlite3_bind_value(ptr noundef %i.f, i32 noundef 2, ptr noundef nonnull %2) ; 0 uses
  br label %sqlite3_bind_int.exit

bb.d:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %3 to i64                  ; 2 uses
  %i.j = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.f, i32 noundef 1)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %sqlite3_bind_int.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !701  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 76 ; 2 uses
  %i.p = load i16, ptr %i.o, align 4, !tbaa !694
  %i.q = and i16 %i.p, -28672
  %.not.i.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.n, i64 noundef %i.i)
  br label %sqlite3VdbeMemSetInt64.exit.i.i

bb.g:                                             ; preds = %bb.e
  store i64 %i.i, ptr %i.n, align 8, !tbaa !741
  store i16 4, ptr %i.o, align 4, !tbaa !694
  br label %sqlite3VdbeMemSetInt64.exit.i.i

sqlite3VdbeMemSetInt64.exit.i.i:                  ; preds = %bb.g, %bb.f
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !687
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !601  ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i.i, label %sqlite3_bind_int.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i.i
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.u(ptr noundef nonnull %i.t) #59, !inline_history !2979
  br label %sqlite3_bind_int.exit

sqlite3_bind_int.exit:                            ; preds = %bb.h, %sqlite3VdbeMemSetInt64.exit.i.i, %bb.d, %bb.c
  %i.v = tail call i32 @sqlite3_step(ptr noundef %i.f) ; 0 uses
  %i.w = tail call i32 @sqlite3_reset(ptr noundef %i.f) ; 2 uses
  %i.x = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.f, i32 noundef 0)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %sqlite3_bind_null.exit

bb.i:                                             ; preds = %sqlite3_bind_int.exit
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !687
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !601 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %sqlite3_bind_null.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ac(ptr noundef nonnull %i.ab) #59, !inline_history !1147
  br label %sqlite3_bind_null.exit

sqlite3_bind_null.exit:                           ; preds = %bb.j, %bb.i, %sqlite3_bind_int.exit
  %i.ad = icmp eq i32 %i.w, 0
  %i.ae = icmp ne ptr %2, null
  %or.cond = and i1 %i.ae, %i.ad
  br i1 %or.cond, label %bb.k, label %sqlite3_bind_null.exit.thread

bb.k:                                             ; preds = %sqlite3_bind_null.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !3161
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !3159
  %i.ai = add nsw i32 %i.ah, 1                    ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3090 ; 2 uses
  %.val = load ptr, ptr %i.ak, align 8, !tbaa !3138 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val17 = load ptr, ptr %i.al, align 8, !tbaa !3212
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !3072
  %i.am = getelementptr i8, ptr %.val, i64 16
  %.val.val18 = load ptr, ptr %i.am, align 8, !tbaa !3073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.an = lshr i32 %i.ai, 24
  %i.ao = trunc nuw i32 %i.an to i8
  store i8 %i.ao, ptr %i.a, align 1, !tbaa !741
  %i.ap = lshr i32 %i.ai, 16
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !741
  %i.as = lshr i32 %i.ai, 8
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.at, ptr %i.au, align 1, !tbaa !741
  %i.av = trunc i32 %i.ai to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !741
  %i.ax = call i32 @sqlite3_blob_open(ptr noundef %.val.val, ptr noundef %.val.val18, ptr noundef %.val17, ptr noundef nonnull @.str.1454, i64 noundef 10, i32 noundef 1, ptr noundef nonnull %i.b), !inline_history !7210 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %sqlite3Fts5IndexSetCookie.exit.thread25

sqlite3Fts5IndexSetCookie.exit.thread25:          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sqlite3_bind_null.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !1191 ; 15 uses
  %i.ba = call fastcc i32 @blobReadWrite(ptr noundef %i.az, ptr noundef nonnull %i.a, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @sqlite3BtreePutData), !inline_history !7211 ; 0 uses
end_hunk_23
begin_hunk_24_@fts5AsciiDelete:bb.a
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.n(ptr noundef nonnull %i.m) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.o(ptr noundef nonnull %0) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 102, 101) i32 @fts5AsciiTokenize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.preheader94.preheader, label %sqlite3_free.exit75.thread

.preheader94.preheader:                           ; preds = %bb.a
  %i.d = zext nneg i32 %4 to i64                  ; 2 uses
  %i.e = add nsw i32 %4, -1
  br label %.preheader94

.preheader94:                                     ; preds = %.preheader94.preheader, %.loopexit
  %.052106 = phi ptr [ %.1, %.loopexit ], [ %i.b, %.preheader94.preheader ] ; 6 uses
  %.053105 = phi i32 [ %.154, %.loopexit ], [ 64, %.preheader94.preheader ] ; 2 uses
  %.056104 = phi i32 [ %i.cm, %.loopexit ], [ 0, %.preheader94.preheader ] ; 2 uses
  %i.f = sext i32 %.056104 to i64
  %i.g = add nsw i32 %.056104, 1
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 %i.g)
  br label %bb.b

bb.b:                                             ; preds = %.preheader94, %bb.d
  %indvars.iv = phi i64 [ %i.f, %.preheader94 ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %3, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !741   ; 2 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %.critedge.split.loop.exit132

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !741
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %.critedge.split.loop.exit134

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.o = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.o, label %bb.b, label %.critedge, !llvm.loop !8015

.critedge.split.loop.exit132:                     ; preds = %bb.b
  %i.p = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.split.loop.exit134:                     ; preds = %bb.c
  %i.q = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split.loop.exit134, %.critedge.split.loop.exit132
  %.157.lcssa = phi i32 [ %i.p, %.critedge.split.loop.exit132 ], [ %i.q, %.critedge.split.loop.exit134 ], [ %smax, %bb.d ] ; 7 uses
  %i.r = icmp eq i32 %.157.lcssa, %4
  br i1 %i.r, label %.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.05997 = add nsw i32 %.157.lcssa, 1            ; 3 uses
  %i.s = icmp slt i32 %.05997, %4
  br i1 %i.s, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.t = sext i32 %.05997 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge4
  %indvars.iv112 = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next113, %.critedge4 ] ; 4 uses
  %.059.in98 = phi i32 [ %.157.lcssa, %.lr.ph.preheader ], [ %.pre-phi, %.critedge4 ]
  %i.u = getelementptr inbounds i8, ptr %3, i64 %indvars.iv112
  %i.v = load i8, ptr %i.u, align 1, !tbaa !741   ; 2 uses
  %.not = icmp sgt i8 %i.v, -1
  br i1 %.not, label %bb.e, label %.lr.ph..critedge4_crit_edge

.lr.ph..critedge4_crit_edge:                      ; preds = %.lr.ph
  %.pre115 = trunc nsw i64 %indvars.iv112 to i32
  br label %.critedge4

bb.e:                                             ; preds = %.lr.ph
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !741
  %.not67 = icmp eq i8 %i.y, 0
  %i.z = trunc nsw i64 %indvars.iv112 to i32      ; 2 uses
  br i1 %.not67, label %.critedge2, label %.critedge4

.critedge4:                                       ; preds = %.lr.ph..critedge4_crit_edge, %bb.e
  %.pre-phi = phi i32 [ %.pre115, %.lr.ph..critedge4_crit_edge ], [ %i.z, %bb.e ]
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %i.d
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !8016

.critedge2:                                       ; preds = %bb.e, %.critedge4, %.preheader
  %.059.in.lcssa = phi i32 [ %.157.lcssa, %.preheader ], [ %i.e, %.critedge4 ], [ %.059.in98, %bb.e ]
  %.059.lcssa = phi i32 [ %.05997, %.preheader ], [ %4, %.critedge4 ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = sub nsw i32 %.059.lcssa, %.157.lcssa    ; 5 uses
  %i.ab = icmp sgt i32 %i.aa, %.053105
  br i1 %i.ab, label %bb.f, label %.critedge2..lr.ph.preheader.i_crit_edge

.critedge2..lr.ph.preheader.i_crit_edge:          ; preds = %.critedge2
  %.pre = zext nneg i32 %i.aa to i64
  br label %iter.check

bb.f:                                             ; preds = %.critedge2
  %.not68 = icmp eq ptr %.052106, %i.b
  br i1 %.not68, label %sqlite3_free.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  call void %i.ae(ptr noundef nonnull %i.ad) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.i, %bb.h
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ag = call i32 %i.af(ptr noundef nonnull %.052106) #59, !inline_history !13
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.aj = sub nsw i64 %i.ai, %i.ah
  store i64 %i.aj, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.al = add nsw i64 %i.ak, -1
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.am(ptr noundef nonnull %.052106) #59, !inline_history !755
  %i.an = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.an, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  call void %i.ao(ptr noundef nonnull %i.an) #59, !inline_history !756
  br label %sqlite3_free.exit

bb.k:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.ap(ptr noundef nonnull %.052106) #59, !inline_history !755
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i, %bb.f
  %i.aq = call i32 @sqlite3_initialize(), !inline_history !821
  %.not.i70 = icmp eq i32 %i.aq, 0
  br i1 %.not.i70, label %sqlite3_malloc64.exit, label %sqlite3_free.exit75.thread

sqlite3_malloc64.exit:                            ; preds = %sqlite3_free.exit
  %i.ar = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = call fastcc ptr @sqlite3Malloc(i64 noundef %i.as), !inline_history !821 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %sqlite3_free.exit75.thread, label %bb.l

bb.l:                                             ; preds = %sqlite3_malloc64.exit
  %i.av = shl nuw nsw i32 %i.aa, 1
  br label %iter.check

iter.check:                                       ; preds = %.critedge2..lr.ph.preheader.i_crit_edge, %bb.l
  %wide.trip.count.i.pre-phi = phi i64 [ %.pre, %.critedge2..lr.ph.preheader.i_crit_edge ], [ %i.ar, %bb.l ] ; 10 uses
  %.154 = phi i32 [ %.053105, %.critedge2..lr.ph.preheader.i_crit_edge ], [ %i.av, %bb.l ]
  %.1 = phi ptr [ %.052106, %.critedge2..lr.ph.preheader.i_crit_edge ], [ %i.at, %bb.l ] ; 9 uses
  %i.aw = sext i32 %.157.lcssa to i64             ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %3, i64 %i.aw ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.pre-phi, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.1139 = ptrtoaddr ptr %.1 to i64
  %i.ay = add i64 %i.a, %i.aw
  %i.az = sub i64 %i.ay, %.1139
  %diff.check = icmp ugt i64 %i.az, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check140 = icmp samesign ult i64 %wide.trip.count.i.pre-phi, 32
  br i1 %min.iters.check140, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %wide.trip.count.i.pre-phi, 24
  %n.vec = and i64 %wide.trip.count.i.pre-phi, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1, !tbaa !741 ; 3 uses
  %wide.load141 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !741 ; 3 uses
  %i.bd = add <16 x i8> %wide.load, splat (i8 -65)
  %i.be = add <16 x i8> %wide.load141, splat (i8 -65)
  %i.bf = icmp ult <16 x i8> %i.bd, splat (i8 26)
  %i.bg = icmp ult <16 x i8> %i.be, splat (i8 26)
  %i.bh = or disjoint <16 x i8> %wide.load, splat (i8 32)
  %i.bi = or disjoint <16 x i8> %wide.load141, splat (i8 32)
  %i.bj = select <16 x i1> %i.bf, <16 x i8> %i.bh, <16 x i8> %wide.load
  %i.bk = select <16 x i1> %i.bg, <16 x i8> %i.bi, <16 x i8> %wide.load141
  %i.bl = getelementptr inbounds nuw i8, ptr %.1, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %i.bj, ptr %i.bl, align 1, !tbaa !741
  store <16 x i8> %i.bk, ptr %i.bm, align 1, !tbaa !741
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !8017

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i.pre-phi, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !793

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %wide.trip.count.i.pre-phi, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 %index143
  %wide.load144 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !741 ; 3 uses
  %i.bp = add <8 x i8> %wide.load144, splat (i8 -65)
  %i.bq = icmp ult <8 x i8> %i.bp, splat (i8 26)
  %i.br = or disjoint <8 x i8> %wide.load144, splat (i8 32)
  %i.bs = select <8 x i1> %i.bq, <8 x i8> %i.br, <8 x i8> %wide.load144
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 %index143
  store <8 x i8> %i.bs, ptr %i.bt, align 1, !tbaa !741
  %index.next145 = add nuw i64 %index143, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next145, %n.vec142
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8018

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n146 = icmp eq i64 %wide.trip.count.i.pre-phi, %n.vec142
  br i1 %cmp.n146, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec142, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %wide.trip.count.i.pre-phi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.i.ph
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !741 ; 3 uses
  %i.bx = add i8 %i.bw, -65
  %or.cond.i.prol = icmp ult i8 %i.bx, 26
  %i.by = or disjoint i8 %i.bw, 32
  %spec.select.i.prol = select i1 %or.cond.i.prol, i8 %i.by, i8 %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 %indvars.iv.i.ph
  store i8 %spec.select.i.prol, ptr %i.bz, align 1, !tbaa !741
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ca = icmp eq i64 %wide.trip.count.i.pre-phi, %.neg
  br i1 %i.ca, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !741 ; 3 uses
  %i.cd = add i8 %i.cc, -65
  %or.cond.i = icmp ult i8 %i.cd, 26
  %i.ce = or disjoint i8 %i.cc, 32
  %spec.select.i = select i1 %or.cond.i, i8 %i.ce, i8 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 %indvars.iv.i
  store i8 %spec.select.i, ptr %i.cf, align 1, !tbaa !741
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !741 ; 3 uses
  %i.ci = add i8 %i.ch, -65
  %or.cond.i.1 = icmp ult i8 %i.ci, 26
  %i.cj = or disjoint i8 %i.ch, 32
  %spec.select.i.1 = select i1 %or.cond.i.1, i8 %i.cj, i8 %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %.1, i64 %indvars.iv.next.i
  store i8 %spec.select.i.1, ptr %i.ck, align 1, !tbaa !741
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.pre-phi
  br i1 %exitcond.not.i.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !8019

.loopexit:                                        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.cl = call i32 %5(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %.1, i32 noundef %i.aa, i32 noundef %.157.lcssa, i32 noundef %.059.lcssa) #59 ; 2 uses
  %i.cm = add nsw i32 %.059.in.lcssa, 2           ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %4
  %i.co = icmp eq i32 %i.cl, 0
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %.preheader94, label %.thread

.thread:                                          ; preds = %.loopexit, %.critedge
  %.052.lcssa.ph = phi ptr [ %.1, %.loopexit ], [ %.052106, %.critedge ] ; 4 uses
  %.262.ph = phi i32 [ %i.cl, %.loopexit ], [ 0, %.critedge ]
  %i.cq = freeze i32 %.262.ph                     ; 2 uses
  %.not69 = icmp eq ptr %.052.lcssa.ph, %i.b
  br i1 %.not69, label %sqlite3_free.exit75, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.cr = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i71 = icmp eq i32 %i.cr, 0
  br i1 %.not.i71, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i72, label %sqlite3_mutex_enter.exit.i73, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  call void %i.ct(ptr noundef nonnull %i.cs) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i73

sqlite3_mutex_enter.exit.i73:                     ; preds = %bb.o, %bb.n
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.cv = call i32 %i.cu(ptr noundef nonnull %.052.lcssa.ph) #59, !inline_history !13
  %i.cw = sext i32 %i.cv to i64
  %i.cx = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.cy = sub nsw i64 %i.cx, %i.cw
  store i64 %i.cy, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.da = add nsw i64 %i.cz, -1
  store i64 %i.da, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.db(ptr noundef nonnull %.052.lcssa.ph) #59, !inline_history !755
  %i.dc = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i74 = icmp eq ptr %i.dc, null
  br i1 %.not.i4.i74, label %sqlite3_free.exit75, label %bb.p

bb.p:                                             ; preds = %sqlite3_mutex_enter.exit.i73
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  call void %i.dd(ptr noundef nonnull %i.dc) #59, !inline_history !756
  br label %sqlite3_free.exit75

bb.q:                                             ; preds = %bb.m
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  call void %i.de(ptr noundef nonnull %.052.lcssa.ph) #59, !inline_history !755
  br label %sqlite3_free.exit75

sqlite3_free.exit75:                              ; preds = %bb.q, %bb.p, %sqlite3_mutex_enter.exit.i73, %.thread
  %i.df = icmp eq i32 %i.cq, 101
  %spec.select = select i1 %i.df, i32 0, i32 %i.cq
  br label %sqlite3_free.exit75.thread

sqlite3_free.exit75.thread:                       ; preds = %sqlite3_free.exit, %sqlite3_malloc64.exit, %sqlite3_free.exit75, %bb.a
  %i.dg = phi i32 [ 0, %bb.a ], [ %spec.select, %sqlite3_free.exit75 ], [ 7, %sqlite3_malloc64.exit ], [ 7, %sqlite3_free.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  ret i32 %i.dg
}

; Function Attrs: nounwind uwtable
define internal i32 @fts5TriTokenize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
.preheader151:
  %i.a = alloca [32 x i8], align 16               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %.not = icmp eq ptr %3, null
  %i.b = sext i32 %4 to i64
  %i.c = getelementptr inbounds i8, ptr %3, i64 %i.b
  %i.d = select i1 %.not, ptr null, ptr %i.c      ; 9 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 4 uses
  %i.f = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %.preheader151, %bb.g
  %.1116 = phi ptr [ %.3118, %bb.g ], [ %3, %.preheader151 ] ; 5 uses
  %i.h = ptrtoint ptr %.1116 to i64               ; 2 uses
  %.not137 = icmp ult ptr %.1116, %i.d
  br i1 %.not137, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.1116, i64 1 ; 4 uses
  %i.j = load i8, ptr %.1116, align 1, !tbaa !741 ; 3 uses
  %i.k = zext i8 %i.j to i32
  %i.l = icmp ugt i8 %i.j, -65
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = zext i8 %i.j to i64
  %i.n = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -192
  %i.p = load i8, ptr %i.o, align 1, !tbaa !741
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = icmp ult ptr %i.i, %i.d
  br i1 %i.r, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %scevgep = getelementptr i8, ptr %.1116, i64 %i.e
  %i.s = sub i64 0, %i.h
  %scevgep176 = getelementptr i8, ptr %scevgep, i64 %i.s ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0113157 = phi i32 [ %i.aa, %bb.d ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.2117156 = phi ptr [ %i.y, %bb.d ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %i.t = load i8, ptr %.2117156, align 1, !tbaa !741
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = and i32 %i.u, 192
  %i.w = icmp eq i32 %i.v, 128
  br i1 %i.w, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.x = shl i32 %.0113157, 6
  %i.y = getelementptr inbounds nuw i8, ptr %.2117156, i64 1 ; 2 uses
  %i.z = and i32 %i.u, 63
  %i.aa = or disjoint i32 %i.z, %i.x              ; 2 uses
  %exitcond.not = icmp eq ptr %i.y, %scevgep176
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !8020

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %.2117.lcssa = phi ptr [ %i.i, %bb.c ], [ %scevgep176, %bb.d ], [ %.2117156, %.lr.ph ]
  %.0113.lcssa = phi i32 [ %i.q, %bb.c ], [ %i.aa, %bb.d ], [ %.0113157, %.lr.ph ] ; 4 uses
  %i.ab = icmp ult i32 %.0113.lcssa, 128
  %i.ac = and i32 %.0113.lcssa, -2048
  %i.ad = icmp eq i32 %i.ac, 55296
  %or.cond140 = or i1 %i.ab, %i.ad
  %i.ae = and i32 %.0113.lcssa, -2
  %i.af = icmp eq i32 %i.ae, 65534
  %or.cond142 = or i1 %i.af, %or.cond140
  %spec.select = select i1 %or.cond142, i32 65533, i32 %.0113.lcssa
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.b
  %.3118 = phi ptr [ %i.i, %bb.b ], [ %.2117.lcssa, %.critedge ] ; 2 uses
  %.1114 = phi i32 [ %i.k, %bb.b ], [ %spec.select, %.critedge ] ; 2 uses
  %i.ag = load i32, ptr %0, align 4, !tbaa !3215
  %.not138 = icmp eq i32 %i.ag, 0                 ; 3 uses
  br i1 %.not138, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !3214
  %i.ai = tail call fastcc i32 @sqlite3Fts5UnicodeFold(i32 noundef %.1114, i32 noundef %i.ah)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.2 = phi i32 [ %i.ai, %bb.f ], [ %.1114, %bb.e ] ; 14 uses
  %i.aj = icmp eq i32 %.2, 0
end_hunk_24
begin_hunk_25_@sessionAppendRecordMerge:bb.a
  %i.ch = or disjoint i32 %i.cg, %i.ca
  br label %sqlite3GetVarint32.exit.i.i39

bb.w:                                             ; preds = %bb.u
  %i.ci = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %i.bl, ptr noundef nonnull %i.a)
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !571 ; 2 uses
  %.not.i.i.i36 = icmp ult i64 %i.cj, 4294967296
  %i.ck = trunc nuw i64 %i.cj to i32
  %storemerge.i.i.i37 = select i1 %.not.i.i.i36, i32 %i.ck, i32 -1
  %narrow.i38 = add nuw nsw i8 %i.ci, 1
  %i.cl = zext nneg i8 %narrow.i38 to i32
  br label %sqlite3GetVarint32.exit.i.i39

sqlite3GetVarint32.exit.i.i39:                    ; preds = %bb.w, %bb.v, %bb.t
  %storemerge.sink.i.i.i40 = phi i32 [ %storemerge.i.i.i37, %bb.w ], [ %i.ch, %bb.v ], [ %i.bw, %bb.t ]
  %.0.i.i.i41 = phi i32 [ %i.cl, %bb.w ], [ 4, %bb.v ], [ 3, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sessionVarintGet.exit.i42

sessionVarintGet.exit.i42:                        ; preds = %sqlite3GetVarint32.exit.i.i39, %bb.r
  %.012.i43 = phi i32 [ %i.bo, %bb.r ], [ %storemerge.sink.i.i.i40, %sqlite3GetVarint32.exit.i.i39 ]
  %i.cm = phi i32 [ 2, %bb.r ], [ %.0.i.i.i41, %sqlite3GetVarint32.exit.i.i39 ]
  %i.cn = add nsw i32 %i.cm, %.012.i43
  %i.co = sext i32 %i.cn to i64
  br label %sessionSerialLen.exit44

sessionSerialLen.exit44:                          ; preds = %sessionSerialLen.exit, %sessionSerialLen.exit, %sessionSerialLen.exit, %bb.p, %sessionVarintGet.exit.i42
  %.0.i34 = phi i64 [ %i.co, %sessionVarintGet.exit.i42 ], [ 1, %sessionSerialLen.exit ], [ 9, %bb.p ], [ 1, %sessionSerialLen.exit ], [ 1, %sessionSerialLen.exit ] ; 3 uses
  %.off = add i8 %i.ad, -1
  %switch = icmp ult i8 %.off, -2
  br i1 %switch, label %bb.y, label %bb.x

bb.x:                                             ; preds = %sessionSerialLen.exit44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.052, ptr nonnull align 1 %.03245, i64 %.0.i34, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %sessionSerialLen.exit44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.052, ptr nonnull align 1 %.03148, i64 %.0.i, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi i64 [ %.0.i34, %bb.x ], [ %.0.i, %bb.y ]
  %.1 = getelementptr inbounds i8, ptr %.052, i64 %.pn ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.03148, i64 %.0.i
  %i.cq = getelementptr inbounds i8, ptr %.03245, i64 %.0.i34
  %i.cr = add nuw nsw i32 %.03051, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, %1
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !8343

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre53 = load ptr, ptr %0, align 8, !tbaa !1574
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %sessionBufferGrow.exit.thread65
  %i.cs = phi ptr [ %i.y, %sessionBufferGrow.exit.thread65 ], [ %.pre53, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %i.ab, %sessionBufferGrow.exit.thread65 ], [ %.1, %._crit_edge.loopexit ]
  %i.ct = ptrtoint ptr %.0.lcssa to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.e, align 8, !tbaa !1570
  br label %sessionBufferGrow.exit.thread

sessionBufferGrow.exit.thread:                    ; preds = %sqlite3_realloc64.exit.thread.i, %.critedge.i, %bb.a, %._crit_edge, %sessionBufferGrow.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v2i16(<2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #47

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { norecurse nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nofree nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #59 = { nounwind }
attributes #60 = { nounwind willreturn memory(read) }
attributes #61 = { nounwind willreturn memory(none) }
attributes #62 = { "function-inline-cost-multiplier"="2" }
attributes #63 = { nounwind allocsize(0) }
attributes #64 = { nounwind allocsize(1) }

!llvm.module.flags = !{!552, !553, !554, !555}
!llvm.ident = !{!556}
!llvm.errno.tbaa = !{!561}

!0 = distinct !{!0, !605}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{!3, !605}
!4 = distinct !{!4, !605}
!5 = distinct !{ptr @sqlite3DbNNFreeNN, ptr @sqlite3_free, null}
!6 = distinct !{null}
!7 = distinct !{!7, !605}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{!10, !605}
!11 = distinct !{!11, !605}
!12 = distinct !{null}
!13 = distinct !{ptr @sqlite3_free, null}
!14 = distinct !{!14, !605}
!15 = distinct !{null}
!16 = distinct !{!16, !605}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{ptr @sqlite3_vmprintf, null}
!20 = distinct !{ptr @sqlite3_vfs_find, null}
!21 = distinct !{!21, !605}
!22 = distinct !{ptr @sqlite3_vfs_register, null}
!23 = distinct !{ptr @sqlite3_randomness, null}
!24 = distinct !{!24, !605}
!25 = distinct !{null}
!26 = distinct !{null, ptr @sqlite3_mutex_enter}
!27 = distinct !{null, ptr @sqlite3_mutex_leave}
!28 = distinct !{null}
!29 = distinct !{null, null, ptr @sqlite3_mutex_enter}
!30 = distinct !{null, null, ptr @sqlite3_mutex_leave}
!31 = distinct !{!31, !605}
!32 = distinct !{null}
!33 = distinct !{null, null, null, null}
!34 = distinct !{ptr @sqlite3DbFreeNN, ptr @sqlite3_free, null}
!35 = distinct !{null}
!36 = distinct !{!36, !605}
!37 = distinct !{null}
!38 = distinct !{null, ptr @sqlite3_mutex_enter}
!39 = distinct !{null, ptr @sqlite3_mutex_leave}
!40 = distinct !{null}
!41 = distinct !{ptr @sqlite3_column_text, null, ptr @sqlite3_mutex_enter}
!42 = distinct !{ptr @sqlite3_column_text, null, ptr @sqlite3_mutex_leave}
!43 = distinct !{ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_enter}
!44 = distinct !{ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_leave}
!45 = distinct !{null, null}
!46 = distinct !{null}
!47 = distinct !{null, null}
!48 = distinct !{null}
!49 = distinct !{null, ptr @sqlite3VtabUnlock}
!50 = distinct !{null, ptr @sqlite3VtabUnlock, null}
!51 = distinct !{!51, !605}
!52 = distinct !{!52, !605}
!53 = distinct !{null}
!54 = distinct !{!54, !605}
!55 = distinct !{!55, !605}
!56 = distinct !{null}
!57 = distinct !{null}
!58 = distinct !{!58, !605}
!59 = distinct !{!59, !605}
!60 = distinct !{null}
!61 = distinct !{ptr @btreeGetPage, null}
!62 = distinct !{!62, !605}
!63 = distinct !{!63, !605}
!64 = distinct !{null}
!65 = distinct !{!65, !605}
!66 = distinct !{null}
!67 = distinct !{null}
!68 = distinct !{null}
!69 = distinct !{null, ptr @sqlite3_msize}
!70 = distinct !{null, ptr @sqlite3_mutex_enter}
!71 = distinct !{!71, !605}
!72 = distinct !{null, ptr @sqlite3_mutex_leave}
!73 = distinct !{!73, !605}
!74 = distinct !{!74, !605}
!75 = distinct !{!75, !605}
!76 = distinct !{ptr @sqlite3_value_double, null}
!77 = distinct !{!77, !605}
!78 = distinct !{!78, !605}
!79 = distinct !{!79, !605}
!80 = distinct !{null}
!81 = distinct !{!81, !605}
!82 = distinct !{!82, !605}
!83 = distinct !{!83, !605}
!84 = distinct !{!84, !605}
!85 = distinct !{!85, !605}
!86 = distinct !{null}
!87 = distinct !{null}
!88 = distinct !{!88, !605}
!89 = distinct !{!89, !605}
!90 = distinct !{!90, !605}
!91 = distinct !{!91, !605}
!92 = distinct !{!92, !605}
!93 = distinct !{!93, !605}
!94 = distinct !{null, ptr @sqlite3_mutex_enter}
!95 = distinct !{null, ptr @sqlite3_mutex_leave}
!96 = distinct !{!96, !605}
!97 = distinct !{!97, !605}
!98 = distinct !{null}
!99 = distinct !{null}
!100 = distinct !{null}
!101 = distinct !{null}
!102 = distinct !{null}
!103 = distinct !{!103, !605}
!104 = distinct !{ptr @sqlite3_free_filename, ptr @sqlite3_free, null}
!105 = distinct !{!105, !605}
!106 = distinct !{!106, !605}
!107 = distinct !{!107, !605}
!108 = distinct !{!108, !605}
!109 = distinct !{!109, !605}
!110 = distinct !{!110, !605}
!111 = distinct !{!111, !605}
!112 = distinct !{ptr @sqlite3_column_value, null, ptr @sqlite3_mutex_enter}
!113 = distinct !{ptr @sqlite3_column_value, null, ptr @sqlite3_mutex_leave}
!114 = distinct !{null, ptr @sqlite3_mutex_enter}
!115 = distinct !{null, ptr @sqlite3_mutex_leave}
!116 = distinct !{null, ptr @sqlite3_mutex_enter}
!117 = distinct !{!117, !605}
!118 = distinct !{null, ptr @sqlite3_mutex_leave}
!119 = distinct !{!119, !605}
!120 = distinct !{null, ptr @sqlite3_msize}
!121 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!122 = distinct !{null, ptr @sqlite3_free, null}
!123 = distinct !{null, ptr @sqlite3_free}
!124 = distinct !{null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
end_hunk_25
