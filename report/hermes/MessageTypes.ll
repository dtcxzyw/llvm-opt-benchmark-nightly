begin_hunk_0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 16, i1 false), !tbaa.struct !360
  store <2 x i64> zeroinitializer, ptr %0, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !tbaa !300
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 16, i1 false), !tbaa.struct !360
  store <2 x i64> zeroinitializer, ptr %0, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !tbaa !300
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 16, i1 false), !tbaa.struct !360
  store <2 x i64> zeroinitializer, ptr %0, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !tbaa !300
end_hunk_2
