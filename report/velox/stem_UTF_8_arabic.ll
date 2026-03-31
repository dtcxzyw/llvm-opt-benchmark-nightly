begin_hunk_0
bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cp
  %.24306 = phi i32 [ %.lobit620, %bb.cp ], [ %.23305, %bb.cr ], [ %.lobit621, %bb.cq ] ; 2 uses
  %.23 = phi i32 [ %.20, %bb.cp ], [ %.22, %bb.cr ], [ %.21, %bb.cq ] ; 3 uses
  switch i32 %.24306, label %.thread824 [
    i32 0, label %.thread506
    i32 22, label %r_Suffix_Noun_Step1b.exit.thread
  ]
end_hunk_0
begin_hunk_1
  %.fr.lobit = lshr i32 %.fr, 31
  br i1 %i.ko, label %bb.cw, label %.thread506

bb.cw:                                            ; preds = %r_Suffix_Noun_Step1b.exit, %r_Suffix_Noun_Step2c2.exit, %bb.cv, %bb.ct, %bb.cg
  %.27309 = phi i32 [ %.lobit613.a, %r_Suffix_Noun_Step2c2.exit ], [ %.lobit626.a, %bb.ct ], [ %.lobit619, %r_Suffix_Noun_Step1b.exit ], [ %.lobit614, %bb.cg ], [ %.fr.lobit, %bb.cv ]
  %.28 = phi i32 [ %..11, %r_Suffix_Noun_Step2c2.exit ], [ %.25, %bb.ct ], [ %..18, %r_Suffix_Noun_Step1b.exit ], [ %.13, %bb.cg ], [ %.fr, %bb.cv ] ; 2 uses
  %cond608 = icmp eq i32 %.27309, 0
  br i1 %cond608, label %.thread506, label %r_Normalize_pre.exit.thread

.thread506.sink.split:                            ; preds = %bb.ck, %.thread493
  %.sink = phi i32 [ %i.kn, %.thread493 ], [ %i.iz, %bb.ck ]
end_hunk_1
begin_hunk_2
  br label %.thread506

.thread506:                                       ; preds = %.thread506.sink.split, %r_Suffix_Noun_Step2c2.exit, %bb.cw, %bb.cl, %bb.cv, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.cj, %bb.ci, %bb.ch
  %.28504510 = phi i32 [ %.26, %bb.cv ], [ %.21, %bb.cq ], [ %.25, %bb.ct ], [ %.23, %bb.cs ], [ %..11, %r_Suffix_Noun_Step2c2.exit ], [ %.28, %bb.cw ], [ %.22, %bb.cr ], [ %.16, %bb.cj ], [ %.20, %bb.cp ], [ %.15, %bb.ci ], [ %.14, %bb.ch ], [ %.17, %bb.cl ], [ %.28504510.ph, %.thread506.sink.split ] ; 5 uses
  %i.kp = load i32, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  store i32 %i.kp, ptr %i.aa, align 8, !tbaa !19
  %i.kq = add nsw i32 %i.kp, -1                   ; 2 uses
end_hunk_2
begin_hunk_3
  %i.ln = icmp sgt i32 %i.lm, -1
  br i1 %i.ln, label %.thread523, label %r_Normalize_pre.exit.thread

.thread824:                                       ; preds = %bb.cs, %r_Suffix_Noun_Step3.exit, %.loopexit
  %.31313 = phi i32 [ %.12294, %.loopexit ], [ %.24306, %bb.cs ], [ %.lobit630, %r_Suffix_Noun_Step3.exit ]
  %.32 = phi i32 [ %.10, %.loopexit ], [ %.23, %bb.cs ], [ %..28, %r_Suffix_Noun_Step3.exit ] ; 3 uses
  switch i32 %.31313, label %r_Normalize_pre.exit.thread [
    i32 0, label %.thread523
    i32 12, label %.thread523
  ]

.thread523:                                       ; preds = %bb.dc, %r_Suffix_Verb_Step2c.exit.thread, %bb.da, %bb.db, %r_Suffix_Noun_Step3.exit.thread, %bb.bs, %bb.bu, %bb.bw, %r_Suffix_Noun_Step3.exit, %r_Suffix_Verb_Step2b.exit, %bb.bx, %.loopexit, %r_Suffix_Verb_Step2b.exit.thread, %.thread440, %.thread824, %.thread824
  %.32521 = phi i32 [ %.30, %bb.da ], [ %.32, %.thread824 ], [ %.32, %.thread824 ], [ %..28, %r_Suffix_Noun_Step3.exit ], [ %.4, %r_Suffix_Verb_Step2c.exit.thread ], [ %.9, %r_Suffix_Verb_Step2b.exit.thread ], [ %..7, %r_Suffix_Verb_Step2b.exit ], [ %.4, %bb.bx ], [ %.10, %.loopexit ], [ %.30, %bb.db ], [ %.4, %.thread440 ], [ %.4, %bb.bw ], [ %.4, %bb.bu ], [ %.4, %bb.bs ], [ %.30, %r_Suffix_Noun_Step3.exit.thread ], [ %.30, %bb.dc ]
  %i.lo = load i32, ptr %i.i, align 4, !tbaa !16
  %i.lp = load i32, ptr %i.eg, align 8, !tbaa !20 ; 9 uses
  store i32 %i.lp, ptr %i.e, align 8, !tbaa !14
