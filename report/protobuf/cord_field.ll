inline.NumInlined: 1987
inline.NumDeleted: 980
begin_hunk_0_@_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118CordFieldGenerator34GenerateMemberConstexprConstructorEPNS0_2io7PrinterE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !40
  %i.y = select i1 %i.m, i64 7, i64 0             ; 3 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118CordFieldGenerator34GenerateMemberConstexprConstructorEPNS0_2io7PrinterE:bb.a
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !25
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 23
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118CordFieldGenerator34GenerateMemberConstexprConstructorEPNS0_2io7PrinterE:bb.a
  store i8 0, ptr %.sroa.sel, align 1, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !40, !alias.scope !132
  %5 = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %5, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !25, !alias.scope !132
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118CordFieldGenerator37GenerateConstexprAggregateInitializerEPNS0_2io7PrinterE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !40
  %i.r = select i1 %i.m, i64 7, i64 0             ; 3 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118CordFieldGenerator37GenerateConstexprAggregateInitializerEPNS0_2io7PrinterE:bb.a
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !25
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 23
end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf8compiler3cpp12_GLOBAL__N_118CordFieldGenerator37GenerateConstexprAggregateInitializerEPNS0_2io7PrinterE:bb.a
  store i8 0, ptr %.sroa.sel, align 1, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.t, ptr %i.p, align 8, !tbaa !40, !alias.scope !148
  %5 = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %5, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.r, ptr %i.u, align 8, !tbaa !25, !alias.scope !148
end_hunk_5
