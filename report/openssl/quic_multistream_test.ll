Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_multistream_test?download=true
inline.NumInlined: 103
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@script_21_inject_plain:bb.a
  %.not12 = icmp eq i32 %i.bg, 0
  br i1 %.not12, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = call i32 @WPACKET_quic_write_vlint(ptr noundef nonnull %4, i64 noundef 0) #14
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2861, ptr noundef nonnull @.str.26, i32 noundef %i.bj) #14
  %.not13 = icmp eq i32 %i.bk, 0
  br i1 %.not13, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = call i32 @WPACKET_put_bytes__(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 1) #14
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2865, ptr noundef nonnull @.str.29, i32 noundef %i.bn) #14
  %.not14 = icmp eq i32 %i.bo, 0
  br i1 %.not14, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = call i32 @WPACKET_put_bytes__(ptr noundef nonnull %4, i64 noundef 0, i64 noundef 1) #14
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2869, ptr noundef nonnull @.str.28, i32 noundef %i.br) #14
  %.not15 = icmp eq i32 %i.bs, 0
  br i1 %.not15, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = call i32 @WPACKET_memset(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 16) #14
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2873, ptr noundef nonnull @.str.30, i32 noundef %i.bv) #14
  %.not16 = icmp eq i32 %i.bw, 0
  br i1 %.not16, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n, %bb.l, %bb.i, %bb.g, %bb.f, %bb.e
  %i.bx = call i32 @WPACKET_get_total_written(ptr noundef nonnull %4, ptr noundef nonnull %i.b) #14
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %i.ca = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 2879, ptr noundef nonnull @.str.31, i32 noundef %i.bz) #14
  %.not26 = icmp eq i32 %i.ca, 0
  br i1 %.not26, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !49
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !18
  %i.ce = call i32 @qtest_fault_prepend_frame(ptr noundef %i.cc, ptr noundef nonnull %i.a, i64 noundef %i.cd) #14
  %.not27 = icmp eq i32 %i.ce, 0
  br i1 %.not27, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = call i32 @WPACKET_finish(ptr noundef nonnull %4) #14 ; 0 uses
  br label %bb.w

.thread:                                          ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.m, %bb.n, %bb.j, %bb.k, %bb.l, %bb.h, %bb.i, %bb.g, %bb.f, %bb.t, %bb.d, %bb.u
  call void @WPACKET_cleanup(ptr noundef nonnull %4) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread, %bb.c, %bb.a, %bb.b
  %.08 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ], [ 0, %.thread ], [ 1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 %.08
}

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WPACKET_init_static_len(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_quic_write_vlint(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_memset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_get_total_written(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @qtest_fault_prepend_frame(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_finish(ptr noundef) local_unnamed_addr #2

declare void @WPACKET_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @run_script_worker(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.stream_info, align 8        ; 5 uses
  %5 = alloca %struct.stream_info, align 8        ; 5 uses
  %6 = alloca %struct.stream_info, align 8        ; 5 uses
  %7 = alloca %struct.stream_info, align 8        ; 5 uses
  %8 = alloca %struct.stream_info, align 8        ; 5 uses
  %9 = alloca %struct.stream_info, align 8        ; 5 uses
  %10 = alloca %struct.helper_local, align 8      ; 10 uses
  %i.a = alloca [8 x i64], align 16               ; 5 uses
  %i.b = alloca [8 x i64], align 16               ; 5 uses
  %i.c = alloca [8 x i64], align 16               ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 7 uses
  %11 = alloca %struct.ssl_shutdown_ex_args_st, align 8 ; 6 uses
  %12 = alloca %struct.ssl_shutdown_ex_args_st, align 8 ; 6 uses
  %13 = alloca %struct.ssl_conn_close_info_st, align 8 ; 8 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca i64, align 8                      ; 6 uses
  %i.u = alloca [1 x i8], align 1                 ; 4 uses
  %14 = alloca %struct.ssl_stream_reset_args_st, align 8 ; 6 uses
  %15 = alloca %struct.ssl_conn_close_info_st, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr %0, ptr %10, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 10 uses
  store ptr null, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 23 uses
  store i32 %3, ptr %i.w, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.y = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 874, ptr noundef nonnull @.str.161, ptr noundef %0) #14
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %helper_local_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = icmp slt i32 %3, 0
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !69
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ac = tail call ptr @OPENSSL_LH_new(ptr noundef nonnull @stream_info_hash, ptr noundef nonnull @stream_info_cmp) #14
  %i.ad = tail call ptr @OPENSSL_LH_set_thunks(ptr noundef %i.ac, ptr noundef nonnull @lh_STREAM_INFO_hfn_thunk, ptr noundef nonnull @lh_STREAM_INFO_cfn_thunk, ptr noundef nonnull @lh_STREAM_INFO_doall_thunk, ptr noundef nonnull @lh_STREAM_INFO_doall_arg_thunk) #14 ; 2 uses
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !69
  %i.ae = tail call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 881, ptr noundef nonnull @.str.162, ptr noundef %i.ad) #14
  %.not11.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i, label %helper_local_init.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %helper_local_init.exit

helper_local_init.exit:                           ; preds = %bb.a, %bb.d, %bb.e
  %.0.i = phi i32 [ 1, %bb.e ], [ 0, %bb.a ], [ 0, %bb.d ]
  %i.af = tail call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1063, ptr noundef nonnull @.str.69, i32 noundef %.0.i) #14
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.thread1098, label %.preheader1124

.preheader1124:                                   ; preds = %helper_local_init.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 23 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 29 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 21 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 41 uses
  %i.al = icmp slt i32 %3, 0                      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 13 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aq = icmp sgt i32 %3, -1                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 20 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader1124, %.thread987
  %.0598 = phi i64 [ %.4602, %.thread987 ], [ 0, %.preheader1124 ] ; 2 uses
  %.0579 = phi i32 [ %.18597, %.thread987 ], [ 0, %.preheader1124 ]
  %.0577 = phi i32 [ %.1578, %.thread987 ], [ 1, %.preheader1124 ] ; 2 uses
  %.sroa.0281.0 = phi i64 [ %.sroa.0281.1, %.thread987 ], [ 0, %.preheader1124 ]
  %.0567 = phi i64 [ %.2569, %.thread987 ], [ 0, %.preheader1124 ] ; 172 uses
  %.0559 = phi i64 [ %.5564, %.thread987 ], [ 0, %.preheader1124 ]
  %.0556 = phi i32 [ %.2558, %.thread987 ], [ 0, %.preheader1124 ] ; 71 uses
  %.0546 = phi ptr [ %.8554, %.thread987 ], [ null, %.preheader1124 ] ; 164 uses
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %.val822 = load i32, ptr %i.w, align 8, !tbaa !70 ; 2 uses
  %i.bi = icmp slt i32 %.val822, 0
  br i1 %i.bi, label %s_checked_out_p.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.bk = zext nneg i32 %.val822 to i64
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  br label %s_checked_out_p.exit.i

s_checked_out_p.exit.i:                           ; preds = %bb.f, %bb.g
  %i.bn = phi ptr [ %i.bm, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %i.bo = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %s_unlock.exit, label %bb.h

bb.h:                                             ; preds = %s_checked_out_p.exit.i
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !72
  %.not.i828 = icmp eq i32 %i.bq, 0
  br i1 %.not.i828, label %s_unlock.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bn, align 4, !tbaa !72
  store ptr null, ptr %i.ak, align 8, !tbaa !48
  call void @ossl_crypto_mutex_unlock(ptr noundef nonnull %i.bo) #14
  br label %s_unlock.exit

s_unlock.exit:                                    ; preds = %s_checked_out_p.exit.i, %bb.h, %bb.i
  %.not619 = icmp eq i32 %.0579, 0
  br i1 %.not619, label %bb.j, label %bb.k

bb.j:                                             ; preds = %s_unlock.exit
  %i.br = xor i32 %.0577, 1
  %i.bs = zext nneg i32 %i.br to i64
  %spec.select = add i64 %.0598, %i.bs
  %i.bt = call i64 @ossl_time_now() #14
  %.sroa.03.0.i = call i64 @llvm.uadd.sat.i64(i64 %i.bt, i64 180000000000)
  br label %bb.k

bb.k:                                             ; preds = %s_unlock.exit, %bb.j
  %.2600 = phi i64 [ %spec.select, %bb.j ], [ %.0598, %s_unlock.exit ] ; 168 uses
  %.1578 = phi i32 [ 0, %bb.j ], [ %.0577, %s_unlock.exit ]
  %.sroa.0281.1 = phi i64 [ %.sroa.03.0.i, %bb.j ], [ %.sroa.0281.0, %s_unlock.exit ] ; 2 uses
  %.1560 = phi i64 [ 0, %bb.j ], [ %.0559, %s_unlock.exit ] ; 87 uses
  %i.bu = call i64 @ossl_time_now() #14
  %.0.i829 = call range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.bu, i64 %.sroa.0281.1)
  %i.bv = call i32 @test_int_le(ptr noundef nonnull @.str.14, i32 noundef 1104, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.39, i32 noundef %.0.i829, i32 noundef 0) #14
  %.not621 = icmp eq i32 %i.bv, 0
  br i1 %.not621, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = add i64 %.2600, 1
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1105, ptr noundef nonnull @.str.71, i64 noundef %i.bw, i32 noundef %3) #14
  br label %.thread1098

bb.m:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %.2600 ; 53 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 20 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !127 ; 2 uses
  %.not622 = icmp eq ptr %i.bz, null
  br i1 %.not622, label %helper_get_s_stream.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = call fastcc ptr @helper_local_get_c_stream(ptr noundef nonnull %10, ptr noundef nonnull %i.bz) ; 4 uses
  br i1 %i.al, label %bb.o, label %helper_get_s_stream.exit.thread975

bb.o:                                             ; preds = %bb.n
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !127 ; 5 uses
  %i.cc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(8) @.str.163) #15
  %.not.i830 = icmp eq i32 %i.cc, 0
  br i1 %.not.i830, label %helper_get_s_stream.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.ce = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 904, ptr noundef nonnull @.str.164, ptr noundef nonnull %i.cb) #14
  %.not.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i, label %get_stream_info.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(8) @.str.163) #15
  %.not16.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not16.i.i, label %get_stream_info.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.cb, ptr %9, align 8, !tbaa !74
  %i.cg = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.cd, ptr noundef nonnull %9) #14 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ci = call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str.14, i32 noundef 913) #14 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %get_stream_info.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.cb, ptr %i.ci, align 8, !tbaa !74
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 -1, ptr %i.ck, align 8, !tbaa !75
  %i.cl = call ptr @OPENSSL_LH_insert(ptr noundef %i.cd, ptr noundef nonnull %i.ci) #14 ; 0 uses
  br label %bb.u

get_stream_info.exit.thread.i:                    ; preds = %bb.s, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %helper_get_s_stream.exit.thread

bb.u:                                             ; preds = %bb.t, %bb.r
  %.013.i.i = phi ptr [ %i.cg, %bb.r ], [ %i.ci, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !75
  br label %helper_get_s_stream.exit.thread

helper_get_s_stream.exit:                         ; preds = %bb.m
  br i1 %i.al, label %helper_get_s_stream.exit.thread, label %helper_get_s_stream.exit.thread975

helper_get_s_stream.exit.thread:                  ; preds = %bb.o, %get_stream_info.exit.thread.i, %bb.u, %helper_get_s_stream.exit
  %.0565974 = phi i64 [ -1, %helper_get_s_stream.exit ], [ -1, %get_stream_info.exit.thread.i ], [ %i.cn, %bb.u ], [ -1, %bb.o ] ; 3 uses
  %.0566972 = phi ptr [ %i.bh, %helper_get_s_stream.exit ], [ %i.ca, %get_stream_info.exit.thread.i ], [ %i.ca, %bb.u ], [ %i.ca, %bb.o ] ; 3 uses
  %i.co = load i32, ptr %i.an, align 4, !tbaa !38
  %.not623 = icmp eq i32 %i.co, 0
  br i1 %.not623, label %bb.v, label %bb.w

bb.v:                                             ; preds = %helper_get_s_stream.exit.thread
  %i.cp = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.cq = call i32 @ossl_quic_tserver_tick(ptr noundef %i.cp) #14 ; 0 uses
  br label %helper_get_s_stream.exit.thread975

bb.w:                                             ; preds = %helper_get_s_stream.exit.thread
  %i.cr = load i32, ptr %i.ao, align 8, !tbaa !76
  %.not624 = icmp eq i32 %i.cr, 0
  br i1 %.not624, label %bb.x, label %helper_get_s_stream.exit.thread975

bb.x:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr %i.ah, align 8, !tbaa !55
  call void @ossl_crypto_mutex_lock(ptr noundef %i.cs) #14
  store i32 1, ptr %i.ao, align 8, !tbaa !76
  %i.ct = load ptr, ptr %i.ap, align 8, !tbaa !56
  call void @ossl_crypto_condvar_signal(ptr noundef %i.ct) #14
  %i.cu = load ptr, ptr %i.ah, align 8, !tbaa !55
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.cu) #14
  br label %helper_get_s_stream.exit.thread975

helper_get_s_stream.exit.thread975:               ; preds = %bb.n, %bb.v, %bb.x, %bb.w, %helper_get_s_stream.exit
  %i.cv = phi i1 [ true, %bb.v ], [ true, %bb.x ], [ true, %bb.w ], [ false, %helper_get_s_stream.exit ], [ false, %bb.n ] ; 2 uses
  %.0565973 = phi i64 [ %.0565974, %bb.v ], [ %.0565974, %bb.x ], [ %.0565974, %bb.w ], [ -1, %helper_get_s_stream.exit ], [ -1, %bb.n ] ; 16 uses
  %.0566971 = phi ptr [ %.0566972, %bb.v ], [ %.0566972, %bb.x ], [ %.0566972, %bb.w ], [ %i.bh, %helper_get_s_stream.exit ], [ %i.ca, %bb.n ] ; 53 uses
  %i.cw = load i32, ptr %i.x, align 8, !tbaa !71
  %.not625 = icmp eq i32 %i.cw, 0
  br i1 %.not625, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %helper_get_s_stream.exit.thread975
  %i.cx = icmp ne i32 %.0556, 0
  %or.cond = select i1 %i.aq, i1 true, i1 %i.cx
  br i1 %or.cond, label %bb.z, label %thread-pre-split

bb.z:                                             ; preds = %bb.y
  %i.cy = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.cz = call i32 @SSL_handle_events(ptr noundef %i.cy) #14 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %helper_get_s_stream.exit.thread975
  br i1 %i.aq, label %bb.ab, label %thread-pre-split

bb.ab:                                            ; preds = %bb.aa
  %i.da = load i32, ptr %i.bx, align 8, !tbaa !16 ; 3 uses
  %i.db = icmp ult i32 %i.da, 53
  %switch.maskindex = zext nneg i32 %i.da to i64
  %switch.shifted = lshr i64 6757508270343507, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond1539 = select i1 %i.db, i1 %switch.lobit, i1 false
  %i.dc = zext i32 %i.da to i64                   ; 2 uses
  br i1 %or.cond1539, label %switch.lookup, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1164, ptr noundef nonnull @.str.72, i64 noundef %i.dc) #14
  br label %.thread1098

thread-pre-split:                                 ; preds = %bb.y, %bb.aa
  %.pr = load i32, ptr %i.bx, align 8, !tbaa !16
  br label %bb.ad

switch.lookup:                                    ; preds = %bb.ab
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.run_script_worker, i64 %i.dc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.ad

bb.ad:                                            ; preds = %switch.lookup, %thread-pre-split
  %i.dd = phi i32 [ %.pr, %thread-pre-split ], [ %switch.ext, %switch.lookup ]
  switch i32 %i.dd, label %bb.lx [
    i32 0, label %bb.ae
    i32 32, label %bb.ao
    i32 48, label %bb.ar
    i32 53, label %bb.at
    i32 33, label %bb.av
    i32 1, label %bb.ay
    i32 2, label %bb.bf
    i32 3, label %bb.bj
    i32 4, label %bb.br
    i32 52, label %bb.bv
    i32 5, label %bb.bz
    i32 10, label %bb.cg
    i32 11, label %bb.ch
    i32 25, label %bb.cn
    i32 6, label %bb.cs
    i32 7, label %bb.dc
    i32 8, label %bb.ds
    i32 9, label %bb.ea
    i32 12, label %bb.ek
    i32 13, label %bb.eu
    i32 14, label %bb.fd
    i32 15, label %bb.fr
    i32 16, label %bb.gb
    i32 30, label %bb.gn
    i32 17, label %bb.gz
    i32 18, label %bb.ha
    i32 19, label %bb.hk
    i32 20, label %bb.hm
    i32 55, label %bb.ho
    i32 21, label %bb.hq
    i32 50, label %bb.hw
    i32 22, label %bb.ib
    i32 23, label %bb.im
    i32 24, label %bb.jh
    i32 34, label %bb.jk
    i32 26, label %bb.jn
    i32 27, label %bb.jq
    i32 28, label %bb.jx
    i32 35, label %bb.ka
    i32 41, label %bb.kh
    i32 29, label %bb.kp
    i32 54, label %bb.kp
    i32 31, label %bb.ku
    i32 36, label %bb.lb
    i32 37, label %bb.lc
    i32 38, label %bb.le
    i32 39, label %bb.lf
    i32 51, label %bb.lg
    i32 40, label %bb.lh
    i32 42, label %bb.li
    i32 46, label %bb.lj
    i32 49, label %bb.lk
    i32 43, label %bb.ll
    i32 44, label %bb.lp
    i32 45, label %bb.lq
    i32 47, label %bb.ls
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.de = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1171, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.39, i64 noundef %.0567, i64 noundef 0) #14
  %.not777 = icmp eq i32 %i.de, 0
  br i1 %.not777, label %.thread1098, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.cv, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.af
  %i.df = load i64, ptr %i.az, align 8, !tbaa !59
  %.not1230 = icmp eq i64 %i.df, 0
  br i1 %.not1230, label %.loopexit, label %.lr.ph1226

.lr.ph1226:                                       ; preds = %.preheader, %bb.an
  %.05421225 = phi i64 [ %i.ee, %bb.an ], [ 0, %.preheader ] ; 4 uses
  %.15721224 = phi i32 [ %.3574, %bb.an ], [ 0, %.preheader ] ; 3 uses
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.dh = getelementptr inbounds nuw [64 x i8], ptr %i.dg, i64 %.05421225
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !77 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph1226
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.dj) #14
  %i.dl = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.dl, i64 %.05421225 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 52
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !78
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !77
  call void @ossl_crypto_mutex_unlock(ptr noundef %i.dq) #14
  %.not778 = icmp eq i32 %i.do, 0
  br i1 %.not778, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %.not779 = icmp eq i32 %.15721224, 0
  br i1 %.not779, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 1189, ptr noundef nonnull @.str.74, i64 noundef %.05421225) #14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dr = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %s_checked_out_p.exit.i832, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.du = zext nneg i32 %i.dr to i64
  %i.dv = getelementptr inbounds nuw [64 x i8], ptr %i.dt, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  br label %s_checked_out_p.exit.i832

s_checked_out_p.exit.i832:                        ; preds = %bb.aj, %bb.ak
  %i.dx = phi ptr [ %i.dw, %bb.ak ], [ %i.aj, %bb.aj ] ; 2 uses
  %i.dy = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %s_lock.exit, label %bb.al

bb.al:                                            ; preds = %s_checked_out_p.exit.i832
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !72
  %.not.i833 = icmp eq i32 %i.ea, 0
  br i1 %.not.i833, label %bb.am, label %s_lock.exit

bb.am:                                            ; preds = %bb.al
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.dy) #14
  %i.eb = load ptr, ptr %i.ar, align 8, !tbaa !47
  store ptr %i.eb, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.dx, align 4, !tbaa !72
  br label %s_lock.exit

s_lock.exit:                                      ; preds = %s_checked_out_p.exit.i832, %bb.al, %bb.am
  %i.ec = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.ed = call i32 @ossl_quic_tserver_tick(ptr noundef %i.ec) #14 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ag, %.lr.ph1226, %s_lock.exit
  %.3574 = phi i32 [ %.15721224, %.lr.ph1226 ], [ %.15721224, %bb.ag ], [ 1, %s_lock.exit ]
  %i.ee = add nuw i64 %.05421225, 1               ; 2 uses
  %i.ef = load i64, ptr %i.az, align 8, !tbaa !59
  %i.eg = icmp ult i64 %i.ee, %i.ef
  br i1 %i.eg, label %.lr.ph1226, label %.loopexit, !llvm.loop !124

.loopexit:                                        ; preds = %bb.an, %.preheader, %bb.af
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 1199, ptr noundef nonnull @.str.75, ptr noundef %2, i32 noundef %3) #14
  br label %.thread1098

bb.ao:                                            ; preds = %bb.ad
  %i.eh = call i32 @test_size_t_lt(ptr noundef nonnull @.str.14, i32 noundef 1204, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.76, i64 noundef %.0567, i64 noundef 8) #14
  %.not775 = icmp eq i32 %i.eh, 0
  br i1 %.not775, label %.thread1098, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !17
  %i.ek = call i32 @test_size_t_gt(ptr noundef nonnull @.str.14, i32 noundef 1207, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.39, i64 noundef %i.ej, i64 noundef 0) #14
  %.not776 = icmp eq i32 %i.ek, 0
  br i1 %.not776, label %.thread1098, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.el = add i64 %.2600, 1
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0567
  store i64 %i.el, ptr %i.em, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0567
  store i64 0, ptr %i.en, align 8, !tbaa !18
  %i.eo = load i64, ptr %i.ei, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0567
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !18
  %i.eq = add nuw nsw i64 %.0567, 1
  br label %.thread987

bb.ar:                                            ; preds = %bb.ad
  %.not774 = icmp eq ptr %.0566971, null
  br i1 %.not774, label %bb.as, label %.thread987

