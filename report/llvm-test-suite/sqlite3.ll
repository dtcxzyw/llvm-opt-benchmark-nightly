Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 106
begin_hunk_0_@sqlite3WhereBegin:bb.a
bb.fv:                                            ; preds = %bb.fu, %.lr.ph.i.i.i337.i
  %indvars.iv.i.i.i339.i = phi i64 [ 0, %.lr.ph.i.i.i337.i ], [ %indvars.iv.next.i.i.i340.i, %bb.fu ] ; 3 uses
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.afb, i64 %indvars.iv.i.i.i339.i
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !112
  %i.ahx = icmp eq i32 %i.ahw, %i.dg
  br i1 %i.ahx, label %bb.fw, label %bb.fu

bb.fw:                                            ; preds = %bb.fv
  %i.ahy = shl nuw i64 1, %indvars.iv.i.i.i339.i
  %i.ahz = xor i64 %i.ahy, -1
  br label %getMask.exit.i.i330.i

getMask.exit.i.i330.i:                            ; preds = %bb.fu, %bb.fw, %bb.ft
  %.07.i.i.i331.i = phi i64 [ %i.ahz, %bb.fw ], [ -1, %bb.ft ], [ -1, %bb.fu ]
  %i.aia = load i32, ptr %i.lf, align 8, !tbaa !806 ; 2 uses
  %smax.i.i332.i = call i32 @llvm.smax.i32(i32 %i.aia, i32 range(i32 0, -2147483648) %i.ahq)
  %wide.trip.count.i.i333.i = zext nneg i32 %smax.i.i332.i to i64
  %exitcond.not.i.i335.i2271.not = icmp slt i32 %i.ahq, %i.aia
  br i1 %exitcond.not.i.i335.i2271.not, label %.lr.ph2273, label %select.unfold.thread.i.i

.lr.ph2273:                                       ; preds = %getMask.exit.i.i330.i
  %i.aib = zext nneg i32 %i.ahq to i64
  %i.aic = load ptr, ptr %i.ro, align 8, !tbaa !805
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fy
  %indvars.iv.next.i.i336.i = add nuw nsw i64 %indvars.iv.i.i334.i2272, 1 ; 2 uses
  %exitcond.not.i.i335.i = icmp eq i64 %indvars.iv.next.i.i336.i, %wide.trip.count.i.i333.i
  br i1 %exitcond.not.i.i335.i, label %select.unfold.thread.i.i, label %bb.fy, !llvm.loop !1777

select.unfold.thread.i.i:                         ; preds = %getMask.exit.i.i330.i, %bb.fx
  %indvars.iv.next167.i.i = add nuw nsw i64 %indvars.iv.i317.i, 1
  br label %.critedge.loopexit.i319.i

bb.fy:                                            ; preds = %.lr.ph2273, %bb.fx
  %indvars.iv.i.i334.i2272 = phi i64 [ %i.aib, %.lr.ph2273 ], [ %indvars.iv.next.i.i336.i, %bb.fx ] ; 2 uses
  %i.aid = getelementptr inbounds nuw [24 x i8], ptr %i.aic, i64 %indvars.iv.i.i334.i2272
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !808
  %i.aif = call fastcc i64 @exprTableUsage(ptr noundef nonnull %i.aer, ptr noundef %i.aie)
  %i.aig = and i64 %i.aif, %.07.i.i.i331.i
  %.not.i90.i.i = icmp eq i64 %i.aig, 0
  br i1 %.not.i90.i.i, label %bb.fx, label %select.unfold.i.i, !llvm.loop !1777

select.unfold.i.i:                                ; preds = %bb.fy, %bb.fs, %bb.fp
  %.269.ph.i.i = phi i32 [ %i.ahq, %bb.fs ], [ %.067134.i.i, %bb.fp ], [ %i.ahq, %bb.fy ] ; 3 uses
  %.2.ph.i.i = phi i32 [ %.166.i.i, %bb.fs ], [ %.065135.i.i, %bb.fp ], [ %.166.i.i, %bb.fy ] ; 2 uses
  %.1.ph.i.i = phi ptr [ %i.ahr, %bb.fs ], [ %.064136.i.i, %bb.fp ], [ %i.ahr, %bb.fy ]
  %indvars.iv.next.i322.i = add nuw nsw i64 %indvars.iv.i317.i, 1 ; 2 uses
  %i.aih = icmp slt i32 %.269.ph.i.i, %i.aes
  br i1 %i.aih, label %bb.fe, label %.critedge.loopexit.i319.i, !llvm.loop !1781

