Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-tls-utils?download=true
inline.NumInlined: 355
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tls_scan_server_hello:bb.a
  %i.u = phi i32 [ %i.s, %bb.g ], [ %i.p, %bb.f ]
  %.04156 = phi i32 [ %i.r, %bb.g ], [ %i.o, %bb.f ] ; 4 uses
  %i.v = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.04156)
  %i.w = add i32 %.04156, 2
  %i.x = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.w) ; 2 uses
  %i.y = zext i16 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 4                  ; 2 uses
  %i.aa = icmp ult i32 %i.u, %i.z
  br i1 %i.aa, label %.thread52, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ab = icmp eq i16 %i.v, 43
  br i1 %i.ab, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp eq i16 %i.x, 2
  br i1 %i.ac, label %bb.j, label %.thread52

bb.j:                                             ; preds = %bb.i
  %i.ad = add i32 %.04156, 4
  %i.ae = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.ad)
  store i16 %i.ae, ptr %3, align 2
  br label %.thread52

bb.k:                                             ; preds = %bb.a, %bb.b
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.thread52, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %4, align 1
  br label %.thread52

.thread52:                                        ; preds = %bb.g, %.lr.ph, %bb.f, %bb.i, %bb.j, %bb.l, %bb.k, %bb.e
  %.2 = phi i1 [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.f ], [ false, %.lr.ph ], [ false, %bb.g ]
  ret i1 %.2
}

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define hidden void @ssl_try_set_version(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext %4, i16 noundef zeroext %5) local_unnamed_addr #7 {
bb.a:
  %cond.i = icmp eq i8 %2, 22
  br i1 %cond.i, label %.split, label %ssl_is_authoritative_version_message.exit

.split:                                           ; preds = %bb.a
  %i.a = tail call zeroext i1 @ssl_is_valid_handshake_type(i8 noundef zeroext %3, i1 noundef zeroext %4)
  %i.b = icmp ne i8 %3, 1
  %or.cond.i = and i1 %i.b, %i.a
  br i1 %or.cond.i, label %bb.b, label %tls_try_get_version.exit.thread

ssl_is_authoritative_version_message.exit:        ; preds = %bb.a
  %.off.i.i = add i8 %2, -20
  %switch.i.i = icmp ult i8 %.off.i.i, 7
  br i1 %switch.i.i, label %bb.b, label %tls_try_get_version.exit.thread

bb.b:                                             ; preds = %.split, %ssl_is_authoritative_version_message.exit
  br i1 %4, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i16 %5, -256
  %i.d = icmp ne i16 %i.c, 32512
  %i.e = trunc i16 %5 to i8                       ; 4 uses
  %.not24.i23 = icmp eq i8 %i.e, 0
  %.not24.i = or i1 %i.d, %.not24.i23
  br i1 %.not24.i, label %bb.d, label %tls_try_get_version.exit.thread16

bb.d:                                             ; preds = %bb.c
  switch i16 %5, label %tls_try_get_version.exit.thread [
    i16 -1254, label %tls_try_get_version.exit.thread16
    i16 -1257, label %tls_try_get_version.exit.thread16
    i16 768, label %.thread29
    i16 769, label %.thread29
    i16 770, label %.thread29
    i16 771, label %.thread29
    i16 772, label %.thread29
    i16 257, label %.thread29
  ]

bb.e:                                             ; preds = %bb.b
  switch i16 %5, label %tls_try_get_version.exit.thread [
    i16 256, label %tls_try_get_version.exit.thread16
    i16 -260, label %tls_try_get_version.exit.thread16
    i16 -259, label %tls_try_get_version.exit.thread16
    i16 -257, label %tls_try_get_version.exit.thread16
  ]

.thread29:                                        ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %tls_try_get_version.exit.thread16

tls_try_get_version.exit.thread16:                ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %.thread29, %bb.d, %bb.d, %bb.c
  %.228.i20 = phi i16 [ %5, %bb.e ], [ 772, %bb.c ], [ %5, %.thread29 ], [ 772, %bb.d ], [ 772, %bb.d ], [ %5, %bb.e ], [ %5, %bb.e ], [ %5, %bb.e ] ; 2 uses
  %.019 = phi i8 [ 0, %bb.e ], [ %i.e, %bb.c ], [ 0, %.thread29 ], [ %i.e, %bb.d ], [ %i.e, %bb.d ], [ 0, %bb.e ], [ 0, %bb.e ], [ 0, %bb.e ]
  %i.f = getelementptr i8, ptr %0, i64 10
  store i8 %.019, ptr %i.f, align 2
  %i.g = getelementptr i8, ptr %0, i64 8
  store i16 %.228.i20, ptr %i.g, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %tls_try_get_version.exit.thread, label %bb.f

