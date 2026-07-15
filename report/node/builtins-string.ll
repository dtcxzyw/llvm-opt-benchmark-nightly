inline.NumInlined: 617
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_113NextCodePointEPNS0_7IsolateENS0_16BuiltinArgumentsEi:bb.a
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 130
  br i1 %i.ac, label %.critedge.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12
  %i.ad = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp eq i16 %i.ag, 130
  br i1 %i.ah, label %.critedge.i, label %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i

_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i: ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.ai = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.07.0.i293349) #15 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ai, null
  br i1 %.not.i13, label %bb.k, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31
  %.sroa.07.0.i293345 = phi ptr [ %i.t, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31 ], [ %.sroa.07.0.i293349, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.07.0.i293349, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12 ], [ %.sroa.07.0.i293349, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit ] ; 4 uses
  %.sroa.015.0.i = phi ptr [ %i.t, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE8ToHandleINS0_6ObjectEEEbPNS0_12DirectHandleIT_EE.exit.thread31 ], [ %i.ai, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.07.0.i293349, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i12 ], [ %.sroa.07.0.i293349, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.i.i ], [ %i.i, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit ] ; 2 uses
  %i.aj = tail call ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef %0, ptr nonnull %.sroa.015.0.i) #15 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.al = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = lshr i64 %i.ak, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = sitofp i32 %i.ao to double
  br label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aq = add nsw i64 %i.ak, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.as, align 1 ; 6 uses
  %or.cond.i.i.i = fcmp ueq double %.0.copyload.i.i.i.i.i.i, 0.000000e+00
  br i1 %or.cond.i.i.i, label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = tail call double @llvm.fabs.f64(double %.0.copyload.i.i.i.i.i.i)
  %i.au = fcmp ueq double %i.at, +inf
  br i1 %i.au, label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = fcmp ogt double %.0.copyload.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call double @llvm.floor.f64(double %.0.copyload.i.i.i.i.i.i)
  br label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call double @llvm.ceil.f64(double %.0.copyload.i.i.i.i.i.i)
  %i.ay = fadd double %i.ax, 0.000000e+00
  br label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i

bb.j:                                             ; preds = %.critedge.i
  tail call void @_ZN2v812api_internal17FromJustIsNothingEv() #15
  br label %_ZNKR2v85MaybeIdE8FromJustEv.exit.i

