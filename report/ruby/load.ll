inline.NumInlined: 218
inline.NumDeleted: 78
begin_hunk_0_@rb_load_protect:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
end_hunk_0
begin_hunk_1_@rb_load_protect:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.g, align 8, !tbaa !47
  store i64 36, ptr %3, align 8, !tbaa !49
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !51
end_hunk_1
begin_hunk_2_@rb_load_protect:bb.a
  call fastcc void @rb_load_internal(i64 noundef %i.ab, i64 noundef %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !51
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g
end_hunk_2
