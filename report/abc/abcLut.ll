Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcLut?download=true
inline.NumInlined: 207
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@Abc_NtkSuperChoiceLut:bb.a
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !47
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv.next.i220.us.us.i.i
  store i32 %i.op, ptr %i.oq, align 4, !tbaa !47
  %i.or = icmp samesign ugt i64 %indvars.iv.i219.us.us.i.i, 1
  br i1 %i.or, label %select.unfold.i218.us.us.i.i, label %Extra_TruthCopy.exit221.loopexit.us.us.i.i, !llvm.loop !89

Extra_TruthCopy.exit221.loopexit.us.us.i.i:       ; preds = %vector.body523, %select.unfold.i218.us.us.i.i
  tail call void @Extra_TruthCofactor0(ptr noundef nonnull %i.nf, i32 noundef %.val71117.i, i32 noundef %i.nd) #18
  %i.os = load ptr, ptr %i.ob, align 8, !tbaa !46
  tail call void @Extra_TruthCofactor1(ptr noundef %i.os, i32 noundef %.val71117.i, i32 noundef %i.nd) #18
  %indvars.iv.next370.i.i = add nsw i64 %indvars.iv369.i.i, 2 ; 2 uses
  %i.ot = add nuw nsw i32 %.0181298.us.us.i.i, 1  ; 2 uses
  %exitcond373.not.i.i = icmp eq i32 %i.ot, %i.na
  br i1 %exitcond373.not.i.i, label %._crit_edge.split.us.us.loopexit.i.i, label %select.unfold.preheader.i211.us.us.i.i, !llvm.loop !90

._crit_edge.split.us.us.loopexit.i.i:             ; preds = %Extra_TruthCopy.exit221.loopexit.us.us.i.i
  %i.ou = trunc nsw i64 %indvars.iv.next370.i.i to i32
  br label %._crit_edge.split.us.us.i.i

._crit_edge.split.us.us.i.i:                      ; preds = %._crit_edge.split.us.us.loopexit.i.i, %.preheader288.us.i.i
  %.1180.lcssa.us.i.i = phi i32 [ %.0179300.us.i.i, %.preheader288.us.i.i ], [ %i.ou, %._crit_edge.split.us.us.loopexit.i.i ]
  %indvars.iv.next375.i.i = add nuw nsw i64 %indvars.iv374.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next375.i.i, %i.mx
  br i1 %exitcond.not, label %._crit_edge302.i.i, label %.preheader288.us.i.i, !llvm.loop !91

.preheader288.i.i:                                ; preds = %Extra_TruthCopy.exit.thread.i.i, %._crit_edge.split.i.i
  %i.ov = phi i32 [ %i.pi, %._crit_edge.split.i.i ], [ %i.kv, %Extra_TruthCopy.exit.thread.i.i ]
  %i.ow = phi i32 [ %i.pj, %._crit_edge.split.i.i ], [ %i.kv, %Extra_TruthCopy.exit.thread.i.i ]
  %indvars.iv366.i.i = phi i64 [ %indvars.iv.next367.i.i, %._crit_edge.split.i.i ], [ 0, %Extra_TruthCopy.exit.thread.i.i ] ; 4 uses
  %.0179300.i.i = phi i32 [ %.1180.lcssa.i.i, %._crit_edge.split.i.i ], [ 2, %Extra_TruthCopy.exit.thread.i.i ] ; 2 uses
  %.not345.i.i = icmp eq i64 %indvars.iv366.i.i, 31
  br i1 %.not345.i.i, label %._crit_edge.split.i.i, label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %.preheader288.i.i
  %i.ox = trunc nuw nsw i64 %indvars.iv366.i.i to i32
  %i.oy = shl nuw nsw i32 1, %i.ox
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv366.i.i
  %i.pa = sext i32 %.0179300.i.i to i64
  %i.pb = load i32, ptr %i.oz, align 4, !tbaa !47 ; 2 uses
  br label %Extra_TruthCopy.exit215.i.i

Extra_TruthCopy.exit215.i.i:                      ; preds = %Extra_TruthCopy.exit215.i.i, %.lr.ph.i87.i
  %indvars.iv.i88.i = phi i64 [ %i.pa, %.lr.ph.i87.i ], [ %indvars.iv.next.i89.i, %Extra_TruthCopy.exit215.i.i ] ; 2 uses
  %.0181298.i.i = phi i32 [ 0, %.lr.ph.i87.i ], [ %i.pg, %Extra_TruthCopy.exit215.i.i ]
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %indvars.iv.i88.i ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !46
  tail call void @Extra_TruthCofactor0(ptr noundef %i.pd, i32 noundef %.val71117.i, i32 noundef %i.pb) #18
  %i.pe = getelementptr i8, ptr %i.pc, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !46
  tail call void @Extra_TruthCofactor1(ptr noundef %i.pf, i32 noundef %.val71117.i, i32 noundef %i.pb) #18
  %indvars.iv.next.i89.i = add nsw i64 %indvars.iv.i88.i, 2 ; 2 uses
  %i.pg = add nuw nsw i32 %.0181298.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.pg, %i.oy
  br i1 %exitcond.not.i.i, label %._crit_edge.split.loopexit.i.i, label %Extra_TruthCopy.exit215.i.i, !llvm.loop !90

._crit_edge.split.loopexit.i.i:                   ; preds = %Extra_TruthCopy.exit215.i.i
  %i.ph = trunc nsw i64 %indvars.iv.next.i89.i to i32
  br label %._crit_edge.split.i.i

._crit_edge.split.i.i:                            ; preds = %._crit_edge.split.loopexit.i.i, %.preheader288.i.i
  %i.pi = phi i32 [ %i.ov, %.preheader288.i.i ], [ %.pre429.i.i, %._crit_edge.split.loopexit.i.i ] ; 2 uses
  %i.pj = phi i32 [ %i.ow, %.preheader288.i.i ], [ %.pre429.i.i, %._crit_edge.split.loopexit.i.i ] ; 3 uses
  %.1180.lcssa.i.i = phi i32 [ %.0179300.i.i, %.preheader288.i.i ], [ %i.ph, %._crit_edge.split.loopexit.i.i ]
  %indvars.iv.next367.i.i = add nuw nsw i64 %indvars.iv366.i.i, 1 ; 2 uses
  %i.pk = sext i32 %i.pj to i64
  %i.pl = icmp slt i64 %indvars.iv.next367.i.i, %i.pk
  br i1 %i.pl, label %.preheader288.i.i, label %._crit_edge302.i.i, !llvm.loop !91

