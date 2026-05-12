inline.NumInlined: 34
inline.NumDeleted: 17
begin_hunk_0_@tls_default_read_n:bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !9    ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 7
  %i.h = xor i64 %i.g, 4
  %6 = sub nuw nsw i64 7, %i.h                    ; 4 uses
  %i.i = icmp ne i32 %3, 0                        ; 2 uses
  br i1 %i.i, label %._crit_edge182, label %bb.c

end_hunk_0
begin_hunk_1_@tls_default_read_n:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %6, ptr %i.k, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge181, %bb.d
  %i.l = phi i64 [ %.pre, %._crit_edge181 ], [ %6, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4080
  store ptr %i.m, ptr %i.n, align 8, !tbaa !47
end_hunk_1
begin_hunk_2_@tls_default_read_n:bb.a
bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4088 ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %6 ; 4 uses
  %i.u = icmp ne ptr %i.p, %i.t
  %i.v = icmp eq i32 %4, 1
  %or.cond = and i1 %i.v, %i.u
end_hunk_2
begin_hunk_3_@tls_default_read_n:bb.a
  %i.w = add i64 %i.s, %i.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.p, i64 %i.w, i1 false)
  store ptr %i.t, ptr %i.q, align 8, !tbaa !47
  %i.x = add i64 %i.s, %6
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1720
  store i64 %i.x, ptr %i.y, align 8, !tbaa !48
  br label %bb.j
end_hunk_3
begin_hunk_4_@tls_initialise_write_packets_default:bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 7
  %i.k = xor i64 %i.j, 4
  %7 = sub nuw nsw i64 7, %i.k                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %7, ptr %i.l, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37
  %i.o = tail call i32 @WPACKET_init_static_len(ptr noundef %i.b, ptr noundef %i.h, i64 noundef %i.n, i64 noundef 0) #13
end_hunk_4
begin_hunk_5_@tls_initialise_write_packets_default:bb.a
  %i.p = load i64, ptr %6, align 8, !tbaa !27
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %6, align 8, !tbaa !27
  %i.r = tail call i32 @WPACKET_allocate_bytes(ptr noundef %i.b, i64 noundef %7, ptr noundef null) #13
  %.not25 = icmp eq i32 %i.r, 0
  br i1 %.not25, label %.loopexit.sink.split, label %bb.b

end_hunk_5