bb.f:                                             ; preds = %tls_try_get_version.exit.thread16
  %i.h = zext i16 %.228.i20 to i32
  %i.i = getelementptr i8, ptr %1, i64 560        ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = or i32 %i.j, 16                          ; 2 uses
  store i32 %i.k, ptr %i.i, align 8
  tail call void (ptr, ...) @ssl_debug_printf(ptr noundef @.str.761, ptr noundef @__func__.ssl_try_set_version, i32 noundef %i.h, i32 noundef %i.k)
  br label %tls_try_get_version.exit.thread

tls_try_get_version.exit.thread:                  ; preds = %bb.e, %bb.d, %.split, %tls_try_get_version.exit.thread16, %bb.f, %ssl_is_authoritative_version_message.exit
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @ssl_check_record_length(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i16 %5, 772
  %. = select i1 %i.a, i32 256, i32 2048          ; 2 uses
  %i.b = icmp eq i32 %3, 0
  %i.c = add i32 %2, -20
  %or.cond3 = icmp ult i32 %i.c, 3
  %or.cond = and i1 %i.b, %or.cond3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1404
  %i.e = tail call ptr @val_to_str_const(i32 noundef %2, ptr noundef @ssl_31_content_type, ptr noundef @.str.756)
  %i.f = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %4, ptr noundef %i.d, ptr noundef @.str.762, ptr noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = or disjoint i32 %., 16384
  %i.h = icmp ugt i32 %3, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 1404
  %i.j = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %4, ptr noundef %i.i, ptr noundef @.str.763, i32 noundef %.) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @tvb_captured_length(ptr noundef nonnull %6)
  %i.l = icmp ugt i32 %i.k, 16384
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 1404
  %i.n = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %4, ptr noundef %i.m, ptr noundef @.str.764) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @ssl_dissect_hnd_cli_hello(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(address_is_null) %8, ptr nofree noundef readonly captures(address_is_null) %9) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %struct.ja4_data_t, align 8        ; 12 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.f = getelementptr i8, ptr %2, i64 416        ; 12 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @wmem_strbuf_new(ptr noundef %i.g, ptr noundef @.str.543) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = tail call ptr @wmem_strbuf_new(ptr noundef %i.i, ptr noundef @.str.543) ; 11 uses
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = tail call ptr @wmem_strbuf_new(ptr noundef %i.k, ptr noundef @.str.543) ; 5 uses
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = tail call ptr @wmem_strbuf_new(ptr noundef %i.m, ptr noundef @.str.543) ; 8 uses
  %.not = icmp ugt i32 %4, %5
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = zext i32 %4 to i64
  %i.p = zext i32 %5 to i64
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.765, ptr noundef @.str.531, i32 noundef 10087, i64 noundef %i.o, i64 noundef %i.p) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = sub nuw i32 %5, %4
  %i.r = tail call ptr @tvb_new_subset_length(ptr noundef %1, i32 noundef %4, i32 noundef %i.q) ; 29 uses
  %i.s = tail call i32 @tvb_reported_length(ptr noundef %i.r) ; 12 uses
  store i32 0, ptr %10, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i8 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 0, ptr %i.v, align 4
  %i.w = load ptr, ptr %i.f, align 8
  %i.x = tail call ptr @wmem_strbuf_new(ptr noundef %i.w, ptr noundef @.str.543)
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.f, align 8
  %i.aa = tail call ptr @wmem_list_new(ptr noundef %i.z) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = tail call ptr @wmem_list_new(ptr noundef %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = load ptr, ptr %i.f, align 8
  %i.ag = tail call ptr @wmem_list_new(ptr noundef %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %0, i64 556
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.aj, ptr noundef %i.r, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.a) ; 3 uses
  %i.al = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.r, i32 noundef 0) ; 2 uses
  %i.am = icmp eq i16 %i.al, -259
  switch i16 %i.al, label %tls_scan_client_hello.exit.thread [
    i16 -259, label %bb.d
    i16 771, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.an = icmp ugt i32 %i.s, 45
  br i1 %i.an, label %bb.e, label %tls_scan_client_hello.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ao = call zeroext i8 @tvb_get_uint8(ptr noundef %i.r, i32 noundef 34)
  %i.ap = add i32 %i.s, -35
  %i.aq = zext i8 %i.ao to i32                    ; 3 uses
  %i.ar = add nuw nsw i32 %i.aq, 2
  %i.as = icmp ult i32 %i.ap, %i.ar
  br i1 %i.as, label %tls_scan_client_hello.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = add nuw nsw i32 %i.aq, 35               ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = call zeroext i8 @tvb_get_uint8(ptr noundef %i.r, i32 noundef %i.at)
  %i.av = add nuw nsw i32 %i.aq, 36               ; 2 uses
  %i.aw = sub nuw i32 %i.s, %i.av
  %i.ax = zext i8 %i.au to i32
  %i.ay = add nuw nsw i32 %i.ax, 2
  %.not.i = icmp ult i32 %i.aw, %i.ay
  br i1 %.not.i, label %tls_scan_client_hello.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.061.i = phi i32 [ %i.av, %bb.g ], [ %i.at, %bb.f ] ; 2 uses
  %i.az = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.r, i32 noundef %.061.i)
  %i.ba = add nuw nsw i32 %.061.i, 2              ; 2 uses
  %i.bb = sub i32 %i.s, %i.ba
  %i.bc = zext i16 %i.az to i32                   ; 2 uses
  %.not67.i = icmp ugt i32 %i.bb, %i.bc
  br i1 %.not67.i, label %bb.i, label %tls_scan_client_hello.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bd = add nuw nsw i32 %i.ba, %i.bc            ; 2 uses
  %i.be = call zeroext i8 @tvb_get_uint8(ptr noundef %i.r, i32 noundef %i.bd)
  %i.bf = add nuw nsw i32 %i.bd, 1                ; 2 uses
  %i.bg = sub i32 %i.s, %i.bf
  %i.bh = zext i8 %i.be to i32
  %i.bi = add nuw nsw i32 %i.bh, 2                ; 2 uses
  %i.bj = icmp ult i32 %i.bg, %i.bi
  br i1 %i.bj, label %tls_scan_client_hello.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = add nuw nsw i32 %i.bi, %i.bf            ; 2 uses
  %i.bl = sub i32 %i.s, %i.bk                     ; 2 uses
  %i.bm = icmp ugt i32 %i.bl, 5
  br i1 %i.bm, label %.lr.ph.i, label %tls_scan_client_hello.exit.thread

