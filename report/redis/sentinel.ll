inline.NumInlined: 166
inline.NumDeleted: 2
begin_hunk_0_@sentinelHandleConfiguration:bb.a
  %.not259 = icmp eq i64 %i.jb, 0
  br i1 %.not259, label %.critedge, label %sentinelCheckCreateInstanceErrors.exit.thread

.critedge:                                        ; preds = %bb.bf, %bb.ay, %bb.au, %bb.c, %bb.bi, %bb.ae, %bb.af, %sentinelPropagateDownAfterPeriod.exit, %bb.o, %bb.w, %bb.ac, %bb.ai, %bb.ap, %bb.bm, %bb.bl, %bb.bq, %bb.bw, %bb.bv, %bb.ca, %bb.cd, %bb.by, %bb.bs, %bb.bt, %bb.bo, %bb.al, %bb.am, %bb.z, %bb.s, %bb.l
  br label %sentinelCheckCreateInstanceErrors.exit.thread

sentinelCheckCreateInstanceErrors.exit.thread:    ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.aw, %bb.av, %bb.at, %bb.e, %bb.d, %bb.b, %bb.bj, %bb.cb, %bb.cd, %bb.cc, %bb.ca, %bb.by, %bb.bq, %bb.bh, %bb.ao, %bb.ak, %bb.ah, %bb.ab, %bb.y, %bb.v, %bb.u, %bb.r, %bb.q, %bb.n, %bb.l, %bb.k, %bb.h, %bb.g, %.critedge
  %.4 = phi ptr [ null, %.critedge ], [ @.str.94, %bb.cb ], [ @.str.71, %bb.g ], [ @.str.71, %bb.at ], [ @.str.71, %bb.k ], [ @.str.72, %bb.h ], [ @.str.72, %bb.l ], [ @.str.71, %bb.q ], [ @.str.71, %bb.n ], [ @.str.71, %bb.u ], [ @.str.76, %bb.r ], [ @.str.78, %bb.v ], [ @.str.71, %bb.y ], [ @.str.71, %bb.ab ], [ @.str.81, %bb.ah ], [ @.str.71, %bb.ak ], [ @.str.69, %bb.b ], [ @.str.88, %bb.bj ], [ @.str.71, %bb.ao ], [ @.str.71, %bb.bh ], [ @.str.89, %bb.bq ], [ @.str.90, %bb.by ], [ @.str.71, %bb.cc ], [ @.str.91, %bb.ca ], [ @.str.93, %bb.cd ], [ @.str.60, %bb.d ], [ @.str.56, %bb.e ], [ @.str.71, %bb.az ], [ @.str.62, %bb.be ], [ @.str.60, %bb.av ], [ @.str.57, %bb.aw ], [ @.str.61, %bb.bd ], [ @.str.60, %bb.bb ], [ @.str.58, %bb.bc ]
  ret ptr %.4
}

end_hunk_0
