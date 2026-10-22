Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-drbd?download=true
inline.NumInlined: 23
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_drbd_pdu:bb.a
bb.a:
  tail call fastcc void @dissect_drbd_message(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @read_drbd_packet_len(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.b = icmp eq i32 %i.a, -2089549209
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %1, 6
  %i.d = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.c)
  %i.e = zext i16 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %1)
  %i.h = icmp ugt i32 %i.g, 15
  %i.i = icmp eq i32 %i.a, -2044662752
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %1, 8
  %i.k = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.j)
  %i.l = add i32 %i.k, 16
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %1)
  %i.n = icmp eq i16 %i.m, -31910
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = add i32 %1, 4
  %i.p = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.o)
  %i.q = add i32 %i.p, 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.l, %bb.d ], [ %i.q, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_throw(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_drbd_message(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i16 -1, ptr %i.a, align 2
  %i.b = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = load i32, ptr @proto_drbd, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.f = load i32, ptr @ett_drbd, align 4
  %i.g = tail call ptr @proto_item_add_subtree(ptr noundef %i.e, i32 noundef %i.f) ; 2 uses
  %i.h = call fastcc ptr @decode_header(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull %i.a) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 416
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i16, ptr %i.a, align 2
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = tail call ptr @val_to_str(ptr noundef %i.j, i32 noundef %i.l, ptr noundef @packet_names, ptr noundef @.str.378) ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = tail call ptr @col_get_text(ptr noundef %i.n, i32 noundef 25) ; 2 uses
  %.not46 = icmp eq ptr %i.o, null
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.o, align 1
  %.not47 = icmp eq i8 %i.p, 0
  br i1 %.not47, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr i8, ptr %1, i64 288
  %i.s = load i32, ptr %i.r, align 8
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr i8, ptr %1, i64 292
  %i.v = load i32, ptr %i.u, align 4
  %i.w = trunc i32 %i.v to i16
  tail call void @col_append_ports(ptr noundef %i.q, i32 noundef 25, i32 noundef 2, i16 noundef zeroext %i.t, i16 noundef zeroext %i.w)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = load ptr, ptr %i.b, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.x, i32 noundef 25, ptr noundef @.str.379, ptr noundef %i.m)
  %i.y = load ptr, ptr %i.b, align 8
  tail call void @col_set_fence(ptr noundef %i.y, i32 noundef 25)
  %i.z = getelementptr i8, ptr %1, i64 288
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %1, i64 292
  %i.ac = load i32, ptr %i.ab, align 4
  %..i = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ac) ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 208       ; 8 uses
  %i.ae = getelementptr i8, ptr %1, i64 232       ; 8 uses
  %i.af = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ah = icmp sgt i32 %i.af, %i.ag
  br i1 %i.ah, label %.thread40.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp slt i32 %i.af, %i.ag
  br i1 %i.ai, label %.thread40.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr i8, ptr %1, i64 212
  %i.ak = load i32, ptr %i.aj, align 4            ; 4 uses
  %i.al = getelementptr i8, ptr %1, i64 236
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp sgt i32 %i.ak, %i.am
  br i1 %i.an, label %.thread40.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp slt i32 %i.ak, %i.am
  br i1 %i.ao, label %.thread40.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp eq i32 %i.ak, 0
  br i1 %i.ap, label %.thread40.i, label %cmp_address.exit.i

cmp_address.exit.i:                               ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %1, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %1, i64 240
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = sext i32 %i.ak to i64
  %i.av = tail call i32 @memcmp(ptr noundef %i.ar, ptr noundef %i.at, i64 noundef %i.au) #11
  %.fr.i = freeze i32 %i.av
  %i.aw = icmp slt i32 %.fr.i, 0                  ; 2 uses
  %spec.select = select i1 %i.aw, ptr %i.ad, ptr %i.ae
  %spec.select53 = select i1 %i.aw, ptr %i.ae, ptr %i.ad
  br label %.thread40.i

.thread40.i:                                      ; preds = %cmp_address.exit.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.ae, %bb.g ], [ %spec.select, %cmp_address.exit.i ], [ %i.ae, %bb.e ], [ %i.ae, %bb.i ], [ %i.ad, %bb.h ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ay = phi ptr [ %i.ad, %bb.g ], [ %spec.select53, %cmp_address.exit.i ], [ %i.ad, %bb.e ], [ %i.ad, %bb.i ], [ %i.ae, %bb.h ], [ %i.ae, %bb.f ] ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call ptr @find_conversation(i32 noundef %i.ba, ptr noundef %i.ax, ptr noundef %i.ay, i32 noundef 2, i32 noundef %..i, i32 noundef 0, i32 noundef 131072) ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.j, label %find_drbd_conversation.exit

bb.j:                                             ; preds = %.thread40.i
  %i.bc = load i32, ptr %i.az, align 4
  %i.bd = tail call ptr @conversation_new(i32 noundef %i.bc, ptr noundef %i.ax, ptr noundef %i.ay, i32 noundef 2, i32 noundef %..i, i32 noundef 0, i32 noundef 10)
  br label %find_drbd_conversation.exit

find_drbd_conversation.exit:                      ; preds = %.thread40.i, %bb.j
  %.0.i = phi ptr [ %i.bb, %.thread40.i ], [ %i.bd, %bb.j ] ; 2 uses
  %i.be = load i32, ptr @proto_drbd, align 4
  %i.bf = tail call ptr @conversation_get_proto_data(ptr noundef %.0.i, i32 noundef %i.be) ; 2 uses
  %.not48 = icmp eq ptr %i.bf, null
  br i1 %.not48, label %bb.k, label %bb.l

bb.k:                                             ; preds = %find_drbd_conversation.exit
  %i.bg = tail call ptr @wmem_file_scope()
  %i.bh = tail call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.bg, i64 noundef 8) #12 ; 3 uses
  %i.bi = tail call ptr @wmem_file_scope()
  %i.bj = tail call ptr @wmem_map_new(ptr noundef %i.bi, ptr noundef @drbd_twopc_key_hash, ptr noundef @drbd_twopc_key_equal)
  store ptr %i.bj, ptr %i.bh, align 8
  %i.bk = load i32, ptr @proto_drbd, align 4
  tail call void @conversation_add_proto_data(ptr noundef %.0.i, i32 noundef %i.bk, ptr noundef %i.bh)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %find_drbd_conversation.exit
  %.0 = phi ptr [ %i.bf, %find_drbd_conversation.exit ], [ %i.bh, %bb.k ] ; 2 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.o
  %3 = getelementptr [24 x i8], ptr @payload_decoders, i64 %indvars.iv.i ; 2 uses
  %4 = getelementptr i8, ptr %3, i64 24
  %i.bl = load i32, ptr %4, align 8
  %i.bm = icmp eq i32 %i.bl, %i.l
  br i1 %i.bm, label %find_payload_decoder.exit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 74
  br i1 %exitcond.not.i.1, label %.thread, label %bb.o, !llvm.loop !0