bb.k:                                             ; preds = %bb.l
  %i.bn = add i32 %i.bv, %.16282.i                ; 2 uses
  %i.bo = sub i32 %i.s, %i.bn                     ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, 5
  br i1 %i.bp, label %.lr.ph.i, label %tls_scan_client_hello.exit.thread

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.bq = phi i32 [ %i.bo, %bb.k ], [ %i.bl, %bb.j ]
  %.16282.i = phi i32 [ %i.bn, %bb.k ], [ %i.bk, %bb.j ] ; 3 uses
  %i.br = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.r, i32 noundef %.16282.i)
  %i.bs = add i32 %.16282.i, 2
  %i.bt = call zeroext i16 @tvb_get_ntohs(ptr noundef %i.r, i32 noundef %i.bs)
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 4                ; 2 uses
  %i.bw = icmp ult i32 %i.bq, %i.bv
  br i1 %i.bw, label %tls_scan_client_hello.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.bx = icmp eq i16 %i.br, 43
  br i1 %i.bx, label %tls_scan_client_hello.exit, label %bb.k

tls_scan_client_hello.exit:                       ; preds = %bb.l
  %i.by = getelementptr i8, ptr %0, i64 1340
  %i.bz = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.ak, ptr noundef %i.by) ; 0 uses
  br label %tls_scan_client_hello.exit.thread

