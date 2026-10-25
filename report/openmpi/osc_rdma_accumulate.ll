Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/osc_rdma_accumulate?download=true
inline.NumInlined: 208
inline.NumDeleted: 91
begin_hunk_0_@ompi_osc_rdma_compare_and_swap:bb.a
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.di, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 316
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !61
  %i.ak = icmp eq i32 %i.aj, 3
  br i1 %i.ak, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.al = call i32 @ompi_osc_rdma_find_dynamic_region(ptr noundef nonnull %i.ac, ptr noundef %i.ah, i64 noundef %5, i64 noundef %i.ag, ptr noundef nonnull %i.z) #13 ; 2 uses
  %.not31.i = icmp eq i32 %i.al, 0
  br i1 %.not31.i, label %bb.d, label %osc_rdma_get_remote_segment.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  br label %osc_rdma_get_remote_segment.exit

bb.e:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 308
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !64, !range !65, !noundef !66
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 328
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %.in.i = select i1 %i.aq, ptr %i.ar, ptr %i.as
  %i.at = load i32, ptr %.in.i, align 8, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 309
  %i.av = load i8, ptr %i.au, align 1, !tbaa !68, !range !65, !noundef !66
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 320
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  %.in30.i = select i1 %i.aw, ptr %i.ax, ptr %i.ay
  %i.az = load i64, ptr %.in30.i, align 8, !tbaa !69
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !74 ; 2 uses
  %i.bc = sext i32 %i.at to i64
  %i.bd = mul nsw i64 %5, %i.bc
  %i.be = add nsw i64 %i.bb, %i.bd                ; 2 uses
  %i.bf = add i64 %i.be, %i.ag
  %i.bg = add i64 %i.bb, %i.az
  %.not.i53 = icmp ugt i64 %i.bf, %i.bg
  br i1 %.not.i53, label %osc_rdma_get_remote_segment.exit.thread, label %bb.f, !prof !32

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !75
  br label %osc_rdma_get_remote_segment.exit

