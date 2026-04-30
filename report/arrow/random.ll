inline.NumInlined: 26
inline.NumDeleted: 10
begin_hunk_0_@_mi_os_random_weak:bb.a

bb.c:                                             ; preds = %bb.a, %bb.c
  %i.h = phi i1 [ %i.g, %bb.a ], [ %i.s, %bb.c ]
  %.013 = phi i64 [ 0, %bb.a ], [ %i.q, %bb.c ]
  %.01112 = phi i64 [ %i.c, %bb.a ], [ %i.r, %bb.c ]
  %spec.store.select.i = select i1 %i.h, i64 17, i64 %.01112 ; 2 uses
  %i.i = lshr i64 %spec.store.select.i, 30
end_hunk_0
begin_hunk_1_@_mi_os_random_weak:bb.a
  %i.n = mul i64 %i.m, -7723592293110705685       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = add i64 %.013, 1                         ; 2 uses
  %i.r = add i64 %i.p, 1                          ; 3 uses
  %1 = icmp ule i64 %i.q, %i.f
  %i.s = icmp eq i64 %i.r, 0                      ; 2 uses
  %i.t = select i1 %1, i1 true, i1 %i.s
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !12
end_hunk_1
begin_hunk_2_@mi_random_init_ex:bb.a

bb.d:                                             ; preds = %bb.d, %.critedge
  %i.i = phi i1 [ %i.h, %.critedge ], [ %i.t, %bb.d ]
  %.013.i = phi i64 [ 0, %.critedge ], [ %i.r, %bb.d ]
  %.01112.i = phi i64 [ %i.d, %.critedge ], [ %i.s, %bb.d ]
  %spec.store.select.i.i = select i1 %i.i, i64 17, i64 %.01112.i ; 2 uses
  %i.j = lshr i64 %spec.store.select.i.i, 30
end_hunk_2
begin_hunk_3_@mi_random_init_ex:bb.a
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = add i64 %.013.i, 1                       ; 2 uses
  %i.s = add i64 %i.q, 1                          ; 4 uses
  %2 = icmp ule i64 %i.r, %i.g
  %i.t = icmp eq i64 %i.s, 0                      ; 2 uses
  %i.u = select i1 %2, i1 true, i1 %i.t
  br i1 %i.u, label %bb.d, label %_mi_os_random_weak.exit.preheader, !llvm.loop !12
end_hunk_3
