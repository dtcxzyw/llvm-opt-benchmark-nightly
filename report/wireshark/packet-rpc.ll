Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-rpc?download=true
inline.NumInlined: 76
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_rpc_authgss_integ_data:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #18
  unreachable

rpc_roundup.exit:                                 ; preds = %bb.a
  %i.i = add i32 %3, 4                            ; 3 uses
  %i.j = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.i)
  %i.k = icmp slt i32 %i.b, %i.a
  %i.l = add i32 %i.b, -4
  %spec.select = select i1 %i.k, i32 %i.l, i32 %i.g ; 2 uses
  %i.m = add i32 %spec.select, 4
  %i.n = load i32, ptr @ett_rpc_gss_data, align 4
  %i.o = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %i.m, i32 noundef %i.n, ptr noundef null, ptr noundef nonnull @.str.124) ; 3 uses
  %i.p = load i32, ptr @hf_rpc_authgss_data_length, align 4
  %i.q = tail call ptr @proto_tree_add_uint(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef %i.c) ; 0 uses
  %i.r = load i32, ptr @hf_rpc_authgss_seq, align 4
  %i.s = tail call ptr @proto_tree_add_uint(ptr noundef %i.o, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.i, i32 noundef 4, i32 noundef %i.j) ; 0 uses
  %i.t = add i32 %3, 8
  %.not.i39 = icmp eq ptr %4, null
  br i1 %.not.i39, label %call_dissect_function.exit, label %bb.c

bb.c:                                             ; preds = %rpc_roundup.exit
  %i.u = load ptr, ptr %1, align 8
  %.not17.i = icmp eq ptr %5, null
  br i1 %.not17.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %5, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.t)
  %i.w = tail call i32 @call_dissector_with_data(ptr noundef nonnull %4, ptr noundef %i.v, ptr noundef %1, ptr noundef %i.o, ptr noundef %6) ; 0 uses
  store ptr %i.u, ptr %1, align 8
  br label %call_dissect_function.exit

call_dissect_function.exit:                       ; preds = %rpc_roundup.exit, %bb.e
  %i.x = add i32 %i.i, %spec.select
  %i.y = load i32, ptr @hf_rpc_authgss_checksum, align 4
  %i.z = tail call fastcc i32 @dissect_rpc_authgss_token(ptr noundef %0, ptr noundef %2, i32 noundef %i.x, ptr noundef %1, i32 noundef %i.y)
  ret i32 %i.z
}

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_rpc_authgssapi_initarg(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ett_rpc_authgssapi_msg, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef -1, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.344) ; 2 uses
  %i.c = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %2)
  %i.d = load i32, ptr @hf_rpc_authgssapi_msgv, align 4
  %i.e = tail call ptr @proto_tree_add_uint(ptr noundef %i.b, i32 noundef %i.d, ptr noundef %0, i32 noundef %2, i32 noundef 4, i32 noundef %i.c) ; 0 uses
  %i.f = add i32 %2, 4
  %i.g = load i32, ptr @hf_rpc_authgss_token, align 4
  %i.h = tail call fastcc i32 @dissect_rpc_authgss_token(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.f, ptr noundef %3, i32 noundef %i.g)
  ret i32 %i.h
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_rpc_authgssapi_initres(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ett_rpc_authgssapi_msg, align 4
  %i.b = tail call ptr @proto_tree_add_subtree(ptr noundef %1, ptr noundef %0, i32 noundef %2, i32 noundef -1, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.344) ; 6 uses
  %i.c = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %2)
  %i.d = load i32, ptr @hf_rpc_authgssapi_msgv, align 4
  %i.e = tail call ptr @proto_tree_add_uint(ptr noundef %i.b, i32 noundef %i.d, ptr noundef %0, i32 noundef %2, i32 noundef 4, i32 noundef %i.c) ; 0 uses
  %i.f = add i32 %2, 4
  %i.g = load i32, ptr @hf_rpc_authgssapi_handle, align 4
  %i.h = tail call i32 @dissect_rpc_opaque_data(ptr noundef %0, i32 noundef %i.f, ptr noundef %i.b, ptr noundef %3, i32 noundef %i.g, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, ptr noundef null) ; 4 uses
  %i.i = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.h)
  %i.j = load i32, ptr @hf_rpc_authgss_major, align 4
  %i.k = tail call ptr @proto_tree_add_uint(ptr noundef %i.b, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.h, i32 noundef 4, i32 noundef %i.i) ; 0 uses
  %i.l = add i32 %i.h, 4                          ; 2 uses
  %i.m = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.l)
  %i.n = load i32, ptr @hf_rpc_authgss_minor, align 4
  %i.o = tail call ptr @proto_tree_add_uint(ptr noundef %i.b, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.l, i32 noundef 4, i32 noundef %i.m) ; 0 uses
  %i.p = add i32 %i.h, 8
  %i.q = load i32, ptr @hf_rpc_authgss_token, align 4
  %i.r = tail call fastcc i32 @dissect_rpc_authgss_token(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.p, ptr noundef %3, i32 noundef %i.q)
  %i.s = load i32, ptr @hf_rpc_authgssapi_isn, align 4
  %i.t = tail call i32 @dissect_rpc_opaque_data(ptr noundef %0, i32 noundef %i.r, ptr noundef %i.b, ptr noundef %3, i32 noundef %i.s, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
  ret i32 %i.t
}