bb.as:                                            ; preds = %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.es = load i64, ptr %i.er, align 8, !tbaa !17
  %i.et = add i64 %i.es, %.2600
  br label %.thread987

bb.at:                                            ; preds = %bb.ad
  %i.eu = load i32, ptr %i.an, align 4, !tbaa !38
  %.not773 = icmp eq i32 %i.eu, 0
  br i1 %.not773, label %.thread987, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !17
  %i.ex = add i64 %i.ew, %.2600
  br label %.thread987

bb.av:                                            ; preds = %bb.ad
  %i.ey = call i32 @test_size_t_gt(ptr noundef nonnull @.str.14, i32 noundef 1231, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.39, i64 noundef %.0567, i64 noundef 0) #14
  %.not772 = icmp eq i32 %i.ey, 0
  br i1 %.not772, label %.thread1098, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ez = add i64 %.0567, -1                      ; 4 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ez ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !18
  %i.fc = add i64 %i.fb, 1                        ; 2 uses
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ez
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !18
  %i.ff = icmp eq i64 %i.fc, %i.fe
  br i1 %i.ff, label %.thread987, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ez
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !18
  br label %.thread987

bb.ay:                                            ; preds = %bb.ad
  store ptr %i.bx, ptr %i.bf, align 8, !tbaa !79
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !128
  %i.fk = call i32 %i.fj(ptr noundef nonnull %0, ptr noundef nonnull %10) #14
  store ptr null, ptr %i.bf, align 8, !tbaa !79
  br i1 %i.cv, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.fl = load i32, ptr %i.bg, align 8, !tbaa !80
  %.not770 = icmp eq i32 %i.fl, 0
  br i1 %.not770, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.bg, align 8, !tbaa !80
  %i.fm = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %s_checked_out_p.exit.i835, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fo = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.fp = zext nneg i32 %i.fm to i64
  %i.fq = getelementptr inbounds nuw [64 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  br label %s_checked_out_p.exit.i835

s_checked_out_p.exit.i835:                        ; preds = %bb.ba, %bb.bb
  %i.fs = phi ptr [ %i.fr, %bb.bb ], [ %i.aj, %bb.ba ] ; 2 uses
  %i.ft = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %.thread978, label %bb.bc

bb.bc:                                            ; preds = %s_checked_out_p.exit.i835
  %i.fv = load i32, ptr %i.fs, align 4, !tbaa !72
  %.not.i836 = icmp eq i32 %i.fv, 0
  br i1 %.not.i836, label %bb.bd, label %.thread978

bb.bd:                                            ; preds = %bb.bc
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.ft) #14
  %i.fw = load ptr, ptr %i.ar, align 8, !tbaa !47
  store ptr %i.fw, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.fs, align 4, !tbaa !72
  br label %.thread978

.thread978:                                       ; preds = %s_checked_out_p.exit.i835, %bb.bc, %bb.bd
  %i.fx = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.fy = call i32 @ossl_quic_tserver_tick(ptr noundef %i.fx) #14 ; 0 uses
  br label %.thread987

bb.be:                                            ; preds = %bb.ay, %bb.az
  %i.fz = icmp ne i32 %i.fk, 0
  %i.ga = zext i1 %i.fz to i32
  %i.gb = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1257, ptr noundef nonnull @.str.78, i32 noundef %i.ga) #14
  %.not771.not = icmp eq i32 %i.gb, 0
  br i1 %.not771.not, label %.thread1098, label %.thread987

bb.bf:                                            ; preds = %bb.ad
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !129 ; 2 uses
  %i.ge = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gd) #15 ; 4 uses
  %i.gf = call i32 @test_size_t_le(ptr noundef nonnull @.str.14, i32 noundef 1265, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i64 noundef %i.ge, i64 noundef 255) #14
  %.not767 = icmp eq i32 %i.gf, 0
  br i1 %.not767, label %.thread1098, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gg = add i64 %i.ge, 1                        ; 2 uses
  %i.gh = call noalias ptr @CRYPTO_malloc(i64 noundef %i.gg, ptr noundef nonnull @.str.14, i32 noundef 1266) #14 ; 7 uses
  %i.gi = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1266, ptr noundef nonnull @.str.81, ptr noundef %i.gh) #14
  %.not768 = icmp eq i32 %i.gi, 0
  br i1 %.not768, label %.thread1098, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr nonnull align 1 %i.gd, i64 %i.ge, i1 false)
  %i.gk = trunc i64 %i.ge to i8
  store i8 %i.gk, ptr %i.gh, align 1, !tbaa !44
  %i.gl = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.gm = trunc i64 %i.gg to i32
  %i.gn = call i32 @SSL_set_alpn_protos(ptr noundef %i.gl, ptr noundef nonnull %i.gh, i32 noundef %i.gm) #14
  %i.go = icmp ne i32 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 1274, ptr noundef nonnull @.str.82, i32 noundef %i.gp) #14
  %.not769 = icmp eq i32 %i.gq, 0
  br i1 %.not769, label %.thread1098, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @CRYPTO_free(ptr noundef nonnull %i.gh, ptr noundef nonnull @.str.14, i32 noundef 1277) #14
  br label %.thread987

bb.bj:                                            ; preds = %bb.ad
  %i.gr = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.gs = call i32 @SSL_connect(ptr noundef %i.gr) #14 ; 4 uses
  %i.gt = call fastcc i32 @check_consistent_want(ptr noundef %.0566971, i32 noundef %i.gs)
  %.not761 = icmp eq i32 %i.gt, 0
  br i1 %.not761, label %.thread1098, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not762 = icmp eq i32 %i.gs, 1
  br i1 %.not762, label %.thread987, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gu = load i32, ptr %i.an, align 4, !tbaa !38
  %.not763 = icmp eq i32 %i.gu, 0
  br i1 %.not763, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.gv = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.gw = call i32 @SSL_get_error(ptr noundef %i.gv, i32 noundef range(i32 2, 1) %i.gs) #14
  %i.gx = and i32 %i.gw, -2
  %.not1122 = icmp eq i32 %i.gx, 2
  br i1 %.not1122, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.gy = load i32, ptr %i.an, align 4, !tbaa !38
  %.not765 = icmp eq i32 %i.gy, 0
  br i1 %.not765, label %.thread987, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1291, ptr noundef nonnull @.str.83) #14
  br label %.thread1098

bb.bp:                                            ; preds = %bb.bm, %bb.bl
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !17
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.bq, label %.thread987

bb.bq:                                            ; preds = %bb.bp
  %i.hc = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1293, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef %i.gs, i32 noundef 1) #14
  %.not766 = icmp eq i32 %i.hc, 0
  br i1 %.not766, label %.thread1098, label %.thread987

bb.br:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i64 0, ptr %i.d, align 8, !tbaa !18
  %i.hd = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1302, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not757 = icmp eq i32 %i.hd, 0
  br i1 %.not757, label %.thread992, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.he = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !129
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !17
  %i.hi = call i32 @SSL_write_ex(ptr noundef %.0566971, ptr noundef %i.hf, i64 noundef %i.hh, ptr noundef nonnull %i.d) #14 ; 2 uses
  %i.hj = icmp ne i32 %i.hi, 0
  %i.hk = zext i1 %i.hj to i32
  %i.hl = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1306, ptr noundef nonnull @.str.87, i32 noundef %i.hk) #14
  %.not758 = icmp eq i32 %i.hl, 0
  br i1 %.not758, label %.thread992, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hm = call fastcc i32 @check_consistent_want(ptr noundef %.0566971, i32 noundef %i.hi)
  %.not759 = icmp eq i32 %i.hm, 0
  br i1 %.not759, label %.thread992, label %bb.bu

.thread992:                                       ; preds = %bb.bs, %bb.br, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %.thread1098

bb.bu:                                            ; preds = %bb.bt
  %i.hn = load i64, ptr %i.d, align 8, !tbaa !18
  %i.ho = load i64, ptr %i.hg, align 8, !tbaa !17
  %i.hp = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1308, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.77, i64 noundef %i.hn, i64 noundef %i.ho) #14
  %.not760.not = icmp eq i32 %i.hp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br i1 %.not760.not, label %.thread1098, label %.thread987

bb.bv:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i64 0, ptr %i.e, align 8, !tbaa !18
  %i.hq = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1316, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not753 = icmp eq i32 %i.hq, 0
  br i1 %.not753, label %.thread996, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !129
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !17
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !19
  %i.hx = call i32 @SSL_write_ex2(ptr noundef %.0566971, ptr noundef %i.hs, i64 noundef %i.hu, i64 noundef %i.hw, ptr noundef nonnull %i.e) #14 ; 2 uses
  %i.hy = icmp ne i32 %i.hx, 0
  %i.hz = zext i1 %i.hy to i32
  %i.ia = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1321, ptr noundef nonnull @.str.87, i32 noundef %i.hz) #14
  %.not754 = icmp eq i32 %i.ia, 0
  br i1 %.not754, label %.thread996, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ib = call fastcc i32 @check_consistent_want(ptr noundef %.0566971, i32 noundef %i.hx)
  %.not755 = icmp eq i32 %i.ib, 0
  br i1 %.not755, label %.thread996, label %bb.by

.thread996:                                       ; preds = %bb.bw, %bb.bv, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %.thread1098

bb.by:                                            ; preds = %bb.bx
  %i.ic = load i64, ptr %i.e, align 8, !tbaa !18
  %i.id = load i64, ptr %i.ht, align 8, !tbaa !17
  %i.ie = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1323, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.77, i64 noundef %i.ic, i64 noundef %i.id) #14
  %.not756.not = icmp eq i32 %i.ie, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br i1 %.not756.not, label %.thread1098, label %.thread987

bb.bz:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i64 0, ptr %i.f, align 8, !tbaa !18
  %i.if = call i32 @test_uint64_t_ne(ptr noundef nonnull @.str.14, i32 noundef 1330, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i64 noundef %.0565973, i64 noundef -1) #14
  %.not750 = icmp eq i32 %i.if, 0
  br i1 %.not750, label %.thread1000, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ig = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.ih = icmp slt i32 %i.ig, 0
  br i1 %i.ih, label %s_checked_out_p.exit.i840, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ii = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ij = zext nneg i32 %i.ig to i64
  %i.ik = getelementptr inbounds nuw [64 x i8], ptr %i.ii, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  br label %s_checked_out_p.exit.i840

s_checked_out_p.exit.i840:                        ; preds = %bb.ca, %bb.cb
  %i.im = phi ptr [ %i.il, %bb.cb ], [ %i.aj, %bb.ca ] ; 2 uses
  %i.in = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %s_checked_out_p.exit.i840
  %i.ip = load i32, ptr %i.im, align 4, !tbaa !72
  %.not.i841 = icmp eq i32 %i.ip, 0
  br i1 %.not.i841, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %s_checked_out_p.exit.i840
  %i.iq = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit844

bb.ce:                                            ; preds = %bb.cc
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.in) #14
  %i.ir = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.ir, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.im, align 4, !tbaa !72
  br label %s_lock.exit844

s_lock.exit844:                                   ; preds = %bb.cd, %bb.ce
  %.0.i842 = phi ptr [ %i.iq, %bb.cd ], [ %i.ir, %bb.ce ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !129
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !17
  %i.iw = call i32 @ossl_quic_tserver_write(ptr noundef %.0.i842, i64 noundef %.0565973, ptr noundef %i.it, i64 noundef %i.iv, ptr noundef nonnull %i.f) #14
  %i.ix = icmp ne i32 %i.iw, 0
  %i.iy = zext i1 %i.ix to i32
  %i.iz = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1335, ptr noundef nonnull @.str.91, i32 noundef %i.iy) #14
  %.not751 = icmp eq i32 %i.iz, 0
  br i1 %.not751, label %.thread1000, label %bb.cf

.thread1000:                                      ; preds = %s_lock.exit844, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %.thread1098

bb.cf:                                            ; preds = %s_lock.exit844
  %i.ja = load i64, ptr %i.f, align 8, !tbaa !18
  %i.jb = load i64, ptr %i.iu, align 8, !tbaa !17
  %i.jc = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1336, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.77, i64 noundef %i.ja, i64 noundef %i.jb) #14
  %.not752.not = icmp eq i32 %i.jc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br i1 %.not752.not, label %.thread1098, label %.thread987

bb.cg:                                            ; preds = %bb.ad
  %i.jd = call i32 @SSL_stream_conclude(ptr noundef %.0566971, i64 noundef 0) #14
  %i.je = icmp ne i32 %i.jd, 0
  %i.jf = zext i1 %i.je to i32
  %i.jg = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1341, ptr noundef nonnull @.str.92, i32 noundef %i.jf) #14
  %.not749 = icmp eq i32 %i.jg, 0
  br i1 %.not749, label %.thread1098, label %.thread987

bb.ch:                                            ; preds = %bb.ad
  %i.jh = call i32 @test_uint64_t_ne(ptr noundef nonnull @.str.14, i32 noundef 1346, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i64 noundef %.0565973, i64 noundef -1) #14
  %.not748 = icmp eq i32 %i.jh, 0
  br i1 %.not748, label %.thread1098, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ji = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.jj = icmp slt i32 %i.ji, 0
  br i1 %i.jj, label %s_checked_out_p.exit.i845, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jk = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.jl = zext nneg i32 %i.ji to i64
  %i.jm = getelementptr inbounds nuw [64 x i8], ptr %i.jk, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 56
  br label %s_checked_out_p.exit.i845

s_checked_out_p.exit.i845:                        ; preds = %bb.ci, %bb.cj
  %i.jo = phi ptr [ %i.jn, %bb.cj ], [ %i.aj, %bb.ci ] ; 2 uses
  %i.jp = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %s_checked_out_p.exit.i845
  %i.jr = load i32, ptr %i.jo, align 4, !tbaa !72
  %.not.i846 = icmp eq i32 %i.jr, 0
  br i1 %.not.i846, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %s_checked_out_p.exit.i845
  %i.js = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit849

bb.cm:                                            ; preds = %bb.ck
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.jp) #14
  %i.jt = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.jt, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.jo, align 4, !tbaa !72
  br label %s_lock.exit849

s_lock.exit849:                                   ; preds = %bb.cl, %bb.cm
  %.0.i847 = phi ptr [ %i.js, %bb.cl ], [ %i.jt, %bb.cm ]
  %i.ju = call i32 @ossl_quic_tserver_conclude(ptr noundef %.0.i847, i64 noundef %.0565973) #14 ; 0 uses
  br label %.thread987

bb.cn:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  store i64 0, ptr %i.h, align 8, !tbaa !18
  %i.jv = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1356, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not746 = icmp eq i32 %i.jv, 0
  br i1 %.not746, label %.thread1004, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jw = call i32 @SSL_peek_ex(ptr noundef %.0566971, ptr noundef nonnull %i.g, i64 noundef 1, ptr noundef nonnull %i.h) #14
  %i.jx = icmp eq i32 %i.jw, 0
  %i.jy = load i64, ptr %i.h, align 8
  %i.jz = icmp eq i64 %i.jy, 0
  %or.cond28 = select i1 %i.jx, i1 true, i1 %i.jz
  br i1 %or.cond28, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.ka = load i32, ptr %i.an, align 4, !tbaa !38
  %.not747 = icmp eq i32 %i.ka, 0
  br i1 %.not747, label %.thread1004, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1361, ptr noundef nonnull @.str.83) #14
  br label %.thread1004

.thread1004:                                      ; preds = %bb.cq, %bb.cn, %bb.cp
  %.7586.ph = phi i32 [ 1, %bb.cp ], [ 0, %bb.cn ], [ 0, %bb.cq ]
  %.6.ph = phi i32 [ 4, %bb.cp ], [ 2, %bb.cn ], [ 2, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %.thread987

bb.cr:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  br label %.thread987

bb.cs:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i64 0, ptr %i.i, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !17 ; 3 uses
  %i.kd = icmp ne i64 %i.kc, 0
  %i.ke = icmp eq ptr %.0546, null
  %or.cond30 = select i1 %i.kd, i1 %i.ke, i1 false
  br i1 %or.cond30, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.kf = call noalias ptr @CRYPTO_malloc(i64 noundef %i.kc, ptr noundef nonnull @.str.14, i32 noundef 1369) #14 ; 3 uses
  %i.kg = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1369, ptr noundef nonnull @.str.93, ptr noundef %i.kf) #14
  %.not738 = icmp eq i32 %i.kg, 0
  br i1 %.not738, label %.thread1009, label %._crit_edge1310

._crit_edge1310:                                  ; preds = %bb.ct
  %.pre = load i64, ptr %i.kb, align 8, !tbaa !17
  br label %bb.cu

bb.cu:                                            ; preds = %._crit_edge1310, %bb.cs
  %i.kh = phi i64 [ %.pre, %._crit_edge1310 ], [ %i.kc, %bb.cs ]
  %.3549 = phi ptr [ %i.kf, %._crit_edge1310 ], [ %.0546, %bb.cs ] ; 8 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.3549, i64 %.1560
  %i.kj = sub i64 %i.kh, %.1560
  %i.kk = call i32 @SSL_read_ex(ptr noundef %.0566971, ptr noundef %i.ki, i64 noundef %i.kj, ptr noundef nonnull %i.i) #14 ; 2 uses
  %i.kl = call fastcc i32 @check_consistent_want(ptr noundef %.0566971, i32 noundef %i.kk)
  %.not739 = icmp eq i32 %i.kl, 0
  br i1 %.not739, label %.thread1009, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not740 = icmp eq i32 %i.kk, 0
  br i1 %.not740, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.km = load i32, ptr %i.an, align 4, !tbaa !38
  %.not741 = icmp eq i32 %i.km, 0
  br i1 %.not741, label %.thread1009, label %.thread1009.sink.split

bb.cx:                                            ; preds = %bb.cv
  %i.kn = load i64, ptr %i.i, align 8, !tbaa !18
  %i.ko = add i64 %i.kn, %.1560                   ; 6 uses
  %i.kp = load i64, ptr %i.kb, align 8, !tbaa !17
  %.not742 = icmp eq i64 %i.ko, %i.kp
  br i1 %.not742, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kq = load i32, ptr %i.an, align 4, !tbaa !38
  %.not745 = icmp eq i32 %i.kq, 0
  br i1 %.not745, label %.thread1009, label %.thread1009.sink.split

bb.cz:                                            ; preds = %bb.cx
  %.not743 = icmp eq i64 %i.ko, 0
  br i1 %.not743, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !129
  %i.kt = call i32 @test_mem_eq(ptr noundef nonnull @.str.14, i32 noundef 1386, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, ptr noundef %.3549, i64 noundef %i.ko, ptr noundef %i.ks, i64 noundef %i.ko) #14
  %.not744 = icmp eq i32 %i.kt, 0
  br i1 %.not744, label %.thread1009, label %bb.db

.thread1009.sink.split:                           ; preds = %bb.cy, %bb.cw
  %.sink = phi i32 [ 1378, %bb.cw ], [ 1382, %bb.cy ]
  %.2561.ph.ph = phi i64 [ %.1560, %bb.cw ], [ %i.ko, %bb.cy ]
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef %.sink, ptr noundef nonnull @.str.83) #14
  br label %.thread1009

.thread1009:                                      ; preds = %.thread1009.sink.split, %bb.cw, %bb.cy, %bb.cu, %bb.ct, %bb.da
  %.8587.ph = phi i32 [ 0, %bb.da ], [ 0, %bb.ct ], [ 0, %bb.cu ], [ 1, %bb.cw ], [ 1, %bb.cy ], [ 0, %.thread1009.sink.split ]
  %.2561.ph = phi i64 [ %.1560, %bb.da ], [ %.1560, %bb.ct ], [ %.1560, %bb.cu ], [ %.1560, %bb.cw ], [ %i.ko, %bb.cy ], [ %.2561.ph.ph, %.thread1009.sink.split ]
  %.4550.ph = phi ptr [ %.3549, %bb.da ], [ %i.kf, %bb.ct ], [ %.3549, %bb.cu ], [ %.3549, %bb.cw ], [ %.3549, %bb.cy ], [ %.3549, %.thread1009.sink.split ]
  %.7.ph = phi i32 [ 2, %bb.da ], [ 2, %bb.ct ], [ 2, %bb.cu ], [ 4, %bb.cw ], [ 4, %bb.cy ], [ 2, %.thread1009.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %.thread987

bb.db:                                            ; preds = %bb.cz, %bb.da
  call void @CRYPTO_free(ptr noundef %.3549, ptr noundef nonnull @.str.14, i32 noundef 1389) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  br label %.thread987

bb.dc:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store i64 0, ptr %i.j, align 8, !tbaa !18
  %i.ku = call i32 @test_uint64_t_ne(ptr noundef nonnull @.str.14, i32 noundef 1396, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i64 noundef %.0565973, i64 noundef -1) #14
  %.not732 = icmp eq i32 %i.ku, 0
  br i1 %.not732, label %.thread1016, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !17 ; 2 uses
  %i.kx = icmp ne i64 %i.kw, 0
  %i.ky = icmp eq ptr %.0546, null
  %or.cond32 = select i1 %i.kx, i1 %i.ky, i1 false
  br i1 %or.cond32, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.kz = call noalias ptr @CRYPTO_malloc(i64 noundef %i.kw, ptr noundef nonnull @.str.14, i32 noundef 1400) #14 ; 3 uses
  %i.la = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1400, ptr noundef nonnull @.str.93, ptr noundef %i.kz) #14
  %.not733 = icmp eq i32 %i.la, 0
  br i1 %.not733, label %.thread1016, label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.5551 = phi ptr [ %i.kz, %bb.de ], [ %.0546, %bb.dd ] ; 6 uses
  %i.lb = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.lc = icmp slt i32 %i.lb, 0
  br i1 %i.lc, label %s_checked_out_p.exit.i850, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ld = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.le = zext nneg i32 %i.lb to i64
  %i.lf = getelementptr inbounds nuw [64 x i8], ptr %i.ld, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  br label %s_checked_out_p.exit.i850

