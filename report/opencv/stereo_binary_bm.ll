Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_bm?download=true
inline.NumInlined: 327
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK2cv6stereo8Matching7makeMapclERKNS_5RangeE:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %.lr.ph.i.1
  %.160.i.1 = phi double [ %.160.i, %bb.f ], [ %i.al, %.lr.ph.i.1 ], [ %.160.i, %bb.g ], [ %.160.i, %bb.e ] ; 3 uses
  %.158.i.1 = phi double [ %.158.i, %bb.f ], [ %.160.i, %.lr.ph.i.1 ], [ %.158.i, %bb.g ], [ %i.al, %bb.e ] ; 2 uses
  %.156.i.1 = phi double [ %.156.i, %bb.f ], [ %.158.i, %.lr.ph.i.1 ], [ %i.al, %bb.g ], [ %.158.i, %bb.e ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.f ], [ %indvars72.i.1, %.lr.ph.i.1 ], [ %.1.i, %bb.g ], [ %.1.i, %bb.e ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !238

_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa ] ; 2 uses
  %.05468.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa ] ; 3 uses
  %.05567.i.epil.init = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader.i ], [ %.156.i.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa ] ; 2 uses
  %.05766.i.epil.init = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader.i ], [ %.158.i.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa ] ; 3 uses
  %.05965.i.epil.init = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader.i ], [ %.160.i.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod115 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %indvars72.i.epil = trunc i64 %indvars.iv.i.epil.init to i32
  %gep.epil = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.i.epil.init
  %i.ap = load i16, ptr %gep.epil, align 2, !tbaa !140
  %i.aq = sitofp i16 %i.ap to double              ; 5 uses
  %i.ar = fcmp ogt double %.05965.i.epil.init, %i.aq
  br i1 %i.ar, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.as = fcmp ogt double %.05766.i.epil.init, %i.aq
  br i1 %i.as, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = fcmp ogt double %.05567.i.epil.init, %i.aq
  br i1 %i.at, label %bb.k, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit

bb.k:                                             ; preds = %bb.j
  br label %_ZN2cv6stereo8Matching5minimEPsiidi.exit

_ZN2cv6stereo8Matching5minimEPsiidi.exit:         ; preds = %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa, %bb.k, %bb.j, %bb.i, %.lr.ph.i.epil.preheader, %.lr.ph
  %.059.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph ], [ %.160.i.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa ], [ %.05965.i.epil.init, %bb.j ], [ %i.aq, %.lr.ph.i.epil.preheader ], [ %.05965.i.epil.init, %bb.k ], [ %.05965.i.epil.init, %bb.i ] ; 2 uses
  %.055.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph ], [ %.156.i.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa ], [ %.05567.i.epil.init, %bb.j ], [ %.05766.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.aq, %bb.k ], [ %.05766.i.epil.init, %bb.i ]
  %.054.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %.1.i.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit.loopexit.unr-lcssa ], [ %.05468.i.epil.init, %bb.j ], [ %indvars72.i.epil, %.lr.ph.i.epil.preheader ], [ %.05468.i.epil.init, %bb.k ], [ %.05468.i.epil.init, %bb.i ] ; 14 uses
  %i.au = fcmp oeq double %.059.lcssa.i, 0.000000e+00
  %i.av = fdiv double %.055.lcssa.i, %.059.lcssa.i
  %i.aw = fcmp ugt double %i.av, %i.ab
  %or.cond.i = select i1 %i.au, i1 true, i1 %i.aw
  %.not81 = icmp eq i32 %.054.lcssa.i, -1
  %.not = select i1 %or.cond.i, i1 true, i1 %.not81
  br i1 %.not, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %_ZN2cv6stereo8Matching5minimEPsiidi.exit
  %i.ax = trunc nsw i64 %i.y to i32               ; 3 uses
  %i.ay = sub nsw i32 %i.ax, %.054.lcssa.i        ; 6 uses
  br i1 %.not.not64.i, label %.lr.ph.preheader.i49, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit64

.lr.ph.preheader.i49:                             ; preds = %bb.l
  %wide.trip.count.i50 = zext i32 %i.aa to i64    ; 2 uses
  %xtraiter116 = and i64 %wide.trip.count.i50, 1
  %i.az = icmp eq i32 %i.z, 0
  br i1 %i.az, label %.lr.ph.i51.epil.preheader, label %.lr.ph.preheader.i49.new