._crit_edge302.i.i:                               ; preds = %._crit_edge.split.i.i, %._crit_edge.split.us.us.i.i
  %i.pm = phi i1 [ true, %._crit_edge.split.us.us.i.i ], [ false, %._crit_edge.split.i.i ] ; 2 uses
  %spec.select.i.i.i302 = phi i32 [ %spec.select.i.i.i303, %._crit_edge.split.us.us.i.i ], [ %spec.select.i.i.i, %._crit_edge.split.i.i ] ; 3 uses
  %.pre429.i.i259 = phi i32 [ %.fr, %._crit_edge.split.us.us.i.i ], [ %.pre429.i.i, %._crit_edge.split.i.i ]
  %i.pn = phi i32 [ %.fr, %._crit_edge.split.us.us.i.i ], [ %i.pi, %._crit_edge.split.i.i ]
  %.lcssa297.i.i = phi i32 [ %.fr, %._crit_edge.split.us.us.i.i ], [ %i.pj, %._crit_edge.split.i.i ] ; 2 uses
  %.not347.i.i = icmp eq i32 %.lcssa297.i.i, 31
  br i1 %.not347.i.i, label %._crit_edge.thread.i.i, label %.lr.ph311.i.i

.lr.ph311.i.i:                                    ; preds = %._crit_edge302.i.i, %Extra_TruthCopy.exit.thread.i.i, %Extra_TruthCopy.exit.i.i
  %i.po = phi i1 [ true, %Extra_TruthCopy.exit.i.i ], [ false, %Extra_TruthCopy.exit.thread.i.i ], [ %i.pm, %._crit_edge302.i.i ]
  %spec.select.i.i.i301 = phi i32 [ %spec.select.i.i.i303, %Extra_TruthCopy.exit.i.i ], [ -2147483648, %Extra_TruthCopy.exit.thread.i.i ], [ %spec.select.i.i.i302, %._crit_edge302.i.i ] ; 4 uses
  %.pre429.i.i258 = phi i32 [ %.fr, %Extra_TruthCopy.exit.i.i ], [ %.pre429.i.i, %Extra_TruthCopy.exit.thread.i.i ], [ %.pre429.i.i259, %._crit_edge302.i.i ] ; 2 uses
  %i.pp = phi i32 [ %.fr, %Extra_TruthCopy.exit.i.i ], [ %i.kv, %Extra_TruthCopy.exit.thread.i.i ], [ %i.pn, %._crit_edge302.i.i ] ; 2 uses
  %.lcssa297.ph.pn.i.i = phi i32 [ %.fr, %Extra_TruthCopy.exit.i.i ], [ %i.kv, %Extra_TruthCopy.exit.thread.i.i ], [ %.lcssa297.i.i, %._crit_edge302.i.i ]
  %i.pq = shl nuw nsw i32 1, %.lcssa297.ph.pn.i.i ; 5 uses
  %i.pr = zext i32 %spec.select.i.i.i301 to i64
  %i.ps = lshr i32 %i.pq, 1
  %i.pt = zext nneg i32 %i.pq to i64              ; 2 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.kq, i64 %i.pt
  %i.pu = icmp sgt i32 %spec.select.i.i.i301, 0
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.lr.ph311.i.i
  %indvars.iv381.i.i = phi i64 [ 0, %.lr.ph311.i.i ], [ %indvars.iv.next382.i.i, %bb.ar ] ; 4 uses
  %.0310.i.i = phi i32 [ 0, %.lr.ph311.i.i ], [ %.1.fr.i.i, %bb.ar ] ; 7 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv381.i.i
  %i.pv = load ptr, ptr %gep.i.i, align 8, !tbaa !46
  %i.pw = icmp sgt i32 %.0310.i.i, 0
  br i1 %i.pw, label %.lr.ph306.preheader.i.i, label %.loopexit286.i.i

.lr.ph306.preheader.i.i:                          ; preds = %bb.ap
  %wide.trip.count.i.i = zext nneg i32 %.0310.i.i to i64
  br label %.lr.ph306.i.i