tls_scan_client_hello.exit.thread:                ; preds = %.lr.ph.i, %bb.k, %bb.j, %bb.c, %bb.i, %bb.e, %bb.d, %bb.h, %bb.g, %tls_scan_client_hello.exit
  %i.ca = load i32, ptr %i.a, align 4
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.h, ptr noundef @.str.766, i32 noundef %i.ca)
  %i.cb = icmp ne ptr %8, null                    ; 2 uses
  %i.cc = load i32, ptr %i.a, align 4             ; 2 uses
  br i1 %i.cb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %tls_scan_client_hello.exit.thread
  %i.cd = icmp eq i32 %i.cc, 65276
  br i1 %i.cd, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr i8, ptr %0, i64 1324
  %i.cf = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.ak, ptr noundef %i.ce) ; 0 uses
  br label %bb.r

bb.o:                                             ; preds = %tls_scan_client_hello.exit.thread
  %i.cg = icmp eq i32 %i.cc, 772
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr i8, ptr %0, i64 1324
  %i.ci = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.ak, ptr noundef %i.ch) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cj = call fastcc i32 @ssl_dissect_hnd_hello_common(ptr noundef %0, ptr noundef %i.r, ptr noundef %2, ptr noundef %3, i32 noundef 2, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.v

bb.r:                                             ; preds = %bb.m, %bb.n
  %i.ck = call fastcc i32 @ssl_dissect_hnd_hello_common(ptr noundef %0, ptr noundef %i.r, ptr noundef %2, ptr noundef %3, i32 noundef 2, ptr noundef %6, ptr noundef %7, i1 noundef zeroext false, i1 noundef zeroext false) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.cl = load i32, ptr %8, align 4
  %i.cm = call zeroext i1 @ssl_add_vector(ptr noundef %0, ptr noundef %i.r, ptr noundef %2, ptr noundef %3, i32 noundef %i.ck, i32 noundef %i.s, ptr noundef nonnull %i.d, i32 noundef %i.cl, i32 noundef 0, i32 noundef 32)
  br i1 %i.cm, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cn = add i32 %i.ck, 1                        ; 3 uses
  %i.co = load i32, ptr %i.d, align 4             ; 3 uses
  %.not257 = icmp eq i32 %i.co, 0
  br i1 %.not257, label %.thread277, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr i8, ptr %8, i64 4
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.cq, ptr noundef %i.r, i32 noundef %i.cn, i32 noundef %i.co, i32 noundef 0) ; 0 uses
  %i.cs = add i32 %i.co, %i.cn
  br label %.thread277

