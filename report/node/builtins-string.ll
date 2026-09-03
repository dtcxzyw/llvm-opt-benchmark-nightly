Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-string?download=true
inline.NumInlined: 617
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_113NextCodePointEPNS0_7IsolateENS0_16BuiltinArgumentsEi:bb.a
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
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i: ; preds = %_ZNKR2v85MaybeIdE8FromJustEv.exit.i
  %i.bh = add nsw i64 %i.az, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.bj, align 1 ; 3 uses
  %i.bk = fcmp une double %.sroa.4.0.i48.i, %.0.copyload.i.i.i.i.i.i.i
  %i.bl = fcmp olt double %.0.copyload.i.i.i.i.i.i.i, 0.000000e+00
  %or.cond53.i = or i1 %i.bk, %i.bl
  br i1 %or.cond53.i, label %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i
  %i.bm = phi double [ %i.be, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %.0.copyload.i.i.i.i.i.i.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i ]
  %i.bn = fcmp ule double %i.bm, f0x4130FFFF00000000
  br i1 %i.bn, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread

_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit
  %.sroa.07.0.i293344 = phi ptr [ %.sroa.07.0.i293349, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit.i ], [ %.sroa.07.0.i293345, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i ], [ %.sroa.07.0.i293345, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread.i ], [ %.sroa.07.0.i293345, %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %.sroa.07.0.i293344, ptr %4, align 8
  %i.bo = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 241, ptr nonnull %4, i64 1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bp, ptr noundef null) #15 ; 0 uses
  br label %_ZN2v88internal14DoubleToUint32Ed.exit

bb.k:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit
  %i.br = load i64, ptr %.sroa.07.0.i293345, align 8 ; 3 uses
  %i.bs = and i64 %i.br, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = lshr i64 %i.br, 32
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = sitofp i32 %i.bv to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.m:                                             ; preds = %bb.k
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

