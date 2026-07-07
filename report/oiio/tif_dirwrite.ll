inline.NumInlined: 125
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@DoubleToRational:bb.a
  %i.c = fptoui double %0 to i32                  ; 2 uses
  %i.d = uitofp i32 %i.c to double
  %i.e = fcmp oeq double %0, %i.d
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.c, ptr %1, align 4, !tbaa !3
  store i32 1, ptr %2, align 4, !tbaa !3
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.f = fcmp olt double %0, f0x3DF0000000100000
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %1, align 4, !tbaa !3
  store i32 -1, ptr %2, align 4, !tbaa !3
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.g = tail call double @llvm.trunc.f64(double %0)
  %i.h = fcmp une double %i.g, %0                 ; 2 uses
  %i.i = fcmp olt double %0, f0x43D0000000000000
  %or.cond76.i = and i1 %i.i, %i.h
  br i1 %or.cond76.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.05078.i = phi double [ %i.k, %.lr.ph.i ], [ %0, %bb.i ]
  %.05577.i = phi i64 [ %i.j, %.lr.ph.i ], [ 1, %bb.i ] ; 2 uses
  %i.j = shl nuw nsw i64 %.05577.i, 1             ; 2 uses
  %i.k = fmul double %.05078.i, 2.000000e+00      ; 5 uses
  %i.l = tail call double @llvm.trunc.f64(double %i.k)
  %i.m = fcmp une double %i.l, %i.k
  %i.n = fcmp olt double %i.k, f0x43D0000000000000
  %or.cond.i = and i1 %i.n, %i.m
  %i.o = icmp samesign ult i64 %.05577.i, 2305843009213693952
  %or.cond65.i = select i1 %or.cond.i, i1 %i.o, i1 false
  br i1 %or.cond65.i, label %.lr.ph.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.i
  %.055.lcssa.i = phi i64 [ 1, %bb.i ], [ %i.j, %.lr.ph.i ]
  %.050.lcssa.i = phi double [ %0, %bb.i ], [ %i.k, %.lr.ph.i ]
  %i.p = fptoui double %.050.lcssa.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.critedge.i
  %.05386.i = phi i32 [ 0, %.critedge.i ], [ %i.ab, %bb.l ] ; 2 uses
  %.15685.i = phi i64 [ %.055.lcssa.i, %.critedge.i ], [ %i.r, %bb.l ] ; 3 uses
  %.05884.i = phi i64 [ %i.p, %.critedge.i ], [ %.15685.i, %bb.l ] ; 2 uses
  %.sroa.0.083.i = phi i64 [ 1, %.critedge.i ], [ %.sroa.7.082.i, %bb.l ] ; 3 uses
  %.sroa.7.082.i = phi i64 [ 0, %.critedge.i ], [ %i.t, %bb.l ] ; 5 uses
  %.sroa.036.081.i = phi i64 [ 0, %.critedge.i ], [ %.sroa.5.080.i, %bb.l ] ; 2 uses
  %.sroa.5.080.i = phi i64 [ 1, %.critedge.i ], [ %i.aa, %bb.l ] ; 4 uses
  %i.q = udiv i64 %.05884.i, %.15685.i            ; 3 uses
  %i.r = urem i64 %.05884.i, %.15685.i            ; 2 uses
  %i.s = mul i64 %i.q, %.sroa.7.082.i
  %i.t = add i64 %i.s, %.sroa.0.083.i             ; 3 uses
  %.not62.i = icmp ult i64 %i.t, 4294967295
  br i1 %.not62.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = trunc nuw i64 %.sroa.0.083.i to i32
  %.lhs.trunc73 = xor i32 %i.u, -1
  %.rhs.trunc74 = trunc nuw i64 %.sroa.7.082.i to i32
  %i.v = udiv i32 %.lhs.trunc73, %.rhs.trunc74
  %.zext75 = zext i32 %i.v to i64                 ; 3 uses
  %i.w = shl nuw nsw i64 %.zext75, 1
  %.not63.i = icmp ult i64 %i.w, %i.q
  br i1 %.not63.i, label %.thread.i, label %.thread103.i

.thread103.i:                                     ; preds = %bb.k
  %.pre.i = mul nuw i64 %.sroa.7.082.i, %.zext75
  %.pre96.i = add nuw i64 %.pre.i, %.sroa.0.083.i
  %i.x = mul i64 %.sroa.5.080.i, %.zext75
  %i.y = add i64 %i.x, %.sroa.036.081.i
  br label %.thread.i