.critedge.loopexit.i319.i:                        ; preds = %select.unfold.i.i, %bb.fg, %bb.ff, %bb.fe, %select.unfold.thread.i.i
  %.071.lcssa.ph.in.i.i = phi i64 [ %indvars.iv.next167.i.i, %select.unfold.thread.i.i ], [ %indvars.iv.i317.i, %bb.fg ], [ %indvars.iv.i317.i, %bb.ff ], [ %indvars.iv.next.i322.i, %select.unfold.i.i ], [ %indvars.iv.i317.i, %bb.fe ]
  %.067.lcssa.ph.i.i = phi i32 [ %i.aes, %select.unfold.thread.i.i ], [ %.067134.i.i, %bb.fg ], [ %.067134.i.i, %bb.ff ], [ %.269.ph.i.i, %select.unfold.i.i ], [ %.067134.i.i, %bb.fe ]
  %.065.lcssa.ph.i.i = phi i32 [ %.166.i.i, %select.unfold.thread.i.i ], [ %.065135.i.i, %bb.fg ], [ %.065135.i.i, %bb.ff ], [ %.2.ph.i.i, %select.unfold.i.i ], [ %.065135.i.i, %bb.fe ]
  %.071.lcssa.ph.i.i = trunc i64 %.071.lcssa.ph.in.i.i to i32
  %.not.i824 = icmp eq i32 %.065.lcssa.ph.i.i, 0
  br label %.critedge.i315.i

.critedge.i315.i:                                 ; preds = %.critedge.loopexit.i319.i, %bb.fd
  %.071.lcssa.i.i = phi i32 [ 0, %bb.fd ], [ %.071.lcssa.ph.i.i, %.critedge.loopexit.i319.i ]
  %.067.lcssa.i.i = phi i32 [ 0, %bb.fd ], [ %.067.lcssa.ph.i.i, %.critedge.loopexit.i319.i ] ; 4 uses
  %.065.lcssa.i.i = phi i1 [ true, %bb.fd ], [ %.not.i824, %.critedge.loopexit.i319.i ]
  %.not85.i.i = icmp slt i32 %.067.lcssa.i.i, %i.aes
  br i1 %.not85.i.i, label %bb.fz, label %.thread429.i

bb.fz:                                            ; preds = %.critedge.i315.i
  %i.aii = load i8, ptr %i.adx, align 4, !tbaa !747
  %.not86.i.i = icmp eq i8 %i.aii, 0
  br i1 %.not86.i.i, label %isSortingIndex.exit.thread.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aij = load i32, ptr %i.rq, align 8, !tbaa !309
  %i.aik = icmp eq i32 %.071.lcssa.i.i, %i.aij
  br i1 %i.aik, label %bb.gb, label %isSortingIndex.exit.thread.i

bb.gb:                                            ; preds = %bb.ga
  %i.ail = load i32, ptr %i.aer, align 4, !tbaa !988 ; 2 uses
  %i.aim = icmp sgt i32 %i.ail, 0
  br i1 %i.aim, label %.lr.ph.i.i100.i.i, label %getMask.exit.i91.i.i

.lr.ph.i.i100.i.i:                                ; preds = %bb.gb
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aer, i64 4
  %wide.trip.count.i.i101.i.i = zext nneg i32 %i.ail to i64
  br label %bb.gd

bb.gc:                                            ; preds = %bb.gd
  %indvars.iv.next.i.i103.i.i = add nuw nsw i64 %indvars.iv.i.i102.i.i, 1 ; 2 uses
  %exitcond.not.i.i104.i.i = icmp eq i64 %indvars.iv.next.i.i103.i.i, %wide.trip.count.i.i101.i.i
  br i1 %exitcond.not.i.i104.i.i, label %getMask.exit.i91.i.i, label %bb.gd, !llvm.loop !89