bb.o:                                             ; preds = %bb.n, %bb.l
  %indvars.iv.i = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i.1, %bb.n ] ; 3 uses
  %i.bn = getelementptr [24 x i8], ptr @payload_decoders, i64 %indvars.iv.i ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 16
  %i.bp = icmp eq i32 %i.bo, %i.l
  br i1 %i.bp, label %find_payload_decoder.exit, label %bb.m

find_payload_decoder.exit.split.loop.exit:        ; preds = %bb.m
  %5 = getelementptr i8, ptr %3, i64 24
  br label %find_payload_decoder.exit

find_payload_decoder.exit:                        ; preds = %bb.o, %find_payload_decoder.exit.split.loop.exit
  %.lcssa = phi ptr [ %5, %find_payload_decoder.exit.split.loop.exit ], [ %i.bn, %bb.o ] ; 3 uses
  %i.bq = getelementptr i8, ptr %1, i64 80
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 53
  %i.bt = load i16, ptr %i.bs, align 1
  %i.bu = and i16 %i.bt, 8
  %i.bv = icmp eq i16 %i.bu, 0
  %i.bw = icmp ne ptr %.lcssa, null               ; 2 uses
  %or.cond54 = and i1 %i.bw, %i.bv
  br i1 %or.cond54, label %bb.p, label %bb.q

bb.p:                                             ; preds = %find_payload_decoder.exit
  %i.bx = getelementptr i8, ptr %.lcssa, i64 8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not49 = icmp eq ptr %i.by, null
  br i1 %.not49, label %bb.q, label %6

6:                                                ; preds = %bb.p
  tail call void %i.by(ptr noundef nonnull %i.h, ptr noundef %1, ptr noundef %.0)
  br label %bb.q

bb.q:                                             ; preds = %6, %bb.p, %find_payload_decoder.exit
  %i.bz = icmp eq ptr %2, null
  br i1 %i.bz, label %bb.u, label %bb.r

.thread:                                          ; preds = %bb.n
  %i.ca = icmp eq ptr %2, null
  br i1 %i.ca, label %bb.u, label %.thread52

.thread52:                                        ; preds = %.thread
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.e, ptr noundef @.str.380, ptr noundef %i.m)
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.e, ptr noundef @.str.380, ptr noundef %i.m)
  br i1 %i.bw, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr i8, ptr %.lcssa, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not50 = icmp eq ptr %i.cc, null
  br i1 %.not50, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void %i.cc(ptr noundef nonnull %i.h, ptr noundef %i.g, ptr noundef %.0)
  br label %bb.u

bb.u:                                             ; preds = %.thread52, %.thread, %bb.q, %bb.t, %bb.s, %bb.r, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @decode_header(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.b = icmp eq i32 %i.a, -2089549209
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 4)
  store i16 %i.c, ptr %2, align 2
  %i.d = load i32, ptr @hf_drbd_command, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_drbd_length, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.f, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.i = icmp ugt i32 %i.h, 15
  %i.j = icmp eq i32 %i.a, -2044662752
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 6)
  store i16 %i.k, ptr %2, align 2
  %i.l = load i32, ptr @hf_drbd_volume, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.l, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_drbd_command, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.n, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_drbd_length, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.r = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 0)
  %i.s = icmp eq i16 %i.r, -31910
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  store i16 %i.t, ptr %2, align 2
  %i.u = load i32, ptr @hf_drbd_command, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.u, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_drbd_length, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.w, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d, %bb.f
  %.sink = phi i32 [ 8, %bb.f ], [ 16, %bb.d ], [ 8, %bb.b ]
  %i.y = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.sink)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %i.y, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @col_get_text(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_ports(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_fence(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @drbd_twopc_key_hash(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @drbd_twopc_key_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.e, %i.g
  %i.i = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @decode_payload_connection_features(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_drbd_protocol_min, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.c = load i32, ptr @hf_drbd_feature_flags, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.c, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_drbd_protocol_max, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.g = load i32, ptr @hf_drbd_sender_node_id, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_drbd_receiver_node_id, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.i, ptr noundef %0, i32 noundef 16, i32 noundef 4, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @decode_payload_auth_challenge(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_drbd_auth_challenge_nonce, align 4
  %i.b = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 64, ptr noundef null, ptr noundef @.str.6) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @decode_payload_auth_response(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr @hf_drbd_auth_response_hash, align 4
  %i.b = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef @.str.8) ; 0 uses
end_hunk_0