s_checked_out_p.exit.i850:                        ; preds = %bb.df, %bb.dg
  %i.lh = phi ptr [ %i.lg, %bb.dg ], [ %i.aj, %bb.df ] ; 2 uses
  %i.li = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %s_checked_out_p.exit.i850
  %i.lk = load i32, ptr %i.lh, align 4, !tbaa !72
  %.not.i851 = icmp eq i32 %i.lk, 0
  br i1 %.not.i851, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh, %s_checked_out_p.exit.i850
  %i.ll = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit854

bb.dj:                                            ; preds = %bb.dh
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.li) #14
  %i.lm = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.lm, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.lh, align 4, !tbaa !72
  br label %s_lock.exit854

s_lock.exit854:                                   ; preds = %bb.di, %bb.dj
  %.0.i852 = phi ptr [ %i.ll, %bb.di ], [ %i.lm, %bb.dj ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.5551, i64 %.1560
  %i.lo = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.lp = sub i64 %i.lo, %.1560
  %i.lq = call i32 @ossl_quic_tserver_read(ptr noundef %.0.i852, i64 noundef %.0565973, ptr noundef %i.ln, i64 noundef %i.lp, ptr noundef nonnull %i.j) #14
  %i.lr = icmp ne i32 %i.lq, 0
  %i.ls = zext i1 %i.lr to i32
  %i.lt = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1406, ptr noundef nonnull @.str.96, i32 noundef %i.ls) #14
  %.not734 = icmp eq i32 %i.lt, 0
  br i1 %.not734, label %.thread1016, label %bb.dk

bb.dk:                                            ; preds = %s_lock.exit854
  %i.lu = load i64, ptr %i.j, align 8, !tbaa !18
  %i.lv = add i64 %i.lu, %.1560                   ; 5 uses
  %i.lw = load i64, ptr %i.kv, align 8, !tbaa !17
  %.not735 = icmp eq i64 %i.lv, %i.lw
  br i1 %.not735, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.lx = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.ly = icmp slt i32 %i.lx, 0
  br i1 %i.ly, label %s_checked_out_p.exit.i855, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.lz = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ma = zext nneg i32 %i.lx to i64
  %i.mb = getelementptr inbounds nuw [64 x i8], ptr %i.lz, i64 %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  br label %s_checked_out_p.exit.i855

s_checked_out_p.exit.i855:                        ; preds = %bb.dl, %bb.dm
  %i.md = phi ptr [ %i.mc, %bb.dm ], [ %i.aj, %bb.dl ] ; 2 uses
  %i.me = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.mf = icmp eq ptr %i.me, null
  br i1 %i.mf, label %s_lock.exit859, label %bb.dn

bb.dn:                                            ; preds = %s_checked_out_p.exit.i855
  %i.mg = load i32, ptr %i.md, align 4, !tbaa !72
  %.not.i856 = icmp eq i32 %i.mg, 0
  br i1 %.not.i856, label %bb.do, label %s_lock.exit859

bb.do:                                            ; preds = %bb.dn
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.me) #14
  %i.mh = load ptr, ptr %i.ar, align 8, !tbaa !47
  store ptr %i.mh, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.md, align 4, !tbaa !72
  br label %s_lock.exit859

s_lock.exit859:                                   ; preds = %s_checked_out_p.exit.i855, %bb.dn, %bb.do
  %i.mi = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.mj = call i32 @ossl_quic_tserver_tick(ptr noundef %i.mi) #14 ; 0 uses
  br label %.thread1016

bb.dp:                                            ; preds = %bb.dk
  %.not736 = icmp eq i64 %i.lv, 0
  br i1 %.not736, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !129
  %i.mm = call i32 @test_mem_eq(ptr noundef nonnull @.str.14, i32 noundef 1415, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, ptr noundef %.5551, i64 noundef %i.lv, ptr noundef %i.ml, i64 noundef %i.lv) #14
  %.not737 = icmp eq i32 %i.mm, 0
  br i1 %.not737, label %.thread1016, label %bb.dr

.thread1016:                                      ; preds = %s_lock.exit859, %s_lock.exit854, %bb.de, %bb.dc, %bb.dq
  %.9588.ph = phi i32 [ 0, %bb.dq ], [ 0, %bb.dc ], [ 0, %bb.de ], [ 0, %s_lock.exit854 ], [ 1, %s_lock.exit859 ]
  %.3562.ph = phi i64 [ %.1560, %bb.dq ], [ %.1560, %bb.dc ], [ %.1560, %bb.de ], [ %.1560, %s_lock.exit854 ], [ %i.lv, %s_lock.exit859 ]
  %.6552.ph = phi ptr [ %.5551, %bb.dq ], [ %.0546, %bb.dc ], [ %i.kz, %bb.de ], [ %.5551, %s_lock.exit854 ], [ %.5551, %s_lock.exit859 ]
  %.8.ph = phi i32 [ 2, %bb.dq ], [ 2, %bb.dc ], [ 2, %bb.de ], [ 2, %s_lock.exit854 ], [ 4, %s_lock.exit859 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br label %.thread987

bb.dr:                                            ; preds = %bb.dp, %bb.dq
  call void @CRYPTO_free(ptr noundef %.5551, ptr noundef nonnull @.str.14, i32 noundef 1418) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  br label %.thread987

bb.ds:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store i64 0, ptr %i.l, align 8, !tbaa !18
  %i.mn = call i32 @SSL_read_ex(ptr noundef %.0566971, ptr noundef nonnull %i.k, i64 noundef 1, ptr noundef nonnull %i.l) #14 ; 2 uses
  %i.mo = call fastcc i32 @check_consistent_want(ptr noundef %.0566971, i32 noundef %i.mn)
  %.not725 = icmp eq i32 %i.mo, 0
  br i1 %.not725, label %.thread1023, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mp = icmp ne i32 %i.mn, 0
  %i.mq = zext i1 %i.mp to i32
  %i.mr = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 1429, ptr noundef nonnull @.str.87, i32 noundef %i.mq) #14
  %.not726 = icmp eq i32 %i.mr, 0
  br i1 %.not726, label %.thread1023, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ms = load i64, ptr %i.l, align 8, !tbaa !18
  %i.mt = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1430, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.39, i64 noundef %i.ms, i64 noundef 0) #14
  %.not727 = icmp eq i32 %i.mt, 0
  br i1 %.not727, label %.thread1023, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.mu = call i32 @SSL_get_error(ptr noundef %.0566971, i32 noundef 0) #14
  %i.mv = and i32 %i.mu, -2
  %.not1121 = icmp eq i32 %i.mv, 2
  br i1 %.not1121, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.mw = load i32, ptr %i.an, align 4, !tbaa !38
  %.not731 = icmp eq i32 %i.mw, 0
  br i1 %.not731, label %.thread1023, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1434, ptr noundef nonnull @.str.83) #14
  br label %.thread1023

bb.dy:                                            ; preds = %bb.dv
  %i.mx = call i32 @SSL_get_error(ptr noundef %.0566971, i32 noundef 0) #14
  %i.my = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1437, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef %i.mx, i32 noundef 6) #14
  %.not729 = icmp eq i32 %i.my, 0
  br i1 %.not729, label %.thread1023, label %bb.dz

.thread1023:                                      ; preds = %bb.dx, %bb.ds, %bb.dy, %bb.dw, %bb.du, %bb.dt
  %.10589.ph = phi i32 [ 0, %bb.dt ], [ 0, %bb.du ], [ 1, %bb.dw ], [ 0, %bb.dy ], [ 0, %bb.ds ], [ 0, %bb.dx ]
  %.9.ph = phi i32 [ 2, %bb.dt ], [ 2, %bb.du ], [ 4, %bb.dw ], [ 2, %bb.dy ], [ 2, %bb.ds ], [ 2, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br label %.thread987

bb.dz:                                            ; preds = %bb.dy
  %i.mz = call i32 @SSL_want(ptr noundef %.0566971) #14
  %i.na = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1440, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef %i.mz, i32 noundef 1) #14
  %.not730.not = icmp eq i32 %i.na, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  br i1 %.not730.not, label %.thread1098, label %.thread987

bb.ea:                                            ; preds = %bb.ad
  %i.nb = call i32 @test_uint64_t_ne(ptr noundef nonnull @.str.14, i32 noundef 1445, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i64 noundef %.0565973, i64 noundef -1) #14
  %.not723 = icmp eq i32 %i.nb, 0
  br i1 %.not723, label %.thread1098, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.nc = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.nd = icmp slt i32 %i.nc, 0
  br i1 %i.nd, label %s_checked_out_p.exit.i860, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ne = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.nf = zext nneg i32 %i.nc to i64
  %i.ng = getelementptr inbounds nuw [64 x i8], ptr %i.ne, i64 %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 56
  br label %s_checked_out_p.exit.i860

s_checked_out_p.exit.i860:                        ; preds = %bb.eb, %bb.ec
  %i.ni = phi ptr [ %i.nh, %bb.ec ], [ %i.aj, %bb.eb ] ; 2 uses
  %i.nj = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %s_checked_out_p.exit.i860
  %i.nl = load i32, ptr %i.ni, align 4, !tbaa !72
  %.not.i861 = icmp eq i32 %i.nl, 0
  br i1 %.not.i861, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %s_checked_out_p.exit.i860
  %i.nm = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit864

bb.ef:                                            ; preds = %bb.ed
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.nj) #14
  %i.nn = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.nn, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.ni, align 4, !tbaa !72
  br label %s_lock.exit864

s_lock.exit864:                                   ; preds = %bb.ee, %bb.ef
  %.0.i862 = phi ptr [ %i.nm, %bb.ee ], [ %i.nn, %bb.ef ]
  %i.no = call i32 @ossl_quic_tserver_has_read_ended(ptr noundef %.0.i862, i64 noundef %.0565973) #14
  %.not724 = icmp eq i32 %i.no, 0
  br i1 %.not724, label %bb.eg, label %.thread987

bb.eg:                                            ; preds = %s_lock.exit864
  %i.np = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.nq = icmp slt i32 %i.np, 0
  br i1 %i.nq, label %s_checked_out_p.exit.i865, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.nr = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ns = zext nneg i32 %i.np to i64
  %i.nt = getelementptr inbounds nuw [64 x i8], ptr %i.nr, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 56
  br label %s_checked_out_p.exit.i865

s_checked_out_p.exit.i865:                        ; preds = %bb.eg, %bb.eh
  %i.nv = phi ptr [ %i.nu, %bb.eh ], [ %i.aj, %bb.eg ] ; 2 uses
  %i.nw = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %s_lock.exit869, label %bb.ei

bb.ei:                                            ; preds = %s_checked_out_p.exit.i865
  %i.ny = load i32, ptr %i.nv, align 4, !tbaa !72
  %.not.i866 = icmp eq i32 %i.ny, 0
  br i1 %.not.i866, label %bb.ej, label %s_lock.exit869

bb.ej:                                            ; preds = %bb.ei
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.nw) #14
  %i.nz = load ptr, ptr %i.ar, align 8, !tbaa !47
  store ptr %i.nz, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.nv, align 4, !tbaa !72
  br label %s_lock.exit869

s_lock.exit869:                                   ; preds = %s_checked_out_p.exit.i865, %bb.ei, %bb.ej
  %i.oa = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.ob = call i32 @ossl_quic_tserver_tick(ptr noundef %i.oa) #14 ; 0 uses
  br label %.thread987

bb.ek:                                            ; preds = %bb.ad
  %i.oc = call i32 @test_ptr_null(ptr noundef nonnull @.str.14, i32 noundef 1455, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not719 = icmp eq i32 %i.oc, 0
  br i1 %.not719, label %.thread1098, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.od = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.oe = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1458, ptr noundef nonnull @.str.102, ptr noundef %i.od) #14
  %.not720 = icmp eq i32 %i.oe, 0
  br i1 %.not720, label %.thread1098, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.of = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.og = call ptr @ossl_quic_detach_stream(ptr noundef %i.of) #14 ; 2 uses
  %i.oh = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1461, ptr noundef nonnull @.str.103, ptr noundef %i.og) #14
  %.not721 = icmp eq i32 %i.oh, 0
  br i1 %.not721, label %.thread1098, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.oi = load ptr, ptr %i.by, align 8, !tbaa !127 ; 4 uses
  %.val827 = load ptr, ptr %i.v, align 8, !tbaa !69 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.oj = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 904, ptr noundef nonnull @.str.164, ptr noundef %i.oi) #14
  %.not.i.i870 = icmp eq i32 %i.oj, 0
  br i1 %.not.i.i870, label %get_stream_info.exit.thread.i874, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ok = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.oi, ptr noundef nonnull dereferenceable(8) @.str.163) #15
  %.not16.i.i871 = icmp eq i32 %i.ok, 0
  br i1 %.not16.i.i871, label %get_stream_info.exit.thread.i874, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store ptr %i.oi, ptr %8, align 8, !tbaa !74
  %i.ol = call ptr @OPENSSL_LH_retrieve(ptr noundef %.val827, ptr noundef nonnull %8) #14 ; 2 uses
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.on = call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str.14, i32 noundef 913) #14 ; 5 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %get_stream_info.exit.thread.i874, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store ptr %i.oi, ptr %i.on, align 8, !tbaa !74
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  store i64 -1, ptr %i.op, align 8, !tbaa !75
  %i.oq = call ptr @OPENSSL_LH_insert(ptr noundef %.val827, ptr noundef nonnull %i.on) #14 ; 0 uses
  br label %bb.es

get_stream_info.exit.thread.i874:                 ; preds = %bb.eq, %bb.eo, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.et

bb.es:                                            ; preds = %bb.er, %bb.ep
  %.013.i.i872 = phi ptr [ %i.ol, %bb.ep ], [ %i.on, %bb.er ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.or = getelementptr inbounds nuw i8, ptr %.013.i.i872, i64 8
  store ptr %i.og, ptr %i.or, align 8, !tbaa !81
  %i.os = getelementptr inbounds nuw i8, ptr %.013.i.i872, i64 16
  store i64 -1, ptr %i.os, align 8, !tbaa !75
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %get_stream_info.exit.thread.i874
  %.0.i873 = phi i32 [ 1, %bb.es ], [ 0, %get_stream_info.exit.thread.i874 ]
  %i.ot = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1464, ptr noundef nonnull @.str.104, i32 noundef %.0.i873) #14
  %.not722.not = icmp eq i32 %i.ot, 0
  br i1 %.not722.not, label %.thread1098, label %.thread987

bb.eu:                                            ; preds = %bb.ad
  %i.ou = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1469, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not715 = icmp eq i32 %i.ou, 0
  br i1 %.not715, label %.thread1098, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ov = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.ow = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1472, ptr noundef nonnull @.str.102, ptr noundef %i.ov) #14
  %.not716 = icmp eq i32 %i.ow, 0
  br i1 %.not716, label %.thread1098, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ox = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.oy = call i32 @ossl_quic_attach_stream(ptr noundef %i.ox, ptr noundef %.0566971) #14
  %i.oz = icmp ne i32 %i.oy, 0
  %i.pa = zext i1 %i.oz to i32
  %i.pb = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1475, ptr noundef nonnull @.str.105, i32 noundef %i.pa) #14
  %.not717 = icmp eq i32 %i.pb, 0
  br i1 %.not717, label %.thread1098, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.pc = load ptr, ptr %i.by, align 8, !tbaa !127 ; 4 uses
  %.val826 = load ptr, ptr %i.v, align 8, !tbaa !69 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.pd = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 904, ptr noundef nonnull @.str.164, ptr noundef %i.pc) #14
  %.not.i.i875 = icmp eq i32 %i.pd, 0
  br i1 %.not.i.i875, label %get_stream_info.exit.thread.i879, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.pe = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.pc, ptr noundef nonnull dereferenceable(8) @.str.163) #15
  %.not16.i.i876 = icmp eq i32 %i.pe, 0
  br i1 %.not16.i.i876, label %get_stream_info.exit.thread.i879, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  store ptr %i.pc, ptr %7, align 8, !tbaa !74
  %i.pf = call ptr @OPENSSL_LH_retrieve(ptr noundef %.val826, ptr noundef nonnull %7) #14 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.ph = call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str.14, i32 noundef 913) #14 ; 5 uses
  %i.pi = icmp eq ptr %i.ph, null
  br i1 %i.pi, label %get_stream_info.exit.thread.i879, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store ptr %i.pc, ptr %i.ph, align 8, !tbaa !74
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store i64 -1, ptr %i.pj, align 8, !tbaa !75
  %i.pk = call ptr @OPENSSL_LH_insert(ptr noundef %.val826, ptr noundef nonnull %i.ph) #14 ; 0 uses
  br label %bb.fc

get_stream_info.exit.thread.i879:                 ; preds = %bb.fa, %bb.ey, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %helper_local_set_c_stream.exit880

bb.fc:                                            ; preds = %bb.fb, %bb.ez
  %.013.i.i877 = phi ptr [ %i.pf, %bb.ez ], [ %i.ph, %bb.fb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.pl = getelementptr inbounds nuw i8, ptr %.013.i.i877, i64 8
  store ptr null, ptr %i.pl, align 8, !tbaa !81
  %i.pm = getelementptr inbounds nuw i8, ptr %.013.i.i877, i64 16
  store i64 -1, ptr %i.pm, align 8, !tbaa !75
  br label %helper_local_set_c_stream.exit880

helper_local_set_c_stream.exit880:                ; preds = %get_stream_info.exit.thread.i879, %bb.fc
  %.0.i878 = phi i32 [ 1, %bb.fc ], [ 0, %get_stream_info.exit.thread.i879 ]
  %i.pn = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1478, ptr noundef nonnull @.str.106, i32 noundef %.0.i878) #14
  %.not718 = icmp eq i32 %i.pn, 0
  br i1 %.not718, label %.thread1098, label %.thread987

bb.fd:                                            ; preds = %bb.ad
  %i.po = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !17 ; 2 uses
  %i.pq = and i64 %i.pp, 65536
  %.not1120 = icmp eq i64 %i.pq, 0
  %i.pr = and i64 %i.pp, -65537
  %i.ps = call i32 @test_ptr_null(ptr noundef nonnull @.str.14, i32 noundef 1489, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not708 = icmp eq i32 %i.ps, 0
  br i1 %.not708, label %.thread1098, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.pt = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.pu = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1492, ptr noundef nonnull @.str.102, ptr noundef %i.pt) #14
  %.not709 = icmp eq i32 %i.pu, 0
  br i1 %.not709, label %.thread1098, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.pv = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.pw = call ptr @SSL_new_stream(ptr noundef %i.pv, i64 noundef %i.pr) #14 ; 4 uses
  br i1 %.not1120, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.px = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1496, ptr noundef nonnull @.str.107, ptr noundef %i.pw) #14
  %.not710 = icmp eq i32 %i.px, 0
  br i1 %.not710, label %.thread1098, label %.thread1031

bb.fh:                                            ; preds = %bb.ff
  %i.py = icmp eq ptr %i.pw, null
  br i1 %i.py, label %bb.fi, label %.thread1031

bb.fi:                                            ; preds = %bb.fh
  %i.pz = call i64 @ERR_get_error() #14           ; 2 uses
  %i.qa = and i64 %i.pz, 2147483648
  %.not.i881 = icmp eq i64 %i.qa, 0
  %.0.v.i = select i1 %.not.i881, i64 8388607, i64 2147483647
  %.0.i882 = and i64 %.0.v.i, %i.pz
  %i.qb = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1501, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i64 noundef %.0.i882, i64 noundef 411) #14
  %.not714 = icmp eq i32 %i.qb, 0
  br i1 %.not714, label %.thread1098, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.qc = load i64, ptr %i.be, align 8, !tbaa !82
  %i.qd = add i64 %i.qc, 1
  store i64 %i.qd, ptr %i.be, align 8, !tbaa !82
  br label %.thread987

.thread1031:                                      ; preds = %bb.fg, %bb.fh
  %i.qe = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !19
  %.not711 = icmp eq i64 %i.qf, -1
  br i1 %.not711, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %.thread1031
  %i.qg = call i64 @SSL_get_stream_id(ptr noundef %i.pw) #14
  %i.qh = load i64, ptr %i.qe, align 8, !tbaa !19
  %i.qi = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1510, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i64 noundef %i.qg, i64 noundef %i.qh) #14
  %.not712 = icmp eq i32 %i.qi, 0
  br i1 %.not712, label %.thread1098, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.thread1031
  %i.qj = load ptr, ptr %i.by, align 8, !tbaa !127 ; 4 uses
  %.val825 = load ptr, ptr %i.v, align 8, !tbaa !69 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.qk = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 904, ptr noundef nonnull @.str.164, ptr noundef %i.qj) #14
  %.not.i.i883 = icmp eq i32 %i.qk, 0
  br i1 %.not.i.i883, label %get_stream_info.exit.thread.i887, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ql = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.qj, ptr noundef nonnull dereferenceable(8) @.str.163) #15
  %.not16.i.i884 = icmp eq i32 %i.ql, 0
  br i1 %.not16.i.i884, label %get_stream_info.exit.thread.i887, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  store ptr %i.qj, ptr %6, align 8, !tbaa !74
  %i.qm = call ptr @OPENSSL_LH_retrieve(ptr noundef %.val825, ptr noundef nonnull %6) #14 ; 2 uses
  %i.qn = icmp eq ptr %i.qm, null
  br i1 %i.qn, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.qo = call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str.14, i32 noundef 913) #14 ; 5 uses
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %get_stream_info.exit.thread.i887, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  store ptr %i.qj, ptr %i.qo, align 8, !tbaa !74
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store i64 -1, ptr %i.qq, align 8, !tbaa !75
  %i.qr = call ptr @OPENSSL_LH_insert(ptr noundef %.val825, ptr noundef nonnull %i.qo) #14 ; 0 uses
  br label %bb.fq

get_stream_info.exit.thread.i887:                 ; preds = %bb.fo, %bb.fm, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %helper_local_set_c_stream.exit888

