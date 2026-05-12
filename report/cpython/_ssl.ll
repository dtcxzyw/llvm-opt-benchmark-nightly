inline.NumInlined: 471
inline.NumDeleted: 148
begin_hunk_0_@_ssl__SSLContext_set_ecdh_curve
define internal noundef ptr @_ssl__SSLContext_set_ecdh_curve(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = call i32 @PyUnicode_FSConverter(ptr noundef %1, ptr noundef nonnull %i.a) #10
end_hunk_0
begin_hunk_1_@_ssl__SSLContext_set_ecdh_curve:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = call i32 @OBJ_sn2nid(ptr noundef %i.e) #10 ; 3 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !6
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30   ; 2 uses
end_hunk_1
begin_hunk_2_@_ssl__SSLContext_set_ecdh_curve:bb.a

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #10
  %.pr.pre.i = load i32, ptr %i.b, align 4, !tbaa !6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.b
  %2 = phi i32 [ %i.f, %bb.b ], [ %.pr.pre.i, %bb.d ], [ %i.f, %bb.c ]
  %i.k = icmp eq i32 %2, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %Py_DECREF.exit.i
end_hunk_2