.lr.ph.preheader.i49.new:                         ; preds = %.lr.ph.preheader.i49
  %unroll_iter122 = and i64 %wide.trip.count.i50, 4294967294
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.s, %.lr.ph.preheader.i49.new
  %indvars.iv.i52 = phi i64 [ 0, %.lr.ph.preheader.i49.new ], [ %indvars.iv.next.i62.1, %bb.s ] ; 4 uses
  %.05468.i53 = phi i32 [ 0, %.lr.ph.preheader.i49.new ], [ %.1.i61.1, %bb.s ] ; 3 uses
  %.05567.i54 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader.i49.new ], [ %.156.i60.1, %bb.s ] ; 2 uses
  %.05766.i55 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader.i49.new ], [ %.158.i59.1, %bb.s ] ; 5 uses
  %.05965.i56 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader.i49.new ], [ %.160.i58.1, %bb.s ] ; 5 uses
  %niter123 = phi i64 [ 0, %.lr.ph.preheader.i49.new ], [ %niter123.next.1, %bb.s ]
  %indvars72.i57 = trunc i64 %indvars.iv.i52 to i32 ; 2 uses
  %i.ba = add nsw i32 %i.ay, %indvars72.i57
  %i.bb = mul nsw i32 %i.ba, %i.aa
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [2 x i8], ptr %i.x, i64 %indvars.iv.i52
  %i.be = getelementptr [2 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !140
  %i.bg = sitofp i16 %i.bf to double              ; 6 uses
  %i.bh = fcmp ogt double %.05965.i56, %i.bg
  br i1 %i.bh, label %.lr.ph.i51.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i51
  %i.bi = fcmp ogt double %.05766.i55, %i.bg
  br i1 %i.bi, label %.lr.ph.i51.1, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = fcmp ogt double %.05567.i54, %i.bg
  br i1 %i.bj, label %bb.o, label %.lr.ph.i51.1

bb.o:                                             ; preds = %bb.n
  br label %.lr.ph.i51.1

.lr.ph.i51.1:                                     ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.i51
  %.160.i58 = phi double [ %.05965.i56, %bb.n ], [ %i.bg, %.lr.ph.i51 ], [ %.05965.i56, %bb.o ], [ %.05965.i56, %bb.m ] ; 5 uses
  %.158.i59 = phi double [ %.05766.i55, %bb.n ], [ %.05965.i56, %.lr.ph.i51 ], [ %.05766.i55, %bb.o ], [ %i.bg, %bb.m ] ; 5 uses
  %.156.i60 = phi double [ %.05567.i54, %bb.n ], [ %.05766.i55, %.lr.ph.i51 ], [ %i.bg, %bb.o ], [ %.05766.i55, %bb.m ] ; 2 uses
  %.1.i61 = phi i32 [ %.05468.i53, %bb.n ], [ %indvars72.i57, %.lr.ph.i51 ], [ %.05468.i53, %bb.o ], [ %.05468.i53, %bb.m ] ; 3 uses
  %indvars.iv.next.i62 = or disjoint i64 %indvars.iv.i52, 1 ; 2 uses
  %indvars72.i57.1 = trunc i64 %indvars.iv.next.i62 to i32 ; 2 uses
  %i.bk = add nsw i32 %i.ay, %indvars72.i57.1
  %i.bl = mul nsw i32 %i.bk, %i.aa
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [2 x i8], ptr %i.x, i64 %indvars.iv.next.i62
  %i.bo = getelementptr [2 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !140
  %i.bq = sitofp i16 %i.bp to double              ; 6 uses
  %i.br = fcmp ogt double %.160.i58, %i.bq
  br i1 %i.br, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i51.1
  %i.bs = fcmp ogt double %.158.i59, %i.bq
  br i1 %i.bs, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = fcmp ogt double %.156.i60, %i.bq
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %.lr.ph.i51.1
  %.160.i58.1 = phi double [ %.160.i58, %bb.q ], [ %i.bq, %.lr.ph.i51.1 ], [ %.160.i58, %bb.r ], [ %.160.i58, %bb.p ] ; 3 uses
  %.158.i59.1 = phi double [ %.158.i59, %bb.q ], [ %.160.i58, %.lr.ph.i51.1 ], [ %.158.i59, %bb.r ], [ %i.bq, %bb.p ] ; 2 uses
  %.156.i60.1 = phi double [ %.156.i60, %bb.q ], [ %.158.i59, %.lr.ph.i51.1 ], [ %i.bq, %bb.r ], [ %.158.i59, %bb.p ] ; 3 uses
  %.1.i61.1 = phi i32 [ %.1.i61, %bb.q ], [ %indvars72.i57.1, %.lr.ph.i51.1 ], [ %.1.i61, %bb.r ], [ %.1.i61, %bb.p ] ; 3 uses
  %indvars.iv.next.i62.1 = add nuw nsw i64 %indvars.iv.i52, 2 ; 2 uses
  %niter123.next.1 = add i64 %niter123, 2         ; 2 uses
  %niter123.ncmp.1 = icmp eq i64 %niter123.next.1, %unroll_iter122
  br i1 %niter123.ncmp.1, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa, label %.lr.ph.i51, !llvm.loop !238

_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa: ; preds = %bb.s
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit64, label %.lr.ph.i51.epil.preheader

.lr.ph.i51.epil.preheader:                        ; preds = %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa, %.lr.ph.preheader.i49
  %indvars.iv.i52.epil.init = phi i64 [ 0, %.lr.ph.preheader.i49 ], [ %indvars.iv.next.i62.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa ] ; 2 uses
  %.05468.i53.epil.init = phi i32 [ 0, %.lr.ph.preheader.i49 ], [ %.1.i61.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa ] ; 3 uses
  %.05567.i54.epil.init = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader.i49 ], [ %.156.i60.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa ] ; 2 uses
  %.05766.i55.epil.init = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader.i49 ], [ %.158.i59.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa ] ; 3 uses
  %.05965.i56.epil.init = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.preheader.i49 ], [ %.160.i58.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod121 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod121)
  %indvars72.i57.epil = trunc i64 %indvars.iv.i52.epil.init to i32 ; 2 uses
  %i.bu = add nsw i32 %i.ay, %indvars72.i57.epil
  %i.bv = mul nsw i32 %i.bu, %i.aa
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr [2 x i8], ptr %i.x, i64 %indvars.iv.i52.epil.init
  %i.by = getelementptr [2 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !140
  %i.ca = sitofp i16 %i.bz to double              ; 5 uses
  %i.cb = fcmp ogt double %.05965.i56.epil.init, %i.ca
  br i1 %i.cb, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit64, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i51.epil.preheader
  %i.cc = fcmp ogt double %.05766.i55.epil.init, %i.ca
  br i1 %i.cc, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = fcmp ogt double %.05567.i54.epil.init, %i.ca
  br i1 %i.cd, label %bb.v, label %_ZN2cv6stereo8Matching5minimEPsiidi.exit64

bb.v:                                             ; preds = %bb.u
  br label %_ZN2cv6stereo8Matching5minimEPsiidi.exit64

_ZN2cv6stereo8Matching5minimEPsiidi.exit64:       ; preds = %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa, %bb.v, %bb.u, %bb.t, %.lr.ph.i51.epil.preheader, %bb.l
  %.059.lcssa.i44 = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.l ], [ %.160.i58.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa ], [ %.05965.i56.epil.init, %bb.u ], [ %i.ca, %.lr.ph.i51.epil.preheader ], [ %.05965.i56.epil.init, %bb.v ], [ %.05965.i56.epil.init, %bb.t ] ; 2 uses
  %.055.lcssa.i45 = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.l ], [ %.156.i60.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa ], [ %.05567.i54.epil.init, %bb.u ], [ %.05766.i55.epil.init, %.lr.ph.i51.epil.preheader ], [ %i.ca, %bb.v ], [ %.05766.i55.epil.init, %bb.t ]
  %.054.lcssa.i46 = phi i32 [ 0, %bb.l ], [ %.1.i61.1, %_ZN2cv6stereo8Matching5minimEPsiidi.exit64.loopexit.unr-lcssa ], [ %.05468.i53.epil.init, %bb.u ], [ %indvars72.i57.epil, %.lr.ph.i51.epil.preheader ], [ %.05468.i53.epil.init, %bb.v ], [ %.05468.i53.epil.init, %bb.t ] ; 12 uses
  %i.ce = fcmp oeq double %.059.lcssa.i44, 0.000000e+00
  %i.cf = fdiv double %.055.lcssa.i45, %.059.lcssa.i44
  %i.cg = fcmp ugt double %i.cf, %i.ab
  %or.cond.i47 = select i1 %i.ce, i1 true, i1 %i.cg
  %.not4182 = icmp eq i32 %.054.lcssa.i46, -1
  %.not41 = select i1 %or.cond.i47, i1 true, i1 %.not4182
  br i1 %.not41, label %bb.al, label %bb.w

