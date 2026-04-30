inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxSeek:tailrecurse.peel.begin
tailrecurse.peel.begin:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 10 uses
  %.promoted = load i32, ptr %0, align 8, !tbaa !39 ; 6 uses
  store i64 0, ptr %i.c, align 8, !tbaa !44
  store ptr null, ptr %i.d, align 8, !tbaa !49
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %5 = and i32 %.promoted, -4
  %6 = or disjoint i32 %5, 1                      ; 2 uses
  store i32 %6, ptr %0, align 8, !tbaa !39
  %i.e = load i8, ptr %1, align 1, !tbaa !21
  switch i8 %i.e, label %bb.b [
    i8 62, label %.loopexit.sink.split
end_hunk_0
begin_hunk_1_@raxSeek:tailrecurse.peel.begin
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.loopexit174, label %.loopexit.sink.split

bb.a:                                             ; preds = %tailrecurse.peel.begin
  br label %.loopexit.sink.split
end_hunk_1
begin_hunk_2_@raxSeek:tailrecurse.peel.begin
  store i32 0, ptr %i.j, align 4, !tbaa !9
  br label %bb.as

.loopexit.sink.split:                             ; preds = %tailrecurse.peel.begin, %.thread.peel, %bb.a
  %.sink = phi ptr [ %1, %bb.a ], [ %1, %tailrecurse.peel.begin ], [ @.str.5, %.thread.peel ]
  %.ph = phi i32 [ %.promoted, %bb.a ], [ %.promoted, %tailrecurse.peel.begin ], [ %6, %.thread.peel ]
  %.tr172231.ph = phi ptr [ %2, %bb.a ], [ %2, %tailrecurse.peel.begin ], [ null, %.thread.peel ]
  %.tr173225.ph = phi i64 [ %3, %bb.a ], [ %3, %tailrecurse.peel.begin ], [ 0, %.thread.peel ]
  %.ph262 = phi i1 [ false, %bb.a ], [ true, %tailrecurse.peel.begin ], [ true, %.thread.peel ]
  %.ph263 = phi i1 [ true, %bb.a ], [ false, %tailrecurse.peel.begin ], [ false, %.thread.peel ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sink, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21
  %i.m = icmp ne i8 %i.l, 61
end_hunk_2