bb.l:                                             ; preds = %bb.j
  %i.z = mul i64 %i.q, %.sroa.5.080.i
  %i.aa = add i64 %i.z, %.sroa.036.081.i          ; 2 uses
  %i.ab = add nuw nsw i32 %.05386.i, 1
  %i.ac = icmp samesign ugt i32 %.05386.i, 62
  %i.ad = icmp eq i64 %i.r, 0
  %or.cond75.i = or i1 %i.ac, %i.ad
  br i1 %or.cond75.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.l, %.thread103.i, %bb.k
  %.sroa.5.0.lcssa.i = phi i64 [ %.sroa.5.080.i, %bb.k ], [ %i.y, %.thread103.i ], [ %i.aa, %bb.l ] ; 3 uses
  %.sroa.7.0.lcssa.i = phi i64 [ %.sroa.7.082.i, %bb.k ], [ %.pre96.i, %.thread103.i ], [ %i.t, %bb.l ] ; 3 uses
  %i.ae = or i64 %.sroa.7.0.lcssa.i, %.sroa.5.0.lcssa.i
  %.not = icmp ult i64 %i.ae, 4294967296
  br i1 %.not, label %ToRationalEuclideanGCD.exit, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %.thread.i, %.lr.ph89.i
  %.sroa.7.388.i = phi i64 [ %i.ag, %.lr.ph89.i ], [ %.sroa.7.0.lcssa.i, %.thread.i ] ; 2 uses
  %.sroa.5.387.i = phi i64 [ %i.af, %.lr.ph89.i ], [ %.sroa.5.0.lcssa.i, %.thread.i ] ; 2 uses
  %i.af = lshr i64 %.sroa.5.387.i, 1              ; 2 uses
  %i.ag = lshr i64 %.sroa.7.388.i, 1              ; 2 uses
  %i.ah = icmp ugt i64 %.sroa.5.387.i, 8589934591
  %i.ai = icmp ugt i64 %.sroa.7.388.i, 8589934591
  %i.aj = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %i.aj, label %.lr.ph89.i, label %ToRationalEuclideanGCD.exit

ToRationalEuclideanGCD.exit:                      ; preds = %.lr.ph89.i, %.thread.i
  %.sroa.5.3.lcssa.i = phi i64 [ %.sroa.5.0.lcssa.i, %.thread.i ], [ %i.af, %.lr.ph89.i ] ; 4 uses
  %.sroa.7.3.lcssa.i = phi i64 [ %.sroa.7.0.lcssa.i, %.thread.i ], [ %i.ag, %.lr.ph89.i ] ; 4 uses
  %i.ak = fcmp olt double %0, f0x41CFFFFFFF800000
  %or.cond76.i32 = and i1 %i.ak, %i.h
  br i1 %or.cond76.i32, label %.lr.ph.i57, label %.critedge.i33

.lr.ph.i57:                                       ; preds = %ToRationalEuclideanGCD.exit, %.lr.ph.i57
  %.05078.i58 = phi double [ %i.am, %.lr.ph.i57 ], [ %0, %ToRationalEuclideanGCD.exit ]
  %.05577.i59 = phi i64 [ %i.al, %.lr.ph.i57 ], [ 1, %ToRationalEuclideanGCD.exit ] ; 2 uses
  %i.al = shl nuw nsw i64 %.05577.i59, 1          ; 2 uses
  %i.am = fmul double %.05078.i58, 2.000000e+00   ; 5 uses
  %i.an = tail call double @llvm.trunc.f64(double %i.am)
  %i.ao = fcmp une double %i.an, %i.am
  %i.ap = fcmp olt double %i.am, f0x41CFFFFFFF800000
  %or.cond.i60 = and i1 %i.ap, %i.ao
  %i.aq = icmp samesign ult i64 %.05577.i59, 536870912
  %or.cond65.i61 = select i1 %or.cond.i60, i1 %i.aq, i1 false
  br i1 %or.cond65.i61, label %.lr.ph.i57, label %.critedge.i33

.critedge.i33:                                    ; preds = %.lr.ph.i57, %ToRationalEuclideanGCD.exit
  %.055.lcssa.i34 = phi i64 [ 1, %ToRationalEuclideanGCD.exit ], [ %i.al, %.lr.ph.i57 ]
  %.050.lcssa.i35 = phi double [ %0, %ToRationalEuclideanGCD.exit ], [ %i.am, %.lr.ph.i57 ]
  %i.ar = fptoui double %.050.lcssa.i35 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.critedge.i33
  %.05386.i36 = phi i32 [ 0, %.critedge.i33 ], [ %i.bd, %bb.o ] ; 2 uses
  %.15685.i37 = phi i64 [ %.055.lcssa.i34, %.critedge.i33 ], [ %i.at, %bb.o ] ; 3 uses
  %.05884.i38 = phi i64 [ %i.ar, %.critedge.i33 ], [ %.15685.i37, %bb.o ] ; 2 uses
  %.sroa.0.083.i39 = phi i64 [ 1, %.critedge.i33 ], [ %.sroa.7.082.i40, %bb.o ] ; 3 uses
  %.sroa.7.082.i40 = phi i64 [ 0, %.critedge.i33 ], [ %i.av, %bb.o ] ; 5 uses
  %.sroa.036.081.i41 = phi i64 [ 0, %.critedge.i33 ], [ %.sroa.5.080.i42, %bb.o ] ; 2 uses
  %.sroa.5.080.i42 = phi i64 [ 1, %.critedge.i33 ], [ %i.bc, %bb.o ] ; 4 uses
  %i.as = udiv i64 %.05884.i38, %.15685.i37       ; 3 uses
  %i.at = urem i64 %.05884.i38, %.15685.i37       ; 2 uses
  %i.au = mul i64 %i.as, %.sroa.7.082.i40
  %i.av = add i64 %i.au, %.sroa.0.083.i39         ; 3 uses
  %.not62.i43 = icmp ult i64 %i.av, 4294967295
  br i1 %.not62.i43, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = trunc nuw i64 %.sroa.0.083.i39 to i32
  %.lhs.trunc = xor i32 %i.aw, -1
  %.rhs.trunc = trunc nuw i64 %.sroa.7.082.i40 to i32
  %i.ax = udiv i32 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i32 %i.ax to i64                  ; 3 uses
  %i.ay = shl nuw nsw i64 %.zext, 1
  %.not63.i44 = icmp ult i64 %i.ay, %i.as
  br i1 %.not63.i44, label %.thread.i48, label %.thread103.i45