; Function Attrs: null_pointer_is_valid
declare void @dissect_fhandle_hidden(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @show_fragment_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_rpc_authgss_token(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %2) ; 6 uses
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = sub nuw nsw i32 4, %i.b
  %i.d = select i1 %.not.i, i32 0, i32 %i.c
  %i.e = add i32 %i.d, %i.a                       ; 2 uses
  %i.f = icmp ult i32 %i.e, %i.a
  br i1 %i.f, label %bb.b, label %rpc_roundup.exit

bb.b:                                             ; preds = %bb.a
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #18
  unreachable

rpc_roundup.exit:                                 ; preds = %bb.a
  %i.g = add i32 %i.e, 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %4, ptr noundef %0, i32 noundef %2, i32 noundef %i.g, i32 noundef 0)
  %i.i = load i32, ptr @ett_rpc_gss_token, align 4
  %i.j = tail call ptr @proto_item_add_subtree(ptr noundef %i.h, i32 noundef %i.i) ; 2 uses
  %i.k = load i32, ptr @hf_rpc_authgss_token_length, align 4
  %i.l = tail call ptr @proto_tree_add_uint(ptr noundef %i.j, i32 noundef %i.k, ptr noundef %0, i32 noundef %2, i32 noundef 4, i32 noundef %i.a) ; 0 uses
  %i.m = add i32 %2, 4                            ; 4 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rpc_roundup.exit
  %i.n = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.m)
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.a)
  %i.o = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.m, i32 noundef %spec.select)
  %i.p = load ptr, ptr @gssapi_handle, align 8
  %i.q = tail call i32 @call_dissector(ptr noundef %i.p, ptr noundef %i.o, ptr noundef %3, ptr noundef %i.j)
  %i.r = add i32 %i.q, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rpc_roundup.exit
  %.029 = phi i32 [ %i.r, %bb.c ], [ %i.m, %rpc_roundup.exit ] ; 3 uses
  %i.s = and i32 %.029, 3                         ; 2 uses
  %.not.i32 = icmp eq i32 %i.s, 0
  %i.t = sub nuw nsw i32 4, %i.s
  %i.u = select i1 %.not.i32, i32 0, i32 %i.t
  %i.v = add i32 %i.u, %.029                      ; 2 uses
  %i.w = icmp ult i32 %i.v, %.029
  br i1 %i.w, label %bb.e, label %rpc_roundup.exit33

bb.e:                                             ; preds = %bb.d
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #18
  unreachable

