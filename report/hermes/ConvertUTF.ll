inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZN4llvh19ConvertUTF32toUTF16EPPKjS1_PPtS3_NS_15ConversionFlagsE:bb.a
  br i1 %i.u, label %.lr.ph.split.us.split.us, label %.thread

.lr.ph.split.split:                               ; preds = %.lr.ph, %bb.q
  %.03251 = phi ptr [ %.2, %bb.q ], [ %i.b, %.lr.ph ] ; 9 uses
  %.03350 = phi ptr [ %i.v, %bb.q ], [ %i.a, %.lr.ph ] ; 4 uses
  %.not = icmp ult ptr %.03251, %3
  br i1 %.not, label %bb.i, label %.thread
end_hunk_0
begin_hunk_1_@_ZN4llvh19ConvertUTF32toUTF16EPPKjS1_PPtS3_NS_15ConversionFlagsE:bb.a
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 -3, ptr %.03251, align 2, !tbaa !12
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.z = trunc nuw i32 %i.w to i16
  store i16 %i.z, ptr %.03251, align 2, !tbaa !12
  br label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.aa = icmp ugt i32 %i.w, 1114111
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_1
begin_hunk_2_@_ZN4llvh19ConvertUTF32toUTF16EPPKjS1_PPtS3_NS_15ConversionFlagsE:bb.a
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %5 = getelementptr inbounds nuw i8, ptr %.03251, i64 2 ; 2 uses
  %.not44 = icmp ult ptr %5, %3
  br i1 %.not44, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
end_hunk_2
begin_hunk_3_@_ZN4llvh19ConvertUTF32toUTF16EPPKjS1_PPtS3_NS_15ConversionFlagsE:bb.a
  %i.af = trunc i32 %i.w to i16
  %i.ag = and i16 %i.af, 1023
  %i.ah = or disjoint i16 %i.ag, -9216
  store i16 %i.ah, ptr %5, align 2, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.k, %bb.n, %bb.p
  %.pn = phi i64 [ 4, %bb.p ], [ 2, %bb.n ], [ 2, %bb.l ], [ 2, %bb.k ]
  %.2 = getelementptr inbounds nuw i8, ptr %.03251, i64 %.pn ; 2 uses
  %i.ai = icmp ult ptr %i.v, %1
  br i1 %i.ai, label %.lr.ph.split.split, label %.thread

end_hunk_3
begin_hunk_4_@_ZN4llvh18ConvertUTF8toUTF16EPPKhS1_PPtS3_NS_15ConversionFlagsE:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.z
  %.067106 = phi ptr [ %i.b, %.lr.ph ], [ %.168, %bb.z ] ; 13 uses
  %.071105 = phi ptr [ %i.a, %.lr.ph ], [ %.6, %bb.z ] ; 12 uses
  %i.f = load i8, ptr %.071105, align 1, !tbaa !16 ; 7 uses
  %i.g = zext i8 %i.f to i64
end_hunk_4
begin_hunk_5_@_ZN4llvh18ConvertUTF8toUTF16EPPKhS1_PPtS3_NS_15ConversionFlagsE:bb.a
  br label %.thread

bb.q:                                             ; preds = %bb.o
  store i16 -3, ptr %.067106, align 2, !tbaa !12
  br label %bb.z

bb.r:                                             ; preds = %bb.n
  %i.bc = trunc nuw i32 %i.at to i16
  store i16 %i.bc, ptr %.067106, align 2, !tbaa !12
  br label %bb.z

end_hunk_5
begin_hunk_6_@_ZN4llvh18ConvertUTF8toUTF16EPPKhS1_PPtS3_NS_15ConversionFlagsE:bb.a
  br label %.thread

bb.v:                                             ; preds = %bb.t
  store i16 -3, ptr %.067106, align 2, !tbaa !12
  br label %bb.z

end_hunk_6
begin_hunk_7_@_ZN4llvh18ConvertUTF8toUTF16EPPKhS1_PPtS3_NS_15ConversionFlagsE:bb.a
  %i.bp = trunc i32 %i.at to i16
  %i.bq = and i16 %i.bp, 1023
  %i.br = or disjoint i16 %i.bq, -9216
  store i16 %i.br, ptr %i.bh, align 2, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %bb.r, %bb.q, %bb.y, %bb.v
  %.pn = phi i64 [ 2, %bb.q ], [ 2, %bb.r ], [ 2, %bb.v ], [ 4, %bb.y ]
  %.168 = getelementptr inbounds nuw i8, ptr %.067106, i64 %.pn ; 2 uses
  %i.bs = icmp ult ptr %.6, %1
  br i1 %i.bs, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.z, %bb.b, %bb.c, %bb.a, %bb.x, %bb.u, %bb.p, %bb.l
  %.06794 = phi ptr [ %.067106, %bb.p ], [ %.067106, %bb.l ], [ %.067106, %bb.x ], [ %.067106, %bb.u ], [ %i.b, %bb.a ], [ %.168, %bb.z ], [ %.067106, %bb.b ], [ %.067106, %bb.c ]
  %.8 = phi ptr [ %i.bb, %bb.p ], [ %i.aw, %bb.l ], [ %i.bk, %bb.x ], [ %i.bg, %bb.u ], [ %i.a, %bb.a ], [ %.6, %bb.z ], [ %.071105, %bb.b ], [ %.071105, %bb.c ]
  %.2 = phi i32 [ 3, %bb.p ], [ 2, %bb.l ], [ 2, %bb.x ], [ 3, %bb.u ], [ 0, %bb.a ], [ 0, %bb.z ], [ 1, %bb.b ], [ 3, %bb.c ]
  store ptr %.8, ptr %0, align 8, !tbaa !14
  store ptr %.06794, ptr %2, align 8, !tbaa !10
  ret i32 %.2
end_hunk_7
