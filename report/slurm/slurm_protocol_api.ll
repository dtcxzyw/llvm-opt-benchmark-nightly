Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurm_protocol_api?download=true
inline.NumInlined: 38
inline.NumDeleted: 9
begin_hunk_0_@slurm_unpack_msg_and_forward:bb.a
  call void @destroy_forward(ptr noundef nonnull %i.dr) #17
  %i.ds = tail call ptr @__errno_location() #19
  store i32 %.1, ptr %i.ds, align 4
  %.not90 = icmp eq i32 %.1, 0
  br i1 %.not90, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not91 = icmp eq ptr %i.dt, null
  br i1 %.not91, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.du = call ptr @fd_resolve_peer(i32 noundef %2) #17 ; 2 uses
  store ptr %i.du, ptr %i.a, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dv = phi ptr [ %i.du, %bb.as ], [ %i.dt, %bb.ar ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 226
  store i16 9001, ptr %i.dw, align 2
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.dy, align 8
  %i.dz = call ptr @slurm_strerror(i32 noundef %.1) #17
  %i.ea = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.slurm_unpack_msg_and_forward, ptr noundef %i.dv, ptr noundef %i.dz) #17 ; 0 uses
  %i.eb = call i32 @usleep(i32 noundef 10000) #17 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  call void @slurm_xfree(ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %.1
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @forward_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_buffers_pack_msg(ptr noundef %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %3 = alloca %struct.slurm_protocol_header, align 8 ; 7 uses
  %4 = alloca %struct.slurm_hash_t, align 1       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.b = tail call i64 @time(ptr noundef null) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %4, i8 0, i64 33, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.d = load i8, ptr %i.c, align 4, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.slurm_buffers_pack_msg) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @init_buf(i32 noundef 16384) #17 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = tail call i32 @pack_msg(ptr noundef nonnull %0, ptr noundef %i.f) #17 ; 0 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.j = and i64 %i.i, 16
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  tail call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef %i.m, i64 noundef %i.p, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.slurm_buffers_pack_msg) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.r = load i16, ptr %i.q, align 8
  %i.s = and i16 %i.r, 64
  %.not74 = icmp eq i16 %i.s, 0
  br i1 %.not74, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = tail call zeroext i1 @slurm_get_plugin_hash_enable(i32 noundef %i.v) #17
  br i1 %i.w, label %bb.g, label %_compute_hash.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.y) ; 2 uses
  store i16 %rev.i.i, ptr %i.a, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 202
  %i.aa = load i8, ptr %i.z, align 2              ; 3 uses
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %thread-pre-split.i.thread, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.g
  store i8 %i.aa, ptr %4, align 1
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %thread-pre-split.i.thread

bb.h:                                             ; preds = %thread-pre-split.i
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i16 %rev.i.i, ptr %i.ac, align 1
  br label %_compute_hash.exit

thread-pre-split.i.thread:                        ; preds = %bb.g, %thread-pre-split.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = call i32 @hash_g_compute(ptr noundef %i.ae, i32 noundef %i.ag, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull %4) #17
  br label %_compute_hash.exit

_compute_hash.exit:                               ; preds = %bb.h, %thread-pre-split.i.thread
  %.015.i = phi i32 [ 2, %bb.h ], [ %i.ah, %thread-pre-split.i.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ai = icmp sgt i32 %.015.i, -1
  %.1.i = zext i1 %i.ai to i32
  %spec.select.i = add nuw nsw i32 %.015.i, %.1.i ; 2 uses
  %i.aj = icmp slt i32 %spec.select.i, 0
  br i1 %i.aj, label %bb.i, label %_compute_hash.exit.thread

bb.i:                                             ; preds = %_compute_hash.exit
  %i.ak = load i16, ptr %i.x, align 2
  %i.al = call ptr @rpc_num2string(i16 noundef zeroext %i.ak) #17
  %i.am = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.slurm_buffers_pack_msg, ptr noundef %i.al) #17 ; 0 uses
  %i.an = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not77 = icmp eq ptr %i.an, null
  br i1 %.not77, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free_buf(ptr noundef nonnull %i.an) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.g, align 8
  %i.ao = tail call ptr @__errno_location() #19
  store i32 1000, ptr %i.ao, align 4
  br label %bb.ao