_ZN2v88internal14DoubleToUint32Ed.exit:           ; preds = %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit, %bb.t, %bb.r, %bb.p, %bb.n, %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread
  %.0 = phi i32 [ -1, %_ZN2v88internal12_GLOBAL__N_116IsValidCodePointEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit.thread ], [ 0, %bb.r ], [ %i.cf, %bb.n ], [ 0, %bb.p ], [ %i.da, %bb.t ], [ -1, %_ZN2v88internal6Object8ToNumberIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ]
  ret i32 %.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 6 uses
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i
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
  %i.c = add i64 %i.b, 16
  %i.d = add i64 %i.a, 32
  %rt.bound0167 = icmp ugt i64 %i.c, %i.a
  %rt.bound1168 = icmp ugt i64 %i.d, %i.b
  %rt.conflict169 = and i1 %rt.bound0167, %rt.bound1168
  br i1 %rt.conflict169, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %i.e = add i64 %i.b, 15
  %i.f = add i64 %i.a, 30
  %rt.bound0163 = icmp ugt i64 %i.e, %i.a
  %rt.bound1164 = icmp ugt i64 %i.f, %i.b
  %rt.conflict165 = and i1 %rt.bound0163, %rt.bound1164
  br i1 %rt.conflict165, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %i.g = add i64 %i.b, 14
  %i.h = add i64 %i.a, 28
  %rt.bound0 = icmp ugt i64 %i.g, %i.a
  %rt.bound1 = icmp ugt i64 %i.h, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, label %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.i = load i8, ptr %1, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %0, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ba = load i8, ptr %i.ay, align 1
  %i.bb = zext i8 %i.ba to i16
  store i16 %i.bb, ptr %i.az, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i8, ptr %i.bc, align 1
  %i.bf = zext i8 %i.be to i16
  store i16 %i.bf, ptr %i.bd, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.bg = load i8, ptr %1, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %0, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cu = load i8, ptr %i.cs, align 1
  %i.cv = zext i8 %i.cu to i16
  store i16 %i.cv, ptr %i.ct, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cy = load i8, ptr %i.cw, align 1
  %i.cz = zext i8 %i.cy to i16
  store i16 %i.cz, ptr %i.cx, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.da = load i8, ptr %1, align 1
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %0, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = zext i8 %i.di to i16
  store i16 %i.dj, ptr %i.dh, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dm = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %i.dm to i16
  store i16 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = zext i8 %i.dq to i16
  store i16 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = zext i8 %i.dy to i16
  store i16 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = zext i8 %i.ec to i16
  store i16 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = zext i8 %i.eg to i16
  store i16 %i.eh, ptr %i.ef, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ek = load i8, ptr %i.ei, align 1
  %i.el = zext i8 %i.ek to i16
  store i16 %i.el, ptr %i.ej, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eo = load i8, ptr %i.em, align 1
  %i.ep = zext i8 %i.eo to i16
  store i16 %i.ep, ptr %i.en, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.eq = load i8, ptr %1, align 1
  %i.er = zext i8 %i.eq to i16
  store i16 %i.er, ptr %0, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.eu = load i8, ptr %i.es, align 1
  %i.ev = zext i8 %i.eu to i16
  store i16 %i.ev, ptr %i.et, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ey = load i8, ptr %i.ew, align 1
  %i.ez = zext i8 %i.ey to i16
  store i16 %i.ez, ptr %i.ex, align 2
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ie = load i8, ptr %i.ic, align 1
  %i.if = zext i8 %i.ie to i16
  store i16 %i.if, ptr %i.id, align 2
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ii = load i8, ptr %i.ig, align 1
  %i.ij = zext i8 %i.ii to i16
  store i16 %i.ij, ptr %i.ih, align 2
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.im = load i8, ptr %i.ik, align 1
  %i.in = zext i8 %i.im to i16
  store i16 %i.in, ptr %i.il, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i62.preheader:                 ; preds = %bb.a
  %i.io = load i8, ptr %1, align 1
  %i.ip = zext i8 %i.io to i16
  store i16 %i.ip, ptr %0, align 2
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.is = load i8, ptr %i.iq, align 1
  %i.it = zext i8 %i.is to i16
  store i16 %i.it, ptr %i.ir, align 2
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.iw = load i8, ptr %i.iu, align 1
  %i.ix = zext i8 %i.iw to i16
  store i16 %i.ix, ptr %i.iv, align 2
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ja = load i8, ptr %i.iy, align 1
  %i.jb = zext i8 %i.ja to i16
  store i16 %i.jb, ptr %i.iz, align 2
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.je = load i8, ptr %i.jc, align 1
  %i.jf = zext i8 %i.je to i16
  store i16 %i.jf, ptr %i.jd, align 2
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ji = load i8, ptr %i.jg, align 1
  %i.jj = zext i8 %i.ji to i16
  store i16 %i.jj, ptr %i.jh, align 2
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jm = load i8, ptr %i.jk, align 1
  %i.jn = zext i8 %i.jm to i16
  store i16 %i.jn, ptr %i.jl, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %bb.a
  %i.jo = load i8, ptr %1, align 1
  %i.jp = zext i8 %i.jo to i16
  store i16 %i.jp, ptr %0, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.js = load i8, ptr %i.jq, align 1
  %i.jt = zext i8 %i.js to i16
  store i16 %i.jt, ptr %i.jr, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jw = load i8, ptr %i.ju, align 1
  %i.jx = zext i8 %i.jw to i16
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ka = load i8, ptr %i.jy, align 1
  %i.kb = zext i8 %i.ka to i16
  store i16 %i.kb, ptr %i.jz, align 2
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ke = load i8, ptr %i.kc, align 1
  %i.kf = zext i8 %i.ke to i16
  store i16 %i.kf, ptr %i.kd, align 2
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ki = load i8, ptr %i.kg, align 1
  %i.kj = zext i8 %i.ki to i16
  store i16 %i.kj, ptr %i.kh, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kk = load i8, ptr %1, align 1
  %i.kl = zext i8 %i.kk to i16
  store i16 %i.kl, ptr %0, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ko = load i8, ptr %i.km, align 1
  %i.kp = zext i8 %i.ko to i16
  store i16 %i.kp, ptr %i.kn, align 2
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ks = load i8, ptr %i.kq, align 1
  %i.kt = zext i8 %i.ks to i16
  store i16 %i.kt, ptr %i.kr, align 2
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.kw = load i8, ptr %i.ku, align 1
  %i.kx = zext i8 %i.kw to i16
  store i16 %i.kx, ptr %i.kv, align 2
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.la = load i8, ptr %i.ky, align 1
  %i.lb = zext i8 %i.la to i16
  store i16 %i.lb, ptr %i.kz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.lc = load i8, ptr %1, align 1
  %i.ld = zext i8 %i.lc to i16
  store i16 %i.ld, ptr %0, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lg = load i8, ptr %i.le, align 1
  %i.lh = zext i8 %i.lg to i16
  store i16 %i.lh, ptr %i.lf, align 2
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lk = load i8, ptr %i.li, align 1
  %i.ll = zext i8 %i.lk to i16
  store i16 %i.ll, ptr %i.lj, align 2
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lo = load i8, ptr %i.lm, align 1
  %i.lp = zext i8 %i.lo to i16
  store i16 %i.lp, ptr %i.ln, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.lq = load i8, ptr %1, align 1
  %i.lr = zext i8 %i.lq to i16
  store i16 %i.lr, ptr %0, align 2
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lu = load i8, ptr %i.ls, align 1
  %i.lv = zext i8 %i.lu to i16
  store i16 %i.lv, ptr %i.lt, align 2
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ly = load i8, ptr %i.lw, align 1
  %i.lz = zext i8 %i.ly to i16
  store i16 %i.lz, ptr %i.lx, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ma = load i8, ptr %1, align 1
  %i.mb = zext i8 %i.ma to i16
  store i16 %i.mb, ptr %0, align 2
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.me = load i8, ptr %i.mc, align 1
  %i.mf = zext i8 %i.me to i16
  store i16 %i.mf, ptr %i.md, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a
  %i.mg = load i8, ptr %1, align 1
  %i.mh = zext i8 %i.mg to i16
  store i16 %i.mh, ptr %0, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.mi = icmp sgt i64 %2, 0
  br i1 %i.mi, label %iter.check, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mj = shl nuw i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.mj
  %scevgep147 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep147
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check148 = icmp ult i64 %2, 16
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mk = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.ml = and i64 %2, 15
  %i.mm = shl nuw i64 %n.vec, 1
  %i.mn = getelementptr i8, ptr %0, i64 %i.mm
  %i.mo = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mp = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.mp ; 2 uses
  %next.gep149 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.mq = getelementptr i8, ptr %next.gep149, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep149, align 1, !alias.scope !22
  %wide.load150 = load <8 x i8>, ptr %i.mq, align 1, !alias.scope !22
  %i.mr = zext <8 x i8> %wide.load to <8 x i16>
  %i.ms = zext <8 x i8> %wide.load150 to <8 x i16>
  %i.mt = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.mr, ptr %next.gep, align 2, !alias.scope !23, !noalias !22
  store <8 x i16> %i.ms, ptr %i.mt, align 2, !alias.scope !23, !noalias !22
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mv = and i64 %2, 3
  %i.mw = shl nuw i64 %n.vec153, 1
  %i.mx = getelementptr i8, ptr %0, i64 %i.mw
  %i.my = getelementptr i8, ptr %1, i64 %n.vec153
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %i.mz = shl i64 %index154, 1
  %next.gep155 = getelementptr i8, ptr %0, i64 %i.mz
  %next.gep156 = getelementptr i8, ptr %1, i64 %index154
  %wide.load157 = load <4 x i8>, ptr %next.gep156, align 1, !alias.scope !22
  %i.na = zext <4 x i8> %wide.load157 to <4 x i16>
  store <4 x i16> %i.na, ptr %next.gep155, align 2, !alias.scope !23, !noalias !22
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.nb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %2, %n.vec153
  br i1 %cmp.n159, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ml, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.mn, %vec.epilog.iter.check ], [ %i.mx, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mo, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.ng, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.nc = load i8, ptr %.0910.i.i.i.i.i.i.i115, align 1
  %i.nd = zext i8 %i.nc to i16
  store i16 %i.nd, ptr %.0811.i.i.i.i.i.i.i114, align 2
  %i.ne = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 1
  %i.nf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 2
  %i.ng = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.nh = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.nh, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, !llvm.loop !21

_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec, %.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar, %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  ret void

.lr.ph.i.i.i.i.i.i.i97.preheader.rtvec:           ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.ni = load <8 x i8>, ptr %1, align 1
  %i.nj = zext <8 x i8> %i.ni to <8 x i16>
  store <8 x i16> %i.nj, ptr %0, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nm = load <4 x i8>, ptr %i.nk, align 1
  %i.nn = zext <4 x i8> %i.nm to <4 x i16>
  store <4 x i16> %i.nn, ptr %i.nl, align 2
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nq = load i8, ptr %i.no, align 1
  %i.nr = zext i8 %i.nq to i16
  store i16 %i.nr, ptr %i.np, align 2
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.nu = load i8, ptr %i.ns, align 1
  %i.nv = zext i8 %i.nu to i16
  store i16 %i.nv, ptr %i.nt, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader.rtscalar:        ; preds = %.lr.ph.i.i.i.i.i.i.i97.preheader
  %i.nw = load i8, ptr %1, align 1
  %i.nx = zext i8 %i.nw to i16
  store i16 %i.nx, ptr %0, align 2
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.oa = load i8, ptr %i.ny, align 1
  %i.ob = zext i8 %i.oa to i16
  store i16 %i.ob, ptr %i.nz, align 2
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.oe = load i8, ptr %i.oc, align 1
  %i.of = zext i8 %i.oe to i16
  store i16 %i.of, ptr %i.od, align 2
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.oi = load i8, ptr %i.og, align 1
  %i.oj = zext i8 %i.oi to i16
  store i16 %i.oj, ptr %i.oh, align 2
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.om = load i8, ptr %i.ok, align 1
  %i.on = zext i8 %i.om to i16
  store i16 %i.on, ptr %i.ol, align 2
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.oq = load i8, ptr %i.oo, align 1
  %i.or = zext i8 %i.oq to i16
  store i16 %i.or, ptr %i.op, align 2
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ou = load i8, ptr %i.os, align 1
  %i.ov = zext i8 %i.ou to i16
  store i16 %i.ov, ptr %i.ot, align 2
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.oy = load i8, ptr %i.ow, align 1
  %i.oz = zext i8 %i.oy to i16
  store i16 %i.oz, ptr %i.ox, align 2
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pc = load i8, ptr %i.pa, align 1
  %i.pd = zext i8 %i.pc to i16
  store i16 %i.pd, ptr %i.pb, align 2
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.pg = load i8, ptr %i.pe, align 1
  %i.ph = zext i8 %i.pg to i16
  store i16 %i.ph, ptr %i.pf, align 2
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.pk = load i8, ptr %i.pi, align 1
  %i.pl = zext i8 %i.pk to i16
  store i16 %i.pl, ptr %i.pj, align 2
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.po = load i8, ptr %i.pm, align 1
  %i.pp = zext i8 %i.po to i16
  store i16 %i.pp, ptr %i.pn, align 2
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ps = load i8, ptr %i.pq, align 1
  %i.pt = zext i8 %i.ps to i16
  store i16 %i.pt, ptr %i.pr, align 2
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.pw = load i8, ptr %i.pu, align 1
  %i.px = zext i8 %i.pw to i16
  store i16 %i.px, ptr %i.pv, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.py = load <8 x i8>, ptr %1, align 1
  %i.pz = zext <8 x i8> %i.py to <8 x i16>
  store <8 x i16> %i.pz, ptr %0, align 2
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qc = load <4 x i8>, ptr %i.qa, align 1
  %i.qd = zext <4 x i8> %i.qc to <4 x i16>
  store <4 x i16> %i.qd, ptr %i.qb, align 2
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qg = load i8, ptr %i.qe, align 1
  %i.qh = zext i8 %i.qg to i16
  store i16 %i.qh, ptr %i.qf, align 2
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.qk = load i8, ptr %i.qi, align 1
  %i.ql = zext i8 %i.qk to i16
  store i16 %i.ql, ptr %i.qj, align 2
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.qo = load i8, ptr %i.qm, align 1
  %i.qp = zext i8 %i.qo to i16
  store i16 %i.qp, ptr %i.qn, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.qq = load i8, ptr %1, align 1
  %i.qr = zext i8 %i.qq to i16
  store i16 %i.qr, ptr %0, align 2
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.qu = load i8, ptr %i.qs, align 1
  %i.qv = zext i8 %i.qu to i16
  store i16 %i.qv, ptr %i.qt, align 2
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.qy = load i8, ptr %i.qw, align 1
  %i.qz = zext i8 %i.qy to i16
  store i16 %i.qz, ptr %i.qx, align 2
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.rc = load i8, ptr %i.ra, align 1
  %i.rd = zext i8 %i.rc to i16
  store i16 %i.rd, ptr %i.rb, align 2
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rg = load i8, ptr %i.re, align 1
  %i.rh = zext i8 %i.rg to i16
  store i16 %i.rh, ptr %i.rf, align 2
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.rk = load i8, ptr %i.ri, align 1
  %i.rl = zext i8 %i.rk to i16
  store i16 %i.rl, ptr %i.rj, align 2
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ro = load i8, ptr %i.rm, align 1
  %i.rp = zext i8 %i.ro to i16
  store i16 %i.rp, ptr %i.rn, align 2
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.rs = load i8, ptr %i.rq, align 1
  %i.rt = zext i8 %i.rs to i16
  store i16 %i.rt, ptr %i.rr, align 2
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rw = load i8, ptr %i.ru, align 1
  %i.rx = zext i8 %i.rw to i16
  store i16 %i.rx, ptr %i.rv, align 2
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.sa = load i8, ptr %i.ry, align 1
  %i.sb = zext i8 %i.sa to i16
  store i16 %i.sb, ptr %i.rz, align 2
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.se = load i8, ptr %i.sc, align 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE:bb.a
  %i.ax = load atomic volatile i16, ptr %i.aw monotonic, align 2
  %i.ay = and i16 %i.ax, -96
  %.not.i = icmp eq i16 %i.ay, 32
  br i1 %.not.i, label %bb.g, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.bc = load i8, ptr %i.bb, align 8, !range !8
  %i.bd = trunc nuw i8 %i.bc to i1
  %not..i.i.i = xor i1 %i.ba, true
  %i.be = select i1 %not..i.i.i, i1 true, i1 %i.bd
  br i1 %i.be, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.bg = load i8, ptr %i.bf, align 8, !range !8, !noundef !9
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
  %i.bu = icmp eq i16 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.s, align 8
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.j, %bb.k, %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit
  tail call void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) #15
  br label %bb.q

