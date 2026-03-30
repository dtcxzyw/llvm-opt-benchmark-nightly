begin_hunk_0
  %.sroa.0.6.i = and i8 %i.o, 127
  %i.p = zext i16 %i.k to i32                     ; 3 uses
  %i.q = zext i16 %i.m to i32                     ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  store ptr %0, ptr %8, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i.a, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %6, ptr %i.r, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 %.sroa.0.6.i, ptr %i.s, align 4, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %2, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.d, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %i.p, ptr %i.v, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 %i.q, ptr %i.w, align 4, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i32 0, ptr %i.y, align 4, !tbaa !34
  %.06.i.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i32 -1, ptr %.06.i.i.i.ptr.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 -1, ptr %.06.i.i.i.ptr.1.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 -1, ptr %.06.i.i.i.ptr.2.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i32 -1, ptr %.06.i.i.i.ptr.3.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i32 -1, ptr %.06.i.i.i.ptr.4.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i32 -1, ptr %.06.i.i.i.ptr.5.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i32 -1, ptr %.06.i.i.i.ptr.6.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %8, i64 112
  store i32 -1, ptr %.06.i.i.i.ptr.7.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.8.i.i = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i32 -1, ptr %.06.i.i.i.ptr.8.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.9.i.i = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i32 -1, ptr %.06.i.i.i.ptr.9.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.10.i.i = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i32 -1, ptr %.06.i.i.i.ptr.10.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.11.i.i = getelementptr inbounds nuw i8, ptr %8, i64 144
  store i32 -1, ptr %.06.i.i.i.ptr.11.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.12.i.i = getelementptr inbounds nuw i8, ptr %8, i64 152
  store i32 -1, ptr %.06.i.i.i.ptr.12.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.13.i.i = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i32 -1, ptr %.06.i.i.i.ptr.13.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.14.i.i = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i32 -1, ptr %.06.i.i.i.ptr.14.i.i, align 8, !tbaa !3
  %.06.i.i.i.ptr.15.i.i = getelementptr inbounds nuw i8, ptr %8, i64 176
  store i32 -1, ptr %.06.i.i.i.ptr.15.i.i, align 8, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 184
  store i32 1073741824, ptr %i.z, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %2, ptr %9, align 8, !tbaa !36
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_0
begin_hunk_1

_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIN6hermes5regex8LoopDataELj16EED2Ev.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.dk = load i32, ptr %i.x, align 8
  %i.dl = and i32 %i.dk, 1
  %.not.i.i.i.i41 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i.i.i41, label %bb.v, label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEED2Ev.exit

bb.v:                                             ; preds = %_ZN6hermes5regex5StateINS0_16UTF16RegexTraitsEED2Ev.exit
  %i.dm = load ptr, ptr %.06.i.i.i.ptr.i.i, align 8, !tbaa !64
  call void @_ZdlPv(ptr noundef %i.dm) #11
  br label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEED2Ev.exit

end_hunk_1
begin_hunk_2
  %.sroa.0.6.i = and i8 %i.o, 127
  %i.p = zext i16 %i.k to i32                     ; 3 uses
  %i.q = zext i16 %i.m to i32                     ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  store ptr %0, ptr %8, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i.a, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %6, ptr %i.r, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 %.sroa.0.6.i, ptr %i.s, align 4, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %2, ptr %i.t, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.d, ptr %i.u, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %i.p, ptr %i.v, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 %i.q, ptr %i.w, align 4, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i32 1073741824, ptr %i.x, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store ptr %2, ptr %9, align 8, !tbaa !13
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_2
