Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ngsniffer?download=true
inline.NumInlined: 53
inline.NumDeleted: 18
begin_hunk_0_@ngsniffer_seek_read:bb.a
  br i1 %.not70.i, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr i8, ptr %.383.i, i64 16
  %.3.i = load ptr, ptr %i.at, align 8            ; 2 uses
  %cond75.i = icmp eq ptr %.3.i, null
  br i1 %cond75.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.l, %bb.k
  store i32 -18, ptr %3, align 4
  br label %ng_file_seek_rand.exit.thread

.loopexit.loopexit.i:                             ; preds = %bb.g, %bb.f
  %.pre.i = load ptr, ptr %.1.i, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.loopexit.loopexit.i
  %i.au = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %.4.i = phi ptr [ %.1.i, %.loopexit.loopexit.i ], [ %.383.i, %.lr.ph.i ]
  %i.av = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load i64, ptr %i.au, align 8
  %i.ay = tail call i64 @file_seek(ptr noundef %i.aw, i64 noundef %i.ax, i32 noundef 0, ptr noundef %3)
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %ng_file_seek_rand.exit.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit.i
  %i.ba = load ptr, ptr %i.h, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = tail call noalias dereferenceable_or_null(65536) ptr @g_malloc(i64 noundef 65536) #11
  store ptr %i.bc, ptr %i.h, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = getelementptr i8, ptr %i.d, i64 112
  store ptr %.4.i, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %i.au, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  store i64 %i.bf, ptr %i.i, align 8
  %i.bg = load i64, ptr %i.au, align 8
  %i.bh = getelementptr i8, ptr %i.d, i64 80
  store i64 %i.bg, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %i.av, align 8
  %i.bj = tail call fastcc zeroext i1 @read_blob(ptr noundef %i.bi, ptr noundef %i.h, ptr noundef %3, ptr noundef %4)
  br i1 %i.bj, label %bb.p, label %ng_file_seek_rand.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bk = load i64, ptr %i.i, align 8             ; 2 uses
  %i.bl = sub i64 %1, %i.bk
  br label %ng_file_seek_rand.exit.thread13

