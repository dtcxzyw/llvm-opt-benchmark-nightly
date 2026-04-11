inline.NumInlined: 334
inline.NumDeleted: 192
begin_hunk_0_@_ZN6Assimp11HMPImporter13ReadFirstSkinEjPKhPS2_:bb.a
  %i.a = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %"class.std::unique_ptr.14", align 8 ; 6 uses
  %i.b = load i32, ptr %2, align 4                ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.f

end_hunk_0
begin_hunk_1_@_ZN6Assimp11HMPImporter13ReadFirstSkinEjPKhPS2_:bb.a
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %.pn28 = phi i64 [ 16, %bb.b ], [ 4, %bb.a ]
  %.018 = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 %.pn28 ; 3 uses
  %i.h = load i32, ptr %5, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.l = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 4 uses
end_hunk_1
