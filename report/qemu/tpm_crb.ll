Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tpm_crb?download=true
inline.NumInlined: 60
inline.NumDeleted: 15
begin_hunk_0_@tpm_crb_request_completed:bb.a
  %i.u = load i64, ptr %i.t, align 8
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s)
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = tail call ptr @g_byte_array_set_size(ptr noundef nonnull %i.o, i32 noundef %i.w) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 896 ; 4 uses
  store i32 0, ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 608 ; 2 uses
  %i.aa = tail call ptr @memory_region_get_ram_ptr(ptr noundef nonnull %i.z) #7 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.y, align 16            ; 2 uses
  %i.ag = sub i32 %i.ae, %i.af                    ; 2 uses
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 3968) ; 3 uses
  %i.ai = load ptr, ptr %i.ac, align 8
  %i.aj = zext i32 %i.af to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = zext nneg i32 %i.ah to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aa, ptr noundef nonnull align 1 %i.ak, i64 noundef range(i64 0, 4294967296) %i.al, i1 noundef false) #7
  %i.am = icmp ult i32 %i.ag, 3968
  br i1 %i.am, label %bb.e, label %tpm_crb_fill_command_response.exit

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al
  %i.ao = sub nuw nsw i32 3968, %i.ah
  %i.ap = zext nneg i32 %i.ao to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.an, i8 noundef 0, i64 noundef range(i64 1, 3969) %i.ap, i1 noundef false) #7
  br label %tpm_crb_fill_command_response.exit

tpm_crb_fill_command_response.exit:               ; preds = %bb.d, %bb.e
  %i.aq = load i32, ptr %i.y, align 16
  %i.ar = add i32 %i.aq, %i.ah
  store i32 %i.ar, ptr %i.y, align 16
  tail call void @memory_region_set_dirty(ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef 3968) #7
  %i.as = load i32, ptr %i.b, align 4
  %i.at = and i32 %i.as, -7
  store i32 %i.at, ptr %i.b, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.av = load ptr, ptr %i.au, align 16
  %i.aw = tail call ptr @g_byte_array_set_size(ptr noundef %i.av, i32 noundef 0) #7 ; 0 uses
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @migrate_add_blocker_normal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @memory_region_init_ram(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @get_system_memory() local_unnamed_addr #1

declare ptr @g_byte_array_new() local_unnamed_addr #1

declare void @tpm_ppi_init(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @tpm_crb_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 60, ptr noundef nonnull @__func__.CRB) #7 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  tail call void @tpm_ppi_reset(ptr noundef nonnull %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @tpm_backend_reset(ptr noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @g_byte_array_set_size(ptr noundef %i.f, i32 noundef 0) #7 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = tail call ptr @g_byte_array_set_size(ptr noundef %i.i, i32 noundef 0) #7 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  store i32 0, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.l, i8 noundef 0, i64 noundef 128, i1 noundef false) #7
  store i32 128, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  store i32 2, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  %i.p = load i8, ptr %i.o, align 16, !range !7, !noundef !8
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 10
  %i.s = or disjoint i32 %i.r, 153617
  store i32 %i.s, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 252 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, -65536
  %i.w = or disjoint i32 %i.v, 4116
  store i32 %i.w, ptr %i.t, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i32 3968, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  store i32 -19660672, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  store i32 3968, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store i32 -19660672, ptr %i.aa, align 16
  %i.ab = load ptr, ptr %i.c, align 8
  %i.ac = tail call i64 @tpm_backend_get_buffer_size(ptr noundef %i.ab) #7 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = tail call i32 @tpm_backend_startup_tpm(ptr noundef %i.ae, i64 noundef %i.ac) #7
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare void @qemu_register_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_resolve_path_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @tpm_crb_mmio_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 60, ptr noundef nonnull @__func__.CRB) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = and i64 %1, -4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = trunc i64 %1 to i32
  %i.f = load i32, ptr %i.d, align 4
  %i.g = shl i32 %i.e, 3
  %i.h = and i32 %i.g, 24
  %i.i = lshr i32 %i.f, %i.h                      ; 6 uses
  %cond = icmp eq i64 %1, 0
  br i1 %cond, label %.split, label %.split12