.lr.ph306.i.i:                                    ; preds = %bb.aq, %.lr.ph306.preheader.i.i
  %indvars.iv377.i.i = phi i64 [ 0, %.lr.ph306.preheader.i.i ], [ %indvars.iv.next378.i.i, %bb.aq ] ; 4 uses
  %i.px = getelementptr inbounds nuw [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %indvars.iv377.i.i ; 2 uses
  %i.py = load i8, ptr %i.px, align 16, !tbaa !61
  %i.pz = sext i8 %i.py to i32
  %i.qa = add nsw i32 %i.pq, %i.pz
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.qb
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !46
  br i1 %i.pu, label %.lr.ph361, label %Extra_TruthIsEqual.exit.i.i

select.unfold.i223.i.i:                           ; preds = %.lr.ph361
  %i.qe = trunc nuw i64 %i.qg to i32
  %i.qf = icmp sgt i32 %i.qe, 0
  br i1 %i.qf, label %.lr.ph361, label %Extra_TruthIsEqual.exit.i.i, !llvm.loop !92

.lr.ph361:                                        ; preds = %.lr.ph306.i.i, %select.unfold.i223.i.i
  %indvars.iv.i224.i.i360 = phi i64 [ %i.qg, %select.unfold.i223.i.i ], [ %i.pr, %.lr.ph306.i.i ]
  %i.qg = add nsw i64 %indvars.iv.i224.i.i360, -1 ; 4 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !47
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.qg
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !47
  %.not.i.i.i = icmp eq i32 %i.qi, %i.qk
  br i1 %.not.i.i.i, label %select.unfold.i223.i.i, label %bb.aq, !llvm.loop !92

Extra_TruthIsEqual.exit.i.i:                      ; preds = %.lr.ph306.i.i, %select.unfold.i223.i.i
  %i.ql = trunc nuw nsw i64 %indvars.iv377.i.i to i32
  %i.qm = trunc i64 %indvars.iv381.i.i to i8
  %i.qn = getelementptr inbounds nuw i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %indvars.iv377.i.i ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !61  ; 2 uses
  %i.qp = add i8 %i.qo, 1
  store i8 %i.qp, ptr %i.qn, align 1, !tbaa !61
  %i.qq = sext i8 %i.qo to i64
  %i.qr = getelementptr inbounds i8, ptr %i.px, i64 %i.qq
  store i8 %i.qm, ptr %i.qr, align 1, !tbaa !61
  br label %.loopexit286.i.i

bb.aq:                                            ; preds = %.lr.ph361
  %indvars.iv.next378.i.i = add nuw nsw i64 %indvars.iv377.i.i, 1 ; 2 uses
  %exitcond380.not.i.i = icmp eq i64 %indvars.iv.next378.i.i, %wide.trip.count.i.i
  br i1 %exitcond380.not.i.i, label %.loopexit286.thread.i.i, label %.lr.ph306.i.i, !llvm.loop !93

.loopexit286.i.i:                                 ; preds = %Extra_TruthIsEqual.exit.i.i, %bb.ap
  %.1182293.i.i = phi i32 [ %i.ql, %Extra_TruthIsEqual.exit.i.i ], [ 0, %bb.ap ]
  %.not201.i.i = icmp eq i32 %.1182293.i.i, %.0310.i.i
  br i1 %.not201.i.i, label %.loopexit286.thread.i.i, label %bb.ar

.loopexit286.thread.i.i:                          ; preds = %bb.aq, %.loopexit286.i.i
  %i.qs = trunc i64 %indvars.iv381.i.i to i8
  %i.qt = sext i32 %.0310.i.i to i64              ; 2 uses
  %i.qu = getelementptr inbounds [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %i.qt
  store i8 %i.qs, ptr %i.qu, align 16, !tbaa !61
  %i.qv = getelementptr inbounds i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %i.qt
  store i8 1, ptr %i.qv, align 1, !tbaa !61
  %i.qw = add nuw nsw i32 %.0310.i.i, 1
  %.not202.i.i = icmp slt i32 %.0310.i.i, %i.ps
  br i1 %.not202.i.i, label %bb.ar, label %Abc_NodeDecomposeStep.exit.i

bb.ar:                                            ; preds = %.loopexit286.thread.i.i, %.loopexit286.i.i
  %.1.i.i = phi i32 [ %.0310.i.i, %.loopexit286.i.i ], [ %i.qw, %.loopexit286.thread.i.i ]
  %.1.fr.i.i = freeze i32 %.1.i.i                 ; 6 uses
  %indvars.iv.next382.i.i = add nuw nsw i64 %indvars.iv381.i.i, 1 ; 2 uses
  %exitcond386.not.i.i = icmp eq i64 %indvars.iv.next382.i.i, %i.pt
  br i1 %exitcond386.not.i.i, label %._crit_edge.i.i, label %bb.ap, !llvm.loop !94

._crit_edge.i.i:                                  ; preds = %bb.ar
  %i.qx = icmp ult i32 %.1.fr.i.i, 2
  %i.qy = add i32 %.1.fr.i.i, -1
  %i.qz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.qy, i1 true)
  %i.ra = sub nuw nsw i32 32, %i.qz
  %spec.select.i84.i = select i1 %i.qx, i32 %.1.fr.i.i, i32 %i.ra ; 2 uses
  br i1 %i.po, label %select.unfold.preheader.i226.i.i, label %Extra_TruthClear.exit.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge302.i.i
  br i1 %i.pm, label %select.unfold.preheader.i226.i.i, label %.preheader.i.i

select.unfold.preheader.i226.i.i:                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.rb = phi i32 [ %spec.select.i84.i, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i.i ]
  %i.rc = phi i32 [ %i.pq, %._crit_edge.i.i ], [ -2147483648, %._crit_edge.thread.i.i ]
  %.0.lcssa450.i.i310 = phi i32 [ %.1.fr.i.i, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i.i ]
  %spec.select.i.i.i304308 = phi i32 [ %spec.select.i.i.i301, %._crit_edge.i.i ], [ %spec.select.i.i.i302, %._crit_edge.thread.i.i ] ; 2 uses
  %i.rd = zext nneg i32 %spec.select.i.i.i304308 to i64
  %i.re = shl nuw nsw i64 %i.rd, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gp, i8 0, i64 %i.re, i1 false), !tbaa !47
  br label %Extra_TruthClear.exit.i.i

Extra_TruthClear.exit.i.i:                        ; preds = %._crit_edge.i.i, %select.unfold.preheader.i226.i.i
  %i.rf = phi i32 [ %spec.select.i84.i, %._crit_edge.i.i ], [ %i.rb, %select.unfold.preheader.i226.i.i ] ; 6 uses
  %i.rg = phi i32 [ %i.pq, %._crit_edge.i.i ], [ %i.rc, %select.unfold.preheader.i226.i.i ]
  %.0.lcssa450.i.i309 = phi i32 [ %.1.fr.i.i, %._crit_edge.i.i ], [ %.0.lcssa450.i.i310, %select.unfold.preheader.i226.i.i ] ; 3 uses
  %spec.select.i.i.i304307 = phi i32 [ %spec.select.i.i.i301, %._crit_edge.i.i ], [ %spec.select.i.i.i304308, %select.unfold.preheader.i226.i.i ] ; 8 uses
  %i.rh = phi i1 [ false, %._crit_edge.i.i ], [ true, %select.unfold.preheader.i226.i.i ] ; 2 uses
  %i.ri = icmp sgt i32 %.0.lcssa450.i.i309, 0     ; 2 uses
  br i1 %i.ri, label %.lr.ph318.i.i, label %._crit_edge319.i.i

.lr.ph318.i.i:                                    ; preds = %Extra_TruthClear.exit.i.i
  %i.rj = zext i32 %spec.select.i.i.i304307 to i64 ; 16 uses
  %wide.trip.count396.i.i = zext nneg i32 %.0.lcssa450.i.i309 to i64
  %wide.trip.count391.i.i = zext nneg i32 %i.rf to i64
  %i.rk = load ptr, ptr %i.ab, align 8, !tbaa !44
  br i1 %i.rh, label %.lr.ph315.preheader.i.i.preheader, label %._crit_edge319.i.i