bb.w:                                             ; preds = %_ZN2cv6stereo8Matching5minimEPsiidi.exit64
  %i.ch = icmp eq i32 %.054.lcssa.i46, 0
  %i.ci = icmp eq i32 %.054.lcssa.i46, %i.z
  %or.cond57.i = or i1 %i.ch, %i.ci
  br i1 %or.cond57.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cj = sitofp i32 %.054.lcssa.i46 to double
  br label %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit

bb.y:                                             ; preds = %bb.w
  %i.ck = add i32 %i.ay, -1
  %i.cl = add i32 %i.ck, %.054.lcssa.i46
  %i.cm = mul nsw i32 %i.cl, %i.aa
  %i.cn = add nsw i32 %i.cm, %.054.lcssa.i46
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [2 x i8], ptr %i.x, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !140 ; 2 uses
  %i.cs = sitofp i16 %i.cr to double
  %i.ct = add i32 %i.ay, 1
  %i.cu = add i32 %i.ct, %.054.lcssa.i46
  %i.cv = mul nsw i32 %i.cu, %i.aa
  %i.cw = add nsw i32 %i.cv, %.054.lcssa.i46
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [2 x i8], ptr %i.x, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !140 ; 2 uses
  %i.db = sitofp i16 %i.da to double
  %i.dc = add nsw i32 %.054.lcssa.i46, %i.ay
  %i.dd = mul nsw i32 %i.dc, %i.aa
  %i.de = add nsw i32 %i.dd, %.054.lcssa.i46
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !140
  %i.di = sitofp i16 %i.dh to double              ; 2 uses
  %i.dj = fsub double %i.cs, %i.di                ; 7 uses
  %i.dk = fsub double %i.db, %i.di                ; 7 uses
  %i.dl = fcmp oeq double %i.dj, 0.000000e+00
  %i.dm = fcmp oeq double %i.dk, 0.000000e+00
  %or.cond.i65 = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond.i65, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dn = sitofp i32 %.054.lcssa.i46 to double
  br label %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit

bb.aa:                                            ; preds = %bb.y
  %2 = icmp sgt i16 %i.cr, %i.da
  br i1 %2, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.do = fmul nnan double %i.dk, %i.dk
  %i.dp = fmul nnan double %i.dj, %i.dj
  %i.dq = fdiv double %i.do, %i.dp
  %i.dr = fdiv double %i.dk, %i.dj
  %i.ds = fadd double %i.dr, %i.dq
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.ds, double -2.500000e-01, double 5.000000e-01)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.du = fmul nnan double %i.dj, %i.dj
  %i.dv = fmul nnan double %i.dk, %i.dk
  %i.dw = fdiv double %i.du, %i.dv
  %i.dx = fdiv double %i.dj, %i.dk
  %i.dy = fadd double %i.dx, %i.dw
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dy, double -2.500000e-01, double 5.000000e-01)
  %i.ea = fneg double %i.dz
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0.i = phi double [ %i.dt, %bb.ab ], [ %i.ea, %bb.ac ] ; 3 uses
  %i.eb = tail call double @llvm.fabs.f64(double %.0.i)
  %or.cond3.i = fcmp ugt double %i.eb, 5.000000e-01
  %i.ec = sitofp i32 %.054.lcssa.i46 to double
  %i.ed = fadd double %.0.i, %i.ec
  %.1.i66 = select i1 %or.cond3.i, double %.0.i, double %i.ed
  br label %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit

_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit: ; preds = %bb.x, %bb.z, %bb.ad
  %.152.i = phi double [ %i.cj, %bb.x ], [ %i.dn, %bb.z ], [ %.1.i66, %bb.ad ]
  %i.ee = icmp eq i32 %.054.lcssa.i, 0
  %i.ef = icmp eq i32 %.054.lcssa.i, %i.z
  %or.cond57.i67 = or i1 %i.ee, %i.ef
  br i1 %or.cond57.i67, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit
  %i.eg = sitofp i32 %.054.lcssa.i to double
  br label %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit73

