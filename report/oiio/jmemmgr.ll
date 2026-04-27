inline.NumInlined: 16
inline.NumDeleted: 3
begin_hunk_0_@alloc_sarray:bb.a
  %i.n = select i1 %i.f, i64 8, i64 16
  %i.o = add nuw nsw i64 %i.g, 4294967295
  %i.p = add nuw nsw i64 %i.o, %i.n
  %i.q = and i64 %i.p, %.neg                      ; 20 uses
  %i.r = zext i1 %i.f to i64                      ; 4 uses
  %4 = lshr exact i64 999999976, %i.r             ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %4 to i32
  %.rhs.trunc = trunc nuw i64 %i.q to i32
  %5 = udiv i32 %.lhs.trunc, %.rhs.trunc
  %i.s = icmp samesign ugt i64 %i.q, %4
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@alloc_sarray:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = zext i32 %3 to i64                       ; 2 uses
  %.0104 = tail call i32 @llvm.umin.i32(i32 %5, i32 %3) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i32 %.0104, ptr %i.x, align 8, !tbaa !56
  %i.y = icmp slt i32 %i.e, 9
end_hunk_1
begin_hunk_2_@alloc_barray:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = zext i32 %2 to i64                       ; 6 uses
  %4 = udiv i32 7812499, %2
  %i.d = icmp ugt i32 %2, 7812499
  br i1 %i.d, label %bb.b, label %bb.c

end_hunk_2
begin_hunk_3_@alloc_barray:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = zext i32 %3 to i64
  %.037 = tail call i32 @llvm.umin.i32(i32 %4, i32 %3) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i32 %.037, ptr %i.i, align 8, !tbaa !56
  %i.j = shl nuw nsw i64 %i.h, 3
  %i.k = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.j) ; 6 uses
  %.not49 = icmp eq i32 %3, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.c
  %5 = shl nuw nsw i64 %i.c, 7
  br label %.lr.ph48

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph48
  %.1.lcssa = phi i32 [ %.03647, %.lr.ph48 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.l = icmp ult i32 %.1.lcssa, %3
  br i1 %i.l, label %.lr.ph48, label %._crit_edge, !llvm.loop !71

.lr.ph48:                                         ; preds = %.lr.ph47, %.loopexit
  %.03647 = phi i32 [ 0, %.lr.ph47 ], [ %.1.lcssa, %.loopexit ] ; 4 uses
  %.13846 = phi i32 [ %.037, %.lr.ph47 ], [ %i.n, %.loopexit ]
  %i.m = sub nuw i32 %3, %.03647
  %i.n = tail call i32 @llvm.umin.i32(i32 %.13846, i32 %i.m) ; 7 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = mul nuw nsw i64 %5, %i.o
  %i.q = tail call ptr @alloc_large(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.p) ; 2 uses
  %.not42 = icmp eq i32 %i.n, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph.preheader
end_hunk_3
begin_hunk_4_@realize_virt_arrays:bb.a
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ds = phi i32 [ %.pre144, %bb.w ], [ %i.da, %bb.v ] ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1106141, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !89 ; 3 uses
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dw = zext i32 %i.du to i64                   ; 6 uses
  %1 = udiv i32 7812499, %i.du
  %i.dx = icmp ugt i32 %i.du, 7812499
  br i1 %i.dx, label %bb.y, label %bb.z

end_hunk_4
begin_hunk_5_@realize_virt_arrays:bb.a
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eb = zext i32 %i.ds to i64
  %.037.i = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.ds) ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 160
  store i32 %.037.i, ptr %i.ec, align 8, !tbaa !56
  %i.ed = shl nuw nsw i64 %i.eb, 3
  %i.ee = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.ed) ; 6 uses
  %.not49.i = icmp eq i32 %i.ds, 0
  br i1 %.not49.i, label %alloc_barray.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.z
  %2 = shl nuw nsw i64 %i.dw, 7
  br label %.lr.ph48.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %alloc_large.exit
  %.1.lcssa.i = phi i32 [ %.03647.i, %alloc_large.exit ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.gi, %.lr.ph.i ] ; 2 uses
  %i.ef = icmp ult i32 %.1.lcssa.i, %i.ds
  br i1 %i.ef, label %.lr.ph48.i, label %alloc_barray.exit, !llvm.loop !71

.lr.ph48.i:                                       ; preds = %.loopexit.i, %.lr.ph47.i
  %.03647.i = phi i32 [ 0, %.lr.ph47.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 4 uses
  %.13846.i = phi i32 [ %.037.i, %.lr.ph47.i ], [ %i.eh, %.loopexit.i ]
  %i.eg = sub nuw i32 %i.ds, %.03647.i
  %i.eh = tail call i32 @llvm.umin.i32(i32 %.13846.i, i32 %i.eg) ; 7 uses
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = mul nuw nsw i64 %2, %i.ei               ; 3 uses
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.el = icmp samesign ugt i64 %i.ej, 1000000000
  br i1 %i.el, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph48.i
end_hunk_5
begin_hunk_6_@realize_virt_arrays:bb.a

bb.ab:                                            ; preds = %bb.aa, %.lr.ph48.i
  %i.er = or disjoint i64 %i.ej, 31               ; 3 uses
  %i.es = icmp samesign ugt i64 %i.er, 1000000000
  br i1 %i.es, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
end_hunk_6