end_hunk_3
begin_hunk_4
    i32 35, label %.thread585
  ]

.thread585:                                       ; preds = %bb.ee, %bb.ed, %bb.dy, %bb.dw, %bb.dz, %bb.ee
  store i32 %i.lp, ptr %i.eg, align 8, !tbaa !20
  %i.od = load i32, ptr %i.i, align 4, !tbaa !16  ; 3 uses
  store i32 %i.od, ptr %i.e, align 8, !tbaa !14
end_hunk_4
begin_hunk_5
  store i32 %i.lp, ptr %i.e, align 8, !tbaa !14
  br label %r_Normalize_pre.exit.thread

r_Normalize_pre.exit.thread:                      ; preds = %bb.i, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.bk, %bb.bo, %bb.bm, %bb.eq, %bb.ep, %bb.er, %bb.dc, %bb.cl, %bb.ei, %bb.bu, %bb.bw, %bb.bx, %bb.cw, %bb.ev, %bb.dv, %bb.dk, %bb.dm, %bb.di, %bb.do, %bb.ec, %bb.ee, %.thread824
  %.43 = phi i32 [ %.32, %.thread824 ], [ %i.gd, %bb.bu ], [ %i.me, %bb.di ], [ %i.nj, %bb.dv ], [ %.40, %bb.ee ], [ %i.mt, %bb.do ], [ %i.ny, %bb.ec ], [ %i.mj, %bb.dk ], [ %i.mo, %bb.dm ], [ %i.op, %bb.ei ], [ 1, %bb.ev ], [ %i.gi, %bb.bw ], [ %i.pf, %bb.eq ], [ %.28, %bb.cw ], [ %i.lm, %bb.dc ], [ %.17, %bb.cl ], [ %i.ev, %bb.bk ], [ %.4, %bb.bx ], [ %i.ph, %bb.er ], [ %i.pd, %bb.ep ], [ %i.fa, %bb.bm ], [ %i.ff, %bb.bo ], [ %i.ak, %bb.l ], [ %i.am, %bb.m ], [ %i.ao, %bb.n ], [ %i.aq, %bb.o ], [ %i.as, %bb.p ], [ %i.au, %bb.q ], [ %i.aw, %bb.r ], [ %i.ay, %bb.s ], [ %i.ba, %bb.t ], [ %i.bc, %bb.u ], [ %i.be, %bb.v ], [ %i.bg, %bb.w ], [ %i.bi, %bb.x ], [ %i.bk, %bb.y ], [ %i.bm, %bb.z ], [ %i.bo, %bb.aa ], [ %i.bq, %bb.ab ], [ %i.bs, %bb.ac ], [ %i.bu, %bb.ad ], [ %i.bw, %bb.ae ], [ %i.by, %bb.af ], [ %i.ca, %bb.ag ], [ %i.cc, %bb.ah ], [ %i.ce, %bb.ai ], [ %i.cg, %bb.aj ], [ %i.ci, %bb.ak ], [ %i.ck, %bb.al ], [ %i.cm, %bb.am ], [ %i.co, %bb.an ], [ %i.cq, %bb.ao ], [ %i.cs, %bb.ap ], [ %i.cu, %bb.aq ], [ %i.cw, %bb.ar ], [ %i.cy, %bb.as ], [ %i.da, %bb.at ], [ %i.dc, %bb.au ], [ %i.de, %bb.av ], [ %i.dg, %bb.aw ], [ %i.di, %bb.ax ], [ %i.dk, %bb.ay ], [ %i.dm, %bb.az ], [ %i.do, %bb.ba ], [ %i.dq, %bb.bb ], [ %i.ds, %bb.bc ], [ %i.du, %bb.bd ], [ %i.dw, %bb.be ], [ %i.ai, %bb.k ], [ %i.ae, %bb.i ], [ %i.dy, %bb.bf ], [ %i.ea, %bb.bg ], [ %i.ag, %bb.j ]
  ret i32 %.43
}

end_hunk_5