bb.gd:                                            ; preds = %bb.gc, %.lr.ph.i.i100.i.i
  %indvars.iv.i.i102.i.i = phi i64 [ 0, %.lr.ph.i.i100.i.i ], [ %indvars.iv.next.i.i103.i.i, %bb.gc ] ; 3 uses
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.ain, i64 %indvars.iv.i.i102.i.i
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !112
  %i.aiq = icmp eq i32 %i.aip, %i.dg
  br i1 %i.aiq, label %bb.ge, label %bb.gc

bb.ge:                                            ; preds = %bb.gd
  %i.air = shl nuw i64 1, %indvars.iv.i.i102.i.i
  %i.ais = xor i64 %i.air, -1
  br label %getMask.exit.i91.i.i

getMask.exit.i91.i.i:                             ; preds = %bb.gc, %bb.ge, %bb.gb
  %.07.i.i92.i.i = phi i64 [ %i.ais, %bb.ge ], [ -1, %bb.gb ], [ -1, %bb.gc ]
  %i.ait = load i32, ptr %i.lf, align 8, !tbaa !806 ; 2 uses
  %smax.i93.i.i = call i32 @llvm.smax.i32(i32 %i.ait, i32 range(i32 0, -2147483648) %.067.lcssa.i.i)
  %wide.trip.count.i94.i.i = zext nneg i32 %smax.i93.i.i to i64
  %exitcond.not.i96.i.i2277.not = icmp slt i32 %.067.lcssa.i.i, %i.ait
  br i1 %exitcond.not.i96.i.i2277.not, label %.lr.ph2279, label %.thread429.i

.lr.ph2279:                                       ; preds = %getMask.exit.i91.i.i
  %i.aiu = zext nneg i32 %.067.lcssa.i.i to i64
  %i.aiv = load ptr, ptr %i.ro, align 8, !tbaa !805
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gg
  %indvars.iv.next.i97.i.i = add nuw nsw i64 %indvars.iv.i95.i.i2278, 1 ; 2 uses
  %exitcond.not.i96.i.i = icmp eq i64 %indvars.iv.next.i97.i.i, %wide.trip.count.i94.i.i
  br i1 %exitcond.not.i96.i.i, label %.thread429.i, label %bb.gg, !llvm.loop !1777

bb.gg:                                            ; preds = %.lr.ph2279, %bb.gf
  %indvars.iv.i95.i.i2278 = phi i64 [ %i.aiu, %.lr.ph2279 ], [ %indvars.iv.next.i97.i.i, %bb.gf ] ; 2 uses
  %i.aiw = getelementptr inbounds nuw [24 x i8], ptr %i.aiv, i64 %indvars.iv.i95.i.i2278
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !808
  %i.aiy = call fastcc i64 @exprTableUsage(ptr noundef nonnull %i.aer, ptr noundef %i.aix)
  %i.aiz = and i64 %i.aiy, %.07.i.i92.i.i
  %.not.i98.i.i = icmp eq i64 %i.aiz, 0
  br i1 %.not.i98.i.i, label %bb.gf, label %isSortingIndex.exit.thread.i, !llvm.loop !1777

.thread429.i:                                     ; preds = %bb.gf, %getMask.exit.i91.i.i, %.critedge.i315.i
  %i.aja = icmp eq i32 %.10.i, 0
  %i.ajb = or i32 %.10.i, 1048576
  %i.ajc = select i1 %i.aja, i32 1056768, i32 %i.ajb ; 2 uses
  %i.ajd = or i32 %i.ajc, 2097152
  %spec.select229.i = select i1 %.065.lcssa.i.i, i32 %i.ajc, i32 %i.ajd
  br label %bb.gi

isSortingIndex.exit.thread.i:                     ; preds = %bb.fr, %bb.fp, %bb.gg, %bb.ga, %bb.fz, %bb.fc
  %i.aje = fcmp ogt double %.5.i, 1.000000e+01
  br i1 %i.aje, label %.lr.ph.i344.i, label %estLog.exit347.i

