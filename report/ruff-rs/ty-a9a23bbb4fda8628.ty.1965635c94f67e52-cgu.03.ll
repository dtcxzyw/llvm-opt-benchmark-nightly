Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty-a9a23bbb4fda8628.ty.1965635c94f67e52-cgu.03?download=true
inline.NumInlined: 578
inline.NumDeleted: 271
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtBQ_7version10CommitInfoEEBQ_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 !guid !743 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !744, !nonnull !4, !align !15, !noundef !4 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !744, !noundef !4
  %i.e = icmp eq i8 %i.d, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !745, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  br i1 %i.e, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  %i.f = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2), !noalias !747
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  %i.g = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 1), !noalias !747
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %phi.call.i.i = phi ptr [ %i.g, %.split.i.i ], [ %i.f, %.split8.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %phi.call.i.i, null
  br i1 %.not.i.i, label %bb.c, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !746, !noalias !745, !noundef !4 ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !alias.scope !746, !noalias !745, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !746, !noalias !745, !noundef !4
  %exitcond.not.i.i13 = icmp eq i64 %i.i, 0
  br i1 %exitcond.not.i.i13, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.m = add nuw i64 %.sroa.05.0.i.i14, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.i
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.05.0.i.i14 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.c ]
  %i.n = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.l), !noalias !747 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.n, null
  br i1 %.not9.i.i, label %bb.d, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread: ; preds = %.lr.ph, %bb.b
  %.sroa.0.1.i.ph.i = phi ptr [ %phi.call.i.i, %bb.b ], [ %i.n, %.lr.ph ]
  %i.o = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.1.i.ph.i), !noalias !745
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEBW_.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit: ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.c, align 8, !alias.scope !744
  %.val9.i = load ptr, ptr %i.a, align 8, !noalias !745, !nonnull !4, !align !15, !noundef !4
  %i.p = tail call fastcc noundef align 8 ptr @_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_strBZ_(ptr %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !744 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEBW_.exit

bb.e:                                             ; preds = %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %.val.i3 = load ptr, ptr %i.a, align 8, !noalias !748, !nonnull !4, !align !15, !noundef !4
  %i.q = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2), !noalias !748 ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.r = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.q), !noalias !748
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEBW_.exit

bb.g:                                             ; preds = %bb.e
  %.val9.i5 = load ptr, ptr %i.a, align 8, !noalias !748 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.s = load i64, ptr %3, align 8, !range !16, !alias.scope !750, !noundef !4
  %.not.i.i6 = icmp eq i64 %i.s, -1
  br i1 %.not.i.i6, label %bb.h, label %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5) ]
  %i.t = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val9.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 4), !noalias !750 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.thread.i, label %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.thread3.i, !prof !13

_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.thread3.i: ; preds = %bb.h
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.t), !noalias !750
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEBW_.exit

_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.i: ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val2.i.i = load ptr, ptr %i.v, align 8, !alias.scope !750, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val3.i.i = load i64, ptr %i.w, align 8, !alias.scope !750, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5) ]
  %i.x = tail call fastcc noundef align 8 ptr @_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_strBZ_(ptr %.val9.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i, i64 noundef %.val3.i.i), !noalias !750 ; 2 uses
  %.not8.i = icmp eq ptr %i.x, null
  br i1 %.not8.i, label %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.thread.i, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEBW_.exit