osc_rdma_get_remote_segment.exit.thread:          ; preds = %bb.e, %bb.c
  %.1.i.ph = phi i32 [ %i.al, %bb.c ], [ -105, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #13
  br label %bb.di

osc_rdma_get_remote_segment.exit:                 ; preds = %bb.d, %bb.f
  %.091 = phi ptr [ %i.an, %bb.d ], [ %i.bi, %bb.f ] ; 4 uses
  %.190 = phi i64 [ %5, %bb.d ], [ %i.be, %bb.f ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #13
  br label %bb.g

bb.g:                                             ; preds = %osc_rdma_get_remote_segment.exit, %.loopexit
  %i.bj = load ptr, ptr %i.aa, align 8, !tbaa !39
  fence seq_cst
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 140 ; 6 uses
  %i.bl = load volatile i32, ptr %i.bk, align 4, !tbaa !76 ; 4 uses
  %i.bm = and i32 %i.bl, 8
  %.not10.i = icmp eq i32 %i.bm, 0
  br i1 %.not10.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.g
  %i.bn = load i8, ptr @opal_uses_threads, align 1, !tbaa !77, !range !65, !noundef !66
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.lr.ph.split.i, label %.lr.ph.split.us.i, !prof !32

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.bp = load volatile i32, ptr %i.bk, align 4, !tbaa !67 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, %i.bl
  br i1 %i.bq, label %.split.us.i, label %opal_thread_compare_exchange_strong_32.exit.us.i

bb.h:                                             ; preds = %opal_thread_compare_exchange_strong_32.exit.us.i
  %i.br = load volatile i32, ptr %i.bk, align 4, !tbaa !67 ; 2 uses
  %i.bs = icmp eq i32 %i.br, %i.bt
  br i1 %i.bs, label %.split.us.i, label %opal_thread_compare_exchange_strong_32.exit.us.i, !llvm.loop !0

opal_thread_compare_exchange_strong_32.exit.us.i: ; preds = %.lr.ph.split.us.i, %bb.h
  %i.bt = phi i32 [ %i.br, %bb.h ], [ %i.bp, %.lr.ph.split.us.i ] ; 3 uses
  %i.bu = and i32 %i.bt, 8
  %.not.us.i = icmp eq i32 %i.bu, 0
  br i1 %.not.us.i, label %bb.h, label %.loopexit, !llvm.loop !0

.split.us.i:                                      ; preds = %.lr.ph.split.us.i, %bb.h
  %.011.us.lcssa.i = phi i32 [ %i.bt, %bb.h ], [ %i.bl, %.lr.ph.split.us.i ]
  %i.bv = or disjoint i32 %.011.us.lcssa.i, 8
  br label %.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %opal_thread_compare_exchange_strong_32.exit.i
  %i.bw = phi i8 [ %i.ce, %opal_thread_compare_exchange_strong_32.exit.i ], [ 1, %.lr.ph.i ]
  %.011.i = phi i32 [ %.1.i54, %opal_thread_compare_exchange_strong_32.exit.i ], [ %i.bl, %.lr.ph.i ] ; 3 uses
  %i.bx = or disjoint i32 %.011.i, 8              ; 2 uses
  %i.by = trunc nuw i8 %i.bw to i1
  br i1 %i.by, label %bb.i, label %bb.k, !prof !32

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.bz = cmpxchg volatile ptr %i.bk, i32 %.011.i, i32 %i.bx acquire monotonic, align 4 ; 2 uses
  %i.ca = extractvalue { i32, i1 } %i.bz, 1
  br i1 %i.ca, label %ompi_osc_rdma_peer_test_set_flag.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !77, !range !65
  %i.cb = extractvalue { i32, i1 } %i.bz, 0
  br label %opal_thread_compare_exchange_strong_32.exit.i

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.cc = load volatile i32, ptr %i.bk, align 4, !tbaa !67 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, %.011.i
  br i1 %i.cd, label %.split.i, label %opal_thread_compare_exchange_strong_32.exit.i

.split.i:                                         ; preds = %bb.k, %.split.us.i
  %.us-phi15.i = phi i32 [ %i.bv, %.split.us.i ], [ %i.bx, %bb.k ]
  store i32 %.us-phi15.i, ptr %i.bk, align 4, !tbaa !67
  br label %ompi_osc_rdma_peer_test_set_flag.exit

opal_thread_compare_exchange_strong_32.exit.i:    ; preds = %bb.k, %bb.j
  %i.ce = phi i8 [ 0, %bb.k ], [ %.pre.i, %bb.j ]
  %.1.i54 = phi i32 [ %i.cc, %bb.k ], [ %i.cb, %bb.j ] ; 2 uses
  %i.cf = and i32 %.1.i54, 8
  %.not.i55 = icmp eq i32 %i.cf, 0
  br i1 %.not.i55, label %.lr.ph.split.i, label %.loopexit, !llvm.loop !1

.loopexit:                                        ; preds = %opal_thread_compare_exchange_strong_32.exit.us.i, %opal_thread_compare_exchange_strong_32.exit.i, %bb.g
  %i.cg = call i32 @opal_progress() #13           ; 0 uses
  br label %bb.g, !llvm.loop !165

ompi_osc_rdma_peer_test_set_flag.exit:            ; preds = %bb.i, %.split.i
  %i.ch = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 140 ; 2 uses
  %i.cj = load volatile i32, ptr %i.ci, align 4, !tbaa !76
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %ompi_osc_rdma_lock_acquire_exclusive.exit, label %bb.l

bb.l:                                             ; preds = %ompi_osc_rdma_peer_test_set_flag.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ac, i64 311
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !80, !range !65, !noundef !66
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %ompi_osc_rdma_lock_acquire_exclusive.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !175
  %i.cq = icmp ult i32 %i.cp, 2
  br i1 %i.cq, label %ompi_osc_rdma_lock_acquire_exclusive.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 145
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.cv = load i64, ptr %i.cr, align 8, !tbaa !81
  %i.cw = add i64 %i.cv, 16                       ; 2 uses
  %i.cx = load volatile i32, ptr %i.ci, align 4, !tbaa !76
  %i.cy = and i32 %i.cx, 4
  %.not10.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not10.i.i, label %ompi_osc_rdma_lock_try_acquire_exclusive.exit.i, label %.split

.split:                                           ; preds = %bb.o
  %i.cz = inttoptr i64 %i.cw to ptr
  fence seq_cst
  %i.da = cmpxchg volatile ptr %i.cz, i64 0, i64 -9223372036854775808 acquire monotonic, align 8
  %i.db = extractvalue { i64, i1 } %i.da, 1
  fence seq_cst
  br i1 %i.db, label %ompi_osc_rdma_lock_acquire_exclusive.exit, label %bb.p

ompi_osc_rdma_lock_try_acquire_exclusive.exit.i:  ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #13
  store i64 -1, ptr %i.y, align 8, !tbaa !69
  %i.dc = load i8, ptr %i.cs, align 1, !tbaa !82
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !83
  %i.de = load ptr, ptr %i.cu, align 8, !tbaa !84
  %i.df = call fastcc i32 @ompi_osc_rdma_btl_cswap(ptr noundef %i.ac, i8 noundef zeroext %i.dc, ptr noundef %i.dd, i64 noundef %i.cw, ptr noundef %i.de, i64 noundef 0, i64 noundef -9223372036854775808, i32 noundef 0, ptr noundef nonnull %i.y) ; 2 uses
  %.not.i.i = icmp eq i32 %i.df, 0
  %i.dg = load i64, ptr %i.y, align 8
  %i.dh = icmp ne i64 %i.dg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #13
  %i.di = icmp eq i32 %i.df, 1
  %i.dj = select i1 %.not.i.i, i1 %i.dh, i1 %i.di, !prof !85
  br i1 %i.dj, label %bb.p, label %ompi_osc_rdma_lock_acquire_exclusive.exit

bb.p:                                             ; preds = %.split, %ompi_osc_rdma_lock_try_acquire_exclusive.exit.i
  %i.dk = call i32 @opal_progress() #13           ; 0 uses
  br label %bb.o, !llvm.loop !2

ompi_osc_rdma_lock_acquire_exclusive.exit:        ; preds = %ompi_osc_rdma_lock_try_acquire_exclusive.exit.i, %.split, %bb.m, %bb.l, %ompi_osc_rdma_peer_test_set_flag.exit
  %.044.a = phi i1 [ false, %ompi_osc_rdma_peer_test_set_flag.exit ], [ false, %bb.l ], [ false, %bb.m ], [ true, %.split ], [ true, %ompi_osc_rdma_lock_try_acquire_exclusive.exit.i ] ; 2 uses
  %.044 = phi i8 [ 0, %ompi_osc_rdma_peer_test_set_flag.exit ], [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %.split ], [ 1, %ompi_osc_rdma_lock_try_acquire_exclusive.exit.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 313
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !176, !range !65, !noundef !66
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %.critedge, label %bb.q

bb.q:                                             ; preds = %ompi_osc_rdma_lock_acquire_exclusive.exit
  %i.do = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 140 ; 7 uses
  %i.dq = load volatile i32, ptr %i.dp, align 4, !tbaa !76
  %i.dr = and i32 %i.dq, 2
  %.not = icmp eq i32 %i.dr, 0
  br i1 %.not, label %.critedge52, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = load volatile i32, ptr %i.dp, align 4, !tbaa !76
  %i.dt = trunc i32 %i.ds to i1
  br i1 %i.dt, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %i.ac, i64 311
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !80, !range !65, !noundef !66
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %.critedge52, label %.critedge

.critedge52:                                      ; preds = %bb.q, %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !87 ; 6 uses
  %i.dz = icmp eq i64 %i.dy, 4                    ; 2 uses
  %i.ea = and i64 %.190, 3
  %.not.i = icmp eq i64 %i.ea, 0
  %or.cond.i = and i1 %.not.i, %i.dz
  br i1 %or.cond.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge52
  %i.eb = icmp eq i64 %i.dy, 8
  %i.ec = and i64 %.190, 7
  %.not4.i = icmp eq i64 %i.ec, 0
  %or.cond = and i1 %.not4.i, %i.eb
  br i1 %or.cond, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.t
  %i.ed = getelementptr i8, ptr %i.ad, i64 16
  %.val98 = load ptr, ptr %i.ed, align 16, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #13
  br label %bb.v

bb.u:                                             ; preds = %.critedge52
  %i.ee = getelementptr i8, ptr %i.ad, i64 16
  %.val = load ptr, ptr %i.ee, align 16, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #13
  %i.ef = getelementptr inbounds nuw i8, ptr %.val, i64 1136
  %i.eg = load i32, ptr %i.ef, align 16, !tbaa !89
  %i.eh = and i32 %i.eg, 16777216
  %.not31.i56 = icmp eq i32 %i.eh, 0
  br i1 %.not31.i56, label %.critedge.sink.split, label %bb.v

bb.v:                                             ; preds = %.thread, %bb.u
  %.val99 = phi ptr [ %.val98, %.thread ], [ %.val, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #13
  %i.ei = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.ej = call i32 %i.ei(ptr noundef nonnull %i.w, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) #13, !inline_history !166 ; 2 uses
  %i.ek = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.el = call i32 %i.ek(ptr noundef %1, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) #13, !inline_history !166 ; 2 uses
  %i.em = icmp eq i32 %i.ej, 0
  %i.en = icmp eq i32 %i.el, 0
  %or.cond.i.i = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 1 %1, i64 %i.dy, i1 false)
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.eo = icmp slt i32 %i.ej, 0
  %i.ep = icmp slt i32 %i.el, 0
  %or.cond106 = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond106, label %osc_rdma_accelerator_mem_copy.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 48), align 8, !tbaa !92
  %i.er = call i32 %i.eq(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %i.w, ptr noundef %1, i64 noundef %i.dy, i32 noundef 0) #13, !inline_history !166
  %.not.i.i57 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i57, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.1) #13
  br label %osc_rdma_accelerator_mem_copy.exit.thread.i

osc_rdma_accelerator_mem_copy.exit.thread.i:      ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #13
  br label %.critedge.sink.split

bb.aa:                                            ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #13
  %i.es = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.et = call i32 %i.es(ptr noundef nonnull %i.x, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #13, !inline_history !166 ; 2 uses
  %i.eu = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.ev = call i32 %i.eu(ptr noundef %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #13, !inline_history !166 ; 2 uses
  %i.ew = icmp eq i32 %i.et, 0
  %i.ex = icmp eq i32 %i.ev, 0
  %or.cond.i34.i = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %or.cond.i34.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 1 %0, i64 %i.dy, i1 false)
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.ey = icmp slt i32 %i.et, 0
  %i.ez = icmp slt i32 %i.ev, 0
  %or.cond107 = select i1 %i.ey, i1 true, i1 %i.ez
  br i1 %or.cond107, label %osc_rdma_accelerator_mem_copy.exit37.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 48), align 8, !tbaa !92
  %i.fb = call i32 %i.fa(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %i.x, ptr noundef %0, i64 noundef %i.dy, i32 noundef 0) #13, !inline_history !166
  %.not.i35.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i35.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.1) #13
  br label %osc_rdma_accelerator_mem_copy.exit37.thread.i

osc_rdma_accelerator_mem_copy.exit37.thread.i:    ; preds = %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #13
  br label %.critedge.sink.split

