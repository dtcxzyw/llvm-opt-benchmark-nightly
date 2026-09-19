Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/umutablecptrie?download=true
inline.NumInlined: 131
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@umutablecptrie_buildImmutable_78:bb.a
  %i.pl = add i32 %i.pk, %i.pa
  %i.pm = mul i32 %i.pl, 37
  %i.pn = add i32 %i.pm, %i.pa
  %i.po = mul i32 %i.pn, 37
  %i.pp = add i32 %i.po, %i.pa
  %i.pq = mul i32 %i.pp, 37
  %i.pr = add i32 %i.pq, %i.pa                    ; 2 uses
  %niter422.next.7 = add nuw i32 %niter422, 8
  %niter422.ncmp.7 = icmp eq i32 %niter422, %i.pb
  br i1 %niter422.ncmp.7, label %.lr.ph.i.i.i.i.i.epil, label %.lr.ph.i.i.i.i.i, !llvm.loop !80

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.epil
  %.061.i.i.i.i.i.epil = phi i32 [ %i.pt, %.lr.ph.i.i.i.i.i.epil ], [ %i.pr, %.lr.ph.i.i.i.i.i ]
  %epil.iter417 = phi i32 [ %epil.iter417.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.ps = mul i32 %.061.i.i.i.i.i.epil, 37
  %i.pt = add i32 %i.ps, %i.pa                    ; 3 uses
  %epil.iter417.next = add i32 %epil.iter417, 1   ; 2 uses
  %epil.iter417.cmp.not = icmp eq i32 %epil.iter417.next, 7
  br i1 %epil.iter417.cmp.not, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !81

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.epil
  %i.pu = shl i32 %i.pt, %.sink312.i174.i.i
  %i.pv = add nsw i32 %.0.i118.i186.i.i, -1
  %i.pw = urem i32 %i.pt, %i.pv
  %i.px = add nuw nsw i32 %i.pw, 1                ; 4 uses
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.py
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !34 ; 2 uses
  %i.qb = icmp eq i32 %i.qa, 0
  br i1 %i.qb, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.preheader.i.i

.lr.ph.split.us.i.i.i.preheader.i.i:              ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i
  %i.qc = xor i32 %.sink.i177.i.i, -1
  %i.qd = shl nuw nsw i32 %i.ot, 2
  %.idx.i.i.i.i.i.i = zext nneg i32 %i.qd to i64
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.ci, %.lr.ph.split.us.i.i.i.preheader.i.i
  %i.qe = phi i32 [ %i.qu, %bb.ci ], [ %i.qa, %.lr.ph.split.us.i.i.i.preheader.i.i ] ; 2 uses
  %.01929.us.i.i.i.i.i = phi i32 [ %i.qr, %bb.ci ], [ %i.px, %.lr.ph.split.us.i.i.i.preheader.i.i ] ; 2 uses
  %i.qf = and i32 %i.qe, %i.qc
  %i.qg = icmp eq i32 %i.qf, %i.pu
  br i1 %i.qg, label %.lr.ph.i.preheader.us.i.i.i.i.i, label %bb.ci

.lr.ph.i.preheader.us.i.i.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.qh = and i32 %i.qe, %.sink.i177.i.i
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = getelementptr [4 x i8], ptr %i.mj, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 -4     ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.idx.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.us.i.i.i.i.i

.lr.ph.i.us.i.i.i.i.i:                            ; preds = %bb.ch, %.lr.ph.i.preheader.us.i.i.i.i.i
  %.08.i.us.i.i.i.i.i = phi ptr [ %i.qo, %bb.ch ], [ %i.qk, %.lr.ph.i.preheader.us.i.i.i.i.i ] ; 3 uses
  %i.qm = load i32, ptr %.08.i.us.i.i.i.i.i, align 4, !tbaa !34
  %i.qn = icmp eq i32 %i.qm, %i.pa
  br i1 %i.qn, label %bb.ch, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i

bb.ch:                                            ; preds = %.lr.ph.i.us.i.i.i.i.i
  %i.qo = getelementptr inbounds nuw i8, ptr %.08.i.us.i.i.i.i.i, i64 4 ; 3 uses
  %i.qp = icmp ult ptr %i.qo, %i.ql
  br i1 %i.qp, label %.lr.ph.i.us.i.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, !llvm.loop !69

bb.ci:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i
  %i.qq = add nuw nsw i32 %.01929.us.i.i.i.i.i, %i.px
  %i.qr = urem i32 %i.qq, %.0.i118.i186.i.i       ; 3 uses
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !34 ; 2 uses
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %._crit_edge.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i, !llvm.loop !82

_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i: ; preds = %bb.ch, %.lr.ph.i.us.i.i.i.i.i
  %.0.lcssa.i.ph.us.i.i.i.i.i = phi ptr [ %.08.i.us.i.i.i.i.i, %.lr.ph.i.us.i.i.i.i.i ], [ %i.qo, %bb.ch ]
  %i.qw = icmp eq ptr %.0.lcssa.i.ph.us.i.i.i.i.i, %i.ql
  br i1 %i.qw, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i, label %bb.ci

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ci, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i
  %.019.lcssa.i.i.i.i.i = phi i32 [ %i.px, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeEj.exit.i.i.i.i ], [ %i.qr, %bb.ci ]
  %i.qx = xor i32 %.019.lcssa.i.i.i.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.3.ph.i.i.i.i.i = phi i32 [ %i.qx, %._crit_edge.i.i.i.i.i ], [ %.01929.us.i.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_115allValuesSameAsEPKjij.exit.loopexit.us.i.i.i.i.i ] ; 2 uses
  %i.qy = icmp sgt i32 %.3.ph.i.i.i.i.i, -1
  br i1 %i.qy, label %bb.cj, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i

bb.cj:                                            ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i
  %i.qz = zext nneg i32 %.3.ph.i.i.i.i.i to i64
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.qz
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !34
  %i.rc = and i32 %i.rb, %.sink.i177.i.i
  %i.rd = add nsw i32 %i.rc, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i: ; preds = %bb.cj, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i
  %.0.i126.i.i.i = phi i32 [ %i.rd, %bb.cj ], [ -1, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryEPKjjj.exit.i.i.i.i ] ; 4 uses
  %i.re = icmp eq i32 %.0101207.i.i.i, %.011.i.i.i
  %.not115.i.i.i = icmp uge i32 %.0101207.i.i.i, %i.co
  %i.rf = icmp sgt i32 %.0.i126.i.i.i, -1         ; 2 uses
  %i.rg = and i1 %i.re, %.not115.i.i.i
  %or.cond116188.i.i.i = and i1 %i.rg, %i.rf
  %i.rh = icmp slt i32 %.0.i126.i.i.i, %.1103.i.i.i
  %or.cond117189.i.i.i = select i1 %or.cond116188.i.i.i, i1 %i.rh, i1 false
  br i1 %or.cond117189.i.i.i, label %.lr.ph191.split.preheader.i.i.i, label %.critedge.i82.i.i

.lr.ph191.split.preheader.i.i.i:                  ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i
  %i.ri = sub nuw nsw i32 %.1111202.i.i.i, %.1108.i.i.i ; 2 uses
  %i.rj = zext nneg i32 %.1108.i.i.i to i64
  br label %.lr.ph191.split.i.i.i

.lr.ph191.split.i.i.i:                            ; preds = %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, %.lr.ph191.split.preheader.i.i.i
  %.099190.i.i.i = phi i32 [ %.02241.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ], [ %.0.i126.i.i.i, %.lr.ph191.split.preheader.i.i.i ] ; 4 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph191.split.i.i.i
  %indvars.iv.i.i83.i.i = phi i64 [ 0, %.lr.ph191.split.i.i.i ], [ %indvars.iv.next.i.i84.i.i, %bb.ck ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.i.i83.i.i
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !34
  %i.rm = icmp eq i32 %i.rl, %.099190.i.i.i       ; 2 uses
  %indvars.iv.next.i.i84.i.i = add nuw nsw i64 %indvars.iv.i.i83.i.i, 4 ; 2 uses
  %i.rn = icmp samesign uge i64 %indvars.iv.next.i.i84.i.i, %i.ol
  %or.cond.not.i.i.i.i = select i1 %i.rm, i1 true, i1 %i.rn
  br i1 %or.cond.not.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i, label %bb.ck, !llvm.loop !83

_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i: ; preds = %bb.ck
  br i1 %i.rm, label %bb.cl, label %.critedge.thread.i.i.i

bb.cl:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i
  %.not40.i.not.i.i.i = icmp ult i32 %.099190.i.i.i, %i.ri
  br i1 %.not40.i.not.i.i.i, label %.lr.ph.i.i85.i.i, label %.critedge.thread279.i.i.i

.lr.ph.i.i85.i.i:                                 ; preds = %bb.cl, %.loopexit36.i.i.i.i
  %.02241.i.in.i.i.i = phi i32 [ %.2.i.i.i.i, %.loopexit36.i.i.i.i ], [ %.099190.i.i.i, %bb.cl ] ; 2 uses
  %.02241.i.i.i.i = add nsw i32 %.02241.i.in.i.i.i, 1 ; 5 uses
  %i.ro = sext i32 %.02241.i.i.i.i to i64         ; 2 uses
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !34
  %i.rr = icmp eq i32 %i.rq, %i.pa
  br i1 %i.rr, label %.preheader.i.i.i.i, label %.loopexit36.i.i.i.i

bb.cm:                                            ; preds = %.preheader.i.i.i.i
  %indvars.iv.next.i128.i.i.i = add nuw nsw i64 %indvars.iv.i127.i.i.i, 1 ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %indvars.iv.next.i128.i.i.i, %i.rj
  br i1 %.not29.i.i.i.i, label %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !84

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i85.i.i, %bb.cm
  %indvars.iv.i127.i.i.i = phi i64 [ %indvars.iv.next.i128.i.i.i, %bb.cm ], [ 1, %.lr.ph.i.i85.i.i ] ; 2 uses
  %i.rs = add nsw i64 %indvars.iv.i127.i.i.i, %i.ro ; 2 uses
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !34
  %.not28.i.i.i.i = icmp eq i32 %i.ru, %i.pa
  br i1 %.not28.i.i.i.i, label %bb.cm, label %.loopexit36.loopexit.i.i.i.i

.loopexit36.loopexit.i.i.i.i:                     ; preds = %.preheader.i.i.i.i
  %i.rv = trunc nsw i64 %i.rs to i32
  br label %.loopexit36.i.i.i.i

.loopexit36.i.i.i.i:                              ; preds = %.loopexit36.loopexit.i.i.i.i, %.lr.ph.i.i85.i.i
  %.2.i.i.i.i = phi i32 [ %.02241.i.i.i.i, %.lr.ph.i.i85.i.i ], [ %i.rv, %.loopexit36.loopexit.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i = icmp slt i32 %.2.i.i.i.i, %i.ri
  br i1 %.not.not.i.i.i.i, label %.lr.ph.i.i85.i.i, label %.critedge.thread279.i.i.i, !llvm.loop !85

_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i: ; preds = %bb.cm
  %i.rw = icmp sgt i32 %.02241.i.in.i.i.i, -2     ; 2 uses
  %i.rx = icmp slt i32 %.02241.i.i.i.i, %.1103.i.i.i
  %or.cond117.i.i.i = select i1 %i.rw, i1 %i.rx, i1 false
  br i1 %or.cond117.i.i.i, label %.lr.ph191.split.i.i.i, label %.critedge.i82.i.i, !llvm.loop !86

.critedge.i82.i.i:                                ; preds = %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i
  %.099.lcssa.i.i.i = phi i32 [ %.0.i126.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i ], [ %.02241.i.i.i.i, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ]
  %.lcssa177.i.i.i = phi i1 [ %i.rf, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks16findAllSameBlockEPKjj.exit.i.i.i ], [ %i.rw, %_ZN6icu_7812_GLOBAL__N_116findAllSameBlockEPKjiiji.exit.i.i.i ]
  br i1 %.lcssa177.i.i.i, label %.critedge.thread.i.i.i, label %.critedge.thread279.i.i.i

.critedge.thread.i.i.i:                           ; preds = %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i, %.critedge.i82.i.i
  %.099180.i.i.i = phi i32 [ %.099.lcssa.i.i.i, %.critedge.i82.i.i ], [ %.099190.i.i.i, %_ZN6icu_7812_GLOBAL__N_122isStartOfSomeFastBlockEjPKji.exit.i.i.i ]
  store i32 %.099180.i.i.i, ptr %i.oz, align 4, !tbaa !34
  br label %bb.cw

.critedge.thread279.i.i.i:                        ; preds = %bb.cl, %.loopexit36.i.i.i.i, %.critedge.i82.i.i
  %.neg10.i.i.i.i = add nuw i32 %.1111202.i.i.i, 1
  %i.ry = sub i32 %.neg10.i.i.i.i, %.1108.i.i.i   ; 3 uses
  %i.rz = icmp samesign ult i32 %i.ry, %.1111202.i.i.i
  br i1 %i.rz, label %.lr.ph.preheader.i129.i.i.i, label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i

.lr.ph.preheader.i129.i.i.i:                      ; preds = %.critedge.thread279.i.i.i
  %i.sa = zext nneg i32 %.1111202.i.i.i to i64
  %i.sb = zext nneg i32 %i.ry to i64
  br label %.lr.ph.i130.i.i.i

.lr.ph.i130.i.i.i:                                ; preds = %bb.cn, %.lr.ph.preheader.i129.i.i.i
  %indvars.iv.i131.i.i.i = phi i64 [ %i.sa, %.lr.ph.preheader.i129.i.i.i ], [ %indvars.iv.next.i132.i.i.i, %bb.cn ] ; 3 uses
  %i.sc = getelementptr [4 x i8], ptr %i.mj, i64 %indvars.iv.i131.i.i.i
  %i.sd = getelementptr i8, ptr %i.sc, i64 -4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !34
  %i.sf = icmp eq i32 %i.se, %i.pa
  br i1 %i.sf, label %bb.cn, label %.critedge.loopexit.split.loop.exit16.i.i.i.i

bb.cn:                                            ; preds = %.lr.ph.i130.i.i.i
  %indvars.iv.next.i132.i.i.i = add nsw i64 %indvars.iv.i131.i.i.i, -1 ; 2 uses
  %7 = icmp sgt i64 %indvars.iv.next.i132.i.i.i, %i.sb
  br i1 %7, label %.lr.ph.i130.i.i.i, label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i, !llvm.loop !87

.critedge.loopexit.split.loop.exit16.i.i.i.i:     ; preds = %.lr.ph.i130.i.i.i
  %i.sg = trunc nuw nsw i64 %indvars.iv.i131.i.i.i to i32
  br label %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i

_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i: ; preds = %bb.cn, %.critedge.loopexit.split.loop.exit16.i.i.i.i, %.critedge.thread279.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %.1111202.i.i.i, %.critedge.thread279.i.i.i ], [ %i.sg, %.critedge.loopexit.split.loop.exit16.i.i.i.i ], [ %i.ry, %bb.cn ] ; 3 uses
  %i.sh = sub nsw i32 %.1111202.i.i.i, %.0.lcssa.i.i.i.i ; 3 uses
  store i32 %.0.lcssa.i.i.i.i, ptr %i.oz, align 4, !tbaa !34
  %i.si = icmp slt i32 %i.sh, %.1108.i.i.i
  br i1 %i.si, label %.lr.ph198.preheader.i.i.i, label %._crit_edge199.i.i.i

.lr.ph198.preheader.i.i.i:                        ; preds = %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i
  %i.sj = zext i32 %.1111202.i.i.i to i64         ; 3 uses
  %i.sk = add i32 %.0.lcssa.i.i.i.i, %.1108.i.i.i
  %i.sl = xor i32 %.1111202.i.i.i, -1
  %i.sm = add i32 %i.sk, %i.sl                    ; 2 uses
  %i.sn = zext i32 %i.sm to i64
  %i.so = add nuw nsw i64 %i.sn, 1                ; 2 uses
  %min.iters.check230 = icmp ult i32 %i.sm, 7
  br i1 %min.iters.check230, label %.lr.ph198.i.i.i.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph198.preheader.i.i.i
  %n.vec232 = and i64 %i.so, 8589934584           ; 4 uses
  %i.sp = add nuw nsw i64 %n.vec232, %i.sj        ; 2 uses
  %i.sq = trunc i64 %n.vec232 to i32
  %i.sr = add i32 %i.sh, %i.sq
  %broadcast.splatinsert233 = insertelement <4 x i32> poison, i32 %i.pa, i64 0
  %broadcast.splat234 = shufflevector <4 x i32> %broadcast.splatinsert233, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep500 = getelementptr [4 x i8], ptr %i.mj, i64 %i.sj
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph231
  %index236 = phi i64 [ 0, %vector.ph231 ], [ %index.next237, %vector.body235 ] ; 2 uses
  %gep501 = getelementptr [4 x i8], ptr %invariant.gep500, i64 %index236 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %gep501, i64 16
  store <4 x i32> %broadcast.splat234, ptr %gep501, align 4, !tbaa !34
  store <4 x i32> %broadcast.splat234, ptr %i.ss, align 4, !tbaa !34
  %index.next237 = add nuw i64 %index236, 8       ; 2 uses
  %i.st = icmp eq i64 %index.next237, %n.vec232
  br i1 %i.st, label %middle.block238, label %vector.body235, !llvm.loop !88

middle.block238:                                  ; preds = %vector.body235
  %cmp.n239 = icmp eq i64 %i.so, %n.vec232
  br i1 %cmp.n239, label %._crit_edge199.loopexit.i.i.i, label %.lr.ph198.i.i.i.preheader

.lr.ph198.i.i.i.preheader:                        ; preds = %.lr.ph198.preheader.i.i.i, %middle.block238
  %indvars.iv255.i.i.i.ph = phi i64 [ %i.sj, %.lr.ph198.preheader.i.i.i ], [ %i.sp, %middle.block238 ]
  %.1100197.i.i.i.ph = phi i32 [ %i.sh, %.lr.ph198.preheader.i.i.i ], [ %i.sr, %middle.block238 ]
  br label %.lr.ph198.i.i.i

.lr.ph198.i.i.i:                                  ; preds = %.lr.ph198.i.i.i.preheader, %.lr.ph198.i.i.i
  %indvars.iv255.i.i.i = phi i64 [ %indvars.iv.next256.i.i.i, %.lr.ph198.i.i.i ], [ %indvars.iv255.i.i.i.ph, %.lr.ph198.i.i.i.preheader ] ; 2 uses
  %.1100197.i.i.i = phi i32 [ %i.sv, %.lr.ph198.i.i.i ], [ %.1100197.i.i.i.ph, %.lr.ph198.i.i.i.preheader ]
  %indvars.iv.next256.i.i.i = add nuw nsw i64 %indvars.iv255.i.i.i, 1 ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv255.i.i.i
  store i32 %i.pa, ptr %i.su, align 4, !tbaa !34
  %i.sv = add nsw i32 %.1100197.i.i.i, 1          ; 2 uses
  %exitcond258.not.i.i.i = icmp eq i32 %i.sv, %.1108.i.i.i
  br i1 %exitcond258.not.i.i.i, label %._crit_edge199.loopexit.i.i.i, label %.lr.ph198.i.i.i, !llvm.loop !89

._crit_edge199.loopexit.i.i.i:                    ; preds = %.lr.ph198.i.i.i, %middle.block238
  %indvars.iv.next256.i.i.i.lcssa = phi i64 [ %i.sp, %middle.block238 ], [ %indvars.iv.next256.i.i.i, %.lr.ph198.i.i.i ]
  %i.sw = trunc nuw i64 %indvars.iv.next256.i.i.i.lcssa to i32
  br label %._crit_edge199.i.i.i

._crit_edge199.i.i.i:                             ; preds = %._crit_edge199.loopexit.i.i.i, %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i
  %.2112.lcssa.i.i.i = phi i32 [ %.1111202.i.i.i, %_ZN6icu_7812_GLOBAL__N_117getAllSameOverlapEPKjiji.exit.i.i.i ], [ %i.sw, %._crit_edge199.loopexit.i.i.i ] ; 2 uses
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendIjEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.mj, i32 noundef %.1111202.i.i.i, i32 noundef %.2112.lcssa.i.i.i)
  br label %bb.cw

bb.co:                                            ; preds = %bb.cg
  %i.sx = load ptr, ptr %i.gn, align 8, !tbaa !32 ; 2 uses
  %i.sy = ptrtoaddr ptr %i.sx to i64
  %i.sz = load ptr, ptr %0, align 8, !tbaa !22
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.ov ; 3 uses
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !34
  %i.tc = zext i32 %i.tb to i64                   ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.tc ; 14 uses
  %i.te = load i32, ptr %i.td, align 4, !tbaa !34 ; 2 uses
  %i.tf = tail call i32 @llvm.smax.i32(i32 %i.ot, i32 2)
  %smax.i.i.i.i = zext nneg i32 %i.tf to i64
  %i.tg = add nsw i64 %smax.i.i.i.i, -1           ; 2 uses
  %xtraiter406 = and i64 %i.tg, 3
  %i.th = icmp eq i32 %i.ot, 0
  br i1 %i.th, label %.epil.preheader405, label %.new

.new:                                             ; preds = %bb.co
  %unroll_iter411 = and i64 %i.tg, -4
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %.new
  %indvars.iv.i.i.i.i.i = phi i64 [ 1, %.new ], [ %indvars.iv.next.i.i.i.i.i.3, %bb.cp ] ; 5 uses
  %.0.i.i.i.i.i = phi i32 [ %i.te, %.new ], [ %i.ua, %bb.cp ]
  %niter412 = phi i64 [ 0, %.new ], [ %niter412.next.3, %bb.cp ]
  %i.ti = mul i32 %.0.i.i.i.i.i, 37
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %indvars.iv.i.i.i.i.i
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !34
  %i.tl = add i32 %i.ti, %i.tk
  %i.tm = mul i32 %i.tl, 37
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %indvars.iv.i.i.i.i.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !34
  %i.tq = add i32 %i.tm, %i.tp
  %i.tr = mul i32 %i.tq, 37
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %indvars.iv.i.i.i.i.i
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !34
  %i.tv = add i32 %i.tr, %i.tu
  %i.tw = mul i32 %i.tv, 37
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %indvars.iv.i.i.i.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 12
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !34
  %i.ua = add i32 %i.tw, %i.tz                    ; 2 uses
  %niter412.next.3 = add nuw i64 %niter412, 4     ; 2 uses
  %niter412.ncmp.3 = icmp eq i64 %niter412.next.3, %unroll_iter411
  br i1 %niter412.ncmp.3, label %.epil.preheader405, label %bb.cp, !llvm.loop !1

.epil.preheader405:                               ; preds = %bb.cp, %bb.co
  %indvars.iv.i.i.i.i.i.epil.init = phi i64 [ 1, %bb.co ], [ %indvars.iv.next.i.i.i.i.i.3, %bb.cp ]
  %.0.i.i.i.i.i.epil.init = phi i32 [ %i.te, %bb.co ], [ %i.ua, %bb.cp ]
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %.epil.preheader405
  %indvars.iv.i.i.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.i.i.epil, %bb.cq ], [ %indvars.iv.i.i.i.i.i.epil.init, %.epil.preheader405 ] ; 2 uses
  %.0.i.i.i.i.i.epil = phi i32 [ %i.ue, %bb.cq ], [ %.0.i.i.i.i.i.epil.init, %.epil.preheader405 ]
  %epil.iter407 = phi i64 [ %epil.iter407.next, %bb.cq ], [ 0, %.epil.preheader405 ]
  %i.ub = mul i32 %.0.i.i.i.i.i.epil, 37
  %indvars.iv.next.i.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.i.epil, 1
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %indvars.iv.i.i.i.i.i.epil
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !34
  %i.ue = add i32 %i.ub, %i.ud                    ; 3 uses
  %epil.iter407.next = add i64 %epil.iter407, 1   ; 2 uses
  %epil.iter407.cmp.not = icmp eq i64 %epil.iter407.next, %xtraiter406
  br i1 %epil.iter407.cmp.not, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i, label %bb.cq, !llvm.loop !90

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i: ; preds = %bb.cq
  %i.uf = shl i32 %i.ue, %.sink312.i174.i.i
  %i.ug = add nsw i32 %.0.i118.i186.i.i, -1
  %i.uh = urem i32 %i.ue, %i.ug
  %i.ui = add nuw nsw i32 %i.uh, 1                ; 4 uses
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.uj
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !34 ; 2 uses
  %i.um = icmp eq i32 %i.ul, 0
  br i1 %i.um, label %._crit_edge.i.i136.i.i.i, label %.lr.ph.split.us.i.i139.i.preheader.i.i

