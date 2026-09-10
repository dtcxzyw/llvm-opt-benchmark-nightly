Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSLexer?download=true
inline.NumInlined: 2539
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN6hermes17parseIntWithRadixILb1EN4llvh8ArrayRefIcEEEENS_8OptValueIdEET0_i:bb.a
  %i.al = ashr i32 %2, 1
  %i.am = sext i32 %i.al to i64
  br label %.outer

.outer:                                           ; preds = %.loopexit, %.preheader
  %.073.ph = phi double [ 0.000000e+00, %.preheader ], [ %.073.ph142, %.loopexit ] ; 2 uses
  %.056.ph = phi i64 [ 53, %.preheader ], [ %.056.ph149, %.loopexit ] ; 2 uses
  %.054.ph = phi double [ 0.000000e+00, %.preheader ], [ %.054.ph155, %.loopexit ] ; 2 uses
  %.051.ph = phi i64 [ 0, %.preheader ], [ %.3, %.loopexit ]
  %.049.ph = phi i8 [ 0, %.preheader ], [ %.049.ph162, %.loopexit ] ; 2 uses
  %.047.ph = phi i8 [ 0, %.preheader ], [ %.047.ph168, %.loopexit ] ; 2 uses
  %.044.ph = phi i32 [ 0, %.preheader ], [ %.044.ph170, %.loopexit ] ; 2 uses
  %.041.ph = phi ptr [ %0, %.preheader ], [ %.243, %.loopexit ] ; 2 uses
  %.0.ph = phi i64 [ 0, %.preheader ], [ %i.bj, %.loopexit ] ; 2 uses
  %i.an = icmp eq i64 %.0.ph, 0
  br i1 %i.an, label %.lr.ph.split.us, label %.loopexit

