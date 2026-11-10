Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/string-to-double?download=true
inline.NumInlined: 160
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17double_conversionL17RadixStringToIeeeILi4EPKcEEdPT0_S3_btbbdbPb:bb.a

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250: ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250.sink.split, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237
  %.promoted390 = phi ptr [ %i.fe, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237 ], [ %i.ff, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250.sink.split ] ; 2 uses
  %.0115 = phi i1 [ false, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit237 ], [ %.0115.ph, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250.sink.split ]
  %i.fg = load i8, ptr %.promoted390, align 1, !tbaa !24
  %i.fh = sext i8 %i.fg to i32                    ; 2 uses
  %i.fi = add nsw i32 %i.fh, -48
  %or.cond.i264391 = icmp ult i32 %i.fi, 10
  br i1 %or.cond.i264391, label %.lr.ph393, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit277.thread

.lr.ph393:                                        ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250, %.backedge
  %i.fj = phi i32 [ %i.fu, %.backedge ], [ %i.fh, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250 ]
  %.0111392 = phi i32 [ %.1112, %.backedge ], [ 0, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250 ] ; 3 uses
  %i.fk = phi ptr [ %i.fs, %.backedge ], [ %.promoted390, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250 ] ; 2 uses
  %i.fl = add i32 %.0111392, 97200
  %i.fm = icmp ult i32 %i.fl, 194401
  %i.fn = mul nsw i32 %.0111392, 10
  %i.fo = add i32 %i.fn, -48
  %i.fp = add i32 %i.fo, %i.fj
  %.1112 = select i1 %i.fm, i32 %i.fp, i32 %.0111392 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 1 ; 7 uses
  store ptr %i.fq, ptr %0, align 8, !tbaa !17
  %i.fr = icmp eq ptr %i.fq, %1                   ; 2 uses
  br i1 %i.m, label %.split324, label %_ZN17double_conversionL7isDigitEii.exit.thread.i271

.split324:                                        ; preds = %.lr.ph393
  br i1 %i.fr, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit277.thread, label %.backedge

.backedge:                                        ; preds = %bb.an, %bb.am, %switch.early.test356, %.split324, %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
  %i.fs = phi ptr [ %i.fq, %.split324 ], [ %i.fw, %_ZN17double_conversionL7isDigitEii.exit30.thread.i276 ], [ %i.fq, %switch.early.test356 ], [ %i.fq, %bb.am ], [ %i.fq, %bb.an ] ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !24
  %i.fu = sext i8 %i.ft to i32                    ; 2 uses
  %i.fv = add nsw i32 %i.fu, -48
  %or.cond.i264 = icmp ult i32 %i.fv, 10
  br i1 %or.cond.i264, label %.lr.ph393, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit277.thread, !llvm.loop !63

_ZN17double_conversionL7isDigitEii.exit.thread.i271: ; preds = %.lr.ph393
  br i1 %i.fr, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit277.thread, label %bb.am

bb.am:                                            ; preds = %_ZN17double_conversionL7isDigitEii.exit.thread.i271
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 2 ; 4 uses
  %i.fx = icmp eq ptr %i.fw, %1
  br i1 %i.fx, label %.backedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fy = load i8, ptr %i.fq, align 1, !tbaa !24
  %i.fz = sext i8 %i.fy to i32
  %i.ga = icmp eq i32 %i.c, %i.fz
  br i1 %i.ga, label %bb.ao, label %.backedge

bb.ao:                                            ; preds = %bb.an
  %i.gb = load i8, ptr %i.fw, align 1, !tbaa !24  ; 3 uses
  %i.gc = sext i8 %i.gb to i32
  %i.gd = add nsw i32 %i.gc, -48
  %or.cond.i25.i272 = icmp ult i32 %i.gd, 10
  %i.ge = icmp ult i8 %i.gb, 64
  %or.cond19.i26.i273 = and i1 %i.ge, %or.cond.i25.i272
  %i.gf = freeze i1 %or.cond19.i26.i273
  br i1 %i.gf, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276, label %switch.early.test356