.lr.ph315.preheader.i.i.preheader:                ; preds = %.lr.ph318.i.i
  %4 = shl nuw nsw i64 %i.rj, 2                   ; 4 uses
  %.not573 = icmp eq i32 %spec.select.i.i.i304307, 0
  %i.rl = select i1 %.not573, i64 0, i64 4        ; 2 uses
  %scevgep447 = getelementptr i8, ptr %i.gp, i64 %4
  %scevgep448 = getelementptr i8, ptr %scevgep446, i64 %i.rl
  %.not574 = icmp eq i32 %spec.select.i.i.i304307, 0
  %i.rm = select i1 %.not574, i64 0, i64 4        ; 2 uses
  %5 = shl nuw nsw i64 %i.rj, 2                   ; 2 uses
  %.not575 = icmp eq i32 %spec.select.i.i.i304307, 0
  %i.rn = select i1 %.not575, i64 0, i64 4        ; 2 uses
  %i.ro = icmp ne i32 %spec.select.i.i.i304307, 0
  %.neg576 = sext i1 %i.ro to i64
  %i.rp = add nuw nsw i64 %i.rj, 1
  %i.rq = add nsw i64 %i.rp, %.neg576             ; 5 uses
  %min.iters.check481 = icmp ult i64 %i.rq, 8     ; 2 uses
  %n.vec506 = and i64 %i.rq, -8                   ; 3 uses
  %i.rr = sub nsw i64 %i.rj, %n.vec506
  %cmp.n515 = icmp eq i64 %i.rq, %n.vec506
  %n.vec483 = and i64 %i.rq, -8                   ; 3 uses
  %i.rs = sub nsw i64 %i.rj, %n.vec483
  %cmp.n492 = icmp eq i64 %i.rq, %n.vec483
  %i.rt = icmp ne i32 %spec.select.i.i.i304307, 0
  %.neg577 = sext i1 %i.rt to i64
  %i.ru = add nuw nsw i64 %i.rj, 1
  %i.rv = add nsw i64 %i.ru, %.neg577             ; 3 uses
  %min.iters.check456 = icmp ult i64 %i.rv, 8
  %n.vec458 = and i64 %i.rv, -8                   ; 3 uses
  %i.rw = sub nsw i64 %i.rj, %n.vec458
  %cmp.n467 = icmp eq i64 %i.rv, %n.vec458
  br label %.lr.ph315.preheader.i.i