bb.m:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit
  %i.bv = load i64, ptr %3, align 8
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i64, ptr %i.bx monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2
  %i.cc = and i16 %i.cb, -96
  %.not.i21 = icmp eq i16 %i.cc, 32
  br i1 %.not.i21, label %bb.n, label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

bb.n:                                             ; preds = %bb.m
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !8, !noundef !9
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.cg = load i8, ptr %i.cf, align 8, !range !8
  %i.ch = trunc nuw i8 %i.cg to i1
  %not..i.i.i23 = xor i1 %i.ce, true
  %i.ci = select i1 %not..i.i.i23, i1 true, i1 %i.ch
  br i1 %i.ci, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.ck = load i8, ptr %i.cj, align 8, !range !8, !noundef !9
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24: ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.cn = load ptr, ptr %i.cm, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25

_ZNK2v88internal7Isolate12string_tableEv.exit.i25: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24, %bb.n
  %.pn.i.i26 = phi ptr [ %i.cn, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24 ], [ %1, %bb.n ]
  %.in.i.i27 = getelementptr inbounds nuw i8, ptr %.pn.i.i26, i64 58464
  %i.co = load ptr, ptr %.in.i.i27, align 8
  %i.cp = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %3) #15
  br label %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28

_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28: ; preds = %bb.m, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25
  %.sroa.05.0.i22 = phi ptr [ %i.cp, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25 ], [ %3, %bb.m ]
  store ptr %.sroa.05.0.i22, ptr %i.s, align 8
  tail call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %0) #15
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal7Factory15InternalizeNameINS0_4NameEQsr3stdE16is_convertible_vINS0_12DirectHandleIT_EENS4_IS3_EEEEES7_S6_.exit28, %bb.l
  ret void
}

declare ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #9 comdat {
bb.a:
  tail call void @abort() #12
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

declare ptr @_ZN2v88internal6Object15ConvertToLengthEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object15ConvertToStringINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = !{!"branch_weights", !"expected", i32 2145766516, i32 1717132}
!13 = distinct !{!13, !5}
!14 = !{!"branch_weights", i32 2146410443, i32 1073205}
!15 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!16 = distinct !{!16, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !5, !24, !25}
!20 = distinct !{!20, !5, !24, !25}
!21 = distinct !{!21, !5, !24}
!22 = !{!17}
!23 = !{!18}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"branch_weights", i32 4, i32 12}
end_hunk_2