rpc_roundup.exit33:                               ; preds = %bb.d
  ret i32 %i.v
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @dissect_rpc_tcp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not48 = icmp eq i32 %i.a, 0
  br i1 %.not48, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = getelementptr i8, ptr %1, i64 80
  %i.d = getelementptr i8, ptr %1, i64 348
  %i.e = getelementptr i8, ptr %1, i64 352
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %.03751 = phi i1 [ true, %.lr.ph ], [ false, %bb.ac ] ; 2 uses
  %.03850 = phi i1 [ false, %.lr.ph ], [ true, %bb.ac ] ; 5 uses
  %.03949 = phi i32 [ 0, %.lr.ph ], [ %i.bz, %bb.ac ] ; 7 uses
  %i.f = load i32, ptr @proto_rpc, align 4
  %i.g = load i32, ptr @ett_rpc, align 4
  %i.h = tail call fastcc i32 @dissect_rpc_fragment(ptr noundef %0, i32 noundef %.03949, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %i.f, i32 noundef %i.g, i1 noundef zeroext %.03751, ptr noundef %4, ptr noundef %5) ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %or.cond = and i1 %.03751, %i.i
  %i.j = load i8, ptr @rpc_find_fragment_start, align 1, !range !6
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond3 = select i1 %or.cond, i1 %i.k, i1 false
  br i1 %or.cond3, label %bb.c, label %find_and_dissect_rpc_fragment.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr @proto_rpc, align 4
  %i.m = load i32, ptr @ett_rpc, align 4
  %i.n = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.03949) ; 4 uses
  %i.o = icmp ult i32 %i.n, 28
  br i1 %i.o, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %.03949, i32 noundef %i.n) ; 3 uses
  %i.q = icmp ne ptr %i.p, null
  %i.r = icmp ne i32 %i.n, 28
  %or.cond.i.i = and i1 %i.r, %i.q
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.thread

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.s = load i32, ptr @max_rpc_tcp_pdu_size, align 4
  %scevgep.i.i = getelementptr i8, ptr %i.p, i64 -1
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %.03043.i.i = phi i32 [ 12, %.lr.ph.i.i ], [ %.030.be.i.i, %.backedge.i.i ] ; 5 uses
  %i.t = zext i32 %.03043.i.i to i64              ; 2 uses
  %i.u = getelementptr i8, ptr %i.p, i64 %i.t     ; 18 uses
  %i.v = getelementptr i8, ptr %i.u, i64 15
  %scevgep47.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1
  %.not34.i.i = icmp eq i8 %i.w, 0
  br i1 %.not34.i.i, label %bb.f, label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.042.lcssa.i.i = phi i32 [ 16, %bb.e ], [ 15, %bb.f ], [ 14, %bb.g ], [ 13, %bb.h ], [ 12, %bb.i ], [ 11, %bb.j ], [ 10, %bb.k ], [ 9, %bb.l ], [ 8, %bb.m ], [ 7, %bb.n ], [ 6, %bb.o ], [ 5, %bb.p ], [ 4, %bb.q ], [ 3, %bb.r ], [ 2, %bb.s ], [ 1, %bb.t ]
  %i.x = add i32 %.042.lcssa.i.i, %.03043.i.i
  br label %.backedge.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.u, i64 14
  %i.z = load i8, ptr %i.y, align 1
  %.not34.1.i.i = icmp eq i8 %i.z, 0
  br i1 %.not34.1.i.i, label %bb.g, label %.loopexit.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.u, i64 13
  %i.ab = load i8, ptr %i.aa, align 1
  %.not34.2.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not34.2.i.i, label %bb.h, label %.loopexit.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.u, i64 12
  %i.ad = load i8, ptr %i.ac, align 1
  %.not34.3.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not34.3.i.i, label %bb.i, label %.loopexit.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.u, i64 11
  %i.af = load i8, ptr %i.ae, align 1
  %.not34.4.i.i = icmp eq i8 %i.af, 0
  br i1 %.not34.4.i.i, label %bb.j, label %.loopexit.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.u, i64 10
  %i.ah = load i8, ptr %i.ag, align 1
  %.not34.5.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not34.5.i.i, label %bb.k, label %.loopexit.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %i.u, i64 9
  %i.aj = load i8, ptr %i.ai, align 1
  %.not34.6.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not34.6.i.i, label %bb.l, label %.loopexit.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.u, i64 8
  %i.al = load i8, ptr %i.ak, align 1
  %.not34.7.i.i = icmp eq i8 %i.al, 0
  br i1 %.not34.7.i.i, label %bb.m, label %.loopexit.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %i.u, i64 7
  %i.an = load i8, ptr %i.am, align 1
  %.not34.8.i.i = icmp eq i8 %i.an, 0
  br i1 %.not34.8.i.i, label %bb.n, label %.loopexit.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.u, i64 6
  %i.ap = load i8, ptr %i.ao, align 1
  %.not34.9.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not34.9.i.i, label %bb.o, label %.loopexit.thread.i.i

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr i8, ptr %i.u, i64 5
  %i.ar = load i8, ptr %i.aq, align 1
  %.not34.10.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not34.10.i.i, label %bb.p, label %.loopexit.thread.i.i

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr i8, ptr %i.u, i64 4
  %i.at = load i8, ptr %i.as, align 1
  %.not34.11.i.i = icmp eq i8 %i.at, 0
  br i1 %.not34.11.i.i, label %bb.q, label %.loopexit.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr i8, ptr %i.u, i64 3
  %i.av = load i8, ptr %i.au, align 1
  %.not34.12.i.i = icmp eq i8 %i.av, 0
  br i1 %.not34.12.i.i, label %bb.r, label %.loopexit.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %i.u, i64 2
  %i.ax = load i8, ptr %i.aw, align 1
  %.not34.13.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not34.13.i.i, label %bb.s, label %.loopexit.thread.i.i

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr i8, ptr %i.u, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %.not34.14.i.i = icmp eq i8 %i.az, 0
  br i1 %.not34.14.i.i, label %bb.t, label %.loopexit.thread.i.i