ng_file_seek_rand.exit.thread13:                  ; preds = %bb.c, %bb.i, %bb.j, %bb.p
  %i.bm = phi i64 [ %i.bk, %bb.p ], [ %i.j, %bb.c ], [ %i.j, %bb.j ], [ %i.j, %bb.i ]
  %.063.i = phi i64 [ %i.bl, %bb.p ], [ %i.k, %bb.c ], [ %i.k, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.bn = trunc i64 %.063.i to i32
  %i.bo = getelementptr i8, ptr %i.d, i64 76      ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bo, align 4
  %i.br = add i64 %.063.i, %i.bm
  store i64 %i.br, ptr %i.i, align 8
  br label %bb.q

ng_file_seek_rand.exit:                           ; preds = %bb.a
  %i.bs = getelementptr i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call i64 @file_seek(ptr noundef %i.bt, i64 noundef %1, i32 noundef 0, ptr noundef %3)
  %.not = icmp eq i64 %i.bu, -1
  br i1 %.not, label %ng_file_seek_rand.exit.thread, label %bb.q

bb.q:                                             ; preds = %ng_file_seek_rand.exit.thread13, %ng_file_seek_rand.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.bv = call fastcc zeroext i1 @ng_read_bytes_or_eof(ptr noundef readonly %0, ptr noundef nonnull %i.a, i32 noundef 2, i1 noundef zeroext true, ptr noundef %3, ptr noundef %4)
  br i1 %i.bv, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = load i32, ptr %3, align 4
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %.thread, label %read_rec_header.exit.thread

.thread:                                          ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.bx = call fastcc zeroext i1 @ng_read_bytes_or_eof(ptr noundef readonly %0, ptr noundef nonnull %i.b, i32 noundef 4, i1 noundef zeroext true, ptr noundef %3, ptr noundef %4)
  br i1 %i.bx, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load i32, ptr %3, align 4
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.u, label %read_rec_header.exit.thread

bb.u:                                             ; preds = %bb.t
  store i32 -12, ptr %3, align 4
  br label %read_rec_header.exit.thread

read_rec_header.exit.thread:                      ; preds = %bb.r, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %ng_file_seek_rand.exit.thread

bb.v:                                             ; preds = %bb.s
  %.val14.i = load i16, ptr %i.a, align 2         ; 2 uses
  store i16 %.val14.i, ptr %5, align 2
  %.val.i = load i16, ptr %i.b, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %.val.i, ptr %i.ca, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  switch i16 %.val14.i, label %bb.x [
    i16 4, label %bb.w
    i16 8, label %bb.w
    i16 12, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v
  %i.cb = call fastcc zeroext i1 @process_frame_record(ptr noundef %0, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %ng_file_seek_rand.exit.thread

bb.x:                                             ; preds = %.thread, %bb.v
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.17, i32 noundef 7, ptr noundef nonnull @.str.18, i64 noundef 1146, ptr noundef nonnull @__func__.ngsniffer_seek_read, ptr noundef nonnull @.str.19) #12
  unreachable

ng_file_seek_rand.exit.thread:                    ; preds = %bb.o, %._crit_edge.i, %.loopexit.i, %bb.h, %read_rec_header.exit.thread, %bb.w, %ng_file_seek_rand.exit
  %.0 = phi i1 [ false, %read_rec_header.exit.thread ], [ %i.cb, %bb.w ], [ false, %ng_file_seek_rand.exit ], [ false, %bb.h ], [ false, %.loopexit.i ], [ false, %._crit_edge.i ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @ngsniffer_sequential_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_free(ptr noundef nonnull %i.d)
  store ptr null, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @ngsniffer_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d)
  %i.e = getelementptr i8, ptr %i.b, i64 96       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @g_list_foreach(ptr noundef %i.f, ptr noundef nonnull @free_blob, ptr noundef null)
  %i.g = load ptr, ptr %i.e, align 8
  tail call void @g_list_free(ptr noundef %i.g)
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_ngsniffer() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wtap_register_file_type_subtype(ptr noundef nonnull @ngsniffer_uncompressed_info)
  store i32 %i.a, ptr @ngsniffer_uncompressed_file_type_subtype, align 4
  %i.b = tail call i32 @wtap_register_file_type_subtype(ptr noundef nonnull @ngsniffer_compressed_info)
  store i32 %i.b, ptr @ngsniffer_compressed_file_type_subtype, align 4
  %i.c = load i32, ptr @ngsniffer_uncompressed_file_type_subtype, align 4
  tail call void @wtap_register_backwards_compatibility_lua_name(ptr noundef nonnull @.str.3, i32 noundef %i.c)
  %i.d = load i32, ptr @ngsniffer_compressed_file_type_subtype, align 4
  tail call void @wtap_register_backwards_compatibility_lua_name(ptr noundef nonnull @.str.4, i32 noundef %i.d)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_register_file_type_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_register_backwards_compatibility_lua_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read_bytes_or_eof(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @process_frame_record(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.frame2_rec, align 2         ; 15 uses
  %8 = alloca %struct.frame4_rec, align 4         ; 19 uses
  %9 = alloca %struct.frame6_rec, align 2         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.a = getelementptr i8, ptr %3, i64 2
  %i.b = load i16, ptr %i.a, align 2              ; 3 uses
  %i.c = zext i16 %i.b to i32                     ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 168        ; 4 uses
  %i.e = load i32, ptr %i.d, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %4, i32 noundef %i.e)
  %i.f = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.g = getelementptr i8, ptr %4, i64 216        ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %4, i64 4          ; 3 uses
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 6 uses
  %i.k = load i16, ptr %3, align 2
  switch i16 %i.k, label %bb.bv [
    i16 4, label %bb.b
    i16 8, label %bb.s
    i16 12, label %bb.bq
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.j, i64 24
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 10
  br i1 %i.n, label %g_strdup_inline.exit107, label %bb.c

g_strdup_inline.exit107:                          ; preds = %bb.b
  store i32 -13, ptr %5, align 4
  %i.o = tail call noalias dereferenceable_or_null(52) ptr @g_malloc(i64 noundef 52) #11 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(52) %i.o, ptr noundef nonnull align 1 dereferenceable(52) @.str.12, i64 noundef 52, i1 noundef false) #10
  store ptr %i.o, ptr %6, align 8
  br label %ng_read_bytes.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = icmp ult i16 %i.b, 14
  br i1 %i.p, label %g_strdup_inline.exit105, label %bb.d

g_strdup_inline.exit105:                          ; preds = %bb.c
  store i32 -13, ptr %5, align 4
  %i.q = tail call noalias dereferenceable_or_null(70) ptr @g_malloc(i64 noundef 70) #11 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(70) %i.q, ptr noundef nonnull align 1 dereferenceable(70) @.str.13, i64 noundef 70, i1 noundef false) #10
  store ptr %i.q, ptr %6, align 8
  br label %ng_read_bytes.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = call fastcc zeroext i1 @ng_read_bytes_or_eof(ptr noundef readonly %0, ptr noundef nonnull %7, i32 noundef 14, i1 noundef zeroext %1, ptr noundef %5, ptr noundef %6)
  br i1 %i.r, label %ng_read_bytes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %5, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %ng_read_bytes.exit.thread

bb.f:                                             ; preds = %bb.e
  store i32 -12, ptr %5, align 4
  br label %ng_read_bytes.exit.thread

ng_read_bytes.exit:                               ; preds = %bb.d
  %.val129 = load i16, ptr %7, align 2            ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 2
  %.val127 = load i16, ptr %i.u, align 2          ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.w = load i8, ptr %i.v, align 2               ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.y = load i8, ptr %i.x, align 1               ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 6
  %.val125 = load i16, ptr %i.z, align 2          ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 10
  %.val123 = load i16, ptr %i.aa, align 2         ; 8 uses
  %i.ab = add nsw i32 %i.c, -14                   ; 8 uses
  %i.ac = load ptr, ptr %i.i, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8
  switch i32 %i.ae, label %bb.j [
    i32 1, label %bb.g
    i32 9, label %bb.h
    i32 7, label %bb.i
  ]

bb.g:                                             ; preds = %ng_read_bytes.exit
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i8, ptr %i.af, align 2             ; 3 uses
  %.not34.i = icmp sgt i8 %i.ag, -1
  %spec.select.i = select i1 %.not34.i, i32 0, i32 16777216
  %i.ah = and i8 %i.ag, 64
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 22
  %.1.i = or disjoint i32 %i.aj, %spec.select.i
  %i.ak = and i8 %i.ag, 8
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 23
  %.2.i = or disjoint i32 %.1.i, %i.am
  br label %.sink.split.i

bb.h:                                             ; preds = %ng_read_bytes.exit
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ao = load i8, ptr %i.an, align 2
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 16
  %.not32.i = icmp ne i32 %i.aq, 0
  %i.ar = and i32 %i.ap, 34
  %.not33.i = icmp eq i32 %i.ar, 0
  %or.cond.i = or i1 %.not32.i, %.not33.i
  %.3.i = select i1 %or.cond.i, i32 0, i32 16777216
  br label %.sink.split.i

bb.i:                                             ; preds = %ng_read_bytes.exit
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = load i8, ptr %i.as, align 2
  %i.au = and i8 %i.at, 2
  %i.av = zext nneg i8 %i.au to i32
  %spec.select39.i = shl nuw nsw i32 %i.av, 23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  %spec.select39.sink.i = phi i32 [ %spec.select39.i, %bb.i ], [ %.3.i, %bb.h ], [ %.2.i, %bb.g ]
  %i.aw = load ptr, ptr %i.g, align 8
  %i.ax = call i32 @wtap_block_add_uint32_option(ptr noundef %i.aw, i32 noundef 2, i32 noundef %spec.select39.sink.i) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %ng_read_bytes.exit
  %i.ay = getelementptr i8, ptr %4, i64 64        ; 4 uses
  %i.az = load i32, ptr %i.d, align 8
  switch i32 %i.az, label %set_metadata_frame2.exit [
    i32 1, label %bb.k
    i32 19, label %bb.l
    i32 36, label %bb.l
    i32 12, label %bb.m
    i32 27, label %bb.m
    i32 -1, label %bb.m
    i32 17, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ay, align 8
  br label %set_metadata_frame2.exit

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = load i8, ptr %i.ba, align 2
  %.lobit.i = lshr i8 %i.bb, 7
  store i8 %.lobit.i, ptr %i.ay, align 8
  br label %set_metadata_frame2.exit

bb.m:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load i8, ptr %i.bc, align 2
  %i.be = and i8 %i.bd, -128
  %i.bf = xor i8 %i.be, -128
  store i8 %i.bf, ptr %i.ay, align 8
  br label %set_metadata_frame2.exit

bb.n:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = load i8, ptr %i.bg, align 2             ; 2 uses
  %.not37.i = icmp sgt i8 %i.bh, -1
  %i.bi = zext i1 %.not37.i to i8
  store i8 %i.bi, ptr %i.ay, align 8
  %i.bj = and i8 %i.bh, 24
  %i.bk = getelementptr i8, ptr %4, i64 65        ; 4 uses
  switch i8 %i.bj, label %.unreachabledefault.i [
    i8 24, label %bb.o
    i8 8, label %bb.p
    i8 16, label %bb.q
    i8 0, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.bk, align 1
  br label %set_metadata_frame2.exit

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.bk, align 1
  br label %set_metadata_frame2.exit

bb.q:                                             ; preds = %bb.n
  store i8 2, ptr %i.bk, align 1
  br label %set_metadata_frame2.exit

.unreachabledefault.i:                            ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %bb.n
  store i8 30, ptr %i.bk, align 1
  br label %set_metadata_frame2.exit

bb.s:                                             ; preds = %bb.a
  %i.bl = getelementptr i8, ptr %i.j, i64 24
  %i.bm = load i32, ptr %i.bl, align 8
  %.not = icmp eq i32 %i.bm, 10
  br i1 %.not, label %bb.t, label %g_strdup_inline.exit103

g_strdup_inline.exit103:                          ; preds = %bb.s
  store i32 -13, ptr %5, align 4
  %i.bn = tail call noalias dereferenceable_or_null(55) ptr @g_malloc(i64 noundef 55) #11 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(55) %i.bn, ptr noundef nonnull align 1 dereferenceable(55) @.str.14, i64 noundef 55, i1 noundef false) #10
end_hunk_0
begin_hunk_1_@process_frame_record:bb.a
  br label %set_pseudo_header_frame4.exit

bb.ah:                                            ; preds = %bb.af
  store i8 1, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.ai:                                            ; preds = %bb.af
  store i8 2, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.aj:                                            ; preds = %bb.af
  store i8 3, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.ak:                                            ; preds = %bb.af
  store i8 4, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.al:                                            ; preds = %bb.af
  store i8 5, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.am:                                            ; preds = %bb.af
  store i8 7, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.an:                                            ; preds = %bb.af
  store i8 8, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.ao:                                            ; preds = %bb.af
  store i8 9, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.ap:                                            ; preds = %bb.af
  store i8 10, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.aq:                                            ; preds = %bb.af
  store i8 11, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.ar:                                            ; preds = %bb.af
  store i8 12, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.as:                                            ; preds = %bb.af
  store i8 13, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.at:                                            ; preds = %bb.af
  store i8 0, ptr %i.di, align 2
  br label %set_pseudo_header_frame4.exit

bb.au:                                            ; preds = %bb.ac
  store i8 3, ptr %i.dd, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 29
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr i8, ptr %4, i64 70        ; 7 uses
  switch i8 %i.dk, label %bb.bb [
    i8 0, label %bb.av
    i8 1, label %bb.aw
    i8 2, label %bb.ax
    i8 3, label %bb.ay
    i8 4, label %bb.az
    i8 5, label %bb.ba
  ]

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %i.dl, align 2
  br label %set_pseudo_header_frame4.exit

bb.aw:                                            ; preds = %bb.au
  store i8 1, ptr %i.dl, align 2
  br label %set_pseudo_header_frame4.exit

bb.ax:                                            ; preds = %bb.au
  store i8 2, ptr %i.dl, align 2
  br label %set_pseudo_header_frame4.exit

bb.ay:                                            ; preds = %bb.au
  store i8 3, ptr %i.dl, align 2
  br label %set_pseudo_header_frame4.exit

bb.az:                                            ; preds = %bb.au
  store i8 4, ptr %i.dl, align 2
  br label %set_pseudo_header_frame4.exit

bb.ba:                                            ; preds = %bb.au
  store i8 5, ptr %i.dl, align 2
  br label %set_pseudo_header_frame4.exit

bb.bb:                                            ; preds = %bb.au
  store i8 0, ptr %i.dl, align 2
  br label %set_pseudo_header_frame4.exit

bb.bc:                                            ; preds = %bb.ac
  store i8 4, ptr %i.dd, align 1
  %i.dm = getelementptr i8, ptr %4, i64 70
  store i8 0, ptr %i.dm, align 2
  br label %set_pseudo_header_frame4.exit

bb.bd:                                            ; preds = %bb.ac
  store i8 5, ptr %i.dd, align 1
  %i.dn = getelementptr i8, ptr %4, i64 70
  store i8 0, ptr %i.dn, align 2
  br label %set_pseudo_header_frame4.exit

bb.be:                                            ; preds = %bb.ac
  store i8 6, ptr %i.dd, align 1
  %i.do = getelementptr i8, ptr %4, i64 70
  store i8 0, ptr %i.do, align 2
  br label %set_pseudo_header_frame4.exit

bb.bf:                                            ; preds = %bb.ac
  store i8 7, ptr %i.dd, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 29
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr i8, ptr %4, i64 70        ; 5 uses
  switch i8 %i.dq, label %bb.bk [
    i8 0, label %bb.bg
    i8 1, label %bb.bh
    i8 2, label %bb.bi
    i8 3, label %bb.bj
  ]

bb.bg:                                            ; preds = %bb.bf
  store i8 0, ptr %i.dr, align 2
  br label %set_pseudo_header_frame4.exit

bb.bh:                                            ; preds = %bb.bf
  store i8 1, ptr %i.dr, align 2
  br label %set_pseudo_header_frame4.exit

bb.bi:                                            ; preds = %bb.bf
  store i8 2, ptr %i.dr, align 2
  br label %set_pseudo_header_frame4.exit

bb.bj:                                            ; preds = %bb.bf
  store i8 3, ptr %i.dr, align 2
  br label %set_pseudo_header_frame4.exit

bb.bk:                                            ; preds = %bb.bf
  store i8 0, ptr %i.dr, align 2
  br label %set_pseudo_header_frame4.exit

bb.bl:                                            ; preds = %bb.ac
  store i8 0, ptr %i.dd, align 1
  %i.ds = getelementptr i8, ptr %4, i64 70
  store i8 0, ptr %i.ds, align 2
  br label %set_pseudo_header_frame4.exit

bb.bm:                                            ; preds = %ng_read_bytes.exit132
  %i.dt = getelementptr i8, ptr %4, i64 68
  store i8 5, ptr %i.dt, align 4
  %i.du = getelementptr i8, ptr %4, i64 69
  store i8 0, ptr %i.du, align 1
  %i.dv = getelementptr i8, ptr %4, i64 70
  store i8 0, ptr %i.dv, align 2
  br label %set_pseudo_header_frame4.exit

bb.bn:                                            ; preds = %ng_read_bytes.exit132
  %i.dw = getelementptr i8, ptr %4, i64 68
  store i8 6, ptr %i.dw, align 4
  %i.dx = getelementptr i8, ptr %4, i64 69
  store i8 0, ptr %i.dx, align 1
  %i.dy = getelementptr i8, ptr %4, i64 70
  store i8 0, ptr %i.dy, align 2
  br label %set_pseudo_header_frame4.exit

bb.bo:                                            ; preds = %ng_read_bytes.exit132
  %i.dz = getelementptr i8, ptr %4, i64 68
  store i8 7, ptr %i.dz, align 4
  %i.ea = getelementptr i8, ptr %4, i64 69
  store i8 0, ptr %i.ea, align 1
  %i.eb = getelementptr i8, ptr %4, i64 70
  store i8 0, ptr %i.eb, align 2
  br label %set_pseudo_header_frame4.exit

bb.bp:                                            ; preds = %ng_read_bytes.exit132
  %i.ec = getelementptr i8, ptr %4, i64 68
  store i8 0, ptr %i.ec, align 4
  %i.ed = getelementptr i8, ptr %4, i64 69
  store i8 0, ptr %i.ed, align 1
  %i.ee = getelementptr i8, ptr %4, i64 70
  store i8 0, ptr %i.ee, align 2
  br label %set_pseudo_header_frame4.exit

set_pseudo_header_frame4.exit:                    ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp
  %i.ef = getelementptr i8, ptr %4, i64 72
  store i16 %.val103.i, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %4, i64 74
  store i16 %.val101.i, ptr %i.eg, align 2
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.ei = getelementptr i8, ptr %4, i64 78
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ek = load <2 x i16>, ptr %i.eh, align 4
  %i.el = load <2 x i16>, ptr %i.ej, align 4
  %i.em = shufflevector <2 x i16> %i.ek, <2 x i16> %i.el, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i16> %i.em, ptr %i.ei, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 24
  %10 = load i32, ptr %i.en, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %i.eo = getelementptr i8, ptr %4, i64 88
  store i32 %11, ptr %i.eo, align 8
  br label %set_metadata_frame2.exit

bb.bq:                                            ; preds = %bb.a
  %i.ep = icmp ult i16 %i.b, 34
  br i1 %i.ep, label %g_strdup_inline.exit99, label %bb.br

g_strdup_inline.exit99:                           ; preds = %bb.bq
  store i32 -13, ptr %5, align 4
  %i.eq = tail call noalias dereferenceable_or_null(70) ptr @g_malloc(i64 noundef 70) #11 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(70) %i.eq, ptr noundef nonnull align 1 dereferenceable(70) @.str.16, i64 noundef 70, i1 noundef false) #10
  store ptr %i.eq, ptr %6, align 8
  br label %ng_read_bytes.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.er = call fastcc zeroext i1 @ng_read_bytes_or_eof(ptr noundef readonly %0, ptr noundef nonnull %9, i32 noundef 34, i1 noundef zeroext %1, ptr noundef %5, ptr noundef %6)
  br i1 %i.er, label %ng_read_bytes.exit136, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.es = load i32, ptr %5, align 4
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.bt, label %ng_read_bytes.exit.thread

bb.bt:                                            ; preds = %bb.bs
  store i32 -12, ptr %5, align 4
  br label %ng_read_bytes.exit.thread

ng_read_bytes.exit136:                            ; preds = %bb.br
  %.val113 = load i16, ptr %9, align 2            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 2
  %.val111 = load i16, ptr %i.eu, align 2         ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ew = load i8, ptr %i.ev, align 2             ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 5
  %i.ey = load i8, ptr %i.ex, align 1             ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 6
  %.val109 = load i16, ptr %i.ez, align 2         ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 10
  %.val = load i16, ptr %i.fa, align 2            ; 2 uses
  %i.fb = add nsw i32 %i.c, -34                   ; 2 uses
  %.val131 = load i32, ptr %i.d, align 8
  %cond.i = icmp eq i32 %.val131, 1
  br i1 %cond.i, label %bb.bu, label %set_metadata_frame2.exit

bb.bu:                                            ; preds = %ng_read_bytes.exit136
  %i.fc = getelementptr i8, ptr %4, i64 64
  store i32 -1, ptr %i.fc, align 8
  br label %set_metadata_frame2.exit

bb.bv:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.17, i32 noundef 7, ptr noundef nonnull @.str.18, i64 noundef 1328, ptr noundef nonnull @__func__.process_frame_record, ptr noundef nonnull @.str.19) #12
  unreachable

set_metadata_frame2.exit:                         ; preds = %bb.bu, %ng_read_bytes.exit136, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j, %set_pseudo_header_frame4.exit
  %.1 = phi i32 [ %i.ab, %bb.r ], [ %i.cg, %set_pseudo_header_frame4.exit ], [ %i.ab, %bb.j ], [ %i.ab, %bb.k ], [ %i.ab, %bb.l ], [ %i.ab, %bb.m ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ], [ %i.ab, %bb.q ], [ %i.fb, %ng_read_bytes.exit136 ], [ %i.fb, %bb.bu ] ; 2 uses
  %.091 = phi i16 [ %.val129, %bb.r ], [ %.val121, %set_pseudo_header_frame4.exit ], [ %.val129, %bb.j ], [ %.val129, %bb.k ], [ %.val129, %bb.l ], [ %.val129, %bb.m ], [ %.val129, %bb.o ], [ %.val129, %bb.p ], [ %.val129, %bb.q ], [ %.val113, %ng_read_bytes.exit136 ], [ %.val113, %bb.bu ]
  %.090 = phi i16 [ %.val127, %bb.r ], [ %.val119, %set_pseudo_header_frame4.exit ], [ %.val127, %bb.j ], [ %.val127, %bb.k ], [ %.val127, %bb.l ], [ %.val127, %bb.m ], [ %.val127, %bb.o ], [ %.val127, %bb.p ], [ %.val127, %bb.q ], [ %.val111, %ng_read_bytes.exit136 ], [ %.val111, %bb.bu ]
  %.089 = phi i16 [ %.val123, %bb.r ], [ %.val115, %set_pseudo_header_frame4.exit ], [ %.val123, %bb.j ], [ %.val123, %bb.k ], [ %.val123, %bb.l ], [ %.val123, %bb.m ], [ %.val123, %bb.o ], [ %.val123, %bb.p ], [ %.val123, %bb.q ], [ %.val, %ng_read_bytes.exit136 ], [ %.val, %bb.bu ] ; 2 uses
  %.088 = phi i16 [ %.val125, %bb.r ], [ %.val117, %set_pseudo_header_frame4.exit ], [ %.val125, %bb.j ], [ %.val125, %bb.k ], [ %.val125, %bb.l ], [ %.val125, %bb.m ], [ %.val125, %bb.o ], [ %.val125, %bb.p ], [ %.val125, %bb.q ], [ %.val109, %ng_read_bytes.exit136 ], [ %.val109, %bb.bu ] ; 5 uses
  %.087 = phi i8 [ %i.w, %bb.r ], [ %i.cb, %set_pseudo_header_frame4.exit ], [ %i.w, %bb.j ], [ %i.w, %bb.k ], [ %i.w, %bb.l ], [ %i.w, %bb.m ], [ %i.w, %bb.o ], [ %i.w, %bb.p ], [ %i.w, %bb.q ], [ %i.ew, %ng_read_bytes.exit136 ], [ %i.ew, %bb.bu ]
  %.0 = phi i8 [ %i.y, %bb.r ], [ %i.cd, %set_pseudo_header_frame4.exit ], [ %i.y, %bb.j ], [ %i.y, %bb.k ], [ %i.y, %bb.l ], [ %i.y, %bb.m ], [ %i.y, %bb.o ], [ %i.y, %bb.p ], [ %i.y, %bb.q ], [ %i.ey, %ng_read_bytes.exit136 ], [ %i.ey, %bb.bu ]
  %i.fd = zext i16 %.088 to i32                   ; 6 uses
  %i.fe = icmp samesign ult i32 %.1, %i.fd
  br i1 %i.fe, label %g_strdup_inline.exit, label %bb.bw

g_strdup_inline.exit:                             ; preds = %set_metadata_frame2.exit
  store i32 -13, ptr %5, align 4
  %i.ff = call noalias dereferenceable_or_null(50) ptr @g_malloc(i64 noundef 50) #11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(50) %i.ff, ptr noundef nonnull align 1 dereferenceable(50) @.str.20, i64 noundef 50, i1 noundef false) #10
  store ptr %i.ff, ptr %6, align 8
  br label %ng_read_bytes.exit.thread

bb.bw:                                            ; preds = %set_metadata_frame2.exit
  %.not96 = icmp eq ptr %2, null
  br i1 %.not96, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fg = sub nuw nsw i32 %.1, %i.fd
  store i32 %i.fg, ptr %2, align 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.fh = zext i16 %.089 to i32
  %.not97 = icmp eq i16 %.089, 0                  ; 2 uses
  %i.fi = select i1 %.not97, i32 1, i32 3
  %i.fj = load i32, ptr %i.h, align 4
  %i.fk = or i32 %i.fj, %i.fi
  store i32 %i.fk, ptr %i.h, align 4
  %i.fl = select i1 %.not97, i32 %i.fd, i32 %i.fh
  %i.fm = getelementptr i8, ptr %4, i64 48
  %i.fn = getelementptr i8, ptr %4, i64 52
  store i32 %i.fl, ptr %i.fn, align 4
  store i32 %i.fd, ptr %i.fm, align 8
  %i.fo = getelementptr i8, ptr %4, i64 264       ; 3 uses
  %i.fp = zext i16 %.088 to i64                   ; 3 uses
  call void @ws_buffer_assure_space(ptr noundef %i.fo, i64 noundef %i.fp)
  %.val.i137 = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr i8, ptr %4, i64 288       ; 3 uses
  %.val10.i = load i64, ptr %i.fq, align 8
  %i.fr = getelementptr i8, ptr %.val.i137, i64 %.val10.i
  %i.fs = call fastcc zeroext i1 @ng_read_bytes_or_eof(ptr noundef readonly %0, ptr noundef %i.fr, i32 noundef range(i32 0, 65536) %i.fd, i1 noundef zeroext %1, ptr noundef %5, ptr noundef %6)
  br i1 %i.fs, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ft = load i32, ptr %5, align 4
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.ca, label %ng_read_bytes.exit.thread

bb.ca:                                            ; preds = %bb.bz
  store i32 -12, ptr %5, align 4
  br label %ng_read_bytes.exit.thread

bb.cb:                                            ; preds = %bb.by
  %i.fv = load i64, ptr %i.fq, align 8
  %i.fw = add i64 %i.fv, %i.fp
  store i64 %i.fw, ptr %i.fq, align 8
  %i.fx = load i32, ptr %i.d, align 8             ; 2 uses
  %i.fy = getelementptr i8, ptr %4, i64 64        ; 3 uses
  %.val.i138 = load ptr, ptr %i.fo, align 8
  %i.fz = getelementptr i8, ptr %4, i64 280
  %.val23.i = load i64, ptr %i.fz, align 8
  %i.ga = getelementptr i8, ptr %.val.i138, i64 %.val23.i ; 8 uses
  switch i32 %i.fx, label %fix_pseudo_header.exit [
    i32 -1, label %bb.cc
    i32 13, label %bb.cp
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.gb = icmp eq i16 %.088, 0
  br i1 %i.gb, label %bb.cm, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gc = load i8, ptr %i.ga, align 1             ; 2 uses
  %i.gd = icmp eq i8 %i.gc, -1
  br i1 %i.gd, label %bb.cm, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i = icmp eq i16 %.088, 1
  br i1 %.not.i.i, label %bb.cl, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  switch i8 %i.gc, label %.thread23.i.i.preheader [
    i8 7, label %bb.cg
    i8 15, label %bb.ch
    i8 -113, label %bb.ci
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.ge = getelementptr i8, ptr %i.ga, i64 1
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = icmp eq i8 %i.gf, 3
  br i1 %i.gg, label %bb.cm, label %.thread23.i.i.preheader

bb.ch:                                            ; preds = %bb.cf
  %i.gh = getelementptr i8, ptr %i.ga, i64 1
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = icmp eq i8 %i.gi, 0
  br i1 %i.gj, label %bb.cm, label %.thread23.i.i.preheader

bb.ci:                                            ; preds = %bb.cf
  %i.gk = getelementptr i8, ptr %i.ga, i64 1
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = icmp eq i8 %i.gl, 0
  br i1 %i.gm, label %bb.cm, label %.thread23.i.i.preheader

.thread23.i.i.preheader:                          ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf
  br label %.thread23.i.i

.thread23.i.i:                                    ; preds = %.thread23.i.i.preheader, %bb.cj
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.cj ], [ 0, %.thread23.i.i.preheader ] ; 4 uses
  %i.gn = getelementptr i8, ptr %i.ga, i64 %indvars.iv.i.i
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = and i8 %i.go, 1
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.cj, label %.critedge.i.i

bb.cj:                                            ; preds = %.thread23.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.fp
  br i1 %exitcond.not.i.i, label %fix_pseudo_header.exit, label %.thread23.i.i, !llvm.loop !11

.critedge.i.i:                                    ; preds = %.thread23.i.i
  %i.gr = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.gs = add nsw i32 %i.fd, -1
  %.not22.i.i = icmp sgt i32 %i.gs, %i.gr
  br i1 %.not22.i.i, label %bb.ck, label %fix_pseudo_header.exit

bb.ck:                                            ; preds = %.critedge.i.i
  %i.gt = getelementptr i8, ptr %i.ga, i64 %indvars.iv.i.i
  %i.gu = getelementptr i8, ptr %i.gt, i64 1
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = icmp eq i8 %i.gv, 3
  br i1 %i.gw, label %fix_pseudo_header.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ce
  br label %fix_pseudo_header.exit

bb.cm:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cd, %bb.cc
  %.019.i.ph.i = phi i32 [ 40, %bb.ci ], [ 40, %bb.ch ], [ 35, %bb.cg ], [ 19, %bb.cd ], [ 19, %bb.cc ] ; 2 uses
  %i.gx = load i8, ptr %i.fy, align 8
  %i.gy = icmp eq i8 %i.gx, 0
end_hunk_1
begin_hunk_2_@ngsniffer_dump:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 0, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %.0, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 4, ptr %i.av, align 2
  %i.aw = load i32, ptr %i.h, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [4 x i8], ptr @wtap_encap, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i8 1, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 11
  store i8 1, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.be, i8 0, i64 6, i1 false)
  %i.bf = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 18, ptr noundef %2)
  br i1 %i.bf, label %._crit_edge, label %bb.w

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.g
  %i.bg = phi i32 [ %.pre, %._crit_edge ], [ %i.l, %bb.g ] ; 2 uses
  store i8 4, ptr %i.a, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.bh, align 1
  %i.bi = trunc i32 %i.bg to i8
  %i.bj = add i8 %i.bi, 14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = trunc i32 %i.bg to i16
  %i.bm = add i16 %i.bl, 14
  %i.bn = lshr i16 %i.bm, 8
  %i.bo = trunc nuw i16 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %i.br, align 1
  %i.bs = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 6, ptr noundef %2)
  br i1 %i.bs, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr i8, ptr %1, i64 16
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.e, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = sub i64 %i.bu, %i.bw                    ; 2 uses
  %i.by = sdiv i64 %i.bx, 86400                   ; 2 uses
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = and i64 %i.by, 255
  %.neg = mul nsw i64 %i.cb, -86400
  %i.cc = add i64 %.neg, %i.bx
  %i.cd = mul i64 %i.cc, 1000000000000
  %i.ce = getelementptr i8, ptr %1, i64 24
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul nsw i64 %i.cg, 1000
  %i.ci = add i64 %i.cd, %i.ch
  %i.cj = udiv i64 %i.ci, 838096                  ; 3 uses
  %i.ck = trunc i64 %i.cj to i16
  %i.cl = lshr i64 %i.cj, 16
  %i.cm = trunc i64 %i.cl to i16
  %i.cn = lshr i64 %i.cj, 32
  %i.co = trunc i64 %i.cn to i8
  store i16 %i.ck, ptr %4, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.cm, ptr %i.cp, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 %i.co, ptr %i.cq, align 2
  %i.cr = load i32, ptr %i.b, align 8             ; 2 uses
  %i.cs = trunc i32 %i.cr to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.cs, ptr %i.ct, align 2
  %i.cu = load i32, ptr %i.h, align 8
  switch i32 %i.cu, label %bb.t [
    i32 12, label %bb.n
    i32 27, label %bb.n
    i32 19, label %bb.o
    i32 36, label %bb.o
    i32 17, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.cv = load i8, ptr %i.c, align 8
  %i.cw = and i8 %i.cv, -128
  %i.cx = xor i8 %i.cw, -128
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.cx, ptr %i.cy, align 2
  br label %bb.u

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.cz = load i8, ptr %i.c, align 8, !range !6, !noundef !7
  %i.da = xor i8 %i.cz, -1
  %i.db = shl i8 %i.da, 7
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.db, ptr %i.dc, align 2
  br label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.dd = load i8, ptr %i.c, align 8, !range !6, !noundef !7
  %i.de = shl nuw i8 %i.dd, 7                     ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i8 %i.de, ptr %i.df, align 2
  %i.dg = getelementptr i8, ptr %1, i64 65
  %i.dh = load i8, ptr %i.dg, align 1
  switch i8 %i.dh, label %bb.u [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.di = or disjoint i8 %i.de, 24
  store i8 %i.di, ptr %i.df, align 2
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.dj = or disjoint i8 %i.de, 8
  store i8 %i.dj, ptr %i.df, align 2
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.dk = or disjoint i8 %i.de, 16
  store i8 %i.dk, ptr %i.df, align 2
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.dl, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.o, %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 0, ptr %i.dm, align 1
  %i.dn = getelementptr i8, ptr %1, i64 52
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %.not72 = icmp eq i32 %i.do, %i.cr
  %i.dp = trunc i32 %i.do to i16
  %spec.select = select i1 %.not72, i16 0, i16 %i.dp
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %spec.select, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i16 0, ptr %i.dr, align 2
  %i.ds = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %4, i64 noundef 14, ptr noundef %2)
  br i1 %i.ds, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dt = getelementptr i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.dt, align 8
  %i.du = getelementptr i8, ptr %1, i64 280
  %.val73 = load i64, ptr %i.du, align 8
  %i.dv = getelementptr i8, ptr %.val, i64 %.val73
  %i.dw = load i32, ptr %i.b, align 8
  %i.dx = zext i32 %i.dw to i64
  %i.dy = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.dv, i64 noundef %i.dx, ptr noundef %2)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.l, %bb.k, %bb.f, %bb.d, %bb.b
  %.065 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.u ], [ %i.dy, %bb.v ], [ false, %bb.l ], [ false, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i1 %.065
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @ngsniffer_dump_finish(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @__const.ngsniffer_dump_finish.buf, i64 6, i1 false)
  %i.b = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 6, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %i.b
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_dump_file_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_unwritable_rec_type_err_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @localtime(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { allocsize(0) }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
end_hunk_2
