inline.NumInlined: 3702
inline.NumDeleted: 1232
begin_hunk_0_@_ZN6duckdb14BaseStatisticsC2EOS0_:bb.a
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #29
end_hunk_0
begin_hunk_1_@_ZN6duckdb14BaseStatisticsC2EOS0_:bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !34
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !34
  store ptr null, ptr %i.v, align 8, !tbaa !34
  store ptr %i.y, ptr %i.a, align 8, !tbaa !34
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !34   ; 4 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4swapIN6duckdb10unique_ptrIA_NS0_14BaseStatisticsESt14default_deleteIS3_ELb0EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNKSt14default_deleteIA_N6duckdb14BaseStatisticsEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i8.i, label %.preheader.preheader.i.i.i.i.i.i5.i

.preheader.preheader.i.i.i.i.i.i5.i:              ; preds = %bb.c
  %.idx.i.i.i.i.i.i6.i = shl nsw i64 %i.ab, 7
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i6.i
  br label %.preheader.i.i.i.i.i.i7.i

.preheader.i.i.i.i.i.i7.i:                        ; preds = %.preheader.i.i.i.i.i.i7.i, %.preheader.preheader.i.i.i.i.i.i5.i
  %i.ae = phi ptr [ %i.af, %.preheader.i.i.i.i.i.i7.i ], [ %i.ad, %.preheader.preheader.i.i.i.i.i.i5.i ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -128 ; 3 uses
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.af) #29, !inline_history !35
  %i.ag = icmp eq ptr %i.af, %i.z
  br i1 %i.ag, label %_ZNKSt14default_deleteIA_N6duckdb14BaseStatisticsEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i8.i, label %.preheader.i.i.i.i.i.i7.i

_ZNKSt14default_deleteIA_N6duckdb14BaseStatisticsEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i8.i: ; preds = %.preheader.i.i.i.i.i.i7.i, %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #30, !inline_history !35
  br label %_ZSt4swapIN6duckdb10unique_ptrIA_NS0_14BaseStatisticsESt14default_deleteIS3_ELb0EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit

_ZSt4swapIN6duckdb10unique_ptrIA_NS0_14BaseStatisticsESt14default_deleteIS3_ELb0EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_N6duckdb14BaseStatisticsEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i8.i
  ret void

bb.d:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN6duckdb14BaseStatisticsaSEOS0_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 80, i1 false), !tbaa.struct !62
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !34
  %i.x = inttoptr i64 %i.w to ptr
  store ptr null, ptr %i.u, align 8, !tbaa !34
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !34
  store ptr null, ptr %i.v, align 8, !tbaa !34
  store ptr %i.y, ptr %i.u, align 8, !tbaa !34
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !34   ; 4 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4swapIN6duckdb10unique_ptrIA_NS0_14BaseStatisticsESt14default_deleteIS3_ELb0EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNKSt14default_deleteIA_N6duckdb14BaseStatisticsEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i8.i, label %.preheader.preheader.i.i.i.i.i.i5.i

.preheader.preheader.i.i.i.i.i.i5.i:              ; preds = %bb.b
  %.idx.i.i.i.i.i.i6.i = shl nsw i64 %i.ab, 7
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i6.i
  br label %.preheader.i.i.i.i.i.i7.i

.preheader.i.i.i.i.i.i7.i:                        ; preds = %.preheader.i.i.i.i.i.i7.i, %.preheader.preheader.i.i.i.i.i.i5.i
  %i.ae = phi ptr [ %i.af, %.preheader.i.i.i.i.i.i7.i ], [ %i.ad, %.preheader.preheader.i.i.i.i.i.i5.i ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -128 ; 3 uses
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.af) #29, !inline_history !35
  %i.ag = icmp eq ptr %i.af, %i.z
  br i1 %i.ag, label %_ZNKSt14default_deleteIA_N6duckdb14BaseStatisticsEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i8.i, label %.preheader.i.i.i.i.i.i7.i

_ZNKSt14default_deleteIA_N6duckdb14BaseStatisticsEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i8.i: ; preds = %.preheader.i.i.i.i.i.i7.i, %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #30, !inline_history !35
  br label %_ZSt4swapIN6duckdb10unique_ptrIA_NS0_14BaseStatisticsESt14default_deleteIS3_ELb0EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit

_ZSt4swapIN6duckdb10unique_ptrIA_NS0_14BaseStatisticsESt14default_deleteIS3_ELb0EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISA_ESt18is_move_assignableISA_EEE5valueEvE4typeERSA_SJ_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_N6duckdb14BaseStatisticsEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i8.i
  ret ptr %0
}

end_hunk_2
