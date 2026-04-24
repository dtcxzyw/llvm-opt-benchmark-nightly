inline.NumInlined: 25
inline.NumDeleted: 9
begin_hunk_0_@evictionPoolPopulate:bb.a
  br i1 %.not82, label %.critedge.thread, label %bb.bg

.critedge.thread:                                 ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.critedge
  %.07493.lcssa104.a = phi i32 [ 0, %.critedge ], [ 15, %bb.ap ], [ 15, %bb.ao ], [ 14, %bb.an ], [ 14, %bb.am ], [ 13, %bb.al ], [ 13, %bb.ak ], [ 12, %bb.aj ], [ 12, %bb.ai ], [ 11, %bb.ah ], [ 11, %bb.ag ], [ 10, %bb.af ], [ 10, %bb.ae ], [ 9, %bb.ad ], [ 9, %bb.ac ], [ 8, %bb.ab ], [ 8, %bb.aa ], [ 7, %bb.z ], [ 7, %bb.y ], [ 6, %bb.x ], [ 6, %bb.w ], [ 5, %bb.v ], [ 5, %bb.u ], [ 4, %bb.t ], [ 4, %bb.s ], [ 3, %bb.r ], [ 3, %bb.q ], [ 2, %bb.p ], [ 2, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ] ; 4 uses
  %.07493.lcssa104 = phi i64 [ 0, %.critedge ], [ 15, %bb.ap ], [ 15, %bb.ao ], [ 14, %bb.an ], [ 14, %bb.am ], [ 13, %bb.al ], [ 13, %bb.ak ], [ 12, %bb.aj ], [ 12, %bb.ai ], [ 11, %bb.ah ], [ 11, %bb.ag ], [ 10, %bb.af ], [ 10, %bb.ae ], [ 9, %bb.ad ], [ 9, %bb.ac ], [ 8, %bb.ab ], [ 8, %bb.aa ], [ 7, %bb.z ], [ 7, %bb.y ], [ 6, %bb.x ], [ 6, %bb.w ], [ 5, %bb.v ], [ 5, %bb.u ], [ 4, %bb.t ], [ 4, %bb.s ], [ 3, %bb.r ], [ 3, %bb.q ], [ 2, %bb.p ], [ 2, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ] ; 3 uses
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.07493.lcssa104
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !58
  %i.dx = icmp eq ptr %i.dw, null
end_hunk_0
begin_hunk_1_@evictionPoolPopulate:bb.a

bb.aq:                                            ; preds = %.loopexit
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.07493.lcssa104 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = shl nuw nsw i32 %.07493.lcssa104.a, 5
  %i.ed = xor i32 %i.ec, 480
end_hunk_1
begin_hunk_2_@evictionPoolPopulate:bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %bb.as
  %i.ej = phi i64 [ %i.eh, %bb.as ], [ %.07493.lcssa104, %bb.aq ]
  %.sink = phi ptr [ %i.eg, %bb.as ], [ %i.dz, %bb.aq ]
  %.1.ph = phi i32 [ %i.ef, %bb.as ], [ %.07493.lcssa104.a, %bb.aq ]
  %i.ek = getelementptr inbounds [32 x i8], ptr %2, i64 %i.ej
end_hunk_2
