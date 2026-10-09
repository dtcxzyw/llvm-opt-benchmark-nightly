Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-tls-utils?download=true
inline.NumInlined: 355
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ssldecrypt_uat_fld_port_chk_cb:bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.672) #30
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.d = call zeroext i1 @ws_strtou16(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.a)
  br i1 %i.d, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = call noalias dereferenceable_or_null(20) ptr @g_malloc(i64 noundef 20) #28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(20) %i.e, ptr noundef nonnull align 1 dereferenceable(20) @.str.738, i64 noundef 20, i1 noundef false) #29
  store ptr %i.e, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.d
  store ptr null, ptr %5, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.1 = phi i1 [ true, %bb.c ], [ true, %bb.g ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @ssldecrypt_uat_fld_fileopen_chk_cb(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.stat, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %g_strdup_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %char0 = load i8, ptr %1, align 1
  %i.a = icmp eq i8 %char0, 0
  br i1 %i.a, label %g_strdup_inline.exit, label %bb.c

g_strdup_inline.exit:                             ; preds = %bb.a, %bb.b
  %i.b = tail call noalias dereferenceable_or_null(19) ptr @g_malloc(i64 noundef 19) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(19) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str.739, i64 noundef 19, i1 noundef false) #29
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @stat(ptr noundef nonnull %1, ptr noundef nonnull %6) #29
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.740, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %g_strdup_inline.exit
  %.sink = phi ptr [ %i.b, %g_strdup_inline.exit ], [ %i.d, %bb.d ], [ null, %bb.c ]
  %.0 = phi i1 [ false, %g_strdup_inline.exit ], [ false, %bb.d ], [ true, %bb.c ]
  store ptr %.sink, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret i1 %.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @ssldecrypt_uat_fld_password_chk_cb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %char0 = load i8, ptr %1, align 1
  %.not19 = icmp eq i8 %char0, 0
  br i1 %.not19, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noalias ptr @fopen(ptr noundef %i.c, ptr noundef nonnull @.str.662) ; 4 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr null, ptr %i.a, align 8
  %i.e = call ptr @rsa_load_pkcs12(ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %i.a) ; 2 uses
  %.not21.not = icmp eq ptr %i.e, null
  br i1 %.not21.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.f = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.741, ptr noundef %i.g)
  store ptr %i.h, ptr %5, align 8
  %i.i = load ptr, ptr %i.a, align 8
  call void @g_free(ptr noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8
  call void @g_free(ptr noundef %i.j)
  call void @gnutls_x509_privkey_deinit(ptr noundef nonnull %i.e)
  %i.k = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.742)
  store ptr %i.l, ptr %5, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.a
  store ptr null, ptr %5, align 8
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f
  %.1 = phi i1 [ true, %bb.g ], [ false, %.thread ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @ssl_association_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.ssl_association_info_callback_data, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = tail call noalias dereferenceable_or_null(8192) ptr @g_malloc0(i64 noundef 8192) #28
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.b, align 8
  call void @dissector_table_foreach_handle(ptr noundef %0, ptr noundef nonnull @ssl_association_info_, ptr noundef nonnull %2)
  %i.c = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret ptr %i.c
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_table_foreach_handle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @ssl_association_info_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef %i.a) #30
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.c = ashr exact i64 %sext, 32
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %sext8 = sub i64 35184372088832, %sext
  %i.e = ashr exact i64 %sext8, 32
  %i.f = tail call ptr @dissector_handle_get_dissector_name(ptr noundef %1)
  %i.g = tail call ptr @dissector_handle_get_description(ptr noundef %1)
  %i.h = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.d, i64 noundef %i.e, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.1335, ptr noundef %i.f, ptr noundef %i.g) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @ssl_add_vector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %.not = icmp ugt i32 %8, %9
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %8 to i64
  %i.c = zext i32 %9 to i64
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.743, ptr noundef nonnull @.str.531, i32 noundef 6709, i64 noundef %i.b, i64 noundef %i.c) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i32 %4, %5
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 1356
  %i.f = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %3, ptr noundef %i.e, ptr noundef nonnull @.str.744, i32 noundef %4, i32 noundef %5) ; 0 uses
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ugt i32 %9, 16777215
  br i1 %i.g, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp samesign ugt i32 %9, 65535
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = icmp samesign ugt i32 %9, 255
  %. = select i1 %i.i, i32 2, i32 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ 3, %bb.f ], [ 4, %bb.e ], [ %., %bb.g ] ; 4 uses
  %i.j = sub nuw i32 %5, %4                       ; 3 uses
  %i.k = icmp ult i32 %i.j, %.0
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr i8, ptr %0, i64 1356
  %i.m = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %2, ptr noundef %i.l, ptr noundef %1, i32 noundef %4, i32 noundef %i.j, ptr noundef nonnull @.str.745, i32 noundef %.0) ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.n = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %7, ptr noundef %1, i32 noundef %4, i32 noundef %.0, i32 noundef 0, ptr noundef nonnull %i.a) ; 3 uses
  %i.o = load i32, ptr %i.a, align 4              ; 4 uses
  %i.p = icmp ult i32 %i.o, %8
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %0, i64 1348
  %i.r = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.n, ptr noundef %i.q, ptr noundef nonnull @.str.746, i32 noundef %i.o, i32 noundef %8) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.s = icmp ugt i32 %i.o, %9
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr i8, ptr %0, i64 1348
  %i.u = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.n, ptr noundef %i.t, ptr noundef nonnull @.str.747, i32 noundef %i.o, i32 noundef %9) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.v = sub nuw i32 %i.j, %.0                    ; 3 uses
  %i.w = load i32, ptr %i.a, align 4              ; 3 uses
  %i.x = icmp ult i32 %i.v, %i.w
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr i8, ptr %0, i64 1356
  %i.z = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.n, ptr noundef %i.y, ptr noundef nonnull @.str.748, i32 noundef %i.w, i32 noundef %i.v) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.i, %bb.d
  %.sink = phi i32 [ 0, %bb.d ], [ %i.v, %bb.o ], [ 0, %bb.i ], [ %i.w, %bb.n ]
  %.055 = phi i1 [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.i ], [ true, %bb.n ]
  store i32 %.sink, ptr %6, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i1 %.055
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @ssl_end_vector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %4, %5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i32 %5, %4                       ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 1364
  %i.d = icmp eq i32 %i.b, 1
  %i.e = select i1 %i.d, ptr @.str.750, ptr @.str.751
  %i.f = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %2, ptr noundef %i.c, ptr noundef %1, i32 noundef %4, i32 noundef %i.b, ptr noundef nonnull @.str.749, i32 noundef %i.b, ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i32 %4, %5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = sub nuw i32 %4, %5                       ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 1356
  %i.j = icmp eq i32 %i.h, 1
  %i.k = select i1 %i.j, ptr @.str.543, ptr @.str.753
  %i.l = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %2, ptr noundef %i.i, ptr noundef %1, i32 noundef %5, i32 noundef %i.h, ptr noundef nonnull @.str.752, i32 noundef %i.h, ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @ssl_dissect_change_cipher_spec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 8          ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i32
  %i.d = tail call ptr @val_to_str_const(i32 noundef %i.c, ptr noundef nonnull @ssl_version_short_names, ptr noundef nonnull @.str.755)
  %i.e = tail call ptr @val_to_str_const(i32 noundef 20, ptr noundef nonnull @ssl_31_content_type, ptr noundef nonnull @.str.756)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %3, ptr noundef nonnull @.str.754, ptr noundef %i.d, ptr noundef %i.e)
  %i.f = load i32, ptr %0, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.f, ptr noundef %1, i32 noundef %4, i32 noundef 1, i32 noundef 0)
  %i.h = load i16, ptr %i.a, align 8
  %i.i = icmp eq i16 %i.h, 772
  br i1 %i.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.v = select i1 %6, i64 52, i64 48
  %i.j = getelementptr i8, ptr %5, i64 %.v        ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %2, i64 20
  %i.n = load i32, ptr %i.m, align 4
  store i32 %i.n, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = icmp ne ptr %7, null
  %or.cond = and i1 %6, %i.o
  br i1 %or.cond, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %5, i64 188
  %i.q = load i8, ptr %i.p, align 4, !range !9, !noundef !10
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %7, i64 392
  %i.t = load i32, ptr %i.s, align 8
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %7, i64 376
  %i.v = load i32, ptr %i.u, align 8
  %.not26 = icmp eq i32 %i.v, 0
  br i1 %.not26, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.031 = phi ptr [ @.str.677, %bb.g ], [ @.str.678, %bb.f ]
  tail call void (ptr, ...) @ssl_debug_printf(ptr noundef nonnull @.str.757, ptr noundef nonnull @__func__.ssl_dissect_change_cipher_spec, ptr noundef nonnull %.031)
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @ssl_debug_printf(ptr noundef nonnull @.str.758, ptr noundef nonnull @__func__.ssl_dissect_change_cipher_spec)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  tail call void (ptr, ...) @ssl_debug_printf(ptr noundef nonnull @.str.759, ptr noundef nonnull @__func__.ssl_dissect_change_cipher_spec)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h, %bb.i, %bb.d
  br i1 %6, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr i8, ptr %5, i64 188
  %i.x = load i8, ptr %i.w, align 4, !range !9, !noundef !10
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %0, i64 1396
  %i.aa = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.g, ptr noundef %i.z) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef i32 @tls_dissect_hnd_certificate_status(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = getelementptr i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4
  %i.e = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.d, ptr noundef %1, i32 noundef %4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.f = add i32 %4, 1                            ; 3 uses
  %i.g = load i32, ptr %i.a, align 4
  switch i32 %i.g, label %.loopexit [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = call fastcc i32 @tls_dissect_ocsp_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.f, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i32, ptr %i.i, align 4
  %i.k = call zeroext i1 @ssl_add_vector(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.f, i32 noundef %5, ptr noundef nonnull %i.b, i32 noundef %i.j, i32 noundef 1, i32 noundef 16777215)
  br i1 %i.k, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %4, 4                            ; 4 uses
  %i.m = load i32, ptr %i.b, align 4
  %i.n = add i32 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.03032 = phi i32 [ %i.p, %.lr.ph ], [ %i.l, %bb.d ]
  %i.p = call fastcc i32 @tls_dissect_ocsp_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.03032, i32 noundef %i.n) ; 3 uses
  %i.q = icmp ult i32 %i.p, %i.n
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !126

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %5, %bb.c ], [ %i.f, %bb.a ], [ %i.h, %bb.b ], [ %i.l, %bb.d ], [ %i.p, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @tls_dissect_ocsp_response(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
end_hunk_0