.lr.ph.split.us.i.i139.i.preheader.i.i:           ; preds = %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i
  %i.un = xor i32 %.sink.i177.i.i, -1
  br label %.lr.ph.split.us.i.i139.i.i.i

.lr.ph.split.us.i.i139.i.i.i:                     ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i, %.lr.ph.split.us.i.i139.i.preheader.i.i
  %i.uo = phi i32 [ %i.vg, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ], [ %i.ul, %.lr.ph.split.us.i.i139.i.preheader.i.i ] ; 2 uses
  %.02037.us.i.i.i.i.i = phi i32 [ %i.vd, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ], [ %i.ui, %.lr.ph.split.us.i.i139.i.preheader.i.i ] ; 2 uses
  %i.up = and i32 %i.uo, %i.un
  %i.uq = icmp eq i32 %i.up, %i.uf
  br i1 %i.uq, label %.lr.ph.i.preheader.us.i.i140.i.i.i, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i

.lr.ph.i.preheader.us.i.i140.i.i.i:               ; preds = %.lr.ph.split.us.i.i139.i.i.i
  %i.ur = and i32 %i.uo, %.sink.i177.i.i
  %i.us = zext nneg i32 %i.ur to i64
  %i.ut = getelementptr [4 x i8], ptr %i.mj, i64 %i.us
  %i.uu = getelementptr i8, ptr %i.ut, i64 -4
  br label %.lr.ph.i.us.i.i141.i.i.i