.lr.ph315.preheader.i.i:                          ; preds = %.lr.ph315.preheader.i.i.preheader, %Extra_TruthOr.exit.i.i.loopexit
  %indvars.iv393.i.i = phi i64 [ %indvars.iv.next394.i.i, %Extra_TruthOr.exit.i.i.loopexit ], [ 0, %.lr.ph315.preheader.i.i.preheader ] ; 3 uses
  %i.rx = getelementptr inbounds nuw [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %indvars.iv393.i.i
  %i.ry = load i8, ptr %i.rx, align 16, !tbaa !61
  %i.rz = sext i8 %i.ry to i32
  %i.sa = add nsw i32 %i.rg, %i.rz
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.sb
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !46 ; 11 uses
  %i.se = trunc nuw nsw i64 %indvars.iv393.i.i to i32
  %scevgep503 = getelementptr i8, ptr %i.sd, i64 %4
  %scevgep470 = getelementptr i8, ptr %i.sd, i64 -4 ; 2 uses
  %scevgep472 = getelementptr i8, ptr %scevgep470, i64 %i.rm
  %scevgep473 = getelementptr i8, ptr %i.sd, i64 %5
  %scevgep496 = getelementptr i8, ptr %scevgep470, i64 %i.rn
  br label %.lr.ph315.i.us.i

.lr.ph315.i.us.i:                                 ; preds = %.lr.ph315.preheader.i.i, %Extra_TruthAnd.exit.i.us.i
  %indvars.iv387.i.us.i = phi i64 [ %indvars.iv.next388.i.us.i, %Extra_TruthAnd.exit.i.us.i ], [ 0, %.lr.ph315.preheader.i.i ] ; 3 uses
  %i.sf = trunc nuw nsw i64 %indvars.iv387.i.us.i to i32
  %i.sg = shl nuw i32 1, %i.sf
  %i.sh = and i32 %i.sg, %i.se
  %.not199.i.us.i = icmp eq i32 %i.sh, 0
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv387.i.us.i
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !47
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.rk, i64 %i.sk
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !46 ; 8 uses
  br i1 %.not199.i.us.i, label %select.unfold.i234.i.us.i.preheader, label %select.unfold.i229.i.us.i.preheader

select.unfold.i229.i.us.i.preheader:              ; preds = %.lr.ph315.i.us.i
  br i1 %min.iters.check481, label %select.unfold.i229.i.us.i.preheader592, label %vector.memcheck494

vector.memcheck494:                               ; preds = %select.unfold.i229.i.us.i.preheader
  %scevgep497 = getelementptr i8, ptr %i.sm, i64 %i.rn
  %scevgep498 = getelementptr i8, ptr %scevgep497, i64 -4
  %scevgep499 = getelementptr i8, ptr %i.sm, i64 %5
  %bound0500 = icmp ult ptr %scevgep496, %scevgep499
  %bound1501 = icmp ult ptr %scevgep498, %scevgep473
  %found.conflict502 = and i1 %bound0500, %bound1501
  br i1 %found.conflict502, label %select.unfold.i229.i.us.i.preheader592, label %vector.body507

vector.body507:                                   ; preds = %vector.memcheck494, %vector.body507
  %index508 = phi i64 [ %index.next513, %vector.body507 ], [ 0, %vector.memcheck494 ] ; 2 uses
  %i.sn = xor i64 %index508, -1
  %i.so = add i64 %i.sn, %i.rj                    ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.so ; 2 uses
  %i.sq = getelementptr inbounds i8, ptr %i.sp, i64 -12 ; 2 uses
  %i.sr = getelementptr inbounds i8, ptr %i.sp, i64 -28 ; 2 uses
  %wide.load509 = load <4 x i32>, ptr %i.sq, align 4, !tbaa !47, !alias.scope !170, !noalias !171
  %wide.load510 = load <4 x i32>, ptr %i.sr, align 4, !tbaa !47, !alias.scope !170, !noalias !171
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.so ; 2 uses
  %i.st = getelementptr inbounds i8, ptr %i.ss, i64 -12
  %i.su = getelementptr inbounds i8, ptr %i.ss, i64 -28
  %wide.load511 = load <4 x i32>, ptr %i.st, align 4, !tbaa !47, !alias.scope !171
  %wide.load512 = load <4 x i32>, ptr %i.su, align 4, !tbaa !47, !alias.scope !171
  %i.sv = and <4 x i32> %wide.load511, %wide.load509
  %i.sw = and <4 x i32> %wide.load512, %wide.load510
  store <4 x i32> %i.sv, ptr %i.sq, align 4, !tbaa !47, !alias.scope !170, !noalias !171
  store <4 x i32> %i.sw, ptr %i.sr, align 4, !tbaa !47, !alias.scope !170, !noalias !171
  %index.next513 = add nuw i64 %index508, 8       ; 2 uses
  %i.sx = icmp eq i64 %index.next513, %n.vec506
  br i1 %i.sx, label %middle.block514, label %vector.body507, !llvm.loop !98

middle.block514:                                  ; preds = %vector.body507
  br i1 %cmp.n515, label %Extra_TruthAnd.exit.i.us.i, label %select.unfold.i229.i.us.i.preheader592

select.unfold.i229.i.us.i.preheader592:           ; preds = %vector.memcheck494, %select.unfold.i229.i.us.i.preheader, %middle.block514
  %indvars.iv.i230.i.us.i.ph = phi i64 [ %i.rj, %vector.memcheck494 ], [ %i.rj, %select.unfold.i229.i.us.i.preheader ], [ %i.rr, %middle.block514 ]
  br label %select.unfold.i229.i.us.i

select.unfold.i234.i.us.i.preheader:              ; preds = %.lr.ph315.i.us.i
  br i1 %min.iters.check481, label %select.unfold.i234.i.us.i.preheader591, label %vector.memcheck469

vector.memcheck469:                               ; preds = %select.unfold.i234.i.us.i.preheader
  %scevgep474 = getelementptr i8, ptr %i.sm, i64 %i.rm
  %scevgep475 = getelementptr i8, ptr %scevgep474, i64 -4
  %scevgep476 = getelementptr i8, ptr %i.sm, i64 %4
  %bound0477 = icmp ult ptr %scevgep472, %scevgep476
  %bound1478 = icmp ult ptr %scevgep475, %scevgep503
  %found.conflict479 = and i1 %bound0477, %bound1478
  br i1 %found.conflict479, label %select.unfold.i234.i.us.i.preheader591, label %vector.body484

vector.body484:                                   ; preds = %vector.memcheck469, %vector.body484
  %index485 = phi i64 [ %index.next490, %vector.body484 ], [ 0, %vector.memcheck469 ] ; 2 uses
  %i.sy = xor i64 %index485, -1
  %i.sz = add i64 %i.sy, %i.rj                    ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.sz ; 2 uses
  %i.tb = getelementptr inbounds i8, ptr %i.ta, i64 -12 ; 2 uses
  %i.tc = getelementptr inbounds i8, ptr %i.ta, i64 -28 ; 2 uses
  %wide.load486.a = load <4 x i32>, ptr %i.tb, align 4, !tbaa !47, !alias.scope !172, !noalias !173
  %wide.load487 = load <4 x i32>, ptr %i.tc, align 4, !tbaa !47, !alias.scope !172, !noalias !173
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.sz ; 2 uses
  %i.te = getelementptr inbounds i8, ptr %i.td, i64 -12
  %i.tf = getelementptr inbounds i8, ptr %i.td, i64 -28
  %wide.load488 = load <4 x i32>, ptr %i.te, align 4, !tbaa !47, !alias.scope !173
  %wide.load489 = load <4 x i32>, ptr %i.tf, align 4, !tbaa !47, !alias.scope !173
  %i.tg = xor <4 x i32> %wide.load488, splat (i32 -1)
  %i.th = xor <4 x i32> %wide.load489, splat (i32 -1)
  %i.ti = and <4 x i32> %wide.load486.a, %i.tg
  %i.tj = and <4 x i32> %wide.load487, %i.th
  store <4 x i32> %i.ti, ptr %i.tb, align 4, !tbaa !47, !alias.scope !172, !noalias !173
  store <4 x i32> %i.tj, ptr %i.tc, align 4, !tbaa !47, !alias.scope !172, !noalias !173
  %index.next490 = add nuw i64 %index485, 8       ; 2 uses
  %i.tk = icmp eq i64 %index.next490, %n.vec483
  br i1 %i.tk, label %middle.block491, label %vector.body484, !llvm.loop !102

middle.block491:                                  ; preds = %vector.body484
  br i1 %cmp.n492, label %Extra_TruthAnd.exit.i.us.i, label %select.unfold.i234.i.us.i.preheader591

select.unfold.i234.i.us.i.preheader591:           ; preds = %vector.memcheck469, %select.unfold.i234.i.us.i.preheader, %middle.block491
  %indvars.iv.i235.i.us.i.ph = phi i64 [ %i.rj, %vector.memcheck469 ], [ %i.rj, %select.unfold.i234.i.us.i.preheader ], [ %i.rs, %middle.block491 ]
  br label %select.unfold.i234.i.us.i

select.unfold.i229.i.us.i:                        ; preds = %select.unfold.i229.i.us.i.preheader592, %select.unfold.i229.i.us.i
  %indvars.iv.i230.i.us.i = phi i64 [ %indvars.iv.next.i231.i.us.i, %select.unfold.i229.i.us.i ], [ %indvars.iv.i230.i.us.i.ph, %select.unfold.i229.i.us.i.preheader592 ] ; 2 uses
  %indvars.iv.next.i231.i.us.i = add nsw i64 %indvars.iv.i230.i.us.i, -1 ; 3 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next.i231.i.us.i ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !47
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.next.i231.i.us.i
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !47
  %i.tp = and i32 %i.to, %i.tm
  store i32 %i.tp, ptr %i.tl, align 4, !tbaa !47
  %i.tq = icmp samesign ugt i64 %indvars.iv.i230.i.us.i, 1
  br i1 %i.tq, label %select.unfold.i229.i.us.i, label %Extra_TruthAnd.exit.i.us.i, !llvm.loop !103

select.unfold.i234.i.us.i:                        ; preds = %select.unfold.i234.i.us.i.preheader591, %select.unfold.i234.i.us.i
  %indvars.iv.i235.i.us.i = phi i64 [ %indvars.iv.next.i236.i.us.i, %select.unfold.i234.i.us.i ], [ %indvars.iv.i235.i.us.i.ph, %select.unfold.i234.i.us.i.preheader591 ] ; 2 uses
  %indvars.iv.next.i236.i.us.i = add nsw i64 %indvars.iv.i235.i.us.i, -1 ; 3 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next.i236.i.us.i ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !47
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %indvars.iv.next.i236.i.us.i
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !47
  %i.tv = xor i32 %i.tu, -1
  %i.tw = and i32 %i.ts, %i.tv
  store i32 %i.tw, ptr %i.tr, align 4, !tbaa !47
  %i.tx = icmp samesign ugt i64 %indvars.iv.i235.i.us.i, 1
  br i1 %i.tx, label %select.unfold.i234.i.us.i, label %Extra_TruthAnd.exit.i.us.i, !llvm.loop !104

Extra_TruthAnd.exit.i.us.i:                       ; preds = %select.unfold.i229.i.us.i, %select.unfold.i234.i.us.i, %middle.block514, %middle.block491
  %indvars.iv.next388.i.us.i = add nuw nsw i64 %indvars.iv387.i.us.i, 1 ; 2 uses
  %exitcond392.not.i.us.i = icmp eq i64 %indvars.iv.next388.i.us.i, %wide.trip.count391.i.i
  br i1 %exitcond392.not.i.us.i, label %select.unfold.i239.i.i.preheader, label %.lr.ph315.i.us.i, !llvm.loop !105

select.unfold.i239.i.i.preheader:                 ; preds = %Extra_TruthAnd.exit.i.us.i
  br i1 %min.iters.check456, label %select.unfold.i239.i.i.preheader598, label %vector.memcheck445

vector.memcheck445:                               ; preds = %select.unfold.i239.i.i.preheader
  %scevgep449 = getelementptr i8, ptr %i.sd, i64 %i.rl
  %scevgep450 = getelementptr i8, ptr %scevgep449, i64 -4
  %scevgep451 = getelementptr i8, ptr %i.sd, i64 %4
  %bound0452 = icmp ult ptr %scevgep448, %scevgep451
  %bound1453 = icmp ult ptr %scevgep450, %scevgep447
  %found.conflict454 = and i1 %bound0452, %bound1453
  br i1 %found.conflict454, label %select.unfold.i239.i.i.preheader598, label %vector.body459

vector.body459:                                   ; preds = %vector.memcheck445, %vector.body459
  %index460 = phi i64 [ %index.next465, %vector.body459 ], [ 0, %vector.memcheck445 ] ; 2 uses
  %i.ty = xor i64 %index460, -1
  %i.tz = add i64 %i.ty, %i.rj                    ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.tz ; 2 uses
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 -12 ; 2 uses
  %i.uc = getelementptr inbounds i8, ptr %i.ua, i64 -28 ; 2 uses
  %wide.load461 = load <4 x i32>, ptr %i.ub, align 4, !tbaa !47, !alias.scope !174, !noalias !175
  %wide.load462 = load <4 x i32>, ptr %i.uc, align 4, !tbaa !47, !alias.scope !174, !noalias !175
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.tz ; 2 uses
  %i.ue = getelementptr inbounds i8, ptr %i.ud, i64 -12
  %i.uf = getelementptr inbounds i8, ptr %i.ud, i64 -28
  %wide.load463 = load <4 x i32>, ptr %i.ue, align 4, !tbaa !47, !alias.scope !175
  %wide.load464 = load <4 x i32>, ptr %i.uf, align 4, !tbaa !47, !alias.scope !175
  %i.ug = or <4 x i32> %wide.load463, %wide.load461
  %i.uh = or <4 x i32> %wide.load464, %wide.load462
  store <4 x i32> %i.ug, ptr %i.ub, align 4, !tbaa !47, !alias.scope !174, !noalias !175
  store <4 x i32> %i.uh, ptr %i.uc, align 4, !tbaa !47, !alias.scope !174, !noalias !175
  %index.next465 = add nuw i64 %index460, 8       ; 2 uses
  %i.ui = icmp eq i64 %index.next465, %n.vec458
  br i1 %i.ui, label %middle.block466, label %vector.body459, !llvm.loop !109

middle.block466:                                  ; preds = %vector.body459
  br i1 %cmp.n467, label %Extra_TruthOr.exit.i.i.loopexit, label %select.unfold.i239.i.i.preheader598

select.unfold.i239.i.i.preheader598:              ; preds = %vector.memcheck445, %select.unfold.i239.i.i.preheader, %middle.block466
  %indvars.iv.i240.i.i.ph = phi i64 [ %i.rj, %vector.memcheck445 ], [ %i.rj, %select.unfold.i239.i.i.preheader ], [ %i.rw, %middle.block466 ]
  br label %select.unfold.i239.i.i

select.unfold.i239.i.i:                           ; preds = %select.unfold.i239.i.i.preheader598, %select.unfold.i239.i.i
  %indvars.iv.i240.i.i = phi i64 [ %indvars.iv.next.i241.i.i, %select.unfold.i239.i.i ], [ %indvars.iv.i240.i.i.ph, %select.unfold.i239.i.i.preheader598 ] ; 2 uses
  %indvars.iv.next.i241.i.i = add nsw i64 %indvars.iv.i240.i.i, -1 ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i241.i.i ; 2 uses
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !47
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next.i241.i.i
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !47
  %i.un = or i32 %i.um, %i.uk
  store i32 %i.un, ptr %i.uj, align 4, !tbaa !47
  %i.uo = icmp samesign ugt i64 %indvars.iv.i240.i.i, 1
  br i1 %i.uo, label %select.unfold.i239.i.i, label %Extra_TruthOr.exit.i.i.loopexit, !llvm.loop !110

Extra_TruthOr.exit.i.i.loopexit:                  ; preds = %select.unfold.i239.i.i, %middle.block466
  %indvars.iv.next394.i.i = add nuw nsw i64 %indvars.iv393.i.i, 1 ; 2 uses
  %exitcond397.not.i.i = icmp eq i64 %indvars.iv.next394.i.i, %wide.trip.count396.i.i
  br i1 %exitcond397.not.i.i, label %._crit_edge319.i.i, label %.lr.ph315.preheader.i.i, !llvm.loop !111

._crit_edge319.i.i:                               ; preds = %Extra_TruthOr.exit.i.i.loopexit, %.lr.ph318.i.i, %Extra_TruthClear.exit.i.i
  %i.up = phi i1 [ false, %.lr.ph318.i.i ], [ %i.rh, %Extra_TruthClear.exit.i.i ], [ true, %Extra_TruthOr.exit.i.i.loopexit ] ; 2 uses
  %i.uq = load ptr, ptr %i.kq, align 8, !tbaa !46 ; 25 uses
  %i.ur = icmp sgt i32 %i.rf, 0
  br i1 %i.ur, label %.lr.ph336.i.i, label %.preheader.i.i

.lr.ph336.i.i:                                    ; preds = %._crit_edge319.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.kx, i64 256
  %wide.trip.count417.i.i = zext nneg i32 %i.rf to i64 ; 3 uses
  %wide.trip.count409.i.i = zext nneg i32 %.0.lcssa450.i.i309 to i64 ; 3 uses
  %i.ut = icmp slt i32 %.fr, 6
  %i.uu = add nsw i32 %.fr, -5
  %i.uv = shl nuw i32 1, %i.uu
  %.fr299 = freeze i32 %i.uv
  %spec.select.i242.i.i = select i1 %i.ut, i32 1, i32 %.fr299 ; 6 uses
  %i.uw = icmp sgt i32 %spec.select.i242.i.i, 0   ; 4 uses
  %i.ux = zext i32 %spec.select.i242.i.i to i64   ; 10 uses
  %i.uy = shl nuw nsw i64 %i.ux, 2                ; 11 uses
  %i.uz = icmp sgt i32 %.fr, 0                    ; 2 uses
  %i.va = icmp sgt i32 %spec.select.i242.i.i, 0
  %i.vb = zext i32 %.fr to i64                    ; 2 uses
  %i.vc = zext nneg i32 %spec.select.i242.i.i to i64 ; 8 uses
  %scevgep.a = getelementptr i8, ptr %i.uq, i64 %i.uy
  %scevgep429 = getelementptr i8, ptr %i.uq, i64 4
  %min.iters.check396 = icmp ult i32 %spec.select.i242.i.i, 8 ; 2 uses
  %n.vec417 = and i64 %i.ux, 2147483640           ; 3 uses
  %i.vd = sub nsw i64 %i.vc, %n.vec417
  %cmp.n426 = icmp eq i64 %n.vec417, %i.ux
  %n.vec398 = and i64 %i.ux, 2147483640           ; 3 uses
  %i.ve = sub nsw i64 %i.vc, %n.vec398
  %cmp.n407 = icmp eq i64 %n.vec398, %i.ux
  %min.iters.check377 = icmp ult i32 %spec.select.i242.i.i, 8
  %n.vec379 = and i64 %i.ux, 2147483640           ; 2 uses
  %i.vf = and i64 %i.ux, 7
  %cmp.n388 = icmp eq i64 %n.vec379, %i.ux
  br label %bb.as

bb.as:                                            ; preds = %Abc_NodeGetLevel.exit.i.i, %.lr.ph336.i.i
  %indvars.iv414.i.i = phi i64 [ 0, %.lr.ph336.i.i ], [ %indvars.iv.next415.i.i, %Abc_NodeGetLevel.exit.i.i ] ; 3 uses
  br i1 %i.uw, label %select.unfold.preheader.i243.i.i, label %Extra_TruthClear.exit244.i.i

select.unfold.preheader.i243.i.i:                 ; preds = %bb.as
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.uq, i8 0, i64 %i.uy, i1 false), !tbaa !47
  br label %Extra_TruthClear.exit244.i.i

