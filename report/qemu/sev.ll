Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sev?download=true
inline.NumInlined: 275
inline.NumDeleted: 68
begin_hunk_0_@sev_launch_finish:bb.a

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %trace_kvm_sev_launch_finish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.155) #15
  br label %trace_kvm_sev_launch_finish.exit

trace_kvm_sev_launch_finish.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i32 7, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.f, ptr %i.g, align 4
  %i.h = load ptr, ptr @kvm_state, align 8
  %i.i = call i32 (ptr, i64, ...) @kvm_vm_ioctl(ptr noundef %i.h, i64 noundef 3221794490, ptr noundef nonnull %1) #15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %trace_kvm_sev_launch_finish.exit
  %i.l = icmp ugt i32 %i.k, 24
  br i1 %i.l, label %fw_error_to_str.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @sev_fw_errlist, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  br label %fw_error_to_str.exit

fw_error_to_str.exit:                             ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.o, %bb.f ], [ @.str.47, %bb.e ]
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.154, ptr noundef nonnull @__func__.sev_launch_finish, i32 noundef %i.i, i32 noundef %i.k, ptr noundef %.0.i) #15
  call void @exit(i32 noundef 1) #20
  unreachable

bb.g:                                             ; preds = %trace_kvm_sev_launch_finish.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = call ptr @qapi_enum_lookup(ptr noundef nonnull @SevState_lookup, i32 noundef %i.q) #15
  %i.s = call ptr @qapi_enum_lookup(ptr noundef nonnull @SevState_lookup, i32 noundef 3) #15
  %i.t = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %sev_set_guest_state.exit, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.u = load i16, ptr @_TRACE_KVM_SEV_CHANGE_STATE_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.u, 0
  br i1 %.not2.i.i, label %sev_set_guest_state.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr @qemu_loglevel, align 4
  %i.w = and i32 %i.v, 32768
  %.not3.i.i = icmp eq i32 %i.w, 0
  br i1 %.not3.i.i, label %sev_set_guest_state.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.133, ptr noundef %i.r, ptr noundef %i.s) #15
  br label %sev_set_guest_state.exit

sev_set_guest_state.exit:                         ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  store i32 3, ptr %i.p, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @sev_launch_update_data(ptr nofree noundef readonly captures(none) %0, i64 %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %5 = alloca %struct.kvm_sev_cmd, align 8        ; 8 uses
  %6 = alloca %struct.kvm_sev_launch_update_data, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.a = icmp ne ptr %2, null
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.c, align 8, !annotation !9
  %i.d = ptrtoint ptr %2 to i64
  store i64 %i.d, ptr %6, align 8
  %i.e = trunc i64 %3 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.e, ptr %i.f, align 8
  %i.g = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %trace_kvm_sev_launch_update_data.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr @_TRACE_KVM_SEV_LAUNCH_UPDATE_DATA_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.h, 0
  br i1 %.not1.i, label %trace_kvm_sev_launch_update_data.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 32768
  %.not2.i = icmp eq i32 %i.j, 0
  br i1 %.not2.i, label %trace_kvm_sev_launch_update_data.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.157, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) #15
  br label %trace_kvm_sev_launch_update_data.exit

trace_kvm_sev_launch_update_data.exit:            ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.l = load i32, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 3, ptr %5, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.l, ptr %i.m, align 4
  %i.n = ptrtoint ptr %6 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr @kvm_state, align 8
  %i.q = call i32 (ptr, i64, ...) @kvm_vm_ioctl(ptr noundef %i.p, i64 noundef 3221794490, ptr noundef nonnull %5) #15 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = load i32, ptr %i.r, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %trace_kvm_sev_launch_update_data.exit
  %i.t = icmp ugt i32 %i.s, 24
  br i1 %i.t, label %fw_error_to_str.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @sev_fw_errlist, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  br label %fw_error_to_str.exit

fw_error_to_str.exit:                             ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.w, %bb.g ], [ @.str.47, %bb.f ]
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 1296, ptr noundef nonnull @__func__.sev_launch_update_data, ptr noundef nonnull @.str.156, ptr noundef nonnull @__func__.sev_launch_update_data, i32 noundef %i.q, i32 noundef %i.s, ptr noundef %.0.i) #15
  br label %bb.h

