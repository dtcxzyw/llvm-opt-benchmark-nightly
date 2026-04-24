inline.NumInlined: 199
inline.NumDeleted: 47
begin_hunk_0_@parse_debug_line_header:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %spec.select89 = phi ptr [ %spec.select87, %bb.c ], [ %spec.select, %bb.d ]
  %i.w = phi i1 [ %i.r, %bb.c ], [ %i.u, %bb.d ]
  %4 = phi i64 [ 4, %bb.c ], [ 8, %bb.d ]
  %i.x = phi i8 [ 4, %bb.c ], [ 8, %bb.d ]
  %i.y = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.z = phi i16 [ %i.o, %bb.c ], [ %i.j, %bb.d ]
  %i.aa = phi i64 [ %i.t, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %i.ab = getelementptr i8, ptr %2, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !140
  %i.ac = getelementptr i8, ptr %spec.select89, i64 %4 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.aa  ; 2 uses
  %i.ae = getelementptr i8, ptr %2, i64 48        ; 2 uses
end_hunk_0
