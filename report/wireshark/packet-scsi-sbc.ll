Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-scsi-sbc?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_sbc_verify16:bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = add i32 %3, 1                            ; 2 uses
  %i.d = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.c)
  %i.e = add i32 %3, 9                            ; 2 uses
  %i.f = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.e)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.267, i64 noundef %i.d, i32 noundef %i.f)
  %i.g = load i32, ptr @hf_scsi_sbc_verify_flags, align 4
  %i.h = load i32, ptr @ett_scsi_verify, align 4
  %i.i = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.g, i32 noundef %i.h, ptr noundef nonnull @dissect_sbc_verify16.verify16_fields, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_scsi_sbc_verify_lba64, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.c, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_scsi_sbc_verify_vlen32, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.e, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_scsi_sbc_group, align 4
  %i.o = add i32 %3, 13
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.o, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.q = add i32 %3, 14
  %i.r = load i32, ptr @hf_scsi_control, align 4
  %i.s = load i32, ptr @ett_scsi_control, align 4
  %i.t = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.s, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_sbc_prefetch16(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = add i32 %3, 1
  %i.d = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.c)
  %i.e = add i32 %3, 9
  %i.f = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.e)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.266, i64 noundef %i.d, i32 noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.g, %4
  %or.cond5 = and i1 %or.cond3, %5
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr @hf_scsi_sbc_prefetch_flags, align 4
  %i.i = load i32, ptr @ett_scsi_prefetch, align 4
  %i.j = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.h, i32 noundef %i.i, ptr noundef nonnull @dissect_sbc_prefetch16.prefetch_fields, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_scsi_sbc_rdwr16_lba, align 4
  %i.l = add i32 %3, 1
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.l, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_scsi_sbc_rdwr12_xferlen, align 4
  %i.o = add i32 %3, 9
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_scsi_sbc_group, align 4
  %i.r = add i32 %3, 13
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.r, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = add i32 %3, 14
  %i.u = load i32, ptr @hf_scsi_control, align 4
  %i.v = load i32, ptr @ett_scsi_control, align 4
  %i.w = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.v, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_sbc_synchronizecache16(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = add i32 %3, 1
  %i.d = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.c)
  %i.e = add i32 %3, 9
  %i.f = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.e)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.266, i64 noundef %i.d, i32 noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.g, %4
  %or.cond5 = and i1 %or.cond3, %5
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr @hf_scsi_sbc_synccache_flags, align 4
  %i.i = load i32, ptr @ett_scsi_synccache, align 4
  %i.j = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.h, i32 noundef %i.i, ptr noundef nonnull @dissect_sbc_synchronizecache16.sync_fields, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_scsi_sbc_rdwr16_lba, align 4
  %i.l = add i32 %3, 1
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.l, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_scsi_sbc_rdwr12_xferlen, align 4
  %i.o = add i32 %3, 9
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.o, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_scsi_sbc_group, align 4
  %i.r = add i32 %3, 13
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.r, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = add i32 %3, 14
  %i.u = load i32, ptr @hf_scsi_control, align 4
  %i.v = load i32, ptr @ett_scsi_control, align 4
  %i.w = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.v, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_sbc_writesame16(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %4
  %or.cond3 = and i1 %or.cond, %5
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_scsi_sbc_writesame_flags, align 4
  %i.c = load i32, ptr @ett_scsi_writesame, align 4
  %i.d = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.b, i32 noundef %i.c, ptr noundef nonnull @dissect_sbc_writesame16.writesame16_fields, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_scsi_sbc_rdwr16_lba, align 4
  %i.f = add i32 %3, 1
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr @hf_scsi_sbc_rdwr12_xferlen, align 4
  %i.i = add i32 %3, 9
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_scsi_sbc_group, align 4
  %i.l = add i32 %3, 13
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.n = add i32 %3, 14
  %i.o = load i32, ptr @hf_scsi_control, align 4
  %i.p = load i32, ptr @ett_scsi_control, align 4
  %i.q = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_sbc_writeatomic16(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = add i32 %3, 1
  %i.d = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.c)
  %i.e = add i32 %3, 11
  %i.f = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.e)
  %i.g = zext i16 %i.f to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.266, i64 noundef %i.d, i32 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.h, %4
  %or.cond5 = and i1 %or.cond3, %5
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr @hf_scsi_sbc_read_flags, align 4
  %i.j = load i32, ptr @ett_scsi_rdwr, align 4
  %i.k = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.i, i32 noundef %i.j, ptr noundef nonnull @dissect_sbc_writeatomic16.rdwr16_fields, i32 noundef 0) ; 0 uses
  %i.l = load i32, ptr @hf_scsi_sbc_rdwr16_lba, align 4
  %i.m = add i32 %3, 1
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_scsi_sbc_rdwr12_xferlen, align 4
  %i.p = add i32 %3, 11
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.p, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_scsi_sbc_group, align 4
  %i.s = add i32 %3, 13
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.s, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = add i32 %3, 14
  %i.v = load i32, ptr @hf_scsi_control, align 4
  %i.w = load i32, ptr @ett_scsi_control, align 4
  %i.x = tail call ptr @proto_tree_add_bitmask(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dissect_sbc_serviceactionin16(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 %6, ptr nofree noundef readonly captures(address_is_null) %7) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 39 uses
  %i.g = alloca ptr, align 8                      ; 12 uses
  %i.h = alloca i32, align 4                      ; 19 uses
  %8 = alloca %struct.except_stacknode, align 8   ; 3 uses
  %9 = alloca %struct.except_catch, align 8       ; 6 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store ptr null, ptr %i.e, align 8
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.l = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.m = and i8 %i.l, 31                          ; 3 uses
  %.not205 = icmp eq ptr %7, null                 ; 5 uses
  br i1 %.not205, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %7, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not206 = icmp eq ptr %i.o, null
  br i1 %.not206, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i8 %i.m to i16
  %i.q = getelementptr i8, ptr %i.o, i64 12
  store i16 %i.p, ptr %i.q, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  switch i8 %i.m, label %bb.v [
    i8 16, label %bb.f
    i8 17, label %bb.j
    i8 18, label %bb.n
    i8 19, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void @col_append_str(ptr noundef %i.s, i32 noundef 25, ptr noundef nonnull @.str.268)
  %i.t = load i32, ptr @hf_scsi_sbc_service_action, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.t, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.v = add i32 %3, 9
  %i.w = load i32, ptr @hf_scsi_sbc_alloclen32, align 4
  %i.x = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.v, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  br i1 %.not205, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %7, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not210 = icmp eq ptr %i.z, null
  br i1 %.not210, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.b, align 4
  %i.ab = getelementptr i8, ptr %i.z, i64 24
  store i32 %i.aa, ptr %i.ab, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ac = add i32 %3, 14
  %i.ad = load i32, ptr @hf_scsi_control, align 4
  %i.ae = load i32, ptr @ett_scsi_control, align 4
  %i.af = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.ba

bb.j:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void @col_append_str(ptr noundef %i.ah, i32 noundef 25, ptr noundef nonnull @.str.269)
  %i.ai = load i32, ptr @hf_scsi_sbc_service_action, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ak = add i32 %3, 1
  %i.al = load i32, ptr @hf_scsi_sbc_lba64_address, align 4
  %i.am = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.an = add i32 %3, 11
  %i.ao = load i32, ptr @hf_scsi_sbc_alloclen16, align 4
  %i.ap = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.an, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  br i1 %.not205, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr i8, ptr %7, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not209 = icmp eq ptr %i.ar, null
  br i1 %.not209, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %i.b, align 4
  %i.at = getelementptr i8, ptr %i.ar, i64 24
  store i32 %i.as, ptr %i.at, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.au = add i32 %3, 14
  %i.av = load i32, ptr @hf_scsi_control, align 4
  %i.aw = load i32, ptr @ett_scsi_control, align 4
  %i.ax = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %i.aw, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.ba

bb.n:                                             ; preds = %bb.e
  %i.ay = getelementptr i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void @col_append_str(ptr noundef %i.az, i32 noundef 25, ptr noundef nonnull @.str.270)
  %i.ba = load i32, ptr @hf_scsi_sbc_service_action, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ba, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bc = add i32 %3, 1
  %i.bd = load i32, ptr @hf_scsi_sbc_get_lba_status_lba, align 4
  %i.be = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.bc, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bf = add i32 %3, 9
  %i.bg = load i32, ptr @hf_scsi_sbc_alloclen32, align 4
  %i.bh = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.bg, ptr noundef %0, i32 noundef %i.bf, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  br i1 %.not205, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr i8, ptr %7, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not208 = icmp eq ptr %i.bj, null
  br i1 %.not208, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = load i32, ptr %i.b, align 4
  %i.bl = getelementptr i8, ptr %i.bj, i64 24
  store i32 %i.bk, ptr %i.bl, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bm = add i32 %3, 14
  %i.bn = load i32, ptr @hf_scsi_control, align 4
  %i.bo = load i32, ptr @ett_scsi_control, align 4
  %i.bp = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.bm, i32 noundef %i.bn, i32 noundef %i.bo, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.ba

bb.r:                                             ; preds = %bb.e
  %i.bq = getelementptr i8, ptr %1, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void @col_append_str(ptr noundef %i.br, i32 noundef 25, ptr noundef nonnull @.str.271)
  %i.bs = load i32, ptr @hf_scsi_sbc_service_action, align 4
  %i.bt = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bs, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bu = add i32 %3, 1
  %i.bv = load i32, ptr @hf_scsi_sbc_lba64_address, align 4
  %i.bw = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.bu, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.bx = add i32 %3, 9
  %i.by = load i32, ptr @hf_scsi_sbc_alloclen32, align 4
  %i.bz = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.by, ptr noundef %0, i32 noundef %i.bx, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  br i1 %.not205, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr i8, ptr %7, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not207 = icmp eq ptr %i.cb, null
  br i1 %.not207, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = load i32, ptr %i.b, align 4
  %i.cd = getelementptr i8, ptr %i.cb, i64 24
  store i32 %i.cc, ptr %i.cd, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ce = add i32 %3, 14
  %i.cf = load i32, ptr @hf_scsi_control, align 4
  %i.cg = load i32, ptr @ett_scsi_control, align 4
  %i.ch = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.ce, i32 noundef %i.cf, i32 noundef %i.cg, ptr noundef nonnull @cdb_control_fields, i32 noundef 0) ; 0 uses
  br label %bb.ba

bb.v:                                             ; preds = %bb.e
  %i.ci = zext nneg i8 %i.m to i32                ; 2 uses
  %i.cj = getelementptr i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void @col_append_str(ptr noundef %i.ck, i32 noundef 25, ptr noundef nonnull @.str.272)
  %i.cl = load i32, ptr @hf_scsi_sbc_service_action, align 4
  %i.cm = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.cl, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.ci, ptr noundef nonnull @.str.273, i32 noundef %i.ci) ; 0 uses
  br label %bb.ba