_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.thread.i: ; preds = %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.y, align 8, !alias.scope !751, !noalias !748
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEBW_.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEEBW_.exit: ; preds = %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.thread.i, %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.i, %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.thread3.i, %bb.f, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread ], [ %i.p, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit ], [ %i.r, %bb.f ], [ null, %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.thread.i ], [ %i.x, %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.i ], [ %i.u, %_RINvXs3_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB2r_15PrettyFormatterEEB3e_.exit.thread3.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeNtNtCscdodAO9FK5_5alloc6string6StringEBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 !guid !759 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !760, !nonnull !4, !align !15, !noundef !4 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !20, !alias.scope !760, !noundef !4
  %i.e = icmp eq i8 %i.d, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !761, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  br i1 %i.e, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  %i.f = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2), !noalias !763
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  %i.g = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 1), !noalias !763
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %phi.call.i.i = phi ptr [ %i.g, %.split.i.i ], [ %i.f, %.split8.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %phi.call.i.i, null
  br i1 %.not.i.i, label %bb.c, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !762, !noalias !761, !noundef !4 ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !alias.scope !762, !noalias !761, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !762, !noalias !761, !noundef !4
  %exitcond.not.i.i12 = icmp eq i64 %i.i, 0
  br i1 %exitcond.not.i.i12, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.m = add nuw i64 %.sroa.05.0.i.i13, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.i
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.05.0.i.i13 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.c ]
  %i.n = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.l), !noalias !763 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.n, null
  br i1 %.not9.i.i, label %bb.d, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread: ; preds = %.lr.ph, %bb.b
  %.sroa.0.1.i.ph.i = phi ptr [ %phi.call.i.i, %bb.b ], [ %i.n, %.lr.ph ]
  %i.o = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.1.i.ph.i), !noalias !761
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueNtNtCscdodAO9FK5_5alloc6string6StringEBW_.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit: ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.c, align 8, !alias.scope !760
  %.val9.i = load ptr, ptr %i.a, align 8, !noalias !761, !nonnull !4, !align !15, !noundef !4
  %i.p = tail call fastcc noundef align 8 ptr @_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_strBZ_(ptr %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !760 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueNtNtCscdodAO9FK5_5alloc6string6StringEBW_.exit

bb.e:                                             ; preds = %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val3 = load ptr, ptr %i.q, align 8            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val4 = load i64, ptr %i.r, align 8
  %.val.i5 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !15, !noundef !4
  %i.s = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2) ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.s)
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueNtNtCscdodAO9FK5_5alloc6string6StringEBW_.exit

bb.g:                                             ; preds = %bb.e
  %.val11.i = load ptr, ptr %i.a, align 8, !nonnull !4, !align !15, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.u = tail call fastcc noundef align 8 ptr @_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_strBZ_(ptr %.val11.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val3, i64 noundef %.val4) ; 2 uses
  %.not8.i = icmp eq ptr %i.u, null
  br i1 %.not8.i, label %bb.h, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueNtNtCscdodAO9FK5_5alloc6string6StringEBW_.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.v, align 8, !alias.scope !764
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueNtNtCscdodAO9FK5_5alloc6string6StringEBW_.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueNtNtCscdodAO9FK5_5alloc6string6StringEBW_.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit
  %.sroa.0.0 = phi ptr [ %i.o, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread ], [ %i.p, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit ], [ %i.t, %bb.f ], [ null, %bb.h ], [ %i.u, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCscvBHLZPbXnS_10serde_json3ser8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryemEBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 !guid !774 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !775, !nonnull !4, !align !15, !noundef !4 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !20, !alias.scope !775, !noundef !4
  %i.f = icmp eq i8 %i.e, 1
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !776, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  br i1 %i.f, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  %i.g = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2), !noalias !778
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  %i.h = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 1), !noalias !778
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %phi.call.i.i = phi ptr [ %i.h, %.split.i.i ], [ %i.g, %.split8.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %phi.call.i.i, null
  br i1 %.not.i.i, label %bb.c, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !777, !noalias !776, !noundef !4 ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !777, !noalias !776, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !777, !noalias !776, !noundef !4
  %exitcond.not.i.i19 = icmp eq i64 %i.j, 0
  br i1 %exitcond.not.i.i19, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.n = add nuw i64 %.sroa.05.0.i.i20, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.j
  br i1 %exitcond.not.i.i, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.05.0.i.i20 = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ]
  %i.o = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef range(i64 0, -9223372036854775808) %i.m), !noalias !778 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %bb.d, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread: ; preds = %.lr.ph, %bb.b
  %.sroa.0.1.i.ph.i = phi ptr [ %phi.call.i.i, %bb.b ], [ %i.o, %.lr.ph ]
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.1.i.ph.i), !noalias !776
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valuemEBW_.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit: ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.d, align 8, !alias.scope !775
  %.val9.i = load ptr, ptr %i.b, align 8, !noalias !776, !nonnull !4, !align !15, !noundef !4
  %i.q = tail call fastcc noundef align 8 ptr @_RNvXs1_NtCscvBHLZPbXnS_10serde_json3serQINtB5_10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB5_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer13serialize_strBZ_(ptr %.val9.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !775 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valuemEBW_.exit

bb.e:                                             ; preds = %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit
  %.val3 = load i32, ptr %3, align 4              ; 3 uses
  %.val.i4 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !15, !noundef !4
  %i.r = tail call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.s = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.r)
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valuemEBW_.exit

