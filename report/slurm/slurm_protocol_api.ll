Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurm_protocol_api?download=true
inline.NumInlined: 38
inline.NumDeleted: 9
begin_hunk_0_@slurm_unpack_received_msg:bb.a
  br i1 %.not61, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  call void @auth_g_destroy(ptr noundef %.0) #17
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.0, ptr %i.cv, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.u, %bb.c, %bb.ah, %bb.ag, %bb.ab
  %.1 = phi i32 [ %i.f, %bb.c ], [ 5003, %bb.ag ], [ 0, %bb.ah ], [ 1007, %bb.ab ], [ 5003, %bb.u ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @destroy_forward(ptr noundef nonnull %i.cw) #17
  %i.cx = tail call ptr @__errno_location() #19
  store i32 %.1, ptr %i.cx, align 4
  %.not62 = icmp eq i32 %.1, 0
  br i1 %.not62, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.cy, align 8
  %i.cz = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not63 = icmp eq ptr %i.cz, null
  br i1 %.not63, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.da = call ptr @fd_resolve_peer(i32 noundef %1) #17 ; 2 uses
  store ptr %i.da, ptr %i.a, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.db = phi ptr [ %i.da, %bb.ak ], [ %i.cz, %bb.aj ]
  %i.dc = call ptr @slurm_strerror(i32 noundef %.1) #17
  %i.dd = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.slurm_unpack_received_msg, ptr noundef %i.db, ptr noundef %i.dc) #17 ; 0 uses
  %i.de = call i32 @usleep(i32 noundef 10000) #17 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  call void @slurm_xfree(ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.1
}

declare ptr @fd_resolve_peer(i32 noundef) local_unnamed_addr #3

declare i32 @unpack_header(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rpc_num2string(i16 noundef zeroext) local_unnamed_addr #3

declare void @list_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @auth_g_unpack(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #3

declare i32 @auth_index(ptr noundef) local_unnamed_addr #3

declare i32 @auth_g_verify(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_global_auth_key() unnamed_addr #1 {
bb.a:
  %.b = load i1, ptr @_global_auth_key.loaded_storage_pass, align 1
  br i1 %.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @slurmdbd_conf, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 136), align 8 ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) @_global_auth_key.storage_pass, ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 512) #17
  %i.d = icmp ugt i64 %i.c, 511
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.99) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr @_global_auth_key.storage_pass, ptr @_global_auth_key.storage_pass_ptr, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.e = tail call ptr @slurm_conf_lock() #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not5 = icmp eq ptr %i.g, null
  br i1 %.not5, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) @_global_auth_key.storage_pass, ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 512) #17
  %i.i = icmp ugt i64 %i.h, 511
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.100) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr @_global_auth_key.storage_pass, ptr @_global_auth_key.storage_pass_ptr, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  tail call void @slurm_conf_unlock() #17
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.f, %bb.k
  store i1 true, ptr @_global_auth_key.loaded_storage_pass, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.0 = load ptr, ptr @_global_auth_key.storage_pass_ptr, align 8
  ret ptr %.0
}

declare void @auth_g_destroy(ptr noundef) local_unnamed_addr #3

declare void @auth_g_get_ids(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_check_hash(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %4 = alloca %struct.slurm_hash_t, align 1       ; 8 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, 64
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @_check_hash.config_update, align 8
  %i.h = load i64, ptr @slurm_conf, align 8
  %.not20 = icmp eq i64 %i.g, %i.h
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 272), align 8
  %i.j = tail call ptr @xstrcasestr(ptr noundef %i.i, ptr noundef nonnull @.str.101) #17
  %i.k = icmp ne ptr %i.j, null
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr @_check_hash.block_null_hash, align 1
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 272), align 8
  %i.n = tail call ptr @xstrcasestr(ptr noundef %i.m, ptr noundef nonnull @.str.102) #17
  %i.o = icmp ne ptr %i.n, null
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr @_check_hash.block_zero_hash, align 1
  %i.q = load i64, ptr @slurm_conf, align 8
  store i64 %i.q, ptr @_check_hash.config_update, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.s = load i32, ptr %i.r, align 8
  %i.t = tail call zeroext i1 @slurm_get_plugin_hash_enable(i32 noundef %i.s) #17
  br i1 %i.t, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 @auth_g_get_data(ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17 ; 3 uses
  %i.v = load i32, ptr %i.b, align 4              ; 2 uses
  %.not21 = icmp eq i32 %i.v, 0
  br i1 %.not21, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.x = and i64 %i.w, 16
  %.not22 = icmp eq i64 %i.x, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = zext i32 %i.v to i64
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef %i.y, i64 noundef %i.z, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__._check_hash) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 226
  %i.ae = load i16, ptr %i.ad, align 2
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.ae) ; 2 uses
  %i.af = load i8, ptr @_check_hash.block_zero_hash, align 1, !range !12, !noundef !13
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load i32, ptr %i.b, align 4
  %i.ai = icmp ne i32 %i.ah, 3
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ai
  br i1 %or.cond, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.extract.trunc = zext i16 %rev.i to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.am = ashr exact i32 %sext, 24
  %i.an = icmp eq i32 %i.am, %i.al
  br i1 %i.an, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %5 = ashr i16 %rev.i, 8
  %6 = sext i8 %i.ap to i16
  %i.aq = icmp eq i16 %5, %6
  br i1 %i.aq, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 202
  store i8 1, ptr %i.ar, align 2
  br label %bb.t