.split12:                                         ; preds = %bb.a
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_tpm_crb_mmio_read.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %.split12
  %i.k = load i16, ptr @_TRACE_TPM_CRB_MMIO_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.k, 0
  br i1 %.not3.i, label %trace_tpm_crb_mmio_read.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not4.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i, label %trace_tpm_crb_mmio_read.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, i64 noundef %1, i32 noundef %2, i32 noundef %i.i) #7
  br label %trace_tpm_crb_mmio_read.exit

.split:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call zeroext i1 @tpm_backend_get_tpm_established_flag(ptr noundef %i.o) #7
  %i.q = xor i1 %i.p, true
  %i.r = zext i1 %i.q to i32
  %i.s = or i32 %i.i, %i.r                        ; 5 uses
  %i.t = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i14 = icmp eq i32 %i.t, 0
  br i1 %.not.i14, label %trace_tpm_crb_mmio_read.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %.split
  %i.u = load i16, ptr @_TRACE_TPM_CRB_MMIO_READ_DSTATE, align 2
  %.not3.i15 = icmp eq i16 %i.u, 0
  br i1 %.not3.i15, label %trace_tpm_crb_mmio_read.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr @qemu_loglevel, align 4
  %i.w = and i32 %i.v, 32768
  %.not4.i16 = icmp eq i32 %i.w, 0
  br i1 %.not4.i16, label %trace_tpm_crb_mmio_read.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, i64 noundef 0, i32 noundef %2, i32 noundef %i.s) #7
  br label %trace_tpm_crb_mmio_read.exit

trace_tpm_crb_mmio_read.exit:                     ; preds = %bb.g, %bb.f, %bb.e, %.split, %bb.d, %bb.c, %bb.b, %.split12
  %.0 = phi i32 [ %i.i, %bb.d ], [ %i.i, %.split12 ], [ %i.i, %bb.b ], [ %i.i, %bb.c ], [ %i.s, %.split ], [ %i.s, %bb.e ], [ %i.s, %bb.f ], [ %i.s, %bb.g ]
  %i.x = zext i32 %.0 to i64
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @tpm_crb_mmio_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 60, ptr noundef nonnull @__func__.CRB) #7 ; 35 uses
  %i.b = trunc i64 %2 to i32
  %i.c = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %trace_tpm_crb_mmio_write.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr @_TRACE_TPM_CRB_MMIO_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.d, 0
  br i1 %.not3.i, label %trace_tpm_crb_mmio_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 32768
  %.not4.i = icmp eq i32 %i.f, 0
  br i1 %.not4.i, label %trace_tpm_crb_mmio_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.18, i64 noundef %1, i32 noundef %3, i32 noundef %i.b) #7
  br label %trace_tpm_crb_mmio_write.exit

trace_tpm_crb_mmio_write.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = add i64 %1, -8                           ; 2 uses
  %i.h = tail call i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 62)
  switch i64 %i.h, label %bb.af [
    i64 14, label %bb.e
    i64 16, label %bb.h
    i64 17, label %bb.l
    i64 0, label %bb.ac
  ]