bb.w:                                             ; preds = %bb.a
  %i.cn = icmp eq ptr %7, null
  %or.cond3.not = or i1 %5, %i.cn
  br i1 %or.cond3.not, label %bb.ba, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = getelementptr i8, ptr %7, i64 8         ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %bb.ba, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cq = getelementptr i8, ptr %i.cp, i64 24
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %3, i32 noundef %i.cr) ; 16 uses
  store volatile i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store volatile i32 0, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @except_setup_try(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dissect_sbc_serviceactionin16.catch_spec, i64 noundef 1)
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.cu = call i32 @_setjmp(ptr noundef nonnull %i.ct) #8
  %.not197 = icmp eq i32 %i.cu, 0
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sink = select i1 %.not197, ptr null, ptr %i.cv
  store volatile ptr %.sink, ptr %i.g, align 8
  %.0..0..0..0.8 = load volatile i32, ptr %i.h, align 4
  %i.cw = and i32 %.0..0..0..0.8, 1
  %.not198 = icmp eq i32 %i.cw, 0
  br i1 %.not198, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.0..0..0..0.9 = load volatile i32, ptr %i.h, align 4
  %i.cx = or i32 %.0..0..0..0.9, 2
  store volatile i32 %i.cx, ptr %i.h, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0..0..0..0.10 = load volatile i32, ptr %i.h, align 4
  %i.cy = and i32 %.0..0..0..0.10, -2
  store volatile i32 %i.cy, ptr %i.h, align 4
  %.0..0..0..0.11 = load volatile i32, ptr %i.h, align 4
  %i.cz = icmp eq i32 %.0..0..0..0.11, 0
  br i1 %i.cz, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %.0..0..0..0.19 = load volatile ptr, ptr %i.g, align 8
  %i.da = icmp eq ptr %.0..0..0..0.19, null
  br i1 %i.da, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.db = load ptr, ptr %i.co, align 8
  %i.dc = getelementptr i8, ptr %i.db, i64 12
  %i.dd = load i16, ptr %i.dc, align 4
  switch i16 %i.dd, label %.loopexit [
    i16 16, label %bb.ad
    i16 18, label %bb.aj
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.de = load i32, ptr @hf_scsi_sbc_lba64_address, align 4
  %.0..0..0..0.30 = load volatile i32, ptr %i.f, align 4
  %i.df = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %2, i32 noundef %i.de, ptr noundef %i.cs, i32 noundef %.0..0..0..0.30, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %i.c)
  store ptr %i.df, ptr %i.e, align 8
  %.0..0..0..0.31 = load volatile i32, ptr %i.f, align 4
  %i.dg = add i32 %.0..0..0..0.31, 8
  store volatile i32 %i.dg, ptr %i.f, align 4
  %i.dh = load i32, ptr @hf_scsi_sbc_blocksize, align 4
  %.0..0..0..0.32 = load volatile i32, ptr %i.f, align 4
  %i.di = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.dh, ptr noundef %i.cs, i32 noundef %.0..0..0..0.32, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.dj = load i64, ptr %i.c, align 8             ; 2 uses
  %i.dk = load i32, ptr %i.a, align 4             ; 2 uses
  %i.dl = zext i64 %i.dj to i65
  %i.dm = zext i32 %i.dk to i65
  %i.dn = call { i65, i1 } @llvm.smul.with.overflow.i65(i65 %i.dl, i65 %i.dm) ; 2 uses
  %i.do = extractvalue { i65, i1 } %i.dn, 1
  %i.dp = extractvalue { i65, i1 } %i.dn, 0       ; 2 uses
  %i.dq = trunc i65 %i.dp to i64                  ; 2 uses
  %i.dr = sext i64 %i.dq to i65
  %i.ds = icmp ne i65 %i.dp, %i.dr
  %i.dt = or i1 %i.do, %i.ds
  br i1 %i.dt, label %bb.ae, label %bb.af, !prof !9

