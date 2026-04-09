inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@llvh_regexec:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 6 uses
  %i.k = icmp slt i64 %i.j, 65
  %7 = ptrtoint ptr %1 to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
end_hunk_0
begin_hunk_1_@llvh_regexec:bb.a

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %3, align 8, !tbaa !22
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24
  %.pre250.i = ptrtoint ptr %i.u to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2_@llvh_regexec:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0138244.pre-phi.i = phi i64 [ %7, %bb.g ], [ %.pre250.i, %bb.f ]
  %.0138.i = phi ptr [ %1, %bb.g ], [ %i.u, %bb.f ] ; 7 uses
  %.pn.i = phi i64 [ %i.x, %bb.g ], [ %i.w, %bb.f ] ; 2 uses
  %.0.i = getelementptr inbounds i8, ptr %1, i64 %.pn.i ; 9 uses
  %i.y = icmp ult ptr %.0.i, %.0138.i
  br i1 %i.y, label %smatcher.exit, label %bb.i

end_hunk_2
begin_hunk_3_@llvh_regexec:bb.a
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.ad = ptrtoint ptr %.0.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %8 = sub i64 %7, %.0138244.pre-phi.i
  %9 = getelementptr i8, ptr %.0138.i, i64 %8
  %scevgep.i = getelementptr i8, ptr %9, i64 %.pn.i ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
end_hunk_3
begin_hunk_4_@llvh_regexec:bb.a
  br i1 %i.al, label %._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.0141216.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.am, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !28

._crit_edge.i:                                    ; preds = %bb.m, %bb.l, %.preheader191.i
  %.0141.lcssa.i = phi ptr [ %.0138.i, %.preheader191.i ], [ %scevgep.i, %bb.m ], [ %.0141216.i, %bb.l ]
  %i.an = icmp eq ptr %.0141.lcssa.i, %.0.i
  br i1 %i.an, label %smatcher.exit, label %bb.n

end_hunk_4
begin_hunk_5_@llvh_regexec:bb.a

bb.bn:                                            ; preds = %bb.bm
  %i.gq = load i64, ptr %3, align 8, !tbaa !22
  %i.gr = getelementptr inbounds i8, ptr %1, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !24
  %.pre266.i = ptrtoint ptr %i.gr to i64
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
end_hunk_5
begin_hunk_6_@llvh_regexec:bb.a
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.0159260.pre-phi.i = phi i64 [ %7, %bb.bo ], [ %.pre266.i, %bb.bn ]
  %.0159.i = phi ptr [ %1, %bb.bo ], [ %i.gr, %bb.bn ] ; 7 uses
  %.pn.i21 = phi i64 [ %i.gu, %bb.bo ], [ %i.gt, %bb.bn ] ; 2 uses
  %.0.i22 = getelementptr inbounds i8, ptr %1, i64 %.pn.i21 ; 9 uses
  %i.gv = icmp ult ptr %.0.i22, %.0159.i
  br i1 %i.gv, label %lmatcher.exit, label %bb.bq

end_hunk_6
begin_hunk_7_@llvh_regexec:bb.a
  %i.gz = load i8, ptr %i.gx, align 1, !tbaa !26
  %i.ha = ptrtoint ptr %.0.i22 to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %10 = sub i64 %7, %.0159260.pre-phi.i
  %11 = getelementptr i8, ptr %.0159.i, i64 %10
  %scevgep.i53 = getelementptr i8, ptr %11, i64 %.pn.i21 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bu, %.lr.ph.i54
end_hunk_7
begin_hunk_8_@llvh_regexec:bb.a
  br i1 %i.hi, label %._crit_edge.i23, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.hj = getelementptr inbounds nuw i8, ptr %.0162234.i, i64 1 ; 2 uses
  %exitcond.not.i54 = icmp eq ptr %i.hj, %scevgep.i53
  br i1 %exitcond.not.i54, label %._crit_edge.i23, label %bb.br, !llvm.loop !53

._crit_edge.i23:                                  ; preds = %bb.bu, %bb.bt, %.preheader211.i
  %.0162.lcssa.i = phi ptr [ %.0159.i, %.preheader211.i ], [ %scevgep.i53, %bb.bu ], [ %.0162234.i, %bb.bt ]
  %i.hk = icmp eq ptr %.0162.lcssa.i, %.0.i22
  br i1 %i.hk, label %lmatcher.exit, label %bb.bv

end_hunk_8