.thread277:                                       ; preds = %bb.s, %bb.t
  %.1241.ph = phi i32 [ %i.cn, %bb.s ], [ %i.cs, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br label %bb.bu

bb.v:                                             ; preds = %.thread277, %bb.q
  %.2242 = phi i32 [ %.1241.ph, %.thread277 ], [ %i.cj, %bb.q ] ; 4 uses
  %i.ct = getelementptr i8, ptr %0, i64 564
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = call zeroext i1 @ssl_add_vector(ptr noundef %0, ptr noundef %i.r, ptr noundef %2, ptr noundef %3, i32 noundef %.2242, i32 noundef %i.s, ptr noundef nonnull %i.b, i32 noundef %i.cu, i32 noundef 2, i32 noundef 65535)
  br i1 %i.cv, label %bb.w, label %bb.bu

bb.w:                                             ; preds = %bb.v
  %i.cw = add i32 %.2242, 2                       ; 4 uses
  %i.cx = load i32, ptr %i.b, align 4             ; 3 uses
  %i.cy = add i32 %i.cx, %i.cw                    ; 9 uses
  %i.cz = getelementptr i8, ptr %0, i64 568
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = lshr i32 %i.cx, 1                       ; 2 uses
  %i.dc = icmp eq i32 %i.db, 1
  %i.dd = select i1 %i.dc, ptr @.str.543, ptr @.str.753
  %i.de = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %3, i32 noundef %i.da, ptr noundef %i.r, i32 noundef %i.cw, i32 noundef %i.cx, ptr noundef @.str.767, i32 noundef %i.db, ptr noundef nonnull %i.dd)
  %i.df = getelementptr i8, ptr %0, i64 1260
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = call ptr @proto_item_add_subtree(ptr noundef %i.de, i32 noundef %i.dg) ; 3 uses
  %i.di = add i32 %.2242, 4                       ; 2 uses
  %.not258281 = icmp ugt i32 %i.di, %i.cy
  br i1 %.not258281, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.dj = getelementptr i8, ptr %0, i64 572
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.aa
  %i.dk = phi i32 [ %i.di, %.lr.ph ], [ %i.dz, %bb.aa ] ; 3 uses
  %.0236283 = phi ptr [ @.str.543, %.lr.ph ], [ %.1237, %bb.aa ] ; 2 uses
  %.3282 = phi i32 [ %i.cw, %.lr.ph ], [ %i.dk, %bb.aa ]
  %.3282.a = phi i32 [ 0, %.lr.ph ], [ %11, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.dl = load i32, ptr %i.dj, align 4
  %i.dm = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.dh, i32 noundef %i.dl, ptr noundef %i.r, i32 noundef %.3282, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.dn = load i32, ptr %i.e, align 4             ; 4 uses
  %i.do = and i32 %i.dn, 3855
  %i.dp = icmp eq i32 %i.do, 2570
  br i1 %i.dp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dq = lshr i32 %i.dn, 8
  %i.dr = xor i32 %i.dq, %i.dn
  %i.ds = and i32 %i.dr, 240
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.h, ptr noundef @.str.768, ptr noundef %.0236283, i32 noundef %i.dn)
  %i.du = add i32 %.3282.a, 1
  %i.dv = load i32, ptr %i.e, align 4
  %i.dw = zext i32 %i.dv to i64
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = call ptr @wmem_list_insert_sorted(ptr noundef %i.aa, ptr noundef %i.dx, ptr noundef @wmem_compare_uint) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %11 = phi i32 [ %.3282.a, %bb.y ], [ %i.du, %bb.z ] ; 2 uses
  %.1237 = phi ptr [ %.0236283, %bb.y ], [ @.str.727, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  %i.dz = add i32 %i.dk, 2                        ; 2 uses
  %.not258 = icmp ugt i32 %i.dz, %i.cy
  br i1 %.not258, label %._crit_edge, label %bb.x, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.aa, %bb.w
  %.lcssa = phi i32 [ 0, %bb.w ], [ %11, %bb.aa ]
  %.3.lcssa = phi i32 [ %i.cw, %bb.w ], [ %i.dk, %bb.aa ] ; 6 uses
  store i32 %.lcssa, ptr %i.u, align 8
  call void @wmem_strbuf_append_c(ptr noundef %i.h, i8 noundef signext 44)
  %i.ea = icmp ult i32 %.3.lcssa, %i.cy
  br i1 %i.ea, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge
  %i.eb = sub nuw i32 %i.cy, %.3.lcssa            ; 3 uses
  %i.ec = getelementptr i8, ptr %0, i64 1364
  %i.ed = icmp eq i32 %i.eb, 1
  %i.ee = select i1 %i.ed, ptr @.str.750, ptr @.str.751
  %i.ef = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.dh, ptr noundef %2, ptr noundef %i.ec, ptr noundef %i.r, i32 noundef %.3.lcssa, i32 noundef %i.eb, ptr noundef @.str.749, i32 noundef %i.eb, ptr noundef nonnull %i.ee) ; 0 uses
  br label %ssl_end_vector.exit

bb.ac:                                            ; preds = %._crit_edge
  %i.eg = icmp ugt i32 %.3.lcssa, %i.cy
  br i1 %i.eg, label %bb.ad, label %ssl_end_vector.exit

bb.ad:                                            ; preds = %bb.ac
  %i.eh = sub nuw i32 %.3.lcssa, %i.cy            ; 3 uses
  %i.ei = getelementptr i8, ptr %0, i64 1356
  %i.ej = icmp eq i32 %i.eh, 1
  %i.ek = select i1 %i.ej, ptr @.str.543, ptr @.str.753
  %i.el = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.dh, ptr noundef %2, ptr noundef %i.ei, ptr noundef %i.r, i32 noundef %i.cy, i32 noundef %i.eh, ptr noundef @.str.752, i32 noundef %i.eh, ptr noundef nonnull %i.ek) ; 0 uses
  br label %ssl_end_vector.exit

ssl_end_vector.exit:                              ; preds = %bb.ad, %bb.ab, %bb.ac
  %i.em = phi i32 [ %.3.lcssa, %bb.ac ], [ %i.cy, %bb.ab ], [ %i.cy, %bb.ad ] ; 3 uses
  %i.en = getelementptr i8, ptr %0, i64 576
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = call zeroext i1 @ssl_add_vector(ptr noundef %0, ptr noundef %i.r, ptr noundef %2, ptr noundef %3, i32 noundef %i.em, i32 noundef %i.s, ptr noundef nonnull %i.c, i32 noundef %i.eo, i32 noundef 1, i32 noundef 255)
  br i1 %i.ep, label %bb.ae, label %bb.bu

