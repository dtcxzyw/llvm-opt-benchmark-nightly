Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSLexer?download=true
inline.NumInlined: 2539
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN6hermes17parseIntWithRadixILb1EN4llvh8ArrayRefIcEEEENS_8OptValueIdEET0_i:bb.a
  %i.am = sext i32 %i.al to i64
  br label %.outer

.outer:                                           ; preds = %.loopexit, %.preheader
  %.072.ph = phi double [ 0.000000e+00, %.preheader ], [ %.072.ph141, %.loopexit ] ; 2 uses
  %.056.ph = phi i64 [ 53, %.preheader ], [ %.056.ph148, %.loopexit ] ; 2 uses
  %.054.ph = phi double [ 0.000000e+00, %.preheader ], [ %.054.ph154, %.loopexit ] ; 2 uses
  %.051.ph = phi i64 [ 0, %.preheader ], [ %.3, %.loopexit ]
  %.049.ph = phi i8 [ 0, %.preheader ], [ %.049.ph161, %.loopexit ] ; 2 uses
  %.047.ph = phi i8 [ 0, %.preheader ], [ %.047.ph167, %.loopexit ] ; 2 uses
  %.044.ph = phi i32 [ 0, %.preheader ], [ %.044.ph169, %.loopexit ] ; 2 uses
  %.041.ph = phi ptr [ %0, %.preheader ], [ %.243, %.loopexit ] ; 2 uses
  %.0.ph = phi i64 [ 0, %.preheader ], [ %i.bj, %.loopexit ] ; 2 uses
  %i.an = icmp eq i64 %.0.ph, 0
  br i1 %i.an, label %.lr.ph.split.us, label %.loopexit

