begin_hunk_0_@tls1_initialise_write_packets:bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !32     ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 7
  %i.m = xor i64 %i.l, 4
  %7 = sub nuw nsw i64 7, %i.m                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %7, ptr %i.n, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = tail call i32 @WPACKET_init_static_len(ptr noundef %4, ptr noundef %i.j, i64 noundef %i.p, i64 noundef 0) #3
end_hunk_0
begin_hunk_1_@tls1_initialise_write_packets:bb.a

bb.e:                                             ; preds = %bb.c
  store i64 1, ptr %6, align 8, !tbaa !28
  %i.r = tail call i32 @WPACKET_allocate_bytes(ptr noundef %4, i64 noundef %7, ptr noundef null) #3
  %.not30 = icmp eq i32 %i.r, 0
  br i1 %.not30, label %bb.f, label %.thread

end_hunk_1
