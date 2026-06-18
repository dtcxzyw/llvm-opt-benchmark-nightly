inline.NumInlined: 2118
inline.NumDeleted: 818
begin_hunk_0_@_ZN2v88internal19Builtin_ArrayConcatEiPmPNS0_7IsolateE:bb.a

.backedge.i.i:                                    ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit.i.i, %bb.p, %.critedge.thread.i.thread.i
  %.1200.lcssa827.i297.i = phi i32 [ %i.dz, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %i.dz, %bb.p ], [ %.0199670.i.i, %.critedge.thread.i.thread.i ]
  %.1197.lcssa829.i294.i = phi i32 [ %.2198.i.i, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %.2198.i.i, %bb.p ], [ %.0196671.i.i, %.critedge.thread.i.thread.i ]
  %.1194.lcssa831.i291.i = phi i32 [ %.2195.i.i, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %.2195.i.i, %bb.p ], [ %.0193672.i.i, %.critedge.thread.i.thread.i ]
  %.1.lcssa833.i288.i = phi i8 [ %.4.i.i, %_ZN2v88internal11HandleScopeD2Ev.exit.i.i ], [ %.4.i.i, %bb.p ], [ %.0673.i.i, %.critedge.thread.i.thread.i ]
  %indvars.iv733.be.i.i = add nuw nsw i64 %indvars.iv733.i.i, 1024
  br label %bb.o, !llvm.loop !27

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i ], [ %i.dx, %bb.o ] ; 3 uses
  %.1664.i.i = phi i8 [ %.4.i.i, %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i ], [ %.0673.i.i, %bb.o ] ; 6 uses
  %.1194663.i.i = phi i32 [ %.2195.i.i, %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i ], [ %.0193672.i.i, %bb.o ]
  %.1197662.i.i = phi i32 [ %.2198.i.i, %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i ], [ %.0196671.i.i, %bb.o ]
  %i.ec = load i64, ptr %16, align 8              ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = trunc i64 %indvars.iv.i.i to i32
  %i.ef = add i32 %i.ee, 4
  %.not.i274.i.i = icmp ugt i32 %i.ef, %i.ed
  br i1 %.not.i274.i.i, label %bb.q, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i, !prof !5

bb.q:                                             ; preds = %.lr.ph.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.eg = shl i64 %indvars.iv.i.i, 32
  %sext.i.i = sub i64 -21474836480, %i.eg
  %i.eh = ashr exact i64 %sext.i.i, 32
  %i.ei = add i64 %i.ec, %i.eh
  %i.ej = shl nsw i64 %i.ei, 3
  %i.ek = load ptr, ptr %i.b, align 8
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.ej
  %i.en = inttoptr i64 %i.em to ptr               ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8            ; 4 uses
  %i.ep = trunc i64 %i.eo to i1
  br i1 %i.ep, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i
  %i.eq = add nsw i64 %i.eo, -1
  %i.er = inttoptr i64 %i.eq to ptr               ; 3 uses
  %i.es = load atomic volatile i64, ptr %i.er monotonic, align 8
  %i.et = add i64 %i.es, 11
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load atomic volatile i16, ptr %i.eu monotonic, align 2
  %i.ew = icmp eq i16 %i.ev, 2119
  br i1 %i.ew, label %bb.r, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i

