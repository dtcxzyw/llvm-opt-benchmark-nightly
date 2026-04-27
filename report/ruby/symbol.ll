inline.NumInlined: 215
inline.NumDeleted: 75
begin_hunk_0_@rb_is_local_name:bb.a
; Function Attrs: nounwind sspstrong uwtable
define hidden noundef ptr @rb_id_table_init(ptr noundef returned %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 noundef 0, i64 noundef range(i64 -51539607552, 51539607529) 24, i1 noundef false) #20
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %i.a, 2
  %i.d = lshr i32 %i.a, 3
  %i.e = or i32 %i.c, %i.d                        ; 2 uses
  %i.f = lshr i32 %i.e, 2
  %i.g = or i32 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = or i32 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i32 %i.i, 8
end_hunk_0
begin_hunk_1_@rb_id_table_create
define hidden noalias noundef nonnull ptr @rb_id_table_create(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull dereferenceable(24) ptr @ruby_xmalloc(i64 noundef 24) #25 ; 4 uses
  %i.b = trunc i64 %0 to i32                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 noundef 0, i64 noundef range(i64 -51539607552, 51539607529) 24, i1 noundef false) #20
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %rb_id_table_init.exit

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 2
  %i.e = lshr i32 %i.b, 3
  %i.f = or i32 %i.d, %i.e                        ; 2 uses
  %i.g = lshr i32 %i.f, 2
  %i.h = or i32 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = or i32 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i32 %i.j, 8
end_hunk_1
begin_hunk_2_@rb_managed_id_table_create:bb.a
RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = tail call i64 @rb_obj_set_shareable(i64 noundef %i.a) #20 ; 0 uses
  %i.j = trunc i64 %1 to i32                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.h, i8 noundef 0, i64 noundef range(i64 -51539607552, 51539607529) 24, i1 noundef false) #20
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %rb_id_table_init.exit

bb.c:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  %i.l = lshr i32 %i.j, 2
  %i.m = lshr i32 %i.j, 3
  %i.n = or i32 %i.l, %i.m                        ; 2 uses
  %i.o = lshr i32 %i.n, 2
  %i.p = or i32 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i32 %i.p, 4
  %i.r = or i32 %i.q, %i.p                        ; 2 uses
  %i.s = lshr i32 %i.r, 8
end_hunk_2
begin_hunk_3_@rb_managed_id_table_new:bb.a
RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = tail call i64 @rb_obj_set_shareable(i64 noundef %i.a) #20 ; 0 uses
  %i.j = trunc i64 %0 to i32                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.h, i8 noundef 0, i64 noundef range(i64 -51539607552, 51539607529) 24, i1 noundef false) #20
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %rb_managed_id_table_create.exit

bb.c:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  %i.l = lshr i32 %i.j, 2
  %i.m = lshr i32 %i.j, 3
  %i.n = or i32 %i.l, %i.m                        ; 2 uses
  %i.o = lshr i32 %i.n, 2
  %i.p = or i32 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i32 %i.p, 4
  %i.r = or i32 %i.q, %i.p                        ; 2 uses
  %i.s = lshr i32 %i.r, 8
end_hunk_3
begin_hunk_4_@rb_managed_id_table_dup:bb.a
  br i1 %i.u, label %bb.d, label %rb_id_table_init.exit

bb.d:                                             ; preds = %managed_id_table_ptr.exit
  %i.v = add nuw nsw i32 %i.t, 1                  ; 2 uses
  %i.w = lshr i32 %i.v, 2
  %i.x = lshr i32 %i.v, 3
  %i.y = or i32 %i.w, %i.x                        ; 2 uses
  %i.z = lshr i32 %i.y, 2
  %i.aa = or i32 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i32 %i.aa, 4
  %i.ac = or i32 %i.ab, %i.aa                     ; 2 uses
  %i.ad = lshr i32 %i.ac, 8
end_hunk_4