switch.early.test356:                             ; preds = %bb.ao
  switch i8 %i.gb, label %.backedge [
    i8 102, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 101, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 100, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 99, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 98, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 97, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 70, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 69, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 68, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 67, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 66, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
    i8 65, label %_ZN17double_conversionL7isDigitEii.exit30.thread.i276
  ]

_ZN17double_conversionL7isDigitEii.exit30.thread.i276: ; preds = %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %switch.early.test356, %bb.ao
  store ptr %i.fw, ptr %0, align 8, !tbaa !17
  br label %.backedge

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit277.thread: ; preds = %.backedge, %.split324, %_ZN17double_conversionL7isDigitEii.exit.thread.i271, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250
  %.2113 = phi i32 [ 0, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit250 ], [ %.1112, %_ZN17double_conversionL7isDigitEii.exit.thread.i271 ], [ %.1112, %.split324 ], [ %.1112, %.backedge ] ; 2 uses
  %i.gg = sub nsw i32 0, %.2113
  %spec.select151 = select i1 %.0115, i32 %i.gg, i32 %.2113
  %i.gh = add nsw i32 %spec.select151, %.7.ph322
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit277.thread, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread
  %.5139.ph320 = phi i64 [ %.5139.ph321, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit277.thread ], [ %.5139.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread ] ; 6 uses
  %.8 = phi i32 [ %i.gh, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit277.thread ], [ %.7.ph, %_ZN17double_conversionL17AdvanceToNonspaceIPKcEEbPT_S3_.exit.thread ] ; 3 uses
  %i.gi = icmp eq i32 %.8, 0
  %i.gj = icmp eq i64 %.5139.ph320, 0             ; 2 uses
  %or.cond5 = select i1 %i.gi, i1 true, i1 %i.gj
  br i1 %or.cond5, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  br i1 %2, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.gj, label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gk = sub nsw i64 0, %.5139.ph320
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.6140 = phi i64 [ %i.gk, %bb.as ], [ %.5139.ph320, %bb.aq ]
  %i.gl = sitofp i64 %.6140 to double
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311

bb.au:                                            ; preds = %bb.ap
  %i.gm = icmp ugt i64 %.5139.ph320, 9007199254740991
  br i1 %i.gm, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.au, %.lr.ph.i.i
  %.01521.i.i = phi i32 [ %i.go, %.lr.ph.i.i ], [ %.8, %bb.au ]
  %.01620.i.i = phi i64 [ %i.gn, %.lr.ph.i.i ], [ %.5139.ph320, %bb.au ] ; 2 uses
  %i.gn = lshr i64 %.01620.i.i, 1                 ; 2 uses
  %i.go = add nsw i32 %.01521.i.i, 1              ; 2 uses
  %i.gp = icmp ugt i64 %.01620.i.i, 18014398509481983
  br i1 %i.gp, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.au
  %.016.lcssa.i.i = phi i64 [ %.5139.ph320, %bb.au ], [ %i.gn, %.lr.ph.i.i ] ; 3 uses
  %.015.lcssa.i.i = phi i32 [ %.8, %bb.au ], [ %i.go, %.lr.ph.i.i ] ; 5 uses
  %i.gq = icmp sgt i32 %.015.lcssa.i.i, 971
  br i1 %i.gq, label %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i
  %i.gr = icmp slt i32 %.015.lcssa.i.i, -1074
  br i1 %i.gr, label %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.av
  %i.gs = icmp ne i32 %.015.lcssa.i.i, -1074
  %i.gt = and i64 %.016.lcssa.i.i, 4503599627370496
  %i.gu = icmp eq i64 %i.gt, 0                    ; 2 uses
  %i.gv = and i1 %i.gs, %i.gu
  br i1 %i.gv, label %.lr.ph25.i.i, label %._crit_edge26.i.i