bb.ae:                                            ; preds = %ssl_end_vector.exit
  %i.eq = add nuw i32 %i.em, 1                    ; 5 uses
  %i.er = load i32, ptr %i.c, align 4             ; 4 uses
  %i.es = add i32 %i.er, %i.eq                    ; 3 uses
  %i.et = getelementptr i8, ptr %0, i64 580
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = icmp eq i32 %i.er, 1
  %i.ew = select i1 %i.ev, ptr @.str.543, ptr @.str.753
  %i.ex = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %3, i32 noundef %i.eu, ptr noundef %i.r, i32 noundef %i.eq, i32 noundef %i.er, ptr noundef @.str.769, i32 noundef %i.er, ptr noundef nonnull %i.ew)
  %i.ey = getelementptr i8, ptr %0, i64 1264
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = call ptr @proto_item_add_subtree(ptr noundef %i.ex, i32 noundef %i.ez) ; 3 uses
  %i.fb = icmp ult i32 %i.eq, %i.es
  br i1 %i.fb, label %.lr.ph286, label %._crit_edge287

.lr.ph286:                                        ; preds = %bb.ae
  %i.fc = getelementptr i8, ptr %0, i64 584       ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph286, %bb.ak
  %.5284 = phi i32 [ %i.eq, %.lr.ph286 ], [ %i.fm, %bb.ak ] ; 5 uses
  %i.fd = call zeroext i8 @tvb_get_uint8(ptr noundef %i.r, i32 noundef %.5284) ; 3 uses
  %i.fe = zext i8 %i.fd to i32                    ; 5 uses
  %i.ff = icmp ult i8 %i.fd, 64
  br i1 %i.ff, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fg = load i32, ptr %i.fc, align 4
  %i.fh = call ptr @proto_tree_add_uint(ptr noundef %i.fa, i32 noundef %i.fg, ptr noundef %i.r, i32 noundef %.5284, i32 noundef 1, i32 noundef %i.fe) ; 0 uses
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.fi = icmp ult i8 %i.fd, -63
  %i.fj = load i32, ptr %i.fc, align 4            ; 2 uses
  br i1 %i.fi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fk = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.fa, i32 noundef %i.fj, ptr noundef %i.r, i32 noundef %.5284, i32 noundef 1, i32 noundef %i.fe, ptr noundef @.str.770, i32 noundef %i.fe) ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fl = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.fa, i32 noundef %i.fj, ptr noundef %i.r, i32 noundef %.5284, i32 noundef 1, i32 noundef %i.fe, ptr noundef @.str.771, i32 noundef %i.fe) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ag
  %i.fm = add i32 %.5284, 1                       ; 2 uses
  %exitcond.not = icmp eq i32 %i.fm, %i.es
  br i1 %exitcond.not, label %._crit_edge287, label %bb.af, !llvm.loop !131

._crit_edge287:                                   ; preds = %bb.ak, %bb.ae
  %.5.lcssa = phi i32 [ %i.eq, %bb.ae ], [ %i.es, %bb.ak ] ; 3 uses
  %i.fn = icmp ult i32 %.5.lcssa, %i.s
  br i1 %i.fn, label %bb.al, label %bb.an

bb.al:                                            ; preds = %._crit_edge287
  %i.fo = call fastcc i32 @ssl_dissect_hnd_extension(ptr noundef %0, ptr noundef %i.r, ptr noundef %3, ptr noundef %2, i32 noundef %.5.lcssa, i32 noundef %i.s, i8 noundef zeroext 1, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %i.cb, ptr noundef %i.h, ptr noundef nonnull %10, ptr noundef %9) ; 2 uses
  %i.fp = load i32, ptr %10, align 8              ; 2 uses
  %.not259 = icmp eq i32 %i.fp, 0
  br i1 %.not259, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %i.fp, ptr %i.a, align 4
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge287
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.h, ptr noundef @.str.772)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.am, %bb.an
  %.6 = phi i32 [ %i.fo, %bb.am ], [ %i.fo, %bb.al ], [ %.5.lcssa, %bb.an ] ; 5 uses
  %i.fq = getelementptr i8, ptr %2, i64 368       ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = call zeroext i1 @proto_is_frame_protocol(ptr noundef %i.fr, ptr noundef @.str.773)
  br i1 %i.fs, label %.sink.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ft = load ptr, ptr %i.fq, align 8
  %i.fu = call zeroext i1 @proto_is_frame_protocol(ptr noundef %i.ft, ptr noundef @.str.775)
  br i1 %i.fu, label %.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fv = load ptr, ptr %i.fq, align 8
  %i.fw = call zeroext i1 @proto_is_frame_protocol(ptr noundef %i.fv, ptr noundef @.str.642)
  br i1 %i.fw, label %.sink.split, label %bb.ar