bb.ae:                                            ; preds = %bb.ad
  %i.du = uitofp i64 %i.dj to double
  %i.dv = uitofp i32 %i.dk to double
  %i.dw = fmul nnan double %i.du, %i.dv
  %i.dx = getelementptr i8, ptr %1, i64 416
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call ptr @format_units(ptr noundef %i.dy, double noundef %i.dw, i32 noundef 1, i16 noundef zeroext 2, i32 noundef 0)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ea = getelementptr i8, ptr %1, i64 416
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call ptr @format_size_wmem(ptr noundef %i.eb, i64 noundef %i.dq, i32 noundef 1, i16 noundef zeroext 2)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0189 = phi ptr [ %i.dz, %bb.ae ], [ %i.ec, %bb.af ]
  %10 = load ptr, ptr %i.e, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %10, ptr noundef nonnull @.str.274, ptr noundef %.0189)
  %.0..0..0..0.33 = load volatile i32, ptr %i.f, align 4
  %i.ed = add i32 %.0..0..0..0.33, 4
  store volatile i32 %i.ed, ptr %i.f, align 4
  %i.ee = load i32, ptr @hf_scsi_sbc_prot_en, align 4
  %.0..0..0..0.34 = load volatile i32, ptr %i.f, align 4
  %i.ef = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %2, i32 noundef %i.ee, ptr noundef %i.cs, i32 noundef %.0..0..0..0.34, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.eg = load i8, ptr %i.d, align 1, !range !10, !noundef !11
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ei = load i32, ptr @hf_scsi_sbc_ptype, align 4
  %.0..0..0..0.35 = load volatile i32, ptr %i.f, align 4
  %i.ej = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ei, ptr noundef %i.cs, i32 noundef %.0..0..0..0.35, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0..0..0..0.36 = load volatile i32, ptr %i.f, align 4
  %i.ek = add i32 %.0..0..0..0.36, 1
  store volatile i32 %i.ek, ptr %i.f, align 4
  %i.el = load i32, ptr @hf_scsi_sbc_p_i_exponent, align 4
  %.0..0..0..0.37 = load volatile i32, ptr %i.f, align 4
  %i.em = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.el, ptr noundef %i.cs, i32 noundef %.0..0..0..0.37, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.en = load i32, ptr @hf_scsi_sbc_lbppbe, align 4
  %.0..0..0..0.38 = load volatile i32, ptr %i.f, align 4
  %i.eo = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.en, ptr noundef %i.cs, i32 noundef %.0..0..0..0.38, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.0..0..0..0.39 = load volatile i32, ptr %i.f, align 4
  %i.ep = add i32 %.0..0..0..0.39, 1
  store volatile i32 %i.ep, ptr %i.f, align 4
  %i.eq = load i32, ptr @hf_scsi_sbc_lbpme, align 4
  %.0..0..0..0.40 = load volatile i32, ptr %i.f, align 4
  %i.er = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.eq, ptr noundef %i.cs, i32 noundef %.0..0..0..0.40, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr @hf_scsi_sbc_lbprz, align 4
  %.0..0..0..0.41 = load volatile i32, ptr %i.f, align 4
  %i.et = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.es, ptr noundef %i.cs, i32 noundef %.0..0..0..0.41, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eu = load i32, ptr @hf_scsi_sbc_lalba, align 4
  %.0..0..0..0.42 = load volatile i32, ptr %i.f, align 4
  %i.ev = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.eu, ptr noundef %i.cs, i32 noundef %.0..0..0..0.42, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ac
  %i.ew = load i32, ptr @hf_scsi_sbc_get_lba_status_data_length, align 4
  %.0..0..0..0.43 = load volatile i32, ptr %i.f, align 4
  %i.ex = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ew, ptr noundef %i.cs, i32 noundef %.0..0..0..0.43, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.0..0..0..0.44 = load volatile i32, ptr %i.f, align 4
  %i.ey = add i32 %.0..0..0..0.44, 4
  store volatile i32 %i.ey, ptr %i.f, align 4
  %.0..0..0..0.45 = load volatile i32, ptr %i.f, align 4
  %i.ez = add i32 %.0..0..0..0.45, 4
  store volatile i32 %i.ez, ptr %i.f, align 4
  %.0..0..0..0.46211 = load volatile i32, ptr %i.f, align 4
  %i.fa = call i32 @tvb_captured_length_remaining(ptr noundef %i.cs, i32 noundef %.0..0..0..0.46211)
  %i.fb = icmp ugt i32 %i.fa, 15
  br i1 %i.fb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aj
  %i.fc = getelementptr i8, ptr %1, i64 416
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %.0..0..0..0.47 = load volatile i32, ptr %i.f, align 4
  %i.fd = load i32, ptr @ett_scsi_lba_status_descriptor, align 4
  %i.fe = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %i.cs, i32 noundef %.0..0..0..0.47, i32 noundef 16, i32 noundef %i.fd, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.275) ; 3 uses
  %i.ff = load i32, ptr @hf_scsi_sbc_get_lba_status_lba, align 4
  %.0..0..0..0.48 = load volatile i32, ptr %i.f, align 4
  %i.fg = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %i.fe, i32 noundef %i.ff, ptr noundef %i.cs, i32 noundef %.0..0..0..0.48, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %i.i) ; 0 uses
  %.0..0..0..0.49 = load volatile i32, ptr %i.f, align 4
  %i.fh = add i32 %.0..0..0..0.49, 8
  store volatile i32 %i.fh, ptr %i.f, align 4
  %i.fi = load i32, ptr @hf_scsi_sbc_get_lba_status_num_blocks, align 4
  %.0..0..0..0.50 = load volatile i32, ptr %i.f, align 4
  %i.fj = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.fe, i32 noundef %i.fi, ptr noundef %i.cs, i32 noundef %.0..0..0..0.50, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.j) ; 0 uses
  %.0..0..0..0.51 = load volatile i32, ptr %i.f, align 4
  %i.fk = add i32 %.0..0..0..0.51, 4
  store volatile i32 %i.fk, ptr %i.f, align 4
  %i.fl = load i32, ptr @hf_scsi_sbc_get_lba_status_provisioning_status, align 4
  %.0..0..0..0.52 = load volatile i32, ptr %i.f, align 4
  %i.fm = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.fe, i32 noundef %i.fl, ptr noundef %i.cs, i32 noundef %.0..0..0..0.52, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.k) ; 0 uses
  %.0..0..0..0.53 = load volatile i32, ptr %i.f, align 4
  %i.fn = add i32 %.0..0..0..0.53, 1
  store volatile i32 %i.fn, ptr %i.f, align 4
  %.0..0..0..0.54 = load volatile i32, ptr %i.f, align 4
  %i.fo = add i32 %.0..0..0..0.54, 3
  store volatile i32 %i.fo, ptr %i.f, align 4
  %i.fp = load ptr, ptr %i.e, align 8
  %i.fq = load i64, ptr %i.i, align 8             ; 2 uses
  %i.fr = load i32, ptr %i.j, align 4
  %i.fs = zext i32 %i.fr to i64
  %i.ft = add i64 %i.fq, -1
  %i.fu = add i64 %i.ft, %i.fs
  %i.fv = load ptr, ptr %i.fc, align 8
  %i.fw = load i8, ptr %i.k, align 1
  %i.fx = zext i8 %i.fw to i32
  %i.fy = call ptr @val_to_str(ptr noundef %i.fv, i32 noundef %i.fx, ptr noundef nonnull @scsi_provisioning_type_val, ptr noundef nonnull @.str.264)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.fp, ptr noundef nonnull @.str.276, i64 noundef %i.fq, i64 noundef %i.fu, ptr noundef %i.fy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  %.0..0..0..0.46 = load volatile i32, ptr %i.f, align 4
  %i.fz = call i32 @tvb_captured_length_remaining(ptr noundef %i.cs, i32 noundef %.0..0..0..0.46)
  %i.ga = icmp ugt i32 %i.fz, 15
  br i1 %i.ga, label %bb.ak, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ac, %bb.ab, %bb.aa
  %.0..0..0..0.12 = load volatile i32, ptr %i.h, align 4
  %i.gb = icmp eq i32 %.0..0..0..0.12, 0
  br i1 %i.gb, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.loopexit
  %.0..0..0..0.20 = load volatile ptr, ptr %i.g, align 8
  %.not200 = icmp eq ptr %.0..0..0..0.20, null
  br i1 %.not200, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.0..0..0..0.21 = load volatile ptr, ptr %i.g, align 8
  %i.gc = getelementptr i8, ptr %.0..0..0..0.21, i64 8
  %i.gd = load volatile i64, ptr %i.gc, align 8
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.0..0..0..0.13 = load volatile i32, ptr %i.h, align 4
  %i.gf = or i32 %.0..0..0..0.13, 1
  store volatile i32 %i.gf, ptr %i.h, align 4
  call void @__longjmp_chk(ptr noundef nonnull %i.ct, i32 noundef 1) #9
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.al, %.loopexit
  %.0..0..0..0.14 = load volatile i32, ptr %i.h, align 4
  %i.gg = icmp eq i32 %.0..0..0..0.14, 0
  br i1 %i.gg, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.0..0..0..0.22 = load volatile ptr, ptr %i.g, align 8
  %.not201 = icmp eq ptr %.0..0..0..0.22, null
  br i1 %.not201, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.0..0..0..0.23 = load volatile ptr, ptr %i.g, align 8
  %i.gh = getelementptr i8, ptr %.0..0..0..0.23, i64 8
  %i.gi = load volatile i64, ptr %i.gh, align 8
  %i.gj = icmp eq i64 %i.gi, 2
  br i1 %i.gj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.0..0..0..0.15 = load volatile i32, ptr %i.h, align 4
  %i.gk = or i32 %.0..0..0..0.15, 1
  store volatile i32 %i.gk, ptr %i.h, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.0..0..0..0.16 = load volatile i32, ptr %i.h, align 4
  %i.gl = icmp eq i32 %.0..0..0..0.16, 0
  br i1 %i.gl, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %.0..0..0..0.24 = load volatile ptr, ptr %i.g, align 8
  %.not202 = icmp eq ptr %.0..0..0..0.24, null
  br i1 %.not202, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.0..0..0..0.25 = load volatile ptr, ptr %i.g, align 8
  %i.gm = getelementptr i8, ptr %.0..0..0..0.25, i64 8
  %i.gn = load volatile i64, ptr %i.gm, align 8
  %i.go = icmp eq i64 %i.gn, 3
  br i1 %i.go, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.0..0..0..0.17 = load volatile i32, ptr %i.h, align 4
  %i.gp = or i32 %.0..0..0..0.17, 1
  store volatile i32 %i.gp, ptr %i.h, align 4
  call void @except_throw(i64 noundef 1, i64 noundef 7, ptr noundef null) #10
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.0..0..0..0.18 = load volatile i32, ptr %i.h, align 4
  %i.gq = and i32 %.0..0..0..0.18, 1
  %.not203 = icmp eq i32 %i.gq, 0
  br i1 %.not203, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %.0..0..0..0.26 = load volatile ptr, ptr %i.g, align 8
  %.not204 = icmp eq ptr %.0..0..0..0.26, null
  br i1 %.not204, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.0..0..0..0.27 = load volatile ptr, ptr %i.g, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.27) #10
  unreachable

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.gs = load volatile ptr, ptr %i.gr, align 8
  call void @except_free(ptr noundef %i.gs)
  %i.gt = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
end_hunk_0