bb.e:                                             ; preds = %trace_tpm_crb_mmio_write.exit
  switch i64 %2, label %bb.af [
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 268 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, -3
  store i32 %i.k, ptr %i.i, align 4
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 268 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, 2
  store i32 %i.n, ptr %i.l, align 4
  br label %bb.af

bb.h:                                             ; preds = %trace_tpm_crb_mmio_write.exit
  %i.o = icmp eq i64 %2, 1
  br i1 %i.o, label %bb.i, label %bb.af

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 1
  %.not109 = icmp eq i32 %i.r, 0
  br i1 %.not109, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @tpm_backend_cancel_cmd(ptr noundef %i.t) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr @g_byte_array_set_size(ptr noundef %i.v, i32 noundef 0) #7 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.y = load ptr, ptr %i.x, align 16
  %i.z = tail call ptr @g_byte_array_set_size(ptr noundef %i.y, i32 noundef 0) #7 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  store i32 0, ptr %i.aa, align 16
  br label %bb.af

bb.l:                                             ; preds = %trace_tpm_crb_mmio_write.exit
  %i.ab = getelementptr i8, ptr %i.a, i64 200
  %.val = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ac = and i32 %.val, 2
  %.not.i110 = icmp eq i32 %i.ac, 0
  %i.ad = trunc i32 %.val to i8
  %i.ae = lshr i8 %i.ad, 2
  %i.af = and i8 %i.ae, 7
  %.0.i = select i1 %.not.i110, i8 -1, i8 %i.af
  %i.ag = lshr i64 %1, 12
  %i.ah = trunc i64 %i.ag to i8
  %.not = icmp eq i8 %.0.i, %i.ah
  br i1 %.not, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 276 ; 7 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 1
  %.not103 = icmp eq i32 %i.ak, 0
  br i1 %.not103, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  %i.al = and i64 %2, 1
  %.not104 = icmp eq i64 %i.al, 0
  br i1 %.not104, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = tail call fastcc zeroext i1 @tpm_crb_append_command_request(ptr noundef nonnull %i.a)
  br i1 %i.am, label %bb.p, label %bb.af

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ai, align 4
  %i.ao = or i32 %i.an, 1
  store i32 %i.ao, ptr %i.ai, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 888 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = trunc i64 %i.as to i32
  %i.au = tail call ptr @g_byte_array_set_size(ptr noundef %i.aq, i32 noundef %i.at) #7 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.ax = load ptr, ptr %i.aw, align 16           ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i32, ptr %i.bd, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx, i8 0, i64 3, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 0, ptr %i.av, align 16
  store ptr %i.ay, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i32 %i.ba, ptr %.sroa.431.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr %i.bc, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i32 %i.be, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 4
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bf = load ptr, ptr %4, align 8
  tail call void @tpm_backend_deliver_request(ptr noundef %i.bf, ptr noundef nonnull %i.av) #7
  br label %bb.af

bb.q:                                             ; preds = %bb.n
  %i.bg = and i64 %2, 4
  %.not105 = icmp eq i64 %i.bg, 0
  br i1 %.not105, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  %i.bi = load i8, ptr %i.bh, align 16, !range !7, !noundef !8
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  %.not108 = icmp eq i32 %i.bn, 0
  br i1 %.not108, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.bp = load i32, ptr %i.bo, align 16
  %i.bq = icmp ult i32 %i.bp, %i.bn
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @tpm_crb_fill_command_response(ptr noundef nonnull %i.a)
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.br = tail call fastcc zeroext i1 @tpm_crb_append_command_request(ptr noundef nonnull %i.a)
  br i1 %i.br, label %bb.w, label %bb.af

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bs = load i32, ptr %i.ai, align 4
  %i.bt = and i32 %i.bs, -5
  store i32 %i.bt, ptr %i.ai, align 4
  br label %bb.af

bb.x:                                             ; preds = %bb.q
  %i.bu = and i64 %2, 2
  %.not106 = icmp eq i64 %i.bu, 0
  br i1 %.not106, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  %i.bw = load i8, ptr %i.bv, align 16, !range !7, !noundef !8
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 8
  %.not107 = icmp eq i32 %i.cb, 0
  br i1 %.not107, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  store i32 0, ptr %i.cc, align 16
  tail call fastcc void @tpm_crb_fill_command_response(ptr noundef nonnull %i.a)
  %.pre = load i32, ptr %i.ai, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cd = phi i32 [ %.pre, %bb.aa ], [ %i.aj, %bb.z ]
  %i.ce = and i32 %i.cd, -7
  store i32 %i.ce, ptr %i.ai, align 4
  br label %bb.af

bb.ac:                                            ; preds = %trace_tpm_crb_mmio_write.exit
  switch i64 %2, label %bb.af [
    i64 1, label %bb.ae
    i64 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = and i32 %i.cg, -3
  store i32 %i.ch, ptr %i.cf, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 212 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = and i32 %i.cj, -2
  store i32 %i.ck, ptr %i.ci, align 4
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 212 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = and i32 %i.cn, -4
  %i.cp = or disjoint i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4
  %i.cq = load i32, ptr %i.cl, align 8
  %i.cr = or i32 %i.cq, 2
  store i32 %i.cr, ptr %i.cl, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.p, %bb.x, %bb.ab, %bb.w, %bb.y, %bb.v, %bb.r, %bb.o, %bb.m, %bb.l, %bb.h, %bb.k, %bb.e, %bb.f, %bb.g, %trace_tpm_crb_mmio_write.exit
  ret void
}

declare zeroext i1 @tpm_backend_get_tpm_established_flag(ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @tpm_backend_cancel_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @tpm_crb_append_command_request(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = tail call ptr @memory_region_get_ram_ptr(ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16             ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 2
  %.val47 = load i32, ptr %i.h, align 1
  %i.i = tail call i32 @llvm.bswap.i32(i32 %.val47) ; 3 uses
  %i.j = icmp ult i32 %i.i, 10
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = or i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, -6
  store i32 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr @g_byte_array_set_size(ptr noundef %i.r, i32 noundef 0) #7 ; 0 uses
  %i.t = load ptr, ptr %i.c, align 16
  %i.u = tail call ptr @g_byte_array_set_size(ptr noundef %i.t, i32 noundef 0) #7 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i32 0, ptr %i.v, align 16
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.21, i32 noundef %i.i, i32 noundef 10) #7
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 2
  %.val = load i32, ptr %i.x, align 1
  %i.y = tail call i32 @llvm.bswap.i32(i32 %.val)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.043 = phi i32 [ %i.i, %bb.b ], [ %i.y, %bb.d ]
  %i.z = zext i32 %.043 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.z)
  %i.ad = trunc nuw i64 %i.ac to i32              ; 2 uses
  %i.ae = icmp ult i32 %i.f, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = sub nuw i32 %i.ad, %i.f
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 3968)
  %i.ah = tail call ptr @g_byte_array_append(ptr noundef nonnull %i.d, ptr noundef %i.b, i32 noundef %i.ag) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

declare ptr @g_byte_array_set_size(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @tpm_backend_deliver_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tpm_crb_fill_command_response(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.b = tail call ptr @memory_region_get_ram_ptr(ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 3 uses
  %i.h = load i32, ptr %i.g, align 16             ; 2 uses
  %i.i = sub i32 %i.f, %i.h                       ; 2 uses
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.i, i32 3968) ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = zext i32 %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = zext nneg i32 %i.j to i64                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.b, ptr noundef nonnull align 1 %i.m, i64 noundef range(i64 0, 4294967296) %i.n, i1 noundef false) #7
  %i.o = icmp ult i32 %i.i, 3968
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  %i.q = sub nuw nsw i32 3968, %i.j
  %i.r = zext nneg i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.p, i8 noundef 0, i64 noundef range(i64 1, 3969) %i.r, i1 noundef false) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = load i32, ptr %i.g, align 16
  %i.t = add i32 %i.s, %i.j
  store i32 %i.t, ptr %i.g, align 16
  tail call void @memory_region_set_dirty(ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 3968) #7
  ret void
}