_ZNKR2v85MaybeIdE8FromJustEv.exit.i:              ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.sroa.4.0.i48.i = phi double [ undef, %bb.j ], [ %i.ay, %bb.i ], [ %i.aw, %bb.h ], [ %.0.copyload.i.i.i.i.i.i, %bb.f ], [ 0.000000e+00, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  %i.az = load i64, ptr %.sroa.015.0.i, align 8   ; 4 uses
  %i.ba = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %_ZNKR2v85MaybeIdE8FromJustEv.exit.i
  %i.bc = lshr i64 %i.az, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = sitofp i32 %i.bd to double              ; 2 uses
  %i.bf = fcmp une double %.sroa.4.0.i48.i, %i.be
  %i.bg = icmp slt i64 %i.az, 0
  %or.cond.i = or i1 %i.bg, %i.bf
  br i1 %or.cond.i, label %bb.k, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i: ; preds = %_ZNKR2v85MaybeIdE8FromJustEv.exit.i
  %i.bh = add nsw i64 %i.az, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bj, align 1 ; 3 uses
  %i.bk = fcmp une double %.sroa.4.0.i48.i, %.0.copyload.i.i.i.i.i.i.i
  %i.bl = fcmp olt double %.0.copyload.i.i.i.i.i.i.i, 0.000000e+00
  %or.cond53.i = or i1 %i.bk, %i.bl
  br i1 %or.cond53.i, label %bb.k, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.bm = phi double [ %i.be, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %.0.copyload.i.i.i.i.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i ]
  %i.bn = fcmp ogt double %i.bm, f0x4130FFFF00000000
  br i1 %i.bn, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit

bb.k:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i
  %.sroa.07.0.i293344 = phi ptr [ %.sroa.07.0.i293345, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i ], [ %.sroa.07.0.i293345, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %.sroa.07.0.i293345, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i ], [ %.sroa.07.0.i293349, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %.sroa.07.0.i293344, ptr %4, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 241, ptr nonnull %4, i64 1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bp, ptr noundef null) #15 ; 0 uses
  br label %_ZN2v88internal14DoubleToUint32Ed.exit

_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit11.i
  %i.br = load i64, ptr %.sroa.07.0.i293345, align 8 ; 3 uses
  %i.bs = and i64 %i.br, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit
  %i.bu = lshr i64 %i.br, 32
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = sitofp i32 %i.bv to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.m:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit
  %i.bx = add nsw i64 %i.br, -1
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.0.copyload.i.i.i.i.i.i14 = load double, ptr %i.bz, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.l, %bb.m
  %i.ca = phi double [ %i.bw, %bb.l ], [ %.0.copyload.i.i.i.i.i.i14, %bb.m ] ; 5 uses
  %i.cb = tail call double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp one double %i.cb, +inf
  %i.cd = fcmp ole double %i.ca, f0x41DFFFFFFFC00000
  %or.cond.i.i = and i1 %i.cd, %i.cc
  %i.ce = fcmp oge double %i.ca, f0xC1E0000000000000
  %or.cond3.i.i = and i1 %i.ce, %or.cond.i.i
  br i1 %or.cond3.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.cf = fptosi double %i.ca to i32
  br label %_ZN2v88internal14DoubleToUint32Ed.exit

bb.o:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.cg = bitcast double %i.ca to i64             ; 5 uses
  %i.ch = and i64 %i.cg, 9218868437227405312
  %i.ci = icmp eq i64 %i.ch, 0                    ; 2 uses
  %i.cj = lshr i64 %i.cg, 52
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 2047
  %i.cm = add nsw i32 %i.cl, -1075
  %.0.i.i.i = select i1 %i.ci, i32 -1074, i32 %i.cm ; 5 uses
  %i.cn = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.cn, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.co = icmp samesign ult i32 %.0.i.i.i, -52
  br i1 %i.co, label %_ZN2v88internal14DoubleToUint32Ed.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = and i64 %i.cg, 4503599627370495         ; 2 uses
  %i.cq = or disjoint i64 %i.cp, 4503599627370496
  %.0.i17.i.i = select i1 %i.ci, i64 %i.cp, i64 %i.cq
  %i.cr = sub nsw i32 0, %.0.i.i.i
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = lshr i64 %.0.i17.i.i, %i.cs
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.cu = icmp samesign ugt i32 %.0.i.i.i, 31
  br i1 %i.cu, label %_ZN2v88internal14DoubleToUint32Ed.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = zext nneg i32 %.0.i.i.i to i64
  %i.cw = shl i64 %i.cg, %i.cv
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.0.i.i = phi i64 [ %i.ct, %bb.q ], [ %i.cw, %bb.s ]
  %i.cx = trunc i64 %.0.i.i to i32                ; 2 uses
  %i.cy = sub i32 0, %i.cx
  %i.cz = icmp slt i64 %i.cg, 0
  %i.da = select i1 %i.cz, i32 %i.cy, i32 %i.cx
  br label %_ZN2v88internal14DoubleToUint32Ed.exit

_ZN2v88internal14DoubleToUint32Ed.exit:           ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %bb.t, %bb.r, %bb.p, %bb.n, %bb.k
  %.0 = phi i32 [ -1, %bb.k ], [ 0, %bb.r ], [ %i.cf, %bb.n ], [ 0, %bb.p ], [ %i.da, %bb.t ], [ -1, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ]
  ret i32 %.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i.preheader
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i16
  store i16 %4, ptr %0, align 2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %6, align 2
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = load i8, ptr %9, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %10, align 2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %15 = load i8, ptr %13, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 2
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i8, ptr %17, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 2
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %23 = load i8, ptr %21, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 2
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i8, ptr %25, align 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %26, align 2
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %31 = load i8, ptr %29, align 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %30, align 2
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i8, ptr %33, align 1
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %34, align 2
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %39 = load i8, ptr %37, align 1
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %38, align 2
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %43 = load i8, ptr %41, align 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %42, align 2
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %47 = load i8, ptr %45, align 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %46, align 2
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %51 = load i8, ptr %49, align 1
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %50, align 2
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %55 = load i8, ptr %53, align 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %54, align 2
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %59 = load i8, ptr %57, align 1
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %58, align 2
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %63 = load i8, ptr %61, align 1
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %62, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %65 = load i8, ptr %1, align 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %0, align 2
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %69 = load i8, ptr %67, align 1
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %68, align 2
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %73 = load i8, ptr %71, align 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %72, align 2
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %77 = load i8, ptr %75, align 1
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %76, align 2
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %81 = load i8, ptr %79, align 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %80, align 2
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %85 = load i8, ptr %83, align 1
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %84, align 2
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %89 = load i8, ptr %87, align 1
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %88, align 2
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %93 = load i8, ptr %91, align 1
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %92, align 2
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %97 = load i8, ptr %95, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %96, align 2
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %100, align 2
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %105 = load i8, ptr %103, align 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %104, align 2
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %109 = load i8, ptr %107, align 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %108, align 2
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %113 = load i8, ptr %111, align 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %112, align 2
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %117 = load i8, ptr %115, align 1
  %118 = zext i8 %117 to i16
  store i16 %118, ptr %116, align 2
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %121 = load i8, ptr %119, align 1
  %122 = zext i8 %121 to i16
  store i16 %122, ptr %120, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %123 = load i8, ptr %1, align 1
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %0, align 2
  %125 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %127 = load i8, ptr %125, align 1
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %126, align 2
  %129 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %131 = load i8, ptr %129, align 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %130, align 2
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %135 = load i8, ptr %133, align 1
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %134, align 2
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %139 = load i8, ptr %137, align 1
  %140 = zext i8 %139 to i16
  store i16 %140, ptr %138, align 2
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %143 = load i8, ptr %141, align 1
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %142, align 2
  %145 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %147 = load i8, ptr %145, align 1
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %146, align 2
  %149 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %151 = load i8, ptr %149, align 1
  %152 = zext i8 %151 to i16
  store i16 %152, ptr %150, align 2
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %155 = load i8, ptr %153, align 1
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %154, align 2
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %159 = load i8, ptr %157, align 1
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %158, align 2
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %163 = load i8, ptr %161, align 1
  %164 = zext i8 %163 to i16
  store i16 %164, ptr %162, align 2
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %167 = load i8, ptr %165, align 1
  %168 = zext i8 %167 to i16
  store i16 %168, ptr %166, align 2
  %169 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %171 = load i8, ptr %169, align 1
  %172 = zext i8 %171 to i16
  store i16 %172, ptr %170, align 2
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %175 = load i8, ptr %173, align 1
  %176 = zext i8 %175 to i16
  store i16 %176, ptr %174, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1
  %i.b = zext i8 %i.a to i16
  store i16 %i.b, ptr %0, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.c, align 1
  %i.f = zext i8 %i.e to i16
  store i16 %i.f, ptr %i.d, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.g, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %i.h, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.ay = load i8, ptr %1, align 1
  %i.az = zext i8 %i.ay to i16
  store i16 %i.az, ptr %0, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bc = load i8, ptr %i.ba, align 1
  %i.bd = zext i8 %i.bc to i16
  store i16 %i.bd, ptr %i.bb, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i8, ptr %i.be, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %i.bf, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.cs = load i8, ptr %1, align 1
  %i.ct = zext i8 %i.cs to i16
  store i16 %i.ct, ptr %0, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cw = load i8, ptr %i.cu, align 1
  %i.cx = zext i8 %i.cw to i16
  store i16 %i.cx, ptr %i.cv, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.da = load i8, ptr %i.cy, align 1
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %i.cz, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = zext i8 %i.di to i16
  store i16 %i.dj, ptr %i.dh, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dm = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %i.dm to i16
  store i16 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = zext i8 %i.dq to i16
  store i16 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = zext i8 %i.dy to i16
  store i16 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = zext i8 %i.ec to i16
  store i16 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = zext i8 %i.eg to i16
  store i16 %i.eh, ptr %i.ef, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.ei = load i8, ptr %1, align 1
  %i.ej = zext i8 %i.ei to i16
  store i16 %i.ej, ptr %0, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.em = load i8, ptr %i.ek, align 1
  %i.en = zext i8 %i.em to i16
  store i16 %i.en, ptr %i.el, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eq = load i8, ptr %i.eo, align 1
  %i.er = zext i8 %i.eq to i16
  store i16 %i.er, ptr %i.ep, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jo = load i8, ptr %i.jm, align 1
  %i.jp = zext i8 %i.jo to i16
  store i16 %i.jp, ptr %i.jn, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.js = load i8, ptr %i.jq, align 1
  %i.jt = zext i8 %i.js to i16
  store i16 %i.jt, ptr %i.jr, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jw = load i8, ptr %i.ju, align 1
  %i.jx = zext i8 %i.jw to i16
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ka = load i8, ptr %i.jy, align 1
  %i.kb = zext i8 %i.ka to i16
  store i16 %i.kb, ptr %i.jz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kc = load i8, ptr %1, align 1
  %i.kd = zext i8 %i.kc to i16
  store i16 %i.kd, ptr %0, align 2
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.kg = load i8, ptr %i.ke, align 1
  %i.kh = zext i8 %i.kg to i16
  store i16 %i.kh, ptr %i.kf, align 2
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.kk = load i8, ptr %i.ki, align 1
  %i.kl = zext i8 %i.kk to i16
  store i16 %i.kl, ptr %i.kj, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ko = load i8, ptr %i.km, align 1
  %i.kp = zext i8 %i.ko to i16
  store i16 %i.kp, ptr %i.kn, align 2
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ks = load i8, ptr %i.kq, align 1
  %i.kt = zext i8 %i.ks to i16
  store i16 %i.kt, ptr %i.kr, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.ku = load i8, ptr %1, align 1
  %i.kv = zext i8 %i.ku to i16
  store i16 %i.kv, ptr %0, align 2
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ky = load i8, ptr %i.kw, align 1
  %i.kz = zext i8 %i.ky to i16
  store i16 %i.kz, ptr %i.kx, align 2
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lc = load i8, ptr %i.la, align 1
  %i.ld = zext i8 %i.lc to i16
  store i16 %i.ld, ptr %i.lb, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lg = load i8, ptr %i.le, align 1
  %i.lh = zext i8 %i.lg to i16
  store i16 %i.lh, ptr %i.lf, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.li = load i8, ptr %1, align 1
  %i.lj = zext i8 %i.li to i16
  store i16 %i.lj, ptr %0, align 2
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lm = load i8, ptr %i.lk, align 1
  %i.ln = zext i8 %i.lm to i16
  store i16 %i.ln, ptr %i.ll, align 2
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lq = load i8, ptr %i.lo, align 1
  %i.lr = zext i8 %i.lq to i16
  store i16 %i.lr, ptr %i.lp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ls = load i8, ptr %1, align 1
  %i.lt = zext i8 %i.ls to i16
  store i16 %i.lt, ptr %0, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lw = load i8, ptr %i.lu, align 1
  %i.lx = zext i8 %i.lw to i16
  store i16 %i.lx, ptr %i.lv, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %i.ly = load i8, ptr %1, align 1
  %i.lz = zext i8 %i.ly to i16
  store i16 %i.lz, ptr %0, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.ma = icmp sgt i64 %2, 0
  br i1 %i.ma, label %iter.check, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mb = shl nuw i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.mb
  %scevgep148 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep148
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check149 = icmp ult i64 %2, 16
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.mc = and i64 %2, 15
  %i.md = shl nuw i64 %n.vec, 1
  %i.me = getelementptr i8, ptr %0, i64 %i.md
  %i.mf = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.mg ; 2 uses
  %next.gep150 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.mh = getelementptr i8, ptr %next.gep150, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep150, align 1, !alias.scope !16
  %wide.load151 = load <8 x i8>, ptr %i.mh, align 1, !alias.scope !16
  %i.mi = zext <8 x i8> %wide.load to <8 x i16>
  %i.mj = zext <8 x i8> %wide.load151 to <8 x i16>
  %i.mk = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.mi, ptr %next.gep, align 2, !alias.scope !19, !noalias !16
  store <8 x i16> %i.mj, ptr %i.mk, align 2, !alias.scope !19, !noalias !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec155 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mm = and i64 %2, 3
  %i.mn = shl nuw i64 %n.vec155, 1
  %i.mo = getelementptr i8, ptr %0, i64 %i.mn
  %i.mp = getelementptr i8, ptr %1, i64 %n.vec155
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %i.mq = shl i64 %index156, 1
  %next.gep157 = getelementptr i8, ptr %0, i64 %i.mq
  %next.gep158 = getelementptr i8, ptr %1, i64 %index156
  %wide.load159 = load <4 x i8>, ptr %next.gep158, align 1, !alias.scope !16
  %i.mr = zext <4 x i8> %wide.load159 to <4 x i16>
  store <4 x i16> %i.mr, ptr %next.gep157, align 2, !alias.scope !19, !noalias !16
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.ms, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %2, %n.vec155
  br i1 %cmp.n161, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mm, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.me, %vec.epilog.iter.check ], [ %i.mo, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mf, %vec.epilog.iter.check ], [ %i.mp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.mt = load i8, ptr %.0910.i.i.i.i.i.i.i115, align 1
  %i.mu = zext i8 %i.mt to i16
  store i16 %i.mu, ptr %.0811.i.i.i.i.i.i.i114, align 2
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 2
  %i.mx = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.my = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.my, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, !llvm.loop !26

_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i107.preheader, %.lr.ph.i.i.i.i.i.i.i102.preheader, %.lr.ph.i.i.i.i.i.i.i97.preheader, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320), i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