bb.af:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #13
  %i.fc = getelementptr i8, ptr %3, i64 16
  %.val.i = load i16, ptr %i.fc, align 8, !tbaa !93
  %i.fd = lshr i16 %.val.i, 12
  %i.fe = and i16 %i.fd, 2
  %i.ff = zext i1 %i.dz to i16
  %spec.select1.i.i = or disjoint i16 %i.fe, %i.ff
  %spec.select.i.i = zext nneg i16 %spec.select1.i.i to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.do, i64 144
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !94
  %i.fi = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !95
  %i.fk = load i64, ptr %i.w, align 8, !tbaa !69
  %i.fl = load i64, ptr %i.x, align 8, !tbaa !69
  %i.fm = call fastcc i32 @ompi_osc_rdma_btl_cswap(ptr noundef %.val99, i8 noundef zeroext %i.fh, ptr noundef %i.fj, i64 noundef %.190, ptr noundef %.091, i64 noundef %i.fk, i64 noundef %i.fl, i32 noundef %spec.select.i.i, ptr noundef %2)
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.ag, label %.critedge.sink.split, !prof !85

bb.ag:                                            ; preds = %bb.af
  br i1 %.044.a, label %bb.ah, label %ompi_osc_rdma_lock_release_exclusive.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !81
  %i.fq = add i64 %i.fp, 16                       ; 2 uses
  %i.fr = load volatile i32, ptr %i.dp, align 4, !tbaa !76
  %i.fs = and i32 %i.fr, 4
  %.not9.i.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not9.i.i.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %i.do, i64 145
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !82
  %i.fv = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !83
  %i.fx = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !84
  %i.fz = call fastcc range(i32 2, 1) i32 @ompi_osc_rdma_btl_op(ptr noundef %.val99, i8 noundef zeroext %i.fu, ptr noundef %i.fw, i64 noundef %i.fq, ptr noundef %i.fy, i32 noundef 1, i64 noundef -9223372036854775808, i32 noundef 0, i1 noundef zeroext false)
  %.not.i.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i.i, label %ompi_osc_rdma_lock_release_exclusive.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @abort() #14
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.ga = inttoptr i64 %i.fq to ptr
  fence seq_cst
  %i.gb = atomicrmw volatile add ptr %i.ga, i64 -9223372036854775808 monotonic, align 8 ; 0 uses
  fence seq_cst
  br label %ompi_osc_rdma_lock_release_exclusive.exit.i.i

ompi_osc_rdma_lock_release_exclusive.exit.i.i:    ; preds = %bb.ak, %bb.ai, %bb.ag
  %i.gc = load i8, ptr @opal_uses_threads, align 1, !tbaa !77, !range !65, !noundef !66
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.al, label %bb.am, !prof !32

bb.al:                                            ; preds = %ompi_osc_rdma_lock_release_exclusive.exit.i.i
  %i.ge = atomicrmw volatile and ptr %i.dp, i32 -9 monotonic, align 4 ; 0 uses
  br label %ompi_osc_rdma_cas_atomic.exit.thread101

bb.am:                                            ; preds = %ompi_osc_rdma_lock_release_exclusive.exit.i.i
  %i.gf = load volatile i32, ptr %i.dp, align 4, !tbaa !67
  %i.gg = and i32 %i.gf, -9
  store volatile i32 %i.gg, ptr %i.dp, align 4, !tbaa !67
  %i.gh = load volatile i32, ptr %i.dp, align 4, !tbaa !67 ; 0 uses
  br label %ompi_osc_rdma_cas_atomic.exit.thread101

ompi_osc_rdma_cas_atomic.exit.thread101:          ; preds = %bb.al, %bb.am
  fence seq_cst
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #13
  br label %bb.di

.critedge.sink.split:                             ; preds = %bb.af, %osc_rdma_accelerator_mem_copy.exit37.thread.i, %osc_rdma_accelerator_mem_copy.exit.thread.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #13
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.t, %ompi_osc_rdma_lock_acquire_exclusive.exit, %bb.r, %bb.s
  %.pre135 = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 7 uses
  br i1 %.044.a, label %ompi_osc_rdma_lock_acquire_exclusive.exit63, label %bb.an

bb.an:                                            ; preds = %.critedge
  %i.gi = getelementptr inbounds nuw i8, ptr %.pre135, i64 140 ; 2 uses
  %i.gj = load volatile i32, ptr %i.gi, align 4, !tbaa !76
  %i.gk = trunc i32 %i.gj to i1
  br i1 %i.gk, label %ompi_osc_rdma_lock_acquire_exclusive.exit63, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = getelementptr inbounds nuw i8, ptr %.pre135, i64 56
  %i.gm = getelementptr inbounds nuw i8, ptr %.pre135, i64 145
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre135, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %.pre135, i64 64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  %i.gp = load i64, ptr %i.gl, align 8, !tbaa !81
  %i.gq = add i64 %i.gp, 16                       ; 2 uses
  %i.gr = load volatile i32, ptr %i.gi, align 4, !tbaa !76
  %i.gs = and i32 %i.gr, 4
  %.not10.i.i58 = icmp eq i32 %i.gs, 0
  br i1 %.not10.i.i58, label %ompi_osc_rdma_lock_try_acquire_exclusive.exit.i59, label %.split158

.split158:                                        ; preds = %bb.ap
  %i.gt = inttoptr i64 %i.gq to ptr
  fence seq_cst
  %i.gu = cmpxchg volatile ptr %i.gt, i64 0, i64 -9223372036854775808 acquire monotonic, align 8
  %i.gv = extractvalue { i64, i1 } %i.gu, 1
  fence seq_cst
  br i1 %i.gv, label %ompi_osc_rdma_lock_acquire_exclusive.exit63.loopexit, label %bb.aq

ompi_osc_rdma_lock_try_acquire_exclusive.exit.i59: ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #13
  store i64 -1, ptr %i.r, align 8, !tbaa !69
  %i.gw = load i8, ptr %i.gm, align 1, !tbaa !82
  %i.gx = load ptr, ptr %i.gn, align 8, !tbaa !83
  %i.gy = load ptr, ptr %i.go, align 8, !tbaa !84
  %i.gz = call fastcc i32 @ompi_osc_rdma_btl_cswap(ptr noundef %i.ac, i8 noundef zeroext %i.gw, ptr noundef %i.gx, i64 noundef %i.gq, ptr noundef %i.gy, i64 noundef 0, i64 noundef -9223372036854775808, i32 noundef 0, ptr noundef nonnull %i.r) ; 2 uses
  %.not.i.i61 = icmp eq i32 %i.gz, 0
  %i.ha = load i64, ptr %i.r, align 8
  %i.hb = icmp ne i64 %i.ha, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #13
  %i.hc = icmp eq i32 %i.gz, 1
  %i.hd = select i1 %.not.i.i61, i1 %i.hb, i1 %i.hc, !prof !85
  br i1 %i.hd, label %bb.aq, label %ompi_osc_rdma_lock_acquire_exclusive.exit63.loopexit

bb.aq:                                            ; preds = %.split158, %ompi_osc_rdma_lock_try_acquire_exclusive.exit.i59
  %i.he = call i32 @opal_progress() #13           ; 0 uses
  br label %bb.ap, !llvm.loop !2

ompi_osc_rdma_lock_acquire_exclusive.exit63.loopexit: ; preds = %.split158, %ompi_osc_rdma_lock_try_acquire_exclusive.exit.i59
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !39
  br label %ompi_osc_rdma_lock_acquire_exclusive.exit63