declare ptr @memory_region_get_ram_ptr(ptr noundef) local_unnamed_addr #1

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

declare ptr @g_byte_array_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

declare void @memory_region_set_dirty(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @tpm_ppi_reset(ptr noundef) local_unnamed_addr #1

declare void @tpm_backend_reset(ptr noundef) local_unnamed_addr #1

declare i64 @tpm_backend_get_buffer_size(ptr noundef) local_unnamed_addr #1

declare i32 @tpm_backend_startup_tpm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare void @g_byte_array_unref(ptr noundef) local_unnamed_addr #1

declare void @migrate_del_blocker(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @tpm_crb_pre_save(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @tpm_backend_finish_sync(ptr noundef %i.b) #7
  ret i32 0
}

declare void @tpm_backend_finish_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @tpm_crb_chunk_post_load(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = zext i32 %i.l to i64
  %i.n = icmp ult i64 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 380, ptr noundef nonnull @__func__.tpm_crb_chunk_post_load, ptr noundef nonnull @.str.43) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i1 @tpm_crb_chunk_needed(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1201
  %i.b = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.e = load ptr, ptr %i.d, align 16             ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp ne i32 %i.k, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.d ], [ %i.l, %bb.e ]
  ret i1 %.0
}

declare i32 @tpm_backend_get_tpm_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