.lr.ph25.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph25.i.i
  %.124.i.i = phi i32 [ %i.gx, %.lr.ph25.i.i ], [ %.015.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.11723.i.i = phi i64 [ %i.gw, %.lr.ph25.i.i ], [ %.016.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.gw = shl i64 %.11723.i.i, 1                  ; 2 uses
  %i.gx = add nsw i32 %.124.i.i, -1               ; 2 uses
  %i.gy = icmp sgt i32 %.124.i.i, -1073
  %i.gz = and i64 %.11723.i.i, 2251799813685248
  %i.ha = icmp eq i64 %i.gz, 0                    ; 2 uses
  %i.hb = select i1 %i.gy, i1 %i.ha, i1 false
  br i1 %i.hb, label %.lr.ph25.i.i, label %._crit_edge26.i.i, !llvm.loop !5

._crit_edge26.i.i:                                ; preds = %.lr.ph25.i.i, %.preheader.i.i
  %.117.lcssa.i.i = phi i64 [ %.016.lcssa.i.i, %.preheader.i.i ], [ %i.gw, %.lr.ph25.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.015.lcssa.i.i, %.preheader.i.i ], [ %i.gx, %.lr.ph25.i.i ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.gu, %.preheader.i.i ], [ %i.ha, %.lr.ph25.i.i ]
  %i.hc = icmp eq i32 %.1.lcssa.i.i, -1074
  %brmerge.not.i.i = select i1 %i.hc, i1 %.lcssa.i.i, i1 false
  %i.hd = add nsw i32 %.1.lcssa.i.i, 1075
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl nuw nsw i64 %i.he, 52
  %.0.i.i = select i1 %brmerge.not.i.i, i64 0, i64 %i.hf
  %i.hg = and i64 %.117.lcssa.i.i, 4503599627370495
  %i.hh = or disjoint i64 %.0.i.i, %i.hg
  %i.hi = bitcast i64 %i.hh to double
  br label %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit

_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit:  ; preds = %._crit_edge.i.i, %bb.av, %._crit_edge26.i.i
  %.018.i.i = phi double [ %i.hi, %._crit_edge26.i.i ], [ +inf, %._crit_edge.i.i ], [ 0.000000e+00, %bb.av ] ; 2 uses
  %i.hj = fneg double %.018.i.i
  %i.hk = select i1 %2, double %i.hj, double %.018.i.i
  br label %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311

_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit175.thread311: ; preds = %.lr.ph.i, %.lr.ph.i206, %bb.ar, %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit, %bb.at, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread
  %.4 = phi double [ %i.ae, %_ZN17double_conversionL7AdvanceIPKcEEbPT_tiRS3_.exit.thread ], [ -0.000000e+00, %bb.ar ], [ %i.hk, %_ZN17double_conversion6DoubleC2ENS_5DiyFpE.exit ], [ %i.gl, %bb.at ], [ %6, %.lr.ph.i206 ], [ %6, %.lr.ph.i ]
  ret double %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN17double_conversionL17RadixStringToIeeeILi3EPcEEdPT0_S2_btbbdbPb(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readnone captures(address) %1, i1 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4, double noundef %5, i1 noundef zeroext %6, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %7) unnamed_addr #3 {
bb.a:
  store i8 1, ptr %7, align 1, !tbaa !38
  %.promoted = load ptr, ptr %0, align 8, !tbaa !17 ; 4 uses
  %i.a = load i8, ptr %.promoted, align 1, !tbaa !24 ; 2 uses
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %.lr.ph, label %.preheader208

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext i16 %3 to i32
  %i.d = icmp eq i16 %3, 0
  br i1 %i.d, label %.split.us.preheader, label %.lr.ph.split

.split.us.preheader:                              ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !17
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit, label %.backedge.us

.split.us:                                        ; preds = %.backedge.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !17
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit, label %.backedge.us, !llvm.loop !64

.backedge.us:                                     ; preds = %.split.us.preheader, %.split.us
  %i.i = phi ptr [ %i.g, %.split.us ], [ %i.e, %.split.us.preheader ] ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24    ; 2 uses
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %.split.us, label %.preheader208, !llvm.loop !64

.preheader208:                                    ; preds = %.backedge, %.backedge.us, %bb.a
  %i.l = phi i8 [ %i.j, %.backedge.us ], [ %i.a, %bb.a ], [ %i.w, %.backedge ] ; 3 uses
  %.promoted225 = phi ptr [ %i.i, %.backedge.us ], [ %.promoted, %bb.a ], [ %i.x, %.backedge ] ; 2 uses
  %i.m = sext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48
  %or.cond.i226 = icmp ult i32 %i.n, 10
  %i.o = icmp slt i8 %i.l, 56
  %i.p = and i1 %i.o, %or.cond.i226
  br i1 %i.p, label %.lr.ph228, label %._crit_edge

.lr.ph228:                                        ; preds = %.preheader208
  %i.q = select i1 %6, i64 53, i64 24             ; 2 uses
  %i.r = zext i16 %3 to i32                       ; 2 uses
  %i.s = icmp eq i16 %3, 0                        ; 2 uses
  br label %bb.f

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %i.t = phi ptr [ %i.x, %.backedge ], [ %.promoted, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 6 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !17
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit, label %bb.b, !llvm.loop !64

.backedgethread-pre-split:                        ; preds = %.split178, %bb.b, %bb.d
  %.ph = phi ptr [ %i.u, %bb.d ], [ %i.u, %bb.b ], [ %i.z, %.split178 ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !24
  br label %.backedge

.backedge:                                        ; preds = %.backedgethread-pre-split, %bb.c
  %i.w = phi i8 [ %.pr, %.backedgethread-pre-split ], [ %i.ab, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %.ph, %.backedgethread-pre-split ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = icmp eq i8 %i.w, 48
  br i1 %i.y, label %.lr.ph.split, label %.preheader208, !llvm.loop !64

bb.b:                                             ; preds = %.lr.ph.split
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 4 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %.backedgethread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !24   ; 2 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, %i.c
  br i1 %i.ad, label %bb.d, label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !24   ; 2 uses
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48
  %or.cond.i25.i = icmp ult i32 %i.ag, 10
  %i.ah = icmp ult i8 %i.ae, 56
  %or.cond19.i26.i = and i1 %i.ah, %or.cond.i25.i
  br i1 %or.cond19.i26.i, label %.split178, label %.backedgethread-pre-split

.split178:                                        ; preds = %bb.d
  store ptr %i.z, ptr %0, align 8, !tbaa !17
  br label %.backedgethread-pre-split

_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit: ; preds = %.lr.ph.split, %.split.us, %.split.us.preheader
  store i8 0, ptr %7, align 1, !tbaa !38
  %i.ai = select i1 %2, double -0.000000e+00, double 0.000000e+00
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread201

._crit_edge:                                      ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit, %.preheader208
  %.0134.lcssa = phi i64 [ 0, %.preheader208 ], [ %i.as, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit ] ; 2 uses
  %.lcssa214 = phi ptr [ %.promoted225, %.preheader208 ], [ %i.di, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit ] ; 2 uses
  %.not6.not.i = icmp eq ptr %.lcssa214, %1
  %or.cond = or i1 %4, %.not6.not.i
  br i1 %or.cond, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.e
  %i.aj = phi ptr [ %i.an, %bb.e ], [ %.lcssa214, %._crit_edge ] ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !24
  %i.al = sext i8 %i.ak to i32
  %i.am = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.al)
  br i1 %i.am, label %bb.e, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread201

bb.e:                                             ; preds = %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !17
  %.not.not.i = icmp eq ptr %i.an, %1
  br i1 %.not.not.i, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread.thread, label %.lr.ph.i, !llvm.loop !65

bb.f:                                             ; preds = %.lr.ph228, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit
  %i.ao = phi i8 [ %i.l, %.lr.ph228 ], [ %i.dj, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit ] ; 2 uses
  %.0134227 = phi i64 [ 0, %.lr.ph228 ], [ %i.as, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit ]
  %.promoted235 = phi ptr [ %.promoted225, %.lr.ph228 ], [ %i.di, %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit ] ; 4 uses
  %i.ap = sext i8 %i.ao to i64
  %i.aq = shl nsw i64 %.0134227, 3
  %i.ar = add i64 %i.aq, -48
  %i.as = add i64 %i.ar, %i.ap                    ; 7 uses
  %i.at = ashr i64 %i.as, %i.q
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %.lr.ph232, label %._crit_edge233

.lr.ph232:                                        ; preds = %.preheader, %.lr.ph232
  %.0117231 = phi i32 [ %i.aw, %.lr.ph232 ], [ 1, %.preheader ]
  %.0118230 = phi i32 [ %i.ax, %.lr.ph232 ], [ %i.au, %.preheader ] ; 2 uses
  %i.aw = add nuw nsw i32 %.0117231, 1            ; 2 uses
  %i.ax = lshr i32 %.0118230, 1
  %i.ay = icmp samesign ugt i32 %.0118230, 3
  br i1 %i.ay, label %.lr.ph232, label %._crit_edge233, !llvm.loop !66

._crit_edge233:                                   ; preds = %.lr.ph232, %.preheader
  %.0117.lcssa = phi i32 [ 1, %.preheader ], [ %i.aw, %.lr.ph232 ] ; 6 uses
  %notmask = shl nsw i32 -1, %.0117.lcssa
  %i.az = xor i32 %notmask, -1
  %i.ba = trunc i64 %i.as to i32
  %i.bb = and i32 %i.az, %i.ba                    ; 2 uses
  %i.bc = zext nneg i32 %.0117.lcssa to i64
  %i.bd = ashr i64 %i.as, %i.bc                   ; 4 uses
  br i1 %i.s, label %.split.us236, label %.split

.split.us236:                                     ; preds = %._crit_edge233
  %i.be = getelementptr inbounds nuw i8, ptr %.promoted235, i64 1 ; 4 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !17
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZN17double_conversionL7isDigitEii.exit, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us

_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us: ; preds = %.split.us236, %.split183.us
  %i.bg = phi ptr [ %i.bn, %.split183.us ], [ %i.be, %.split.us236 ] ; 3 uses
  %.0116.us239 = phi i1 [ %spec.select206.us, %.split183.us ], [ true, %.split.us236 ] ; 2 uses
  %.2130.us238 = phi i32 [ %i.bm, %.split183.us ], [ %.0117.lcssa, %.split.us236 ] ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !24  ; 3 uses
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48
  %or.cond.i158.us = icmp ult i32 %i.bj, 10
  %i.bk = icmp ult i8 %i.bh, 56
  %or.cond19.i.us = and i1 %i.bk, %or.cond.i158.us
  br i1 %or.cond19.i.us, label %.split183.us, label %_ZN17double_conversionL7isDigitEii.exit

.split183.us:                                     ; preds = %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us
  %i.bl = icmp eq i8 %i.bh, 48
  %spec.select206.us = and i1 %.0116.us239, %i.bl ; 2 uses
  %i.bm = add nuw nsw i32 %.2130.us238, 3         ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 4 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !17
  %i.bo = icmp eq ptr %i.bn, %1
  br i1 %i.bo, label %_ZN17double_conversionL7isDigitEii.exit, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us, !llvm.loop !67

.split:                                           ; preds = %._crit_edge233, %bb.k
  %i.bp = phi i8 [ %i.ce, %bb.k ], [ %i.ao, %._crit_edge233 ]
  %i.bq = phi ptr [ %i.cd, %bb.k ], [ %.promoted235, %._crit_edge233 ] ; 2 uses
  %.2130 = phi i32 [ %i.cj, %bb.k ], [ %.0117.lcssa, %._crit_edge233 ] ; 3 uses
  %.0116 = phi i1 [ %spec.select206, %bb.k ], [ true, %._crit_edge233 ] ; 3 uses
  %i.br = add i8 %i.bp, -56
  %or.cond19.i.not3.i150 = icmp ult i8 %i.br, -8  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 8 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !17
  %i.bt = icmp eq ptr %i.bs, %1                   ; 2 uses
  %brmerge.i151 = select i1 %or.cond19.i.not3.i150, i1 true, i1 %i.bt
  br i1 %brmerge.i151, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157, label %bb.g

bb.g:                                             ; preds = %.split
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, %1
  br i1 %i.bv, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !24
  %i.bx = sext i8 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, %i.r
  br i1 %i.by, label %bb.i, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread

bb.i:                                             ; preds = %bb.h
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !24  ; 2 uses
  %i.ca = sext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48
  %or.cond.i25.i155 = icmp ult i32 %i.cb, 10
  %i.cc = icmp ult i8 %i.bz, 56
  %or.cond19.i26.i156 = and i1 %i.cc, %or.cond.i25.i155
  br i1 %or.cond19.i26.i156, label %bb.j, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.bu, ptr %0, align 8, !tbaa !17
  br label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread

_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157: ; preds = %.split
  %not.or.cond19.i.not3.i152 = xor i1 %or.cond19.i.not3.i150, true
  %.mux.i153 = select i1 %not.or.cond19.i.not3.i152, i1 true, i1 %i.bt
  br i1 %.mux.i153, label %_ZN17double_conversionL7isDigitEii.exit, label %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread

_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread: ; preds = %bb.j, %bb.i, %bb.g, %bb.h, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157
  %i.cd = phi ptr [ %i.bu, %bb.j ], [ %i.bs, %bb.i ], [ %i.bs, %bb.g ], [ %i.bs, %bb.h ], [ %i.bs, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157 ] ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !24  ; 4 uses
  %i.cf = sext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48
  %or.cond.i158 = icmp ult i32 %i.cg, 10
  %i.ch = icmp ult i8 %i.ce, 56
  %or.cond19.i = and i1 %i.ch, %or.cond.i158
  br i1 %or.cond19.i, label %bb.k, label %_ZN17double_conversionL7isDigitEii.exit

bb.k:                                             ; preds = %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread
  %i.ci = icmp eq i8 %i.ce, 48
  %spec.select206 = and i1 %.0116, %i.ci
  %i.cj = add nuw nsw i32 %.2130, 3
  br label %.split, !llvm.loop !67

_ZN17double_conversionL7isDigitEii.exit:          ; preds = %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us, %.split183.us, %.split.us236
  %.promoted.i159 = phi ptr [ %i.bn, %.split183.us ], [ %i.be, %.split.us236 ], [ %i.bg, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us ], [ %i.bs, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157 ], [ %i.cd, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread ] ; 2 uses
  %.us-phi = phi i32 [ %i.bm, %.split183.us ], [ %.0117.lcssa, %.split.us236 ], [ %.2130.us238, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us ], [ %.2130, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread ], [ %.2130, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157 ]
  %.us-phi237 = phi i1 [ %spec.select206.us, %.split183.us ], [ true, %.split.us236 ], [ %.0116.us239, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread.us ], [ %.0116, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157.thread ], [ %.0116, %_ZN17double_conversionL7AdvanceIPcEEbPT_tiRS2_.exit157 ]
  %.not6.not.i160 = icmp eq ptr %.promoted.i159, %1
  %or.cond323 = select i1 %4, i1 true, i1 %.not6.not.i160
  br i1 %or.cond323, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit166, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %_ZN17double_conversionL7isDigitEii.exit, %bb.l
  %i.ck = phi ptr [ %i.co, %bb.l ], [ %.promoted.i159, %_ZN17double_conversionL7isDigitEii.exit ] ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !24
  %i.cm = sext i8 %i.cl to i32
  %i.cn = tail call fastcc noundef zeroext i1 @_ZN17double_conversionL12isWhitespaceEi(i32 noundef %i.cm)
  br i1 %i.cn, label %bb.l, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread201

bb.l:                                             ; preds = %.lr.ph.i161
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 3 uses
  store ptr %i.co, ptr %0, align 8, !tbaa !17
  %.not.not.i165 = icmp eq ptr %i.co, %1
  br i1 %.not.not.i165, label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit166, label %.lr.ph.i161, !llvm.loop !65

_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit166: ; preds = %bb.l, %_ZN17double_conversionL7isDigitEii.exit
  %i.cp = add nsw i32 %.0117.lcssa, -1
  %i.cq = shl nuw i32 1, %i.cp                    ; 2 uses
  %i.cr = icmp sgt i32 %i.bb, %i.cq
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit166
  %i.cs = add nsw i64 %i.bd, 1
  br label %_ZN17double_conversionL17AdvanceToNonspaceIPcEEbPT_S2_.exit.thread
end_hunk_0