bb.fq:                                            ; preds = %bb.fp, %bb.fn
  %.013.i.i885 = phi ptr [ %i.qm, %bb.fn ], [ %i.qo, %bb.fp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.qs = getelementptr inbounds nuw i8, ptr %.013.i.i885, i64 8
  store ptr %i.pw, ptr %i.qs, align 8, !tbaa !81
  %i.qt = getelementptr inbounds nuw i8, ptr %.013.i.i885, i64 16
  store i64 -1, ptr %i.qt, align 8, !tbaa !75
  br label %helper_local_set_c_stream.exit888

helper_local_set_c_stream.exit888:                ; preds = %get_stream_info.exit.thread.i887, %bb.fq
  %.0.i886 = phi i32 [ 1, %bb.fq ], [ 0, %get_stream_info.exit.thread.i887 ]
  %i.qu = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1513, ptr noundef nonnull @.str.104, i32 noundef %.0.i886) #14
  %.not713 = icmp eq i32 %i.qu, 0
  br i1 %.not713, label %.thread1098, label %.thread987

bb.fr:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store i64 -1, ptr %i.m, align 8, !tbaa !18
  %i.qv = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1520, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i64 noundef %.0565973, i64 noundef -1) #14
  %.not702 = icmp eq i32 %i.qv, 0
  br i1 %.not702, label %.thread1037, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.qw = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.qx = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1523, ptr noundef nonnull @.str.102, ptr noundef %i.qw) #14
  %.not703 = icmp eq i32 %i.qx, 0
  br i1 %.not703, label %.thread1037, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.qy = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.qz = icmp slt i32 %i.qy, 0
  br i1 %i.qz, label %s_checked_out_p.exit.i889, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ra = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.rb = zext nneg i32 %i.qy to i64
  %i.rc = getelementptr inbounds nuw [64 x i8], ptr %i.ra, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 56
  br label %s_checked_out_p.exit.i889

s_checked_out_p.exit.i889:                        ; preds = %bb.ft, %bb.fu
  %i.re = phi ptr [ %i.rd, %bb.fu ], [ %i.aj, %bb.ft ] ; 2 uses
  %i.rf = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.rg = icmp eq ptr %i.rf, null
  br i1 %i.rg, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %s_checked_out_p.exit.i889
  %i.rh = load i32, ptr %i.re, align 4, !tbaa !72
  %.not.i890 = icmp eq i32 %i.rh, 0
  br i1 %.not.i890, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %s_checked_out_p.exit.i889
  %i.ri = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit893

bb.fx:                                            ; preds = %bb.fv
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.rf) #14
  %i.rj = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.rj, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.re, align 4, !tbaa !72
  br label %s_lock.exit893

s_lock.exit893:                                   ; preds = %bb.fw, %bb.fx
  %.0.i891 = phi ptr [ %i.ri, %bb.fw ], [ %i.rj, %bb.fx ]
  %i.rk = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !17
  %i.rm = icmp ne i64 %i.rl, 0
  %i.rn = zext i1 %i.rm to i32
  %i.ro = call i32 @ossl_quic_tserver_stream_new(ptr noundef %.0.i891, i32 noundef %i.rn, ptr noundef nonnull %i.m) #14
  %i.rp = icmp ne i32 %i.ro, 0
  %i.rq = zext i1 %i.rp to i32
  %i.rr = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1528, ptr noundef nonnull @.str.112, i32 noundef %i.rq) #14
  %.not704 = icmp eq i32 %i.rr, 0
  br i1 %.not704, label %.thread1037, label %bb.fy

bb.fy:                                            ; preds = %s_lock.exit893
  %i.rs = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !19 ; 2 uses
  %.not705 = icmp eq i64 %i.rt, -1
  br i1 %.not705, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ru = load i64, ptr %i.m, align 8, !tbaa !18
  %i.rv = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1532, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, i64 noundef %i.ru, i64 noundef %i.rt) #14
  %.not706 = icmp eq i32 %i.rv, 0
  br i1 %.not706, label %.thread1037, label %bb.ga

.thread1037:                                      ; preds = %bb.fz, %s_lock.exit893, %bb.fs, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %.thread1098

bb.ga:                                            ; preds = %bb.fy, %bb.fz
  %i.rw = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.rx = load i64, ptr %i.m, align 8, !tbaa !18
  %i.ry = call fastcc i32 @helper_set_s_stream(ptr noundef nonnull %0, ptr noundef %i.rw, i64 noundef %i.rx)
  %i.rz = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1536, ptr noundef nonnull @.str.114, i32 noundef %i.ry) #14
  %.not707.not = icmp eq i32 %i.rz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br i1 %.not707.not, label %.thread1098, label %.thread987

bb.gb:                                            ; preds = %bb.ad
  %i.sa = call i32 @test_ptr_null(ptr noundef nonnull @.str.14, i32 noundef 1543, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not698 = icmp eq i32 %i.sa, 0
  br i1 %.not698, label %.thread1098, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.sb = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.sc = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1546, ptr noundef nonnull @.str.102, ptr noundef %i.sb) #14
  %.not699 = icmp eq i32 %i.sc, 0
  br i1 %.not699, label %.thread1098, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.sd = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.se = call ptr @SSL_accept_stream(ptr noundef %i.sd, i64 noundef 0) #14 ; 2 uses
  %i.sf = icmp eq ptr %i.se, null
  br i1 %i.sf, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  %i.sg = load i32, ptr %i.an, align 4, !tbaa !38
  %.not701 = icmp eq i32 %i.sg, 0
  br i1 %.not701, label %.thread987, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1550, ptr noundef nonnull @.str.83) #14
  br label %.thread1098

bb.gg:                                            ; preds = %bb.gd
  %i.sh = load ptr, ptr %i.by, align 8, !tbaa !127 ; 4 uses
  %.val824 = load ptr, ptr %i.v, align 8, !tbaa !69 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.si = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 904, ptr noundef nonnull @.str.164, ptr noundef %i.sh) #14
  %.not.i.i894 = icmp eq i32 %i.si, 0
  br i1 %.not.i.i894, label %get_stream_info.exit.thread.i898, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.sj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.sh, ptr noundef nonnull dereferenceable(8) @.str.163) #15
  %.not16.i.i895 = icmp eq i32 %i.sj, 0
  br i1 %.not16.i.i895, label %get_stream_info.exit.thread.i898, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  store ptr %i.sh, ptr %5, align 8, !tbaa !74
  %i.sk = call ptr @OPENSSL_LH_retrieve(ptr noundef %.val824, ptr noundef nonnull %5) #14 ; 2 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %bb.gj, label %bb.gl

bb.gj:                                            ; preds = %bb.gi
  %i.sm = call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str.14, i32 noundef 913) #14 ; 5 uses
  %i.sn = icmp eq ptr %i.sm, null
  br i1 %i.sn, label %get_stream_info.exit.thread.i898, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  store ptr %i.sh, ptr %i.sm, align 8, !tbaa !74
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  store i64 -1, ptr %i.so, align 8, !tbaa !75
  %i.sp = call ptr @OPENSSL_LH_insert(ptr noundef %.val824, ptr noundef nonnull %i.sm) #14 ; 0 uses
  br label %bb.gl

get_stream_info.exit.thread.i898:                 ; preds = %bb.gj, %bb.gh, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gk, %bb.gi
  %.013.i.i896 = phi ptr [ %i.sk, %bb.gi ], [ %i.sm, %bb.gk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.sq = getelementptr inbounds nuw i8, ptr %.013.i.i896, i64 8
  store ptr %i.se, ptr %i.sq, align 8, !tbaa !81
  %i.sr = getelementptr inbounds nuw i8, ptr %.013.i.i896, i64 16
  store i64 -1, ptr %i.sr, align 8, !tbaa !75
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %get_stream_info.exit.thread.i898
  %.0.i897 = phi i32 [ 1, %bb.gl ], [ 0, %get_stream_info.exit.thread.i898 ]
  %i.ss = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1553, ptr noundef nonnull @.str.104, i32 noundef %.0.i897) #14
  %.not700.not = icmp eq i32 %i.ss, 0
  br i1 %.not700.not, label %.thread1098, label %.thread987

bb.gn:                                            ; preds = %bb.ad
  %i.st = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1560, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i64 noundef %.0565973, i64 noundef -1) #14
  %.not695 = icmp eq i32 %i.st, 0
  br i1 %.not695, label %.thread1098, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.su = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.sv = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1563, ptr noundef nonnull @.str.102, ptr noundef %i.su) #14
  %.not696 = icmp eq i32 %i.sv, 0
  br i1 %.not696, label %.thread1098, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.sw = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.sx = icmp slt i32 %i.sw, 0
  br i1 %i.sx, label %s_checked_out_p.exit.i900, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.sy = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.sz = zext nneg i32 %i.sw to i64
  %i.ta = getelementptr inbounds nuw [64 x i8], ptr %i.sy, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 56
  br label %s_checked_out_p.exit.i900

s_checked_out_p.exit.i900:                        ; preds = %bb.gp, %bb.gq
  %i.tc = phi ptr [ %i.tb, %bb.gq ], [ %i.aj, %bb.gp ] ; 2 uses
  %i.td = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %s_checked_out_p.exit.i900
  %i.tf = load i32, ptr %i.tc, align 4, !tbaa !72
  %.not.i901 = icmp eq i32 %i.tf, 0
  br i1 %.not.i901, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %s_checked_out_p.exit.i900
  %i.tg = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit904

bb.gt:                                            ; preds = %bb.gr
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.td) #14
  %i.th = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.th, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.tc, align 4, !tbaa !72
  br label %s_lock.exit904

s_lock.exit904:                                   ; preds = %bb.gs, %bb.gt
  %.0.i902 = phi ptr [ %i.tg, %bb.gs ], [ %i.th, %bb.gt ]
  %i.ti = call i64 @ossl_quic_tserver_pop_incoming_stream(ptr noundef %.0.i902) #14 ; 2 uses
  %i.tj = icmp eq i64 %i.ti, -1
  br i1 %i.tj, label %bb.gu, label %bb.gy

bb.gu:                                            ; preds = %s_lock.exit904
  %i.tk = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.tl = icmp slt i32 %i.tk, 0
  br i1 %i.tl, label %s_checked_out_p.exit.i905, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.tm = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.tn = zext nneg i32 %i.tk to i64
  %i.to = getelementptr inbounds nuw [64 x i8], ptr %i.tm, i64 %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 56
  br label %s_checked_out_p.exit.i905

s_checked_out_p.exit.i905:                        ; preds = %bb.gu, %bb.gv
  %i.tq = phi ptr [ %i.tp, %bb.gv ], [ %i.aj, %bb.gu ] ; 2 uses
  %i.tr = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, null
  br i1 %i.ts, label %s_lock.exit909, label %bb.gw

bb.gw:                                            ; preds = %s_checked_out_p.exit.i905
  %i.tt = load i32, ptr %i.tq, align 4, !tbaa !72
  %.not.i906 = icmp eq i32 %i.tt, 0
  br i1 %.not.i906, label %bb.gx, label %s_lock.exit909

bb.gx:                                            ; preds = %bb.gw
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.tr) #14
  %i.tu = load ptr, ptr %i.ar, align 8, !tbaa !47
  store ptr %i.tu, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.tq, align 4, !tbaa !72
  br label %s_lock.exit909

s_lock.exit909:                                   ; preds = %s_checked_out_p.exit.i905, %bb.gw, %bb.gx
  %i.tv = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.tw = call i32 @ossl_quic_tserver_tick(ptr noundef %i.tv) #14 ; 0 uses
  br label %.thread987

bb.gy:                                            ; preds = %s_lock.exit904
  %i.tx = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.ty = call fastcc i32 @helper_set_s_stream(ptr noundef nonnull %0, ptr noundef %i.tx, i64 noundef %i.ti)
  %i.tz = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1570, ptr noundef nonnull @.str.115, i32 noundef %i.ty) #14
  %.not697.not = icmp eq i32 %i.tz, 0
  br i1 %.not697.not, label %.thread1098, label %.thread987

bb.gz:                                            ; preds = %bb.ad
  %i.ua = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.ub = call ptr @SSL_accept_stream(ptr noundef %i.ua, i64 noundef 1) #14 ; 2 uses
  %i.uc = call i32 @test_ptr_null(ptr noundef nonnull @.str.14, i32 noundef 1578, ptr noundef nonnull @.str.116, ptr noundef %i.ub) #14
  %.not694.not = icmp eq i32 %i.uc, 0
  br i1 %.not694.not, label %.thread1050, label %.thread987

.thread1050:                                      ; preds = %bb.gz
  call void @SSL_free(ptr noundef %i.ub) #14
  br label %.thread1098

bb.ha:                                            ; preds = %bb.ad
  %i.ud = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1585, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not689 = icmp eq i32 %i.ud, 0
  br i1 %.not689, label %.thread1098, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ue = call i32 @SSL_is_connection(ptr noundef %.0566971) #14
  %.not690 = icmp eq i32 %i.ue, 0
  %i.uf = zext i1 %.not690 to i32
  %i.ug = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1586, ptr noundef nonnull @.str.117, i32 noundef %i.uf) #14
  %.not691 = icmp eq i32 %i.ug, 0
  br i1 %.not691, label %.thread1098, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.uh = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.ui = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1589, ptr noundef nonnull @.str.102, ptr noundef %i.uh) #14
  %.not692 = icmp eq i32 %i.ui, 0
  br i1 %.not692, label %.thread1098, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.uj = load ptr, ptr %i.by, align 8, !tbaa !127 ; 4 uses
  %.val823 = load ptr, ptr %i.v, align 8, !tbaa !69 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.uk = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 904, ptr noundef nonnull @.str.164, ptr noundef %i.uj) #14
  %.not.i.i910 = icmp eq i32 %i.uk, 0
  br i1 %.not.i.i910, label %get_stream_info.exit.thread.i914, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ul = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.uj, ptr noundef nonnull dereferenceable(8) @.str.163) #15
  %.not16.i.i911 = icmp eq i32 %i.ul, 0
  br i1 %.not16.i.i911, label %get_stream_info.exit.thread.i914, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  store ptr %i.uj, ptr %4, align 8, !tbaa !74
  %i.um = call ptr @OPENSSL_LH_retrieve(ptr noundef %.val823, ptr noundef nonnull %4) #14 ; 2 uses
  %i.un = icmp eq ptr %i.um, null
  br i1 %i.un, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  %i.uo = call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str.14, i32 noundef 913) #14 ; 5 uses
  %i.up = icmp eq ptr %i.uo, null
  br i1 %i.up, label %get_stream_info.exit.thread.i914, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  store ptr %i.uj, ptr %i.uo, align 8, !tbaa !74
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  store i64 -1, ptr %i.uq, align 8, !tbaa !75
  %i.ur = call ptr @OPENSSL_LH_insert(ptr noundef %.val823, ptr noundef nonnull %i.uo) #14 ; 0 uses
  br label %bb.hi

get_stream_info.exit.thread.i914:                 ; preds = %bb.hg, %bb.he, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %helper_local_set_c_stream.exit915

bb.hi:                                            ; preds = %bb.hh, %bb.hf
  %.013.i.i912 = phi ptr [ %i.um, %bb.hf ], [ %i.uo, %bb.hh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.us = getelementptr inbounds nuw i8, ptr %.013.i.i912, i64 8
  store ptr null, ptr %i.us, align 8, !tbaa !81
  %i.ut = getelementptr inbounds nuw i8, ptr %.013.i.i912, i64 16
  store i64 -1, ptr %i.ut, align 8, !tbaa !75
  br label %helper_local_set_c_stream.exit915

helper_local_set_c_stream.exit915:                ; preds = %get_stream_info.exit.thread.i914, %bb.hi
  %.0.i913 = phi i32 [ 1, %bb.hi ], [ 0, %get_stream_info.exit.thread.i914 ]
  %i.uu = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1592, ptr noundef nonnull @.str.106, i32 noundef %.0.i913) #14
  %.not693 = icmp eq i32 %i.uu, 0
  br i1 %.not693, label %.thread1098, label %bb.hj

bb.hj:                                            ; preds = %helper_local_set_c_stream.exit915
  call void @SSL_free(ptr noundef %.0566971) #14
  br label %.thread987

bb.hk:                                            ; preds = %bb.ad
  %i.uv = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1600, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not687 = icmp eq i32 %i.uv, 0
  br i1 %.not687, label %.thread1098, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !17
  %i.uy = trunc i64 %i.ux to i32
  %i.uz = call i32 @SSL_set_default_stream_mode(ptr noundef %.0566971, i32 noundef %i.uy) #14
  %i.va = icmp ne i32 %i.uz, 0
  %i.vb = zext i1 %i.va to i32
  %i.vc = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1603, ptr noundef nonnull @.str.118, i32 noundef %i.vb) #14
  %.not688 = icmp eq i32 %i.vc, 0
  br i1 %.not688, label %.thread1098, label %.thread987

bb.hm:                                            ; preds = %bb.ad
  %i.vd = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1608, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not685 = icmp eq i32 %i.vd, 0
  br i1 %.not685, label %.thread1098, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ve = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !17
  %i.vg = trunc i64 %i.vf to i32
  %i.vh = call i32 @SSL_set_incoming_stream_policy(ptr noundef %.0566971, i32 noundef %i.vg, i64 noundef 0) #14
  %i.vi = icmp ne i32 %i.vh, 0
  %i.vj = zext i1 %i.vi to i32
  %i.vk = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1612, ptr noundef nonnull @.str.119, i32 noundef %i.vj) #14
  %.not686 = icmp eq i32 %i.vk, 0
  br i1 %.not686, label %.thread1098, label %.thread987

bb.ho:                                            ; preds = %bb.ad
  %i.vl = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.vm = call ptr @ossl_quic_conn_get_channel(ptr noundef %i.vl) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.vn = call ptr @ossl_quic_channel_get0_engine(ptr noundef %i.vm) #14
  call void @ossl_quic_engine_set_inhibit_tick(ptr noundef %i.vn, i32 noundef 0) #14
  %i.vo = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1623, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not683 = icmp eq i32 %i.vo, 0
  br i1 %.not683, label %.thread1052, label %bb.hp

.thread1052:                                      ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %.thread1098

bb.hp:                                            ; preds = %bb.ho
  %i.vp = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !129
  store ptr %i.vq, ptr %i.bd, align 8, !tbaa !131
  %i.vr = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !17
  %i.vt = call i32 @SSL_shutdown_ex(ptr noundef %.0566971, i64 noundef %i.vs, ptr noundef nonnull %11, i64 noundef 16) #14
  %i.vu = call i32 @test_int_ge(ptr noundef nonnull @.str.14, i32 noundef 1629, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.39, i32 noundef %i.vt, i32 noundef 0) #14
  %.not684.not = icmp eq i32 %i.vu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br i1 %.not684.not, label %.thread1098, label %.thread987

bb.hq:                                            ; preds = %bb.ad
  %i.vv = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.vw = call ptr @ossl_quic_conn_get_channel(ptr noundef %i.vv) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.vx = call ptr @ossl_quic_channel_get0_engine(ptr noundef %i.vw) #14
  call void @ossl_quic_engine_set_inhibit_tick(ptr noundef %i.vx, i32 noundef 0) #14
  %i.vy = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1640, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not680 = icmp eq i32 %i.vy, 0
  br i1 %.not680, label %.thread1056, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.vz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !129
  store ptr %i.wa, ptr %i.bc, align 8, !tbaa !131
  %i.wb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !17
  %i.wd = call i32 @SSL_shutdown_ex(ptr noundef %.0566971, i64 noundef %i.wc, ptr noundef nonnull %12, i64 noundef 16) #14 ; 2 uses
  %i.we = call i32 @test_int_ge(ptr noundef nonnull @.str.14, i32 noundef 1646, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.39, i32 noundef %i.wd, i32 noundef 0) #14
  %.not681 = icmp eq i32 %i.we, 0
  br i1 %.not681, label %.thread1056, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.wf = icmp eq i32 %i.wd, 0
  br i1 %i.wf, label %bb.ht, label %bb.hv

bb.ht:                                            ; preds = %bb.hs
  %i.wg = load i32, ptr %i.an, align 4, !tbaa !38
  %.not682 = icmp eq i32 %i.wg, 0
  br i1 %.not682, label %.thread1056, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1650, ptr noundef nonnull @.str.83) #14
  br label %.thread1056

.thread1056:                                      ; preds = %bb.hu, %bb.hr, %bb.ht, %bb.hq
  %.13592.ph = phi i32 [ 0, %bb.hq ], [ 1, %bb.ht ], [ 0, %bb.hr ], [ 0, %bb.hu ]
  %.17.ph = phi i32 [ 2, %bb.hq ], [ 4, %bb.ht ], [ 2, %bb.hr ], [ 2, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %.thread987

bb.hv:                                            ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %.thread987

bb.hw:                                            ; preds = %bb.ad
  %i.wh = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.wi = icmp slt i32 %i.wh, 0
  br i1 %i.wi, label %s_checked_out_p.exit.i916, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.wj = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.wk = zext nneg i32 %i.wh to i64
  %i.wl = getelementptr inbounds nuw [64 x i8], ptr %i.wj, i64 %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 56
  br label %s_checked_out_p.exit.i916

s_checked_out_p.exit.i916:                        ; preds = %bb.hw, %bb.hx
  %i.wn = phi ptr [ %i.wm, %bb.hx ], [ %i.aj, %bb.hw ] ; 2 uses
  %i.wo = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.wp = icmp eq ptr %i.wo, null
  br i1 %i.wp, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %s_checked_out_p.exit.i916
  %i.wq = load i32, ptr %i.wn, align 4, !tbaa !72
  %.not.i917 = icmp eq i32 %i.wq, 0
  br i1 %.not.i917, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %s_checked_out_p.exit.i916
  %i.wr = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit920

bb.ia:                                            ; preds = %bb.hy
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.wo) #14
  %i.ws = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.ws, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.wn, align 4, !tbaa !72
  br label %s_lock.exit920

