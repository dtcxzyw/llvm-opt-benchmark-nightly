Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/filter?download=true
inline.NumInlined: 1165
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sk_lookup_convert_ctx_access:bb.a
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 16, ptr %.sroa.761.0..sroa_idx, align 2
  %.sroa.862.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.sroa.862.0..sroa_idx, align 4
  %i.v = getelementptr i8, ptr %2, i64 16
  %i.w = load i8, ptr %i.t, align 1
  %i.x = and i8 %i.w, 15
  store i8 21, ptr %i.r, align 4
  %.sroa.249.0..sroa_idx = getelementptr i8, ptr %2, i64 9
  store i8 %i.x, ptr %.sroa.249.0..sroa_idx, align 1
  %.sroa.751.0..sroa_idx = getelementptr i8, ptr %2, i64 10
  store i16 1, ptr %.sroa.751.0..sroa_idx, align 2
  %.sroa.852.0..sroa_idx = getelementptr i8, ptr %2, i64 12
  store i32 0, ptr %.sroa.852.0..sroa_idx, align 4
  %i.y = getelementptr i8, ptr %2, i64 24
  %i.z = load i8, ptr %i.t, align 1
  %i.aa = and i8 %i.z, 15
  %i.ab = mul nuw i8 %i.aa, 17
  store i8 97, ptr %i.v, align 4
  br label %.sink.split

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i32 4, ptr %4, align 4
  %i.ac = getelementptr i8, ptr %2, i64 8
  %i.ad = add nsw i16 %i.b, -44
  %i.ae = getelementptr i8, ptr %1, i64 1         ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1
  store i8 121, ptr %2, align 4
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.af, ptr %.sroa.235.0..sroa_idx, align 1
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 24, ptr %.sroa.737.0..sroa_idx, align 2
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.sroa.838.0..sroa_idx, align 4
  %i.ag = getelementptr i8, ptr %2, i64 16
  %i.ah = load i8, ptr %i.ae, align 1
  %i.ai = and i8 %i.ah, 15
  store i8 21, ptr %i.ac, align 4
  %.sroa.225.0..sroa_idx = getelementptr i8, ptr %2, i64 9
  store i8 %i.ai, ptr %.sroa.225.0..sroa_idx, align 1
  %.sroa.727.0..sroa_idx = getelementptr i8, ptr %2, i64 10
  store i16 1, ptr %.sroa.727.0..sroa_idx, align 2
  %.sroa.828.0..sroa_idx = getelementptr i8, ptr %2, i64 12
  store i32 0, ptr %.sroa.828.0..sroa_idx, align 4
  %i.aj = getelementptr i8, ptr %2, i64 24
  %i.ak = load i8, ptr %i.ae, align 1
  %i.al = and i8 %i.ak, 15
  %i.am = mul nuw i8 %i.al, 17
  store i8 97, ptr %i.ag, align 4
  br label %.sink.split

bb.i:                                             ; preds = %bb.a
  %i.an = getelementptr i8, ptr %2, i64 8
  %i.ao = getelementptr i8, ptr %1, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  store i32 2, ptr %4, align 4
  store i8 105, ptr %2, align 4
  br label %.sink.split

bb.j:                                             ; preds = %bb.a
  store i32 2, ptr %4, align 4
  %i.aq = getelementptr i8, ptr %2, i64 8
  %i.ar = getelementptr i8, ptr %1, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = and i8 %i.as, 15
  store i8 -76, ptr %2, align 4
  br label %.sink.split

bb.k:                                             ; preds = %bb.a
  %i.au = getelementptr i8, ptr %2, i64 8
  %i.av = getelementptr i8, ptr %1, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  store i32 2, ptr %4, align 4
  store i8 105, ptr %2, align 4
  br label %.sink.split

