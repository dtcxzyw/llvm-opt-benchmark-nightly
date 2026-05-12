inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@BBox_Cubic_Check:bb.a
  %i.l = or i64 %i.j, %i.k
  %i.m = tail call i64 @llvm.abs.i64(i64 %i.g, i1 true)
  %i.n = or i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.o, i1 true) ; 2 uses
  %6 = add nsw i32 %i.p, -4                       ; 2 uses
  %i.q = icmp ult i32 %i.o, 134217728
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %6, i32 2) ; 2 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 4 uses
  %i.s = shl i64 %i.d, %i.r
  %i.t = shl i64 %i.e, %i.r
end_hunk_0
begin_hunk_1_@BBox_Cubic_Check:bb.a
  %.086.i = phi i64 [ %i.t, %bb.c ], [ %i.y, %bb.d ]
  %.083.i = phi i64 [ %i.u, %bb.c ], [ %i.z, %bb.d ]
  %.081.i = phi i64 [ %i.v, %bb.c ], [ %i.aa, %bb.d ]
  %.0.i = phi i32 [ %spec.store.select.i, %bb.c ], [ %6, %bb.d ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
end_hunk_1
begin_hunk_2_@BBox_Cubic_Check:bb.a
  %i.bo = or i64 %i.bm, %i.bn
  %i.bp = tail call i64 @llvm.abs.i64(i64 %i.bj, i1 true)
  %i.bq = or i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.br, i1 true) ; 2 uses
  %7 = add nsw i32 %i.bs, -4                      ; 2 uses
  %i.bt = icmp ult i32 %i.br, 134217728
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %spec.store.select.i47 = tail call i32 @llvm.smin.i32(i32 %7, i32 2) ; 2 uses
  %i.bu = zext nneg i32 %spec.store.select.i47 to i64 ; 4 uses
  %i.bv = shl i64 %i.bg, %i.bu
  %i.bw = shl i64 %i.bh, %i.bu
end_hunk_2
begin_hunk_3_@BBox_Cubic_Check:bb.a
  %.086.i29 = phi i64 [ %i.bw, %bb.n ], [ %i.cb, %bb.o ]
  %.083.i30 = phi i64 [ %i.bx, %bb.n ], [ %i.cc, %bb.o ]
  %.081.i31 = phi i64 [ %i.by, %bb.n ], [ %i.cd, %bb.o ]
  %.0.i32 = phi i32 [ %spec.store.select.i47, %bb.n ], [ %7, %bb.o ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %bb.p
end_hunk_3