.lr.ph.i344.i:                                    ; preds = %isSortingIndex.exit.thread.i, %.lr.ph.i344.i
  %.07.i345.i = phi double [ %i.ajg, %.lr.ph.i344.i ], [ 1.000000e+01, %isSortingIndex.exit.thread.i ]
  %.056.i346.i = phi double [ %i.ajf, %.lr.ph.i344.i ], [ 1.000000e+00, %isSortingIndex.exit.thread.i ]
  %i.ajf = fadd double %.056.i346.i, 1.000000e+00 ; 2 uses
  %i.ajg = fmul double %.07.i345.i, 1.000000e+01  ; 2 uses
  %i.ajh = fcmp ogt double %.5.i, %i.ajg
  br i1 %i.ajh, label %.lr.ph.i344.i, label %estLog.exit347.i, !llvm.loop !1778

estLog.exit347.i:                                 ; preds = %.lr.ph.i344.i, %isSortingIndex.exit.thread.i
  %.05.lcssa.i343.i = phi double [ 1.000000e+00, %isSortingIndex.exit.thread.i ], [ %i.ajf, %.lr.ph.i344.i ]
  %i.aji = call double @llvm.fmuladd.f64(double %.5.i, double %.05.lcssa.i343.i, double %.5.i)
  br label %bb.gh

bb.gh:                                            ; preds = %estLog.exit347.i, %bb.fb
  %.6.i = phi double [ %.5.i, %bb.fb ], [ %i.aji, %estLog.exit347.i ]
  %.not225.i = icmp eq i32 %.10.i, 0
  br i1 %.not225.i, label %.thread438.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %.thread429.i
  %.6437.i = phi double [ %.5.i, %.thread429.i ], [ %.6.i, %bb.gh ] ; 3 uses
  %.11436.i = phi i32 [ %spec.select229.i, %.thread429.i ], [ %.10.i, %bb.gh ] ; 3 uses
  %i.ajj = load i64, ptr %i.rp, align 8, !tbaa !962 ; 4 uses
  %i.ajk = icmp sgt i64 %i.ajj, -1
  br i1 %i.ajk, label %.preheader.i819, label %bb.gj

.preheader.i819:                                  ; preds = %bb.gi
  %i.ajl = load i32, ptr %i.rq, align 8, !tbaa !309 ; 3 uses
  %i.ajm = icmp sgt i32 %i.ajl, 0
  br i1 %i.ajm, label %.lr.ph538.i, label %._crit_edge.i820

