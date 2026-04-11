inline.NumInlined: 379
inline.NumDeleted: 159
begin_hunk_0_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv:bb.a
bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %.sroa.08.021.i.idx.i.i.i = phi i64 [ %.sroa.08.021.i.add.i.i.i, %bb.h ], [ 32, %.lr.ph.i.i.i.i ] ; 3 uses
  %.pn20.i.i.i.i = phi ptr [ %.sroa.08.021.i.ptr.i.i.i, %bb.h ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 8 uses
  %.sroa.08.021.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.08.021.i.idx.i.i.i ; 7 uses
  %i.aw = getelementptr i8, ptr %.pn20.i.i.i.i, i64 40 ; 2 uses
  %i.ax = load <2 x double>, ptr %i.aw, align 8, !tbaa !38 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !43
  %i.bd = lshr exact i64 %.sroa.08.021.i.idx.i.i.i, 5 ; 2 uses
  %i.be = and i64 %indvar, 1
  %lcmp.mod84.not.not = icmp eq i64 %i.be, 0
  br i1 %lcmp.mod84.not.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %.sroa.08.021.i.ptr.i.i.i, i64 -32
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 40
  %i.bh = getelementptr inbounds i8, ptr %.sroa.08.021.i.ptr.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
end_hunk_1
begin_hunk_2_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv:bb.a

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.pn85 = phi i64 [ 64, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ 32, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.021.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bm = icmp eq i64 %indvar, 0
  br i1 %i.bm, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.new

.lr.ph.i.i.i.i.i.preheader.i.i.i.i.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.069.i.i.i.i.i.i.i.i.i.unr = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i, i64 %.pn85
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.new
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.new ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %.069.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.new ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %.078.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i.new ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -24
  %i.bo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false)
end_hunk_2
begin_hunk_3_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv:bb.a

bb.i:                                             ; preds = %bb.l, %.lr.ph.i28.i.i.i
  %.sroa.08.021.i29.i.i.i = phi ptr [ %.sroa.08.018.i26.i.i.i, %.lr.ph.i28.i.i.i ], [ %.sroa.08.0.i40.i.i.i, %bb.l ] ; 9 uses
  %.pn20.i30.i.i.i = phi ptr [ %i.ak, %.lr.ph.i28.i.i.i ], [ %.sroa.08.021.i29.i.i.i, %bb.l ] ; 8 uses
  %i.dr = getelementptr i8, ptr %.pn20.i30.i.i.i, i64 40 ; 2 uses
  %i.ds = load <2 x double>, ptr %i.dr, align 8, !tbaa !38 ; 3 uses
  %.val2.i.i33.i.i.i = load double, ptr %i.do, align 8, !tbaa !40
end_hunk_3
begin_hunk_4_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv:bb.a
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i, label %.loopexit.i47.i.i.i

.lr.ph.i.i.i.i.i.preheader.i48.i.i.i:             ; preds = %bb.j
  %i.ec = and i64 %i.dz, 32
  %lcmp.mod.not = icmp eq i64 %i.ec, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i49.i.i.i.prol

.lr.ph.i.i.i.i.i.i49.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i
  %i.ed = getelementptr inbounds i8, ptr %.sroa.08.021.i29.i.i.i, i64 -32
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn20.i30.i.i.i, i64 40
  %i.ef = getelementptr inbounds i8, ptr %.sroa.08.021.i29.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i64 16, i1 false)
end_hunk_4
begin_hunk_5_@_ZN4geos5index13intervalrtree25SortedPackedIntervalRTree9buildTreeEv:bb.a

.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i
  %.010.i.i.i.i.i.i50.i.i.i.unr = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.ej, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %.pn = phi i64 [ 64, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ 32, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %.078.i.i.i.i.i.i52.i.i.i.unr = phi ptr [ %.sroa.08.021.i29.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i ], [ %i.ed, %.lr.ph.i.i.i.i.i.i49.i.i.i.prol ]
  %i.ek = icmp eq i64 %i.dz, 32
  br i1 %i.ek, label %.loopexit.i47.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i.new

.lr.ph.i.i.i.i.i.preheader.i48.i.i.i.new:         ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i.prol.loopexit
  %.069.i.i.i.i.i.i51.i.i.i.unr = getelementptr inbounds nuw i8, ptr %.pn20.i30.i.i.i, i64 %.pn
  br label %.lr.ph.i.i.i.i.i.i49.i.i.i

.lr.ph.i.i.i.i.i.i49.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i49.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i.new
  %.010.i.i.i.i.i.i50.i.i.i = phi i64 [ %.010.i.i.i.i.i.i50.i.i.i.unr, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i.new ], [ %i.ex, %.lr.ph.i.i.i.i.i.i49.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i51.i.i.i = phi ptr [ %.069.i.i.i.i.i.i51.i.i.i.unr, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i.new ], [ %i.er, %.lr.ph.i.i.i.i.i.i49.i.i.i ] ; 5 uses
  %.078.i.i.i.i.i.i52.i.i.i = phi ptr [ %.078.i.i.i.i.i.i52.i.i.i.unr, %.lr.ph.i.i.i.i.i.preheader.i48.i.i.i.new ], [ %i.eq, %.lr.ph.i.i.i.i.i.i49.i.i.i ] ; 5 uses
  %i.el = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i51.i.i.i, i64 -24
  %i.em = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i52.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false)
end_hunk_5