.lr.ph.i.us.i.i141.i.i.i:                         ; preds = %bb.cr, %.lr.ph.i.preheader.us.i.i140.i.i.i
  %.010.i.us.i.i.i.i.i = phi i32 [ %i.va, %bb.cr ], [ %i.ot, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %.069.i.us.i.i.i.i.i = phi ptr [ %i.uz, %bb.cr ], [ %i.td, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %.078.i.us.i.i.i.i.i = phi ptr [ %i.uy, %bb.cr ], [ %i.uu, %.lr.ph.i.preheader.us.i.i140.i.i.i ] ; 2 uses
  %i.uv = load i32, ptr %.078.i.us.i.i.i.i.i, align 4, !tbaa !34
  %i.uw = load i32, ptr %.069.i.us.i.i.i.i.i, align 4, !tbaa !34
  %i.ux = icmp eq i32 %i.uv, %i.uw
  br i1 %i.ux, label %bb.cr, label %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.us.i.i141.i.i.i
  %i.uy = getelementptr inbounds nuw i8, ptr %.078.i.us.i.i.i.i.i, i64 4
  %i.uz = getelementptr inbounds nuw i8, ptr %.069.i.us.i.i.i.i.i, i64 4
  %i.va = add nsw i32 %.010.i.us.i.i.i.i.i, -1
  %i.vb = icmp sgt i32 %.010.i.us.i.i.i.i.i, 1
  br i1 %i.vb, label %.lr.ph.i.us.i.i141.i.i.i, label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i, !llvm.loop !2

_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i: ; preds = %.lr.ph.i.us.i.i141.i.i.i, %.lr.ph.split.us.i.i139.i.i.i
  %i.vc = add nuw nsw i32 %.02037.us.i.i.i.i.i, %i.ui
  %i.vd = urem i32 %i.vc, %.0.i118.i186.i.i       ; 3 uses
  %i.ve = zext nneg i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.ve
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !34 ; 2 uses
  %i.vh = icmp eq i32 %i.vg, 0
  br i1 %i.vh, label %._crit_edge.i.i136.i.i.i, label %.lr.ph.split.us.i.i139.i.i.i, !llvm.loop !3

._crit_edge.i.i136.i.i.i:                         ; preds = %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i
  %.020.lcssa.i.i.i.i.i = phi i32 [ %i.ui, %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks12makeHashCodeIjEEjPKT_i.exit.i.i.i.i ], [ %i.vd, %_ZN6icu_7812_GLOBAL__N_111equalBlocksIjjEEbPKT_PKT0_i.exit.thread27.us.i.i.i.i.i ]
  %i.vi = xor i32 %.020.lcssa.i.i.i.i.i, -1
  br label %_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i

_ZNK6icu_7812_GLOBAL__N_111MixedBlocks9findEntryIjjEEiPKT_PKT0_ij.exit.i.i.i.i: ; preds = %bb.cr, %._crit_edge.i.i136.i.i.i
  %.3.ph.i.i137.i.i.i = phi i32 [ %i.vi, %._crit_edge.i.i136.i.i.i ], [ %.02037.us.i.i.i.i.i, %bb.cr ] ; 2 uses
  %i.vj = icmp sgt i32 %.3.ph.i.i137.i.i.i, -1
end_hunk_0