_compute_hash.exit.thread:                        ; preds = %bb.f, %_compute_hash.exit
  %.117.i89 = phi i32 [ %spec.select.i, %_compute_hash.exit ], [ 0, %bb.f ] ; 2 uses
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aq = and i64 %i.ap, 16
  %.not75 = icmp eq i64 %i.aq, 0
  br i1 %.not75, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_compute_hash.exit.thread
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %4, i64 noundef 33, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.slurm_buffers_pack_msg) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_compute_hash.exit.thread
  %i.ar = load i16, ptr %i.q, align 8
  %i.as = and i16 %i.ar, 1
  %.not76 = icmp eq i16 %i.as, 0
  %i.at = load i32, ptr %i.u, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  br i1 %.not76, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = call fastcc ptr @_global_auth_key()
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 136), align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.n
  %.sink = phi ptr [ %i.av, %bb.n ], [ %i.aw, %bb.o ]
  %i.ax = load i32, ptr %i.au, align 8
  %i.ay = call ptr @auth_g_create(i32 noundef %i.at, ptr noundef %.sink, i32 noundef %i.ax, ptr noundef nonnull %4, i32 noundef %.117.i89) #17
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.e
  %.067 = phi ptr [ null, %bb.e ], [ %i.ay, %.sink.split ] ; 2 uses
  %.065 = phi i32 [ 0, %bb.e ], [ %.117.i89, %.sink.split ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 274 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2
  %.not78 = icmp eq i16 %i.ba, -2
  br i1 %.not78, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(42) %i.bb, i8 0, i64 42, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.3.0..sroa_idx, i8 0, i64 20, i1 false)
  store i16 -2, ptr %i.az, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr null, ptr %i.bc, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 4
  %.not79 = icmp eq i16 %i.be, 0
  br i1 %.not79, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bf = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1584), align 8
  store i16 %i.bf, ptr %i.bd, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %2, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @forward_wait(ptr noundef nonnull %0) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bg = load i16, ptr %i.q, align 8
  call void @init_header(ptr noundef nonnull %3, ptr noundef nonnull %0, i16 noundef zeroext %i.bg) #17
  %i.bh = load i16, ptr %i.q, align 8
  %i.bi = and i16 %i.bh, 64
  %.not80 = icmp eq i16 %i.bi, 0
  br i1 %.not80, label %bb.w, label %bb.am

bb.w:                                             ; preds = %bb.v
  %i.bj = call i64 @time(ptr noundef null) #17
  %i.bk = call double @difftime(i64 noundef %i.bj, i64 noundef %i.b) #19
  %i.bl = fcmp ult double %i.bk, 6.000000e+01
  br i1 %i.bl, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @auth_g_destroy(ptr noundef %.067) #17
  %i.bm = load i16, ptr %i.q, align 8
  %i.bn = and i16 %i.bm, 1
  %.not81 = icmp eq i16 %i.bn, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152
  br i1 %.not81, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = call fastcc ptr @_global_auth_key()
  br label %.sink.split96

bb.z:                                             ; preds = %bb.x
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 136), align 8
  br label %.sink.split96

.sink.split96:                                    ; preds = %bb.z, %bb.y
  %.sink97 = phi ptr [ %i.br, %bb.y ], [ %i.bs, %bb.z ]
  %i.bt = load i32, ptr %i.bq, align 8
  %i.bu = call ptr @auth_g_create(i32 noundef %i.bp, ptr noundef %.sink97, i32 noundef %i.bt, ptr noundef nonnull %4, i32 noundef %.065) #17
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split96, %bb.w
  %.1 = phi ptr [ %.067, %bb.w ], [ %i.bu, %.sink.split96 ] ; 4 uses
  %i.bv = icmp eq ptr %.1, null
  br i1 %i.bv, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = call ptr @rpc_num2string(i16 noundef zeroext %i.bx) #17
  %i.bz = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.slurm_buffers_pack_msg, ptr noundef %i.by) #17 ; 0 uses
  %i.ca = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not86 = icmp eq ptr %i.ca, null
  br i1 %.not86, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free_buf(ptr noundef nonnull %i.ca) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store ptr null, ptr %i.g, align 8
  %i.cb = tail call ptr @__errno_location() #19
  store i32 1007, ptr %i.cb, align 4
  br label %bb.ao

