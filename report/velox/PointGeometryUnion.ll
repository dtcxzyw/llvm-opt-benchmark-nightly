inline.NumInlined: 180
inline.NumDeleted: 134
begin_hunk_0_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
bb.a:
  %2 = alloca %"class.geos::algorithm::PointLocator", align 4 ; 4 uses
  %3 = alloca %"class.std::set", align 8          ; 11 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZNK4geos9operation8geounion18PointGeometryUnion5UnionEv:bb.a
  unreachable

_ZNSt12_Vector_baseIN4geos4geom10CoordinateESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ax = mul nuw nsw i64 %i.l, 24
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #18
          to label %.noexc31 unwind label %bb.t   ; 5 uses
end_hunk_1