s_lock.exit920:                                   ; preds = %bb.hz, %bb.ia
  %.0.i918 = phi ptr [ %i.wr, %bb.hz ], [ %i.ws, %bb.ia ]
  %i.wt = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !17
  %i.wv = call i32 @ossl_quic_tserver_shutdown(ptr noundef %.0.i918, i64 noundef %i.wu) #14 ; 0 uses
  br label %.thread987

bb.ib:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  %i.ww = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !17
  %i.wy = trunc i64 %i.wx to i32                  ; 2 uses
  %i.wz = and i32 %i.wy, 1
  %i.xa = lshr i32 %i.wy, 1
  %i.xb = and i32 %i.xa, 1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !19
  %i.xe = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1663, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not672 = icmp eq i32 %i.xe, 0
  br i1 %.not672, label %.thread1061, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.xf = load i32, ptr %i.an, align 4, !tbaa !38
  %.not673 = icmp eq i32 %i.xf, 0
  br i1 %.not673, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.xg = call i32 @SSL_shutdown_ex(ptr noundef %.0566971, i64 noundef 8, ptr noundef null, i64 noundef 0) #14
  %i.xh = icmp ne i32 %i.xg, 0
  %i.xi = zext i1 %i.xh to i32
  %i.xj = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1669, ptr noundef nonnull @.str.120, i32 noundef %i.xi) #14
  %.not674 = icmp eq i32 %i.xj, 0
  br i1 %.not674, label %.thread1061, label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.xk = call i32 @SSL_get_conn_close_info(ptr noundef %.0566971, ptr noundef nonnull %13, i64 noundef 40) #14
  %.not675 = icmp eq i32 %i.xk, 0
  br i1 %.not675, label %bb.if, label %bb.ih

bb.if:                                            ; preds = %bb.ie
  %i.xl = load i32, ptr %i.an, align 4, !tbaa !38
  %.not676 = icmp eq i32 %i.xl, 0
  br i1 %.not676, label %.thread1061, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1673, ptr noundef nonnull @.str.83) #14
  br label %.thread1061

bb.ih:                                            ; preds = %bb.ie
  %i.xm = load i32, ptr %i.ba, align 8, !tbaa !133
  %i.xn = lshr i32 %i.xm, 1
  %.lobit = and i32 %i.xn, 1
  %i.xo = xor i32 %.lobit, 1
  %i.xp = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1678, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef %i.wz, i32 noundef %i.xo) #14
  %.not677 = icmp eq i32 %i.xp, 0
  br i1 %.not677, label %bb.ik, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.xq = load i32, ptr %i.ba, align 8, !tbaa !133
  %i.xr = and i32 %i.xq, 1
  %i.xs = xor i32 %i.xr, 1
  %i.xt = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1682, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, i32 noundef %i.xb, i32 noundef %i.xs) #14
  %.not678 = icmp eq i32 %i.xt, 0
  br i1 %.not678, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.xu = load i64, ptr %13, align 8, !tbaa !134
  %i.xv = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1683, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, i64 noundef %i.xd, i64 noundef %i.xu) #14
  %.not679 = icmp eq i32 %i.xv, 0
  br i1 %.not679, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij, %bb.ii, %bb.ih
  %i.xw = load ptr, ptr %i.bb, align 8, !tbaa !135
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 1684, ptr noundef nonnull @.str.127, ptr noundef %i.xw) #14
  br label %.thread1061

.thread1061:                                      ; preds = %bb.if, %bb.ik, %bb.ig, %bb.id, %bb.ib
  %.14593.ph = phi i32 [ 0, %bb.ib ], [ 0, %bb.id ], [ 0, %bb.ig ], [ 0, %bb.ik ], [ 1, %bb.if ]
  %.18.ph = phi i32 [ 2, %bb.ib ], [ 2, %bb.id ], [ 2, %bb.ig ], [ 2, %bb.ik ], [ 4, %bb.if ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %.thread987

bb.il:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %.thread987

bb.im:                                            ; preds = %bb.ad
  %i.xx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !17
  %i.xz = trunc i64 %i.xy to i32                  ; 2 uses
  %i.ya = and i32 %i.xz, 1
  %i.yb = lshr i32 %i.xz, 1
  %i.yc = and i32 %i.yb, 1
  %i.yd = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !19
  %i.yf = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.yg = icmp slt i32 %i.yf, 0
  br i1 %i.yg, label %s_checked_out_p.exit.i921, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.yh = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.yi = zext nneg i32 %i.yf to i64
  %i.yj = getelementptr inbounds nuw [64 x i8], ptr %i.yh, i64 %i.yi
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 56
  br label %s_checked_out_p.exit.i921

s_checked_out_p.exit.i921:                        ; preds = %bb.im, %bb.in
  %i.yl = phi ptr [ %i.yk, %bb.in ], [ %i.aj, %bb.im ] ; 2 uses
  %i.ym = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.yn = icmp eq ptr %i.ym, null
  br i1 %i.yn, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %s_checked_out_p.exit.i921
  %i.yo = load i32, ptr %i.yl, align 4, !tbaa !72
  %.not.i922 = icmp eq i32 %i.yo, 0
  br i1 %.not.i922, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io, %s_checked_out_p.exit.i921
  %i.yp = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit925

bb.iq:                                            ; preds = %bb.io
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.ym) #14
  %i.yq = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.yq, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.yl, align 4, !tbaa !72
  br label %s_lock.exit925

s_lock.exit925:                                   ; preds = %bb.ip, %bb.iq
  %.0.i923 = phi ptr [ %i.yp, %bb.ip ], [ %i.yq, %bb.iq ]
  %i.yr = call i32 @ossl_quic_tserver_is_term_any(ptr noundef %.0.i923) #14
  %.not667 = icmp eq i32 %i.yr, 0
  %i.ys = load i32, ptr %i.w, align 8, !tbaa !70  ; 3 uses
  %i.yt = icmp slt i32 %i.ys, 0                   ; 2 uses
  br i1 %.not667, label %bb.ir, label %bb.iz

bb.ir:                                            ; preds = %s_lock.exit925
  br i1 %i.yt, label %s_checked_out_p.exit.i926, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.yu = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.yv = zext nneg i32 %i.ys to i64
  %i.yw = getelementptr inbounds nuw [64 x i8], ptr %i.yu, i64 %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 56
  br label %s_checked_out_p.exit.i926

s_checked_out_p.exit.i926:                        ; preds = %bb.ir, %bb.is
  %i.yy = phi ptr [ %i.yx, %bb.is ], [ %i.aj, %bb.ir ] ; 2 uses
  %i.yz = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.za = icmp eq ptr %i.yz, null
  br i1 %i.za, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %s_checked_out_p.exit.i926
  %i.zb = load i32, ptr %i.yy, align 4, !tbaa !72
  %.not.i927 = icmp eq i32 %i.zb, 0
  br i1 %.not.i927, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it, %s_checked_out_p.exit.i926
  %i.zc = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit930

bb.iv:                                            ; preds = %bb.it
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.yz) #14
  %i.zd = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.zd, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.yy, align 4, !tbaa !72
  br label %s_lock.exit930

s_lock.exit930:                                   ; preds = %bb.iu, %bb.iv
  %.0.i928 = phi ptr [ %i.zc, %bb.iu ], [ %i.zd, %bb.iv ]
  %i.ze = call i32 @ossl_quic_tserver_ping(ptr noundef %.0.i928) #14 ; 0 uses
  %i.zf = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.zg = icmp slt i32 %i.zf, 0
  br i1 %i.zg, label %s_checked_out_p.exit.i931, label %bb.iw

bb.iw:                                            ; preds = %s_lock.exit930
  %i.zh = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.zi = zext nneg i32 %i.zf to i64
  %i.zj = getelementptr inbounds nuw [64 x i8], ptr %i.zh, i64 %i.zi
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 56
  br label %s_checked_out_p.exit.i931

s_checked_out_p.exit.i931:                        ; preds = %s_lock.exit930, %bb.iw
  %i.zl = phi ptr [ %i.zk, %bb.iw ], [ %i.aj, %s_lock.exit930 ] ; 2 uses
  %i.zm = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.zn = icmp eq ptr %i.zm, null
  br i1 %i.zn, label %s_lock.exit935, label %bb.ix

bb.ix:                                            ; preds = %s_checked_out_p.exit.i931
  %i.zo = load i32, ptr %i.zl, align 4, !tbaa !72
  %.not.i932 = icmp eq i32 %i.zo, 0
  br i1 %.not.i932, label %bb.iy, label %s_lock.exit935

bb.iy:                                            ; preds = %bb.ix
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.zm) #14
  %i.zp = load ptr, ptr %i.ar, align 8, !tbaa !47
  store ptr %i.zp, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.zl, align 4, !tbaa !72
  br label %s_lock.exit935

s_lock.exit935:                                   ; preds = %s_checked_out_p.exit.i931, %bb.ix, %bb.iy
  %i.zq = load ptr, ptr %i.ak, align 8, !tbaa !48
  %i.zr = call i32 @ossl_quic_tserver_tick(ptr noundef %i.zq) #14 ; 0 uses
  br label %.thread987

bb.iz:                                            ; preds = %s_lock.exit925
  br i1 %i.yt, label %s_checked_out_p.exit.i936, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.zs = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.zt = zext nneg i32 %i.ys to i64
  %i.zu = getelementptr inbounds nuw [64 x i8], ptr %i.zs, i64 %i.zt
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 56
  br label %s_checked_out_p.exit.i936

s_checked_out_p.exit.i936:                        ; preds = %bb.iz, %bb.ja
  %i.zw = phi ptr [ %i.zv, %bb.ja ], [ %i.aj, %bb.iz ] ; 2 uses
  %i.zx = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %s_checked_out_p.exit.i936
  %i.zz = load i32, ptr %i.zw, align 4, !tbaa !72
  %.not.i937 = icmp eq i32 %i.zz, 0
  br i1 %.not.i937, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %s_checked_out_p.exit.i936
  %i.aaa = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit940

bb.jd:                                            ; preds = %bb.jb
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.zx) #14
  %i.aab = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.aab, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.zw, align 4, !tbaa !72
  br label %s_lock.exit940

s_lock.exit940:                                   ; preds = %bb.jc, %bb.jd
  %.0.i938 = phi ptr [ %i.aaa, %bb.jc ], [ %i.aab, %bb.jd ]
  %i.aac = call ptr @ossl_quic_tserver_get_terminate_cause(ptr noundef %.0.i938) #14 ; 3 uses
  %i.aad = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1700, ptr noundef nonnull @.str.128, ptr noundef %i.aac) #14
  %.not668 = icmp eq i32 %i.aad, 0
  br i1 %.not668, label %.thread1098, label %bb.je

bb.je:                                            ; preds = %s_lock.exit940
  %i.aae = load i64, ptr %i.aac, align 8, !tbaa !136
  %i.aaf = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1703, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.129, i64 noundef %i.ye, i64 noundef %i.aae) #14
  %.not669 = icmp eq i32 %i.aaf, 0
  br i1 %.not669, label %.thread1098, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 32 ; 2 uses
  %i.aah = load i8, ptr %i.aag, align 8
  %i.aai = and i8 %i.aah, 1
  %i.aaj = zext nneg i8 %i.aai to i32
  %i.aak = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1704, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.130, i32 noundef %i.ya, i32 noundef %i.aaj) #14
  %.not670 = icmp eq i32 %i.aak, 0
  br i1 %.not670, label %.thread1098, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aal = load i8, ptr %i.aag, align 8
  %i.aam = lshr i8 %i.aal, 1
  %i.aan = and i8 %i.aam, 1
  %i.aao = zext nneg i8 %i.aan to i32
  %i.aap = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1705, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.131, i32 noundef %i.yc, i32 noundef %i.aao) #14
  %.not671.not = icmp eq i32 %i.aap, 0
  br i1 %.not671.not, label %.thread1098, label %.thread987

bb.jh:                                            ; preds = %bb.ad
  %i.aaq = call i32 @test_uint64_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1710, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i64 noundef %.0565973, i64 noundef -1) #14
  %.not664 = icmp eq i32 %i.aaq, 0
  br i1 %.not664, label %.thread1098, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.aar = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.aas = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1713, ptr noundef nonnull @.str.102, ptr noundef %i.aar) #14
  %.not665 = icmp eq i32 %i.aas, 0
  br i1 %.not665, label %.thread1098, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aat = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.aau = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !19
  %i.aaw = call fastcc i32 @helper_set_s_stream(ptr noundef nonnull %0, ptr noundef %i.aat, i64 noundef %i.aav)
  %i.aax = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1716, ptr noundef nonnull @.str.132, i32 noundef %i.aaw) #14
  %.not666 = icmp eq i32 %i.aax, 0
  br i1 %.not666, label %.thread1098, label %.thread987

bb.jk:                                            ; preds = %bb.ad
  %i.aay = call i32 @test_uint64_t_ne(ptr noundef nonnull @.str.14, i32 noundef 1721, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i64 noundef %.0565973, i64 noundef -1) #14
  %.not661 = icmp eq i32 %i.aay, 0
  br i1 %.not661, label %.thread1098, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aaz = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.aba = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1724, ptr noundef nonnull @.str.102, ptr noundef %i.aaz) #14
  %.not662 = icmp eq i32 %i.aba, 0
  br i1 %.not662, label %.thread1098, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.abb = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.abc = call fastcc i32 @helper_set_s_stream(ptr noundef nonnull %0, ptr noundef %i.abb, i64 noundef -1)
  %i.abd = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1727, ptr noundef nonnull @.str.133, i32 noundef %i.abc) #14
  %.not663 = icmp eq i32 %i.abd, 0
  br i1 %.not663, label %.thread1098, label %.thread987

bb.jn:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store i64 0, ptr %i.n, align 8, !tbaa !18
  %i.abe = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1735, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not658 = icmp eq i32 %i.abe, 0
  br i1 %.not658, label %.thread1071, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.abf = call i32 @SSL_write_ex(ptr noundef %.0566971, ptr noundef nonnull @.str.134, i64 noundef 5, ptr noundef nonnull %i.n) #14 ; 2 uses
  %i.abg = icmp ne i32 %i.abf, 0
  %i.abh = zext i1 %i.abg to i32
  %i.abi = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 1739, ptr noundef nonnull @.str.87, i32 noundef %i.abh) #14
  %.not659 = icmp eq i32 %i.abi, 0
  br i1 %.not659, label %.thread1071, label %bb.jp

.thread1071:                                      ; preds = %bb.jo, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br label %.thread1098

bb.jp:                                            ; preds = %bb.jo
  %i.abj = call fastcc i32 @check_consistent_want(ptr noundef %.0566971, i32 noundef %i.abf)
  %.not660.not = icmp eq i32 %i.abj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  br i1 %.not660.not, label %.thread1098, label %.thread987

bb.jq:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store i64 0, ptr %i.o, align 8, !tbaa !18
  %i.abk = call i32 @test_uint64_t_ne(ptr noundef nonnull @.str.14, i32 noundef 1747, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i64 noundef %.0565973, i64 noundef -1) #14
  %.not656 = icmp eq i32 %i.abk, 0
  br i1 %.not656, label %.thread1074, label %bb.jr

.thread1074:                                      ; preds = %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %.thread1098

bb.jr:                                            ; preds = %bb.jq
  %i.abl = load i32, ptr %i.w, align 8, !tbaa !70 ; 2 uses
  %i.abm = icmp slt i32 %i.abl, 0
  br i1 %i.abm, label %s_checked_out_p.exit.i941, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.abn = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.abo = zext nneg i32 %i.abl to i64
  %i.abp = getelementptr inbounds nuw [64 x i8], ptr %i.abn, i64 %i.abo
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 56
  br label %s_checked_out_p.exit.i941

s_checked_out_p.exit.i941:                        ; preds = %bb.jr, %bb.js
  %i.abr = phi ptr [ %i.abq, %bb.js ], [ %i.aj, %bb.jr ] ; 2 uses
  %i.abs = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.abt = icmp eq ptr %i.abs, null
  br i1 %i.abt, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %s_checked_out_p.exit.i941
  %i.abu = load i32, ptr %i.abr, align 4, !tbaa !72
  %.not.i942 = icmp eq i32 %i.abu, 0
  br i1 %.not.i942, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %s_checked_out_p.exit.i941
  %i.abv = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jt
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.abs) #14
  %i.abw = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.abw, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.abr, align 4, !tbaa !72
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %.0.i943 = phi ptr [ %i.abv, %bb.ju ], [ %i.abw, %bb.jv ]
  %i.abx = call i32 @ossl_quic_tserver_write(ptr noundef %.0.i943, i64 noundef %.0565973, ptr noundef nonnull @.str.134, i64 noundef 5, ptr noundef nonnull %i.o) #14
  %i.aby = icmp ne i32 %i.abx, 0
  %i.abz = zext i1 %i.aby to i32
  %i.aca = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 1752, ptr noundef nonnull @.str.135, i32 noundef %i.abz) #14
  %.not657.not = icmp eq i32 %i.aca, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br i1 %.not657.not, label %.thread1098, label %.thread987

bb.jx:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  store i64 0, ptr %i.p, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  %i.acb = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1761, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not653 = icmp eq i32 %i.acb, 0
  br i1 %.not653, label %.thread1078, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.acc = call i32 @SSL_read_ex(ptr noundef %.0566971, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef nonnull %i.p) #14 ; 2 uses
  %i.acd = icmp ne i32 %i.acc, 0
  %i.ace = zext i1 %i.acd to i32
  %i.acf = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 1765, ptr noundef nonnull @.str.87, i32 noundef %i.ace) #14
  %.not654 = icmp eq i32 %i.acf, 0
  br i1 %.not654, label %.thread1078, label %bb.jz

.thread1078:                                      ; preds = %bb.jy, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  br label %.thread1098

bb.jz:                                            ; preds = %bb.jy
  %i.acg = call fastcc i32 @check_consistent_want(ptr noundef %.0566971, i32 noundef %i.acc)
  %.not655.not = icmp eq i32 %i.acg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  br i1 %.not655.not, label %.thread1098, label %.thread987

bb.ka:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  store i64 0, ptr %i.r, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  %i.ach = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1776, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not648 = icmp eq i32 %i.ach, 0
  br i1 %.not648, label %.thread1082, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.aci = call i32 @SSL_read_ex(ptr noundef %.0566971, ptr noundef nonnull %i.s, i64 noundef 1, ptr noundef nonnull %i.r) #14 ; 2 uses
  %i.acj = icmp ne i32 %i.aci, 0
  %i.ack = zext i1 %i.acj to i32
  %i.acl = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 1780, ptr noundef nonnull @.str.87, i32 noundef %i.ack) #14
  %.not649 = icmp eq i32 %i.acl, 0
  br i1 %.not649, label %.thread1082, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.acm = call fastcc i32 @check_consistent_want(ptr noundef %.0566971, i32 noundef %i.aci)
  %.not650 = icmp eq i32 %i.acm, 0
  br i1 %.not650, label %.thread1082, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.acn = call i32 @SSL_get_error(ptr noundef %.0566971, i32 noundef 0) #14
  %i.aco = and i32 %i.acn, -2
  %.not1119 = icmp eq i32 %i.aco, 2
  br i1 %.not1119, label %bb.ke, label %bb.kg

bb.ke:                                            ; preds = %bb.kd
  %i.acp = load i32, ptr %i.an, align 4, !tbaa !38
  %.not652 = icmp eq i32 %i.acp, 0
  br i1 %.not652, label %.thread1082, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1786, ptr noundef nonnull @.str.83) #14
  br label %.thread1082

.thread1082:                                      ; preds = %bb.kf, %bb.kc, %bb.ke, %bb.kb, %bb.ka
  %.16595.ph = phi i32 [ 0, %bb.ka ], [ 0, %bb.kb ], [ 1, %bb.ke ], [ 0, %bb.kc ], [ 0, %bb.kf ]
  %.23.ph = phi i32 [ 2, %bb.ka ], [ 2, %bb.kb ], [ 4, %bb.ke ], [ 2, %bb.kc ], [ 2, %bb.kf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  br label %.thread987

bb.kg:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  br label %.thread987

bb.kh:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  store i64 0, ptr %i.t, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #14
  %i.acq = call i32 @test_uint64_t_ne(ptr noundef nonnull @.str.14, i32 noundef 1794, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i64 noundef %.0565973, i64 noundef -1) #14
  %.not646 = icmp eq i32 %i.acq, 0
  br i1 %.not646, label %.thread1086, label %bb.ki

.thread1086:                                      ; preds = %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  br label %.thread1098

bb.ki:                                            ; preds = %bb.kh
  %i.acr = load i32, ptr %i.w, align 8, !tbaa !70 ; 2 uses
  %i.acs = icmp slt i32 %i.acr, 0
  br i1 %i.acs, label %s_checked_out_p.exit.i946, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.act = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.acu = zext nneg i32 %i.acr to i64
  %i.acv = getelementptr inbounds nuw [64 x i8], ptr %i.act, i64 %i.acu
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 56
  br label %s_checked_out_p.exit.i946

s_checked_out_p.exit.i946:                        ; preds = %bb.ki, %bb.kj
  %i.acx = phi ptr [ %i.acw, %bb.kj ], [ %i.aj, %bb.ki ] ; 2 uses
  %i.acy = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.acz = icmp eq ptr %i.acy, null
  br i1 %i.acz, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %s_checked_out_p.exit.i946
  %i.ada = load i32, ptr %i.acx, align 4, !tbaa !72
  %.not.i947 = icmp eq i32 %i.ada, 0
  br i1 %.not.i947, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %s_checked_out_p.exit.i946
  %i.adb = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit950

bb.km:                                            ; preds = %bb.kk
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.acy) #14
  %i.adc = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.adc, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.acx, align 4, !tbaa !72
  br label %s_lock.exit950