bb.af:                                            ; preds = %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit
  %i.eh = mul nsw i32 %i.aa, %i.ax
  %i.ei = add nsw i32 %.054.lcssa.i, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [2 x i8], ptr %i.x, i64 %i.ej ; 3 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 -2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !140 ; 2 uses
  %i.en = sitofp i16 %i.em to double
  %i.eo = load <2 x i16>, ptr %i.ek, align 2, !tbaa !140
  %i.ep = sitofp <2 x i16> %i.eo to <2 x double>  ; 3 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0
  %i.er = fsub double %i.en, %i.eq                ; 7 uses
  %shift = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.ep ; 5 uses
  %3 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.es = fcmp oeq double %i.er, 0.000000e+00
  %i.et = fcmp oeq double %3, 0.000000e+00
  %or.cond.i68 = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond.i68, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eu = sitofp i32 %.054.lcssa.i to double
  br label %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit73

bb.ah:                                            ; preds = %bb.af
  %4 = getelementptr i8, ptr %i.ek, i64 2
  %5 = load i16, ptr %4, align 2, !tbaa !140
  %6 = icmp sgt i16 %i.em, %5
  br i1 %6, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %foldExtExtBinop113 = fmul nnan <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %7 = extractelement <2 x double> %foldExtExtBinop113, i64 0
  %i.ev = fmul nnan double %i.er, %i.er
  %i.ew = fdiv double %7, %i.ev
  %i.ex = fdiv double %3, %i.er
  %i.ey = fadd double %i.ex, %i.ew
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ey, double -2.500000e-01, double 5.000000e-01)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fa = fmul nnan double %i.er, %i.er
  %foldExtExtBinop115 = fmul nnan <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %8 = extractelement <2 x double> %foldExtExtBinop115, i64 0
  %i.fb = fdiv double %i.fa, %8
  %i.fc = fdiv double %i.er, %3
  %i.fd = fadd double %i.fc, %i.fb
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fd, double -2.500000e-01, double 5.000000e-01)
  %i.ff = fneg double %i.fe
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.i69 = phi double [ %i.ez, %bb.ai ], [ %i.ff, %bb.aj ] ; 3 uses
  %i.fg = tail call double @llvm.fabs.f64(double %.0.i69)
  %or.cond3.i70 = fcmp ugt double %i.fg, 5.000000e-01
  %i.fh = sitofp i32 %.054.lcssa.i to double
  %i.fi = fadd double %.0.i69, %i.fh
  %.1.i71 = select i1 %or.cond3.i70, double %.0.i69, double %i.fi
  br label %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit73

_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit73: ; preds = %bb.ae, %bb.ag, %bb.ak
  %.152.i72 = phi double [ %i.eg, %bb.ae ], [ %i.eu, %bb.ag ], [ %.1.i71, %bb.ak ] ; 2 uses
  %i.fj = fsub double %.152.i, %.152.i72
  %i.fk = tail call noundef double @llvm.fabs.f64(double %i.fj)
  %i.fl = load i32, ptr %i.i, align 4, !tbaa !122
  %i.fm = sitofp i32 %i.fl to double
  %i.fn = fcmp ugt double %i.fk, %i.fm
  br i1 %i.fn, label %.sink.split, label %.sink.split.sink.split

bb.al:                                            ; preds = %_ZN2cv6stereo8Matching5minimEPsiidi.exit64
  %i.fo = sub nuw nsw i32 %i.w, %indvars89
  %.not42 = icmp sgt i32 %i.fo, %i.z
  br i1 %.not42, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fp = icmp eq i32 %.054.lcssa.i, 0
  %i.fq = icmp eq i32 %.054.lcssa.i, %i.z
  %or.cond57.i74 = or i1 %i.fp, %i.fq
  br i1 %or.cond57.i74, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fr = sitofp i32 %.054.lcssa.i to double
  br label %.sink.split.sink.split

