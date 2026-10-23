Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/url?download=true
inline.NumInlined: 43
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@easy_meta_freeentry:bb.a

declare void @curlx_dyn_init(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Curl_bufref_init(ptr noundef) local_unnamed_addr #2

declare void @Curl_req_init(ptr noundef) local_unnamed_addr #2

declare void @Curl_initinfo(ptr noundef) local_unnamed_addr #2

declare void @Curl_llist_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_netrc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Curl_conn_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !203  ; 2 uses
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 2097152
  %.not32 = icmp eq i32 %i.i, 0
  br i1 %.not32, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 %i.f(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @Curl_conn_cf_discard_all(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #7
  tail call void @Curl_conn_cf_discard_all(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 200
  tail call void @Curl_peer_unlink(ptr noundef nonnull %i.k) #7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @Curl_peer_unlink(ptr noundef nonnull %i.l) #7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @Curl_creds_unlink(ptr noundef nonnull %i.m) #7
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184
  tail call void @Curl_creds_unlink(ptr noundef nonnull %i.n) #7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @Curl_creds_unlink(ptr noundef nonnull %i.o) #7
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @Curl_peer_unlink(ptr noundef nonnull %i.p) #7
  %i.q = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104
  tail call void %i.q(ptr noundef %i.s) #7
  store ptr null, ptr %i.r, align 8, !tbaa !104
  %i.t = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105
  tail call void %i.t(ptr noundef %i.v) #7
  store ptr null, ptr %i.u, align 8, !tbaa !105
  tail call void @Curl_ssl_conn_config_cleanup(ptr noundef nonnull %1) #7
  %i.w = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  tail call void %i.w(ptr noundef %i.y) #7
  store ptr null, ptr %i.x, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @Curl_hash_destroy(ptr noundef nonnull %i.z) #7
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @Curl_peer_unlink(ptr noundef nonnull %i.aa) #7
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @Curl_peer_unlink(ptr noundef nonnull %i.ab) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @Curl_peer_unlink(ptr noundef nonnull %i.ac) #7
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @Curl_peer_unlink(ptr noundef nonnull %i.ad) #7
  %i.ae = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  tail call void %i.ae(ptr noundef nonnull %1) #7
  ret void
}

declare void @Curl_conn_cf_discard_all(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_ssl_conn_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @Curl_conn_seems_dead(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.curltime, align 8           ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @Curl_pgrs_now(ptr noundef %1) #7 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %i.e, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !204
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = call i64 @curlx_ptimediff_ms(ptr noundef nonnull %2, ptr noundef nonnull %i.k) #7 ; 2 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !204  ; 2 uses
  %i.n = icmp sgt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.p = load i64, ptr %i.o, align 1
  %i.q = and i64 %i.p, 536870912
  %.not32.i = icmp eq i64 %i.q, 0
  br i1 %.not32.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108  ; 2 uses
  %.not33.i = icmp eq ptr %i.s, null
  br i1 %.not33.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !110
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i64 noundef %i.l, i64 noundef %i.m) #7
  br label %.thread

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !205
  %.not27.i = icmp eq i64 %i.x, 0
  br i1 %.not27.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.z = call i64 @curlx_ptimediff_ms(ptr noundef nonnull %2, ptr noundef nonnull %i.y) #7 ; 2 uses
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !205 ; 2 uses
  %i.ab = icmp sgt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = and i64 %i.ad, 536870912
  %.not29.i = icmp eq i64 %i.ae, 0
  br i1 %.not29.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %.not30.i = icmp eq ptr %i.ag, null
  br i1 %.not30.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !110
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i64 noundef %i.z, i64 noundef %i.aa) #7
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.l, %bb.m, %bb.d, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.p

bb.n:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !99
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !102
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !206
  %.not28 = icmp eq ptr %i.ap, null
  br i1 %.not28, label %.split, label %bb.o

.split:                                           ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i8 0, ptr %i.a, align 1, !tbaa !112
  call void @Curl_attach_connection(ptr noundef nonnull %1, ptr noundef nonnull %0) #7
  %i.aq = call zeroext i1 @Curl_conn_is_alive(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #7
  %3 = xor i1 %i.aq, true
  %i.ar = load i8, ptr %i.a, align 1, !tbaa !112, !range !113, !noundef !207
  %4 = trunc nuw i8 %i.ar to i1
  %narrow = select i1 %4, i1 true, i1 %3
  call void @Curl_detach_connection(ptr noundef nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %narrow, label %bb.p, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @Curl_attach_connection(ptr noundef nonnull %1, ptr noundef nonnull %0) #7
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !102
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !206
  %i.ax = call zeroext i1 %i.aw(ptr noundef nonnull %1, ptr noundef nonnull %0) #7
  call void @Curl_detach_connection(ptr noundef nonnull %1) #7
  br i1 %i.ax, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.split, %.thread, %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2187
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = and i64 %i.az, 536870912
  %.not30 = icmp eq i64 %i.ba, 0
  br i1 %.not30, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4504
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !108 ; 2 uses
  %.not31 = icmp eq ptr %i.bc, null
  br i1 %.not31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !110
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !114
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %1, ptr noundef nonnull @.str, i64 noundef %i.bh) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.o, %.split, %bb.s, %bb.r, %bb.p
  %.1 = phi i1 [ true, %bb.s ], [ true, %bb.p ], [ true, %bb.r ], [ false, %.split ], [ false, %bb.o ], [ false, %bb.a ]
  ret i1 %.1
}

declare ptr @Curl_pgrs_now(ptr noundef) local_unnamed_addr #2

declare void @Curl_attach_connection(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_conn_is_alive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Curl_infof(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Curl_conn_upkeep(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Curl_pgrs_now(ptr noundef %0) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 2 uses
  %i.c = tail call i64 @curlx_ptimediff_ms(ptr noundef %i.a, ptr noundef nonnull %i.b) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !208
  %.not = icmp sgt i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @Curl_attach_connection(ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  %i.f = tail call i32 @Curl_conn_keep_alive(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #7
  tail call void @Curl_detach_connection(ptr noundef nonnull %0) #7
  %i.g = tail call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !117
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i64 @curlx_ptimediff_ms(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_conn_keep_alive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 1, 68) i32 @Curl_uc_to_curlcode(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %switch.tableidx = add i32 %0, -5               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.Curl_connect, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi i32 [ 3, %bb.a ], [ %switch.ext, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 28) i32 @Curl_parse_login_details(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @memchr(ptr noundef %0, i32 noundef 58, i64 noundef %1) #8 ; 7 uses
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef %0, i32 noundef 59, i64 noundef %1) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.057 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 11 uses
  %.not68 = icmp ne ptr %i.a, null                ; 3 uses
  br i1 %.not68, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not70 = icmp ne ptr %.057, null               ; 2 uses
  %i.c = icmp ugt ptr %i.a, %.057
  %or.cond = select i1 %.not70, i1 %i.c, i1 false
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = ptrtoint ptr %.057 to i64
  %.ph.v = select i1 %or.cond, i64 %i.f, i64 %i.d
  %.ph = sub i64 %.ph.v, %i.e
  %i.g = icmp ugt ptr %.057, %i.a
  %or.cond77 = select i1 %.not70, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.v.v = select i1 %or.cond77, ptr %.057, ptr %i.h
  %.v = ptrtoint ptr %.v.v to i64
  %i.i = xor i64 %i.d, -1
  %i.j = add i64 %.v, %i.i
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not69 = icmp eq ptr %.057, null
  %i.k = ptrtoint ptr %.057 to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = select i1 %.not69, i64 %1, i64 %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi i64 [ %.ph, %bb.d ], [ %i.n, %bb.e ]
  %i.p = phi i64 [ %i.j, %bb.d ], [ 0, %bb.e ]
  %.not72 = icmp eq ptr %.057, null
  br i1 %.not72, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ugt ptr %i.a, %.057
  %or.cond78 = select i1 %.not68, i1 %i.q, i1 false
  %i.r = ptrtoint ptr %.057 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.v81.v = select i1 %or.cond78, ptr %i.a, ptr %i.s
  %.v81 = ptrtoint ptr %.v81.v to i64
  %i.t = xor i64 %i.r, -1
  %i.u = add i64 %.v81, %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = phi i64 [ %i.u, %bb.g ], [ 0, %bb.f ]    ; 2 uses
  %i.w = tail call ptr @curlx_memdup0(ptr noundef %0, i64 noundef %i.o) #7 ; 3 uses
  %.not73 = icmp eq ptr %i.w, null
  br i1 %.not73, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not68, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.y = tail call ptr @curlx_memdup0(ptr noundef nonnull %i.x, i64 noundef %i.p) #7 ; 2 uses
  %.not74 = icmp eq ptr %i.y, null
  br i1 %.not74, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.058 = phi ptr [ %i.y, %bb.j ], [ null, %bb.i ] ; 2 uses
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not75 = icmp eq i64 %i.v, 0
  br i1 %.not75, label %.thread79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.057, i64 1
  %i.aa = tail call ptr @curlx_memdup0(ptr noundef nonnull %i.z, i64 noundef %i.v) #7 ; 2 uses
  %.not76 = icmp eq ptr %i.aa, null
  br i1 %.not76, label %bb.o, label %.thread79

.thread79:                                        ; preds = %bb.l, %bb.m
  %.056 = phi ptr [ %i.aa, %bb.m ], [ null, %bb.l ]
  store ptr %.056, ptr %4, align 8, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %.thread79, %bb.k
  store ptr %i.w, ptr %2, align 8, !tbaa !72
  store ptr %.058, ptr %3, align 8, !tbaa !72
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.j, %bb.h
  %.1 = phi ptr [ null, %bb.h ], [ null, %bb.j ], [ %.058, %bb.m ]
end_hunk_0