bb.t:                                             ; preds = %bb.s
  %i.ba = load i8, ptr %i.u, align 1
  %.not34.15.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not34.15.i.i, label %.loopexit.i.i, label %.loopexit.thread.i.i

.loopexit.i.i:                                    ; preds = %bb.t
  %i.bb = icmp eq ptr %scevgep47.i.i, null
  br i1 %i.bb, label %.backedge.i.i, label %bb.u

bb.u:                                             ; preds = %.loopexit.i.i
  %i.bc = getelementptr i8, ptr %i.u, i64 -4
  %i.bd = load i32, ptr %i.bc, align 1
  %i.be = icmp eq i32 %i.bd, 16777216
  br i1 %i.be, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr i8, ptr %i.u, i64 -12
  %6 = load i32, ptr %i.bf, align 1
  %.masked37.i.i = and i32 %6, -129
  %7 = tail call i32 @llvm.bswap.i32(i32 %.masked37.i.i)
  %.not35.i.i = icmp ugt i32 %7, %i.s
  br i1 %.not35.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bg = add i32 %.03043.i.i, 1
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.w, %.loopexit.i.i, %.loopexit.thread.i.i
  %.030.be.i.i = phi i32 [ %i.bg, %bb.w ], [ %.03043.i.i, %.loopexit.i.i ], [ %i.x, %.loopexit.thread.i.i ] ; 2 uses
  %i.bh = sub i32 %i.n, %.030.be.i.i
  %i.bi = icmp ugt i32 %i.bh, 16
  br i1 %i.bi, label %bb.e, label %.thread, !llvm.loop !19

bb.x:                                             ; preds = %bb.v
  %i.bj = add i32 %.03043.i.i, -12                ; 2 uses
  %i.bk = add i32 %i.bj, %.03949
  %i.bl = tail call fastcc i32 @dissect_rpc_fragment(ptr noundef %0, i32 noundef %i.bk, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %i.l, i32 noundef %i.m, i1 noundef zeroext true, ptr noundef readonly %4, ptr noundef readonly %5) ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  %i.bn = add i32 %i.bl, %i.bj
  br i1 %i.bm, label %.thread, label %find_and_dissect_rpc_fragment.exit

find_and_dissect_rpc_fragment.exit:               ; preds = %bb.x, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.bn, %bb.x ] ; 5 uses
  %i.bo = icmp slt i32 %.0, 0
  br i1 %i.bo, label %.thread, label %bb.y

bb.y:                                             ; preds = %find_and_dissect_rpc_fragment.exit
  %i.bp = icmp eq i32 %.0, 0
  br i1 %i.bp, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = load ptr, ptr %i.b, align 8
  tail call void @col_set_fence(ptr noundef %i.bq, i32 noundef 25)
  %i.br = load ptr, ptr %i.c, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 53
  %i.bt = load i16, ptr %i.bs, align 1
  %i.bu = and i16 %i.bt, 8
  %.not41 = icmp eq i16 %i.bu, 0
  br i1 %.not41, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bv = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.03949)
  %i.bw = icmp ugt i32 %.0, %i.bv
  br i1 %i.bw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i16 2, ptr %i.d, align 4
  %i.bx = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.03949)
  %i.by = sub i32 %.0, %i.bx
  store i32 %i.by, ptr %i.e, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %i.bz = add i32 %.0, %.03949                    ; 2 uses
  %i.ca = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bz)
  %.not = icmp eq i32 %i.ca, 0
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !20