bb.ao:                                            ; preds = %bb.am
  %i.fs = mul nsw i32 %i.aa, %i.ax
  %i.ft = add nsw i32 %.054.lcssa.i, %i.fs
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr [2 x i8], ptr %i.x, i64 %i.fu ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -2
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !140 ; 2 uses
  %i.fy = sitofp i16 %i.fx to double
  %i.fz = load <2 x i16>, ptr %i.fv, align 2, !tbaa !140
  %i.ga = sitofp <2 x i16> %i.fz to <2 x double>  ; 3 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 0
  %i.gc = fsub double %i.fy, %i.gb                ; 7 uses
  %shift117 = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop118 = fsub <2 x double> %shift117, %i.ga ; 5 uses
  %9 = extractelement <2 x double> %foldExtExtBinop118, i64 0 ; 3 uses
  %i.gd = fcmp oeq double %i.gc, 0.000000e+00
  %i.ge = fcmp oeq double %9, 0.000000e+00
  %or.cond.i75 = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond.i75, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gf = sitofp i32 %.054.lcssa.i to double
  br label %.sink.split.sink.split

bb.aq:                                            ; preds = %bb.ao
  %10 = getelementptr i8, ptr %i.fv, i64 2
  %11 = load i16, ptr %10, align 2, !tbaa !140
  %12 = icmp sgt i16 %i.fx, %11
  br i1 %12, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %foldExtExtBinop120 = fmul nnan <2 x double> %foldExtExtBinop118, %foldExtExtBinop118
  %13 = extractelement <2 x double> %foldExtExtBinop120, i64 0
  %i.gg = fmul nnan double %i.gc, %i.gc
  %i.gh = fdiv double %13, %i.gg
  %i.gi = fdiv double %9, %i.gc
  %i.gj = fadd double %i.gi, %i.gh
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.gj, double -2.500000e-01, double 5.000000e-01)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.gl = fmul nnan double %i.gc, %i.gc
  %foldExtExtBinop122 = fmul nnan <2 x double> %foldExtExtBinop118, %foldExtExtBinop118
  %14 = extractelement <2 x double> %foldExtExtBinop122, i64 0
  %i.gm = fdiv double %i.gl, %14
  %i.gn = fdiv double %i.gc, %9
  %i.go = fadd double %i.gn, %i.gm
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.go, double -2.500000e-01, double 5.000000e-01)
  %i.gq = fneg double %i.gp
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i76 = phi double [ %i.gk, %bb.ar ], [ %i.gq, %bb.as ] ; 3 uses
  %i.gr = tail call double @llvm.fabs.f64(double %.0.i76)
  %or.cond3.i77 = fcmp ugt double %i.gr, 5.000000e-01
  %i.gs = sitofp i32 %.054.lcssa.i to double
  %i.gt = fadd double %.0.i76, %i.gs
  %.1.i78 = select i1 %or.cond3.i77, double %.0.i76, double %i.gt
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.at, %bb.ap, %bb.an, %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit73
  %.152.i72.sink = phi double [ %.152.i72, %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit73 ], [ %i.fr, %bb.an ], [ %i.gf, %bb.ap ], [ %.1.i78, %bb.at ]
  %i.gu = load i32, ptr %i.j, align 8, !tbaa !123
  %i.gv = sitofp i32 %i.gu to double
  %i.gw = fmul double %.152.i72.sink, %i.gv
  %i.gx = fptoui double %i.gw to i8
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_ZN2cv6stereo8Matching5minimEPsiidi.exit, %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit73
  %.sink = phi i8 [ 0, %_ZN2cv6stereo8Matching22symetricVInterpolationEPsiiii.exit73 ], [ 0, %_ZN2cv6stereo8Matching5minimEPsiidi.exit ], [ %i.gx, %.sink.split.sink.split ]
  %i.gy = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 %i.y
  store i8 %.sink, ptr %i.gz, align 1, !tbaa !28
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.al
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ha = load i32, ptr %i.e, align 8, !tbaa !121 ; 3 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp slt i64 %indvars.iv.next, %i.hb
  br i1 %i.hc, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !239
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6stereo8Matching9Median1x9IhED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6stereo8Matching9Median1x9IhEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 68 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !102    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !104
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.preheader50.lr.ph, label %._crit_edge61

.preheader50.lr.ph:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.f, align 4, !tbaa !173  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.preheader50.preheader, label %._crit_edge61

.preheader50.preheader:                           ; preds = %.preheader50.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader50.preheader, %._crit_edge58
  %i.as = phi i32 [ %i.bh, %._crit_edge58 ], [ %i.k, %.preheader50.preheader ] ; 4 uses
  %.059 = phi i32 [ %i.bi, %._crit_edge58 ], [ %i.b, %.preheader50.preheader ] ; 6 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %.preheader50
  %i.au = icmp slt i32 %.059, 1
  br i1 %i.au, label %.lr.ph57.split.us, label %.lr.ph57.split

