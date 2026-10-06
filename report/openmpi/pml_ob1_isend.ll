Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pml_ob1_isend?download=true
inline.NumInlined: 116
inline.NumDeleted: 62
begin_hunk_0_@mca_pml_ob1_send_request_start_seq:bb.a
  br i1 %.not53.not, label %bb.aj, label %mca_pml_ob1_send_request_start_btl.exit.thread

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge
  %i.dp = load i8, ptr @opal_uses_threads, align 1, !tbaa !56, !range !57, !noundef !58
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ak, label %bb.al, !prof !49

bb.ak:                                            ; preds = %bb.aj
  %i.dr = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 256)) #10 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !56, !range !57
  %i.ds = trunc nuw i8 %.pre.i to i1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dt = phi i1 [ %i.ds, %bb.ak ], [ false, %bb.aj ]
  store i32 2, ptr %i.g, align 4, !tbaa !59
  %i.du = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 2168), align 8, !tbaa !197
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store volatile ptr %i.du, ptr %i.dv, align 8, !tbaa !197
  %i.dw = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 2168), align 8, !tbaa !197
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store volatile ptr %0, ptr %i.dx, align 8, !tbaa !110
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store volatile ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 2144), ptr %i.dy, align 8, !tbaa !110
  store volatile ptr %0, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 2168), align 8, !tbaa !197
  %i.dz = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 2184), align 8, !tbaa !198
  %i.ea = add i64 %i.dz, 1
  store volatile i64 %i.ea, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 2184), align 8, !tbaa !198
  br i1 %i.dt, label %bb.am, label %add_request_to_send_pending.exit, !prof !49

bb.am:                                            ; preds = %bb.al
  %i.eb = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 256)) #10 ; 0 uses
  br label %add_request_to_send_pending.exit

add_request_to_send_pending.exit:                 ; preds = %bb.al, %bb.am
  %i.ec = call i32 @mca_pml_ob1_enable_progress(i32 noundef 1) #10 ; 0 uses
  br label %mca_pml_ob1_send_request_start_btl.exit.thread

mca_pml_ob1_send_request_start_btl.exit.thread:   ; preds = %mca_pml_ob1_send_request_start_btl.exit, %bb.aa, %.critedge.i, %bb.ag, %bb.ai, %add_request_to_send_pending.exit
  %.4 = phi i32 [ 0, %add_request_to_send_pending.exit ], [ %i.do, %bb.ai ], [ 0, %.critedge.i ], [ 0, %bb.ag ], [ %.056.i, %mca_pml_ob1_send_request_start_btl.exit ], [ 0, %bb.aa ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define i32 @mca_pml_ob1_send(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %i.f = trunc i64 %i.e to i32
  %.not.i = icmp slt i32 %3, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @ompi_rte_abort(i32 noundef -1, ptr noundef nonnull @.str) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load volatile ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %mca_pml_ob1_peer_lookup.exit, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @mca_pml_ob1_peer_create(ptr noundef nonnull %6, ptr noundef nonnull %i.c, i32 noundef %3) #10 ; 0 uses
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !46
  br label %mca_pml_ob1_peer_lookup.exit

mca_pml_ob1_peer_lookup.exit:                     ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %.pre.i, %bb.d ], [ %i.h, %bb.c ]
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.i
  %i.p = load volatile ptr, ptr %i.o, align 8, !tbaa !48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !119  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120  ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %mca_bml_base_get_endpoint.exit.thread, !prof !49

bb.e:                                             ; preds = %mca_pml_ob1_peer_lookup.exit
  %i.v = load i8, ptr @opal_uses_threads, align 1, !tbaa !56, !range !57, !noundef !58
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %.thread.i, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_bml_lock, i64 16)) #10 ; 0 uses
  %.pr.i = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.y = icmp eq ptr %.pr.i, null
  br i1 %i.y, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_bml, i64 8), align 8, !tbaa !123
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %i.r) #10, !inline_history !0 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.f
  %i.ab = load i8, ptr @opal_uses_threads, align 1, !tbaa !56, !range !57, !noundef !58
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %mca_bml_base_get_endpoint.exit, !prof !49

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_bml_lock, i64 16)) #10 ; 0 uses
  br label %mca_bml_base_get_endpoint.exit

mca_bml_base_get_endpoint.exit:                   ; preds = %bb.g, %bb.h
  %.pr = load ptr, ptr %i.s, align 8, !tbaa !120  ; 2 uses
  %i.ae = icmp eq ptr %.pr, null
  br i1 %i.ae, label %bb.i, label %mca_bml_base_get_endpoint.exit.thread, !prof !124

bb.i:                                             ; preds = %mca_bml_base_get_endpoint.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !125, !range !57, !noundef !58
  %i.ah = trunc nuw i8 %i.ag to i1
  %. = select i1 %i.ah, i32 -12, i32 75
  br label %.thread115