ompi_osc_rdma_lock_acquire_exclusive.exit63:      ; preds = %ompi_osc_rdma_lock_acquire_exclusive.exit63.loopexit, %bb.an, %.critedge
  %i.hf = phi ptr [ %.pre135, %.critedge ], [ %.pre135, %bb.an ], [ %.pre, %ompi_osc_rdma_lock_acquire_exclusive.exit63.loopexit ] ; 15 uses
  %.1 = phi i8 [ %.044, %.critedge ], [ %.044, %bb.an ], [ 1, %ompi_osc_rdma_lock_acquire_exclusive.exit63.loopexit ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 140 ; 16 uses
  %i.hh = load volatile i32, ptr %i.hg, align 4, !tbaa !76
  %i.hi = and i32 %i.hh, 2
  %.not108 = icmp eq i32 %i.hi, 0
  %7 = trunc nuw i8 %.1 to i1                     ; 5 uses
  br i1 %.not108, label %bb.bp, label %bb.ar

bb.ar:                                            ; preds = %ompi_osc_rdma_lock_acquire_exclusive.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  %i.hj = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.hk = call i32 %i.hj(ptr noundef %2, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #13, !inline_history !167 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #13
  %i.hl = inttoptr i64 %.190 to ptr               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #13
  %i.hm = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.hn = call i32 %i.hm(ptr noundef %i.hl, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #13, !inline_history !167 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  %i.ho = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.hp = call i32 %i.ho(ptr noundef %1, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #13, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  %i.hq = icmp sgt i32 %i.hk, 0
  %i.hr = icmp sgt i32 %i.hn, 0
  %or.cond.i64 = select i1 %i.hq, i1 true, i1 %i.hr
  br i1 %or.cond.i64, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hs = icmp eq i32 %i.hk, 0
  %i.ht = icmp eq i32 %i.hn, 0
  %or.cond3.i = select i1 %i.hs, i1 %i.ht, i1 false
  br i1 %or.cond3.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %i.hl, i64 %i.hv, i1 false)
  br label %.thread.i

bb.au:                                            ; preds = %bb.as
  %i.hw = icmp slt i32 %i.hk, 0
  br i1 %i.hw, label %ompi_osc_rdma_cas_local.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = icmp slt i32 %i.hn, 0
  br i1 %i.hx, label %ompi_osc_rdma_cas_local.exit.thread, label %.thread.i

bb.aw:                                            ; preds = %bb.ar
  %i.hy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 48), align 8, !tbaa !92
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !87
  %i.ib = call i32 %i.hy(i32 noundef -1, i32 noundef -1, ptr noundef %2, ptr noundef %i.hl, i64 noundef %i.ia, i32 noundef 0) #13, !inline_history !168 ; 0 uses
  %.not.not.i = icmp eq i32 %i.hk, 0
  br i1 %.not.not.i, label %.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ic = load i64, ptr %i.hz, align 8, !tbaa !87 ; 2 uses
  %i.id = call noalias ptr @malloc(i64 noundef %i.ic) #15 ; 3 uses
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 48), align 8, !tbaa !92
  %i.if = call i32 %i.ie(i32 noundef -1, i32 noundef -1, ptr noundef %i.id, ptr noundef %2, i64 noundef %i.ic, i32 noundef 3) #13, !inline_history !168 ; 2 uses
  %.not65.i = icmp eq i32 %i.if, 0
  br i1 %.not65.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at
  %.not2.i = phi i1 [ true, %bb.ax ], [ false, %bb.aw ], [ false, %bb.at ], [ false, %bb.av ] ; 2 uses
  %.051.i = phi ptr [ %i.id, %bb.ax ], [ %2, %bb.aw ], [ %2, %bb.at ], [ %2, %bb.av ] ; 3 uses
  %.not66.not.i = icmp eq i32 %i.hp, 0            ; 3 uses
  br i1 %.not66.not.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.thread.i
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !87 ; 2 uses
  %i.ii = call noalias ptr @malloc(i64 noundef %i.ih) #15 ; 4 uses
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 48), align 8, !tbaa !92
  %i.ik = call i32 %i.ij(i32 noundef -1, i32 noundef -1, ptr noundef %i.ii, ptr noundef %1, i64 noundef %i.ih, i32 noundef 3) #13, !inline_history !168 ; 2 uses
  %.not67.i = icmp eq i32 %i.ik, 0
  br i1 %.not67.i, label %bb.az, label %.split.i65

bb.az:                                            ; preds = %bb.ay, %.thread.i
  %.055.i = phi ptr [ %i.ii, %bb.ay ], [ %1, %.thread.i ]
  %.053.i = phi ptr [ %i.ii, %bb.ay ], [ null, %.thread.i ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.im = load i64, ptr %i.il, align 8, !tbaa !87 ; 3 uses
  %bcmp.i = call i32 @bcmp(ptr %.055.i, ptr %.051.i, i64 %i.im)
  %i.in = icmp eq i32 %bcmp.i, 0
  br i1 %i.in, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  %i.io = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.ip = call i32 %i.io(ptr noundef %i.hl, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #13, !inline_history !169 ; 3 uses
  %i.iq = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.ir = call i32 %i.iq(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #13, !inline_history !169 ; 3 uses
  %i.is = icmp eq i32 %i.ip, 0
  %i.it = icmp eq i32 %i.ir, 0
  %or.cond.i.i69 = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond.i.i69, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hl, ptr align 1 %0, i64 %i.im, i1 false)
  br label %osc_rdma_accelerator_mem_copy.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.iu = icmp slt i32 %i.ip, 0
  br i1 %i.iu, label %osc_rdma_accelerator_mem_copy.exit.thread.i71, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iv = icmp slt i32 %i.ir, 0
  br i1 %i.iv, label %osc_rdma_accelerator_mem_copy.exit.thread.i71, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 48), align 8, !tbaa !92
  %i.ix = call i32 %i.iw(i32 noundef -1, i32 noundef -1, ptr noundef %i.hl, ptr noundef %0, i64 noundef %i.im, i32 noundef 0) #13, !inline_history !169 ; 2 uses
  %.not.i.i70 = icmp eq i32 %i.ix, 0
  br i1 %.not.i.i70, label %osc_rdma_accelerator_mem_copy.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.1) #13
  br label %osc_rdma_accelerator_mem_copy.exit.thread.i71