.thread:                                          ; preds = %find_and_dissect_rpc_fragment.exit, %bb.y, %bb.ac, %bb.x, %bb.d, %bb.c, %.backedge.i.i, %bb.a
  %.040 = phi i1 [ false, %bb.a ], [ %.03850, %.backedge.i.i ], [ %.03850, %bb.x ], [ %.03850, %bb.d ], [ true, %bb.ac ], [ %.03850, %bb.y ], [ true, %find_and_dissect_rpc_fragment.exit ], [ %.03850, %bb.c ]
  ret i1 %.040
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_rpc_fragment(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, ptr nofree noundef readonly captures(address_is_null) %8, ptr nofree noundef readonly captures(address_is_null) %9) unnamed_addr #0 {
bb.a:
  %10 = alloca %struct._rpc_fragment_key, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %8, null                     ; 4 uses
  %i.c = icmp eq ptr %9, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %. = select i1 %i.b, i32 2, i32 1               ; 3 uses
  %.202 = select i1 %i.b, ptr %9, ptr %8
  %i.d = load i32, ptr %.202, align 4
  %i.e = add i32 %i.d, %1                         ; 5 uses
  %i.f = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %1, i32 noundef 4)
  br i1 %i.f, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %1) ; 9 uses
  %i.h = and i32 %i.g, 2147483647                 ; 6 uses
  %i.i = load i32, ptr @max_rpc_tcp_pdu_size, align 4
  %i.j = icmp ugt i32 %i.h, %i.i
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr @rpc_defragment, align 1, !range !6, !noundef !7
  %i.l = add nuw i32 %i.h, 4                      ; 11 uses
  %i.m = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.n = icmp ugt i32 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  br i1 %4, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.o = add i32 %1, 4                            ; 3 uses
  %i.p = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %i.o, i32 noundef 8)
  br i1 %i.p, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.q = add i32 %1, 8
  %i.r = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.q)
  switch i32 %i.r, label %.critedge [
    i32 0, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.s = tail call fastcc ptr @looks_like_rpc_call(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.o)
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.u = tail call fastcc ptr @looks_like_rpc_reply(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.o)
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = tail call ptr @find_or_create_conversation(ptr noundef nonnull %2)
  br i1 %i.b, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr @rpc_tcp_handle, align 8
  tail call void @conversation_set_dissector(ptr noundef %i.w, ptr noundef %i.x)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.f
  %i.y = load i8, ptr @rpc_desegment, align 1, !range !6, !noundef !7
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %2, i64 336
  %i.ab = load i16, ptr %i.aa, align 8
  %.not199 = icmp eq i16 %i.ab, 0
  br i1 %.not199, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr i8, ptr %2, i64 340
  store i32 %1, ptr %i.ac, align 4
  %i.ad = sub nuw i32 %i.l, %i.m                  ; 2 uses
  %i.ae = getelementptr i8, ptr %2, i64 344
  store i32 %i.ad, ptr %i.ae, align 8
  %i.af = sub i32 0, %i.ad
  br label %.critedge

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ag = tail call ptr @expert_add_info(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @ei_rpc_segment_needed) ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.e
  %i.ah = trunc nuw i8 %i.k to i1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0187 = phi i32 [ %i.m, %bb.p ], [ %i.l, %bb.q ]
  %.0186 = phi i1 [ false, %bb.p ], [ %i.ah, %bb.q ]
  %i.ai = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %1)
  %i.aj = icmp uge i32 %i.ai, %i.l
  %i.ak = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %1, i32 noundef %.0187) ; 10 uses
  %i.al = select i1 %i.aj, i1 %.0186, i1 false
  br i1 %i.al, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr i8, ptr %2, i64 272       ; 3 uses
  %i.an = load i8, ptr %i.am, align 8, !range !6, !noundef !7
  store i8 1, ptr %i.am, align 8
  %i.ao = tail call fastcc zeroext i1 @call_message_dissector(ptr noundef %0, ptr noundef %i.ak, ptr noundef %2, ptr noundef %3, ptr noundef %i.ak, ptr noundef null, i32 noundef %., i32 noundef %i.g, i1 noundef zeroext %7, i1 noundef zeroext false)
  store i8 %i.an, ptr %i.am, align 8
  %.204 = select i1 %i.ao, i32 %i.l, i32 0
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.ap = tail call ptr @find_or_create_conversation(ptr noundef nonnull %2)
  %i.aq = getelementptr i8, ptr %i.ap, i64 24     ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  store i32 %i.ar, ptr %10, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.e, ptr %i.as, align 4
  %i.at = getelementptr i8, ptr %2, i64 288       ; 4 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = load ptr, ptr @rpc_reassembly_table, align 8
  %i.ax = call ptr @wmem_map_lookup(ptr noundef %i.aw, ptr noundef nonnull %10) ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %.not201 = icmp sgt i32 %i.g, -1
  br i1 %.not201, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@call_message_dissector:bb.a
  %i.ad = load volatile i64, ptr %i.ac, align 8
  %.0..0..0..0.14 = load volatile ptr, ptr %i.b, align 8
  %i.ae = getelementptr i8, ptr %.0..0..0..0.14, i64 16
  %i.af = load volatile ptr, ptr %i.ae, align 8
  call void @show_exception(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %i.ad, ptr noundef %i.af)
  store ptr %i.d, ptr %2, align 8
  store volatile i8 1, ptr %i.a, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.g, %bb.f
  %.0..0..0..0.6 = load volatile i32, ptr %i.c, align 4
  %i.ag = and i32 %.0..0..0..0.6, 1
  %.not35 = icmp eq i32 %i.ag, 0
  br i1 %.not35, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.0..0..0..0.15 = load volatile ptr, ptr %i.b, align 8
  %.not36 = icmp eq ptr %.0..0..0..0.15, null
  br i1 %.not36, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0..0..0..0.16 = load volatile ptr, ptr %i.b, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.16) #18
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ai = load volatile ptr, ptr %i.ah, align 8
  call void @except_free(ptr noundef %i.ai)
  %i.aj = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.0..0..0..0.17 = load volatile i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.ak = trunc nuw i8 %.0..0..0..0.17 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ak
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_multiple_ok(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @make_frag_tree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %show_rpc_fragment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @proto_get_protocol_name(i32 noundef %2)
  %i.c = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.348, ptr noundef %i.b)
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %3) ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %show_rpc_fragment.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %4, 2147483647                   ; 2 uses
  %i.f = load i32, ptr @ett_rpc_fraghdr, align 4
  %.not.i.i = icmp sgt i32 %4, -1
  %i.g = select i1 %.not.i.i, ptr @.str.334, ptr @.str.333
  %i.h = icmp eq i32 %i.e, 1
  %i.i = select i1 %i.h, ptr @.str.335, ptr @.str.336
  %i.j = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %i.d, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef %i.f, ptr noundef null, ptr noundef nonnull @.str.332, ptr noundef nonnull %i.g, i32 noundef %i.e, ptr noundef nonnull %i.i) ; 2 uses
  %i.k = load i32, ptr @hf_rpc_lastfrag, align 4
  %i.l = zext i32 %4 to i64
  %i.m = tail call ptr @proto_tree_add_boolean(ptr noundef %i.j, i32 noundef %i.k, ptr noundef %0, i32 noundef 0, i32 noundef 4, i64 noundef %i.l) ; 0 uses
  %i.n = load i32, ptr @hf_rpc_fraglen, align 4
  %i.o = tail call ptr @proto_tree_add_uint(ptr noundef %i.j, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.p = load i32, ptr @hf_rpc_fragment_data, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef nonnull %i.d, i32 noundef %i.p, ptr noundef %0, i32 noundef 4, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %show_rpc_fragment.exit

show_rpc_fragment.exit:                           ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @except_setup_try(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare void @show_exception(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_rethrow(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @except_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @except_pop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_get_protocol_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_writable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @add_srt_table_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @get_srt_table_param_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare ptr @init_srt_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @init_srt_table_row(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare void @set_srt_table_param_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_table_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @rpcstat_find_procs(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #14 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = load i32, ptr @rpc_program, align 4
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = load i32, ptr @rpc_version, align 4
  %.not10 = icmp eq i32 %i.d, %i.e
  br i1 %.not10, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @rpc_min_proc, align 4     ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  %i.h = getelementptr i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 4              ; 5 uses
  br i1 %i.g, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  store i32 %i.i, ptr @rpc_min_proc, align 4
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i32 %i.i, %i.f
  br i1 %i.j, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %.thread
  %rpc_max_proc.sink = phi ptr [ @rpc_max_proc, %.thread ], [ @rpc_min_proc, %bb.d ]
  store i32 %i.i, ptr %rpc_max_proc.sink, align 4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.k = load i32, ptr @rpc_max_proc, align 4
  %i.l = icmp sgt i32 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.i, ptr @rpc_max_proc, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { allocsize(1) }
attributes #18 = { noreturn }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { allocsize(0) }
attributes #21 = { nounwind returns_twice }

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
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8, !18}
!17 = distinct !{!17, !8, !18}
!18 = !{!"llvm.loop.peeled.count", i32 1}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
end_hunk_1