.outer.jt4:                                       ; preds = %.loopexit.jt3, %bb.k, %bb.l
  %i.ao = phi i64 [ %i.ci, %bb.l ], [ %i.bj, %bb.k ], [ %i.bm, %.loopexit.jt3 ] ; 2 uses
  %.243184 = phi ptr [ %.243182, %bb.l ], [ %.243, %bb.k ], [ %.243185.ph, %.loopexit.jt3 ] ; 2 uses
  %.173.jt4 = phi double [ %.072.ph139, %bb.l ], [ %.072.ph141, %bb.k ], [ %.173.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %.157.jt4 = phi i64 [ %.056.ph146, %bb.l ], [ %.056.ph148, %bb.k ], [ %.157.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %.155.jt4 = phi double [ %i.cj, %bb.l ], [ %i.ch, %bb.k ], [ %i.bn, %.loopexit.jt3 ] ; 2 uses
  %.150.jt4 = phi i8 [ %.049.ph159, %bb.l ], [ %.049.ph161, %bb.k ], [ %.150.jt3.ph, %.loopexit.jt3 ] ; 2 uses
  %.148.jt4 = phi i8 [ %.047.ph165, %bb.l ], [ %.047.ph167, %bb.k ], [ %.148.jt3.ph, %.loopexit.jt3 ] ; 2 uses
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

.outer.jt0:                                       ; preds = %.preheader194.preheader, %.loopexit.jt0
  %i.at = phi i64 [ %i.bt, %.loopexit.jt0 ], [ %i.bj, %.preheader194.preheader ] ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.split.us, label %.loopexit.jt0

.outer.jt1:                                       ; preds = %.preheader194._crit_edge, %bb.j
  %i.av = phi i64 [ %i.bz, %bb.j ], [ %.lcssa213, %.preheader194._crit_edge ] ; 3 uses
  %.243186 = phi ptr [ %.243181, %bb.j ], [ %.243, %.preheader194._crit_edge ] ; 2 uses
  %.3178 = phi i64 [ %.3173, %bb.j ], [ %.3, %.preheader194._crit_edge ] ; 2 uses
  %.173.jt1 = phi double [ %i.ce, %bb.j ], [ 1.000000e+00, %.preheader194._crit_edge ] ; 2 uses
  %.157.jt1 = phi i64 [ %i.cf, %bb.j ], [ %i.by, %.preheader194._crit_edge ] ; 2 uses
  %.155.jt1 = phi double [ %.054.ph151, %bb.j ], [ %.054.ph154, %.preheader194._crit_edge ] ; 2 uses
  %.150.jt1 = phi i8 [ %.049.ph158, %bb.j ], [ %.049.ph161, %.preheader194._crit_edge ] ; 2 uses
  %.148.jt1 = phi i8 [ %.047.ph164, %bb.j ], [ %.047.ph167, %.preheader194._crit_edge ] ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.split.us, label %.loopexit.jt1

.lr.ph.split.us:                                  ; preds = %.outer.jt0, %.outer.jt3, %.outer.jt4, %.outer.jt2, %.outer.jt1, %.outer
  %.041.ph170 = phi ptr [ %.243184, %.outer.jt4 ], [ %.243185.ph, %.outer.jt3 ], [ %.243181, %.outer.jt2 ], [ %.041.ph, %.outer ], [ %.243186, %.outer.jt1 ], [ %.243, %.outer.jt0 ] ; 2 uses
  %.044.ph168 = phi i32 [ 4, %.outer.jt4 ], [ 3, %.outer.jt3 ], [ 2, %.outer.jt2 ], [ %.044.ph, %.outer ], [ 1, %.outer.jt1 ], [ 0, %.outer.jt0 ] ; 2 uses
  %.047.ph162 = phi i8 [ %.148.jt4, %.outer.jt4 ], [ %.148.jt3.ph, %.outer.jt3 ], [ %.047.ph164, %.outer.jt2 ], [ %.047.ph, %.outer ], [ %.148.jt1, %.outer.jt1 ], [ %.047.ph167, %.outer.jt0 ] ; 3 uses
  %.049.ph155 = phi i8 [ %.150.jt4, %.outer.jt4 ], [ %.150.jt3.ph, %.outer.jt3 ], [ %i.ca, %.outer.jt2 ], [ %.049.ph, %.outer ], [ %.150.jt1, %.outer.jt1 ], [ %.049.ph161, %.outer.jt0 ] ; 2 uses
  %.054.ph149 = phi double [ %.155.jt4, %.outer.jt4 ], [ %.155.jt3, %.outer.jt3 ], [ %.054.ph151, %.outer.jt2 ], [ %.054.ph, %.outer ], [ %.155.jt1, %.outer.jt1 ], [ %.054.ph154, %.outer.jt0 ] ; 3 uses
  %.056.ph142 = phi i64 [ %.157.jt4, %.outer.jt4 ], [ %.157.jt3.ph, %.outer.jt3 ], [ 0, %.outer.jt2 ], [ %.056.ph, %.outer ], [ %.157.jt1, %.outer.jt1 ], [ %.056.ph148, %.outer.jt0 ]
  %.072.ph135 = phi double [ %.173.jt4, %.outer.jt4 ], [ %.173.jt3.ph, %.outer.jt3 ], [ %i.ce, %.outer.jt2 ], [ %.072.ph, %.outer ], [ %.173.jt1, %.outer.jt1 ], [ %.072.ph141, %.outer.jt0 ] ; 4 uses
  %i.ax = icmp eq ptr %.041.ph170, %i.a
  br i1 %i.ax, label %.split.us, label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph.split.us, %bb.i
  %.04193.us101 = phi ptr [ %.142.us, %bb.i ], [ %.041.ph170, %.lr.ph.split.us ] ; 3 uses
  %i.ay = load i8, ptr %.04193.us101, align 1, !tbaa !66 ; 3 uses
  %i.az = icmp eq i8 %i.ay, 95
  br i1 %i.az, label %bb.i, label %.thread80, !prof !62, !llvm.loop !309

bb.i:                                             ; preds = %.lr.ph102
  %.142.us = getelementptr inbounds nuw i8, ptr %.04193.us101, i64 1 ; 2 uses
  %i.ba = icmp eq ptr %.142.us, %i.a
  br i1 %i.ba, label %.split.us, label %.lr.ph102

.split.us:                                        ; preds = %.lr.ph.split.us, %bb.i
  switch i32 %.044.ph168, label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit [
    i32 4, label %bb.n
    i32 3, label %bb.m
  ]

.thread80:                                        ; preds = %.lr.ph102
  %i.bb = or i8 %i.ay, 32
  %i.bc = add i8 %i.ay, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.bc, 10
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = sext i8 %i.bb to i64
  %i.bf = add nsw i64 %i.be, -87
  %.152 = select i1 %or.cond, i64 %i.bd, i64 %i.bf
  %.14284 = getelementptr inbounds nuw i8, ptr %.04193.us101, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.outer, %.thread80
  %.044.ph169 = phi i32 [ %.044.ph, %.outer ], [ %.044.ph168, %.thread80 ] ; 2 uses
  %.047.ph167 = phi i8 [ %.047.ph, %.outer ], [ %.047.ph162, %.thread80 ] ; 7 uses
  %.049.ph161 = phi i8 [ %.049.ph, %.outer ], [ %.049.ph155, %.thread80 ] ; 8 uses
  %.054.ph154 = phi double [ %.054.ph, %.outer ], [ %.054.ph149, %.thread80 ] ; 6 uses
  %.056.ph148 = phi i64 [ %.056.ph, %.outer ], [ %.056.ph142, %.thread80 ] ; 8 uses
  %.072.ph141 = phi double [ %.072.ph, %.outer ], [ %.072.ph135, %.thread80 ] ; 7 uses
  %.3 = phi i64 [ %.051.ph, %.outer ], [ %.152, %.thread80 ] ; 7 uses
  %.243 = phi ptr [ %.041.ph, %.outer ], [ %.14284, %.thread80 ] ; 8 uses
  %.2 = phi i64 [ %.0.ph, %.outer ], [ %i.am, %.thread80 ] ; 2 uses
  %i.bg = and i64 %.2, %.3
  %i.bh = icmp ne i64 %i.bg, 0                    ; 4 uses
  %i.bi = zext i1 %i.bh to i8                     ; 2 uses
  %i.bj = lshr i64 %.2, 1                         ; 8 uses
  switch i32 %.044.ph169, label %.outer [
    i32 0, label %.preheader194.preheader
    i32 1, label %bb.j
    i32 2, label %.outer.jt3.preheader
    i32 3, label %bb.k
    i32 4, label %bb.l
  ], !llvm.loop !309

.preheader194.preheader:                          ; preds = %.loopexit
  br i1 %i.bh, label %.preheader194._crit_edge, label %.outer.jt0

.loopexit.jt4:                                    ; preds = %.outer.jt4
  %i.bk = lshr i64 %i.ao, 1
  br label %bb.l

.loopexit.jt3:                                    ; preds = %.outer.jt3
  %i.bl = and i64 %i.aq, %.3177.ph
  %.not = icmp eq i64 %i.bl, 0
  %i.bm = lshr i64 %i.aq, 1                       ; 2 uses
  %i.bn = fmul double %.155.jt3, 2.000000e+00     ; 2 uses
  br i1 %.not, label %.outer.jt3, label %.outer.jt4

.loopexit.jt2:                                    ; preds = %.outer.jt2
  %i.bo = and i64 %i.bz, %.3173
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = zext i1 %i.bp to i8
  %i.br = lshr i64 %i.bz, 1
  br label %.outer.jt3.preheader

.loopexit.jt0:                                    ; preds = %.outer.jt0
  %i.bs = and i64 %i.at, %.3
  %.not225 = icmp eq i64 %i.bs, 0
  %i.bt = lshr i64 %i.at, 1                       ; 2 uses
  br i1 %.not225, label %.outer.jt0, label %.preheader194._crit_edge

.loopexit.jt1:                                    ; preds = %.outer.jt1
  %i.bu = and i64 %i.av, %.3178
  %i.bv = icmp ne i64 %i.bu, 0                    ; 2 uses
  %i.bw = zext i1 %i.bv to i8
  %i.bx = lshr i64 %i.av, 1
  br label %bb.j

.preheader194._crit_edge:                         ; preds = %.loopexit.jt0, %.preheader194.preheader
  %.lcssa213 = phi i64 [ %i.bj, %.preheader194.preheader ], [ %i.bt, %.loopexit.jt0 ]
  %i.by = add i64 %.056.ph148, -1
  br label %.outer.jt1

bb.j:                                             ; preds = %.loopexit.jt1, %.loopexit
  %i.bz = phi i64 [ %i.bx, %.loopexit.jt1 ], [ %i.bj, %.loopexit ] ; 4 uses
  %i.ca = phi i8 [ %i.bw, %.loopexit.jt1 ], [ %i.bi, %.loopexit ] ; 2 uses
  %i.cb = phi i1 [ %i.bv, %.loopexit.jt1 ], [ %i.bh, %.loopexit ]
  %.243181 = phi ptr [ %.243186, %.loopexit.jt1 ], [ %.243, %.loopexit ] ; 3 uses
  %.3173 = phi i64 [ %.3178, %.loopexit.jt1 ], [ %.3, %.loopexit ] ; 3 uses
  %.047.ph164 = phi i8 [ %.148.jt1, %.loopexit.jt1 ], [ %.047.ph167, %.loopexit ] ; 2 uses
  %.049.ph158 = phi i8 [ %.150.jt1, %.loopexit.jt1 ], [ %.049.ph161, %.loopexit ]
  %.054.ph151 = phi double [ %.155.jt1, %.loopexit.jt1 ], [ %.054.ph154, %.loopexit ] ; 2 uses
  %.056.ph145 = phi i64 [ %.157.jt1, %.loopexit.jt1 ], [ %.056.ph148, %.loopexit ]
  %.072.ph138 = phi double [ %.173.jt1, %.loopexit.jt1 ], [ %.072.ph141, %.loopexit ]
  %i.cc = fmul double %.072.ph138, 2.000000e+00
  %i.cd = uitofp i1 %i.cb to double
  %i.ce = fadd double %i.cc, %i.cd                ; 3 uses
  %i.cf = add i64 %.056.ph145, -1                 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.outer.jt2, label %.outer.jt1

bb.k:                                             ; preds = %.loopexit
  %i.ch = fmul double %.054.ph154, 2.000000e+00   ; 2 uses
  br i1 %i.bh, label %.outer.jt4, label %.outer.jt3.preheader

.outer.jt3.preheader:                             ; preds = %.loopexit.jt2, %.loopexit, %bb.k
  %.ph = phi i64 [ %i.bj, %bb.k ], [ %i.br, %.loopexit.jt2 ], [ %i.bj, %.loopexit ]
  %.243185.ph = phi ptr [ %.243, %bb.k ], [ %.243181, %.loopexit.jt2 ], [ %.243, %.loopexit ] ; 2 uses
  %.3177.ph = phi i64 [ %.3, %bb.k ], [ %.3173, %.loopexit.jt2 ], [ %.3, %.loopexit ]
  %.173.jt3.ph = phi double [ %.072.ph141, %bb.k ], [ %i.ce, %.loopexit.jt2 ], [ %.072.ph141, %.loopexit ] ; 2 uses
  %.157.jt3.ph = phi i64 [ %.056.ph148, %bb.k ], [ 0, %.loopexit.jt2 ], [ %.056.ph148, %.loopexit ] ; 2 uses
  %.155.jt3.ph = phi double [ %i.ch, %bb.k ], [ 2.000000e+00, %.loopexit.jt2 ], [ 2.000000e+00, %.loopexit ]
  %.150.jt3.ph = phi i8 [ %.049.ph161, %bb.k ], [ %i.ca, %.loopexit.jt2 ], [ %.049.ph161, %.loopexit ] ; 2 uses
  %.148.jt3.ph = phi i8 [ %.047.ph167, %bb.k ], [ %i.bq, %.loopexit.jt2 ], [ %i.bi, %.loopexit ] ; 2 uses
  br label %.outer.jt3

bb.l:                                             ; preds = %.loopexit.jt4, %.loopexit
  %i.ci = phi i64 [ %i.bk, %.loopexit.jt4 ], [ %i.bj, %.loopexit ]
  %.243182 = phi ptr [ %.243184, %.loopexit.jt4 ], [ %.243, %.loopexit ]
  %.047.ph165 = phi i8 [ %.148.jt4, %.loopexit.jt4 ], [ %.047.ph167, %.loopexit ]
  %.049.ph159 = phi i8 [ %.150.jt4, %.loopexit.jt4 ], [ %.049.ph161, %.loopexit ]
  %.054.ph152 = phi double [ %.155.jt4, %.loopexit.jt4 ], [ %.054.ph154, %.loopexit ]
  %.056.ph146 = phi i64 [ %.157.jt4, %.loopexit.jt4 ], [ %.056.ph148, %.loopexit ]
  %.072.ph139 = phi double [ %.173.jt4, %.loopexit.jt4 ], [ %.072.ph141, %.loopexit ]
  %i.cj = fmul double %.054.ph152, 2.000000e+00
  br label %.outer.jt4

bb.m:                                             ; preds = %.split.us
  %i.ck = trunc nuw i8 %.047.ph162 to i1
  %3 = uitofp nneg i8 %.049.ph155 to double
  %4 = select i1 %i.ck, double %3, double 0.000000e+00
  %i.cl = fadd double %.072.ph135, %4
  %i.cm = fmul double %.054.ph149, %i.cl
  br label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit

bb.n:                                             ; preds = %.split.us
  %i.cn = uitofp nneg i8 %.047.ph162 to double
  %i.co = fadd double %.072.ph135, %i.cn
  %i.cp = fmul double %.054.ph149, %i.co
  br label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit

_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit: ; preds = %bb.g, %bb.h, %bb.a, %.loopexit88, %bb.n, %bb.m, %.split.us, %bb.b
  %.sroa.070.0 = phi double [ 0.000000e+00, %bb.b ], [ %i.cm, %bb.m ], [ 0.000000e+00, %bb.a ], [ %.5.ph, %.loopexit88 ], [ %.072.ph135, %.split.us ], [ %i.cp, %bb.n ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.g ]
  %.sroa.371.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.m ], [ 1, %bb.a ], [ 1, %.loopexit88 ], [ 1, %.split.us ], [ 1, %bb.n ], [ 0, %bb.h ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { double, i8 } poison, double %.sroa.070.0, 0
  %.fca.1.insert = insertvalue { double, i8 } %.fca.0.insert, i8 %.sroa.371.0, 1
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