.lr.ph538.i:                                      ; preds = %.preheader.i819
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0178549.i, i64 16
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !310 ; 2 uses
  %wide.trip.count.i821 = zext nneg i32 %i.ajl to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ajl, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph538.i
  %n.vec = and i64 %wide.trip.count.i821, 2147483644 ; 3 uses
  %i.ajp = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ajj, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ajp, %vector.ph ], [ %i.akc, %vector.body ]
  %vec.phi2280 = phi <2 x i64> [ splat (i64 -1), %vector.ph ], [ %i.akd, %vector.body ]
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %index ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  %wide.load = load <2 x i32>, ptr %i.ajq, align 4, !tbaa !112 ; 2 uses
  %wide.load2281 = load <2 x i32>, ptr %i.ajr, align 4, !tbaa !112 ; 2 uses
  %i.ajs = icmp ult <2 x i32> %wide.load, splat (i32 63)
  %i.ajt = icmp ult <2 x i32> %wide.load2281, splat (i32 63)
  %i.aju = zext nneg <2 x i32> %wide.load to <2 x i64>
  %i.ajv = zext nneg <2 x i32> %wide.load2281 to <2 x i64>
  %i.ajw = shl nuw <2 x i64> splat (i64 1), %i.aju
  %i.ajx = shl nuw <2 x i64> splat (i64 1), %i.ajv
  %i.ajy = xor <2 x i64> %i.ajw, splat (i64 -1)
  %i.ajz = xor <2 x i64> %i.ajx, splat (i64 -1)
  %i.aka = select <2 x i1> %i.ajs, <2 x i64> %i.ajy, <2 x i64> splat (i64 9223372036854775807)
  %i.akb = select <2 x i1> %i.ajt, <2 x i64> %i.ajz, <2 x i64> splat (i64 9223372036854775807)
  %i.akc = and <2 x i64> %i.aka, %vec.phi         ; 2 uses
  %i.akd = and <2 x i64> %i.akb, %vec.phi2280     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ake = icmp eq i64 %index.next, %n.vec
  br i1 %i.ake, label %middle.block, label %vector.body, !llvm.loop !1782

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <2 x i64> %i.akd, %i.akc
  %i.akf = call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i821
  br i1 %cmp.n, label %._crit_edge.i820, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph538.i, %middle.block
  %indvars.iv622.i.ph = phi i64 [ 0, %.lr.ph538.i ], [ %n.vec, %middle.block ]
  %.0157536.i.ph = phi i64 [ %i.ajj, %.lr.ph538.i ], [ %i.akf, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv622.i = phi i64 [ %indvars.iv.next623.i, %scalar.ph ], [ %indvars.iv622.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0157536.i = phi i64 [ %.1.i822, %scalar.ph ], [ %.0157536.i.ph, %scalar.ph.preheader ]
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ajo, i64 %indvars.iv622.i
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !112 ; 2 uses
  %i.aki = icmp ult i32 %i.akh, 63
  %i.akj = zext nneg i32 %i.akh to i64
  %i.akk = shl nuw i64 1, %i.akj
  %i.akl = xor i64 %i.akk, -1
  %i.akm = select i1 %i.aki, i64 %i.akl, i64 9223372036854775807
  %.1.i822 = and i64 %i.akm, %.0157536.i          ; 2 uses
  %indvars.iv.next623.i = add nuw nsw i64 %indvars.iv622.i, 1 ; 2 uses
  %exitcond.not.i823 = icmp eq i64 %indvars.iv.next623.i, %wide.trip.count.i821
  br i1 %exitcond.not.i823, label %._crit_edge.i820, label %scalar.ph, !llvm.loop !1783

._crit_edge.i820:                                 ; preds = %scalar.ph, %middle.block, %.preheader.i819
  %.0157.lcssa.i = phi i64 [ %i.ajj, %.preheader.i819 ], [ %i.akf, %middle.block ], [ %.1.i822, %scalar.ph ]
  %i.akn = icmp eq i64 %.0157.lcssa.i, 0          ; 2 uses
  %i.ako = or i32 %.11436.i, 524288
  %i.akp = fmul double %.6437.i, 5.000000e-01
  %.12.i = select i1 %i.akn, i32 %i.ako, i32 %.11436.i
  %.7.i = select i1 %i.akn, double %i.akp, double %.6437.i
  br label %bb.gj

bb.gj:                                            ; preds = %._crit_edge.i820, %bb.gi
  %.13.i = phi i32 [ %.12.i, %._crit_edge.i820 ], [ %.11436.i, %bb.gi ]
  %.8.i = phi double [ %.7.i, %._crit_edge.i820 ], [ %.6437.i, %bb.gi ] ; 2 uses
  %i.akq = fcmp olt double %.8.i, %.4189543.i
  br i1 %i.akq, label %bb.gk, label %.thread438.i

bb.gk:                                            ; preds = %bb.gj
  br label %.thread438.i

.thread438.i:                                     ; preds = %bb.gk, %bb.gj, %bb.gh
  %.1192.i = phi ptr [ %.0178549.i, %bb.gk ], [ %.0191541.i, %bb.gj ], [ %.0191541.i, %bb.gh ] ; 2 uses
  %.5190.i = phi double [ %.8.i, %bb.gk ], [ %.4189543.i, %bb.gj ], [ %.4189543.i, %bb.gh ] ; 2 uses
  %.3184.i = phi i32 [ %.13.i, %bb.gk ], [ %.2183545.i, %bb.gj ], [ %.2183545.i, %bb.gh ] ; 2 uses
  %.1180.i = phi i32 [ %.0160498688.i, %bb.gk ], [ %.0179547.i, %bb.gj ], [ %.0179547.i, %bb.gh ] ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %.0178549.i, i64 56
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !395 ; 2 uses
  %.not215.i = icmp eq ptr %i.aks, null
  br i1 %.not215.i, label %._crit_edge555.i, label %.preheader457.i, !llvm.loop !1784

._crit_edge555.i:                                 ; preds = %.thread438.i, %bb.dc
  %.0191.lcssa.i = phi ptr [ null, %bb.dc ], [ %.1192.i, %.thread438.i ]
  %.4189.lcssa.i = phi double [ %.3188.i, %bb.dc ], [ %.5190.i, %.thread438.i ]
  %.2183.lcssa.i = phi i32 [ %.1182.i, %bb.dc ], [ %.3184.i, %.thread438.i ]
  %.0179.lcssa.i = phi i32 [ 0, %bb.dc ], [ %.1180.i, %.thread438.i ]
  %i.akt = or i32 %.2183.lcssa.i, %.0168.i
  br label %bestIndex.exit

bestIndex.exit:                                   ; preds = %.lr.ph2266, %._crit_edge555.i, %bb.by, %bb.bx, %bb.bw, %.loopexit461.i, %findTerm.exit241.i, %bb.bp
  %.01456 = phi ptr [ null, %bb.bp ], [ null, %.loopexit461.i ], [ %.0191.lcssa.i, %._crit_edge555.i ], [ null, %findTerm.exit241.i ], [ null, %bb.by ], [ null, %bb.bx ], [ null, %bb.bw ], [ null, %.lr.ph2266 ]
  %.11454 = phi i32 [ %.01453, %bb.bp ], [ 0, %.loopexit461.i ], [ %i.akt, %._crit_edge555.i ], [ 4194560, %findTerm.exit241.i ], [ 0, %bb.by ], [ 0, %bb.bx ], [ 0, %bb.bw ], [ 0, %.lr.ph2266 ]
  %.0 = phi i32 [ 0, %bb.bp ], [ 0, %.loopexit461.i ], [ %.0179.lcssa.i, %._crit_edge555.i ], [ 1, %findTerm.exit241.i ], [ 0, %bb.by ], [ 0, %bb.bx ], [ 0, %bb.bw ], [ 0, %.lr.ph2266 ]
  %.0717 = phi double [ %spec.store.select, %bb.bp ], [ 0.000000e+00, %.loopexit461.i ], [ %.4189.lcssa.i, %._crit_edge555.i ], [ 0.000000e+00, %findTerm.exit241.i ], [ 0.000000e+00, %bb.by ], [ 0.000000e+00, %bb.bx ], [ 0.000000e+00, %bb.bw ], [ 0.000000e+00, %.lr.ph2266 ] ; 2 uses
  %.0693 = phi ptr [ %i.la, %bb.bp ], [ null, %.loopexit461.i ], [ null, %._crit_edge555.i ], [ null, %findTerm.exit241.i ], [ null, %bb.by ], [ null, %bb.bx ], [ null, %bb.bw ], [ null, %.lr.ph2266 ]
  %i.aku = fcmp olt double %.0717, %.07011582
  br i1 %i.aku, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bestIndex.exit
  store ptr %.0693, ptr %i.cz, align 8, !tbaa !1822
  %i.akv = trunc nsw i64 %indvars.iv1734 to i32
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bestIndex.exit
  %.1713 = phi ptr [ %.01456, %bb.gl ], [ %.07121579, %bestIndex.exit ] ; 2 uses
  %.1709 = phi i32 [ %.11454, %bb.gl ], [ %.07081580, %bestIndex.exit ] ; 2 uses
  %.1705 = phi i32 [ %.0, %bb.gl ], [ %.07041581, %bestIndex.exit ] ; 2 uses
  %.1702 = phi double [ %.0717, %bb.gl ], [ %.07011582, %bestIndex.exit ]
  %.1698 = phi i32 [ %i.akv, %bb.gl ], [ %.06971583, %bestIndex.exit ] ; 2 uses
  %.1695 = phi i32 [ 1, %bb.gl ], [ %.06941584, %bestIndex.exit ]
  br i1 %i.dd, label %.thread, label %bb.gn

bb.gn:                                            ; preds = %.critedge, %bb.gm
  %.2714 = phi ptr [ %.1713, %bb.gm ], [ %.07121579, %.critedge ] ; 2 uses
  %.2710 = phi i32 [ %.1709, %bb.gm ], [ %.07081580, %.critedge ] ; 2 uses
  %.2706 = phi i32 [ %.1705, %bb.gm ], [ %.07041581, %.critedge ] ; 2 uses
  %.2703 = phi double [ %.1702, %bb.gm ], [ %.07011582, %.critedge ]
  %.2699 = phi i32 [ %.1698, %bb.gm ], [ %.06971583, %.critedge ] ; 2 uses
  %.2696 = phi i32 [ %.1695, %bb.gm ], [ %.06941584, %.critedge ]
  %.3686 = phi i32 [ %.16841585, %bb.gm ], [ %spec.select, %.critedge ] ; 2 uses
  %indvars.iv.next1735 = add nsw i64 %indvars.iv1734, 1 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.16721586, i64 72
  %i.akx = load i16, ptr %1, align 8, !tbaa !823
  %i.aky = sext i16 %i.akx to i64
  %i.akz = icmp slt i64 %indvars.iv.next1735, %i.aky
  br i1 %i.akz, label %bb.x, label %.thread, !llvm.loop !1785

.thread:                                          ; preds = %bb.gn, %bb.x, %bb.gm
  %.1684.lcssa = phi i32 [ %.16841585, %bb.gm ], [ %.3686, %bb.gn ], [ %.16841585, %bb.x ] ; 2 uses
  %.3715 = phi ptr [ %.1713, %bb.gm ], [ %.2714, %bb.gn ], [ %.07121579, %bb.x ] ; 2 uses
  %.3711 = phi i32 [ %.1709, %bb.gm ], [ %.2710, %bb.gn ], [ %.07081580, %bb.x ] ; 3 uses
  %.3707 = phi i32 [ %.1705, %bb.gm ], [ %.2706, %bb.gn ], [ %.07041581, %bb.x ] ; 2 uses
  %.3700 = phi i32 [ %.1698, %bb.gm ], [ %.2699, %bb.gn ], [ %.06971583, %bb.x ] ; 2 uses
  %i.ala = and i32 %.3711, 1048576
  %.not787 = icmp eq i32 %i.ala, 0
  br i1 %.not787, label %.thread.thread, label %bb.go

bb.go:                                            ; preds = %.thread
  store ptr null, ptr %3, align 8, !tbaa !908
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.w, %bb.go, %.thread
  %.37002064 = phi i32 [ %.3700, %.thread ], [ %.3700, %bb.go ], [ 0, %bb.w ] ; 2 uses
  %.37072063 = phi i32 [ %.3707, %.thread ], [ %.3707, %bb.go ], [ 0, %bb.w ]
  %.37112062 = phi i32 [ %.3711, %.thread ], [ %.3711, %bb.go ], [ 0, %bb.w ] ; 2 uses
  %.37152061 = phi ptr [ %.3715, %.thread ], [ %.3715, %bb.go ], [ null, %bb.w ] ; 2 uses
  %.1684.lcssa2060 = phi i32 [ %.1684.lcssa, %.thread ], [ %.1684.lcssa, %bb.go ], [ %.06831609, %bb.w ]
  %i.alb = and i32 %.37112062, %.06891608         ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.06751610, i64 4
  store i32 %.37112062, ptr %i.alc, align 4, !tbaa !999
  %i.ald = getelementptr inbounds nuw i8, ptr %.06751610, i64 16
  store ptr %.37152061, ptr %i.ald, align 8, !tbaa !1000
  %i.ale = getelementptr inbounds nuw i8, ptr %.06751610, i64 60
  store i32 %.37072063, ptr %i.ale, align 4, !tbaa !1001
  %i.alf = getelementptr inbounds nuw i8, ptr %.06751610, i64 72
  store ptr null, ptr %i.alf, align 8, !tbaa !1002
  %i.alg = getelementptr inbounds nuw i8, ptr %.06751610, i64 64
  store i32 0, ptr %i.alg, align 8, !tbaa !1003
  %.not788 = icmp eq ptr %.37152061, null
  br i1 %.not788, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %.thread.thread
  %i.alh = load i32, ptr %i.cs, align 4, !tbaa !842 ; 2 uses
  %i.ali = add nsw i32 %i.alh, 1
  store i32 %i.ali, ptr %i.cs, align 4, !tbaa !842
  br label %bb.gq

bb.gq:                                            ; preds = %.thread.thread, %bb.gp
  %.sink = phi i32 [ %i.alh, %bb.gp ], [ -1, %.thread.thread ]
  %i.alj = getelementptr inbounds nuw i8, ptr %.06751610, i64 28
  store i32 %.sink, ptr %i.alj, align 4, !tbaa !1004
  %i.alk = sext i32 %.37002064 to i64
  %i.all = getelementptr inbounds [72 x i8], ptr %i.cm, i64 %i.alk
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 44
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !881
  %i.alo = load i32, ptr %5, align 4, !tbaa !988  ; 2 uses
  %i.alp = icmp sgt i32 %i.alo, 0
  br i1 %i.alp, label %.lr.ph.i833, label %getMask.exit838

.lr.ph.i833:                                      ; preds = %bb.gq
  %wide.trip.count.i834 = zext nneg i32 %i.alo to i64
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gs
  %indvars.iv.next.i836 = add nuw nsw i64 %indvars.iv.i835, 1 ; 2 uses
  %exitcond.not.i837 = icmp eq i64 %indvars.iv.next.i836, %wide.trip.count.i834
  br i1 %exitcond.not.i837, label %getMask.exit838, label %bb.gs, !llvm.loop !89

bb.gs:                                            ; preds = %bb.gr, %.lr.ph.i833
  %indvars.iv.i835 = phi i64 [ 0, %.lr.ph.i833 ], [ %indvars.iv.next.i836, %bb.gr ] ; 3 uses
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i835
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !112
  %i.als = icmp eq i32 %i.alr, %i.aln
  br i1 %i.als, label %bb.gt, label %bb.gr

bb.gt:                                            ; preds = %bb.gs
  %i.alt = shl nuw i64 1, %indvars.iv.i835
  %i.alu = xor i64 %i.alt, -1
  %i.alv = and i64 %.06631611, %i.alu
  br label %getMask.exit838

getMask.exit838:                                  ; preds = %bb.gr, %bb.gq, %bb.gt
  %.07.i832 = phi i64 [ %i.alv, %bb.gt ], [ %.06631611, %bb.gq ], [ %.06631611, %bb.gr ]
  store i32 %.37002064, ptr %.06751610, align 8, !tbaa !1005
  %i.alw = add nuw nsw i32 %.11612, 1             ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %.06751610, i64 96
  %i.aly = load i16, ptr %1, align 8, !tbaa !823  ; 2 uses
  %i.alz = sext i16 %i.aly to i32
  %i.ama = icmp slt i32 %i.alw, %i.alz
  br i1 %i.ama, label %bb.w, label %._crit_edge1615.loopexit, !llvm.loop !1786

._crit_edge1615.loopexit:                         ; preds = %getMask.exit838
  %i.amb = and i32 %i.alb, 4194304
  %i.amc = icmp ne i32 %i.amb, 0
  %i.amd = and i1 %i.f, %i.amc
  br i1 %i.amd, label %bb.gu, label %bb.gv

._crit_edge1615:                                  ; preds = %bb.v
  br i1 %i.f, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %._crit_edge1615.loopexit, %._crit_edge1615
  store ptr null, ptr %3, align 8, !tbaa !908
  br label %bb.gv

bb.gv:                                            ; preds = %._crit_edge1615.loopexit, %bb.gu, %._crit_edge1615
  call fastcc void @sqlite3CodeVerifySchema(ptr noundef nonnull %0, i32 noundef -1)
  %i.ame = load i16, ptr %1, align 8, !tbaa !823
  %i.amf = icmp sgt i16 %i.ame, 0
  br i1 %i.amf, label %.lr.ph1628, label %._crit_edge1629.thread

._crit_edge1629.thread:                           ; preds = %bb.gv
  %i.amg = getelementptr i8, ptr %i.c, i64 24
  %.val8012065 = load i32, ptr %i.amg, align 8, !tbaa !208
  %i.amh = getelementptr inbounds nuw i8, ptr %.0.i7.i, i64 16
  store i32 %.val8012065, ptr %i.amh, align 8, !tbaa !1006
  br label %._crit_edge1654

.lr.ph1628:                                       ; preds = %bb.gv
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.amj = getelementptr i8, ptr %i.c, i64 24     ; 16 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 8 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 16 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.c, i64 339 ; 4 uses
  %i.amn = icmp ne ptr %i.c, null
  br label %bb.gw

bb.gw:                                            ; preds = %.lr.ph1628, %bb.jj
  %.21625 = phi i32 [ 0, %.lr.ph1628 ], [ %i.awx, %bb.jj ] ; 2 uses
end_hunk_0