bb.g:                                             ; preds = %bb.e
  %.val10.i = load ptr, ptr %i.b, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.t = icmp ugt i32 %.val3, 9999
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.011.0.lcssa.i.i.i.i.i = phi i64 [ 10, %bb.g ], [ %4, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i32 [ %.val3, %bb.g ], [ %i.w, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.u = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i, 99
  br i1 %i.u, label %bb.h, label %bb.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.0.131.i.i.i.i.i = phi i32 [ %i.w, %.lr.ph.i.i.i.i.i ], [ %.val3, %bb.g ] ; 3 uses
  %.sroa.011.030.i.i.i.i.i = phi i64 [ %4, %.lr.ph.i.i.i.i.i ], [ 10, %bb.g ] ; 2 uses
  %i.v = urem i32 %.sroa.0.131.i.i.i.i.i, 10000
  %i.w = udiv i32 %.sroa.0.131.i.i.i.i.i, 10000   ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i32 %i.v to i16 ; 2 uses
  %i.x = udiv i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.y = shl nuw nsw i16 %i.x, 1
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = urem i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.ab = shl nuw nsw i16 %i.aa, 1
  %i.ac = zext nneg i16 %i.ab to i64
  %4 = add i64 %.sroa.011.030.i.i.i.i.i, -4       ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr @181, i64 %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %4
  %i.af = load i16, ptr %i.ad, align 1, !noalias !779
  store i16 %i.af, ptr %i.ae, align 1, !alias.scope !779
  %5 = getelementptr inbounds nuw i8, ptr @181, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.a, i64 %.sroa.011.030.i.i.i.i.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -2
  %i.ai = load i16, ptr %5, align 1, !noalias !779
  store i16 %i.ai, ptr %i.ah, align 1, !alias.scope !779
  %i.aj = icmp ugt i32 %.sroa.0.131.i.i.i.i.i, 99999999
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.lhs.trunc26.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i to i16 ; 2 uses
  %i.ak = urem i16 %.lhs.trunc26.i.i.i.i.i, 100
  %i.al = shl nuw nsw i16 %i.ak, 1
  %i.am = zext nneg i16 %i.al to i64
  %i.an = udiv i16 %.lhs.trunc26.i.i.i.i.i, 100
  %.zext29.i.i.i.i.i = zext nneg i16 %i.an to i32
  %i.ao = add i64 %.sroa.011.0.lcssa.i.i.i.i.i, -2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr @181, i64 %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  %i.ar = load i16, ptr %i.ap, align 1, !noalias !779
  store i16 %i.ar, ptr %i.aq, align 1, !alias.scope !779
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  %.sroa.011.1.i.i.i.i.i = phi i64 [ %i.ao, %bb.h ], [ %.sroa.011.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i = phi i32 [ %.zext29.i.i.i.i.i, %bb.h ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.as = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i, 10
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add i64 %.sroa.011.1.i.i.i.i.i, -2      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr @181, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ay = load i16, ptr %i.aw, align 1, !noalias !779
  store i16 %i.ay, ptr %i.ax, align 1, !alias.scope !779
  br label %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_u32QNtNtCs2bbjMbSOFjy_2ty7printer6StdoutEB1m_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.az = add i64 %.sroa.011.1.i.i.i.i.i, -1      ; 2 uses
  %i.ba = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bc = or disjoint i8 %i.ba, 48
  store i8 %i.bc, ptr %i.bb, align 1, !alias.scope !779
  br label %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_u32QNtNtCs2bbjMbSOFjy_2ty7printer6StdoutEB1m_.exit.i.i.i

_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_u32QNtNtCs2bbjMbSOFjy_2ty7printer6StdoutEB1m_.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.011.2.i.i.i.i.i = phi i64 [ %i.az, %bb.k ], [ %i.av, %bb.j ] ; 2 uses
  %i.bd = sub i64 10, %.sroa.011.2.i.i.i.i.i      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.011.2.i.i.i.i.i
  %i.bf = icmp ult i64 %i.bd, 11
  tail call void @llvm.assume(i1 %i.bf)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %i.bg = call noundef ptr @_RNvYNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtNtCs2AWtUsOyxgP_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val10.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef range(i64 0, -9223372036854775808) %i.bd) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %bb.l, label %_RINvXsK_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsmNtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB1e_15PrettyFormatterEEB21_.exit.i, !prof !13

_RINvXsK_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsmNtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB1e_15PrettyFormatterEEB21_.exit.i: ; preds = %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_u32QNtNtCs2bbjMbSOFjy_2ty7printer6StdoutEB1m_.exit.i.i.i
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs0_NtCscvBHLZPbXnS_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.bg)
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valuemEBW_.exit

bb.l:                                             ; preds = %_RINvYNtNtCscvBHLZPbXnS_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_u32QNtNtCs2bbjMbSOFjy_2ty7printer6StdoutEB1m_.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %i.bi, align 8, !alias.scope !780
  br label %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valuemEBW_.exit

_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valuemEBW_.exit: ; preds = %bb.l, %_RINvXsK_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsmNtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB1e_15PrettyFormatterEEB21_.exit.i, %bb.f, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit
  %.sroa.0.0 = phi ptr [ %i.p, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit.thread ], [ %i.q, %_RINvXs6_NtCscvBHLZPbXnS_10serde_json3serINtB6_8CompoundQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB6_15PrettyFormatterENtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeEBW_.exit ], [ %i.s, %bb.f ], [ null, %bb.l ], [ %i.bh, %_RINvXsK_NtNtCs6nZeqdiIoCH_10serde_core3ser5implsmNtB8_9Serialize9serializeQINtNtCscvBHLZPbXnS_10serde_json3ser10SerializerQNtNtCs2bbjMbSOFjy_2ty7printer6StdoutNtB1e_15PrettyFormatterEEB21_.exit.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtB5_7Context4withNCNvMs_NtNtB7_7flavors5arrayINtB1b_7ChannelNtCs2bbjMbSOFjy_2ty15MainLoopMessageE4recvs_0uEs0_0B1N_(ptr nofree captures(none) %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality !guid !793 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB6_7ChannelNtCs2bbjMbSOFjy_2ty15MainLoopMessageE4recvs_0B1b_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #25
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !797, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !797
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextECs2bbjMbSOFjy_2ty.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsfCaL8mGBm0d_17crossbeam_channel7context5InnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextECs2bbjMbSOFjy_2ty.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !801, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !801
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextECs2bbjMbSOFjy_2ty.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsfCaL8mGBm0d_17crossbeam_channel7context5InnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextECs2bbjMbSOFjy_2ty.exit6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextECs2bbjMbSOFjy_2ty.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextECs2bbjMbSOFjy_2ty.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtB5_7Context4withNCNvMs_NtNtB7_7flavors5arrayINtB1b_7ChannelNtCs2bbjMbSOFjy_2ty15MainLoopMessageE4send0uEs0_0B1N_(ptr nofree captures(none) %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality !guid !814 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors5arrayINtB6_7ChannelNtCs2bbjMbSOFjy_2ty15MainLoopMessageE4send0B1b_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #25
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !818, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !818
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextECs2bbjMbSOFjy_2ty.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsfCaL8mGBm0d_17crossbeam_channel7context5InnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextECs2bbjMbSOFjy_2ty.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !822, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !822
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextECs2bbjMbSOFjy_2ty.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsfCaL8mGBm0d_17crossbeam_channel7context5InnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextECs2bbjMbSOFjy_2ty.exit6
end_hunk_0