.thread103.i45:                                   ; preds = %bb.n
  %.pre.i46 = mul nuw i64 %.sroa.7.082.i40, %.zext
  %.pre96.i47 = add nuw i64 %.pre.i46, %.sroa.0.083.i39
  %i.az = mul i64 %.sroa.5.080.i42, %.zext
  %i.ba = add i64 %i.az, %.sroa.036.081.i41
  br label %.thread.i48

bb.o:                                             ; preds = %bb.m
  %i.bb = mul i64 %i.as, %.sroa.5.080.i42
  %i.bc = add i64 %i.bb, %.sroa.036.081.i41       ; 2 uses
  %i.bd = add nuw nsw i32 %.05386.i36, 1
  %i.be = icmp samesign ugt i32 %.05386.i36, 62
  %i.bf = icmp eq i64 %i.at, 0
  %or.cond75.i56 = or i1 %i.be, %i.bf
  br i1 %or.cond75.i56, label %.thread.i48, label %bb.m

.thread.i48:                                      ; preds = %bb.o, %.thread103.i45, %bb.n
  %.sroa.5.0.lcssa.i49 = phi i64 [ %.sroa.5.080.i42, %bb.n ], [ %i.ba, %.thread103.i45 ], [ %i.bc, %bb.o ] ; 3 uses
  %.sroa.7.0.lcssa.i50 = phi i64 [ %.sroa.7.082.i40, %bb.n ], [ %.pre96.i47, %.thread103.i45 ], [ %i.av, %bb.o ] ; 3 uses
  %i.bg = or i64 %.sroa.7.0.lcssa.i50, %.sroa.5.0.lcssa.i49
  %.not76 = icmp ult i64 %i.bg, 4294967296
  br i1 %.not76, label %ToRationalEuclideanGCD.exit62, label %.lr.ph89.i53

.lr.ph89.i53:                                     ; preds = %.thread.i48, %.lr.ph89.i53
  %.sroa.7.388.i54 = phi i64 [ %i.bi, %.lr.ph89.i53 ], [ %.sroa.7.0.lcssa.i50, %.thread.i48 ] ; 2 uses
  %.sroa.5.387.i55 = phi i64 [ %i.bh, %.lr.ph89.i53 ], [ %.sroa.5.0.lcssa.i49, %.thread.i48 ] ; 2 uses
  %i.bh = lshr i64 %.sroa.5.387.i55, 1            ; 2 uses
  %i.bi = lshr i64 %.sroa.7.388.i54, 1            ; 2 uses
  %i.bj = icmp ugt i64 %.sroa.5.387.i55, 8589934591
  %i.bk = icmp ugt i64 %.sroa.7.388.i54, 8589934591
  %i.bl = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %i.bl, label %.lr.ph89.i53, label %ToRationalEuclideanGCD.exit62

ToRationalEuclideanGCD.exit62:                    ; preds = %.lr.ph89.i53, %.thread.i48
  %.sroa.5.3.lcssa.i51 = phi i64 [ %.sroa.5.0.lcssa.i49, %.thread.i48 ], [ %i.bh, %.lr.ph89.i53 ] ; 3 uses
  %.sroa.7.3.lcssa.i52 = phi i64 [ %.sroa.7.0.lcssa.i50, %.thread.i48 ], [ %i.bi, %.lr.ph89.i53 ] ; 3 uses
  %i.bm = icmp ugt i64 %.sroa.5.3.lcssa.i, 4294967295
  %i.bn = icmp ugt i64 %.sroa.7.3.lcssa.i, 4294967295
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %ToRationalEuclideanGCD.exit62
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExt(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.39, double noundef %0, i64 noundef %.sroa.5.3.lcssa.i, i64 noundef %.sroa.7.3.lcssa.i, i64 noundef %.sroa.5.3.lcssa.i51, i64 noundef %.sroa.7.3.lcssa.i52) #8
  br label %bb.q