Extra_TruthClear.exit244.i.i:                     ; preds = %select.unfold.preheader.i243.i.i, %bb.as
  br i1 %i.ri, label %.lr.ph327.i.i, label %._crit_edge328.i.i

.lr.ph327.i.i:                                    ; preds = %Extra_TruthClear.exit244.i.i
  %i.vg = trunc nuw nsw i64 %indvars.iv414.i.i to i32
  %i.vh = shl nuw i32 1, %i.vg                    ; 3 uses
  br i1 %i.uz, label %.lr.ph327.i.i.split.us, label %.lr.ph327.i.i.split

.lr.ph327.i.i.split.us:                           ; preds = %.lr.ph327.i.i, %.loopexit.i.i.us
  %indvars.iv406.i.i.us = phi i64 [ %indvars.iv.next407.i.i.us, %.loopexit.i.i.us ], [ 0, %.lr.ph327.i.i ] ; 4 uses
  %i.vi = trunc nuw nsw i64 %indvars.iv406.i.i.us to i32
  %i.vj = and i32 %i.vh, %i.vi
  %.not.i86.i.us = icmp eq i32 %i.vj, 0
  br i1 %.not.i86.i.us, label %.loopexit.i.i.us, label %.preheader284.i.i.us

.preheader284.i.i.us:                             ; preds = %.lr.ph327.i.i.split.us
  %i.vk = getelementptr inbounds nuw i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %indvars.iv406.i.i.us
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !61  ; 2 uses
  %i.vm = icmp sgt i8 %i.vl, 0
  br i1 %i.vm, label %.lr.ph325.i.i.us, label %.loopexit.i.i.us