bb.ae:                                            ; preds = %bb.aa
  %i.cc = call ptr @init_buf(i32 noundef 16384) #17 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store ptr %i.cc, ptr %i.cd, align 8
  %i.ce = load i16, ptr %3, align 8
  %i.cf = call i32 @auth_g_pack(ptr noundef nonnull %.1, ptr noundef %i.cc, i16 noundef zeroext %i.ce) #17
  %.not82 = icmp eq i32 %i.cf, 0
  br i1 %.not82, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ch = load i16, ptr %i.cg, align 4
  %i.ci = call ptr @rpc_num2string(i16 noundef zeroext %i.ch) #17
  %i.cj = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.slurm_buffers_pack_msg, ptr noundef %i.ci) #17 ; 0 uses
  call void @auth_g_destroy(ptr noundef nonnull %.1) #17
  %i.ck = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not84 = icmp eq ptr %i.ck, null
  br i1 %.not84, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free_buf(ptr noundef nonnull %i.ck) #17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  store ptr null, ptr %i.cd, align 8
  %i.cl = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not85 = icmp eq ptr %i.cl, null
  br i1 %.not85, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free_buf(ptr noundef nonnull %i.cl) #17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store ptr null, ptr %i.g, align 8
  %i.cm = tail call ptr @__errno_location() #19
  store i32 1007, ptr %i.cm, align 4
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ae
  call void @auth_g_destroy(ptr noundef nonnull %.1) #17
  %i.cn = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.co = and i64 %i.cn, 16
  %.not83 = icmp eq i64 %i.co, 0
  br i1 %.not83, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cp = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = zext i32 %i.ct to i64
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef %i.cr, i64 noundef %i.cu, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.slurm_buffers_pack_msg) #17
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.v
  %i.cv = load ptr, ptr %i.g, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %i.cx = load i32, ptr %i.cw, align 4
  call void @update_header(ptr noundef nonnull %3, i32 noundef %i.cx) #17
  %i.cy = call ptr @init_buf(i32 noundef 16384) #17 ; 2 uses
  store ptr %i.cy, ptr %1, align 8
  call void @pack_header(ptr noundef nonnull %3, ptr noundef %i.cy) #17
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.da = and i64 %i.cz, 16
  %.not87 = icmp eq i64 %i.da, 0
  br i1 %.not87, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = load ptr, ptr %1, align 8               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = zext i32 %i.df to i64
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef %i.dd, i64 noundef %i.dg, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.slurm_buffers_pack_msg) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.aj, %bb.ad, %bb.k
  %.0 = phi i32 [ -1, %bb.k ], [ -1, %bb.ad ], [ -1, %bb.aj ], [ 0, %bb.an ], [ 0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #10

declare ptr @init_buf(i32 noundef) local_unnamed_addr #3

declare i32 @pack_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @auth_g_create(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @forward_wait(ptr noundef) local_unnamed_addr #3

declare void @init_header(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #8

declare i32 @auth_g_pack(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @update_header(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pack_header(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @slurm_send_node_msg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.msg_bufs_t, align 8         ; 9 uses
  %3 = alloca %struct.persist_msg_t, align 8      ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
end_hunk_0
begin_hunk_1_@send_msg_response:bb.a

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l, %bb.j, %bb.f, %bb.h, %bb.i, %bb.g
  %.0 = phi i32 [ 0, %bb.j ], [ 0, %bb.f ], [ %i.aq, %bb.g ], [ %i.aq, %bb.i ], [ %i.aq, %bb.h ], [ %i.be, %bb.l ], [ %i.be, %bb.m ], [ %i.be, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

declare i32 @conmgr_con_queue_write_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @conmgr_con_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_send_rc_msg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.return_code_msg, align 4    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 %1, ptr %2, align 4
  %i.a = call i32 @send_msg_response(ptr noundef %0, i32 noundef 8001, ptr noundef nonnull %2) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #19
  store i32 %i.a, ptr %i.b, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_send_rc_err_msg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.return_code2_msg, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = call i32 @send_msg_response(ptr noundef %0, i32 noundef 8002, ptr noundef nonnull %3) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #19
  store i32 %i.c, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @slurm_send_msg_maybe(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.msg_bufs_t, align 8         ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call fastcc ptr @_open_msg_conn(ptr noundef %0, ptr noundef %i.b, i1 noundef zeroext true) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.e = and i64 %i.d, 1024
  %.not6 = icmp eq i64 %i.e, 0
  br i1 %.not6, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @get_log_level() #17
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.slurm_send_msg_maybe, ptr noundef nonnull %0) #17
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.j = call i32 @slurm_buffers_pack_msg(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true)
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = call i64 @slurm_bufs_sendto(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #17 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pr.i = load ptr, ptr %1, align 8              ; 2 uses
  %.not6.i = icmp eq ptr %.pr.i, null
  br i1 %.not6.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free_buf(ptr noundef nonnull %.pr.i) #17
  br label %.thread.i

.thread.i:                                        ; preds = %bb.i, %bb.h, %bb.e
  store ptr null, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.m, null
  br i1 %.not7.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread.i
  call void @free_buf(ptr noundef nonnull %i.m) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  store ptr null, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.o, null
  br i1 %.not8.i, label %_send_node_msg_maybe.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free_buf(ptr noundef nonnull %i.o) #17
  br label %_send_node_msg_maybe.exit

_send_node_msg_maybe.exit:                        ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @conn_g_destroy(ptr noundef nonnull %i.c, i1 noundef zeroext true) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.d, %bb.c, %_send_node_msg_maybe.exit
  ret void
}

declare void @conn_g_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_send_reroute_msg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.reroute_msg_t, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %2, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = call i32 @send_msg_response(ptr noundef %0, i32 noundef 8003, ptr noundef nonnull %3) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #19
  store i32 %i.b, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_send_recv_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  tail call void @slurm_msg_t_init(ptr noundef %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 176
  store ptr %i.b, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i32 @slurm_send_node_msg(ptr noundef %0, ptr noundef nonnull %1)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @slurm_receive_msg(ptr noundef %0, ptr noundef %2, i32 noundef %3)
  %.not10 = icmp ne i32 %i.f, 0
  %. = sext i1 %.not10 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_send_recv_controller_msg(ptr noundef initializes((152, 157), (232, 304), (432, 440)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(42) %i.b, i8 0, i64 42, i1 false)
  %.sroa.2.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.2.0..sroa_idx.a, i8 0, i64 20, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 274
  store i16 -2, ptr %.sroa.3.0..sroa_idx, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.d, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 -1, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 226 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.af, %bb.a
  %.064.ph = phi i32 [ %i.bt, %bb.af ], [ 0, %bb.a ]
  %.0.ph = phi ptr [ %.0, %bb.af ], [ %2, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.aj
  %.0 = phi ptr [ %i.ca, %bb.aj ], [ %.0.ph, %.outer ] ; 12 uses
  %i.n = icmp ne ptr %.0, null                    ; 3 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i16, ptr %i.f, align 8
  %i.p = or i16 %i.o, 1
  store i16 %i.p, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = tail call ptr @slurm_conf_lock() #17     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 296 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp ugt i32 %i.s, 1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1330
  %i.v = load i16, ptr %i.u, align 2
  tail call void @slurm_conf_unlock() #17
  %i.w = tail call fastcc ptr @_open_controller(ptr noundef nonnull @slurm_send_recv_controller_msg.index, ptr noundef %.0) ; 6 uses
  %.not103 = icmp eq ptr %i.w, null
  br i1 %.not103, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.x = zext i16 %i.v to i32                     ; 2 uses
  %i.y = lshr i32 %i.x, 1                         ; 2 uses
  %i.z = add nuw nsw i32 %i.y, %i.x
  %i.aa = uitofp nneg i32 %i.z to double
  br i1 %i.n, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 304
  %i.ac = load i16, ptr %i.ab, align 8
  store i16 %i.ac, ptr %i.g, align 4
  store ptr %i.w, ptr %i.h, align 8
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ae = and i64 %i.ad, 1024
  %.not69.us = icmp eq i64 %i.ae, 0
  br i1 %.not69.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.af = tail call i32 @slurm_msg_t_init_address(ptr noundef nonnull %0) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  tail call void @slurm_msg_t_init(ptr noundef %1) #17
  %i.ag = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i.us = icmp eq ptr %i.ag, null
  br i1 %.not.i.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ag, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = tail call i32 @slurm_send_node_msg(ptr noundef nonnull %i.w, ptr noundef nonnull %0)
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %slurm_send_recv_msg.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @slurm_receive_msg(ptr noundef nonnull %i.w, ptr noundef %1, i32 noundef 0)
  %.not10.i.us.not = icmp eq i32 %i.aj, 0
  br label %slurm_send_recv_msg.exit.us

slurm_send_recv_msg.exit.us:                      ; preds = %bb.i, %bb.h
  %.0.i.us = phi i1 [ false, %bb.h ], [ %.not10.i.us.not, %bb.i ]
  tail call void @conn_g_destroy(ptr noundef nonnull %i.w, i1 noundef zeroext true) #17
  %i.ak = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not70.us = icmp eq ptr %i.ak, null
  br i1 %.not70.us, label %.split.us, label %bb.j

bb.j:                                             ; preds = %slurm_send_recv_msg.exit.us
  tail call void @auth_g_destroy(ptr noundef nonnull %i.ak) #17
  br label %.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ab
  %i.al = phi ptr [ %i.bo, %bb.ab ], [ %i.w, %.lr.ph ] ; 4 uses
  store ptr %i.al, ptr %i.h, align 8
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.an = and i64 %i.am, 1024
  %.not69 = icmp eq i64 %i.an, 0
  br i1 %.not69, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  %i.ao = tail call i32 @slurm_msg_t_init_address(ptr noundef nonnull %0) #17 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split
  tail call void @slurm_msg_t_init(ptr noundef %1) #17
  %i.ap = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ap, ptr %i.j, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = tail call i32 @slurm_send_node_msg(ptr noundef nonnull %i.al, ptr noundef nonnull %0)
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %slurm_send_recv_msg.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = tail call i32 @slurm_receive_msg(ptr noundef nonnull %i.al, ptr noundef %1, i32 noundef 0)
  %.not10.i.not = icmp eq i32 %i.as, 0
  br label %slurm_send_recv_msg.exit

slurm_send_recv_msg.exit:                         ; preds = %bb.n, %bb.o
  %.0.i = phi i1 [ false, %bb.n ], [ %.not10.i.not, %bb.o ]
  tail call void @conn_g_destroy(ptr noundef nonnull %i.al, i1 noundef zeroext true) #17
  %i.at = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not70 = icmp eq ptr %i.at, null
  br i1 %.not70, label %bb.q, label %bb.p

bb.p:                                             ; preds = %slurm_send_recv_msg.exit
  tail call void @auth_g_destroy(ptr noundef nonnull %i.at) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %slurm_send_recv_msg.exit
  br i1 %.0.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.au = load i16, ptr %i.l, align 2             ; 2 uses
  %i.av = icmp eq i16 %i.au, 8001
  br i1 %i.av, label %bb.s, label %.thread82

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %i.m, align 8
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 2027
  br i1 %i.ay, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = icmp eq i32 %i.ax, 2131
  %or.cond3 = select i1 %i.az, i1 %i.t, i1 false
  br i1 %or.cond3, label %bb.v, label %.thread82thread-pre-split

bb.u:                                             ; preds = %bb.s
  br i1 %i.t, label %bb.v, label %.thread82thread-pre-split

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ba = tail call i64 @time(ptr noundef null) #17
  %i.bb = tail call double @difftime(i64 noundef %i.ba, i64 noundef %i.a) #19
  %i.bc = fcmp olt double %i.bb, %i.aa
  br i1 %i.bc, label %bb.w, label %.thread82thread-pre-split

bb.w:                                             ; preds = %bb.v
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.be = and i64 %i.bd, 1024
  %.not71 = icmp eq i64 %i.be, 0
  br i1 %.not71, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = tail call i32 @get_log_level() #17
  %i.bg = icmp sgt i32 %i.bf, 3
  br i1 %i.bg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bh = load i32, ptr @slurm_send_recv_controller_msg.index, align 4
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.slurm_send_recv_controller_msg, i32 noundef %i.bh) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %i.bi = load i32, ptr @slurm_send_recv_controller_msg.index, align 4
  %i.bj = add nsw i32 %i.bi, 1                    ; 2 uses
  store i32 %i.bj, ptr @slurm_send_recv_controller_msg.index, align 4
  %i.bk = load i32, ptr %i.r, align 8
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr @slurm_send_recv_controller_msg.index, align 4
  %i.bm = tail call i32 @sleep(i32 noundef %i.y) #17 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.bn = load ptr, ptr %i.m, align 8
  tail call void @slurm_free_return_code_msg(ptr noundef %i.bn) #17
  %i.bo = tail call fastcc ptr @_open_controller(ptr noundef nonnull @slurm_send_recv_controller_msg.index, ptr noundef null) ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.split.us:                                        ; preds = %slurm_send_recv_msg.exit.us, %bb.j
end_hunk_1
begin_hunk_2_@slurm_send_recv_msgs:bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.b = tail call ptr @hostlist_create(ptr noundef nonnull %0) #17 ; 3 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.69) #17 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = tail call ptr @start_msg_tree(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %2) #17
  tail call void @hostlist_destroy(ptr noundef nonnull %i.b) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ %i.d, %bb.f ], [ null, %bb.e ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @hostlist_create(ptr noundef) local_unnamed_addr #3

declare ptr @start_msg_tree(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @hostlist_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_send_addr_recv_msgs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8 ; 2 uses
  %i.c = tail call i16 @llvm.umin.i16(i16 %i.b, i16 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  %i.d = tail call i64 @time(ptr noundef null) #17
  %i.e = zext nneg i16 %i.c to i64
  %.not41 = icmp eq i16 %i.b, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.039 = phi i1 [ true, %.lr.ph ], [ false, %bb.n ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call fastcc ptr @_open_msg_conn(ptr noundef %0, ptr noundef %i.g, i1 noundef zeroext false) ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #19
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = and i32 %i.j, -2
  %switch = icmp eq i32 %i.k, 110
  br i1 %switch, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %i.j, 110
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %.039, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.n = and i64 %i.m, 1024
  %.not33 = icmp eq i64 %i.n, 0
  br i1 %.not33, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 @get_log_level() #17
  %i.p = icmp sgt i32 %i.o, 3
  br i1 %i.p, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.70, ptr noundef nonnull %0) #17
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  br i1 %.039, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.r = and i64 %i.q, 1024
  %.not32 = icmp eq i64 %i.r, 0
  br i1 %.not32, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call i32 @get_log_level() #17
  %i.t = icmp sgt i32 %i.s, 3
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.71, ptr noundef nonnull %0) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k, %bb.i
  %i.u = tail call i32 @sleep(i32 noundef 1) #17  ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.m
  %i.v = tail call i64 @time(ptr noundef null) #17
  %i.w = sub nsw i64 %i.v, %i.d
  %i.x = icmp slt i64 %i.w, %i.e
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.n, %bb.c, %bb.a
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.z = and i64 %i.y, 1024
  %.not35 = icmp eq i64 %i.z, 0
  br i1 %.not35, label %bb.q, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.aa = tail call i32 @get_log_level() #17
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.72, ptr noundef %0) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %._crit_edge
  call void @mark_as_failed_forward(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 1001) #17
  %i.ac = tail call ptr @__errno_location() #19
  store i32 1001, ptr %i.ac, align 4
  br label %bb.t

bb.r:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.ae, align 8
  %i.af = tail call i32 @slurm_send_node_msg(ptr noundef nonnull %i.h, ptr noundef nonnull %0)
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %thread-pre-split, label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 294
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = tail call ptr @slurm_receive_msgs(ptr noundef nonnull %i.h, i32 noundef %i.aj, i32 noundef %i.al) ; 3 uses
  store ptr %i.am, ptr %i.a, align 8
  %.not36 = icmp eq ptr %i.am, null
  br i1 %.not36, label %thread-pre-split.thread, label %bb.s

thread-pre-split.thread:                          ; preds = %bb.r, %thread-pre-split
  %i.an = tail call ptr @__errno_location() #19   ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  call void @mark_as_failed_forward(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %i.ao) #17
  call void @conn_g_destroy(ptr noundef nonnull %i.h, i1 noundef zeroext true) #17
  store i32 1001, ptr %i.an, align 4
  br label %bb.t

bb.s:                                             ; preds = %thread-pre-split
  %i.ap = tail call i32 @list_for_each(ptr noundef nonnull %i.am, ptr noundef nonnull @_foreach_ret_list_hostname_set, ptr noundef %1) #17 ; 0 uses
  tail call void @conn_g_destroy(ptr noundef nonnull %i.h, i1 noundef zeroext true) #17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %thread-pre-split.thread, %bb.q
  %.024 = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.024
}

declare void @mark_as_failed_forward(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @list_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_ret_list_hostname_set(ptr nofree noundef captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @xstrdup(ptr noundef %1) #17
  store ptr %i.c, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_send_recv_rc_msg_only_one(ptr noundef initializes((232, 304), (432, 440)) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.slurm_msg, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @slurm_msg_t_init(ptr noundef nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(42) %i.a, i8 0, i64 42, i1 false)
  %.sroa.2.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 276
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.2.0..sroa_idx.a, i8 0, i64 20, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 274
  store i16 -2, ptr %.sroa.3.0..sroa_idx, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr null, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %4, align 8
  %i.c = call i32 @slurm_send_recv_node_msg(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.e, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @auth_g_destroy(ptr noundef nonnull %i.e) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 226 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call i32 @slurm_get_return_code(i32 noundef %i.h, ptr noundef %i.j) #17
  store i32 %i.k, ptr %1, align 4
  %i.l = load i16, ptr %i.f, align 2
  %i.m = zext i16 %i.l to i32
  %i.n = load ptr, ptr %i.i, align 8
  call void @slurm_free_msg_data(i32 noundef %i.m, ptr noundef %i.n) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

declare i32 @slurm_get_return_code(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @slurm_free_msg_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_send_recv_controller_rc_msg(ptr noundef initializes((152, 157), (232, 304), (432, 440)) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.slurm_msg, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = call i32 @slurm_send_recv_controller_msg(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 226 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call i32 @slurm_get_return_code(i32 noundef %i.d, ptr noundef %i.f) #17
  store i32 %i.g, ptr %1, align 4
  %i.h = load i16, ptr %i.b, align 2
  %i.i = zext i16 %i.h to i32
  %i.j = load ptr, ptr %i.e, align 8
  call void @slurm_free_msg_data(i32 noundef %i.i, ptr noundef %i.j) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @slurm_free_msg_members(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @auth_g_destroy(ptr noundef nonnull %i.b) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free_buf(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.h = load i16, ptr %i.g, align 2
  %i.i = zext i16 %i.h to i32
  tail call void @slurm_free_msg_data(i32 noundef %i.i, ptr noundef nonnull %i.f) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 226
  store i16 -2, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @list_destroy(ptr noundef nonnull %i.l) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @slurm_xfree(ptr noundef nonnull %i.m) #17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @conmgr_fd_free_ref(ptr noundef nonnull %i.n) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

declare void @conmgr_fd_free_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @slurm_free_msg(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @slurm_free_msg_members(ptr noundef nonnull %0)
  call void @slurm_xfree(ptr noundef nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @nodelist_nth_host(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @hostlist_create(ptr noundef %0) #17 ; 2 uses
  %i.b = tail call ptr @hostlist_nth(ptr noundef %i.a, i32 noundef %1) #17
  tail call void @hostlist_destroy(ptr noundef %i.a) #17
  ret ptr %i.b
}

declare ptr @hostlist_nth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @nodelist_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @hostlist_create(ptr noundef %0) #17 ; 2 uses
  %i.b = tail call i32 @hostlist_find(ptr noundef %i.a, ptr noundef %1) #17
  tail call void @hostlist_destroy(ptr noundef %i.a) #17
  ret i32 %i.b
}

declare i32 @hostlist_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @slurm_forward_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.slurm_msg, align 8          ; 8 uses
  %5 = alloca %struct.forward_data_msg, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @slurm_msg_t_init(ptr noundef nonnull %4) #17
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.b = and i64 %i.a, 1024
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @get_log_level() #17
  %i.d = icmp sgt i32 %i.c, 3
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8
end_hunk_2