declare ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

declare void @_ZN2v812api_internal17FromJustIsNothingEv() local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal6String11LastIndexOfEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEES6_S6_(ptr noundef, ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object12ToObjectImplEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef, ptr, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3, i64 noundef %4, ptr %5, i32 noundef %6) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, null                     ; 3 uses
  br i1 %i.a, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 128
  br i1 %i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i

_ZN2v88internal4Name9IsPrivateEv.exit.i:          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i:   ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i, %bb.b, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i
  %i.m = phi i32 [ %6, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i ]
  store i32 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %3, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = ptrtoint ptr %5 to i64
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %4, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 -1, ptr %i.z, align 8
  %.not = icmp eq i64 %4, -1
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit
  %i.aa = icmp ugt i64 %4, 4294967294
  br i1 %i.aa, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %5, align 8               ; 2 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %bb.d
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = icmp eq i16 %i.ai, 2061
  br i1 %i.aj, label %.critedge, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  %i.ak = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.al = add i64 %i.ak, 11
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i16, ptr %i.am monotonic, align 2
  %i.ao = icmp eq i16 %i.an, 300
  br i1 %i.ao, label %.critedge, label %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread

_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread: ; preds = %bb.d, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  br i1 %i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %i.ap = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %4, i1 noundef zeroext true) #15 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  store i64 %i.aq, ptr %i.s, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread
  %.sroa.03.0.copyload = phi ptr [ %i.ap, %bb.e ], [ %3, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit.thread ] ; 3 uses
  %i.ar = load i64, ptr %.sroa.03.0.copyload, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.av = add i64 %i.au, 11
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2
  %i.ay = and i16 %i.ax, -96
  %.not.i = icmp eq i16 %i.ay, 32
  br i1 %.not.i, label %bb.g, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.bc = load i8, ptr %i.bb, align 8, !range !13
  %i.bd = trunc nuw i8 %i.bc to i1
  %not..i.i.i = xor i1 %i.ba, true
  %i.be = select i1 %not..i.i.i, i1 true, i1 %i.bd
  br i1 %i.be, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.bg = load i8, ptr %i.bf, align 8, !range !13, !noundef !14
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i:  ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i, %bb.g
  %.pn.i.i = phi ptr [ %i.bj, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i ], [ %1, %bb.g ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 58464
  %i.bk = load ptr, ptr %.in.i.i, align 8
  %i.bl = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %.sroa.03.0.copyload) #15
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit: ; preds = %bb.f, %_ZNK2v88internal7Isolate12string_tableEv.exit.i
  %.sroa.05.0.i = phi ptr [ %i.bl, %_ZNK2v88internal7Isolate12string_tableEv.exit.i ], [ %.sroa.03.0.copyload, %bb.f ]
  store ptr %.sroa.05.0.i, ptr %i.s, align 8
  br label %bb.l

.critedge:                                        ; preds = %_ZN2v88internal14IsJSTypedArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit, %bb.c, %_ZN2v88internal11IsWasmArrayENS0_6TaggedINS0_6ObjectEEENS0_16PtrComprCageBaseE.exit
  br i1 %i.a, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.bm = load i64, ptr %3, align 8
  %i.bn = add i64 %i.bm, -1
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  %i.bq = add i64 %i.bp, 11
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load atomic volatile i16, ptr %i.br monotonic, align 2
  %i.bt = and i16 %i.bs, -96
end_hunk_1