bb.r:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ex = add i64 %i.eo, 23
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load i64, ptr %i.ey, align 8            ; 4 uses
  %i.fa = and i64 %i.ez, 1
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fc = lshr i64 %i.ez, 32
  %i.fd = trunc nuw i64 %i.fc to i32
  %i.fe = sitofp i32 %i.fd to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.ff = add nsw i64 %i.ez, -1
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.fh, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i: ; preds = %bb.t, %bb.s
  %i.fi = phi double [ %i.fe, %bb.s ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.t ]
  %i.fj = fptoui double %i.fi to i32              ; 27 uses
  %.not245.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not245.i.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i
  %i.fk = load atomic volatile i64, ptr %i.er monotonic, align 8
  %i.fl = add i64 %i.fk, 14
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = lshr i8 %i.fn, 2                        ; 2 uses
  switch i8 %i.fo, label %bb.x [
    i8 1, label %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i
    i8 5, label %bb.v
    i8 3, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  br label %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i

bb.w:                                             ; preds = %bb.u
  br label %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i

bb.x:                                             ; preds = %bb.u
  br label %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i

_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.0.i276.i.i = phi i8 [ %i.fo, %bb.x ], [ 4, %bb.v ], [ 2, %bb.w ], [ 0, %bb.u ] ; 2 uses
  %i.fp = add nsw i8 %.0.i276.i.i, -6
  %i.fq = icmp ult i8 %i.fp, 7
  %spec.select.i.i = select i1 %i.fq, i8 2, i8 %.0.i276.i.i ; 2 uses
  %i.fr = call noundef zeroext i1 @_ZN2v88internal35IsMoreGeneralElementsKindTransitionENS0_12ElementsKindES1_(i8 noundef zeroext %.1664.i.i, i8 noundef zeroext %spec.select.i.i) #15
  %..i.i.i = select i1 %i.fr, i8 %spec.select.i.i, i8 %.1664.i.i
  %.pre.i.i = load i64, ptr %i.en, align 8        ; 2 uses
  %.pre763.i.i = add i64 %.pre.i.i, 23
  %.pre764.i.i = inttoptr i64 %.pre763.i.i to ptr
  %.pre216.i = load i64, ptr %.pre764.i.i, align 8
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i
  %i.fs = phi i64 [ %.pre216.i, %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i ], [ %i.ez, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i ] ; 3 uses
  %i.ft = phi i64 [ %.pre.i.i, %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i ], [ %i.eo, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i ] ; 4 uses
  %.2.i.i = phi i8 [ %..i.i.i, %_ZN2v88internal21GetPackedElementsKindENS0_12ElementsKindE.exit.i.i ], [ %.1664.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i ] ; 26 uses
  %i.fu = and i64 %i.fs, 1
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fw = lshr i64 %i.fs, 32
  %i.fx = trunc nuw i64 %i.fw to i32
  %i.fy = sitofp i32 %i.fx to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.fz = add nsw i64 %i.fs, -1
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load double, ptr %i.gb, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %i.gc = phi double [ %i.fy, %bb.z ], [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.aa ]
  %i.gd = fptoui double %i.gc to i32
  %.fr236 = freeze i32 %i.gd                      ; 30 uses
  %i.ge = add i64 %i.ft, -1
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = load atomic volatile i64, ptr %i.gf monotonic, align 8
  %i.gh = add i64 %i.gg, 14
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = lshr i8 %i.gj, 2
  switch i8 %i.gk, label %.loopexit.i.i.i [
    i8 0, label %bb.ab
    i8 1, label %bb.ab
    i8 2, label %bb.ab
    i8 10, label %bb.ab
    i8 8, label %bb.ab
    i8 6, label %bb.ab
    i8 11, label %bb.ab
    i8 9, label %bb.ab
    i8 7, label %bb.ab
    i8 3, label %bb.ab
    i8 4, label %bb.ad
    i8 5, label %bb.ad
    i8 13, label %bb.ae
    i8 18, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 19, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 20, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 21, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 22, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 23, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 24, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 25, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 26, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 27, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 28, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 29, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 30, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 31, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 32, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 33, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 34, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 35, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 36, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 37, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 38, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 39, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 40, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 41, label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i
    i8 43, label %bb.ag
    i8 14, label %bb.ah
    i8 15, label %bb.ah
    i8 16, label %bb.ah
    i8 17, label %bb.ah
    i8 42, label %bb.ah
    i8 12, label %bb.ah
  ]

bb.ab:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %i.gl = icmp sgt i32 %.fr236, 0
  br i1 %i.gl, label %.lr.ph125.i.i.i, label %.loopexit.i.i.i

.lr.ph125.i.i.i:                                  ; preds = %bb.ab
  %i.gm = add i64 %i.ft, 15
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = add i64 %i.go, -1
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 5 uses
  %wide.trip.count133.i.i.i = zext i32 %.fr236 to i64 ; 2 uses
  %xtraiter230 = and i64 %wide.trip.count133.i.i.i, 3 ; 3 uses
  %i.gs = icmp ult i32 %.fr236, 4
  br i1 %i.gs, label %.epil.preheader229, label %.lr.ph125.i.i.i.new

.lr.ph125.i.i.i.new:                              ; preds = %.lr.ph125.i.i.i
  %unroll_iter234 = and i64 %wide.trip.count133.i.i.i, 4294967292
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph125.i.i.i.new
  %indvars.iv130.i.i.i = phi i64 [ 0, %.lr.ph125.i.i.i.new ], [ %indvars.iv.next131.i.i.i.3, %bb.ac ] ; 5 uses
  %.032124.i.i.i = phi i32 [ 0, %.lr.ph125.i.i.i.new ], [ %spec.select.i.i.i.3, %bb.ac ]
  %niter235 = phi i64 [ 0, %.lr.ph125.i.i.i.new ], [ %niter235.next.3, %bb.ac ]
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv130.i.i.i
  %i.gu = load atomic volatile i64, ptr %i.gt monotonic, align 8
  %i.gv = load i64, ptr %i.do, align 8            ; 4 uses
  %i.gw = icmp ne i64 %i.gu, %i.gv
  %i.gx = zext i1 %i.gw to i32
  %spec.select.i.i.i = add nuw nsw i32 %.032124.i.i.i, %i.gx
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv130.i.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load atomic volatile i64, ptr %i.gz monotonic, align 8
  %i.hb = icmp ne i64 %i.ha, %i.gv
  %i.hc = zext i1 %i.hb to i32
  %spec.select.i.i.i.1 = add nuw nsw i32 %spec.select.i.i.i, %i.hc
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv130.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load atomic volatile i64, ptr %i.he monotonic, align 8
  %i.hg = icmp ne i64 %i.hf, %i.gv
  %i.hh = zext i1 %i.hg to i32
  %spec.select.i.i.i.2 = add nuw nsw i32 %spec.select.i.i.i.1, %i.hh
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv130.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load atomic volatile i64, ptr %i.hj monotonic, align 8
  %i.hl = icmp ne i64 %i.hk, %i.gv
  %i.hm = zext i1 %i.hl to i32
  %spec.select.i.i.i.3 = add nuw nsw i32 %spec.select.i.i.i.2, %i.hm ; 3 uses
  %indvars.iv.next131.i.i.i.3 = add nuw nsw i64 %indvars.iv130.i.i.i, 4 ; 2 uses
  %niter235.next.3 = add i64 %niter235, 4         ; 2 uses
  %niter235.ncmp.3 = icmp eq i64 %niter235.next.3, %unroll_iter234
  br i1 %niter235.ncmp.3, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !28

bb.ad:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %i.hn = add i64 %i.ft, 15
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = add i64 %i.hp, -1
  %i.hr = inttoptr i64 %i.hq to ptr               ; 2 uses
  %i.hs = load atomic volatile i64, ptr %i.hr monotonic, align 8
  %i.ht = add i64 %i.hs, 11
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load atomic volatile i16, ptr %i.hu monotonic, align 2
  %i.hw = add i16 %i.hv, -218
  %i.hx = icmp ult i16 %i.hw, -13
  %i.hy = icmp sgt i32 %.fr236, 0
  %or.cond.i.i.i = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph121.i.i.i, label %.loopexit.i.i.i

.lr.ph121.i.i.i:                                  ; preds = %bb.ad
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr236 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.fr236, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph121.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ig, %vector.body ]
  %vec.phi189 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ih, %vector.body ]
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %index ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %wide.load = load <2 x i64>, ptr %i.ia, align 1
  %wide.load190 = load <2 x i64>, ptr %i.ib, align 1
  %i.ic = icmp ne <2 x i64> %wide.load, splat (i64 -2251799814209537)
  %i.id = icmp ne <2 x i64> %wide.load190, splat (i64 -2251799814209537)
  %i.ie = zext <2 x i1> %i.ic to <2 x i32>
  %i.if = zext <2 x i1> %i.id to <2 x i32>
  %i.ig = add <2 x i32> %vec.phi, %i.ie           ; 2 uses
  %i.ih = add <2 x i32> %vec.phi189, %i.if        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ih, %i.ig
  %i.ij = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.loopexit.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph121.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph121.i.i.i ], [ %n.vec, %middle.block ]
  %.2120.i.i.i.ph = phi i32 [ 0, %.lr.ph121.i.i.i ], [ %i.ij, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2120.i.i.i = phi i32 [ %spec.select35.i.i.i, %scalar.ph ], [ %.2120.i.i.i.ph, %scalar.ph.preheader ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.i.i.i
  %.0.copyload.i.i.i.i.i46.i.i.i = load i64, ptr %i.ik, align 1
  %i.il = icmp ne i64 %.0.copyload.i.i.i.i.i46.i.i.i, -2251799814209537
  %i.im = zext i1 %i.il to i32
  %spec.select35.i.i.i = add nuw nsw i32 %.2120.i.i.i, %i.im ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %scalar.ph, !llvm.loop !32

bb.ae:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %i.in = add i64 %i.ft, 15
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = add i64 %i.ip, -1
  %i.ir = inttoptr i64 %i.iq to ptr               ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load atomic volatile i64, ptr %i.is monotonic, align 8
  %.fr = freeze i64 %i.it                         ; 2 uses
  %i.iu = lshr i64 %.fr, 32                       ; 4 uses
  %.not116.i.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not116.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 3 uses
  %i.iw = icmp eq i64 %i.iu, 1
  br i1 %i.iw, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.iu, 4294967294
  br label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1, %.lr.ph.i.i.i.new
  %.5118.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %i.jp, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1 ] ; 2 uses
  %.sroa.049.0117.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %i.jq, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1 ]
  %i.ix = mul i64 %.sroa.049.0117.i.i.i, 12884901888
  %sext.i.i.i.i.i = add i64 %i.ix, 17179869184
  %i.iy = ashr exact i64 %sext.i.i.i.i.i, 29
  %i.iz = getelementptr inbounds i8, ptr %i.iv, i64 %i.iy
  %i.ja = load atomic volatile i64, ptr %i.iz monotonic, align 8 ; 2 uses
  %i.jb = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.jc = icmp eq i64 %i.ja, %i.jb
  br i1 %i.jc, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.af
  %i.jd = load i64, ptr %i.do, align 8
  %i.je = icmp ne i64 %i.ja, %i.jd
  %cond.fr.i.i.i = freeze i1 %i.je
  %i.jf = zext i1 %cond.fr.i.i.i to i32
  %spec.select113.i.i.i = add nsw i32 %.5118.i.i.i, %i.jf
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.af
  %i.jg = phi i32 [ %.5118.i.i.i, %bb.af ], [ %spec.select113.i.i.i, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i ] ; 2 uses
  %i.jh = mul i64 %.sroa.049.0117.i.i.i, 12884901888
  %sext.i.i.i.i.i.1 = add i64 %i.jh, 30064771072
  %i.ji = ashr exact i64 %sext.i.i.i.i.i.1, 29
  %i.jj = getelementptr inbounds i8, ptr %i.iv, i64 %i.ji
  %i.jk = load atomic volatile i64, ptr %i.jj monotonic, align 8 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, %i.jb
  br i1 %i.jl, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.jm = load i64, ptr %i.do, align 8
  %i.jn = icmp ne i64 %i.jk, %i.jm
  %cond.fr.i.i.i.1 = freeze i1 %i.jn
  %i.jo = zext i1 %cond.fr.i.i.i.1 to i32
  %spec.select113.i.i.i.1 = add nsw i32 %i.jg, %i.jo
  br label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1: ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i
  %i.jp = phi i32 [ %i.jg, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i ], [ %spec.select113.i.i.i.1, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.1 ] ; 3 uses
  %i.jq = add nuw nsw i64 %.sroa.049.0117.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit222.unr-lcssa, label %bb.af