bb.l:                                             ; preds = %bb.a
  %i.ax = getelementptr i8, ptr %2, i64 8
  %i.ay = getelementptr i8, ptr %1, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  store i32 4, ptr %4, align 4
  store i8 97, ptr %2, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sink161 = phi i64 [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ], [ 17, %bb.h ], [ 17, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.sink160 = phi i8 [ %i.az, %bb.l ], [ %i.aw, %bb.k ], [ %i.at, %bb.j ], [ %i.ap, %bb.i ], [ %i.am, %bb.h ], [ %i.ab, %bb.g ], [ %i.q, %bb.f ], [ %i.n, %bb.e ], [ %i.k, %bb.d ], [ %i.h, %bb.c ], [ %i.e, %bb.b ]
  %.sink159 = phi i64 [ 2, %bb.l ], [ 2, %bb.k ], [ 2, %bb.j ], [ 2, %bb.i ], [ 18, %bb.h ], [ 18, %bb.g ], [ 2, %bb.f ], [ 2, %bb.e ], [ 2, %bb.d ], [ 2, %bb.c ], [ 2, %bb.b ]
  %.sink158 = phi i16 [ 40, %bb.l ], [ 6, %bb.k ], [ 0, %bb.j ], [ 4, %bb.i ], [ %i.ad, %bb.h ], [ %i.s, %bb.g ], [ 12, %bb.f ], [ 8, %bb.e ], [ 2, %bb.d ], [ 0, %bb.c ], [ 32, %bb.b ]
  %.sink = phi i64 [ 4, %bb.l ], [ 4, %bb.k ], [ 4, %bb.j ], [ 4, %bb.i ], [ 20, %bb.h ], [ 20, %bb.g ], [ 4, %bb.f ], [ 4, %bb.e ], [ 4, %bb.d ], [ 4, %bb.c ], [ 4, %bb.b ]
  %.0.ph = phi ptr [ %i.ax, %bb.l ], [ %i.au, %bb.k ], [ %i.aq, %bb.j ], [ %i.an, %bb.i ], [ %i.aj, %bb.h ], [ %i.y, %bb.g ], [ %i.o, %bb.f ], [ %i.l, %bb.e ], [ %i.i, %bb.d ], [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %2, i64 %.sink161
  store i8 %.sink160, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %2, i64 %.sink159
  store i16 %.sink158, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %2, i64 %.sink
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 4
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ %2, %bb.a ], [ %.0.ph, %.sink.split ]
  %i.ba = ptrtoint ptr %.0 to i64
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = lshr exact i64 %i.bc, 3
  %i.be = trunc i64 %i.bd to i32
  ret i32 %i.be
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local void @bpf_prog_change_xdp(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local i64 @bpf_skc_to_tcp6_sock(i64 noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) #6 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %____bpf_skc_to_tcp6_sock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 18
  %i.c = load volatile i8, ptr %i.b, align 2
  %i.d = zext nneg i8 %i.c to i32
  %i.e = shl nuw i32 1, %i.d
  %i.f = and i32 %i.e, -4161
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %____bpf_skc_to_tcp6_sock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 532
  %i.h = load i16, ptr %i.g, align 4
  %i.i = icmp eq i16 %i.h, 6
  br i1 %i.i, label %bb.d, label %____bpf_skc_to_tcp6_sock.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.a, i64 534
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp eq i16 %i.k, 1
  br i1 %i.l, label %bb.e, label %____bpf_skc_to_tcp6_sock.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 16
  %i.n = load i16, ptr %i.m, align 8
  %i.o = icmp eq i16 %i.n, 10
  %spec.select.i = select i1 %i.o, i64 %0, i64 0
  br label %____bpf_skc_to_tcp6_sock.exit

____bpf_skc_to_tcp6_sock.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ 0, %bb.a ], [ %spec.select.i, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local noundef i64 @bpf_skc_to_tcp_sock(i64 noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) #6 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %____bpf_skc_to_tcp_sock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 18
  %i.c = load volatile i8, ptr %i.b, align 2
  %i.d = zext nneg i8 %i.c to i32
  %i.e = shl nuw i32 1, %i.d
  %i.f = and i32 %i.e, -4161
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %____bpf_skc_to_tcp_sock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load volatile i16, ptr %i.g, align 8
  %i.i = and i16 %i.h, -9
  %i.j = icmp eq i16 %i.i, 2
  br i1 %i.j, label %bb.d, label %____bpf_skc_to_tcp_sock.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.a, i64 534
  %i.l = load i16, ptr %i.k, align 2
  %i.m = icmp eq i16 %i.l, 1
  br i1 %i.m, label %sk_is_tcp.exit, label %____bpf_skc_to_tcp_sock.exit

sk_is_tcp.exit:                                   ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.a, i64 532
  %i.o = load i16, ptr %i.n, align 4
  %.fr = freeze i16 %i.o
  %i.p = icmp eq i16 %.fr, 6
  %spec.select = select i1 %i.p, i64 %0, i64 0
  br label %____bpf_skc_to_tcp_sock.exit

____bpf_skc_to_tcp_sock.exit:                     ; preds = %sk_is_tcp.exit, %bb.c, %bb.d, %bb.a, %bb.b
  %.0.i = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %spec.select, %sk_is_tcp.exit ], [ 0, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local i64 @bpf_skc_to_tcp_timewait_sock(i64 noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) #6 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %____bpf_skc_to_tcp_timewait_sock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, @tcp_prot
  br i1 %i.d, label %5, label %9

5:                                                ; preds = %bb.b
  %6 = getelementptr i8, ptr %i.a, i64 18
  %7 = load volatile i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 6
  br i1 %8, label %____bpf_skc_to_tcp_timewait_sock.exit, label %9

9:                                                ; preds = %bb.b, %5
  %10 = icmp eq ptr %i.c, @tcpv6_prot
  br i1 %10, label %____bpf_skc_to_tcp_timewait_sock.exit.sink.split, label %____bpf_skc_to_tcp_timewait_sock.exit

____bpf_skc_to_tcp_timewait_sock.exit.sink.split: ; preds = %9
  %i.e = getelementptr i8, ptr %i.a, i64 18
  %i.f = load volatile i8, ptr %i.e, align 2
  %i.g = icmp eq i8 %i.f, 6
  %spec.select = select i1 %i.g, i64 %0, i64 0
  br label %____bpf_skc_to_tcp_timewait_sock.exit

____bpf_skc_to_tcp_timewait_sock.exit:            ; preds = %5, %bb.a, %9, %____bpf_skc_to_tcp_timewait_sock.exit.sink.split
  %.0.i = phi i64 [ 0, %9 ], [ %0, %5 ], [ 0, %bb.a ], [ %spec.select, %____bpf_skc_to_tcp_timewait_sock.exit.sink.split ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local i64 @bpf_skc_to_tcp_request_sock(i64 noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) #6 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %____bpf_skc_to_tcp_request_sock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, @tcp_prot
  br i1 %i.d, label %5, label %9

5:                                                ; preds = %bb.b
  %6 = getelementptr i8, ptr %i.a, i64 18
  %7 = load volatile i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 12
  br i1 %8, label %____bpf_skc_to_tcp_request_sock.exit, label %9

9:                                                ; preds = %bb.b, %5
  %10 = icmp eq ptr %i.c, @tcpv6_prot
  br i1 %10, label %____bpf_skc_to_tcp_request_sock.exit.sink.split, label %____bpf_skc_to_tcp_request_sock.exit

____bpf_skc_to_tcp_request_sock.exit.sink.split:  ; preds = %9
  %i.e = getelementptr i8, ptr %i.a, i64 18
  %i.f = load volatile i8, ptr %i.e, align 2
  %i.g = icmp eq i8 %i.f, 12
  %spec.select = select i1 %i.g, i64 %0, i64 0
  br label %____bpf_skc_to_tcp_request_sock.exit

____bpf_skc_to_tcp_request_sock.exit:             ; preds = %5, %bb.a, %9, %____bpf_skc_to_tcp_request_sock.exit.sink.split
  %.0.i = phi i64 [ 0, %9 ], [ %0, %5 ], [ 0, %bb.a ], [ %spec.select, %____bpf_skc_to_tcp_request_sock.exit.sink.split ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define dso_local i64 @bpf_skc_to_udp6_sock(i64 noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) #6 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %____bpf_skc_to_udp6_sock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 18
  %i.c = load volatile i8, ptr %i.b, align 2
  %i.d = zext nneg i8 %i.c to i32
  %i.e = shl nuw i32 1, %i.d
  %i.f = and i32 %i.e, -4161
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %____bpf_skc_to_udp6_sock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 532
  %i.h = load i16, ptr %i.g, align 4
  %i.i = icmp eq i16 %i.h, 17
  br i1 %i.i, label %bb.d, label %____bpf_skc_to_udp6_sock.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.a, i64 534
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp eq i16 %i.k, 2
  br i1 %i.l, label %bb.e, label %____bpf_skc_to_udp6_sock.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 16
  %i.n = load i16, ptr %i.m, align 8
  %i.o = icmp eq i16 %i.n, 10
  %spec.select.i = select i1 %i.o, i64 %0, i64 0
  br label %____bpf_skc_to_udp6_sock.exit

____bpf_skc_to_udp6_sock.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ 0, %bb.a ], [ %spec.select.i, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local i64 @bpf_skc_to_unix_sock(i64 noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) #11 align 16 prefalign(16) {
bb.a:
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %____bpf_skc_to_unix_sock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val = load i16, ptr %i.b, align 8
  %i.c = icmp eq i16 %.val, 1
  %spec.select.i = select i1 %i.c, i64 %0, i64 0
  br label %____bpf_skc_to_unix_sock.exit

____bpf_skc_to_unix_sock.exit:                    ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ 0, %bb.a ], [ %spec.select.i, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef i64 @bpf_skc_to_mptcp_sock(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #10 align 16 prefalign(16) {
bb.a:
  ret i64 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @bpf_sock_from_file(i64 noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = tail call ptr @sock_from_file(ptr noundef %i.a) #40
  %i.c = ptrtoint ptr %i.b to i64
  ret i64 %i.c
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local ptr @bpf_skb_meta_pointer(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 186
  %.val3 = load i16, ptr %i.a, align 2
  %i.b = getelementptr i8, ptr %0, i64 200
  %.val4 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = zext i16 %.val3 to i64
  %i.d = getelementptr i8, ptr %.val4, i64 %i.c
  %i.e = getelementptr i8, ptr %0, i64 192
  %.val = load i32, ptr %i.e, align 8
  %i.f = zext i32 %.val to i64
  %i.g = getelementptr i8, ptr %.val4, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr i8, ptr %i.d, i64 %i.k
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  ret ptr %i.n
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @__bpf_skb_meta_store_bytes(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @skb_ensure_writable(ptr noundef %0, i32 noundef 0) #40
  %i.b = getelementptr i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 192
  %.val.i.i = load i32, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 200
  %.val7.i.i = load ptr, ptr %i.e, align 8        ; 2 uses
  %i.f = zext i32 %.val.i.i to i64
  %i.g = getelementptr i8, ptr %.val7.i.i, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 1        ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr i8, ptr %i.c, i64 %i.k
  %i.m = getelementptr i8, ptr %0, i64 72
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %0, i64 112
  %.val8.i.i = load i32, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %0, i64 116
  %.val9.i.i = load i32, ptr %i.o, align 4
  %i.p = sub i32 %.val8.i.i, %.val9.i.i
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %i.c, i64 %i.q
  %i.s = getelementptr i8, ptr %0, i64 80
  store ptr %i.r, ptr %i.s, align 8
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %bb.c, label %bb.d, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %0, i64 186
  %.val3.i = load i16, ptr %i.t, align 2
  %i.u = zext i16 %.val3.i to i64
  %i.v = getelementptr i8, ptr %.val7.i.i, i64 %i.u
  %i.w = load i8, ptr %i.h, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr i8, ptr %i.v, i64 %i.y
  %i.aa = zext i32 %1 to i64
  %i.ab = getelementptr i8, ptr %i.z, i64 %i.aa
  %i.ac = zext i32 %3 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %2, i64 %i.ac, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -22, %bb.a ], [ -14, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef range(i32 -22, 1) i32 @bpf_dynptr_from_skb(ptr nofree readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #21 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i64 %1, 0
  %spec.select = select i1 %.not, i32 0, i32 -22
  ret i32 %spec.select
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef range(i32 -22, 1) i32 @bpf_dynptr_from_skb_meta(ptr nofree readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #21 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i64 %1, 0
  %spec.select = select i1 %.not, i32 0, i32 -22
  ret i32 %spec.select
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef range(i32 -22, 1) i32 @bpf_dynptr_from_xdp(ptr nofree readonly captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #21 align 16 prefalign(16) {
xdp_get_buff_len.exit:
  %.not = icmp eq i64 %1, 0
  %.0 = select i1 %.not, i32 0, i32 -22
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 -22, 1) i32 @bpf_sock_addr_set_sun_path(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #22 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i16, ptr %i.b, align 8
  %.not = icmp ne i16 %i.c, 1
  %i.d = add i32 %2, -109
  %or.cond = icmp ult i32 %i.d, -108
  %or.cond11 = or i1 %or.cond, %.not
  br i1 %or.cond11, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %i.h = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.g, ptr align 1 %1, i64 %i.h, i1 false)
end_hunk_0
