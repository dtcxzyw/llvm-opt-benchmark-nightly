inline.NumInlined: 48
inline.NumDeleted: 1
begin_hunk_0_@writeIntraPredMode_CAVLC:.lr.ph.i
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1                     ; 3 uses
  %spec.select = select i1 %i.c, i32 1, i32 4     ; 2 uses
  %spec.select15 = select i1 %i.c, i32 1, i32 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %spec.select, ptr %i.d, align 4, !tbaa !19
end_hunk_0
begin_hunk_1_@writeIntraPredMode_CAVLC:.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 %spec.select15, ptr %i.f, align 4, !tbaa !22
  %i.g = load ptr, ptr %1, align 8, !tbaa !47     ; 5 uses
  %2 = select i1 %i.c, i32 1, i32 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
end_hunk_1
begin_hunk_2_@writeIntraPredMode_CAVLC:.lr.ph.i
bb.a:                                             ; preds = %bb.e, %.lr.ph.i
  %i.k = phi i32 [ %spec.select, %.lr.ph.i ], [ %i.aa, %bb.e ]
  %i.l = phi i8 [ %.pre.i, %.lr.ph.i ], [ %i.ab, %bb.e ]
  %.017.i = phi i32 [ %2, %.lr.ph.i ], [ %i.t, %bb.e ] ; 2 uses
  %.01516.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ac, %bb.e ]
  %i.m = shl i8 %i.l, 1                           ; 3 uses
  store i8 %i.m, ptr %i.h, align 8, !tbaa !10
end_hunk_2
