inline.NumInlined: 34
inline.NumDeleted: 3
begin_hunk_0_@hllSparseToDense:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.l, %bb.m, %bb.n, %bb.j, %bb.i
  %.sink = phi i64 [ 2, %bb.j ], [ 1, %bb.i ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %.preheader ]
  %.2 = phi i32 [ %i.am, %bb.j ], [ %i.ad, %bb.i ], [ %i.bu, %.preheader ], [ %i.ct, %bb.l ], [ %i.ds, %bb.m ], [ %i.er, %bb.n ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.06475, i64 %.sink ; 2 uses
  %i.et = icmp ult ptr %i.es, %i.r
  br i1 %i.et, label %bb.h, label %._crit_edge, !llvm.loop !24
end_hunk_0
begin_hunk_1_@hllSparseRegHisto:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.c
  %.142 = phi i32 [ %i.g, %bb.c ], [ %i.r, %bb.e ], [ %i.x, %bb.g ] ; 2 uses
  %.pn = phi i64 [ 1, %bb.c ], [ 2, %bb.e ], [ 1, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.04049, i64 %.pn ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.b
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !59

end_hunk_1
begin_hunk_2_@hllCount:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.j
  %i.bb = phi i32 [ %i.af, %bb.j ], [ %i.ap, %bb.l ], [ %i.z, %bb.n ] ; 2 uses
  %.142.i = phi i32 [ %i.ad, %bb.j ], [ %i.an, %bb.l ], [ %i.as, %bb.n ] ; 2 uses
  %.pn.i = phi i64 [ 1, %bb.j ], [ 2, %bb.l ], [ 1, %bb.n ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.04049.i, i64 %.pn.i ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.x
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !59

end_hunk_2
begin_hunk_3_@hllMerge:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.04562 = phi i32 [ %.2, %.loopexit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.04761 = phi ptr [ %.148, %.loopexit ], [ %i.ay, %.lr.ph.preheader ] ; 3 uses
  %i.az = load i8, ptr %.04761, align 1, !tbaa !17 ; 2 uses
  %i.ba = zext i8 %i.az to i32                    ; 4 uses
  %trunc = and i8 %i.az, -64
end_hunk_3
begin_hunk_4_@hllMerge:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.s, %bb.v, %bb.y, %bb.m, %bb.l
  %.sink = phi i64 [ 2, %bb.m ], [ 1, %bb.l ], [ 1, %bb.y ], [ 1, %bb.v ], [ 1, %bb.s ], [ 1, %bb.p ]
  %.2.in = phi i64 [ %i.bp, %bb.m ], [ %i.be, %bb.l ], [ %indvars.iv.next, %bb.p ], [ %indvars.iv.next.1, %bb.s ], [ %indvars.iv.next.2, %bb.v ], [ %indvars.iv.next.3, %bb.y ]
  %.2 = trunc i64 %.2.in to i32                   ; 2 uses
  %.148 = getelementptr inbounds nuw i8, ptr %.04761, i64 %.sink ; 2 uses
  %.not57 = icmp ult ptr %.148, %i.ax
  br i1 %.not57, label %.lr.ph, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %.loopexit
end_hunk_4
begin_hunk_5_@pfdebugCommand:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ae
  %.0115161 = phi ptr [ %.1116, %bb.ae ], [ %i.cd, %.lr.ph.preheader ] ; 3 uses
  %.0118160 = phi ptr [ %.1119, %bb.ae ], [ %i.ch, %.lr.ph.preheader ] ; 3 uses
  %i.ci = load i8, ptr %.0118160, align 1, !tbaa !17 ; 2 uses
  %i.cj = zext i8 %i.ci to i32                    ; 4 uses
  %trunc = and i8 %i.ci, -64
end_hunk_5
begin_hunk_6_@pfdebugCommand:bb.a

bb.ab:                                            ; preds = %.lr.ph
  %i.ck = add nuw nsw i32 %i.cj, 1
  %i.cl = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0115161, ptr noundef nonnull @.str.22, i32 noundef %i.ck) #20
  br label %bb.ae

end_hunk_6
begin_hunk_7_@pfdebugCommand:bb.a
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.cn, 1
  %i.cs = add nuw nsw i32 %i.cr, %i.cq
  %i.ct = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0115161, ptr noundef nonnull @.str.23, i32 noundef %i.cs) #20
  br label %bb.ae

end_hunk_7
begin_hunk_8_@pfdebugCommand:bb.a
  %i.cw = lshr i32 %i.cj, 2
  %i.cx = and i32 %i.cw, 31
  %i.cy = add nuw nsw i32 %i.cx, 1
  %i.cz = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0115161, ptr noundef nonnull @.str.24, i32 noundef %i.cy, i32 noundef %i.cv) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.pn = phi i64 [ 1, %bb.ab ], [ 2, %bb.ac ], [ 1, %bb.ad ]
  %.1116 = phi ptr [ %i.cl, %bb.ab ], [ %i.ct, %bb.ac ], [ %i.cz, %bb.ad ] ; 2 uses
  %.1119 = getelementptr inbounds nuw i8, ptr %.0118160, i64 %.pn ; 2 uses
  %i.da = icmp ult ptr %.1119, %i.cc
  br i1 %i.da, label %.lr.ph, label %._crit_edge, !llvm.loop !105

end_hunk_8
