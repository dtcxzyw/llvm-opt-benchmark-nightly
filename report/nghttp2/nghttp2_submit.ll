Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_submit?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@nghttp2_submit_priority_update:bb.a
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.n) #7
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i8 1, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !11
  tail call void @nghttp2_frame_priority_update_init(ptr noundef nonnull %i.n, i32 noundef %2, ptr noundef %.0, i64 noundef %4) #7
  %i.s = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.n) #7 ; 2 uses
  %.not43 = icmp eq i32 %i.s, 0
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @nghttp2_frame_priority_update_free(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.i
  %.0.sink = phi ptr [ %i.n, %bb.i ], [ %.0, %bb.g ]
  %.036.ph = phi i32 [ %i.s, %bb.i ], [ -901, %bb.g ]
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.a, ptr noundef %.0.sink) #7
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.e, %bb.c, %bb.b, %bb.a
  %.036 = phi i32 [ -901, %bb.e ], [ -519, %bb.a ], [ 0, %bb.b ], [ -501, %bb.c ], [ 0, %bb.h ], [ %.036.ph, %.sink.split ]
  ret i32 %.036
}

declare void @nghttp2_frame_priority_update_init(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @nghttp2_frame_priority_update_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @nghttp2_submit_request(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.nghttp2_data_provider_wrap, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.a = call ptr @nghttp2_data_provider_wrap_v1(ptr noundef nonnull %6, ptr noundef %4) #7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2739
  %i.c = load i8, ptr %i.b, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %submit_request_shared.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %i.a, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @nghttp2_data_provider_wrap_contains_read_callback(ptr noundef nonnull %i.a) #7
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %set_request_flags.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %set_request_flags.exit.i

set_request_flags.exit.i:                         ; preds = %bb.d, %bb.c
  %.0.i.i = phi i8 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.f = call fastcc i32 @submit_headers_shared_nva(ptr noundef nonnull %0, i8 noundef zeroext %.0.i.i, i32 noundef -1, ptr noundef %2, i64 noundef %3, ptr noundef %i.a, ptr noundef %5)
  br label %submit_request_shared.exit

submit_request_shared.exit:                       ; preds = %bb.a, %set_request_flags.exit.i
  %.0.i = phi i32 [ %i.f, %set_request_flags.exit.i ], [ -505, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 %.0.i
}

declare ptr @nghttp2_data_provider_wrap_v1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @nghttp2_submit_request2(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.nghttp2_data_provider_wrap, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.a = call ptr @nghttp2_data_provider_wrap_v2(ptr noundef nonnull %6, ptr noundef %4) #7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2739
  %i.c = load i8, ptr %i.b, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %submit_request_shared.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %i.a, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @nghttp2_data_provider_wrap_contains_read_callback(ptr noundef nonnull %i.a) #7
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %set_request_flags.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %set_request_flags.exit.i

set_request_flags.exit.i:                         ; preds = %bb.d, %bb.c
  %.0.i.i = phi i8 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.f = call fastcc i32 @submit_headers_shared_nva(ptr noundef nonnull %0, i8 noundef zeroext %.0.i.i, i32 noundef -1, ptr noundef %2, i64 noundef %3, ptr noundef %i.a, ptr noundef %5)
  br label %submit_request_shared.exit

submit_request_shared.exit:                       ; preds = %bb.a, %set_request_flags.exit.i
  %.0.i = phi i32 [ %i.f, %set_request_flags.exit.i ], [ -505, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 %.0.i
}

declare ptr @nghttp2_data_provider_wrap_v2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @nghttp2_submit_response(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.nghttp2_data_provider_wrap, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.a = call ptr @nghttp2_data_provider_wrap_v1(ptr noundef nonnull %5, ptr noundef %4) #7 ; 3 uses
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %submit_response_shared.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2739
  %i.d = load i8, ptr %i.c, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %submit_response_shared.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %i.a, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @nghttp2_data_provider_wrap_contains_read_callback(ptr noundef nonnull %i.a) #7
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %set_response_flags.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %set_response_flags.exit.i

set_response_flags.exit.i:                        ; preds = %bb.e, %bb.d
  %.0.i.i = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.g = call fastcc i32 @submit_headers_shared_nva(ptr noundef nonnull %0, i8 noundef zeroext %.0.i.i, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %i.a, ptr noundef null)
  br label %submit_response_shared.exit

submit_response_shared.exit:                      ; preds = %bb.a, %bb.b, %set_response_flags.exit.i
  %.0.i = phi i32 [ -501, %bb.a ], [ %i.g, %set_response_flags.exit.i ], [ -505, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_submit_response2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.nghttp2_data_provider_wrap, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.a = call ptr @nghttp2_data_provider_wrap_v2(ptr noundef nonnull %5, ptr noundef %4) #7 ; 3 uses
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %submit_response_shared.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2739
  %i.d = load i8, ptr %i.c, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %submit_response_shared.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %i.a, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @nghttp2_data_provider_wrap_contains_read_callback(ptr noundef nonnull %i.a) #7
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %set_response_flags.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %set_response_flags.exit.i

set_response_flags.exit.i:                        ; preds = %bb.e, %bb.d
  %.0.i.i = phi i8 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.g = call fastcc i32 @submit_headers_shared_nva(ptr noundef nonnull %0, i8 noundef zeroext %.0.i.i, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %i.a, ptr noundef null)
  br label %submit_response_shared.exit

submit_response_shared.exit:                      ; preds = %bb.a, %bb.b, %set_response_flags.exit.i
  %.0.i = phi i32 [ -501, %bb.a ], [ %i.g, %set_response_flags.exit.i ], [ -505, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_submit_data_shared(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i8 %1, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.b, i64 noundef 160) #7 ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.d) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %4 = zext nneg i8 %i.a to i16
  store i16 %4, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3.0..sroa_idx, i8 0, i64 6, i1 false)
  tail call void @nghttp2_frame_data_init(ptr noundef nonnull %i.d, i8 noundef zeroext 0, i32 noundef %2) #7
  %i.g = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.d) #7 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @nghttp2_frame_data_free(ptr noundef nonnull %i.d) #7
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -901, %bb.b ], [ -501, %bb.a ], [ %i.g, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @nghttp2_frame_data_init(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @nghttp2_frame_data_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @nghttp2_submit_data(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.nghttp2_data_provider_wrap, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 790, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_submit_data) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = call ptr @nghttp2_data_provider_wrap_v1(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %i.b = and i8 %1, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %nghttp2_submit_data_shared.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.c, i64 noundef 160) #7 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %nghttp2_submit_data_shared.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.e) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %5 = zext nneg i8 %i.b to i16
  store i16 %5, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3.0..sroa_idx.i, i8 0, i64 6, i1 false)
  call void @nghttp2_frame_data_init(ptr noundef nonnull %i.e, i8 noundef zeroext 0, i32 noundef %2) #7
  %i.h = call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %nghttp2_submit_data_shared.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @nghttp2_frame_data_free(ptr noundef nonnull %i.e) #7
  call void @nghttp2_mem_free(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #7
  br label %nghttp2_submit_data_shared.exit

nghttp2_submit_data_shared.exit:                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ -901, %bb.d ], [ -501, %bb.c ], [ %i.h, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_submit_data2(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.nghttp2_data_provider_wrap, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 801, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_submit_data2) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = call ptr @nghttp2_data_provider_wrap_v2(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %i.b = and i8 %1, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %nghttp2_submit_data_shared.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.c, i64 noundef 160) #7 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %nghttp2_submit_data_shared.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.e) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %5 = zext nneg i8 %i.b to i16
  store i16 %5, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.3.0..sroa_idx.i, i8 0, i64 6, i1 false)
  call void @nghttp2_frame_data_init(ptr noundef nonnull %i.e, i8 noundef zeroext 0, i32 noundef %2) #7
  %i.h = call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %nghttp2_submit_data_shared.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @nghttp2_frame_data_free(ptr noundef nonnull %i.e) #7
  call void @nghttp2_mem_free(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #7
  br label %nghttp2_submit_data_shared.exit

nghttp2_submit_data_shared.exit:                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ -901, %bb.d ], [ -501, %bb.c ], [ %i.h, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_pack_settings_payload(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @nghttp2_iv_check(ptr noundef %2, i64 noundef %3) #7
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %nghttp2_pack_settings_payload2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %3, 6
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %nghttp2_pack_settings_payload2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @nghttp2_frame_pack_settings_payload(ptr noundef %0, ptr noundef %2, i64 noundef %3) #7
  br label %nghttp2_pack_settings_payload2.exit

nghttp2_pack_settings_payload2.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ -501, %bb.a ], [ %i.d, %bb.c ], [ -525, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_pack_settings_payload2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @nghttp2_iv_check(ptr noundef %2, i64 noundef %3) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %3, 6
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @nghttp2_frame_pack_settings_payload(ptr noundef %0, ptr noundef %2, i64 noundef %3) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ -501, %bb.a ], [ %i.d, %bb.c ], [ -525, %bb.b ]
  ret i64 %.0
}

declare i32 @nghttp2_iv_check(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @nghttp2_frame_pack_settings_payload(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @nghttp2_submit_extension(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.b = icmp ult i8 %1, 10
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %.not22 = icmp eq ptr %i.f, null
  br i1 %.not22, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.a, i64 noundef 160) #7 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.g) #7
  tail call void @nghttp2_frame_extension_init(ptr noundef nonnull %i.g, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) #7
  %i.i = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.g) #7 ; 2 uses
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @nghttp2_frame_extension_free(ptr noundef nonnull %i.g) #7
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.f
  %.0 = phi i32 [ -501, %bb.a ], [ -519, %bb.c ], [ %i.i, %bb.f ], [ -901, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

declare void @nghttp2_frame_extension_init(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @nghttp2_frame_extension_free(ptr noundef) local_unnamed_addr #1

declare i32 @nghttp2_data_provider_wrap_contains_read_callback(ptr noundef) local_unnamed_addr #1

declare void @nghttp2_frame_headers_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @nghttp2_frame_headers_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @nghttp2_nv_array_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!"p1 int", !8, i64 0}
!13 = !{!"any p2 pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !8, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!"nghttp2_map", !12, i64 0, !13, i64 8, !14, i64 16, !8, i64 24, !15, i64 32, !15, i64 40, !15, i64 48}
!17 = !{!"p1 _ZTS21nghttp2_outbound_item", !8, i64 0}
!18 = !{!"", !17, i64 0, !17, i64 8, !15, i64 16}
!19 = !{!"p1 _ZTS17nghttp2_buf_chain", !8, i64 0}
!20 = !{!"", !19, i64 0, !19, i64 8, !8, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56}
!21 = !{!"", !17, i64 0, !20, i64 8, !5, i64 72}
!22 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!23 = !{!"", !4, i64 0, !4, i64 64, !8, i64 96, !22, i64 104, !22, i64 144, !14, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !5, i64 224, !4, i64 228}
!24 = !{!"p2 _ZTS16nghttp2_hd_entry", !13, i64 0}
!25 = !{!"", !24, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!26 = !{!"", !25, i64 0, !8, i64 32, !15, i64 40, !15, i64 48, !5, i64 56, !4, i64 60}
!27 = !{!"", !4, i64 0}
!28 = !{!"nghttp2_hd_deflater", !26, i64 0, !27, i64 64, !15, i64 1088, !15, i64 1096, !4, i64 1104}
!29 = !{!"short", !4, i64 0}
!30 = !{!"", !29, i64 0, !4, i64 2}
!31 = !{!"p1 _ZTS13nghttp2_rcbuf", !8, i64 0}
!32 = !{!"nghttp2_hd_inflater", !26, i64 0, !30, i64 64, !22, i64 72, !22, i64 112, !31, i64 152, !31, i64 160, !31, i64 168, !31, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !5, i64 224, !5, i64 228, !4, i64 232, !4, i64 233, !4, i64 234}
!33 = !{!"nghttp2_session_callbacks", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224}
!34 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!35 = !{!"p1 _ZTS25nghttp2_inflight_settings", !8, i64 0}
!36 = !{!"nghttp2_ratelim", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!37 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!38 = !{!"nghttp2_session", !16, i64 0, !18, i64 56, !18, i64 80, !18, i64 104, !4, i64 128, !21, i64 448, !23, i64 528, !28, i64 792, !32, i64 1904, !33, i64 2144, !34, i64 2376, !8, i64 2416, !35, i64 2424, !36, i64 2432, !36, i64 2464, !15, i64 2496, !15, i64 2504, !15, i64 2512, !15, i64 2520, !15, i64 2528, !15, i64 2536, !15, i64 2544, !15, i64 2552, !15, i64 2560, !15, i64 2568, !15, i64 2576, !15, i64 2584, !15, i64 2592, !15, i64 2600, !5, i64 2608, !5, i64 2612, !5, i64 2616, !5, i64 2620, !5, i64 2624, !5, i64 2628, !5, i64 2632, !5, i64 2636, !5, i64 2640, !5, i64 2644, !5, i64 2648, !5, i64 2652, !4, i64 2656, !37, i64 2660, !37, i64 2692, !5, i64 2724, !5, i64 2728, !5, i64 2732, !4, i64 2736, !4, i64 2737, !4, i64 2738, !4, i64 2739, !4, i64 2740, !4, i64 2741, !4, i64 2742}
!39 = !{!38, !5, i64 2608}
!40 = !{!38, !4, i64 2739}
!41 = !{!38, !4, i64 2740}
!42 = !{!"", !15, i64 0}
!43 = !{!"p1 _ZTS14nghttp2_stream", !8, i64 0}
!44 = !{!"nghttp2_stream", !5, i64 0, !42, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !43, i64 48, !8, i64 56, !17, i64 64, !15, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !4, i64 116, !4, i64 117, !4, i64 118, !4, i64 119, !4, i64 120, !4, i64 121}
!45 = !{i64 0, i64 4, !10, i64 8, i64 16, !11}
!46 = !{!38, !5, i64 2644}
!47 = !{!44, !5, i64 92}
!48 = !{!38, !5, i64 2652}
!49 = !{!44, !5, i64 100}
!50 = distinct !{!50, !55, !56, !57}
!51 = distinct !{!51, !55, !57, !56}
!52 = distinct !{!52, !55}
!53 = !{!"", !14, i64 0, !15, i64 8}
!54 = !{!53, !15, i64 8}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!53, !14, i64 0}
!59 = !{!38, !5, i64 2688}
!60 = !{!38, !8, i64 2328}
!61 = !{!38, !8, i64 2320}
end_hunk_0
