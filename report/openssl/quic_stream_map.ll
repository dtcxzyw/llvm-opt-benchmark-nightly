Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_stream_map?download=true
inline.NumInlined: 59
inline.NumDeleted: 24
begin_hunk_0_@ossl_quic_stream_map_notify_app_read_reset_recv_part:bb.a
; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_stream_map_stop_sending_recv_part(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = and i64 %i.b, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %ossl_quic_stream_map_schedule_stop_sending.exit

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 16
  %trunc = trunc i64 %i.d to i8
  %trunc.off = add i8 %trunc, -1
  %switch = icmp ult i8 %trunc.off, 2
  br i1 %switch, label %bb.c, label %ossl_quic_stream_map_schedule_stop_sending.exit

bb.c:                                             ; preds = %bb.b
  %i.e = or disjoint i64 %i.b, 67108864
  store i64 %i.e, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %2, ptr %i.f, align 8, !tbaa !58
  %i.g = and i64 %i.b, 17179869184
  %.not6.i = icmp eq i64 %i.g, 0
  br i1 %.not6.i, label %bb.d, label %ossl_quic_stream_map_schedule_stop_sending.exit

bb.d:                                             ; preds = %bb.c
  %i.h = or disjoint i64 %i.b, 17246978048
  store i64 %i.h, ptr %i.a, align 8
  tail call void @ossl_quic_stream_map_update_state(ptr noundef %0, ptr noundef nonnull %1)
  br label %ossl_quic_stream_map_schedule_stop_sending.exit

ossl_quic_stream_map_schedule_stop_sending.exit:  ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_stream_map_schedule_stop_sending(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = and i64 %i.b, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 17179869184
  %.not6 = icmp eq i64 %i.d, 0
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.b, 16
  %trunc = trunc i64 %i.e to i8
  %trunc.off = add i8 %trunc, -1
  %switch = icmp ult i8 %trunc.off, 2
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = or disjoint i64 %i.b, 17179869184
  store i64 %i.f, ptr %i.a, align 8
  tail call void @ossl_quic_stream_map_update_state(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ossl_quic_stream_map_peek_accept_queue(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %i.c = icmp eq ptr %.val, %i.a
  br i1 %i.c, label %bb.b, label %list_next.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.a, %bb.b
  %.08.i = phi ptr [ %i.e, %bb.b ], [ %.val, %bb.a ] ; 2 uses
  %i.f = icmp eq ptr %.08.i, %i.a
  %i.g = getelementptr inbounds i8, ptr %.08.i, i64 -16
  %.0.i = select i1 %i.f, ptr null, ptr %i.g
  ret ptr %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ossl_quic_stream_map_find_in_accept_queue(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  %.in.v.i = select i1 %.not.i, i64 80, i64 88
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.a = load i64, ptr %.in.i, align 8, !tbaa !40
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !33 ; 3 uses
  %i.e = icmp eq ptr %.val.i, %i.c
  br i1 %i.e, label %bb.c, label %ossl_quic_stream_map_peek_accept_queue.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  br label %ossl_quic_stream_map_peek_accept_queue.exit

ossl_quic_stream_map_peek_accept_queue.exit:      ; preds = %bb.b, %bb.c
  %.08.i.i = phi ptr [ %i.g, %bb.c ], [ %.val.i, %bb.b ] ; 2 uses
  %i.h = icmp eq ptr %.08.i.i, %i.c
  br i1 %i.h, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %ossl_quic_stream_map_peek_accept_queue.exit
  %i.i = getelementptr inbounds i8, ptr %.08.i.i, i64 -16 ; 2 uses
  br i1 %.not.i, label %.critedge.us, label %.lr.ph.split

.critedge.us:                                     ; preds = %.lr.ph, %list_next.exit.us
  %.020.us = phi ptr [ %i.q, %list_next.exit.us ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.j = getelementptr i8, ptr %.020.us, i64 256
  %.0.val.us = load i64, ptr %i.j, align 8
  %i.k = and i64 %.0.val.us, 2
  %.not19.us = icmp eq i64 %i.k, 0
  br i1 %.not19.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.critedge.us
  %i.l = getelementptr i8, ptr %.020.us, i64 24
  %.val.us = load ptr, ptr %i.l, align 8, !tbaa !33 ; 3 uses
  %i.m = icmp eq ptr %.val.us, %i.c
  br i1 %i.m, label %bb.e, label %list_next.exit.us

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val.us, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  br label %list_next.exit.us

list_next.exit.us:                                ; preds = %bb.e, %bb.d
  %.08.i.us = phi ptr [ %i.o, %bb.e ], [ %.val.us, %bb.d ] ; 2 uses
  %i.p = icmp eq ptr %.08.i.us, %i.c
  %i.q = getelementptr inbounds i8, ptr %.08.i.us, i64 -16
  br i1 %i.p, label %.loopexit, label %.critedge.us

.lr.ph.split:                                     ; preds = %.lr.ph, %list_next.exit
  %.020 = phi ptr [ %i.y, %list_next.exit ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.r = getelementptr i8, ptr %.020, i64 256
  %.0.val15 = load i64, ptr %i.r, align 8
  %i.s = and i64 %.0.val15, 2
  %.not18 = icmp eq i64 %i.s, 0
  br i1 %.not18, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.split
  %i.t = getelementptr i8, ptr %.020, i64 24
  %.val = load ptr, ptr %i.t, align 8, !tbaa !33  ; 3 uses
  %i.u = icmp eq ptr %.val, %i.c
  br i1 %i.u, label %bb.g, label %list_next.exit

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.f, %bb.g
  %.08.i = phi ptr [ %i.w, %bb.g ], [ %.val, %bb.f ] ; 2 uses
  %i.x = icmp eq ptr %.08.i, %i.c
  %i.y = getelementptr inbounds i8, ptr %.08.i, i64 -16
  br i1 %i.x, label %.loopexit, label %.lr.ph.split

.loopexit:                                        ; preds = %.lr.ph.split, %list_next.exit, %.critedge.us, %list_next.exit.us, %ossl_quic_stream_map_peek_accept_queue.exit, %bb.a
  %.011 = phi ptr [ null, %bb.a ], [ null, %ossl_quic_stream_map_peek_accept_queue.exit ], [ %.020.us, %.critedge.us ], [ null, %list_next.exit.us ], [ null, %list_next.exit ], [ %.020, %.lr.ph.split ]
  ret ptr %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_quic_stream_map_get_accept_queue_len(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %.in.v = select i1 %.not, i64 80, i64 88
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.a = load i64, ptr %.in, align 8, !tbaa !40
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ossl_quic_stream_map_push_accept_queue(ptr noundef %0, ptr noundef initializes((16, 24)) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !33
  store ptr %i.b, ptr %i.a, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.a, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr i8, ptr %1, i64 256
  %.val = load i64, ptr %i.f, align 8
  %2 = shl i64 %.val, 2
  %3 = and i64 %2, 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define void @ossl_quic_stream_map_remove_from_accept_queue(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !33
  store ptr %i.d, ptr %i.c, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = getelementptr i8, ptr %1, i64 256        ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %3 = shl i64 %.val, 2
  %4 = and i64 %3, 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !40
  %.val9 = load i64, ptr %i.f, align 8
  %6 = shl i64 %.val9, 2
  %7 = and i64 %6, 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %.in.i = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.j = load ptr, ptr %.in.i, align 8, !tbaa !59 ; 2 uses
  %.not8 = icmp eq ptr %i.j, null
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @ossl_quic_rxfc_on_retire(ptr noundef nonnull %i.j, i64 noundef 1, i64 %2) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @ossl_quic_rxfc_on_retire(ptr noundef, i64 noundef, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ossl_quic_stream_map_get_total_accept_queue_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.a = load i64, ptr %.in.i, align 8, !tbaa !40
  %.in.i2 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %.in.i2, align 8, !tbaa !40
  %i.c = add i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define void @ossl_quic_stream_map_gc(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %ossl_quic_stream_map_release.exit, %bb.a
  %.val = load ptr, ptr %i.b, align 8, !tbaa !33  ; 3 uses
  %i.c = icmp eq ptr %.val, %i.a
  br i1 %i.c, label %bb.c, label %list_next.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %list_next.exit

list_next.exit:                                   ; preds = %bb.b, %bb.c
  %.08.i = phi ptr [ %i.e, %bb.c ], [ %.val, %bb.b ] ; 10 uses
  %i.f = icmp eq ptr %.08.i, %i.a
  %i.g = getelementptr inbounds i8, ptr %.08.i, i64 -32 ; 4 uses
  br i1 %i.f, label %bb.j, label %bb.d

bb.d:                                             ; preds = %list_next.exit
  %i.h = getelementptr inbounds i8, ptr %.08.i, i64 -24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !33
  store ptr %i.j, ptr %i.i, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds i8, ptr %.08.i, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 3 uses
  %.not17.i = icmp eq ptr %i.m, null
  br i1 %.not17.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds i8, ptr %.08.i, i64 -16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !33
  store ptr %i.o, ptr %i.m, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 3 uses
  %.not18.i = icmp eq ptr %i.r, null
  br i1 %.not18.i, label %ossl_quic_stream_map_release.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %.08.i, align 8, !tbaa !32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.t, align 8, !tbaa !33
  store ptr %i.s, ptr %i.r, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i, i8 0, i64 16, i1 false)
  br label %ossl_quic_stream_map_release.exit

ossl_quic_stream_map_release.exit:                ; preds = %bb.h, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i, i64 80 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  tail call void @ossl_quic_sstream_free(ptr noundef %i.v) #13
  store ptr null, ptr %i.u, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  tail call void @ossl_quic_rstream_free(ptr noundef %i.x) #13
  store ptr null, ptr %i.w, align 8, !tbaa !37
  %i.y = load ptr, ptr %0, align 8, !tbaa !17
  %i.z = tail call ptr @OPENSSL_LH_delete(ptr noundef %i.y, ptr noundef nonnull %i.g) #13 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %i.g, ptr noundef nonnull @.str, i32 noundef 198) #13
  br label %bb.b, !llvm.loop !60

bb.j:                                             ; preds = %list_next.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @ossl_quic_stream_map_begin_shutdown_flush(ptr noundef initializes((96, 104)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @OPENSSL_LH_doall_arg(ptr noundef %i.b, ptr noundef nonnull @begin_shutdown_flush_each, ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @begin_shutdown_flush_each(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 65024
  %switch.i = icmp eq i64 %i.c, 512
  br i1 %switch.i, label %eligible_for_shutdown_flush.exit, label %eligible_for_shutdown_flush.exit.thread

eligible_for_shutdown_flush.exit:                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = tail call i32 @ossl_quic_sstream_is_totally_acked(ptr noundef %i.e) #13
  %.not.i.not = icmp eq i32 %i.f, 0
  br i1 %.not.i.not, label %bb.b, label %eligible_for_shutdown_flush.exit.thread

bb.b:                                             ; preds = %eligible_for_shutdown_flush.exit
  %i.g = load i64, ptr %i.a, align 8              ; 2 uses
  %i.h = and i64 %i.g, 549755813888
  %.not5 = icmp eq i64 %i.h, 0
  br i1 %.not5, label %bb.c, label %eligible_for_shutdown_flush.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = or disjoint i64 %i.g, 549755813888
  store i64 %i.i, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !39
  br label %eligible_for_shutdown_flush.exit.thread

eligible_for_shutdown_flush.exit.thread:          ; preds = %bb.a, %eligible_for_shutdown_flush.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ossl_quic_stream_map_is_shutdown_flush_finished(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39
  %i.c = icmp eq i64 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ossl_quic_stream_iter_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.d, align 8, !tbaa !46
  %.not = icmp eq i32 %2, 0
  %.not12 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not, i1 true, i1 %.not12
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = add i64 %i.f, 1                          ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %.not13 = icmp ult i64 %i.g, %i.i
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.e, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !33  ; 3 uses
  %i.l = icmp eq ptr %.val, %i.j
  br i1 %i.l, label %bb.d, label %list_next.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
end_hunk_0