bb.m:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i32, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 226
  %i.aw = load i16, ptr %i.av, align 2
  %rev.i27 = call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  store i16 %rev.i27, ptr %i.c, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  store i8 %i.ab, ptr %4, align 1
  %i.bd = call i32 @hash_g_compute(ptr noundef %i.bc, i32 noundef %i.at, ptr noundef nonnull %i.c, i32 noundef 2, ptr noundef nonnull %4) #17 ; 2 uses
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = load i32, ptr %i.b, align 4
  %.not23 = icmp eq i32 %i.be, %i.bf
  br i1 %.not23, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %i.a, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.bj = sext i32 %i.bd to i64
  %bcmp = call i32 @bcmp(ptr nonnull %i.bh, ptr nonnull %i.bi, i64 %i.bj)
  %.not24 = icmp eq i32 %bcmp, 0
  br i1 %.not24, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = load i8, ptr %4, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 202
  store i8 %i.bk, ptr %i.bl, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.1 = phi i32 [ %i.u, %bb.o ], [ -1, %bb.n ], [ -1, %bb.m ]
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bn = and i64 %i.bm, 16
  %.not25 = icmp eq i64 %i.bn, 0
  br i1 %.not25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %4, i64 noundef 33, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__._check_hash) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.t

bb.s:                                             ; preds = %bb.e
  %i.bo = load i8, ptr @_check_hash.block_null_hash, align 1, !range !12, !noundef !13
  %i.bp = trunc nuw i8 %i.bo to i1
  %spec.select = select i1 %i.bp, i32 -1, i32 %i.u
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.l, %bb.i, %bb.k, %bb.j, %bb.r
  %.2 = phi i32 [ %spec.select, %bb.s ], [ %.1, %bb.r ], [ -1, %bb.j ], [ -1, %bb.i ], [ %i.u, %bb.l ], [ -1, %bb.k ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %bb.a, %bb.t
  %.018 = phi i32 [ 0, %bb.a ], [ %.2, %bb.t ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.018
}

declare i32 @unpack_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @destroy_forward(ptr noundef) local_unnamed_addr #3

declare i32 @usleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_receive_msg(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.persist_msg_t, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load i16, ptr %i.c, align 8
  %i.e = trunc i16 %i.d to i8
  %i.f = lshr i8 %i.e, 2                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.i = tail call i32 @slurm_msg_t_init_address(ptr noundef nonnull %1) #17 ; 2 uses
  %.not65 = icmp eq i32 %i.i, 0
  br i1 %.not65, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.k = and i64 %i.j, 1024
  %.not66 = icmp eq i64 %i.k, 0
  br i1 %.not66, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @get_log_level() #17
  %i.m = icmp sgt i32 %i.l, 3
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.r = load i16, ptr %i.q, align 8
  %i.s = zext i16 %i.r to i32
  %i.t = tail call ptr @slurm_strerror(i32 noundef %i.i) #17
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.slurm_receive_msg, ptr noundef %i.p, i32 noundef %i.s, ptr noundef %i.t) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %i.u = load ptr, ptr %i.g, align 8
  %i.v = tail call ptr @slurm_persist_recv_msg(ptr noundef %i.u) #17 ; 4 uses
  %.not67 = icmp eq ptr %i.v, null
  br i1 %.not67, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.slurm_receive_msg) #17 ; 0 uses
  %i.x = load ptr, ptr %i.g, align 8
  tail call void @slurm_persist_conn_close(ptr noundef %i.x) #17
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.y = load ptr, ptr %i.g, align 8
  %i.z = call i32 @slurm_persist_msg_unpack(ptr noundef %i.y, ptr noundef nonnull %3, ptr noundef nonnull %i.v) #17
  %i.aa = trunc i8 %i.f to i1
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.v, ptr %i.ab, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @free_buf(ptr noundef nonnull %i.v) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not68 = icmp eq i32 %i.z, 0
  br i1 %.not68, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.slurm_receive_msg) #17 ; 0 uses
  %i.ad = load ptr, ptr %i.g, align 8
  call void @slurm_persist_conn_close(ptr noundef %i.ad) #17
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load i16, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 226
  store i16 %i.af, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.ai, ptr %i.aj, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.051 = phi i32 [ -1, %bb.l ], [ 0, %bb.m ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.am

bb.o:                                             ; preds = %bb.a
  %i.ak = tail call i32 @conn_g_get_fd(ptr noundef %0) #17 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %0, ptr %i.al, align 8
  %i.am = tail call i32 @slurm_msg_t_init_address(ptr noundef nonnull %1) #17 ; 2 uses
  %.not57 = icmp eq i32 %i.am, 0
  br i1 %.not57, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ao = and i64 %i.an, 1024
  %.not58 = icmp eq i64 %i.ao, 0
  br i1 %.not58, label %bb.s, label %bb.q
end_hunk_0