s_lock.exit950:                                   ; preds = %bb.kl, %bb.km
  %.0.i948 = phi ptr [ %i.adb, %bb.kl ], [ %i.adc, %bb.km ]
  %i.add = call i32 @ossl_quic_tserver_read(ptr noundef %.0.i948, i64 noundef %.0565973, ptr noundef nonnull %i.u, i64 noundef 1, ptr noundef nonnull %i.t) #14
  %i.ade = icmp eq i32 %i.add, 0
  br i1 %i.ade, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %s_lock.exit950
  %i.adf = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !17
  %i.adh = icmp ne i64 %i.adg, 0
  %i.adi = load i64, ptr %i.t, align 8
  %i.adj = icmp eq i64 %i.adi, 0
  %i.adk = select i1 %i.adh, i1 %i.adj, i1 false
  %i.adl = zext i1 %i.adk to i32
  br label %bb.ko

bb.ko:                                            ; preds = %s_lock.exit950, %bb.kn
  %i.adm = phi i32 [ 1, %s_lock.exit950 ], [ %i.adl, %bb.kn ]
  %i.adn = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1800, ptr noundef nonnull @.str.136, i32 noundef %i.adm) #14
  %.not647.not = icmp eq i32 %i.adn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #14
  br i1 %.not647.not, label %.thread1098, label %.thread987

bb.kp:                                            ; preds = %bb.ad, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  store i64 0, ptr %14, align 8
  %i.ado = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1808, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not643 = icmp eq i32 %i.ado, 0
  br i1 %.not643, label %.thread1090, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.adp = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !19
  store i64 %i.adq, ptr %14, align 8, !tbaa !138
  %i.adr = load i32, ptr %i.bx, align 8, !tbaa !16
  %i.ads = icmp eq i32 %i.adr, 29
  %i.adt = call i32 @SSL_stream_reset(ptr noundef %.0566971, ptr noundef nonnull %14, i64 noundef 8) #14
  %i.adu = icmp ne i32 %i.adt, 0
  %i.adv = zext i1 %i.adu to i32                  ; 2 uses
  br i1 %i.ads, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.adw = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1813, ptr noundef nonnull @.str.137, i32 noundef %i.adv) #14
  %.not645 = icmp eq i32 %i.adw, 0
  br i1 %.not645, label %.thread1090, label %bb.kt

bb.ks:                                            ; preds = %bb.kq
  %i.adx = call i32 @test_false(ptr noundef nonnull @.str.14, i32 noundef 1816, ptr noundef nonnull @.str.137, i32 noundef %i.adv) #14
  %.not644 = icmp eq i32 %i.adx, 0
  br i1 %.not644, label %.thread1090, label %bb.kt

.thread1090:                                      ; preds = %bb.kp, %bb.kr, %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %.thread1098

bb.kt:                                            ; preds = %bb.kr, %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %.thread987

bb.ku:                                            ; preds = %bb.ad
  %i.ady = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.adz = call i32 @test_ptr_null(ptr noundef nonnull @.str.14, i32 noundef 1833, ptr noundef nonnull @.str.138, ptr noundef %i.ady) #14
  %.not639 = icmp eq i32 %i.adz, 0
  br i1 %.not639, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1834, ptr noundef nonnull @.str.139) #14
  br label %.thread1098

bb.kw:                                            ; preds = %bb.ku
  %i.aea = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  %i.aeb = load i64, ptr %i.aea, align 8, !tbaa !17
  %i.aec = call noalias ptr @CRYPTO_calloc(i64 noundef %i.aeb, i64 noundef 64, ptr noundef nonnull @.str.14, i32 noundef 1838) #14 ; 2 uses
  store ptr %i.aec, ptr %i.ai, align 8, !tbaa !58
  %i.aed = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1839, ptr noundef nonnull @.str.138, ptr noundef %i.aec) #14
  %.not640 = icmp eq i32 %i.aed, 0
  br i1 %.not640, label %.thread1098, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.aee = load i64, ptr %i.aea, align 8, !tbaa !17 ; 2 uses
  store i64 %i.aee, ptr %i.az, align 8, !tbaa !59
  %.not1229 = icmp eq i64 %i.aee, 0
  br i1 %.not1229, label %.thread987, label %.lr.ph

.lr.ph:                                           ; preds = %bb.kx
  %i.aef = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  br label %bb.kz

bb.ky:                                            ; preds = %bb.la
  %i.aeg = add nuw i64 %.05401223, 1              ; 2 uses
  %i.aeh = load i64, ptr %i.aea, align 8, !tbaa !17
  %i.aei = icmp ult i64 %i.aeg, %i.aeh
  br i1 %i.aei, label %bb.kz, label %.thread987, !llvm.loop !125

bb.kz:                                            ; preds = %.lr.ph, %bb.ky
  %.05401223 = phi i64 [ 0, %.lr.ph ], [ %i.aeg, %bb.ky ] ; 6 uses
  %i.aej = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.aek = getelementptr inbounds nuw [64 x i8], ptr %i.aej, i64 %.05401223 ; 4 uses
  store ptr %0, ptr %i.aek, align 8, !tbaa !84
  %i.ael = load ptr, ptr %i.aef, align 8, !tbaa !129
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  store ptr %i.ael, ptr %i.aem, align 8, !tbaa !85
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  store ptr %2, ptr %i.aen, align 8, !tbaa !86
  %i.aeo = trunc i64 %.05401223 to i32
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aek, i64 24
  store i32 %i.aeo, ptr %i.aep, align 8, !tbaa !87
  %i.aeq = call ptr @ossl_crypto_mutex_new() #14  ; 2 uses
  %i.aer = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.aes = getelementptr inbounds nuw [64 x i8], ptr %i.aer, i64 %.05401223
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 40
  store ptr %i.aeq, ptr %i.aet, align 8, !tbaa !77
  %i.aeu = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1851, ptr noundef nonnull @.str.140, ptr noundef %i.aeq) #14
  %.not641 = icmp eq i32 %i.aeu, 0
  br i1 %.not641, label %.thread1098, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.aev = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.aew = getelementptr inbounds nuw [64 x i8], ptr %i.aev, i64 %.05401223
  %i.aex = call ptr @ossl_crypto_thread_native_start(ptr noundef nonnull @run_script_child_thread, ptr noundef %i.aew, i32 noundef 1) #14 ; 2 uses
  %i.aey = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.aez = getelementptr inbounds nuw [64 x i8], ptr %i.aey, i64 %.05401223
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 32
  store ptr %i.aex, ptr %i.afa, align 8, !tbaa !62
  %i.afb = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1857, ptr noundef nonnull @.str.141, ptr noundef %i.aex) #14
  %.not642 = icmp eq i32 %i.afb, 0
  br i1 %.not642, label %.thread1098, label %bb.ky

bb.lb:                                            ; preds = %bb.ad
  %i.afc = load i32, ptr %i.ay, align 8, !tbaa !35
  %i.afd = call i32 @BIO_closesocket(i32 noundef %i.afc) #14 ; 0 uses
  store i32 -1, ptr %i.ay, align 8, !tbaa !35
  br label %.thread987

bb.lc:                                            ; preds = %bb.ad
  %i.afe = call i32 @SSL_get_error(ptr noundef %.0566971, i32 noundef 0) #14
  %i.aff = sext i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !17
  %i.afi = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1869, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.77, i64 noundef %i.aff, i64 noundef %i.afh) #14
  %.not637 = icmp eq i32 %i.afi, 0
  br i1 %.not637, label %.thread1098, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.afj = call i32 @SSL_want(ptr noundef %.0566971) #14
  %i.afk = call i32 @test_int_eq(ptr noundef nonnull @.str.14, i32 noundef 1871, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef %i.afj, i32 noundef 1) #14
  %.not638 = icmp eq i32 %i.afk, 0
  br i1 %.not638, label %.thread1098, label %.thread987

bb.le:                                            ; preds = %bb.ad
  %i.afl = call i64 @ERR_peek_last_error() #14    ; 2 uses
  %i.afm = and i64 %i.afl, 2147483648
  %.not.i951 = icmp eq i64 %i.afm, 0
  %.0.v.i952 = select i1 %.not.i951, i64 8388607, i64 2147483647
  %.0.i953 = and i64 %.0.v.i952, %i.afl
  %i.afn = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !17
  %i.afp = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1876, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.77, i64 noundef %.0.i953, i64 noundef %i.afo) #14
  %.not636 = icmp eq i32 %i.afp, 0
  br i1 %.not636, label %.thread1098, label %.thread987

bb.lf:                                            ; preds = %bb.ad
  %i.afq = call i64 @ERR_peek_last_error() #14    ; 2 uses
  %i.afr = and i64 %i.afq, 2147483648
  %.not.i954 = icmp eq i64 %i.afr, 0
  %i.afs = lshr i64 %i.afq, 23
  %i.aft = and i64 %i.afs, 511
  %i.afu = select i1 %.not.i954, i64 %i.aft, i64 2
  %i.afv = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !17
  %i.afx = call i32 @test_size_t_eq(ptr noundef nonnull @.str.14, i32 noundef 1881, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.77, i64 noundef %i.afu, i64 noundef %i.afw) #14
  %.not635 = icmp eq i32 %i.afx, 0
  br i1 %.not635, label %.thread1098, label %.thread987

bb.lg:                                            ; preds = %bb.ad
  %i.afy = call i32 @ERR_pop() #14                ; 0 uses
  br label %.thread987

bb.lh:                                            ; preds = %bb.ad
  %i.afz = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !19
  call void @OSSL_sleep(i64 noundef %i.aga) #14
  br label %.thread987

bb.li:                                            ; preds = %bb.ad
  %i.agb = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !139 ; 2 uses
  store ptr %i.agc, ptr %i.ax, align 8, !tbaa !88
  %i.agd = load ptr, ptr %i.av, align 8, !tbaa !49
  %.not633 = icmp eq ptr %i.agc, null
  %i.age = select i1 %.not633, ptr null, ptr @helper_packet_plain_listener
  %i.agf = call i32 @qtest_fault_set_packet_plain_listener(ptr noundef %i.agd, ptr noundef %i.age, ptr noundef nonnull %0) #14
  %i.agg = icmp ne i32 %i.agf, 0
  %i.agh = zext i1 %i.agg to i32
  %i.agi = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1898, ptr noundef nonnull @.str.145, i32 noundef %i.agh) #14
  %.not634 = icmp eq i32 %i.agi, 0
  br i1 %.not634, label %.thread1098, label %.thread987

bb.lj:                                            ; preds = %bb.ad
  %i.agj = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !140 ; 2 uses
  store ptr %i.agk, ptr %i.aw, align 8, !tbaa !89
  %i.agl = load ptr, ptr %i.av, align 8, !tbaa !49
  %.not631 = icmp eq ptr %i.agk, null
  %i.agm = select i1 %.not631, ptr null, ptr @helper_handshake_listener
  %i.agn = call i32 @qtest_fault_set_handshake_listener(ptr noundef %i.agl, ptr noundef %i.agm, ptr noundef nonnull %0) #14
  %i.ago = icmp ne i32 %i.agn, 0
  %i.agp = zext i1 %i.ago to i32
  %i.agq = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1908, ptr noundef nonnull @.str.146, i32 noundef %i.agp) #14
  %.not632 = icmp eq i32 %i.agq, 0
  br i1 %.not632, label %.thread1098, label %.thread987

bb.lk:                                            ; preds = %bb.ad
  %i.agr = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !141 ; 2 uses
  store ptr %i.ags, ptr %i.au, align 8, !tbaa !90
  %i.agt = load ptr, ptr %i.av, align 8, !tbaa !49
  %.not629 = icmp eq ptr %i.ags, null
  %i.agu = select i1 %.not629, ptr null, ptr @helper_datagram_listener
  %i.agv = call i32 @qtest_fault_set_datagram_listener(ptr noundef %i.agt, ptr noundef %i.agu, ptr noundef nonnull %0) #14
  %i.agw = icmp ne i32 %i.agv, 0
  %i.agx = zext i1 %i.agw to i32
  %i.agy = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1918, ptr noundef nonnull @.str.147, i32 noundef %i.agx) #14
  %.not630 = icmp eq i32 %i.agy, 0
  br i1 %.not630, label %.thread1098, label %.thread987

bb.ll:                                            ; preds = %bb.ad
  %i.agz = load i32, ptr %i.w, align 8, !tbaa !70 ; 2 uses
  %i.aha = icmp slt i32 %i.agz, 0
  br i1 %i.aha, label %s_checked_out_p.exit.i956, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.ahb = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ahc = zext nneg i32 %i.agz to i64
  %i.ahd = getelementptr inbounds nuw [64 x i8], ptr %i.ahb, i64 %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 56
  br label %s_checked_out_p.exit.i956

s_checked_out_p.exit.i956:                        ; preds = %bb.ll, %bb.lm
  %i.ahf = phi ptr [ %i.ahe, %bb.lm ], [ %i.aj, %bb.ll ] ; 2 uses
  %i.ahg = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.ahh = icmp eq ptr %i.ahg, null
  br i1 %i.ahh, label %s_lock.exit960, label %bb.ln

bb.ln:                                            ; preds = %s_checked_out_p.exit.i956
  %i.ahi = load i32, ptr %i.ahf, align 4, !tbaa !72
  %.not.i957 = icmp eq i32 %i.ahi, 0
  br i1 %.not.i957, label %bb.lo, label %s_lock.exit960

bb.lo:                                            ; preds = %bb.ln
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.ahg) #14
  %i.ahj = load ptr, ptr %i.ar, align 8, !tbaa !47
  store ptr %i.ahj, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.ahf, align 4, !tbaa !72
  br label %s_lock.exit960

s_lock.exit960:                                   ; preds = %s_checked_out_p.exit.i956, %bb.ln, %bb.lo
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ahl = load i64, ptr %i.ahk, align 8, !tbaa !17
  store i64 %i.ahl, ptr %i.as, align 8, !tbaa !65
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.ahn = load i64, ptr %i.ahm, align 8, !tbaa !19
  store i64 %i.ahn, ptr %i.at, align 8, !tbaa !66
  br label %.thread987

bb.lp:                                            ; preds = %bb.ad
  %i.aho = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.ahp = call ptr @ossl_quic_conn_get_channel(ptr noundef %i.aho) #14
  %i.ahq = call ptr @ossl_quic_channel_get0_engine(ptr noundef %i.ahp) #14
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ahs = load i64, ptr %i.ahr, align 8, !tbaa !17
  %i.aht = trunc i64 %i.ahs to i32
  call void @ossl_quic_engine_set_inhibit_tick(ptr noundef %i.ahq, i32 noundef %i.aht) #14
  br label %.thread987

bb.lq:                                            ; preds = %bb.ad
  %i.ahu = call i32 @test_ptr(ptr noundef nonnull @.str.14, i32 noundef 1941, ptr noundef nonnull @.str.86, ptr noundef %.0566971) #14
  %.not627 = icmp eq i32 %i.ahu, 0
  br i1 %.not627, label %.thread1098, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !17
  %i.ahx = call i32 @ossl_quic_set_write_buffer_size(ptr noundef %.0566971, i64 noundef %i.ahw) #14
  %i.ahy = icmp ne i32 %i.ahx, 0
  %i.ahz = zext i1 %i.ahy to i32
  %i.aia = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1944, ptr noundef nonnull @.str.148, i32 noundef %i.ahz) #14
  %.not628 = icmp eq i32 %i.aia, 0
  br i1 %.not628, label %.thread1098, label %.thread987

bb.ls:                                            ; preds = %bb.ad
  %i.aib = load i32, ptr %i.w, align 8, !tbaa !70 ; 2 uses
  %i.aic = icmp slt i32 %i.aib, 0
  br i1 %i.aic, label %s_checked_out_p.exit.i961, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.aid = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.aie = zext nneg i32 %i.aib to i64
  %i.aif = getelementptr inbounds nuw [64 x i8], ptr %i.aid, i64 %i.aie
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 56
  br label %s_checked_out_p.exit.i961

s_checked_out_p.exit.i961:                        ; preds = %bb.ls, %bb.lt
  %i.aih = phi ptr [ %i.aig, %bb.lt ], [ %i.aj, %bb.ls ] ; 2 uses
  %i.aii = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.aij = icmp eq ptr %i.aii, null
  br i1 %i.aij, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %s_checked_out_p.exit.i961
  %i.aik = load i32, ptr %i.aih, align 4, !tbaa !72
  %.not.i962 = icmp eq i32 %i.aik, 0
  br i1 %.not.i962, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %s_checked_out_p.exit.i961
  %i.ail = load ptr, ptr %i.ak, align 8, !tbaa !48
  br label %s_lock.exit965

bb.lw:                                            ; preds = %bb.lu
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.aii) #14
  %i.aim = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  store ptr %i.aim, ptr %i.ak, align 8, !tbaa !48
  store i32 1, ptr %i.aih, align 4, !tbaa !72
  br label %s_lock.exit965

s_lock.exit965:                                   ; preds = %bb.lv, %bb.lw
  %.0.i963 = phi ptr [ %i.ail, %bb.lv ], [ %i.aim, %bb.lw ]
  %i.ain = call i32 @ossl_quic_tserver_new_ticket(ptr noundef %.0.i963) #14
  %i.aio = icmp ne i32 %i.ain, 0
  %i.aip = zext i1 %i.aio to i32
  %i.aiq = call i32 @test_true(ptr noundef nonnull @.str.14, i32 noundef 1950, ptr noundef nonnull @.str.149, i32 noundef %i.aip) #14
  %.not626 = icmp eq i32 %i.aiq, 0
  br i1 %.not626, label %.thread1098, label %.thread987

bb.lx:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1955, ptr noundef nonnull @.str.150) #14
  br label %.thread1098