.lr.ph57.split.us:                                ; preds = %.lr.ph57, %.lr.ph57.split.us
  %i.av = phi i32 [ %i.bf, %.lr.ph57.split.us ], [ %i.as, %.lr.ph57 ]
  %.04356.us = phi i32 [ %i.be, %.lr.ph57.split.us ], [ 0, %.lr.ph57 ] ; 2 uses
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.ax = mul nsw i32 %i.av, %.059
  %i.ay = add nsw i32 %i.ax, %.04356.us
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !171
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.az
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !28
  %i.be = add nuw nsw i32 %.04356.us, 1           ; 2 uses
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !173 ; 3 uses
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph57.split.us, label %._crit_edge58, !llvm.loop !240

._crit_edge61:                                    ; preds = %._crit_edge58, %.preheader50.lr.ph, %bb.a
  ret void

._crit_edge58:                                    ; preds = %bb.c, %.lr.ph57.split.us, %.preheader50
  %i.bh = phi i32 [ %i.bf, %.lr.ph57.split.us ], [ %i.as, %.preheader50 ], [ %i.im, %bb.c ]
  %i.bi = add nsw i32 %.059, 1                    ; 2 uses
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !104
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %.preheader50, label %._crit_edge61, !llvm.loop !241

.lr.ph57.split:                                   ; preds = %.lr.ph57, %bb.c
  %i.bl = phi i32 [ %i.im, %bb.c ], [ %i.as, %.lr.ph57 ] ; 3 uses
  %.04356 = phi i32 [ %i.il, %bb.c ], [ 0, %.lr.ph57 ] ; 6 uses
  %i.bm = load i32, ptr %i.g, align 8, !tbaa !172
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = icmp slt i32 %.059, %i.bn
  %i.bp = icmp samesign ugt i32 %.04356, 3
  %or.cond.not49 = select i1 %i.bo, i1 %i.bp, i1 false
  %i.bq = add nsw i32 %i.bl, -4
  %.not = icmp slt i32 %.04356, %i.bq
  %or.cond46 = select i1 %or.cond.not49, i1 %.not, i1 false
  br i1 %or.cond46, label %._crit_edge.4, label %bb.b

bb.b:                                             ; preds = %.lr.ph57.split
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.bs = mul nsw i32 %i.bl, %.059
  %i.bt = add nsw i32 %i.bs, %.04356
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !171
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bu
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !28
  br label %bb.c

._crit_edge.4:                                    ; preds = %.lr.ph57.split
  %i.bz = add nsw i32 %.04356, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ca = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.cb = mul nsw i32 %i.bl, %.059                ; 2 uses
  %i.cc = add i32 %i.bz, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %scevgep = getelementptr i8, ptr %i.ca, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) %scevgep, i64 9, i1 false), !tbaa !28
  %i.ce = load i8, ptr %i.m, align 1, !tbaa !28   ; 2 uses
  %i.cf = load i8, ptr %i.n, align 1, !tbaa !28
  %i.cg = load i8, ptr %i.o, align 1, !tbaa !28
  %i.ch = load i8, ptr %i.p, align 1, !tbaa !28
  %i.ci = load i8, ptr %i.i, align 1, !tbaa !28
  %i.cj = load i8, ptr %i.q, align 1, !tbaa !28
  %i.ck = load i8, ptr %i.r, align 1, !tbaa !28
  %i.cl = load i8, ptr %i.s, align 1, !tbaa !28
  %i.cm = load i8, ptr %i.a, align 1, !tbaa !28   ; 2 uses
  %i.cn = icmp ult i8 %i.cl, %i.cm                ; 2 uses
  %.sroa.sel.idx = zext i1 %i.cn to i64
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx
  %i.co = load i8, ptr %.sroa.sel, align 1, !tbaa !28
  %i.cp = icmp ult i8 %i.ck, %i.co
  %spec.select = zext i1 %i.cn to i32
  %spec.select.180 = select i1 %i.cp, i32 2, i32 %spec.select ; 2 uses
  %i.cq = zext nneg i32 %spec.select.180 to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !28
  %i.ct = icmp ult i8 %i.cj, %i.cs
  %spec.select.282 = select i1 %i.ct, i32 3, i32 %spec.select.180 ; 2 uses
  %i.cu = zext nneg i32 %spec.select.282 to i64
end_hunk_0