.sink.split:                                      ; preds = %bb.aq, %bb.ap, %bb.ao
  %.str.776.sink = phi ptr [ @.str.774, %bb.ao ], [ @.str.776, %bb.ap ], [ @.str.777, %bb.aq ]
  call void @wmem_strbuf_append(ptr noundef %i.j, ptr noundef %.str.776.sink)
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.aq
  %i.fx = load i32, ptr %i.a, align 4
  %i.fy = call ptr @val_to_str_const(i32 noundef %i.fx, ptr noundef @ssl_version_ja4_names, ptr noundef @.str.779)
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.j, ptr noundef @.str.778, ptr noundef %i.fy)
  %i.fz = load i8, ptr %i.t, align 4, !range !9, !noundef !10
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = select i1 %i.ga, ptr @.str.777, ptr @.str.780
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.j, ptr noundef @.str.778, ptr noundef nonnull %i.gb)
  %i.gc = load i32, ptr %i.u, align 8             ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, 99
  br i1 %i.gd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @wmem_strbuf_append(ptr noundef %i.j, ptr noundef @.str.781)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.j, ptr noundef @.str.782, i32 noundef %i.gc)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ge = load i32, ptr %i.v, align 4             ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, 99
  br i1 %i.gf, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @wmem_strbuf_append(ptr noundef %i.j, ptr noundef @.str.781)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.j, ptr noundef @.str.782, i32 noundef %i.ge)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.gg = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.gh = call i64 @wmem_strbuf_get_len(ptr noundef %i.gg)
  %.not260 = icmp eq i64 %i.gh, 0
  br i1 %.not260, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gi = call ptr @wmem_strbuf_get_str(ptr noundef %i.gg)
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.j, ptr noundef @.str.778, ptr noundef %i.gi)
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  call void @wmem_strbuf_append(ptr noundef %i.j, ptr noundef @.str.779)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gj = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.gk = call ptr @wmem_list_head(ptr noundef %i.gj)
  %i.gl = call i32 @wmem_list_count(ptr noundef %i.gj)
  %.not303 = icmp eq i32 %i.gl, 0
  br i1 %.not303, label %._crit_edge293, label %.lr.ph292

._crit_edge293:                                   ; preds = %bb.bc, %bb.ba
  %i.gm = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.gn = call ptr @wmem_list_head(ptr noundef %i.gm)
  %i.go = call i32 @wmem_list_count(ptr noundef %i.gm)
  %.not304 = icmp eq i32 %i.go, 0
  br i1 %.not304, label %._crit_edge298, label %.lr.ph297

.lr.ph292:                                        ; preds = %bb.ba, %bb.bc
  %.0231290 = phi i32 [ %i.gw, %bb.bc ], [ 0, %bb.ba ] ; 2 uses
  %.0233289 = phi ptr [ %i.gv, %bb.bc ], [ %i.gk, %bb.ba ] ; 2 uses
  %i.gp = call ptr @wmem_list_frame_data(ptr noundef %.0233289)
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = trunc i64 %i.gq to i32
  call void (ptr, ptr, ...) @wmem_strbuf_append_printf(ptr noundef %i.l, ptr noundef @.str.783, i32 noundef %i.gr)
  %i.gs = call i32 @wmem_list_count(ptr noundef %i.gj)
  %i.gt = add i32 %i.gs, -1
  %i.gu = icmp ult i32 %.0231290, %i.gt
  br i1 %i.gu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph292
  call void @wmem_strbuf_append(ptr noundef %i.l, ptr noundef @.str.784)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph292
end_hunk_0
