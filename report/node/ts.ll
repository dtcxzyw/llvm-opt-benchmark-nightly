inline.NumInlined: 8
inline.NumDeleted: 8
begin_hunk_0_@create_nonce:bb.a
.preheader.7:                                     ; preds = %.preheader.6
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %.not.7 = icmp eq i8 %i.r, 0
  %spec.select.a = select i1 %.not.7, i32 8, i32 7
  br label %.critedge

.critedge:                                        ; preds = %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.0.lcssa.a = phi i32 [ 4, %.preheader.4 ], [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ %spec.select.a, %.preheader.7 ], [ 2, %.preheader.2 ], [ 5, %.preheader.5 ], [ 3, %.preheader.3 ], [ 6, %.preheader.6 ] ; 3 uses
  %i.s = call ptr @ASN1_INTEGER_new() #7          ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %bb.b
end_hunk_0
begin_hunk_1_@create_nonce:bb.a
  %i.y = zext nneg i32 %i.x to i64
  %i.z = call ptr @app_malloc(i64 noundef %i.y, ptr noundef nonnull @.str.158) #7 ; 2 uses
  store ptr %i.z, ptr %i.u, align 8, !tbaa !29
  %0 = zext nneg i32 %.0.lcssa.a to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %0
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !31
  %i.ac = sext i32 %i.ab to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false)
end_hunk_1