.lr.ph325.i.i.us:                                 ; preds = %.preheader284.i.i.us
  %wide.trip.count404.i.i.us = zext nneg i8 %i.vl to i64
  %i.vn = load ptr, ptr %i.kr, align 8, !tbaa !46 ; 11 uses
  %i.vo = getelementptr inbounds nuw [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %indvars.iv406.i.i.us
  %i.vp = load ptr, ptr %i.ab, align 8, !tbaa !44
  br i1 %i.va, label %.lr.ph325.i.i.split.us.us.split.us.preheader, label %.loopexit.i.i.us

.lr.ph325.i.i.split.us.us.split.us.preheader:     ; preds = %.lr.ph325.i.i.us
  %scevgep375 = getelementptr i8, ptr %i.vn, i64 %i.uy ; 3 uses
  %bound0 = icmp ult ptr %i.uq, %scevgep375
  %bound1 = icmp ult ptr %i.vn, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph325.i.i.split.us.us.split.us

.lr.ph325.i.i.split.us.us.split.us:               ; preds = %.lr.ph325.i.i.split.us.us.split.us.preheader, %Extra_TruthOr.exit264.i.i.us.us.us
  %indvars.iv401.i.i.us.us.us = phi i64 [ %indvars.iv.next402.i.i.us.us.us, %Extra_TruthOr.exit264.i.i.us.us.us ], [ 0, %.lr.ph325.i.i.split.us.us.split.us.preheader ] ; 2 uses
  br i1 %i.uw, label %select.unfold.preheader.i246.i.i.us.us.us, label %Extra_TruthFill.exit.i.i.us.us.us

select.unfold.preheader.i246.i.i.us.us.us:        ; preds = %.lr.ph325.i.i.split.us.us.split.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.vn, i8 -1, i64 %i.uy, i1 false), !tbaa !47
  br label %Extra_TruthFill.exit.i.i.us.us.us