mca_bml_base_get_endpoint.exit.thread:            ; preds = %mca_pml_ob1_peer_lookup.exit, %mca_bml_base_get_endpoint.exit
  %i.ai = phi ptr [ %.pr, %mca_bml_base_get_endpoint.exit ], [ %i.t, %mca_pml_ob1_peer_lookup.exit ] ; 2 uses
  %i.aj = icmp eq i32 %5, 2
  br i1 %i.aj, label %bb.j, label %bb.m, !prof !49

bb.j:                                             ; preds = %mca_bml_base_get_endpoint.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ak = call i32 @mca_pml_ob1_isend(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull %i.a) ; 2 uses
  %.not107 = icmp eq i32 %i.ak, 0
  br i1 %.not107, label %bb.k, label %bb.l, !prof !45

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  tail call fastcc void @ompi_request_wait_completion(ptr noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !200
  %i.ao = call i32 %i.an(ptr noundef nonnull %i.a) #10, !inline_history !199 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread115

bb.m:                                             ; preds = %mca_bml_base_get_endpoint.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !126
  %i.ar = and i32 %i.aq, 8
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = icmp slt i32 %4, 0
  %or.cond = or i1 %i.at, %i.as
  br i1 %or.cond, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 4 uses
  %i.av = load i8, ptr @opal_uses_threads, align 1, !tbaa !56, !range !57, !noundef !58
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.o, label %bb.p, !prof !49

bb.o:                                             ; preds = %bb.n
  %i.ax = atomicrmw volatile add ptr %i.au, i32 1 monotonic, align 4
  %i.ay = add i32 %i.ax, 1
  br label %opal_thread_add_fetch_32.exit

bb.p:                                             ; preds = %bb.n
  %i.az = load volatile i32, ptr %i.au, align 4, !tbaa !59
  %i.ba = add nsw i32 %i.az, 1
  store volatile i32 %i.ba, ptr %i.au, align 4, !tbaa !59
  %i.bb = load volatile i32, ptr %i.au, align 4, !tbaa !59
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.o, %bb.p
  %.0.i = phi i32 [ %i.ay, %bb.o ], [ %i.bb, %bb.p ]
  %i.bc = trunc i32 %.0.i to i16
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %opal_thread_add_fetch_32.exit
  %.094 = phi i16 [ %i.bc, %opal_thread_add_fetch_32.exit ], [ 0, %bb.m ] ; 2 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = tail call fastcc i32 @mca_pml_ob1_send_inline(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %4, i16 noundef signext %.094, ptr noundef nonnull %i.r, ptr noundef nonnull %i.p, ptr noundef %i.ai, ptr noundef nonnull %6)
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %.thread115, label %bb.s, !prof !45

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bf = load i8, ptr @ompi_mpi_thread_multiple, align 1, !tbaa !56, !range !57, !noundef !58
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.thread, label %bb.t, !prof !49

bb.t:                                             ; preds = %bb.s
  %i.bh = load ptr, ptr @mca_pml_ob1_sendreq, align 8, !tbaa !202 ; 2 uses
  store ptr null, ptr @mca_pml_ob1_sendreq, align 8, !tbaa !202
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.thread, label %bb.v, !prof !203

.thread:                                          ; preds = %bb.s, %bb.t
  %i.bj = getelementptr i8, ptr %6, i64 272
  %.val = load ptr, ptr %i.bj, align 8, !tbaa !50
  %i.bk = tail call fastcc ptr @ompi_comm_peer_lookup(ptr %.val, i32 noundef %3)
  %.not104 = icmp eq ptr %i.bk, null
  br i1 %.not104, label %.thread115, label %bb.u, !prof !49

bb.u:                                             ; preds = %.thread
  %i.bl = tail call fastcc ptr @opal_free_list_wait()
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2 = phi ptr [ %i.bl, %bb.u ], [ %i.bh, %bb.t ] ; 33 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.2, i64 496 ; 2 uses
  store ptr %i.r, ptr %i.bm, align 8, !tbaa !74
  %i.bn = getelementptr inbounds nuw i8, ptr %.2, i64 720
  store ptr null, ptr %i.bn, align 8, !tbaa !205
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bp = load i8, ptr @opal_uses_threads, align 1, !tbaa !56, !range !57, !noundef !58
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  br i1 %i.bq, label %bb.w, label %bb.x, !prof !49

bb.w:                                             ; preds = %bb.v
  %i.br = atomicrmw volatile add ptr %i.bo, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit110

bb.x:                                             ; preds = %bb.v
  %i.bs = load volatile i32, ptr %i.bo, align 8, !tbaa !59
  %i.bt = add nsw i32 %i.bs, 1
  store volatile i32 %i.bt, ptr %i.bo, align 8, !tbaa !59
  %i.bu = load volatile i32, ptr %i.bo, align 8, !tbaa !59 ; 0 uses
  br label %opal_thread_add_fetch_32.exit110

opal_thread_add_fetch_32.exit110:                 ; preds = %bb.w, %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %.2, i64 88
  store ptr null, ptr %i.bv, align 8, !tbaa !75
  %i.bw = getelementptr inbounds nuw i8, ptr %.2, i64 96
  store volatile i32 1, ptr %i.bw, align 8, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %.2, i64 100
  store i8 0, ptr %i.bx, align 4, !tbaa !77
  %i.by = getelementptr inbounds nuw i8, ptr %.2, i64 136
  %i.bz = getelementptr inbounds nuw i8, ptr %.2, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  store ptr %6, ptr %i.bz, align 8, !tbaa !78
  %i.ca = getelementptr inbounds nuw i8, ptr %.2, i64 512
  store ptr %0, ptr %i.ca, align 8, !tbaa !79
  %i.cb = getelementptr inbounds nuw i8, ptr %.2, i64 528
  store i32 %5, ptr %i.cb, align 8, !tbaa !80
  %i.cc = getelementptr inbounds nuw i8, ptr %.2, i64 472 ; 2 uses
  store ptr %0, ptr %i.cc, align 8, !tbaa !81
  %i.cd = getelementptr inbounds nuw i8, ptr %.2, i64 480 ; 2 uses
  store i64 %1, ptr %i.cd, align 8, !tbaa !82
  %i.ce = getelementptr inbounds nuw i8, ptr %.2, i64 184 ; 2 uses
  store ptr %2, ptr %i.ce, align 8, !tbaa !83
  %i.cf = getelementptr inbounds nuw i8, ptr %.2, i64 488
  store i32 %3, ptr %i.cf, align 8, !tbaa !84
  %i.cg = getelementptr inbounds nuw i8, ptr %.2, i64 492
  store i32 %4, ptr %i.cg, align 4, !tbaa !85
  %i.ch = getelementptr inbounds nuw i8, ptr %.2, i64 176
  store ptr %6, ptr %i.ch, align 8, !tbaa !86
  %i.ci = getelementptr inbounds nuw i8, ptr %.2, i64 160
  store volatile i32 0, ptr %i.ci, align 8, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %.2, i64 164
  store volatile i32 0, ptr %i.cj, align 4, !tbaa !88
  %i.ck = getelementptr inbounds nuw i8, ptr %.2, i64 76
  store i32 0, ptr %i.ck, align 4, !tbaa !89
  %i.cl = getelementptr inbounds nuw i8, ptr %.2, i64 520 ; 3 uses
  store i64 0, ptr %i.cl, align 8, !tbaa !90
  %.not105 = icmp eq i64 %1, 0
  br i1 %.not105, label %opal_convertor_get_packed_size.exit, label %bb.y

bb.y:                                             ; preds = %opal_thread_add_fetch_32.exit110
  %i.cm = getelementptr i8, ptr %2, i64 16
  %.val108 = load i16, ptr %i.cm, align 8, !tbaa !97
  %i.cn = and i16 %.val108, 512
  %.not106 = icmp eq i16 %i.cn, 0
  br i1 %.not106, label %bb.z, label %opal_thread_add_fetch_32.exit112

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br i1 %i.bq, label %bb.aa, label %bb.ab, !prof !49

bb.aa:                                            ; preds = %bb.z
  %i.cp = atomicrmw volatile add ptr %i.co, i32 1 monotonic, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.ce, align 8, !tbaa !83
  %.pre117 = load i64, ptr %i.cd, align 8, !tbaa !82
  %.pre118 = load ptr, ptr %i.cc, align 8, !tbaa !81
  br label %opal_thread_add_fetch_32.exit112

bb.ab:                                            ; preds = %bb.z
  %i.cq = load volatile i32, ptr %i.co, align 8, !tbaa !59
  %i.cr = add nsw i32 %i.cq, 1
  store volatile i32 %i.cr, ptr %i.co, align 8, !tbaa !59
  %i.cs = load volatile i32, ptr %i.co, align 8, !tbaa !59 ; 0 uses
  br label %opal_thread_add_fetch_32.exit112

opal_thread_add_fetch_32.exit112:                 ; preds = %bb.ab, %bb.aa, %bb.y
  %i.ct = phi ptr [ %0, %bb.ab ], [ %.pre118, %bb.aa ], [ %0, %bb.y ]
  %i.cu = phi i64 [ %1, %bb.ab ], [ %.pre117, %bb.aa ], [ %1, %bb.y ]
  %i.cv = phi ptr [ %2, %bb.ab ], [ %.pre, %bb.aa ], [ %2, %bb.y ]
  %i.cw = load ptr, ptr %i.bm, align 8, !tbaa !74
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !102 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.2, i64 192 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.2, i64 208
  %i.dc = getelementptr inbounds nuw i8, ptr %.2, i64 212
  %i.dd = load <2 x i32>, ptr %i.da, align 8, !tbaa !59
  store <2 x i32> %i.dd, ptr %i.db, align 8, !tbaa !59
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !103
  %i.dg = getelementptr inbounds nuw i8, ptr %.2, i64 288
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !103
  %i.dh = tail call i32 @opal_convertor_prepare_for_send(ptr noundef nonnull %i.cz, ptr noundef %i.cv, i64 noundef %i.cu, ptr noundef %i.ct) #10 ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.2, i64 216
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !104
  store i64 %i.dj, ptr %i.cl, align 8, !tbaa !105
  %i.dk = load i32, ptr %i.dc, align 4, !tbaa !106 ; 4 uses
  %i.dl = and i32 %i.dk, 524288
  %.not.i113 = icmp ne i32 %i.dl, 0
  %i.dm = and i32 %i.dk, 327680
  %or.cond.i = icmp eq i32 %i.dm, 262144
  %or.cond16.i = or i1 %.not.i113, %or.cond.i
  %i.dn = and i32 %i.dk, 196608
  %or.cond15.not.i = icmp eq i32 %i.dn, 196608
  %or.cond17.i = or i1 %or.cond15.not.i, %or.cond16.i
  br i1 %or.cond17.i, label %opal_convertor_get_packed_size.exit, label %bb.ac

bb.ac:                                            ; preds = %opal_thread_add_fetch_32.exit112
  %i.do = and i32 %i.dk, 536870912
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dq = tail call i64 @opal_convertor_compute_remote_size(ptr noundef nonnull %i.cz) #10 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %.2, i64 224
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !107
  store i64 %i.ds, ptr %i.cl, align 8, !tbaa !105
  br label %opal_convertor_get_packed_size.exit

opal_convertor_get_packed_size.exit:              ; preds = %bb.ae, %opal_thread_add_fetch_32.exit112, %opal_thread_add_fetch_32.exit110
  %i.dt = getelementptr inbounds nuw i8, ptr %.2, i64 552
  store ptr null, ptr %i.dt, align 8, !tbaa !78
  %i.du = getelementptr inbounds nuw i8, ptr %.2, i64 544
  store ptr %i.p, ptr %i.du, align 8, !tbaa !48
  %i.dv = sext i16 %.094 to i32
  %i.dw = tail call fastcc i32 @mca_pml_ob1_send_request_start_seq(ptr noundef %.2, ptr noundef %i.ai, i32 noundef %i.dv) ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.af, label %bb.ag, !prof !45

bb.af:                                            ; preds = %opal_convertor_get_packed_size.exit
  tail call fastcc void @ompi_request_wait_completion(ptr noundef nonnull %.2)
  %i.dy = getelementptr inbounds nuw i8, ptr %.2, i64 72
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !128
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %opal_convertor_get_packed_size.exit
  %.0 = phi i32 [ %i.dz, %bb.af ], [ %i.dw, %opal_convertor_get_packed_size.exit ] ; 2 uses
  %i.ea = load i8, ptr @ompi_mpi_thread_multiple, align 1, !tbaa !56, !range !57, !noundef !58
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = load ptr, ptr @mca_pml_ob1_sendreq, align 8
  %i.ed = icmp ne ptr %i.ec, null
  %i.ee = select i1 %i.eb, i1 true, i1 %i.ed, !prof !49
  tail call fastcc void @mca_pml_ob1_send_request_fini(ptr noundef %.2)
  br i1 %i.ee, label %bb.ah, label %bb.ai, !prof !49

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @opal_free_list_return(ptr noundef %.2)
  br label %.thread115

bb.ai:                                            ; preds = %bb.ag
  store ptr %.2, ptr @mca_pml_ob1_sendreq, align 8, !tbaa !202
  br label %.thread115

.thread115:                                       ; preds = %.thread, %bb.ah, %bb.ai, %bb.r, %bb.i, %bb.l
  %.197 = phi i32 [ %.0, %bb.ah ], [ %., %bb.i ], [ %i.ak, %bb.l ], [ 0, %bb.r ], [ %.0, %bb.ai ], [ -3, %.thread ]
  ret i32 %.197
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ompi_request_wait_completion(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.ompi_wait_sync_t, align 8   ; 15 uses
  %i.a = load i8, ptr @opal_uses_threads, align 1, !tbaa !56, !range !57, !noundef !58
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.e = icmp eq ptr %i.d, inttoptr (i64 1 to ptr) ; 2 uses
  br i1 %i.b, label %bb.b, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.a
  br i1 %i.e, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.k = ptrtoint ptr %1 to i64                   ; 4 uses
  br label %bb.d

end_hunk_0
