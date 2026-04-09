inline.NumInlined: 1842
inline.NumDeleted: 1067
begin_hunk_0_@_ZN6hermes2vm7JSError15_mallocSizeImplEPNS0_6GCCellE:bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %1 = sub i64 %i.f, %i.g
  %2 = add i64 %1, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7JSError29constructStackTraceString_RJSERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_8JSObjectEEERNS0_12SmallXStringIDsLj32EEE:bb.a
  %i.co = add i64 %i.by, -100
  %i.cp = uitofp i64 %i.co to double
  %scevgep = getelementptr i8, ptr %i.a, i64 -1   ; 2 uses
  br label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.ar
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm7JSError29constructStackTraceString_RJSERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_8JSObjectEEERNS0_12SmallXStringIDsLj32EEE:bb.a
  %.0910.i.i.i.i.i.i.i.i.i.i163.ph = phi ptr [ %i.a, %iter.check316 ], [ %i.a, %vector.memcheck292 ], [ %i.lw, %vec.epilog.iter.check318 ], [ %i.me, %vec.epilog.middle.block329 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.i.i163.ph420 = ptrtoint ptr %.0910.i.i.i.i.i.i.i.i.i.i163.ph to i64 ; 2 uses
  %i.mi = sub i64 %i.lg, %.0910.i.i.i.i.i.i.i.i.i.i163.ph420
  %i.mj = add i64 %i.lg, %i.b
  %xtraiter = and i64 %i.mi, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i160.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i160.prol
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm7JSError29constructStackTraceString_RJSERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_8JSObjectEEERNS0_12SmallXStringIDsLj32EEE:bb.a
.lr.ph.i.i.i.i.i.i.i.i.i.i160.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i160.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i160.preheader
  %.0811.i.i.i.i.i.i.i.i.i.i162.unr = phi ptr [ %.0811.i.i.i.i.i.i.i.i.i.i162.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i160.preheader ], [ %i.mn, %.lr.ph.i.i.i.i.i.i.i.i.i.i160.prol ]
  %.0910.i.i.i.i.i.i.i.i.i.i163.unr = phi ptr [ %.0910.i.i.i.i.i.i.i.i.i.i163.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i160.preheader ], [ %i.mm, %.lr.ph.i.i.i.i.i.i.i.i.i.i160.prol ]
  %10 = sub i64 %.0910.i.i.i.i.i.i.i.i.i.i163.ph420, %i.mj
  %11 = icmp ugt i64 %10, -8
  br i1 %11, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit166, label %.lr.ph.i.i.i.i.i.i.i.i.i.i160

.lr.ph.i.i.i.i.i.i.i.i.i.i160:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i160.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i160
  %.0811.i.i.i.i.i.i.i.i.i.i162 = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i.i.i.i.i.i160 ], [ %.0811.i.i.i.i.i.i.i.i.i.i162.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i160.prol.loopexit ] ; 9 uses
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm7JSError29constructStackTraceString_RJSERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_8JSObjectEEERNS0_12SmallXStringIDsLj32EEE:bb.a
  %.0910.i.i.i.i.i.i.i.i.i.i175.ph = phi ptr [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.ov, %vec.epilog.iter.check ], [ %i.pd, %vec.epilog.middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.i.i175.ph421 = ptrtoint ptr %.0910.i.i.i.i.i.i.i.i.i.i175.ph to i64 ; 2 uses
  %i.ph = sub i64 %i.of, %.0910.i.i.i.i.i.i.i.i.i.i175.ph421
  %i.pi = add i64 %i.of, %i.b
  %xtraiter422 = and i64 %i.ph, 7                 ; 2 uses
  %lcmp.mod423.not = icmp eq i64 %xtraiter422, 0
  br i1 %lcmp.mod423.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i172.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i172.prol
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm7JSError29constructStackTraceString_RJSERNS0_7RuntimeENS0_6HandleIS1_EENS4_INS0_8JSObjectEEERNS0_12SmallXStringIDsLj32EEE:bb.a
.lr.ph.i.i.i.i.i.i.i.i.i.i172.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i172.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i172.preheader
  %.0811.i.i.i.i.i.i.i.i.i.i174.unr = phi ptr [ %.0811.i.i.i.i.i.i.i.i.i.i174.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i172.preheader ], [ %i.pm, %.lr.ph.i.i.i.i.i.i.i.i.i.i172.prol ]
  %.0910.i.i.i.i.i.i.i.i.i.i175.unr = phi ptr [ %.0910.i.i.i.i.i.i.i.i.i.i175.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i172.preheader ], [ %i.pl, %.lr.ph.i.i.i.i.i.i.i.i.i.i172.prol ]
  %12 = sub i64 %.0910.i.i.i.i.i.i.i.i.i.i175.ph421, %i.pi
  %13 = icmp ugt i64 %12, -8
  br i1 %13, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh9StringRefE.exit178, label %.lr.ph.i.i.i.i.i.i.i.i.i.i172

.lr.ph.i.i.i.i.i.i.i.i.i.i172:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i172.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i172
  %.0811.i.i.i.i.i.i.i.i.i.i174 = phi ptr [ %i.qs, %.lr.ph.i.i.i.i.i.i.i.i.i.i172 ], [ %.0811.i.i.i.i.i.i.i.i.i.i174.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i172.prol.loopexit ] ; 9 uses
end_hunk_5