Extra_TruthFill.exit.i.i.us.us.us:                ; preds = %select.unfold.preheader.i246.i.i.us.us.us, %.lr.ph325.i.i.split.us.us.split.us
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 %indvars.iv401.i.i.us.us.us
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !61
  %i.vs = sext i8 %i.vr to i32
  br label %bb.at

bb.at:                                            ; preds = %Extra_TruthAnd.exit252.i.i.us.us.us.us, %Extra_TruthFill.exit.i.i.us.us.us
  %indvars.iv398.i.i.us.us.us.us = phi i64 [ 0, %Extra_TruthFill.exit.i.i.us.us.us ], [ %indvars.iv.next399.i.i.us.us.us.us, %Extra_TruthAnd.exit252.i.i.us.us.us.us ] ; 3 uses
  %i.vt = trunc nuw nsw i64 %indvars.iv398.i.i.us.us.us.us to i32
  %i.vu = xor i32 %i.vt, -1
  %i.vv = add i32 %.fr, %i.vu
  %i.vw = shl nuw i32 1, %i.vv
  %i.vx = and i32 %i.vw, %i.vs
  %.not198.i.i.us.us.us.us = icmp eq i32 %i.vx, 0
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %indvars.iv398.i.i.us.us.us.us
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !46 ; 8 uses
  br i1 %.not198.i.i.us.us.us.us, label %select.unfold.i255.i.i.us.us.us.us.preheader, label %select.unfold.i249.i.i.us.us.us.us.preheader

select.unfold.i249.i.i.us.us.us.us.preheader:     ; preds = %bb.at
  br i1 %min.iters.check396, label %select.unfold.i249.i.i.us.us.us.us.preheader588, label %vector.memcheck409

vector.memcheck409:                               ; preds = %select.unfold.i249.i.i.us.us.us.us.preheader
  %scevgep410 = getelementptr i8, ptr %i.vz, i64 %i.uy
  %bound0411 = icmp ult ptr %i.vn, %scevgep410
  %bound1412 = icmp ult ptr %i.vz, %scevgep375
  %found.conflict413 = and i1 %bound0411, %bound1412
  br i1 %found.conflict413, label %select.unfold.i249.i.i.us.us.us.us.preheader588, label %vector.body418

vector.body418:                                   ; preds = %vector.memcheck409, %vector.body418
  %index419 = phi i64 [ %index.next424, %vector.body418 ], [ 0, %vector.memcheck409 ] ; 2 uses
  %i.wa = xor i64 %index419, -1
  %i.wb = add i64 %i.wa, %i.vc                    ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.wb ; 2 uses
  %i.wd = getelementptr inbounds i8, ptr %i.wc, i64 -12 ; 2 uses
  %i.we = getelementptr inbounds i8, ptr %i.wc, i64 -28 ; 2 uses
  %wide.load420 = load <4 x i32>, ptr %i.wd, align 4, !tbaa !47, !alias.scope !176, !noalias !177
  %wide.load421 = load <4 x i32>, ptr %i.we, align 4, !tbaa !47, !alias.scope !176, !noalias !177
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %i.wb ; 2 uses
  %i.wg = getelementptr inbounds i8, ptr %i.wf, i64 -12
  %i.wh = getelementptr inbounds i8, ptr %i.wf, i64 -28
  %wide.load422 = load <4 x i32>, ptr %i.wg, align 4, !tbaa !47, !alias.scope !177
  %wide.load423 = load <4 x i32>, ptr %i.wh, align 4, !tbaa !47, !alias.scope !177
  %i.wi = and <4 x i32> %wide.load422, %wide.load420
  %i.wj = and <4 x i32> %wide.load423, %wide.load421
  store <4 x i32> %i.wi, ptr %i.wd, align 4, !tbaa !47, !alias.scope !176, !noalias !177
  store <4 x i32> %i.wj, ptr %i.we, align 4, !tbaa !47, !alias.scope !176, !noalias !177
  %index.next424 = add nuw i64 %index419, 8       ; 2 uses
  %i.wk = icmp eq i64 %index.next424, %n.vec417
  br i1 %i.wk, label %middle.block425, label %vector.body418, !llvm.loop !115

middle.block425:                                  ; preds = %vector.body418
  br i1 %cmp.n426, label %Extra_TruthAnd.exit252.i.i.us.us.us.us, label %select.unfold.i249.i.i.us.us.us.us.preheader588

select.unfold.i249.i.i.us.us.us.us.preheader588:  ; preds = %vector.memcheck409, %select.unfold.i249.i.i.us.us.us.us.preheader, %middle.block425
  %indvars.iv.i250.i.i.us.us.us.us.ph = phi i64 [ %i.vc, %vector.memcheck409 ], [ %i.vc, %select.unfold.i249.i.i.us.us.us.us.preheader ], [ %i.vd, %middle.block425 ]
  br label %select.unfold.i249.i.i.us.us.us.us

select.unfold.i255.i.i.us.us.us.us.preheader:     ; preds = %bb.at
  br i1 %min.iters.check396, label %select.unfold.i255.i.i.us.us.us.us.preheader587, label %vector.memcheck390

vector.memcheck390:                               ; preds = %select.unfold.i255.i.i.us.us.us.us.preheader
  %scevgep391 = getelementptr i8, ptr %i.vz, i64 %i.uy
  %bound0392 = icmp ult ptr %i.vn, %scevgep391
end_hunk_0