.thread987:                                       ; preds = %bb.ky, %bb.aq, %bb.as, %bb.au, %s_lock.exit849, %bb.hj, %s_lock.exit920, %bb.lb, %bb.lg, %bb.lh, %s_lock.exit960, %bb.lp, %bb.ar, %bb.at, %bb.be, %bb.bu, %bb.by, %bb.cf, %bb.cg, %bb.dz, %s_lock.exit864, %bb.et, %helper_local_set_c_stream.exit880, %bb.ga, %bb.gm, %bb.gy, %bb.hl, %bb.hn, %bb.hp, %bb.jg, %bb.jj, %bb.jm, %bb.jp, %bb.jw, %bb.jz, %bb.ko, %bb.ld, %bb.le, %bb.lf, %bb.li, %bb.lj, %bb.lk, %bb.lr, %s_lock.exit965, %bb.aw, %bb.bi, %bb.bk, %bb.bq, %bb.bp, %bb.cr, %bb.db, %bb.dr, %helper_local_set_c_stream.exit888, %bb.fj, %bb.gz, %bb.hv, %bb.il, %bb.kg, %bb.kt, %bb.kx, %s_lock.exit935, %s_lock.exit909, %bb.ge, %bb.bn, %.thread1082, %.thread1061, %.thread1056, %.thread1023, %.thread1016, %.thread1009, %.thread1004, %.thread978, %s_lock.exit869, %bb.ax
  %.4602 = phi i64 [ %.2600, %.thread1056 ], [ %.2600, %.thread1082 ], [ %.2600, %s_lock.exit935 ], [ %.2600, %bb.ge ], [ %.2600, %bb.bn ], [ %.2600, %.thread1023 ], [ %.2600, %.thread978 ], [ %i.fh, %bb.ax ], [ %.2600, %.thread1004 ], [ %.2600, %.thread1009 ], [ %.2600, %.thread1016 ], [ %.2600, %.thread1061 ], [ %.2600, %s_lock.exit869 ], [ %.2600, %s_lock.exit909 ], [ %.2600, %bb.aq ], [ %.2600, %bb.ar ], [ %i.et, %bb.as ], [ %i.ex, %bb.au ], [ %.2600, %bb.at ], [ %.2600, %s_lock.exit965 ], [ %.2600, %bb.be ], [ %.2600, %bb.bi ], [ %.2600, %bb.aw ], [ %.2600, %bb.bu ], [ %.2600, %bb.by ], [ %.2600, %bb.cf ], [ %.2600, %bb.cg ], [ %.2600, %s_lock.exit849 ], [ %.2600, %bb.cr ], [ %.2600, %bb.db ], [ %.2600, %bb.dr ], [ %.2600, %bb.dz ], [ %.2600, %s_lock.exit864 ], [ %.2600, %bb.et ], [ %.2600, %helper_local_set_c_stream.exit880 ], [ %.2600, %bb.bp ], [ %.2600, %bb.bq ], [ %.2600, %bb.ga ], [ %.2600, %bb.gm ], [ %.2600, %bb.gy ], [ %.2600, %bb.fj ], [ %.2600, %bb.hj ], [ %.2600, %bb.hl ], [ %.2600, %bb.hn ], [ %.2600, %bb.hp ], [ %.2600, %bb.hv ], [ %.2600, %s_lock.exit920 ], [ %.2600, %bb.il ], [ %.2600, %bb.jg ], [ %.2600, %bb.jj ], [ %.2600, %bb.jm ], [ %.2600, %bb.jp ], [ %.2600, %bb.jw ], [ %.2600, %bb.jz ], [ %.2600, %bb.kg ], [ %.2600, %bb.ko ], [ %.2600, %bb.kt ], [ %.2600, %bb.gz ], [ %.2600, %bb.lb ], [ %.2600, %bb.ld ], [ %.2600, %bb.le ], [ %.2600, %bb.lf ], [ %.2600, %bb.lg ], [ %.2600, %bb.lh ], [ %.2600, %bb.li ], [ %.2600, %bb.lj ], [ %.2600, %bb.lk ], [ %.2600, %s_lock.exit960 ], [ %.2600, %bb.lp ], [ %.2600, %bb.lr ], [ %.2600, %bb.bk ], [ %.2600, %helper_local_set_c_stream.exit888 ], [ %.2600, %bb.kx ], [ %.2600, %bb.ky ] ; 2 uses
  %.18597 = phi i32 [ %.13592.ph, %.thread1056 ], [ %.16595.ph, %.thread1082 ], [ 1, %s_lock.exit935 ], [ 1, %bb.ge ], [ 1, %bb.bn ], [ %.10589.ph, %.thread1023 ], [ 1, %.thread978 ], [ 1, %bb.ax ], [ %.7586.ph, %.thread1004 ], [ %.8587.ph, %.thread1009 ], [ %.9588.ph, %.thread1016 ], [ %.14593.ph, %.thread1061 ], [ 1, %s_lock.exit869 ], [ 1, %s_lock.exit909 ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %s_lock.exit965 ], [ 0, %bb.be ], [ 0, %bb.bi ], [ 0, %bb.aw ], [ 0, %bb.bu ], [ 0, %bb.by ], [ 0, %bb.cf ], [ 0, %bb.cg ], [ 0, %s_lock.exit849 ], [ 0, %bb.cr ], [ 0, %bb.db ], [ 0, %bb.dr ], [ 0, %bb.dz ], [ 0, %s_lock.exit864 ], [ 0, %bb.et ], [ 0, %helper_local_set_c_stream.exit880 ], [ 0, %bb.bp ], [ 0, %bb.bq ], [ 0, %bb.ga ], [ 0, %bb.gm ], [ 0, %bb.gy ], [ 0, %bb.fj ], [ 0, %bb.hj ], [ 0, %bb.hl ], [ 0, %bb.hn ], [ 0, %bb.hp ], [ 0, %bb.hv ], [ 0, %s_lock.exit920 ], [ 0, %bb.il ], [ 0, %bb.jg ], [ 0, %bb.jj ], [ 0, %bb.jm ], [ 0, %bb.jp ], [ 0, %bb.jw ], [ 0, %bb.jz ], [ 0, %bb.kg ], [ 0, %bb.ko ], [ 0, %bb.kt ], [ 0, %bb.gz ], [ 0, %bb.lb ], [ 0, %bb.ld ], [ 0, %bb.le ], [ 0, %bb.lf ], [ 0, %bb.lg ], [ 0, %bb.lh ], [ 0, %bb.li ], [ 0, %bb.lj ], [ 0, %bb.lk ], [ 0, %s_lock.exit960 ], [ 0, %bb.lp ], [ 0, %bb.lr ], [ 0, %bb.bk ], [ 0, %helper_local_set_c_stream.exit888 ], [ 0, %bb.kx ], [ 0, %bb.ky ]
  %.2569 = phi i64 [ %.0567, %.thread1056 ], [ %.0567, %.thread1082 ], [ %.0567, %s_lock.exit935 ], [ %.0567, %bb.ge ], [ %.0567, %bb.bn ], [ %.0567, %.thread1023 ], [ %.0567, %.thread978 ], [ %.0567, %bb.ax ], [ %.0567, %.thread1004 ], [ %.0567, %.thread1009 ], [ %.0567, %.thread1016 ], [ %.0567, %.thread1061 ], [ %.0567, %s_lock.exit869 ], [ %.0567, %s_lock.exit909 ], [ %i.eq, %bb.aq ], [ %.0567, %bb.ar ], [ %.0567, %bb.as ], [ %.0567, %bb.au ], [ %.0567, %bb.at ], [ %.0567, %s_lock.exit965 ], [ %.0567, %bb.be ], [ %.0567, %bb.bi ], [ %i.ez, %bb.aw ], [ %.0567, %bb.bu ], [ %.0567, %bb.by ], [ %.0567, %bb.cf ], [ %.0567, %bb.cg ], [ %.0567, %s_lock.exit849 ], [ %.0567, %bb.cr ], [ %.0567, %bb.db ], [ %.0567, %bb.dr ], [ %.0567, %bb.dz ], [ %.0567, %s_lock.exit864 ], [ %.0567, %bb.et ], [ %.0567, %helper_local_set_c_stream.exit880 ], [ %.0567, %bb.bp ], [ %.0567, %bb.bq ], [ %.0567, %bb.ga ], [ %.0567, %bb.gm ], [ %.0567, %bb.gy ], [ %.0567, %bb.fj ], [ %.0567, %bb.hj ], [ %.0567, %bb.hl ], [ %.0567, %bb.hn ], [ %.0567, %bb.hp ], [ %.0567, %bb.hv ], [ %.0567, %s_lock.exit920 ], [ %.0567, %bb.il ], [ %.0567, %bb.jg ], [ %.0567, %bb.jj ], [ %.0567, %bb.jm ], [ %.0567, %bb.jp ], [ %.0567, %bb.jw ], [ %.0567, %bb.jz ], [ %.0567, %bb.kg ], [ %.0567, %bb.ko ], [ %.0567, %bb.kt ], [ %.0567, %bb.gz ], [ %.0567, %bb.lb ], [ %.0567, %bb.ld ], [ %.0567, %bb.le ], [ %.0567, %bb.lf ], [ %.0567, %bb.lg ], [ %.0567, %bb.lh ], [ %.0567, %bb.li ], [ %.0567, %bb.lj ], [ %.0567, %bb.lk ], [ %.0567, %s_lock.exit960 ], [ %.0567, %bb.lp ], [ %.0567, %bb.lr ], [ %.0567, %bb.bk ], [ %.0567, %helper_local_set_c_stream.exit888 ], [ %.0567, %bb.kx ], [ %.0567, %bb.ky ] ; 2 uses
  %.5564 = phi i64 [ %.1560, %.thread1056 ], [ %.1560, %.thread1082 ], [ %.1560, %s_lock.exit935 ], [ %.1560, %bb.ge ], [ %.1560, %bb.bn ], [ %.1560, %.thread1023 ], [ %.1560, %.thread978 ], [ %.1560, %bb.ax ], [ %.1560, %.thread1004 ], [ %.2561.ph, %.thread1009 ], [ %.3562.ph, %.thread1016 ], [ %.1560, %.thread1061 ], [ %.1560, %s_lock.exit869 ], [ %.1560, %s_lock.exit909 ], [ %.1560, %bb.aq ], [ %.1560, %bb.ar ], [ %.1560, %bb.as ], [ %.1560, %bb.au ], [ %.1560, %bb.at ], [ %.1560, %s_lock.exit965 ], [ %.1560, %bb.be ], [ %.1560, %bb.bi ], [ %.1560, %bb.aw ], [ %.1560, %bb.bu ], [ %.1560, %bb.by ], [ %.1560, %bb.cf ], [ %.1560, %bb.cg ], [ %.1560, %s_lock.exit849 ], [ %.1560, %bb.cr ], [ %.1560, %bb.db ], [ %.1560, %bb.dr ], [ %.1560, %bb.dz ], [ %.1560, %s_lock.exit864 ], [ %.1560, %bb.et ], [ %.1560, %helper_local_set_c_stream.exit880 ], [ %.1560, %bb.bp ], [ %.1560, %bb.bq ], [ %.1560, %bb.ga ], [ %.1560, %bb.gm ], [ %.1560, %bb.gy ], [ %.1560, %bb.fj ], [ %.1560, %bb.hj ], [ %.1560, %bb.hl ], [ %.1560, %bb.hn ], [ %.1560, %bb.hp ], [ %.1560, %bb.hv ], [ %.1560, %s_lock.exit920 ], [ %.1560, %bb.il ], [ %.1560, %bb.jg ], [ %.1560, %bb.jj ], [ %.1560, %bb.jm ], [ %.1560, %bb.jp ], [ %.1560, %bb.jw ], [ %.1560, %bb.jz ], [ %.1560, %bb.kg ], [ %.1560, %bb.ko ], [ %.1560, %bb.kt ], [ %.1560, %bb.gz ], [ %.1560, %bb.lb ], [ %.1560, %bb.ld ], [ %.1560, %bb.le ], [ %.1560, %bb.lf ], [ %.1560, %bb.lg ], [ %.1560, %bb.lh ], [ %.1560, %bb.li ], [ %.1560, %bb.lj ], [ %.1560, %bb.lk ], [ %.1560, %s_lock.exit960 ], [ %.1560, %bb.lp ], [ %.1560, %bb.lr ], [ %.1560, %bb.bk ], [ %.1560, %helper_local_set_c_stream.exit888 ], [ %.1560, %bb.kx ], [ %.1560, %bb.ky ]
  %.2558 = phi i32 [ %.0556, %.thread1056 ], [ %.0556, %.thread1082 ], [ %.0556, %s_lock.exit935 ], [ %.0556, %bb.ge ], [ 1, %bb.bn ], [ %.0556, %.thread1023 ], [ %.0556, %.thread978 ], [ %.0556, %bb.ax ], [ %.0556, %.thread1004 ], [ %.0556, %.thread1009 ], [ %.0556, %.thread1016 ], [ %.0556, %.thread1061 ], [ %.0556, %s_lock.exit869 ], [ %.0556, %s_lock.exit909 ], [ %.0556, %bb.aq ], [ %.0556, %bb.ar ], [ %.0556, %bb.as ], [ %.0556, %bb.au ], [ %.0556, %bb.at ], [ %.0556, %s_lock.exit965 ], [ %.0556, %bb.be ], [ %.0556, %bb.bi ], [ %.0556, %bb.aw ], [ %.0556, %bb.bu ], [ %.0556, %bb.by ], [ %.0556, %bb.cf ], [ %.0556, %bb.cg ], [ %.0556, %s_lock.exit849 ], [ %.0556, %bb.cr ], [ %.0556, %bb.db ], [ %.0556, %bb.dr ], [ %.0556, %bb.dz ], [ %.0556, %s_lock.exit864 ], [ %.0556, %bb.et ], [ %.0556, %helper_local_set_c_stream.exit880 ], [ 1, %bb.bp ], [ 1, %bb.bq ], [ %.0556, %bb.ga ], [ %.0556, %bb.gm ], [ %.0556, %bb.gy ], [ %.0556, %bb.fj ], [ %.0556, %bb.hj ], [ %.0556, %bb.hl ], [ %.0556, %bb.hn ], [ %.0556, %bb.hp ], [ %.0556, %bb.hv ], [ %.0556, %s_lock.exit920 ], [ %.0556, %bb.il ], [ %.0556, %bb.jg ], [ %.0556, %bb.jj ], [ %.0556, %bb.jm ], [ %.0556, %bb.jp ], [ %.0556, %bb.jw ], [ %.0556, %bb.jz ], [ %.0556, %bb.kg ], [ %.0556, %bb.ko ], [ %.0556, %bb.kt ], [ %.0556, %bb.gz ], [ %.0556, %bb.lb ], [ %.0556, %bb.ld ], [ %.0556, %bb.le ], [ %.0556, %bb.lf ], [ %.0556, %bb.lg ], [ %.0556, %bb.lh ], [ %.0556, %bb.li ], [ %.0556, %bb.lj ], [ %.0556, %bb.lk ], [ %.0556, %s_lock.exit960 ], [ %.0556, %bb.lp ], [ %.0556, %bb.lr ], [ 1, %bb.bk ], [ %.0556, %helper_local_set_c_stream.exit888 ], [ %.0556, %bb.kx ], [ %.0556, %bb.ky ]
  %.8554 = phi ptr [ %.0546, %.thread1056 ], [ %.0546, %.thread1082 ], [ %.0546, %s_lock.exit935 ], [ %.0546, %bb.ge ], [ %.0546, %bb.bn ], [ %.0546, %.thread1023 ], [ %.0546, %.thread978 ], [ %.0546, %bb.ax ], [ %.0546, %.thread1004 ], [ %.4550.ph, %.thread1009 ], [ %.6552.ph, %.thread1016 ], [ %.0546, %.thread1061 ], [ %.0546, %s_lock.exit869 ], [ %.0546, %s_lock.exit909 ], [ %.0546, %bb.aq ], [ %.0546, %bb.ar ], [ %.0546, %bb.as ], [ %.0546, %bb.au ], [ %.0546, %bb.at ], [ %.0546, %s_lock.exit965 ], [ %.0546, %bb.be ], [ null, %bb.bi ], [ %.0546, %bb.aw ], [ %.0546, %bb.bu ], [ %.0546, %bb.by ], [ %.0546, %bb.cf ], [ %.0546, %bb.cg ], [ %.0546, %s_lock.exit849 ], [ %.0546, %bb.cr ], [ null, %bb.db ], [ null, %bb.dr ], [ %.0546, %bb.dz ], [ %.0546, %s_lock.exit864 ], [ %.0546, %bb.et ], [ %.0546, %helper_local_set_c_stream.exit880 ], [ %.0546, %bb.bp ], [ %.0546, %bb.bq ], [ %.0546, %bb.ga ], [ %.0546, %bb.gm ], [ %.0546, %bb.gy ], [ %.0546, %bb.fj ], [ %.0546, %bb.hj ], [ %.0546, %bb.hl ], [ %.0546, %bb.hn ], [ %.0546, %bb.hp ], [ %.0546, %bb.hv ], [ %.0546, %s_lock.exit920 ], [ %.0546, %bb.il ], [ %.0546, %bb.jg ], [ %.0546, %bb.jj ], [ %.0546, %bb.jm ], [ %.0546, %bb.jp ], [ %.0546, %bb.jw ], [ %.0546, %bb.jz ], [ %.0546, %bb.kg ], [ %.0546, %bb.ko ], [ %.0546, %bb.kt ], [ %.0546, %bb.gz ], [ %.0546, %bb.lb ], [ %.0546, %bb.ld ], [ %.0546, %bb.le ], [ %.0546, %bb.lf ], [ %.0546, %bb.lg ], [ %.0546, %bb.lh ], [ %.0546, %bb.li ], [ %.0546, %bb.lj ], [ %.0546, %bb.lk ], [ %.0546, %s_lock.exit960 ], [ %.0546, %bb.lp ], [ %.0546, %bb.lr ], [ %.0546, %bb.bk ], [ %.0546, %helper_local_set_c_stream.exit888 ], [ %.0546, %bb.kx ], [ %.0546, %bb.ky ] ; 2 uses
  %.27 = phi i32 [ %.17.ph, %.thread1056 ], [ %.23.ph, %.thread1082 ], [ 4, %s_lock.exit935 ], [ 4, %bb.ge ], [ 4, %bb.bn ], [ %.9.ph, %.thread1023 ], [ 4, %.thread978 ], [ 4, %bb.ax ], [ %.6.ph, %.thread1004 ], [ %.7.ph, %.thread1009 ], [ %.8.ph, %.thread1016 ], [ %.18.ph, %.thread1061 ], [ 4, %s_lock.exit869 ], [ 4, %s_lock.exit909 ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %s_lock.exit965 ], [ 0, %bb.be ], [ 0, %bb.bi ], [ 0, %bb.aw ], [ 0, %bb.bu ], [ 0, %bb.by ], [ 0, %bb.cf ], [ 0, %bb.cg ], [ 0, %s_lock.exit849 ], [ 0, %bb.cr ], [ 0, %bb.db ], [ 0, %bb.dr ], [ 0, %bb.dz ], [ 0, %s_lock.exit864 ], [ 0, %bb.et ], [ 0, %helper_local_set_c_stream.exit880 ], [ 0, %bb.bp ], [ 0, %bb.bq ], [ 0, %bb.ga ], [ 0, %bb.gm ], [ 0, %bb.gy ], [ 0, %bb.fj ], [ 0, %bb.hj ], [ 0, %bb.hl ], [ 0, %bb.hn ], [ 0, %bb.hp ], [ 0, %bb.hv ], [ 0, %s_lock.exit920 ], [ 0, %bb.il ], [ 0, %bb.jg ], [ 0, %bb.jj ], [ 0, %bb.jm ], [ 0, %bb.jp ], [ 0, %bb.jw ], [ 0, %bb.jz ], [ 0, %bb.kg ], [ 0, %bb.ko ], [ 0, %bb.kt ], [ 0, %bb.gz ], [ 0, %bb.lb ], [ 0, %bb.ld ], [ 0, %bb.le ], [ 0, %bb.lf ], [ 0, %bb.lg ], [ 0, %bb.lh ], [ 0, %bb.li ], [ 0, %bb.lj ], [ 0, %bb.lk ], [ 0, %s_lock.exit960 ], [ 0, %bb.lp ], [ 0, %bb.lr ], [ 0, %bb.bk ], [ 0, %helper_local_set_c_stream.exit888 ], [ 0, %bb.kx ], [ 0, %bb.ky ]
  %i.air = icmp eq i32 %.27, 2
  br i1 %i.air, label %.thread1098, label %bb.f