osc_rdma_accelerator_mem_copy.exit.thread.i71:    ; preds = %bb.bf, %bb.bd, %bb.bc
  %.0.i.ph.i72 = phi i32 [ %i.ix, %bb.bf ], [ %i.ip, %bb.bc ], [ %i.ir, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br i1 %.not66.not.i, label %bb.bo, label %.split.i65

osc_rdma_accelerator_mem_copy.exit.i:             ; preds = %bb.be, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %bb.bg

bb.bg:                                            ; preds = %osc_rdma_accelerator_mem_copy.exit.i, %bb.az
  br i1 %7, label %bb.bh, label %ompi_osc_rdma_lock_release_exclusive.exit.i.i66

bb.bh:                                            ; preds = %bb.bg
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !81
  %i.ja = add i64 %i.iz, 16                       ; 2 uses
  %i.jb = load volatile i32, ptr %i.hg, align 4, !tbaa !76
  %i.jc = and i32 %i.jb, 4
  %.not9.i.i.i67 = icmp eq i32 %i.jc, 0
  br i1 %.not9.i.i.i67, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hf, i64 145
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !82
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !83
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hf, i64 64
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !84
  %i.jj = call fastcc range(i32 2, 1) i32 @ompi_osc_rdma_btl_op(ptr noundef %i.ac, i8 noundef zeroext %i.je, ptr noundef %i.jg, i64 noundef %i.ja, ptr noundef %i.ji, i32 noundef 1, i64 noundef -9223372036854775808, i32 noundef 0, i1 noundef zeroext false)
  %.not.i.i.i68 = icmp eq i32 %i.jj, 0
  br i1 %.not.i.i.i68, label %ompi_osc_rdma_lock_release_exclusive.exit.i.i66, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @abort() #14
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.jk = inttoptr i64 %i.ja to ptr
  fence seq_cst
  %i.jl = atomicrmw volatile add ptr %i.jk, i64 -9223372036854775808 monotonic, align 8 ; 0 uses
  fence seq_cst
  br label %ompi_osc_rdma_lock_release_exclusive.exit.i.i66

ompi_osc_rdma_lock_release_exclusive.exit.i.i66:  ; preds = %bb.bk, %bb.bi, %bb.bg
  %i.jm = load i8, ptr @opal_uses_threads, align 1, !tbaa !77, !range !65, !noundef !66
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.bl, label %bb.bm, !prof !32

bb.bl:                                            ; preds = %ompi_osc_rdma_lock_release_exclusive.exit.i.i66
  %i.jo = atomicrmw volatile and ptr %i.hg, i32 -9 monotonic, align 4 ; 0 uses
  br label %bb.bn

bb.bm:                                            ; preds = %ompi_osc_rdma_lock_release_exclusive.exit.i.i66
  %i.jp = load volatile i32, ptr %i.hg, align 4, !tbaa !67
  %i.jq = and i32 %i.jp, -9
  store volatile i32 %i.jq, ptr %i.hg, align 4, !tbaa !67
  %i.jr = load volatile i32, ptr %i.hg, align 4, !tbaa !67 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  fence seq_cst
  br i1 %.not66.not.i, label %bb.bo, label %.split.i65

.split.i65:                                       ; preds = %bb.bn, %osc_rdma_accelerator_mem_copy.exit.thread.i71, %bb.ay
  %.15413.i = phi ptr [ %.053.i, %osc_rdma_accelerator_mem_copy.exit.thread.i71 ], [ %.053.i, %bb.bn ], [ %i.ii, %bb.ay ]
  %.15712.i = phi i32 [ %.0.i.ph.i72, %osc_rdma_accelerator_mem_copy.exit.thread.i71 ], [ 0, %bb.bn ], [ %i.ik, %bb.ay ] ; 2 uses
  call void @free(ptr noundef %.15413.i) #13
  br i1 %.not2.i, label %.thread24.i, label %ompi_osc_rdma_cas_local.exit

bb.bo:                                            ; preds = %bb.bn, %osc_rdma_accelerator_mem_copy.exit.thread.i71
  %.15711.i = phi i32 [ %.0.i.ph.i72, %osc_rdma_accelerator_mem_copy.exit.thread.i71 ], [ 0, %bb.bn ] ; 2 uses
  br i1 %.not2.i, label %.thread24.i, label %ompi_osc_rdma_cas_local.exit

.thread24.i:                                      ; preds = %bb.bo, %.split.i65, %bb.ax
  %.1571129.i = phi i32 [ %.15712.i, %.split.i65 ], [ %.15711.i, %bb.bo ], [ %i.if, %bb.ax ]
  %.1521428.i = phi ptr [ %.051.i, %.split.i65 ], [ %.051.i, %bb.bo ], [ %i.id, %bb.ax ]
  call void @free(ptr noundef %.1521428.i) #13
  br label %ompi_osc_rdma_cas_local.exit

bb.bp:                                            ; preds = %ompi_osc_rdma_lock_acquire_exclusive.exit63
  %i.js = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.jt = load ptr, ptr %i.js, align 16, !tbaa !88 ; 11 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !87 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store ptr null, ptr %i.g, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store volatile i8 0, ptr %i.h, align 1, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  store ptr %0, ptr %i.i, align 8, !tbaa !97
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hf, i64 144 ; 3 uses
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !94
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hf, i64 40 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !95
  %i.ka = call i32 @ompi_osc_get_data_blocking(ptr noundef %i.jt, i8 noundef zeroext %i.jx, ptr noundef %i.jz, i64 noundef %.190, ptr noundef %.091, ptr noundef %2, i64 noundef %i.jv) #13 ; 2 uses
  %.not.i73 = icmp eq i32 %i.ka, 0
  br i1 %.not.i73, label %bb.bq, label %cas_rdma.exit, !prof !85

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.kb = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.kc = call i32 %i.kb(ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #13, !inline_history !170 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.kd = icmp sgt i32 %i.kc, 0                   ; 3 uses
  br i1 %i.kd, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ke = call noalias ptr @malloc(i64 noundef %i.jv) #15 ; 2 uses
  %i.kf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 48), align 8, !tbaa !92
  %i.kg = call i32 %i.kf(i32 noundef -1, i32 noundef -1, ptr noundef %i.ke, ptr noundef %2, i64 noundef %i.jv, i32 noundef 3) #13, !inline_history !171 ; 0 uses
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.kh = icmp eq i32 %i.kc, 0
  br i1 %i.kh, label %bb.bt, label %cas_rdma.exit

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.080.i = phi ptr [ %i.ke, %bb.br ], [ %2, %bb.bs ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ki = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.kj = call i32 %i.ki(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #13, !inline_history !170 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kl = icmp eq i32 %i.kj, 0
  br i1 %i.kl, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.kd, label %bb.bw, label %cas_rdma.exit

bb.bw:                                            ; preds = %bb.bv
  call void @free(ptr noundef %.080.i) #13
  br label %cas_rdma.exit

bb.bx:                                            ; preds = %bb.bu
  %i.km = call i32 @memcmp(ptr noundef %.080.i, ptr noundef %1, i64 noundef %i.jv) #16
  br label %bb.bz

bb.by:                                            ; preds = %bb.bt
  %i.kn = call noalias ptr @malloc(i64 noundef %i.jv) #15 ; 3 uses
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 48), align 8, !tbaa !92
  %i.kp = call i32 %i.ko(i32 noundef -1, i32 noundef -1, ptr noundef %i.kn, ptr noundef %1, i64 noundef %i.jv, i32 noundef 3) #13, !inline_history !171 ; 0 uses
  %i.kq = call i32 @memcmp(ptr noundef %.080.i, ptr noundef %i.kn, i64 noundef %i.jv) #16
  call void @free(ptr noundef %i.kn) #13
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.kr = phi i32 [ %i.kq, %bb.by ], [ %i.km, %bb.bx ]
  br i1 %i.kd, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @free(ptr noundef %.080.i) #13
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.not91.i = icmp eq i32 %i.kr, 0
  br i1 %.not91.i, label %bb.cj, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %7, label %bb.cd, label %ompi_osc_rdma_lock_release_exclusive.exit.i.i74

bb.cd:                                            ; preds = %bb.cc
  %i.ks = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !81
  %i.ku = add i64 %i.kt, 16                       ; 2 uses
  %i.kv = load volatile i32, ptr %i.hg, align 4, !tbaa !76
  %i.kw = and i32 %i.kv, 4
  %.not9.i.i.i76 = icmp eq i32 %i.kw, 0
  br i1 %.not9.i.i.i76, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.kx = getelementptr inbounds nuw i8, ptr %i.hf, i64 145
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !82
  %i.kz = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !83
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hf, i64 64
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !84
  %i.ld = call fastcc range(i32 2, 1) i32 @ompi_osc_rdma_btl_op(ptr noundef %i.jt, i8 noundef zeroext %i.ky, ptr noundef %i.la, i64 noundef %i.ku, ptr noundef %i.lc, i32 noundef 1, i64 noundef -9223372036854775808, i32 noundef 0, i1 noundef zeroext false)
  %.not.i.i.i77 = icmp eq i32 %i.ld, 0
  br i1 %.not.i.i.i77, label %ompi_osc_rdma_lock_release_exclusive.exit.i.i74, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @abort() #14
  unreachable

bb.cg:                                            ; preds = %bb.cd
  %i.le = inttoptr i64 %i.ku to ptr
  fence seq_cst
  %i.lf = atomicrmw volatile add ptr %i.le, i64 -9223372036854775808 monotonic, align 8 ; 0 uses
  fence seq_cst
  br label %ompi_osc_rdma_lock_release_exclusive.exit.i.i74

ompi_osc_rdma_lock_release_exclusive.exit.i.i74:  ; preds = %bb.cg, %bb.ce, %bb.cc
  %i.lg = load i8, ptr @opal_uses_threads, align 1, !tbaa !77, !range !65, !noundef !66
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.ch, label %bb.ci, !prof !32

bb.ch:                                            ; preds = %ompi_osc_rdma_lock_release_exclusive.exit.i.i74
  %i.li = atomicrmw volatile and ptr %i.hg, i32 -9 monotonic, align 4 ; 0 uses
  br label %ompi_osc_rdma_peer_accumulate_cleanup.exit.i75

bb.ci:                                            ; preds = %ompi_osc_rdma_lock_release_exclusive.exit.i.i74
  %i.lj = load volatile i32, ptr %i.hg, align 4, !tbaa !67
  %i.lk = and i32 %i.lj, -9
  store volatile i32 %i.lk, ptr %i.hg, align 4, !tbaa !67
  %i.ll = load volatile i32, ptr %i.hg, align 4, !tbaa !67 ; 0 uses
  br label %ompi_osc_rdma_peer_accumulate_cleanup.exit.i75

ompi_osc_rdma_peer_accumulate_cleanup.exit.i75:   ; preds = %bb.ci, %bb.ch
  fence seq_cst
  br label %cas_rdma.exit

bb.cj:                                            ; preds = %bb.cb
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jt, i64 1096
  %i.ln = load i8, ptr %i.lm, align 8, !tbaa !98, !range !65, !noundef !66
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.ck, label %.thread108.i

bb.ck:                                            ; preds = %bb.cj
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jt, i64 1072
  %i.lq = load i8, ptr %i.lp, align 16, !tbaa !99, !range !65, !noundef !66
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jt, i64 1080
  br label %ompi_osc_rdma_selected_btl.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.lt = load i8, ptr %i.jw, align 8, !tbaa !94
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jt, i64 1080
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !100
  %i.lw = zext i8 %i.lt to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.lw
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !102
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  br label %ompi_osc_rdma_selected_btl.exit.i

ompi_osc_rdma_selected_btl.exit.i:                ; preds = %bb.cm, %bb.cl
  %.0.in.i.i = phi ptr [ %i.ls, %bb.cl ], [ %i.lz, %bb.cm ]
  %.0.i.i79 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !100
  %i.ma = getelementptr inbounds nuw i8, ptr %.0.i.i79, i64 128
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !177
  %i.mc = icmp ugt i64 %i.jv, %i.mb
  br i1 %i.mc, label %.preheader112.i, label %.thread108.i

.preheader112.i:                                  ; preds = %ompi_osc_rdma_selected_btl.exit.i
  %i.md = call fastcc i32 @ompi_osc_rdma_frag_alloc(ptr noundef nonnull %i.jt, i64 noundef %i.jv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i)
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %._crit_edge.i, label %.lr.ph.i80, !prof !178

.lr.ph.i80:                                       ; preds = %.preheader112.i, %.lr.ph.i80
  %i.mf = call i32 @opal_progress() #13           ; 0 uses
  %i.mg = call fastcc i32 @ompi_osc_rdma_frag_alloc(ptr noundef nonnull %i.jt, i64 noundef %i.jv, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i)
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %._crit_edge.i, label %.lr.ph.i80, !prof !179

._crit_edge.i:                                    ; preds = %.lr.ph.i80, %.preheader112.i
  %i.mi = load ptr, ptr %i.i, align 8, !tbaa !97  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.mj = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.mk = call i32 %i.mj(ptr noundef %i.mi, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13, !inline_history !172 ; 3 uses
  %i.ml = load ptr, ptr @opal_accelerator, align 8, !tbaa !91
  %i.mm = call i32 %i.ml(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13, !inline_history !172 ; 3 uses
  %i.mn = icmp eq i32 %i.mk, 0
  %i.mo = icmp eq i32 %i.mm, 0
  %or.cond.i.i81 = select i1 %i.mn, i1 %i.mo, i1 false
  br i1 %or.cond.i.i81, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mi, ptr align 1 %0, i64 %i.jv, i1 false)
  br label %bb.cs

bb.co:                                            ; preds = %._crit_edge.i
  %i.mp = icmp slt i32 %i.mk, 0
  br i1 %i.mp, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mq = icmp slt i32 %i.mm, 0
  br i1 %i.mq, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_accelerator, i64 48), align 8, !tbaa !92
  %i.ms = call i32 %i.mr(i32 noundef -1, i32 noundef -1, ptr noundef %i.mi, ptr noundef %0, i64 noundef %i.jv, i32 noundef 0) #13, !inline_history !172 ; 2 uses
  %.not.i.i82 = icmp eq i32 %i.ms, 0
  br i1 %.not.i.i82, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.1) #13
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.mt = load ptr, ptr %i.g, align 8, !tbaa !96  ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 80
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !109
  br label %.thread108.i

bb.ct:                                            ; preds = %bb.cr, %bb.cp, %bb.co
  %.0.i96.ph.i = phi i32 [ %i.ms, %bb.cr ], [ %i.mk, %bb.co ], [ %i.mm, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %cas_rdma.exit

.thread108.i:                                     ; preds = %bb.cs, %ompi_osc_rdma_selected_btl.exit.i, %bb.cj
  %i.mw = phi ptr [ null, %bb.cj ], [ null, %ompi_osc_rdma_selected_btl.exit.i ], [ %i.mt, %bb.cs ] ; 3 uses
  %i.mx = phi ptr [ %0, %bb.cj ], [ %0, %ompi_osc_rdma_selected_btl.exit.i ], [ %i.mi, %bb.cs ] ; 2 uses
  %.2.i = phi ptr [ null, %bb.cj ], [ null, %ompi_osc_rdma_selected_btl.exit.i ], [ %i.mv, %bb.cs ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.jt, i64 1072
  %i.mz = getelementptr i8, ptr %i.jt, i64 1080
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cw, %.thread108.i
  %i.na = load ptr, ptr %i.jy, align 8, !tbaa !95 ; 2 uses
  %i.nb = load i8, ptr %i.my, align 16, !tbaa !99, !range !65, !noundef !66
  %i.nc = trunc nuw i8 %i.nb to i1
  %.0.i.i.i = load ptr, ptr %i.mz, align 8, !tbaa !100 ; 3 uses
  br i1 %i.nc, label %ompi_osc_rdma_selected_btl.exit.i.i, label %bb.cv

ompi_osc_rdma_selected_btl.exit.i.i:              ; preds = %bb.cu
  %i.nd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 208
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !180
  %i.nf = call i32 %i.ne(ptr noundef %.0.i.i.i, ptr noundef %i.na, ptr noundef %i.mx, i64 noundef %.190, ptr noundef %.2.i, ptr noundef %.091, i64 noundef %i.jv, i32 noundef 0, i32 noundef 255, ptr noundef nonnull @ompi_osc_rdma_cas_put_complete, ptr noundef nonnull %i.h, ptr noundef null) #13, !inline_history !173
  br label %ompi_osc_rdma_btl_put.exit.i

bb.cv:                                            ; preds = %bb.cu
  %i.ng = load i8, ptr %i.jw, align 8, !tbaa !94
  %i.nh = zext i8 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.nh
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !102 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 64
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !181
  %i.nm = call i32 %i.nl(ptr noundef %i.nj, ptr noundef %i.na, ptr noundef %i.mx, i64 noundef %.190, ptr noundef %.2.i, ptr noundef %.091, i64 noundef %i.jv, i32 noundef 0, i32 noundef 255, ptr noundef nonnull @ompi_osc_rdma_cas_put_complete, ptr noundef nonnull %i.h, ptr noundef null) #13, !inline_history !173
  br label %ompi_osc_rdma_btl_put.exit.i

ompi_osc_rdma_btl_put.exit.i:                     ; preds = %bb.cv, %ompi_osc_rdma_selected_btl.exit.i.i
  %.0.i97.i = phi i32 [ %i.nf, %ompi_osc_rdma_selected_btl.exit.i.i ], [ %i.nm, %bb.cv ] ; 3 uses
  %i.nn = add i32 %.0.i97.i, 1
  %or.cond.i78 = icmp ult i32 %i.nn, -2
  br i1 %or.cond.i78, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %ompi_osc_rdma_btl_put.exit.i
  %i.no = call i32 @opal_progress() #13           ; 0 uses
  br label %bb.cu

bb.cx:                                            ; preds = %ompi_osc_rdma_btl_put.exit.i
  %i.np = icmp eq i32 %.0.i97.i, 0
  br i1 %i.np, label %.preheader.i, label %cas_rdma.exit

.preheader.i:                                     ; preds = %bb.cx
  %i.nq = load volatile i8, ptr %i.h, align 1, !tbaa !77, !range !65, !noundef !66
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %._crit_edge114.i, label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %.preheader.i, %.lr.ph113.i
  %i.ns = call i32 @opal_progress() #13           ; 0 uses
  %i.nt = load volatile i8, ptr %i.h, align 1, !tbaa !77, !range !65, !noundef !66
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %._crit_edge114.i, label %.lr.ph113.i, !llvm.loop !174

._crit_edge114.i:                                 ; preds = %.lr.ph113.i, %.preheader.i
  %.not94.i = icmp eq ptr %i.mw, null
  br i1 %.not94.i, label %ompi_osc_rdma_frag_complete.exit.i, label %bb.cy

bb.cy:                                            ; preds = %._crit_edge114.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mw, i64 56 ; 5 uses
  %i.nw = load i8, ptr @opal_uses_threads, align 1, !tbaa !77, !range !65, !noundef !66
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %bb.cz, label %bb.da, !prof !32

bb.cz:                                            ; preds = %bb.cy
  %i.ny = atomicrmw volatile add ptr %i.nv, i32 -1 monotonic, align 4
  %i.nz = add i32 %i.ny, -1
  br label %opal_thread_add_fetch_32.exit.i.i

bb.da:                                            ; preds = %bb.cy
  %i.oa = load volatile i32, ptr %i.nv, align 4, !tbaa !67
  %i.ob = add nsw i32 %i.oa, -1
  store volatile i32 %i.ob, ptr %i.nv, align 4, !tbaa !67
  %i.oc = load volatile i32, ptr %i.nv, align 4, !tbaa !67
  br label %opal_thread_add_fetch_32.exit.i.i

opal_thread_add_fetch_32.exit.i.i:                ; preds = %bb.da, %bb.cz
  %.0.i.i98.i = phi i32 [ %i.nz, %bb.cz ], [ %i.oc, %bb.da ]
  %i.od = icmp eq i32 %.0.i.i98.i, 0
  br i1 %i.od, label %bb.db, label %ompi_osc_rdma_frag_complete.exit.i

bb.db:                                            ; preds = %opal_thread_add_fetch_32.exit.i.i
  fence acquire
  %i.oe = atomicrmw volatile xchg ptr %i.nv, i32 1 monotonic, align 4 ; 0 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.mw, i64 64
  %i.og = atomicrmw volatile xchg ptr %i.of, i64 0 monotonic, align 8 ; 0 uses
  br label %ompi_osc_rdma_frag_complete.exit.i

ompi_osc_rdma_frag_complete.exit.i:               ; preds = %bb.db, %opal_thread_add_fetch_32.exit.i.i, %._crit_edge114.i
  br i1 %7, label %bb.dc, label %ompi_osc_rdma_lock_release_exclusive.exit.i99.i

bb.dc:                                            ; preds = %ompi_osc_rdma_frag_complete.exit.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !81
  %i.oj = add i64 %i.oi, 16                       ; 2 uses
  %i.ok = load volatile i32, ptr %i.hg, align 4, !tbaa !76
  %i.ol = and i32 %i.ok, 4
  %.not9.i.i100.i = icmp eq i32 %i.ol, 0
  br i1 %.not9.i.i100.i, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.om = getelementptr inbounds nuw i8, ptr %i.hf, i64 145
  %i.on = load i8, ptr %i.om, align 1, !tbaa !82
  %i.oo = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !83
  %i.oq = getelementptr inbounds nuw i8, ptr %i.hf, i64 64
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !84
  %i.os = call fastcc range(i32 2, 1) i32 @ompi_osc_rdma_btl_op(ptr noundef nonnull %i.jt, i8 noundef zeroext %i.on, ptr noundef %i.op, i64 noundef %i.oj, ptr noundef %i.or, i32 noundef 1, i64 noundef -9223372036854775808, i32 noundef 0, i1 noundef zeroext false)
  %.not.i.i101.i = icmp eq i32 %i.os, 0
  br i1 %.not.i.i101.i, label %ompi_osc_rdma_lock_release_exclusive.exit.i99.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @abort() #14
  unreachable

bb.df:                                            ; preds = %bb.dc
  %i.ot = inttoptr i64 %i.oj to ptr
  fence seq_cst
  %i.ou = atomicrmw volatile add ptr %i.ot, i64 -9223372036854775808 monotonic, align 8 ; 0 uses
  fence seq_cst
  br label %ompi_osc_rdma_lock_release_exclusive.exit.i99.i

ompi_osc_rdma_lock_release_exclusive.exit.i99.i:  ; preds = %bb.df, %bb.dd, %ompi_osc_rdma_frag_complete.exit.i
  %i.ov = load i8, ptr @opal_uses_threads, align 1, !tbaa !77, !range !65, !noundef !66
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.dg, label %bb.dh, !prof !32

bb.dg:                                            ; preds = %ompi_osc_rdma_lock_release_exclusive.exit.i99.i
  %i.ox = atomicrmw volatile and ptr %i.hg, i32 -9 monotonic, align 4 ; 0 uses
  br label %ompi_osc_rdma_peer_accumulate_cleanup.exit102.i

bb.dh:                                            ; preds = %ompi_osc_rdma_lock_release_exclusive.exit.i99.i
  %i.oy = load volatile i32, ptr %i.hg, align 4, !tbaa !67
  %i.oz = and i32 %i.oy, -9
  store volatile i32 %i.oz, ptr %i.hg, align 4, !tbaa !67
  %i.pa = load volatile i32, ptr %i.hg, align 4, !tbaa !67 ; 0 uses
  br label %ompi_osc_rdma_peer_accumulate_cleanup.exit102.i

ompi_osc_rdma_peer_accumulate_cleanup.exit102.i:  ; preds = %bb.dh, %bb.dg
  fence seq_cst
  br label %cas_rdma.exit

cas_rdma.exit:                                    ; preds = %bb.bp, %bb.bs, %bb.bv, %bb.bw, %ompi_osc_rdma_peer_accumulate_cleanup.exit.i75, %bb.ct, %bb.cx, %ompi_osc_rdma_peer_accumulate_cleanup.exit102.i
  %.183.i = phi i32 [ %i.ka, %bb.bp ], [ 0, %ompi_osc_rdma_peer_accumulate_cleanup.exit.i75 ], [ %i.kj, %bb.bv ], [ 0, %ompi_osc_rdma_peer_accumulate_cleanup.exit102.i ], [ %.0.i96.ph.i, %bb.ct ], [ %i.kc, %bb.bs ], [ %i.kj, %bb.bw ], [ %.0.i97.i, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %ompi_osc_rdma_cas_local.exit

ompi_osc_rdma_cas_local.exit:                     ; preds = %.thread24.i, %bb.bo, %.split.i65, %cas_rdma.exit
  %.0 = phi i32 [ %.183.i, %cas_rdma.exit ], [ %.15711.i, %bb.bo ], [ %.15712.i, %.split.i65 ], [ %.1571129.i, %.thread24.i ] ; 2 uses
  %.not50 = icmp eq i32 %.0, 0
  br i1 %.not50, label %bb.di, label %ompi_osc_rdma_cas_local.exit.ompi_osc_rdma_cas_local.exit.thread_crit_edge, !prof !112

ompi_osc_rdma_cas_local.exit.ompi_osc_rdma_cas_local.exit.thread_crit_edge: ; preds = %ompi_osc_rdma_cas_local.exit
  %.pre136 = trunc nuw i8 %.1 to i1
  br label %ompi_osc_rdma_cas_local.exit.thread

ompi_osc_rdma_cas_local.exit.thread:              ; preds = %ompi_osc_rdma_cas_local.exit.ompi_osc_rdma_cas_local.exit.thread_crit_edge, %bb.au, %bb.av
  %.pre-phi = phi i1 [ %.pre136, %ompi_osc_rdma_cas_local.exit.ompi_osc_rdma_cas_local.exit.thread_crit_edge ], [ %7, %bb.au ], [ %7, %bb.av ]
  %.0105 = phi i32 [ %.0, %ompi_osc_rdma_cas_local.exit.ompi_osc_rdma_cas_local.exit.thread_crit_edge ], [ %i.hk, %bb.au ], [ %i.hn, %bb.av ]
  %i.pb = load ptr, ptr %i.aa, align 8, !tbaa !39
  call fastcc void @ompi_osc_rdma_peer_accumulate_cleanup(ptr noundef %i.ac, ptr noundef %i.pb, i1 noundef zeroext %.pre-phi)
  br label %bb.di

bb.di:                                            ; preds = %ompi_osc_rdma_cas_atomic.exit.thread101, %osc_rdma_get_remote_segment.exit.thread, %ompi_osc_rdma_cas_local.exit.thread, %ompi_osc_rdma_cas_local.exit, %bb.a
  %.146 = phi i32 [ -102, %bb.a ], [ %.1.i.ph, %osc_rdma_get_remote_segment.exit.thread ], [ 0, %ompi_osc_rdma_cas_atomic.exit.thread101 ], [ %.0105, %ompi_osc_rdma_cas_local.exit.thread ], [ 0, %ompi_osc_rdma_cas_local.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #13
  ret i32 %.146
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @ompi_osc_rdma_module_sync_lookup(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.f = load i32, ptr %i.e, align 8, !tbaa !182
  switch i32 %i.f, label %bb.s [
    i32 0, label %bb.b
    i32 1, label %bb.h
    i32 2, label %bb.n
    i32 3, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 310
  %i.h = load i8, ptr %i.g, align 2, !tbaa !183, !range !65, !noundef !66
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !185  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.o = call i32 @opal_hash_table_get_value_uint32(ptr noundef nonnull %i.n, i32 noundef %1, ptr noundef nonnull %i.c) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.in.i = phi ptr [ %i.c, %bb.e ], [ %i.m, %bb.d ]
  %i.p = load ptr, ptr %.in.i, align 8, !tbaa !184 ; 3 uses
  %.not9.i = icmp eq ptr %i.p, null
  br i1 %.not9.i, label %ompi_osc_rdma_module_lock_find.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !100
  store ptr %i.r, ptr %2, align 8, !tbaa !39
  br label %ompi_osc_rdma_module_lock_find.exit

ompi_osc_rdma_module_lock_find.exit:              ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.critedge

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !186  ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.w = call i32 @opal_hash_table_get_value_uint32(ptr noundef nonnull %i.v, i32 noundef %1, ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %ompi_osc_module_get_peer.exit.i

bb.j:                                             ; preds = %bb.h
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  br label %ompi_osc_module_get_peer.exit.i

ompi_osc_module_get_peer.exit.i:                  ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.x, %bb.i ], [ %i.aa, %bb.j ] ; 2 uses
  %.not.i22 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i22, label %bb.k, label %ompi_osc_rdma_module_peer.exit

bb.k:                                             ; preds = %ompi_osc_module_get_peer.exit.i
  %i.ab = call ptr @ompi_osc_rdma_peer_lookup(ptr noundef nonnull %0, i32 noundef %1) #13
  br label %ompi_osc_rdma_module_peer.exit

ompi_osc_rdma_module_peer.exit:                   ; preds = %ompi_osc_module_get_peer.exit.i, %bb.k
  %.0.i = phi ptr [ %i.ab, %bb.k ], [ %.0.i.i, %ompi_osc_module_get_peer.exit.i ] ; 3 uses
  store ptr %.0.i, ptr %2, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ad = load i32, ptr %i.ac, align 16, !tbaa !187
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.l, label %.critedge

bb.l:                                             ; preds = %ompi_osc_rdma_module_peer.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 140
  %i.ag = load volatile i32, ptr %i.af, align 4, !tbaa !76
  %i.ah = and i32 %i.ag, 128
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.m, label %.critedge, !prof !32

bb.m:                                             ; preds = %bb.l
  %i.ai = call i32 @ompi_osc_rdma_demand_lock_peer(ptr noundef nonnull %0, ptr noundef nonnull %.0.i) #13 ; 0 uses
  br label %.critedge

bb.n:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i8 1, ptr %i.aj, align 4, !tbaa !188
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !186 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ao = call i32 @opal_hash_table_get_value_uint32(ptr noundef nonnull %i.an, i32 noundef %1, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %ompi_osc_module_get_peer.exit.i23

bb.p:                                             ; preds = %bb.n
  %i.aq = sext i32 %1 to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  br label %ompi_osc_module_get_peer.exit.i23

ompi_osc_module_get_peer.exit.i23:                ; preds = %bb.p, %bb.o
  %.0.i.i24 = phi ptr [ %i.ap, %bb.o ], [ %i.as, %bb.p ] ; 2 uses
  %.not.i25 = icmp eq ptr %.0.i.i24, null
  br i1 %.not.i25, label %bb.q, label %ompi_osc_rdma_module_peer.exit27

bb.q:                                             ; preds = %ompi_osc_module_get_peer.exit.i23
  %i.at = call ptr @ompi_osc_rdma_peer_lookup(ptr noundef nonnull %0, i32 noundef %1) #13
  br label %ompi_osc_rdma_module_peer.exit27

ompi_osc_rdma_module_peer.exit27:                 ; preds = %ompi_osc_module_get_peer.exit.i23, %bb.q
  %.0.i26 = phi ptr [ %i.at, %bb.q ], [ %.0.i.i24, %ompi_osc_module_get_peer.exit.i23 ]
  store ptr %.0.i26, ptr %2, align 8, !tbaa !39
  br label %.critedge

bb.r:                                             ; preds = %bb.a
  %i.au = tail call zeroext i1 @ompi_osc_rdma_sync_pscw_peer(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) #13
  br i1 %i.au, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.l, %bb.m, %ompi_osc_rdma_module_peer.exit, %bb.b, %bb.s, %ompi_osc_rdma_module_peer.exit27, %ompi_osc_rdma_module_lock_find.exit
  %.0 = phi ptr [ null, %bb.s ], [ %i.d, %bb.l ], [ %i.p, %ompi_osc_rdma_module_lock_find.exit ], [ null, %bb.b ], [ %i.d, %ompi_osc_rdma_module_peer.exit27 ], [ %i.d, %ompi_osc_rdma_module_peer.exit ], [ %i.d, %bb.m ], [ %i.d, %bb.r ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ompi_osc_rdma_peer_accumulate_cleanup(ptr noundef %0, ptr nofree noundef captures(address) %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  br i1 %2, label %bb.b, label %ompi_osc_rdma_lock_release_exclusive.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81
  %i.c = add i64 %i.b, 16                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.e = load volatile i32, ptr %i.d, align 4, !tbaa !76
  %i.f = and i32 %i.e, 4
  %.not9.i = icmp eq i32 %i.f, 0
  br i1 %.not9.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 145
  %i.h = load i8, ptr %i.g, align 1, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.m = tail call fastcc range(i32 2, 1) i32 @ompi_osc_rdma_btl_op(ptr noundef %0, i8 noundef zeroext %i.h, ptr noundef %i.j, i64 noundef %i.c, ptr noundef %i.l, i32 noundef 1, i64 noundef -9223372036854775808, i32 noundef 0, i1 noundef zeroext false)
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %ompi_osc_rdma_lock_release_exclusive.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = inttoptr i64 %i.c to ptr
  fence seq_cst
  %i.o = atomicrmw volatile add ptr %i.n, i64 -9223372036854775808 monotonic, align 8 ; 0 uses
  fence seq_cst
end_hunk_0