bb.q:                                             ; preds = %ToRationalEuclideanGCD.exit62, %bb.p
  %3 = uitofp i64 %.sroa.5.3.lcssa.i to double
  %4 = uitofp i64 %.sroa.7.3.lcssa.i to double
  %5 = fdiv double %3, %4
  %6 = fsub double %0, %5
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = uitofp nneg i64 %.sroa.5.3.lcssa.i51 to double
  %9 = uitofp nneg i64 %.sroa.7.3.lcssa.i52 to double
  %10 = fdiv double %8, %9
  %11 = fsub double %0, %10
  %12 = tail call double @llvm.fabs.f64(double %11)
  %i.bo = fcmp olt double %7, %12                 ; 2 uses
  %. = select i1 %i.bo, i64 %.sroa.5.3.lcssa.i, i64 %.sroa.5.3.lcssa.i51
  %storemerge30 = trunc i64 %. to i32
  store i32 %storemerge30, ptr %1, align 4, !tbaa !3
  %storemerge.in.sroa.speculated = select i1 %i.bo, i64 %.sroa.7.3.lcssa.i, i64 %.sroa.7.3.lcssa.i52
  %storemerge = trunc i64 %storemerge.in.sroa.speculated to i32
  store i32 %storemerge, ptr %2, align 4, !tbaa !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h, %bb.f, %bb.d, %bb.b
  ret void
}

