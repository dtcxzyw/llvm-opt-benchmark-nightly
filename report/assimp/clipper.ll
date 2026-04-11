inline.NumInlined: 2352
inline.NumDeleted: 743
begin_hunk_0_@_ZNK10ClipperLib7Clipper14IsContributingERKNS_5TEdgeE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0                      ; 3 uses
  %. = select i1 %i.c, i64 128, i64 124
  %.36 = select i1 %i.c, i64 124, i64 128
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.36
  %.val36 = load i32, ptr %.0.in, align 4         ; 5 uses
  %.030.in = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %.030 = load i32, ptr %.030.in, align 4
  switch i32 %.030, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
end_hunk_0
begin_hunk_1_@_ZNK10ClipperLib7Clipper14IsContributingERKNS_5TEdgeE:bb.a
bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load i32, ptr %i.r, align 8              ; 3 uses
  switch i32 %.val36, label %bb.j [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.i
end_hunk_1
begin_hunk_2_@_ZNK10ClipperLib7Clipper14IsContributingERKNS_5TEdgeE:bb.a
bb.k:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load i32, ptr %i.w, align 8              ; 3 uses
  switch i32 %.val36, label %bb.n [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.m
end_hunk_2
begin_hunk_3_@_ZNK10ClipperLib7Clipper14IsContributingERKNS_5TEdgeE:bb.a
  br i1 %i.c, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  switch i32 %.val36, label %bb.s [
    i32 0, label %bb.q
    i32 1, label %bb.q
    i32 2, label %bb.r
end_hunk_3
begin_hunk_4_@_ZNK10ClipperLib7Clipper14IsContributingERKNS_5TEdgeE:bb.a
bb.y:                                             ; preds = %bb.x
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.an = load i32, ptr %i.am, align 8            ; 3 uses
  switch i32 %.val36, label %bb.ab [
    i32 0, label %bb.z
    i32 1, label %bb.z
    i32 2, label %bb.aa
end_hunk_4
begin_hunk_5_@_ZN10ClipperLib7Clipper14IntersectEdgesEPNS_5TEdgeES2_RNS_8IntPointE:bb.a
bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.u, %bb.x, %bb.w
  %i.bw = load i32, ptr %i.l, align 8             ; 4 uses
  %i.bx = icmp eq i32 %i.bw, 0                    ; 3 uses
  %. = select i1 %i.bx, i64 128, i64 124
  %.207 = select i1 %i.bx, i64 124, i64 128
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.207
  %.0188 = load i32, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %.val = load i32, ptr %i.bz, align 4
  %.val223 = load i32, ptr %i.n, align 8          ; 3 uses
  %4 = icmp eq i32 %.val223, 0                    ; 2 uses
  %.pn196 = select i1 %4, i64 128, i64 124
  %.pn197 = select i1 %4, i64 124, i64 128
  %.0187.in = getelementptr inbounds nuw i8, ptr %0, i64 %.pn197
  %.0187 = load i32, ptr %.0187.in, align 4
  %.0189.in = getelementptr inbounds nuw i8, ptr %0, i64 %.pn196
  %.0189 = load i32, ptr %.0189.in, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.cb = load i32, ptr %i.ca, align 4            ; 3 uses
  switch i32 %.val, label %bb.ae [
    i32 2, label %bb.ac
    i32 3, label %bb.ad
  ]
end_hunk_5
begin_hunk_6_@_ZN10ClipperLib7Clipper14IntersectEdgesEPNS_5TEdgeES2_RNS_8IntPointE:bb.a
  br i1 %or.cond204, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not195 = icmp eq i32 %i.bw, %.val223
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cp = load i32, ptr %i.co, align 8
  %.not196 = icmp eq i32 %i.cp, 3
end_hunk_6
begin_hunk_7_@_ZN10ClipperLib7Clipper14IntersectEdgesEPNS_5TEdgeES2_RNS_8IntPointE:bb.a

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.0 = phi i64 [ %i.ej, %bb.bj ], [ %i.ef, %bb.bh ], [ %i.eh, %bb.bi ] ; 4 uses
  %.not = icmp eq i32 %i.bw, %.val223
  br i1 %.not, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
end_hunk_7
begin_hunk_8_@_ZN10ClipperLib7Clipper10JoinPointsEPNS_4JoinEPNS_6OutRecES4_:bb.a
  %or.cond = or i1 %.not, %i.bh
  %.not282 = icmp eq ptr %i.be, %i.c
  %or.cond302 = select i1 %or.cond, i1 true, i1 %.not282
  br i1 %or.cond302, label %.critedge4, label %bb.i, !llvm.loop !152

.critedge4:                                       ; preds = %bb.i, %.critedge4
  %.1250 = phi ptr [ %i.bj, %.critedge4 ], [ %i.a, %bb.i ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1250, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8            ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
end_hunk_8
begin_hunk_9_@_ZN10ClipperLib7Clipper10JoinPointsEPNS_4JoinEPNS_6OutRecES4_:bb.a
  br i1 %or.cond304, label %.critedge6, label %.critedge4, !llvm.loop !153

.critedge6:                                       ; preds = %.critedge4
  %i.bn = getelementptr inbounds nuw i8, ptr %.0248, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.1250, i64 8
  %or.cond305 = select i1 %.not283, i1 true, i1 %.not284
end_hunk_9
begin_hunk_10_@_ZN10ClipperLib7Clipper10JoinPointsEPNS_4JoinEPNS_6OutRecES4_:bb.a
  %or.cond306 = select i1 %i.bt, i1 true, i1 %.not285
  %.not286 = icmp eq ptr %i.bq, %.1250
  %or.cond307 = or i1 %.not286, %or.cond306
  br i1 %or.cond307, label %.critedge8, label %.preheader334, !llvm.loop !154

.critedge8:                                       ; preds = %.preheader334, %.critedge8
  %.1256 = phi ptr [ %i.bv, %.critedge8 ], [ %i.c, %.preheader334 ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1256, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8            ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
end_hunk_10
begin_hunk_11_@_ZN10ClipperLib7Clipper10JoinPointsEPNS_4JoinEPNS_6OutRecES4_:bb.a
  br i1 %or.cond309, label %.critedge10, label %.critedge8, !llvm.loop !155

.critedge10:                                      ; preds = %.critedge8
  %or.cond310 = or i1 %.not287, %.not288
  br i1 %or.cond310, label %bb.am, label %bb.j

end_hunk_11
begin_hunk_12_@_ZN10ClipperLib7Clipper10JoinPointsEPNS_4JoinEPNS_6OutRecES4_:bb.a
bb.u:                                             ; preds = %bb.s
  %.not293 = icmp slt i64 %i.cc, %.0333
  %.not294 = icmp sgt i64 %i.cc, %.sroa.speculated22.sink.i
  %or.cond313 = or i1 %.not293, %.not294          ; 3 uses
  %.1256..1250 = select i1 %or.cond313, ptr %.1256, ptr %.1250
  %. = select i1 %or.cond313, i64 %i.ce, i64 %i.cc
  %.334 = select i1 %or.cond313, i1 %i.cg, i1 %i.cf
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %.1256.pn = phi ptr [ %.0248, %bb.r ], [ %.1256..1250, %bb.u ], [ %.0254, %bb.t ]
  %.sroa.0.0 = phi i64 [ %i.cb, %bb.r ], [ %., %bb.u ], [ %i.cd, %bb.t ]
  %.0260.in = phi i1 [ %i.ci, %bb.r ], [ %.334, %bb.u ], [ %i.cj, %bb.t ]
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %.1256.pn, i64 16
  %.sroa.8.0 = load i64, ptr %.sroa.8.0.in, align 8
  store ptr %.0248, ptr %1, align 8
  store ptr %.0254, ptr %i.b, align 8
end_hunk_12