.outer.jt4:                                       ; preds = %.loopexit.jt3, %bb.k, %bb.l
  %i.ao = phi i64 [ %i.ci, %bb.l ], [ %i.bj, %bb.k ], [ %i.bm, %.loopexit.jt3 ] ; 2 uses
  %.243185 = phi ptr [ %.243183, %bb.l ], [ %.243, %bb.k ], [ %.243186.ph, %.loopexit.jt3 ] ; 2 uses
  %.174.jt4 = phi double [ %.073.ph140, %bb.l ], [ %.073.ph142, %bb.k ], [ %.174.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %.157.jt4 = phi i64 [ %.056.ph147, %bb.l ], [ %.056.ph149, %bb.k ], [ %.157.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %.155.jt4 = phi double [ %i.cj, %bb.l ], [ %i.ch, %bb.k ], [ %i.bn, %.loopexit.jt3 ] ; 2 uses
  %.150.jt4 = phi i8 [ %.049.ph160, %bb.l ], [ %.049.ph162, %bb.k ], [ %.150.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %.148.jt4 = phi i8 [ %.047.ph166, %bb.l ], [ %.047.ph168, %bb.k ], [ %.148.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.split.us, label %.loopexit.jt4

.outer.jt3:                                       ; preds = %.outer.jt3.preheader, %.loopexit.jt3
  %i.aq = phi i64 [ %i.bm, %.loopexit.jt3 ], [ %.ph, %.outer.jt3.preheader ] ; 3 uses
  %.155.jt3 = phi double [ %i.bn, %.loopexit.jt3 ], [ %.155.jt3.ph, %.outer.jt3.preheader ] ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.split.us, label %.loopexit.jt3

.outer.jt2:                                       ; preds = %bb.j
  %i.as = icmp eq i64 %i.bz, 0
  br i1 %i.as, label %.lr.ph.split.us, label %.loopexit.jt2

.outer.jt0:                                       ; preds = %.preheader195.preheader, %.loopexit.jt0
  %i.at = phi i64 [ %i.bt, %.loopexit.jt0 ], [ %i.bj, %.preheader195.preheader ] ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.split.us, label %.loopexit.jt0

.outer.jt1:                                       ; preds = %.preheader195._crit_edge, %bb.j
  %i.av = phi i64 [ %i.bz, %bb.j ], [ %.lcssa214, %.preheader195._crit_edge ] ; 3 uses
  %.243187 = phi ptr [ %.243182, %bb.j ], [ %.243, %.preheader195._crit_edge ] ; 2 uses
  %.3179 = phi i64 [ %.3174, %bb.j ], [ %.3, %.preheader195._crit_edge ] ; 2 uses
  %.174.jt1 = phi double [ %i.ce, %bb.j ], [ 1.000000e+00, %.preheader195._crit_edge ] ; 2 uses
  %.157.jt1 = phi i64 [ %i.cf, %bb.j ], [ %i.by, %.preheader195._crit_edge ] ; 2 uses
  %.155.jt1 = phi double [ %.054.ph152, %bb.j ], [ %.054.ph155, %.preheader195._crit_edge ] ; 2 uses
  %.150.jt1 = phi i8 [ %.049.ph159, %bb.j ], [ %.049.ph162, %.preheader195._crit_edge ] ; 2 uses
  %.148.jt1 = phi i8 [ %.047.ph165, %bb.j ], [ %.047.ph168, %.preheader195._crit_edge ] ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.split.us, label %.loopexit.jt1

.lr.ph.split.us:                                  ; preds = %.outer.jt0, %.outer.jt3, %.outer.jt4, %.outer.jt2, %.outer.jt1, %.outer
  %.041.ph171 = phi ptr [ %.243185, %.outer.jt4 ], [ %.243186.ph, %.outer.jt3 ], [ %.243182, %.outer.jt2 ], [ %.041.ph, %.outer ], [ %.243187, %.outer.jt1 ], [ %.243, %.outer.jt0 ] ; 2 uses
  %.044.ph169 = phi i32 [ 4, %.outer.jt4 ], [ 3, %.outer.jt3 ], [ 2, %.outer.jt2 ], [ %.044.ph, %.outer ], [ 1, %.outer.jt1 ], [ 0, %.outer.jt0 ] ; 2 uses
  %.047.ph163 = phi i8 [ %.148.jt4, %.outer.jt4 ], [ %.148.jt3.ph, %.outer.jt3 ], [ %.047.ph165, %.outer.jt2 ], [ %.047.ph, %.outer ], [ %.148.jt1, %.outer.jt1 ], [ %.047.ph168, %.outer.jt0 ] ; 3 uses
  %.049.ph156 = phi i8 [ %.150.jt4, %.outer.jt4 ], [ %.150.jt3.ph, %.outer.jt3 ], [ %i.ca, %.outer.jt2 ], [ %.049.ph, %.outer ], [ %.150.jt1, %.outer.jt1 ], [ %.049.ph162, %.outer.jt0 ] ; 2 uses
  %.054.ph150 = phi double [ %.155.jt4, %.outer.jt4 ], [ %.155.jt3, %.outer.jt3 ], [ %.054.ph152, %.outer.jt2 ], [ %.054.ph, %.outer ], [ %.155.jt1, %.outer.jt1 ], [ %.054.ph155, %.outer.jt0 ] ; 3 uses
  %.056.ph143 = phi i64 [ %.157.jt4, %.outer.jt4 ], [ %.157.jt3.ph, %.outer.jt3 ], [ 0, %.outer.jt2 ], [ %.056.ph, %.outer ], [ %.157.jt1, %.outer.jt1 ], [ %.056.ph149, %.outer.jt0 ]
  %.073.ph136 = phi double [ %.174.jt4, %.outer.jt4 ], [ %.174.jt3.ph, %.outer.jt3 ], [ %i.ce, %.outer.jt2 ], [ %.073.ph, %.outer ], [ %.174.jt1, %.outer.jt1 ], [ %.073.ph142, %.outer.jt0 ] ; 4 uses
  %i.ax = icmp eq ptr %.041.ph171, %i.a
  br i1 %i.ax, label %.split.us, label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph.split.us, %bb.i
  %.04194.us102 = phi ptr [ %.142.us, %bb.i ], [ %.041.ph171, %.lr.ph.split.us ] ; 3 uses
  %i.ay = load i8, ptr %.04194.us102, align 1, !tbaa !72 ; 3 uses
  %i.az = icmp eq i8 %i.ay, 95
  br i1 %i.az, label %bb.i, label %.thread81, !prof !68, !llvm.loop !328

bb.i:                                             ; preds = %.lr.ph103
  %.142.us = getelementptr inbounds nuw i8, ptr %.04194.us102, i64 1 ; 2 uses
  %i.ba = icmp eq ptr %.142.us, %i.a
  br i1 %i.ba, label %.split.us, label %.lr.ph103

.split.us:                                        ; preds = %.lr.ph.split.us, %bb.i
  switch i32 %.044.ph169, label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit [
    i32 4, label %bb.n
    i32 3, label %bb.m
  ]

.thread81:                                        ; preds = %.lr.ph103
  %i.bb = or i8 %i.ay, 32
  %i.bc = add i8 %i.ay, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.bc, 10
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = sext i8 %i.bb to i64
  %i.bf = add nsw i64 %i.be, -87
  %.152 = select i1 %or.cond, i64 %i.bd, i64 %i.bf
  %.14285 = getelementptr inbounds nuw i8, ptr %.04194.us102, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.outer, %.thread81
  %.044.ph170 = phi i32 [ %.044.ph, %.outer ], [ %.044.ph169, %.thread81 ] ; 2 uses
  %.047.ph168 = phi i8 [ %.047.ph, %.outer ], [ %.047.ph163, %.thread81 ] ; 7 uses
  %.049.ph162 = phi i8 [ %.049.ph, %.outer ], [ %.049.ph156, %.thread81 ] ; 8 uses
  %.054.ph155 = phi double [ %.054.ph, %.outer ], [ %.054.ph150, %.thread81 ] ; 6 uses
  %.056.ph149 = phi i64 [ %.056.ph, %.outer ], [ %.056.ph143, %.thread81 ] ; 8 uses
  %.073.ph142 = phi double [ %.073.ph, %.outer ], [ %.073.ph136, %.thread81 ] ; 7 uses
  %.3 = phi i64 [ %.051.ph, %.outer ], [ %.152, %.thread81 ] ; 7 uses
  %.243 = phi ptr [ %.041.ph, %.outer ], [ %.14285, %.thread81 ] ; 8 uses
  %.2 = phi i64 [ %.0.ph, %.outer ], [ %i.am, %.thread81 ] ; 2 uses
  %i.bg = and i64 %.2, %.3
  %i.bh = icmp ne i64 %i.bg, 0                    ; 4 uses
  %i.bi = zext i1 %i.bh to i8                     ; 2 uses
  %i.bj = lshr i64 %.2, 1                         ; 8 uses
  switch i32 %.044.ph170, label %.outer [
    i32 0, label %.preheader195.preheader
    i32 1, label %bb.j
    i32 2, label %.outer.jt3.preheader
    i32 3, label %bb.k
    i32 4, label %bb.l
  ], !llvm.loop !328

.preheader195.preheader:                          ; preds = %.loopexit
  br i1 %i.bh, label %.preheader195._crit_edge, label %.outer.jt0

.loopexit.jt4:                                    ; preds = %.outer.jt4
  %i.bk = lshr i64 %i.ao, 1
  br label %bb.l

.loopexit.jt3:                                    ; preds = %.outer.jt3
  %i.bl = and i64 %i.aq, %.3178.ph
  %.not = icmp eq i64 %i.bl, 0
  %i.bm = lshr i64 %i.aq, 1                       ; 2 uses
  %i.bn = fmul double %.155.jt3, 2.000000e+00     ; 2 uses
  br i1 %.not, label %.outer.jt3, label %.outer.jt4

.loopexit.jt2:                                    ; preds = %.outer.jt2
  %i.bo = and i64 %i.bz, %.3174
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = zext i1 %i.bp to i8
  %i.br = lshr i64 %i.bz, 1
  br label %.outer.jt3.preheader

.loopexit.jt0:                                    ; preds = %.outer.jt0
  %i.bs = and i64 %i.at, %.3
  %.not226 = icmp eq i64 %i.bs, 0
  %i.bt = lshr i64 %i.at, 1                       ; 2 uses
  br i1 %.not226, label %.outer.jt0, label %.preheader195._crit_edge

.loopexit.jt1:                                    ; preds = %.outer.jt1
  %i.bu = and i64 %i.av, %.3179
  %i.bv = icmp ne i64 %i.bu, 0                    ; 2 uses
  %i.bw = zext i1 %i.bv to i8
  %i.bx = lshr i64 %i.av, 1
  br label %bb.j

.preheader195._crit_edge:                         ; preds = %.loopexit.jt0, %.preheader195.preheader
  %.lcssa214 = phi i64 [ %i.bj, %.preheader195.preheader ], [ %i.bt, %.loopexit.jt0 ]
  %i.by = add i64 %.056.ph149, -1
  br label %.outer.jt1

bb.j:                                             ; preds = %.loopexit.jt1, %.loopexit
  %i.bz = phi i64 [ %i.bx, %.loopexit.jt1 ], [ %i.bj, %.loopexit ] ; 4 uses
  %i.ca = phi i8 [ %i.bw, %.loopexit.jt1 ], [ %i.bi, %.loopexit ] ; 2 uses
  %i.cb = phi i1 [ %i.bv, %.loopexit.jt1 ], [ %i.bh, %.loopexit ]
  %.243182 = phi ptr [ %.243187, %.loopexit.jt1 ], [ %.243, %.loopexit ] ; 3 uses
  %.3174 = phi i64 [ %.3179, %.loopexit.jt1 ], [ %.3, %.loopexit ] ; 3 uses
  %.047.ph165 = phi i8 [ %.148.jt1, %.loopexit.jt1 ], [ %.047.ph168, %.loopexit ] ; 2 uses
  %.049.ph159 = phi i8 [ %.150.jt1, %.loopexit.jt1 ], [ %.049.ph162, %.loopexit ]
  %.054.ph152 = phi double [ %.155.jt1, %.loopexit.jt1 ], [ %.054.ph155, %.loopexit ] ; 2 uses
  %.056.ph146 = phi i64 [ %.157.jt1, %.loopexit.jt1 ], [ %.056.ph149, %.loopexit ]
  %.073.ph139 = phi double [ %.174.jt1, %.loopexit.jt1 ], [ %.073.ph142, %.loopexit ]
  %i.cc = fmul double %.073.ph139, 2.000000e+00
  %i.cd = uitofp i1 %i.cb to double
  %i.ce = fadd double %i.cc, %i.cd                ; 3 uses
  %i.cf = add i64 %.056.ph146, -1                 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.outer.jt2, label %.outer.jt1

bb.k:                                             ; preds = %.loopexit
  %i.ch = fmul double %.054.ph155, 2.000000e+00   ; 2 uses
  br i1 %i.bh, label %.outer.jt4, label %.outer.jt3.preheader

.outer.jt3.preheader:                             ; preds = %.loopexit.jt2, %.loopexit, %bb.k
  %.ph = phi i64 [ %i.bj, %bb.k ], [ %i.br, %.loopexit.jt2 ], [ %i.bj, %.loopexit ]
  %.243186.ph = phi ptr [ %.243, %bb.k ], [ %.243182, %.loopexit.jt2 ], [ %.243, %.loopexit ] ; 2 uses
  %.3178.ph = phi i64 [ %.3, %bb.k ], [ %.3174, %.loopexit.jt2 ], [ %.3, %.loopexit ]
  %.174.jt3.ph = phi double [ %.073.ph142, %bb.k ], [ %i.ce, %.loopexit.jt2 ], [ %.073.ph142, %.loopexit ] ; 2 uses
  %.157.jt3.ph = phi i64 [ %.056.ph149, %bb.k ], [ 0, %.loopexit.jt2 ], [ %.056.ph149, %.loopexit ] ; 2 uses
  %.155.jt3.ph = phi double [ %i.ch, %bb.k ], [ 2.000000e+00, %.loopexit.jt2 ], [ 2.000000e+00, %.loopexit ]
  %.150.jt3.ph = phi i8 [ %.049.ph162, %bb.k ], [ %i.ca, %.loopexit.jt2 ], [ %.049.ph162, %.loopexit ] ; 2 uses
  %.148.jt3.ph = phi i8 [ %.047.ph168, %bb.k ], [ %i.bq, %.loopexit.jt2 ], [ %i.bi, %.loopexit ] ; 2 uses
  br label %.outer.jt3

bb.l:                                             ; preds = %.loopexit.jt4, %.loopexit
  %i.ci = phi i64 [ %i.bk, %.loopexit.jt4 ], [ %i.bj, %.loopexit ]
  %.243183 = phi ptr [ %.243185, %.loopexit.jt4 ], [ %.243, %.loopexit ]
  %.047.ph166 = phi i8 [ %.148.jt4, %.loopexit.jt4 ], [ %.047.ph168, %.loopexit ]
  %.049.ph160 = phi i8 [ %.150.jt4, %.loopexit.jt4 ], [ %.049.ph162, %.loopexit ]
  %.054.ph153 = phi double [ %.155.jt4, %.loopexit.jt4 ], [ %.054.ph155, %.loopexit ]
  %.056.ph147 = phi i64 [ %.157.jt4, %.loopexit.jt4 ], [ %.056.ph149, %.loopexit ]
  %.073.ph140 = phi double [ %.174.jt4, %.loopexit.jt4 ], [ %.073.ph142, %.loopexit ]
  %i.cj = fmul double %.054.ph153, 2.000000e+00
  br label %.outer.jt4

bb.m:                                             ; preds = %.split.us
  %3 = and i8 %.047.ph163, %.049.ph156
  %i.ck = uitofp nneg i8 %3 to double
  %i.cl = fadd double %.073.ph136, %i.ck
  %i.cm = fmul double %.054.ph150, %i.cl
  br label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit

bb.n:                                             ; preds = %.split.us
  %i.cn = uitofp nneg i8 %.047.ph163 to double
  %i.co = fadd double %.073.ph136, %i.cn
  %i.cp = fmul double %.054.ph150, %i.co
  br label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit

_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit: ; preds = %bb.g, %bb.h, %bb.a, %.loopexit89, %bb.n, %bb.m, %.split.us, %bb.b
  %.sroa.071.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.cm, %bb.m ], [ 0.000000e+00, %bb.a ], [ %.5.ph, %.loopexit89 ], [ %.073.ph136, %.split.us ], [ %i.cp, %bb.n ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.g ]
  %.sroa.372.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.m ], [ 1, %bb.a ], [ 1, %.loopexit89 ], [ 1, %.split.us ], [ 1, %bb.n ], [ 0, %bb.h ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { double, i8 } poison, double %.sroa.071.0, 0
  %.fca.1.insert = insertvalue { double, i8 } %.fca.0.insert, i8 %.sroa.372.0, 1
  ret { double, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 1, 48) i32 @_ZN6hermes6parser7JSLexer16scanReservedWordEPKcj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1160) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  switch i32 %2, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit.thread [
    i32 8, label %_ZNK4llvh9StringRef6equalsES0_.exit.i298.i
    i32 3, label %_ZNK4llvh9StringRef6equalsES0_.exit.i291.i
    i32 2, label %_ZNK4llvh9StringRef6equalsES0_.exit.i284.i
    i32 5, label %_ZNK4llvh9StringRef6equalsES0_.exit.i263.i
    i32 6, label %_ZNK4llvh9StringRef6equalsES0_.exit.i249.i
    i32 4, label %_ZNK4llvh9StringRef6equalsES0_.exit.i235.i
    i32 10, label %_ZNK4llvh9StringRef6equalsES0_.exit.i144.i
    i32 7, label %_ZNK4llvh9StringRef6equalsES0_.exit.i179.i
    i32 9, label %_ZNK4llvh9StringRef6equalsES0_.exit.i32.i
  ]

_ZNK4llvh9StringRef6equalsES0_.exit.i298.i:       ; preds = %bb.a
  %i.a = load i64, ptr %1, align 1
  %i.b = icmp ne i64 %i.a, 7957695015192261990
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i256.i

_ZNK4llvh9StringRef6equalsES0_.exit.i291.i:       ; preds = %bb.a
  %i.e = load i16, ptr %1, align 1
  %i.f = xor i16 %i.e, 28518
  %i.g = getelementptr i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = xor i16 %i.i, 114
  %i.k = or i16 %i.f, %i.j
  %i.l = icmp ne i16 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i270.i

_ZNK4llvh9StringRef6equalsES0_.exit.i284.i:       ; preds = %bb.a
  %i.o = load i16, ptr %1, align 1
  %i.p = icmp ne i16 %i.o, 26217
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i277.i

_ZNK4llvh9StringRef6equalsES0_.exit.i277.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i284.i
  %i.s = load i16, ptr %1, align 1
  %i.t = icmp ne i16 %i.s, 28265
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i165.i

_ZNK4llvh9StringRef6equalsES0_.exit.i270.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i291.i
  %i.w = load i16, ptr %1, align 1
  %i.x = xor i16 %i.w, 24950
  %i.y = getelementptr i8, ptr %1, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = xor i16 %i.aa, 114
  %i.ac = or i16 %i.x, %i.ab
  %i.ad = icmp ne i16 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i137.i

_ZNK4llvh9StringRef6equalsES0_.exit.i263.i:       ; preds = %bb.a
  %i.ag = load i32, ptr %1, align 1
  %i.ah = xor i32 %i.ag, 1634038370
  %i.ai = getelementptr i8, ptr %1, i64 4
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = xor i32 %i.ak, 107
  %i.am = or i32 %i.ah, %i.al
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i221.i

_ZNK4llvh9StringRef6equalsES0_.exit.i256.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i298.i
  %i.aq = load i64, ptr %1, align 1
  %i.ar = icmp ne i64 %i.aq, 7310870969309884259
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i186.i

_ZNK4llvh9StringRef6equalsES0_.exit.i249.i:       ; preds = %bb.a
  %i.au = load i32, ptr %1, align 1
  %i.av = xor i32 %i.au, 1970562418
  %i.aw = getelementptr i8, ptr %1, i64 4
  %i.ax = load i16, ptr %i.aw, align 1
  %i.ay = zext i16 %i.ax to i32
  %i.az = xor i32 %i.ay, 28274
  %i.ba = or i32 %i.av, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i242.i

_ZNK4llvh9StringRef6equalsES0_.exit.i242.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i249.i
  %i.be = load i32, ptr %1, align 1
  %i.bf = xor i32 %i.be, 1953068915
  %i.bg = getelementptr i8, ptr %1, i64 4
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = zext i16 %i.bh to i32
  %i.bj = xor i32 %i.bi, 26723
  %i.bk = or i32 %i.bf, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i172.i

_ZNK4llvh9StringRef6equalsES0_.exit.i235.i:       ; preds = %bb.a
  %i.bo = load i32, ptr %1, align 1
  %i.bp = icmp ne i32 %i.bo, 1936287860
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i228.i

_ZNK4llvh9StringRef6equalsES0_.exit.i228.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i235.i
  %i.bs = load i32, ptr %1, align 1
  %i.bt = icmp ne i32 %i.bs, 1702195828
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i214.i

_ZNK4llvh9StringRef6equalsES0_.exit.i221.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i263.i
  %i.bw = load i32, ptr %1, align 1
  %i.bx = xor i32 %i.bw, 1936482662
  %i.by = getelementptr i8, ptr %1, i64 4
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = xor i32 %i.ca, 101
  %i.cc = or i32 %i.bx, %i.cb
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i200.i

_ZNK4llvh9StringRef6equalsES0_.exit.i214.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i228.i
  %i.cg = load i32, ptr %1, align 1
  %i.ch = icmp ne i32 %i.cg, 1819047278
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i207.i

_ZNK4llvh9StringRef6equalsES0_.exit.i207.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i214.i
  %i.ck = load i32, ptr %1, align 1
  %i.cl = icmp ne i32 %i.ck, 1702060387
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i158.i

_ZNK4llvh9StringRef6equalsES0_.exit.i200.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i221.i
  %i.co = load i32, ptr %1, align 1
  %i.cp = xor i32 %i.co, 1668571491
  %i.cq = getelementptr i8, ptr %1, i64 4
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i32
  %i.ct = xor i32 %i.cs, 104
  %i.cu = or i32 %i.cp, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i193.i

_ZNK4llvh9StringRef6equalsES0_.exit.i193.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i200.i
  %i.cy = load i32, ptr %1, align 1
  %i.cz = xor i32 %i.cy, 1936617315
  %i.da = getelementptr i8, ptr %1, i64 4
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = xor i32 %i.dc, 116
  %i.de = or i32 %i.cz, %i.dd
  %i.df = icmp ne i32 %i.de, 0
  %i.dg = zext i1 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit.i130.i

_ZNK4llvh9StringRef6equalsES0_.exit.i186.i:       ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i256.i
  %i.di = load i64, ptr %1, align 1
  %i.dj = icmp ne i64 %i.di, 8243108387020236132
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit, label %_ZN6hermes6parserL17matchReservedWordEPKcj.exit.thread

end_hunk_0