.thread1098:                                      ; preds = %bb.ko, %bb.jg, %bb.et, %bb.hp, %bb.dz, %bb.jz, %bb.cf, %bb.by, %bb.bu, %bb.ga, %bb.jw, %bb.be, %bb.jp, %bb.gy, %bb.gm, %.thread987, %bb.je, %s_lock.exit940, %bb.jf, %bb.go, %bb.gn, %bb.gc, %bb.gb, %bb.bj, %bb.bq, %bb.kw, %helper_local_set_c_stream.exit888, %bb.fd, %bb.fe, %bb.fi, %bb.fk, %bb.fg, %bb.ek, %bb.el, %bb.em, %bb.bh, %bb.bg, %bb.bf, %s_lock.exit965, %bb.hb, %bb.lr, %bb.lk, %bb.lq, %bb.lj, %bb.li, %bb.lf, %bb.le, %bb.ld, %bb.jm, %bb.lc, %bb.jj, %bb.jk, %bb.jl, %bb.hn, %bb.jh, %bb.ji, %bb.hl, %bb.hm, %helper_local_set_c_stream.exit915, %bb.hk, %helper_local_set_c_stream.exit880, %bb.ha, %bb.hc, %bb.ea, %bb.eu, %bb.ev, %bb.ew, %bb.ch, %bb.cg, %bb.av, %bb.ap, %bb.ao, %bb.la, %bb.kz, %bb.bo, %bb.gf, %bb.kv, %.thread1086, %.thread1078, %.thread1074, %.thread1071, %.thread1052, %.thread1037, %.thread1000, %.thread996, %.thread992, %.thread1090, %.thread1050, %bb.ae, %bb.l, %.loopexit, %bb.lx, %bb.ac, %helper_local_init.exit
  %.5603 = phi i64 [ %.2600, %.thread1071 ], [ 0, %helper_local_init.exit ], [ %.2600, %bb.ac ], [ %.2600, %bb.lx ], [ %.2600, %.loopexit ], [ %.2600, %bb.l ], [ %.2600, %.thread1074 ], [ %.2600, %bb.ae ], [ %.2600, %.thread1078 ], [ %.2600, %.thread1086 ], [ %.2600, %bb.gf ], [ %.2600, %bb.bo ], [ %.2600, %bb.la ], [ %.2600, %bb.kv ], [ %.2600, %.thread992 ], [ %.2600, %.thread1090 ], [ %.2600, %.thread1050 ], [ %.2600, %.thread996 ], [ %.2600, %.thread1000 ], [ %.2600, %.thread1037 ], [ %.2600, %.thread1052 ], [ %.2600, %bb.kz ], [ %.2600, %bb.et ], [ %.2600, %bb.hp ], [ %.2600, %bb.dz ], [ %.2600, %bb.jz ], [ %.2600, %bb.cf ], [ %.2600, %bb.by ], [ %.2600, %bb.bu ], [ %.2600, %bb.ga ], [ %.2600, %bb.jw ], [ %.2600, %bb.be ], [ %.2600, %bb.jp ], [ %.2600, %bb.gy ], [ %.2600, %bb.gm ], [ %.2600, %bb.ao ], [ %.4602, %.thread987 ], [ %.2600, %bb.jf ], [ %.2600, %bb.go ], [ %.2600, %bb.gn ], [ %.2600, %bb.gc ], [ %.2600, %bb.gb ], [ %.2600, %bb.bj ], [ %.2600, %bb.bq ], [ %.2600, %bb.je ], [ %.2600, %bb.kw ], [ %.2600, %s_lock.exit940 ], [ %.2600, %helper_local_set_c_stream.exit888 ], [ %.2600, %bb.fd ], [ %.2600, %bb.fe ], [ %.2600, %bb.fi ], [ %.2600, %bb.fk ], [ %.2600, %bb.fg ], [ %.2600, %bb.ek ], [ %.2600, %bb.el ], [ %.2600, %bb.em ], [ %.2600, %bb.bh ], [ %.2600, %bb.bg ], [ %.2600, %bb.bf ], [ %.2600, %s_lock.exit965 ], [ %.2600, %bb.hb ], [ %.2600, %bb.lr ], [ %.2600, %bb.lk ], [ %.2600, %bb.lq ], [ %.2600, %bb.lj ], [ %.2600, %bb.li ], [ %.2600, %bb.lf ], [ %.2600, %bb.le ], [ %.2600, %bb.ld ], [ %.2600, %bb.jm ], [ %.2600, %bb.lc ], [ %.2600, %bb.jj ], [ %.2600, %bb.jk ], [ %.2600, %bb.jl ], [ %.2600, %bb.hn ], [ %.2600, %bb.jh ], [ %.2600, %bb.ji ], [ %.2600, %bb.hl ], [ %.2600, %bb.hm ], [ %.2600, %helper_local_set_c_stream.exit915 ], [ %.2600, %bb.hk ], [ %.2600, %helper_local_set_c_stream.exit880 ], [ %.2600, %bb.ha ], [ %.2600, %bb.hc ], [ %.2600, %bb.ea ], [ %.2600, %bb.eu ], [ %.2600, %bb.ev ], [ %.2600, %bb.ew ], [ %.2600, %bb.ch ], [ %.2600, %bb.cg ], [ %.2600, %bb.av ], [ %.2600, %bb.ap ], [ %.2600, %bb.ko ], [ %.2600, %bb.jg ]
  %.3570 = phi i64 [ %.0567, %.thread1071 ], [ 0, %helper_local_init.exit ], [ %.0567, %bb.ac ], [ %.0567, %bb.lx ], [ %.0567, %.loopexit ], [ %.0567, %bb.l ], [ %.0567, %.thread1074 ], [ %.0567, %bb.ae ], [ %.0567, %.thread1078 ], [ %.0567, %.thread1086 ], [ %.0567, %bb.gf ], [ %.0567, %bb.bo ], [ %.0567, %bb.la ], [ %.0567, %bb.kv ], [ %.0567, %.thread992 ], [ %.0567, %.thread1090 ], [ %.0567, %.thread1050 ], [ %.0567, %.thread996 ], [ %.0567, %.thread1000 ], [ %.0567, %.thread1037 ], [ %.0567, %.thread1052 ], [ %.0567, %bb.kz ], [ %.0567, %bb.et ], [ %.0567, %bb.hp ], [ %.0567, %bb.dz ], [ %.0567, %bb.jz ], [ %.0567, %bb.cf ], [ %.0567, %bb.by ], [ %.0567, %bb.bu ], [ %.0567, %bb.ga ], [ %.0567, %bb.jw ], [ %.0567, %bb.be ], [ %.0567, %bb.jp ], [ %.0567, %bb.gy ], [ %.0567, %bb.gm ], [ %.0567, %bb.ao ], [ %.2569, %.thread987 ], [ %.0567, %bb.jf ], [ %.0567, %bb.go ], [ %.0567, %bb.gn ], [ %.0567, %bb.gc ], [ %.0567, %bb.gb ], [ %.0567, %bb.bj ], [ %.0567, %bb.bq ], [ %.0567, %bb.je ], [ %.0567, %bb.kw ], [ %.0567, %s_lock.exit940 ], [ %.0567, %helper_local_set_c_stream.exit888 ], [ %.0567, %bb.fd ], [ %.0567, %bb.fe ], [ %.0567, %bb.fi ], [ %.0567, %bb.fk ], [ %.0567, %bb.fg ], [ %.0567, %bb.ek ], [ %.0567, %bb.el ], [ %.0567, %bb.em ], [ %.0567, %bb.bh ], [ %.0567, %bb.bg ], [ %.0567, %bb.bf ], [ %.0567, %s_lock.exit965 ], [ %.0567, %bb.hb ], [ %.0567, %bb.lr ], [ %.0567, %bb.lk ], [ %.0567, %bb.lq ], [ %.0567, %bb.lj ], [ %.0567, %bb.li ], [ %.0567, %bb.lf ], [ %.0567, %bb.le ], [ %.0567, %bb.ld ], [ %.0567, %bb.jm ], [ %.0567, %bb.lc ], [ %.0567, %bb.jj ], [ %.0567, %bb.jk ], [ %.0567, %bb.jl ], [ %.0567, %bb.hn ], [ %.0567, %bb.jh ], [ %.0567, %bb.ji ], [ %.0567, %bb.hl ], [ %.0567, %bb.hm ], [ %.0567, %helper_local_set_c_stream.exit915 ], [ %.0567, %bb.hk ], [ %.0567, %helper_local_set_c_stream.exit880 ], [ %.0567, %bb.ha ], [ %.0567, %bb.hc ], [ %.0567, %bb.ea ], [ %.0567, %bb.eu ], [ %.0567, %bb.ev ], [ %.0567, %bb.ew ], [ %.0567, %bb.ch ], [ %.0567, %bb.cg ], [ %.0567, %bb.av ], [ %.0567, %bb.ap ], [ %.0567, %bb.ko ], [ %.0567, %bb.jg ] ; 2 uses
  %.9555 = phi ptr [ %.0546, %.thread1071 ], [ null, %helper_local_init.exit ], [ %.0546, %bb.ac ], [ %.0546, %bb.lx ], [ %.0546, %.loopexit ], [ %.0546, %bb.l ], [ %.0546, %.thread1074 ], [ %.0546, %bb.ae ], [ %.0546, %.thread1078 ], [ %.0546, %.thread1086 ], [ %.0546, %bb.gf ], [ %.0546, %bb.bo ], [ %.0546, %bb.la ], [ %.0546, %bb.kv ], [ %.0546, %.thread992 ], [ %.0546, %.thread1090 ], [ %.0546, %.thread1050 ], [ %.0546, %.thread996 ], [ %.0546, %.thread1000 ], [ %.0546, %.thread1037 ], [ %.0546, %.thread1052 ], [ %.0546, %bb.kz ], [ %.0546, %bb.et ], [ %.0546, %bb.hp ], [ %.0546, %bb.dz ], [ %.0546, %bb.jz ], [ %.0546, %bb.cf ], [ %.0546, %bb.by ], [ %.0546, %bb.bu ], [ %.0546, %bb.ga ], [ %.0546, %bb.jw ], [ %.0546, %bb.be ], [ %.0546, %bb.jp ], [ %.0546, %bb.gy ], [ %.0546, %bb.gm ], [ %.0546, %bb.ao ], [ %.8554, %.thread987 ], [ %.0546, %bb.jf ], [ %.0546, %bb.go ], [ %.0546, %bb.gn ], [ %.0546, %bb.gc ], [ %.0546, %bb.gb ], [ %.0546, %bb.bj ], [ %.0546, %bb.bq ], [ %.0546, %bb.je ], [ %.0546, %bb.kw ], [ %.0546, %s_lock.exit940 ], [ %.0546, %helper_local_set_c_stream.exit888 ], [ %.0546, %bb.fd ], [ %.0546, %bb.fe ], [ %.0546, %bb.fi ], [ %.0546, %bb.fk ], [ %.0546, %bb.fg ], [ %.0546, %bb.ek ], [ %.0546, %bb.el ], [ %.0546, %bb.em ], [ %i.gh, %bb.bh ], [ %i.gh, %bb.bg ], [ %.0546, %bb.bf ], [ %.0546, %s_lock.exit965 ], [ %.0546, %bb.hb ], [ %.0546, %bb.lr ], [ %.0546, %bb.lk ], [ %.0546, %bb.lq ], [ %.0546, %bb.lj ], [ %.0546, %bb.li ], [ %.0546, %bb.lf ], [ %.0546, %bb.le ], [ %.0546, %bb.ld ], [ %.0546, %bb.jm ], [ %.0546, %bb.lc ], [ %.0546, %bb.jj ], [ %.0546, %bb.jk ], [ %.0546, %bb.jl ], [ %.0546, %bb.hn ], [ %.0546, %bb.jh ], [ %.0546, %bb.ji ], [ %.0546, %bb.hl ], [ %.0546, %bb.hm ], [ %.0546, %helper_local_set_c_stream.exit915 ], [ %.0546, %bb.hk ], [ %.0546, %helper_local_set_c_stream.exit880 ], [ %.0546, %bb.ha ], [ %.0546, %bb.hc ], [ %.0546, %bb.ea ], [ %.0546, %bb.eu ], [ %.0546, %bb.ev ], [ %.0546, %bb.ew ], [ %.0546, %bb.ch ], [ %.0546, %bb.cg ], [ %.0546, %bb.av ], [ %.0546, %bb.ap ], [ %.0546, %bb.ko ], [ %.0546, %bb.jg ]
  %.not780 = phi i1 [ true, %.thread1071 ], [ true, %helper_local_init.exit ], [ true, %bb.ac ], [ true, %bb.lx ], [ false, %.loopexit ], [ true, %bb.l ], [ true, %.thread1074 ], [ true, %bb.ae ], [ true, %.thread1078 ], [ true, %.thread1086 ], [ true, %bb.gf ], [ true, %bb.bo ], [ true, %bb.la ], [ true, %bb.kv ], [ true, %.thread992 ], [ true, %.thread1090 ], [ true, %.thread1050 ], [ true, %.thread996 ], [ true, %.thread1000 ], [ true, %.thread1037 ], [ true, %.thread1052 ], [ true, %bb.kz ], [ true, %bb.ao ], [ true, %bb.ap ], [ true, %bb.av ], [ true, %bb.cg ], [ true, %bb.ch ], [ true, %bb.ew ], [ true, %bb.ev ], [ true, %bb.eu ], [ true, %bb.ea ], [ true, %bb.hc ], [ true, %bb.ha ], [ true, %helper_local_set_c_stream.exit880 ], [ true, %bb.hk ], [ true, %helper_local_set_c_stream.exit915 ], [ true, %bb.hm ], [ true, %bb.hl ], [ true, %bb.ji ], [ true, %bb.jh ], [ true, %bb.hn ], [ true, %bb.jl ], [ true, %bb.jk ], [ true, %bb.jj ], [ true, %bb.lc ], [ true, %bb.jm ], [ true, %bb.ld ], [ true, %bb.le ], [ true, %bb.lf ], [ true, %bb.li ], [ true, %bb.lj ], [ true, %bb.lq ], [ true, %bb.lk ], [ true, %bb.lr ], [ true, %bb.hb ], [ true, %s_lock.exit965 ], [ true, %bb.bf ], [ true, %bb.bg ], [ true, %bb.bh ], [ true, %bb.em ], [ true, %bb.el ], [ true, %bb.ek ], [ true, %bb.fg ], [ true, %bb.fk ], [ true, %bb.fi ], [ true, %bb.fe ], [ true, %bb.fd ], [ true, %helper_local_set_c_stream.exit888 ], [ true, %bb.kw ], [ true, %bb.bq ], [ true, %bb.bj ], [ true, %bb.gb ], [ true, %bb.gc ], [ true, %bb.gn ], [ true, %bb.go ], [ true, %bb.jf ], [ true, %s_lock.exit940 ], [ true, %bb.je ], [ true, %.thread987 ], [ true, %bb.gm ], [ true, %bb.gy ], [ true, %bb.jp ], [ true, %bb.be ], [ true, %bb.jw ], [ true, %bb.ga ], [ true, %bb.bu ], [ true, %bb.by ], [ true, %bb.cf ], [ true, %bb.jz ], [ true, %bb.dz ], [ true, %bb.hp ], [ true, %bb.et ], [ true, %bb.jg ], [ true, %bb.ko ]
  %.2545 = phi i32 [ 0, %.thread1071 ], [ 0, %helper_local_init.exit ], [ 0, %bb.ac ], [ 0, %bb.lx ], [ 1, %.loopexit ], [ 0, %bb.l ], [ 0, %.thread1074 ], [ 0, %bb.ae ], [ 0, %.thread1078 ], [ 0, %.thread1086 ], [ 0, %bb.gf ], [ 0, %bb.bo ], [ 0, %bb.la ], [ 0, %bb.kv ], [ 0, %.thread992 ], [ 0, %.thread1090 ], [ 0, %.thread1050 ], [ 0, %.thread996 ], [ 0, %.thread1000 ], [ 0, %.thread1037 ], [ 0, %.thread1052 ], [ 0, %bb.kz ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.av ], [ 0, %bb.cg ], [ 0, %bb.ch ], [ 0, %bb.ew ], [ 0, %bb.ev ], [ 0, %bb.eu ], [ 0, %bb.ea ], [ 0, %bb.hc ], [ 0, %bb.ha ], [ 0, %helper_local_set_c_stream.exit880 ], [ 0, %bb.hk ], [ 0, %helper_local_set_c_stream.exit915 ], [ 0, %bb.hm ], [ 0, %bb.hl ], [ 0, %bb.ji ], [ 0, %bb.jh ], [ 0, %bb.hn ], [ 0, %bb.jl ], [ 0, %bb.jk ], [ 0, %bb.jj ], [ 0, %bb.lc ], [ 0, %bb.jm ], [ 0, %bb.ld ], [ 0, %bb.le ], [ 0, %bb.lf ], [ 0, %bb.li ], [ 0, %bb.lj ], [ 0, %bb.lq ], [ 0, %bb.lk ], [ 0, %bb.lr ], [ 0, %bb.hb ], [ 0, %s_lock.exit965 ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ 0, %bb.bh ], [ 0, %bb.em ], [ 0, %bb.el ], [ 0, %bb.ek ], [ 0, %bb.fg ], [ 0, %bb.fk ], [ 0, %bb.fi ], [ 0, %bb.fe ], [ 0, %bb.fd ], [ 0, %helper_local_set_c_stream.exit888 ], [ 0, %bb.kw ], [ 0, %bb.bq ], [ 0, %bb.bj ], [ 0, %bb.gb ], [ 0, %bb.gc ], [ 0, %bb.gn ], [ 0, %bb.go ], [ 0, %bb.jf ], [ 0, %s_lock.exit940 ], [ 0, %bb.je ], [ 0, %.thread987 ], [ 0, %bb.gm ], [ 0, %bb.gy ], [ 0, %bb.jp ], [ 0, %bb.be ], [ 0, %bb.jw ], [ 0, %bb.ga ], [ 0, %bb.bu ], [ 0, %bb.by ], [ 0, %bb.cf ], [ 0, %bb.jz ], [ 0, %bb.dz ], [ 0, %bb.hp ], [ 0, %bb.et ], [ 0, %bb.jg ], [ 0, %bb.ko ]
  %.val = load i32, ptr %i.w, align 8, !tbaa !70  ; 2 uses
  %i.ais = icmp slt i32 %.val, 0
  br i1 %i.ais, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %.thread1098
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %s_checked_out_p.exit.i966

bb.lz:                                            ; preds = %.thread1098
  %i.aiu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !58
  %i.aiw = zext nneg i32 %.val to i64
  %i.aix = getelementptr inbounds nuw [64 x i8], ptr %i.aiv, i64 %i.aiw
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 56
  br label %s_checked_out_p.exit.i966

s_checked_out_p.exit.i966:                        ; preds = %bb.lz, %bb.ly
  %i.aiz = phi ptr [ %i.ait, %bb.ly ], [ %i.aiy, %bb.lz ] ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !55 ; 2 uses
  %i.ajc = icmp eq ptr %i.ajb, null
  br i1 %i.ajc, label %s_unlock.exit968, label %bb.ma

bb.ma:                                            ; preds = %s_checked_out_p.exit.i966
  %i.ajd = load i32, ptr %i.aiz, align 4, !tbaa !72
  %.not.i967 = icmp eq i32 %i.ajd, 0
  br i1 %.not.i967, label %s_unlock.exit968, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  store i32 0, ptr %i.aiz, align 4, !tbaa !72
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.aje, align 8, !tbaa !48
  call void @ossl_crypto_mutex_unlock(ptr noundef nonnull %i.ajb) #14
  br label %s_unlock.exit968

s_unlock.exit968:                                 ; preds = %s_checked_out_p.exit.i966, %bb.ma, %bb.mb
  br i1 %.not780, label %bb.mc, label %.thread1108

bb.mc:                                            ; preds = %s_unlock.exit968
  %i.ajf = add i64 %.5603, 1
  call void (ptr, i32, ptr, ...) @test_error(ptr noundef nonnull @.str.14, i32 noundef 1968, ptr noundef nonnull @.str.151, ptr noundef %2, i64 noundef %i.ajf, i32 noundef %3) #14
  %.not1231 = icmp eq i64 %.3570, 0
  br i1 %.not1231, label %._crit_edge, label %.lr.ph1228

.lr.ph1228:                                       ; preds = %bb.mc, %.lr.ph1228
  %.01227 = phi i64 [ %i.ajm, %.lr.ph1228 ], [ 0, %bb.mc ] ; 4 uses
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01227
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !18
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01227
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !18
  %i.ajk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01227
  %i.ajl = load i64, ptr %i.ajk, align 8, !tbaa !18
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 1974, ptr noundef nonnull @.str.152, i64 noundef %i.ajh, i64 noundef %i.ajj, i64 noundef %i.ajl) #14
  %i.ajm = add nuw i64 %.01227, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ajm, %.3570
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph1228, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph1228, %bb.mc
  %i.ajn = load ptr, ptr @stderr, align 8, !tbaa !92
  call void @ERR_print_errors_fp(ptr noundef %i.ajn) #14
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !52 ; 2 uses
  %.not781 = icmp eq ptr %i.ajp, null
  br i1 %.not781, label %bb.mg, label %bb.md

bb.md:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %15, i8 0, i64 40, i1 false)
  %i.ajq = call i32 @SSL_get_conn_close_info(ptr noundef nonnull %i.ajp, ptr noundef nonnull %15, i64 noundef 40) #14
  %.not782 = icmp eq i32 %i.ajq, 0
  br i1 %.not782, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.ajr = load i64, ptr %15, align 8, !tbaa !134
  %i.ajs = call ptr @ossl_quic_err_to_string(i64 noundef %i.ajr) #14 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.aju = load i64, ptr %i.ajt, align 8, !tbaa !142
  %i.ajv = call ptr @ossl_quic_frame_type_to_string(i64 noundef %i.aju) #14 ; 2 uses
  %i.ajw = icmp eq ptr %i.ajs, null
  %spec.store.select = select i1 %i.ajw, ptr @.str.153, ptr %i.ajs
  %i.ajx = icmp eq ptr %i.ajv, null
  %spec.store.select36 = select i1 %i.ajx, ptr @.str.153, ptr %i.ajv
  %i.ajy = load i64, ptr %15, align 8, !tbaa !134
  %i.ajz = load i64, ptr %i.ajt, align 8, !tbaa !142
  %i.aka = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.akb = load i32, ptr %i.aka, align 8, !tbaa !133 ; 2 uses
  %i.akc = and i32 %i.akb, 1
  %.not783 = icmp eq i32 %i.akc, 0
  %i.akd = select i1 %.not783, ptr @.str.156, ptr @.str.155
  %i.ake = and i32 %i.akb, 2
  %.not784 = icmp eq i32 %i.ake, 0
  %i.akf = select i1 %.not784, ptr @.str.158, ptr @.str.157
  %i.akg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !135 ; 2 uses
  %.not785 = icmp eq ptr %i.akh, null
  %i.aki = select i1 %.not785, ptr @.str.159, ptr %i.akh
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 2002, ptr noundef nonnull @.str.154, i64 noundef %i.ajy, ptr noundef nonnull %spec.store.select, i64 noundef %i.ajz, ptr noundef nonnull %spec.store.select36, ptr noundef nonnull %i.akd, ptr noundef nonnull %i.akf, ptr noundef nonnull %i.aki) #14
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %._crit_edge
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !48 ; 2 uses
  %.not786 = icmp eq ptr %i.akk, null
  br i1 %.not786, label %.thread1108, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.akl = call ptr @ossl_quic_tserver_get_terminate_cause(ptr noundef nonnull %i.akk) #14 ; 6 uses
  %.not787 = icmp eq ptr %i.akl, null
  br i1 %.not787, label %.thread1108, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.akm = load i64, ptr %i.akl, align 8, !tbaa !136
  %i.akn = call ptr @ossl_quic_err_to_string(i64 noundef %i.akm) #14 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akl, i64 8 ; 2 uses
  %i.akp = load i64, ptr %i.ako, align 8, !tbaa !143
  %i.akq = call ptr @ossl_quic_frame_type_to_string(i64 noundef %i.akp) #14 ; 2 uses
  %i.akr = icmp eq ptr %i.akn, null
  %spec.store.select35 = select i1 %i.akr, ptr @.str.153, ptr %i.akn
  %i.aks = icmp eq ptr %i.akq, null
  %spec.store.select37 = select i1 %i.aks, ptr @.str.153, ptr %i.akq
  %i.akt = load i64, ptr %i.akl, align 8, !tbaa !136
  %i.aku = load i64, ptr %i.ako, align 8, !tbaa !143
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akl, i64 32
  %i.akw = load i8, ptr %i.akv, align 8           ; 2 uses
  %i.akx = and i8 %i.akw, 2
  %.not788 = icmp eq i8 %i.akx, 0
  %i.aky = select i1 %.not788, ptr @.str.155, ptr @.str.156
  %i.akz = and i8 %i.akw, 1
  %.not789 = icmp eq i8 %i.akz, 0
  %i.ala = select i1 %.not789, ptr @.str.157, ptr @.str.158
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !93 ; 2 uses
  %.not790 = icmp eq ptr %i.alc, null
  %spec.select811 = select i1 %.not790, ptr @.str.159, ptr %i.alc
  call void (ptr, i32, ptr, ...) @test_info(ptr noundef nonnull @.str.14, i32 noundef 2026, ptr noundef nonnull @.str.160, i64 noundef %i.akt, ptr noundef nonnull %spec.store.select35, i64 noundef %i.aku, ptr noundef nonnull %spec.store.select37, ptr noundef nonnull %i.aky, ptr noundef nonnull %i.ala, ptr noundef nonnull %spec.select811) #14
  br label %.thread1108

.thread1108:                                      ; preds = %bb.mg, %bb.mh, %bb.mi, %s_unlock.exit968
  call void @CRYPTO_free(ptr noundef %.9555, ptr noundef nonnull @.str.14, i32 noundef 2030) #14
  %i.ald = load ptr, ptr %10, align 8, !tbaa !68
  %i.ale = icmp ne ptr %i.ald, null
  %i.alf = load i32, ptr %i.w, align 8
  %i.alg = icmp sgt i32 %i.alf, -1
  %or.cond1460 = select i1 %i.ale, i1 %i.alg, i1 false
  br i1 %or.cond1460, label %bb.mj, label %helper_local_cleanup.exit

bb.mj:                                            ; preds = %.thread1108
  %i.alh = load ptr, ptr %i.v, align 8, !tbaa !94 ; 2 uses
  %i.ali = icmp eq ptr %i.alh, null
  br i1 %i.ali, label %helper_local_cleanup.exit, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  call void @OPENSSL_LH_doall(ptr noundef nonnull %i.alh, ptr noundef nonnull @cleanup_stream) #14
  %i.alj = load ptr, ptr %i.v, align 8, !tbaa !94
  call void @OPENSSL_LH_free(ptr noundef %i.alj) #14
  br label %helper_local_cleanup.exit

helper_local_cleanup.exit:                        ; preds = %bb.mj, %bb.mk, %.thread1108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  ret i32 %.2545
}

; Function Attrs: nounwind uwtable
define internal fastcc void @helper_cleanup(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.not20.i = icmp eq i64 %i.f, 0
  br i1 %.not20.i, label %join_threads.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.019.i = phi i64 [ %i.n, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.019.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = call i32 @ossl_crypto_thread_native_join(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.l = call i32 @ossl_crypto_thread_native_clean(ptr noundef %i.k) #14 ; 0 uses
  store ptr null, ptr %i.h, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  call void @ossl_crypto_mutex_free(ptr noundef nonnull %i.m) #14
end_hunk_0