bb.ag:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  br label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

bb.ah:                                            ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #14
  unreachable

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %bb.ac
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.loopexit.i.i.i, label %.epil.preheader229

.epil.preheader229:                               ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph125.i.i.i
  %indvars.iv130.i.i.i.epil.init = phi i64 [ 0, %.lr.ph125.i.i.i ], [ %indvars.iv.next131.i.i.i.3, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.032124.i.i.i.epil.init = phi i32 [ 0, %.lr.ph125.i.i.i ], [ %spec.select.i.i.i.3, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod233 = icmp ne i64 %xtraiter230, 0
  call void @llvm.assume(i1 %lcmp.mod233)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader229
  %indvars.iv130.i.i.i.epil = phi i64 [ %indvars.iv130.i.i.i.epil.init, %.epil.preheader229 ], [ %indvars.iv.next131.i.i.i.epil, %bb.ai ] ; 2 uses
  %.032124.i.i.i.epil = phi i32 [ %.032124.i.i.i.epil.init, %.epil.preheader229 ], [ %spec.select.i.i.i.epil, %bb.ai ]
  %epil.iter = phi i64 [ 0, %.epil.preheader229 ], [ %epil.iter.next, %bb.ai ]
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv130.i.i.i.epil
  %i.js = load atomic volatile i64, ptr %i.jr monotonic, align 8
  %i.jt = load i64, ptr %i.do, align 8
  %i.ju = icmp ne i64 %i.js, %i.jt
  %i.jv = zext i1 %i.ju to i32
  %spec.select.i.i.i.epil = add nuw nsw i32 %.032124.i.i.i.epil, %i.jv ; 2 uses
  %indvars.iv.next131.i.i.i.epil = add nuw nsw i64 %indvars.iv130.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter230
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.i, label %bb.ai, !llvm.loop !33

.loopexit.i.i.i.loopexit222.unr-lcssa:            ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i.1
  %i.jw = and i64 %.fr, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.jw, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.i.loopexit222.unr-lcssa, %.lr.ph.i.i.i
  %.5118.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.jp, %.loopexit.i.i.i.loopexit222.unr-lcssa ] ; 2 uses
  %.sroa.049.0117.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.jq, %.loopexit.i.i.i.loopexit222.unr-lcssa ]
  %lcmp.mod228 = trunc i64 %i.iu to i1
  call void @llvm.assume(i1 %lcmp.mod228)
  %i.jx = mul i64 %.sroa.049.0117.i.i.i.epil.init, 12884901888
  %sext.i.i.i.i.i.epil = add i64 %i.jx, 17179869184
  %i.jy = ashr exact i64 %sext.i.i.i.i.i.epil, 29
  %i.jz = getelementptr inbounds i8, ptr %i.iv, i64 %i.jy
  %i.ka = load atomic volatile i64, ptr %i.jz monotonic, align 8 ; 2 uses
  %i.kb = load i64, ptr %i.dn, align 8
  %i.kc = icmp eq i64 %i.ka, %i.kb
  br i1 %i.kc, label %.loopexit.i.i.i, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil: ; preds = %.epil.preheader
  %i.kd = load i64, ptr %i.do, align 8
  %i.ke = icmp ne i64 %i.ka, %i.kd
  %cond.fr.i.i.i.epil = freeze i1 %i.ke
  %i.kf = zext i1 %cond.fr.i.i.i.epil to i32
  %spec.select113.i.i.i.epil = add nsw i32 %.5118.i.i.i.epil.init, %i.kf
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i.loopexit222.unr-lcssa, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil, %.epil.preheader, %scalar.ph, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.ai, %middle.block, %bb.ae, %bb.ad, %bb.ab, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i
  %.7.i.i.i = phi i32 [ 0, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 0, %bb.ad ], [ %spec.select35.i.i.i, %scalar.ph ], [ 0, %bb.ae ], [ 0, %bb.ab ], [ %spec.select.i.i.i.epil, %bb.ai ], [ %i.ij, %middle.block ], [ %spec.select.i.i.i.3, %.loopexit.i.i.i.loopexit.unr-lcssa ], [ %i.jp, %.loopexit.i.i.i.loopexit222.unr-lcssa ], [ %.5118.i.i.i.epil.init, %.epil.preheader ], [ %spec.select113.i.i.i.epil, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i.epil ]
  br label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i: ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.kg = load atomic volatile i64, ptr %i.er monotonic, align 8
  %i.kh = add i64 %i.kg, 11
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = load atomic volatile i16, ptr %i.ki monotonic, align 2
  %.fr.i.i = freeze i16 %i.kj
  %i.kk = icmp eq i16 %.fr.i.i, 130
  %spec.select574.i.i = select i1 %i.kk, i8 4, i8 2 ; 2 uses
  %i.kl = call noundef zeroext i1 @_ZN2v88internal35IsMoreGeneralElementsKindTransitionENS0_12ElementsKindES1_(i8 noundef zeroext %.1664.i.i, i8 noundef zeroext %spec.select574.i.i) #15
  %..i280.i.i = select i1 %i.kl, i8 %spec.select574.i.i, i8 %.1664.i.i
  br label %_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i

_ZN2v88internal12_GLOBAL__N_120EstimateElementCountEPNS0_7IsolateENS0_12DirectHandleINS0_7JSArrayEEE.exit.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i, %.loopexit.i.i.i, %bb.ag, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i
  %.0214.i.i = phi i32 [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %.7.i.i.i, %.loopexit.i.i.i ], [ 0, %bb.ag ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %.fr236, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ]
  %.0213.i.i = phi i32 [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit265.i.i ], [ %i.fj, %.loopexit.i.i.i ], [ %i.fj, %bb.ag ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ %i.fj, %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit.i.i.i ], [ 1, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ]
end_hunk_0