bb.h:                                             ; preds = %trace_kvm_sev_launch_update_data.exit, %fw_error_to_str.exit, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.q, %fw_error_to_str.exit ], [ 0, %trace_kvm_sev_launch_update_data.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @sev_kvm_init(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @ram_block_discard_disable(i1 noundef zeroext true) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 1957, ptr noundef nonnull @__func__.sev_kvm_init, ptr noundef nonnull @.str.158, ptr noundef nonnull @__func__.sev_kvm_init) #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.c = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ram_block_notifier_add(ptr noundef nonnull @sev_ram_notifier) #15
  tail call void @qemu_add_machine_init_done_notifier(ptr noundef nonnull @sev_machine_done_notify) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @sev_kvm_type(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 52, ptr noundef nonnull @__func__.SEV_COMMON) #15 ; 2 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 53, ptr noundef nonnull @__func__.SEV_GUEST) #15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %switch = icmp ult i32 %i.f, 2
  br i1 %switch, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.h = load i32, ptr %i.g, align 4
  %1 = and i32 %i.h, 4
  %.not16 = icmp eq i32 %1, 0                     ; 2 uses
  %2 = select i1 %.not16, i32 2, i32 3            ; 3 uses
  %i.i = tail call zeroext i1 @kvm_is_vm_type_supported(i32 noundef %2) #15
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.e, align 8
  %i.k = icmp eq i32 %i.j, 0
  %i.l = select i1 %.not16, ptr @.str.164, ptr @.str.165 ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.163, ptr noundef nonnull %i.l) #15
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.166, ptr noundef nonnull %i.l) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i32 %2, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.a, %bb.f, %bb.g
  %.0 = phi i32 [ -1, %bb.f ], [ -1, %bb.g ], [ %i.d, %bb.a ], [ %2, %bb.h ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @sev_guest_get_dh_cert_file(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
g_strdup_inline.exit:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 53, ptr noundef nonnull @__func__.SEV_GUEST) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noalias ptr @g_strdup(ptr noundef %i.c) #15
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sev_guest_set_dh_cert_file(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
g_strdup_inline.exit:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 53, ptr noundef nonnull @__func__.SEV_GUEST) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c) #15
  %i.d = tail call noalias ptr @g_strdup(ptr noundef %1) #15
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 53, ptr noundef nonnull @__func__.SEV_GUEST) #15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store ptr %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @sev_guest_get_session_file(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 53, ptr noundef nonnull @__func__.SEV_GUEST) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %g_strdup_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.c) #15
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sev_guest_set_session_file(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
g_strdup_inline.exit:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 53, ptr noundef nonnull @__func__.SEV_GUEST) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c) #15
  %i.d = tail call noalias ptr @g_strdup(ptr noundef %1) #15
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 53, ptr noundef nonnull @__func__.SEV_GUEST) #15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store ptr %i.d, ptr %i.f, align 8
  ret void
}

declare ptr @object_class_property_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @sev_guest_get_legacy_vm_type(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 53, ptr noundef nonnull @__func__.SEV_GUEST) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %i.a, align 4
  %i.e = call zeroext i1 @visit_type_OnOffAuto(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @sev_guest_set_legacy_vm_type(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 53, ptr noundef nonnull @__func__.SEV_GUEST) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = tail call zeroext i1 @visit_type_OnOffAuto(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef %4) #15 ; 0 uses
  ret void
}

declare ptr @address_space_map(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @build_kernel_loader_hashes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 9 uses
  %3 = alloca [2 x %struct.iovec], align 16       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i64 32, ptr %i.e, align 8
  store ptr %i.a, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call i32 @qcrypto_hash_bytes(i32 noundef 3, ptr noundef %i.g, i64 noundef %i.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %2) #15
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.e, align 8
  %i.m = icmp eq i64 %i.l, 32
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.2, i32 noundef 2379, ptr noundef nonnull @__PRETTY_FUNCTION__.build_kernel_loader_hashes) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call i32 @qcrypto_hash_bytes(i32 noundef 3, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %2) #15
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8
  %i.u = icmp eq i64 %i.t, 32
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.2, i32 noundef 2390, ptr noundef nonnull @__PRETTY_FUNCTION__.build_kernel_loader_hashes) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr %i.c, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.v = load ptr, ptr %1, align 8
  store ptr %i.v, ptr %3, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8
  store i64 %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %i.z, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = call i32 @qcrypto_hash_bytesv(i32 noundef 3, ptr noundef nonnull %3, i64 noundef 2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %2) #15
  %i.ag = icmp sgt i32 %i.af, -1                  ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ah = load i64, ptr %i.e, align 8
  %i.ai = icmp eq i64 %i.ah, 32
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.2, i32 noundef 2402, ptr noundef nonnull @__PRETTY_FUNCTION__.build_kernel_loader_hashes) #19
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) @sev_hash_table_header_guid, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 168, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) @sev_cmdline_entry_guid, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i16 50, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.am, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 noundef 32, i1 noundef false) #15
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(16) @sev_initrd_entry_guid, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 50, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ap, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 noundef 32, i1 noundef false) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aq, ptr noundef nonnull align 4 dereferenceable(16) @sev_kernel_entry_guid, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 134
  store i16 50, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.as, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 noundef 32, i1 noundef false) #15
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.at, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.l
end_hunk_0
