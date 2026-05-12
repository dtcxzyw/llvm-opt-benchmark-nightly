inline.NumInlined: 21
inline.NumDeleted: 2
begin_hunk_0_@geoGetPointsInRange
define dso_local i32 @geoGetPointsInRange(ptr noundef readonly captures(none) %0, double noundef %1, double noundef %2, ptr noundef readonly captures(none) %3, ptr noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.zrangespec, align 8         ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
end_hunk_0
begin_hunk_1_@geoGetPointsInRange:bb.a
  %i.t = call ptr @zzlFirstInRange(ptr noundef %i.s, ptr noundef nonnull %6) #13 ; 3 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !46
  %.not64 = icmp eq ptr %i.t, null
  br i1 %.not64, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %7 = call ptr @lpNext(ptr noundef %i.s, ptr noundef nonnull %i.t) #13
  store ptr %7, ptr %i.b, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = add i64 %5, -1
end_hunk_1
begin_hunk_2_@geoGetPointsInRange:bb.a
  %.not61 = icmp eq ptr %i.be, null
  br i1 %.not61, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
end_hunk_2
begin_hunk_3_@georadiusGeneric:bb.a
  %3 = alloca %struct.GeoShape, align 8           ; 22 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %4 = alloca %struct.GeoHashRadius, align 8      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
end_hunk_3
begin_hunk_4_@georadiusGeneric:bb.a
  br i1 %.not397, label %._crit_edge536, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hj = call ptr @createZsetObject() #13        ; 3 uses
  store ptr %i.hj, ptr %i.d, align 8, !tbaa !31
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !33 ; 3 uses
end_hunk_4
begin_hunk_5_@georadiusGeneric:bb.a
.loopexit578:                                     ; preds = %bb.cs, %bb.cm, %bb.cg
  %.0289.lcssa.ph = phi i64 [ %spec.select414.us, %bb.cm ], [ 0, %bb.cg ], [ %spec.select414, %bb.cs ]
  %.0288.lcssa.ph = phi i64 [ %i.it, %bb.cm ], [ 0, %bb.cg ], [ %i.jx, %bb.cs ]
  call void @zsetConvertToListpackIfNeeded(ptr noundef %i.hj, i64 noundef %.0289.lcssa.ph, i64 noundef %.0288.lcssa.ph) #13
  %i.jz = load ptr, ptr %i.e, align 8, !tbaa !86
  call void @setKey(ptr noundef %0, ptr noundef %i.jz, ptr noundef nonnull %.5, ptr noundef nonnull %i.d, i32 noundef 0) #13
  %i.ka = select i1 %i.ez, ptr @.str.52, ptr @.str.51
end_hunk_5