declare void @TIFFErrorExt(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare float @_TIFFClampDoubleToFloat(double noundef) local_unnamed_addr #1

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @DoubleToSrational(double noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00         ; 2 uses
  %i.b = fneg double %0
  %.032 = select i1 %i.a, i32 -1, i32 1           ; 3 uses
  %.0 = select i1 %i.a, double %i.b, double %0    ; 16 uses
  %i.c = fcmp ogt double %.0, f0x41DFFFFFFFC00000
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2147483647, ptr %1, align 4, !tbaa !3
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = fptosi double %.0 to i32
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp oeq double %.0, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = sitofp i32 %.032 to double
  %i.h = fmul double %.0, %i.g
  %i.i = fptosi double %i.h to i32
  store i32 %i.i, ptr %1, align 4, !tbaa !3
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.j = fcmp olt double %.0, f0x3E00000000200000
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.k = tail call double @llvm.trunc.f64(double %.0)
  %i.l = fcmp une double %i.k, %.0                ; 2 uses
  %i.m = fcmp olt double %.0, f0x43D0000000000000
  %or.cond76.i = and i1 %i.m, %i.l
  br i1 %or.cond76.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.05078.i = phi double [ %i.o, %.lr.ph.i ], [ %.0, %bb.g ]
  %.05577.i = phi i64 [ %i.n, %.lr.ph.i ], [ 1, %bb.g ] ; 2 uses
  %i.n = shl nuw nsw i64 %.05577.i, 1             ; 2 uses
  %i.o = fmul double %.05078.i, 2.000000e+00      ; 5 uses
  %i.p = tail call double @llvm.trunc.f64(double %i.o)
  %i.q = fcmp une double %i.p, %i.o
  %i.r = fcmp olt double %i.o, f0x43D0000000000000
  %or.cond.i = and i1 %i.r, %i.q
  %i.s = icmp samesign ult i64 %.05577.i, 2305843009213693952
  %or.cond65.i = select i1 %or.cond.i, i1 %i.s, i1 false
  br i1 %or.cond65.i, label %.lr.ph.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.g
  %.055.lcssa.i = phi i64 [ 1, %bb.g ], [ %i.n, %.lr.ph.i ]
  %.050.lcssa.i = phi double [ %.0, %bb.g ], [ %i.o, %.lr.ph.i ]
  %i.t = fptoui double %.050.lcssa.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.critedge.i
  %.05386.i = phi i32 [ 0, %.critedge.i ], [ %i.af, %bb.j ] ; 2 uses
  %.15685.i = phi i64 [ %.055.lcssa.i, %.critedge.i ], [ %i.v, %bb.j ] ; 3 uses
  %.05884.i = phi i64 [ %i.t, %.critedge.i ], [ %.15685.i, %bb.j ] ; 2 uses
  %.sroa.0.083.i = phi i64 [ 1, %.critedge.i ], [ %.sroa.7.082.i, %bb.j ] ; 3 uses
  %.sroa.7.082.i = phi i64 [ 0, %.critedge.i ], [ %i.x, %bb.j ] ; 5 uses
  %.sroa.036.081.i = phi i64 [ 0, %.critedge.i ], [ %.sroa.5.080.i, %bb.j ] ; 2 uses
  %.sroa.5.080.i = phi i64 [ 1, %.critedge.i ], [ %i.ae, %bb.j ] ; 4 uses
  %i.u = udiv i64 %.05884.i, %.15685.i            ; 3 uses
  %i.v = urem i64 %.05884.i, %.15685.i            ; 2 uses
  %i.w = mul i64 %i.u, %.sroa.7.082.i
  %i.x = add i64 %i.w, %.sroa.0.083.i             ; 3 uses
  %.not62.i = icmp ult i64 %i.x, 2147483647
  br i1 %.not62.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = trunc nuw nsw i64 %.sroa.0.083.i to i32
  %.lhs.trunc77 = sub nuw nsw i32 2147483647, %i.y
  %.rhs.trunc78 = trunc nuw nsw i64 %.sroa.7.082.i to i32
  %i.z = udiv i32 %.lhs.trunc77, %.rhs.trunc78
  %.zext79 = zext nneg i32 %i.z to i64            ; 3 uses
  %i.aa = shl nuw nsw i64 %.zext79, 1
  %.not63.i = icmp ult i64 %i.aa, %i.u
  br i1 %.not63.i, label %.thread.i, label %.thread103.i

.thread103.i:                                     ; preds = %bb.i
  %.pre.i = mul nuw nsw i64 %.sroa.7.082.i, %.zext79
  %.pre96.i = add nuw nsw i64 %.pre.i, %.sroa.0.083.i
  %i.ab = mul i64 %.sroa.5.080.i, %.zext79
  %i.ac = add i64 %i.ab, %.sroa.036.081.i
  br label %.thread.i

bb.j:                                             ; preds = %bb.h
  %i.ad = mul i64 %i.u, %.sroa.5.080.i
  %i.ae = add i64 %i.ad, %.sroa.036.081.i         ; 2 uses
  %i.af = add nuw nsw i32 %.05386.i, 1
  %i.ag = icmp samesign ugt i32 %.05386.i, 62
  %i.ah = icmp eq i64 %i.v, 0
  %or.cond75.i = or i1 %i.ag, %i.ah
  br i1 %or.cond75.i, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.j, %.thread103.i, %bb.i
  %.sroa.5.0.lcssa.i = phi i64 [ %.sroa.5.080.i, %bb.i ], [ %i.ac, %.thread103.i ], [ %i.ae, %bb.j ] ; 3 uses
  %.sroa.7.0.lcssa.i = phi i64 [ %.sroa.7.082.i, %bb.i ], [ %.pre96.i, %.thread103.i ], [ %i.x, %bb.j ] ; 3 uses
  %i.ai = or i64 %.sroa.7.0.lcssa.i, %.sroa.5.0.lcssa.i
  %.not = icmp ult i64 %i.ai, 2147483648
  br i1 %.not, label %ToRationalEuclideanGCD.exit, label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %.thread.i, %.lr.ph89.i
  %.sroa.7.388.i = phi i64 [ %i.ak, %.lr.ph89.i ], [ %.sroa.7.0.lcssa.i, %.thread.i ] ; 2 uses
  %.sroa.5.387.i = phi i64 [ %i.aj, %.lr.ph89.i ], [ %.sroa.5.0.lcssa.i, %.thread.i ] ; 2 uses
  %i.aj = lshr i64 %.sroa.5.387.i, 1              ; 2 uses
  %i.ak = lshr i64 %.sroa.7.388.i, 1              ; 2 uses
  %i.al = icmp ugt i64 %.sroa.5.387.i, 4294967295
  %i.am = icmp ugt i64 %.sroa.7.388.i, 4294967295
  %i.an = select i1 %i.al, i1 true, i1 %i.am
  br i1 %i.an, label %.lr.ph89.i, label %ToRationalEuclideanGCD.exit

ToRationalEuclideanGCD.exit:                      ; preds = %.lr.ph89.i, %.thread.i
  %.sroa.5.3.lcssa.i = phi i64 [ %.sroa.5.0.lcssa.i, %.thread.i ], [ %i.aj, %.lr.ph89.i ] ; 4 uses
  %.sroa.7.3.lcssa.i = phi i64 [ %.sroa.7.0.lcssa.i, %.thread.i ], [ %i.ak, %.lr.ph89.i ] ; 4 uses
  %i.ao = fcmp olt double %.0, f0x41CFFFFFFF800000
  %or.cond76.i36 = and i1 %i.ao, %i.l
  br i1 %or.cond76.i36, label %.lr.ph.i61, label %.critedge.i37

.lr.ph.i61:                                       ; preds = %ToRationalEuclideanGCD.exit, %.lr.ph.i61
  %.05078.i62 = phi double [ %i.aq, %.lr.ph.i61 ], [ %.0, %ToRationalEuclideanGCD.exit ]
  %.05577.i63 = phi i64 [ %i.ap, %.lr.ph.i61 ], [ 1, %ToRationalEuclideanGCD.exit ] ; 2 uses
  %i.ap = shl nuw nsw i64 %.05577.i63, 1          ; 2 uses
  %i.aq = fmul double %.05078.i62, 2.000000e+00   ; 5 uses
  %i.ar = tail call double @llvm.trunc.f64(double %i.aq)
  %i.as = fcmp une double %i.ar, %i.aq
  %i.at = fcmp olt double %i.aq, f0x41CFFFFFFF800000
  %or.cond.i64 = and i1 %i.at, %i.as
  %i.au = icmp samesign ult i64 %.05577.i63, 536870912
  %or.cond65.i65 = select i1 %or.cond.i64, i1 %i.au, i1 false
  br i1 %or.cond65.i65, label %.lr.ph.i61, label %.critedge.i37

.critedge.i37:                                    ; preds = %.lr.ph.i61, %ToRationalEuclideanGCD.exit
  %.055.lcssa.i38 = phi i64 [ 1, %ToRationalEuclideanGCD.exit ], [ %i.ap, %.lr.ph.i61 ]
  %.050.lcssa.i39 = phi double [ %.0, %ToRationalEuclideanGCD.exit ], [ %i.aq, %.lr.ph.i61 ]
  %i.av = fptoui double %.050.lcssa.i39 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.critedge.i37
  %.05386.i40 = phi i32 [ 0, %.critedge.i37 ], [ %i.bh, %bb.m ] ; 2 uses
  %.15685.i41 = phi i64 [ %.055.lcssa.i38, %.critedge.i37 ], [ %i.ax, %bb.m ] ; 3 uses
  %.05884.i42 = phi i64 [ %i.av, %.critedge.i37 ], [ %.15685.i41, %bb.m ] ; 2 uses
  %.sroa.0.083.i43 = phi i64 [ 1, %.critedge.i37 ], [ %.sroa.7.082.i44, %bb.m ] ; 3 uses
  %.sroa.7.082.i44 = phi i64 [ 0, %.critedge.i37 ], [ %i.az, %bb.m ] ; 5 uses
  %.sroa.036.081.i45 = phi i64 [ 0, %.critedge.i37 ], [ %.sroa.5.080.i46, %bb.m ] ; 2 uses
  %.sroa.5.080.i46 = phi i64 [ 1, %.critedge.i37 ], [ %i.bg, %bb.m ] ; 4 uses
  %i.aw = udiv i64 %.05884.i42, %.15685.i41       ; 3 uses
  %i.ax = urem i64 %.05884.i42, %.15685.i41       ; 2 uses
  %i.ay = mul i64 %i.aw, %.sroa.7.082.i44
  %i.az = add i64 %i.ay, %.sroa.0.083.i43         ; 3 uses
  %.not62.i47 = icmp ult i64 %i.az, 2147483647
  br i1 %.not62.i47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = trunc nuw nsw i64 %.sroa.0.083.i43 to i32
  %.lhs.trunc = sub nuw nsw i32 2147483647, %i.ba
  %.rhs.trunc = trunc nuw nsw i64 %.sroa.7.082.i44 to i32
  %i.bb = udiv i32 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i32 %i.bb to i64             ; 3 uses
  %i.bc = shl nuw nsw i64 %.zext, 1
  %.not63.i48 = icmp ult i64 %i.bc, %i.aw
  br i1 %.not63.i48, label %.thread.i52, label %.thread103.i49

.thread103.i49:                                   ; preds = %bb.l
  %.pre.i50 = mul nuw nsw i64 %.sroa.7.082.i44, %.zext
  %.pre96.i51 = add nuw nsw i64 %.pre.i50, %.sroa.0.083.i43
  %i.bd = mul i64 %.sroa.5.080.i46, %.zext
  %i.be = add i64 %i.bd, %.sroa.036.081.i45
  br label %.thread.i52

bb.m:                                             ; preds = %bb.k
  %i.bf = mul i64 %i.aw, %.sroa.5.080.i46
  %i.bg = add i64 %i.bf, %.sroa.036.081.i45       ; 2 uses
  %i.bh = add nuw nsw i32 %.05386.i40, 1
  %i.bi = icmp samesign ugt i32 %.05386.i40, 62
  %i.bj = icmp eq i64 %i.ax, 0
  %or.cond75.i60 = or i1 %i.bi, %i.bj
  br i1 %or.cond75.i60, label %.thread.i52, label %bb.k

.thread.i52:                                      ; preds = %bb.m, %.thread103.i49, %bb.l
  %.sroa.5.0.lcssa.i53 = phi i64 [ %.sroa.5.080.i46, %bb.l ], [ %i.be, %.thread103.i49 ], [ %i.bg, %bb.m ] ; 3 uses
  %.sroa.7.0.lcssa.i54 = phi i64 [ %.sroa.7.082.i44, %bb.l ], [ %.pre96.i51, %.thread103.i49 ], [ %i.az, %bb.m ] ; 3 uses
  %i.bk = or i64 %.sroa.7.0.lcssa.i54, %.sroa.5.0.lcssa.i53
  %.not80 = icmp ult i64 %i.bk, 2147483648
  br i1 %.not80, label %ToRationalEuclideanGCD.exit66, label %.lr.ph89.i57

.lr.ph89.i57:                                     ; preds = %.thread.i52, %.lr.ph89.i57
  %.sroa.7.388.i58 = phi i64 [ %i.bm, %.lr.ph89.i57 ], [ %.sroa.7.0.lcssa.i54, %.thread.i52 ] ; 2 uses
  %.sroa.5.387.i59 = phi i64 [ %i.bl, %.lr.ph89.i57 ], [ %.sroa.5.0.lcssa.i53, %.thread.i52 ] ; 2 uses
  %i.bl = lshr i64 %.sroa.5.387.i59, 1            ; 2 uses
  %i.bm = lshr i64 %.sroa.7.388.i58, 1            ; 2 uses
  %i.bn = icmp ugt i64 %.sroa.5.387.i59, 4294967295
  %i.bo = icmp ugt i64 %.sroa.7.388.i58, 4294967295
  %i.bp = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %i.bp, label %.lr.ph89.i57, label %ToRationalEuclideanGCD.exit66

ToRationalEuclideanGCD.exit66:                    ; preds = %.lr.ph89.i57, %.thread.i52
  %.sroa.5.3.lcssa.i55 = phi i64 [ %.sroa.5.0.lcssa.i53, %.thread.i52 ], [ %i.bl, %.lr.ph89.i57 ] ; 3 uses
  %.sroa.7.3.lcssa.i56 = phi i64 [ %.sroa.7.0.lcssa.i54, %.thread.i52 ], [ %i.bm, %.lr.ph89.i57 ] ; 3 uses
  %i.bq = icmp ugt i64 %.sroa.5.3.lcssa.i, 2147483647
  %i.br = icmp ugt i64 %.sroa.7.3.lcssa.i, 2147483647
  %or.cond = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ToRationalEuclideanGCD.exit66
  %i.bs = sitofp i32 %.032 to double
  %i.bt = fmul double %.0, %i.bs
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExt(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, double noundef %i.bt, i64 noundef %.sroa.5.3.lcssa.i, i64 noundef %.sroa.7.3.lcssa.i, i64 noundef %.sroa.5.3.lcssa.i55, i64 noundef %.sroa.7.3.lcssa.i56) #8
  br label %bb.o

bb.o:                                             ; preds = %ToRationalEuclideanGCD.exit66, %bb.n
  %3 = uitofp i64 %.sroa.5.3.lcssa.i to double
  %4 = uitofp i64 %.sroa.7.3.lcssa.i to double
  %5 = fdiv double %3, %4
  %6 = fsub double %.0, %5
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = uitofp nneg i64 %.sroa.5.3.lcssa.i55 to double
  %9 = uitofp nneg i64 %.sroa.7.3.lcssa.i56 to double
  %10 = fdiv double %8, %9
  %11 = fsub double %.0, %10
  %12 = tail call double @llvm.fabs.f64(double %11)
  %i.bu = fcmp olt double %7, %12                 ; 2 uses
  %. = select i1 %i.bu, i64 %.sroa.5.3.lcssa.i, i64 %.sroa.5.3.lcssa.i55
  %.pn = trunc i64 %. to i32
  %storemerge34 = mul i32 %.032, %.pn
  store i32 %storemerge34, ptr %1, align 4, !tbaa !3
  %storemerge.in.sroa.speculated = select i1 %i.bu, i64 %.sroa.7.3.lcssa.i, i64 %.sroa.7.3.lcssa.i56
  %storemerge = trunc i64 %storemerge.in.sroa.speculated to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f, %bb.d, %bb.b
  %storemerge.sink = phi i32 [ %storemerge, %bb.o ], [ 2147483647, %bb.f ], [ 1, %bb.d ], [ 0, %bb.b ]
  store i32 %storemerge.sink, ptr %2, align 4, !tbaa !3
  ret void
}

declare void @TIFFSwabArrayOfFloat(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @_TIFFGetDirNumberFromOffset(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!7 = !{!8, !4, i64 12}
!8 = !{!"tiff", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !4, i64 64, !13, i64 72, !13, i64 448, !5, i64 824, !14, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !14, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !9, i64 1072, !11, i64 1080, !11, i64 1088, !9, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !9, i64 1128, !11, i64 1136, !9, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !21, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !14, i64 52, !14, i64 54, !14, i64 56, !14, i64 58, !4, i64 60, !14, i64 64, !14, i64 66, !15, i64 72, !15, i64 80, !16, i64 88, !16, i64 92, !14, i64 96, !14, i64 98, !16, i64 100, !16, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !14, i64 140, !17, i64 144, !4, i64 152, !4, i64 156, !18, i64 160, !18, i64 168, !4, i64 176, !19, i64 184, !19, i64 216, !14, i64 248, !18, i64 256, !5, i64 264, !14, i64 268, !5, i64 272, !20, i64 296, !4, i64 304, !9, i64 312, !14, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 long", !10, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!"p2 _ZTS10_TIFFField", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!"p1 _ZTS11client_info", !10, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!27 = !{!8, !4, i64 16}
!28 = !{!8, !10, i64 976}
!29 = !{!8, !10, i64 1032}
!30 = !{!8, !11, i64 1136}
!31 = !{!8, !9, i64 1096}
!32 = !{!8, !14, i64 120}
!33 = !{!8, !11, i64 416}
!34 = !{!8, !4, i64 88}
!35 = !{!8, !4, i64 92}
!36 = !{!8, !4, i64 100}
!37 = !{!8, !4, i64 104}
!38 = !{!8, !16, i64 160}
!39 = !{!8, !16, i64 164}
!40 = !{!8, !16, i64 172}
!41 = !{!8, !16, i64 176}
!42 = !{!8, !4, i64 112}
!43 = !{!8, !14, i64 116}
!44 = !{!14, !14, i64 0}
!45 = !{!8, !14, i64 122}
!46 = !{!8, !14, i64 124}
!47 = !{!8, !14, i64 126}
!48 = !{!8, !14, i64 128}
!49 = !{!8, !14, i64 130}
!50 = !{!8, !4, i64 132}
!51 = !{!8, !14, i64 136}
!52 = !{!8, !14, i64 138}
!53 = !{!8, !14, i64 170}
!54 = !{!8, !14, i64 168}
!55 = !{!8, !4, i64 228}
!56 = !{!8, !18, i64 240}
!57 = !{!8, !18, i64 232}
!58 = !{!17, !17, i64 0}
!59 = !{!8, !14, i64 212}
!60 = !{!8, !14, i64 118}
!61 = !{!8, !15, i64 144}
!62 = !{!8, !15, i64 152}
!63 = !{!8, !4, i64 96}
!64 = !{!8, !4, i64 108}
!65 = !{!8, !14, i64 340}
!66 = !{!8, !20, i64 368}
!67 = !{!8, !4, i64 376}
!68 = !{!8, !9, i64 384}
!69 = !{!8, !14, i64 392}
!70 = !{!8, !14, i64 320}
!71 = !{!8, !11, i64 880}
!72 = !{!8, !18, i64 328}
!73 = !{!11, !11, i64 0}
!74 = !{!8, !14, i64 888}
!75 = !{!8, !11, i64 896}
!76 = !{!8, !11, i64 1240}
!77 = !{!8, !21, i64 1232}
!78 = !{!23, !23, i64 0}
!79 = !{!80, !14, i64 20}
!80 = !{!"_TIFFField", !4, i64 0, !14, i64 4, !14, i64 6, !4, i64 8, !4, i64 12, !4, i64 16, !14, i64 20, !5, i64 22, !5, i64 23, !9, i64 24, !26, i64 32}
!81 = !{!80, !4, i64 16}
!82 = !{!80, !4, i64 0}
!83 = !{!9, !9, i64 0}
!84 = !{!10, !10, i64 0}
!85 = !{!80, !9, i64 24}
!86 = !{!8, !4, i64 396}
!87 = !{!8, !10, i64 400}
!88 = !{!89, !23, i64 0}
!89 = !{!"", !23, i64 0, !4, i64 8, !10, i64 16}
!90 = !{!89, !4, i64 8}
!91 = !{!80, !4, i64 8}
!92 = !{!89, !10, i64 16}
!93 = !{!94, !94, i64 0}
!94 = !{!"double", !5, i64 0}
!95 = !{!16, !16, i64 0}
!96 = !{!8, !11, i64 24}
!97 = !{!8, !10, i64 1200}
!98 = !{!8, !10, i64 1176}
!99 = distinct !{null}
!100 = !{!8, !10, i64 1192}
!101 = !{!5, !5, i64 0}
!102 = !{!8, !11, i64 40}
!103 = !{!8, !9, i64 0}
!104 = !{!8, !5, i64 409}
!105 = !{!8, !4, i64 852}
!106 = !{!8, !10, i64 1184}
!107 = !{!8, !11, i64 424}
!108 = !{!19, !14, i64 0}
!109 = !{!19, !14, i64 2}
!110 = !{!19, !11, i64 8}
!111 = !{!8, !11, i64 32}
!112 = !{!8, !4, i64 848}
!113 = !{!8, !5, i64 408}
!114 = !{ptr @TIFFWriteDirectory}
!115 = !{!8, !11, i64 264}
!116 = !{!8, !14, i64 258}
!117 = !{!8, !11, i64 296}
!118 = !{!8, !14, i64 290}
!119 = !{i64 0, i64 2, !44, i64 2, i64 2, !44, i64 8, i64 8, !73, i64 16, i64 8, !101, i64 24, i64 1, !101}
end_hunk_0
