Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/logger?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@logger_set_flags:bb.a
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1.17 = phi i16 [ %i.ck, %bb.aj ], [ %.1.16, %bb.ai ] ; 2 uses
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 144), align 16, !tbaa !34 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !40
  %i.cp = or i16 %i.co, %.1.17
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1.18 = phi i16 [ %i.cp, %bb.al ], [ %.1.17, %bb.ak ] ; 2 uses
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @watchers, i64 152), align 8, !tbaa !34 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.preheader, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !40
  %i.cu = or i16 %i.ct, %.1.18
  br label %.preheader

.preheader:                                       ; preds = %bb.an, %bb.am
  %.1.19 = phi i16 [ %i.cu, %bb.an ], [ %.1.18, %bb.am ]
  %.01216 = load ptr, ptr @logger_stack_head, align 8, !tbaa !14 ; 2 uses
  %.not17 = icmp eq ptr %.01216, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.01218 = phi ptr [ %.012, %.lr.ph ], [ %.01216, %.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.01218, i64 16 ; 2 uses
  %i.cw = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cv) #18 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01218, i64 84
  store i16 %.1.19, ptr %i.cx, align 4, !tbaa !71
  %i.cy = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cv) #18 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01218, i64 8
  %.012 = load ptr, ptr %i.cz, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %.012, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @logger_thread(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca [4096 x i8], align 16             ; 4 uses
  %i.c = load volatile i32, ptr @do_run_logger_thread, align 4, !tbaa !15
  %.not40 = icmp eq i32 %i.c, 0
  br i1 %.not40, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a, %bb.x
  %.01441 = phi i32 [ %.2, %bb.x ], [ 1000, %bb.a ] ; 6 uses
  %i.d = icmp samesign ugt i32 %.01441, 1000
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph43
  %i.e = call i32 @usleep(i32 noundef %.01441) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph43
  %i.f = call i32 @pthread_mutex_lock(ptr noundef nonnull @logger_stack_lock) #18 ; 0 uses
  %i.g = load i32, ptr @watcher_count, align 4, !tbaa !15
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @pthread_cond_wait(ptr noundef nonnull @logger_stack_cond, ptr noundef nonnull @logger_stack_lock) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.028 = load ptr, ptr @logger_stack_head, align 8, !tbaa !14 ; 2 uses
  %.not1529 = icmp eq ptr %.028, null
  br i1 %.not1529, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %logger_thread_read.exit
  %.035 = phi ptr [ %.0, %logger_thread_read.exit ], [ %.028, %bb.e ] ; 4 uses
  %.01334 = phi i32 [ %i.dc, %logger_thread_read.exit ], [ 0, %bb.e ]
  %.sroa.14.033 = phi i64 [ %.sroa.14.6, %logger_thread_read.exit ], [ 0, %bb.e ] ; 3 uses
  %.sroa.9.032 = phi i64 [ %.sroa.9.6, %logger_thread_read.exit ], [ 0, %bb.e ] ; 3 uses
  %i.j = phi <2 x i64> [ %i.db, %logger_thread_read.exit ], [ zeroinitializer, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.k = getelementptr inbounds nuw i8, ptr %.035, i64 16 ; 4 uses
  %i.l = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.k) #18 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.035, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = call ptr @bipbuf_peek_all(ptr noundef %i.n, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.p = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #18 ; 0 uses
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %logger_thread_read.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph
  %i.r = load i32, ptr %i.a, align 4, !tbaa !15
  %i.s = icmp ne i32 %i.r, 0
  %i.t = load i32, ptr @watcher_count, align 4
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %logger_thread_write_entry.exit.i
  %.sroa.9.2 = phi i64 [ %.sroa.9.5, %logger_thread_write_entry.exit.i ], [ %.sroa.9.032, %.preheader.i ] ; 2 uses
  %.sroa.14.2 = phi i64 [ %.sroa.14.5, %logger_thread_write_entry.exit.i ], [ %.sroa.14.033, %.preheader.i ] ; 2 uses
  %.034.i = phi i32 [ %i.cj, %logger_thread_write_entry.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.w = zext i32 %.034.i to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.w ; 6 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !15
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr @default_entries, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !78
  %i.ad = call i32 %i.ac(ptr noundef nonnull %i.x, ptr noundef nonnull %i.b) #18, !inline_history !72 ; 3 uses
  %i.ae = add i32 %i.ad, -4096
  %or.cond.i.i = icmp ult i32 %i.ae, -4095
  br i1 %or.cond.i.i, label %logger_thread_parse_entry.exit.i, label %bb.f

logger_thread_parse_entry.exit.i:                 ; preds = %.lr.ph.i
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite26.i = call i64 @fwrite(ptr nonnull @.str.4, i64 34, i64 1, ptr %i.af) #22 ; 0 uses
  br label %logger_thread_write_entry.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ai = add nuw nsw i32 %i.ad, 128
  br label %bb.g

bb.g:                                             ; preds = %.critedge.thread.i.i, %bb.f
  %.sroa.9.3 = phi i64 [ %.sroa.9.2, %bb.f ], [ %.sroa.9.4, %.critedge.thread.i.i ] ; 8 uses
  %.sroa.14.3 = phi i64 [ %.sroa.14.2, %bb.f ], [ %.sroa.14.4, %.critedge.thread.i.i ] ; 8 uses
  %indvars.iv.i.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i, %.critedge.thread.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @watchers, i64 %indvars.iv.i.i ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 7 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.critedge.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i16, ptr %i.ag, align 2, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !40
  %i.ap = and i16 %i.ao, %i.am
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %.critedge.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load i64, ptr %i.ah, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !41
  %i.au = icmp ult i64 %i.ar, %i.at
  br i1 %i.au, label %.critedge.thread.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 4 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !44, !range !79, !noundef !80
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.critedge.thread49.i.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 3 uses
  %i.az = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i.i
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !42
  %i.bb = call ptr @bipbuf_request(ptr noundef %i.ba, i32 noundef %i.ai) #18 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.k, label %.critedge.i.i

bb.k:                                             ; preds = %bb.j
  %i.bd = call fastcc i32 @logger_thread_poll_watchers(i32 noundef 0, i32 noundef %i.az)
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.critedge.thread.i.i, label %.critedge.thread53.i.i

.critedge.thread53.i.i:                           ; preds = %bb.l
  store i8 1, ptr %i.av, align 8, !tbaa !44
  br label %.critedge.thread49.i.thread.i

bb.m:                                             ; preds = %bb.k
  %.pre.i.i = load i8, ptr %i.av, align 8, !tbaa !44, !range !79
  %i.bh = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.bh, label %.critedge.i.i, label %bb.j, !llvm.loop !73

.critedge.i.i:                                    ; preds = %bb.m, %bb.j
  %.lcssa = phi ptr [ null, %bb.m ], [ %i.bb, %bb.j ]
  %.pr.pre.pr.i.i = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.bi = icmp eq ptr %.pr.pre.pr.i.i, null
  br i1 %i.bi, label %.critedge.thread.i.i, label %.critedge.thread49.i.i

.critedge.thread49.i.thread.i:                    ; preds = %.critedge.thread53.i.i, %.preheader.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !81
  br label %bb.n

.critedge.thread49.i.i:                           ; preds = %.critedge.i.i
  %.pre.i = load i8, ptr %i.av, align 8, !tbaa !44, !range !79
  %i.bl = trunc nuw i8 %.pre.i to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !81 ; 3 uses
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.thread49.i.i, %.critedge.thread49.i.thread.i
  %i.bo = phi i64 [ %i.bk, %.critedge.thread49.i.thread.i ], [ %i.bn, %.critedge.thread49.i.i ]
  %i.bp = phi ptr [ %i.bj, %.critedge.thread49.i.thread.i ], [ %i.bm, %.critedge.thread49.i.i ]
  %i.bq = add i64 %i.bo, 1
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !81
  %i.br = add i64 %.sroa.9.3, 1
  br label %.critedge.thread.i.i

bb.o:                                             ; preds = %.critedge.thread49.i.i
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.lcssa, i64 noundef 128, ptr noundef nonnull @.str.6, i64 noundef %i.bn) #18 ; 2 uses
  %i.bt = add i32 %i.bs, -128
  %or.cond.i27.i = icmp ult i32 %i.bt, -127
  br i1 %or.cond.i27.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = load i64, ptr %i.bm, align 8, !tbaa !81
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bm, align 8, !tbaa !81
  %i.bw = add i64 %.sroa.9.3, 1
  br label %.critedge.thread.i.i

bb.r:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !42
  %i.by = call i32 @bipbuf_push(ptr noundef %i.bx, i32 noundef %i.bs) #18 ; 0 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !81
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.bz = load ptr, ptr %i.ay, align 8, !tbaa !42
  %i.ca = call i32 @bipbuf_offer(ptr noundef %i.bz, ptr noundef nonnull %i.b, i32 noundef %i.ad) #18 ; 0 uses
  %i.cb = add i64 %.sroa.14.3, 1
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.s, %bb.q, %bb.n, %.critedge.i.i, %bb.l, %bb.i, %bb.h, %bb.g
  %.sroa.9.4 = phi i64 [ %.sroa.9.3, %bb.g ], [ %.sroa.9.3, %bb.h ], [ %.sroa.9.3, %bb.i ], [ %i.br, %bb.n ], [ %.sroa.9.3, %bb.l ], [ %.sroa.9.3, %.critedge.i.i ], [ %.sroa.9.3, %bb.s ], [ %i.bw, %bb.q ] ; 2 uses
  %.sroa.14.4 = phi i64 [ %.sroa.14.3, %bb.g ], [ %.sroa.14.3, %bb.h ], [ %.sroa.14.3, %bb.i ], [ %.sroa.14.3, %bb.n ], [ %.sroa.14.3, %bb.l ], [ %.sroa.14.3, %.critedge.i.i ], [ %i.cb, %bb.s ], [ %.sroa.14.3, %bb.q ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 20
  br i1 %exitcond.not.i.i, label %logger_thread_write_entry.exit.i, label %bb.g, !llvm.loop !74

logger_thread_write_entry.exit.i:                 ; preds = %.critedge.thread.i.i, %logger_thread_parse_entry.exit.i
  %.sroa.9.5 = phi i64 [ %.sroa.9.2, %logger_thread_parse_entry.exit.i ], [ %.sroa.9.4, %.critedge.thread.i.i ] ; 2 uses
  %.sroa.14.5 = phi i64 [ %.sroa.14.2, %logger_thread_parse_entry.exit.i ], [ %.sroa.14.4, %.critedge.thread.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !32
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add i32 %.034.i, 40
  %i.ci = add i32 %i.ch, %i.cd
  %i.cj = add i32 %i.ci, %i.cg                    ; 2 uses
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !15
  %i.cl = icmp ult i32 %i.cj, %i.ck
  %i.cm = load i32, ptr @watcher_count, align 4
  %i.cn = icmp sgt i32 %i.cm, 0
  %i.co = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %i.co, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !75

._crit_edge.i:                                    ; preds = %logger_thread_write_entry.exit.i, %.preheader.i
  %.sroa.9.1 = phi i64 [ %.sroa.9.032, %.preheader.i ], [ %.sroa.9.5, %logger_thread_write_entry.exit.i ]
  %.sroa.14.1 = phi i64 [ %.sroa.14.033, %.preheader.i ], [ %.sroa.14.5, %logger_thread_write_entry.exit.i ]
  %i.cp = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.k) #18 ; 0 uses
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !15
  %i.cs = call ptr @bipbuf_poll(ptr noundef %i.cq, i32 noundef %i.cr) #18
  %i.ct = getelementptr inbounds nuw i8, ptr %.035, i64 56 ; 2 uses
  %i.cu = load <2 x i64>, ptr %i.ct, align 8, !tbaa !19
  %i.cv = shufflevector <2 x i64> %i.cu, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = add <2 x i64> %i.cv, %i.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  %i.cx = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #18 ; 0 uses
  %i.cy = icmp eq ptr %i.cs, null
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.5, i64 50, i64 1, ptr %i.cz) #22 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i
  %i.da = load i32, ptr %i.a, align 4, !tbaa !15
  br label %logger_thread_read.exit

logger_thread_read.exit:                          ; preds = %.lr.ph, %bb.u
  %.sroa.9.6 = phi i64 [ %.sroa.9.032, %.lr.ph ], [ %.sroa.9.1, %bb.u ] ; 2 uses
  %.sroa.14.6 = phi i64 [ %.sroa.14.033, %.lr.ph ], [ %.sroa.14.1, %bb.u ] ; 2 uses
  %.025.i = phi i32 [ 0, %.lr.ph ], [ %i.da, %bb.u ]
  %i.db = phi <2 x i64> [ %i.j, %.lr.ph ], [ %i.cw, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.dc = add nsw i32 %.025.i, %.01334            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %.0 = load ptr, ptr %i.dd, align 8, !tbaa !14   ; 2 uses
  %.not15 = icmp eq ptr %.0, null
  br i1 %.not15, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !76

._crit_edge.loopexit:                             ; preds = %logger_thread_read.exit
  %i.de = icmp eq i32 %i.dc, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.e ], [ %.sroa.9.6, %._crit_edge.loopexit ]
  %.sroa.14.0.lcssa = phi i64 [ 0, %bb.e ], [ %.sroa.14.6, %._crit_edge.loopexit ]
  %.013.lcssa = phi i1 [ true, %bb.e ], [ %i.de, %._crit_edge.loopexit ]
  %i.df = phi <2 x i64> [ zeroinitializer, %bb.e ], [ %i.db, %._crit_edge.loopexit ]
  %i.dg = call fastcc i32 @logger_thread_poll_watchers(i32 noundef 1, i32 noundef -1) ; 0 uses
  %i.dh = load i32, ptr @watcher_count, align 4, !tbaa !15
  %i.di = call i32 @pthread_mutex_unlock(ptr noundef nonnull @logger_stack_lock) #18 ; 0 uses
  br i1 %.013.lcssa, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.dj = icmp ult i32 %.01441, 1000000
  %i.dk = lshr i32 %.01441, 3
  %i.dl = select i1 %i.dj, i32 %i.dk, i32 0
  %.1 = add nuw nsw i32 %i.dl, %.01441
  %spec.store.select = call i32 @llvm.umin.i32(i32 %.1, i32 1000000)
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge
  %i.dm = lshr i32 %.01441, 1
  %spec.store.select1 = call i32 @llvm.umax.i32(i32 %i.dm, i32 1000)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.2 = phi i32 [ %spec.store.select1, %bb.w ], [ %spec.store.select, %bb.v ]
  call void @STATS_LOCK() #18
  %i.dn = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 128), align 8, !tbaa !19
  %i.do = add <2 x i64> %i.dn, %i.df
  store <2 x i64> %i.do, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 128), align 8, !tbaa !19
  %i.dp = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 144), align 8, !tbaa !83
  %i.dq = add i64 %i.dp, %.sroa.9.0.lcssa
  store i64 %i.dq, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 144), align 8, !tbaa !83
  %i.dr = load i64, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 152), align 8, !tbaa !84
  %i.ds = add i64 %i.dr, %.sroa.14.0.lcssa
  store i64 %i.ds, ptr getelementptr inbounds nuw (i8, ptr @stats, i64 152), align 8, !tbaa !84
  store i32 %i.dh, ptr getelementptr inbounds nuw (i8, ptr @stats_state, i64 48), align 8, !tbaa !87
  call void @STATS_UNLOCK() #18
  %i.dt = load volatile i32, ptr @do_run_logger_thread, align 4, !tbaa !15
  %.not = icmp eq i32 %i.dt, 0
  br i1 %.not, label %._crit_edge44, label %.lr.ph43, !llvm.loop !77

._crit_edge44:                                    ; preds = %bb.x, %bb.a
  ret ptr null
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

declare void @thread_setname(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i32 @usleep(i32 noundef) local_unnamed_addr #6

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @logger_thread_poll_watchers(i32 noundef range(i32 0, 2) %0, i32 noundef range(i32 -2147483648, 20) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %.not79 = icmp eq i32 %1, -1                    ; 3 uses
  %.not82 = icmp eq i32 %0, 0
  br i1 %.not82, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.e
  %indvars.iv113 = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv.next114, %bb.e ] ; 3 uses
  %.05889.us = phi i32 [ 0, %.split.us.preheader ], [ %.260.us, %bb.e ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @watchers, i64 %indvars.iv113
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 4 uses
  %i.f = icmp ne ptr %i.e, null
  %.not80.us = icmp eq i64 %indvars.iv113, %i.c
  %or.cond.us = or i1 %.not79, %.not80.us
  %or.cond = and i1 %i.f, %or.cond.us
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.split.us
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = call ptr @bipbuf_peek_all(ptr noundef %i.h, ptr noundef nonnull %i.a) #18
  %.not81.us = icmp eq ptr %i.i, null
  br i1 %.not81.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %i.l = sext i32 %.05889.us to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @watchers_pollfds, i64 %i.l ; 2 uses
  store i32 %i.k, ptr %i.m, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i16 4, ptr %i.n, align 4, !tbaa !92
  %i.o = add nsw i32 %.05889.us, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.159.us = phi i32 [ %i.o, %bb.c ], [ %.05889.us, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 0, ptr %i.p, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split.us
  %.260.us = phi i32 [ %.159.us, %bb.d ], [ %.05889.us, %.split.us ] ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@logger_thread_poll_watchers:bb.a
bb.ac:                                            ; preds = %bb.p, %bb.l, %bb.ab
  %.6 = phi i32 [ %i.bs, %bb.p ], [ %i.do, %bb.ab ], [ %.361102, %bb.l ]
  %.3 = phi i32 [ %.057103, %bb.p ], [ %.2, %bb.ab ], [ %.057103, %bb.l ] ; 2 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next118, 20
  br i1 %exitcond120.not, label %.loopexit, label %bb.l, !llvm.loop !89

.loopexit:                                        ; preds = %bb.ac, %bb.k, %.split91.us
  %.165 = phi i32 [ 0, %.split91.us ], [ -1, %bb.k ], [ %.3, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.165
}

declare ptr @bipbuf_peek_all(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @bipbuf_poll(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

declare void @sidethread_conn_close(ptr noundef) local_unnamed_addr #6

declare void @bipbuf_free(ptr noundef) local_unnamed_addr #6

declare void @STATS_LOCK() local_unnamed_addr #6

declare void @STATS_UNLOCK() local_unnamed_addr #6

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal void @_logger_log_text(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #13 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = tail call i32 @vsnprintf(ptr noundef nonnull %i.b, i64 noundef %i.c, ptr noundef %i.e, ptr noundef %3) #18 ; 3 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.20, i32 noundef %i.f) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = add nsw i32 %i.f, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.j, ptr %i.k, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @_logger_parse_text(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 4096, ptr noundef nonnull @.str.21, i64 noundef %i.b, i32 noundef %i.e, i64 noundef %i.g, ptr noundef nonnull %i.h) #18
  ret i32 %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_logger_log_evictions(ptr nofree noundef writeonly captures(none) initializes((32, 56)) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i32, ptr @current_time, align 4, !tbaa !15
  %i.d = sub i32 %i.b, %i.c
  %i.e = zext i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i64 %i.f, ptr %i.g, align 8, !tbaa !51
  %i.h = load volatile i32, ptr @current_time, align 4, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !15
  %i.k = sub i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.k, ptr %i.l, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 38 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i16 %i.n, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 41 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !32    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 54
  store i8 %i.q, ptr %i.r, align 2, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.t, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = load i8, ptr %i.v, align 8, !tbaa !32
  %i.x = and i8 %i.w, 63
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 55
  store i8 %i.x, ptr %i.y, align 1, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load i16, ptr %i.m, align 2, !tbaa !33
  %i.ac = shl i16 %i.ab, 2
  %i.ad = and i16 %i.ac, 8
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = load i8, ptr %i.p, align 1, !tbaa !32
  %i.ah = zext i8 %i.ag to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.z, ptr nonnull align 1 %i.af, i64 %i.ah, i1 false)
  %i.ai = zext i8 %i.q to i32
  %i.aj = add nuw nsw i32 %i.ai, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_logger_parse_ee(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca [751 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.e = load i8, ptr %i.d, align 2, !tbaa !32
  %i.f = zext i8 %i.e to i64
  %i.g = call zeroext i1 @uriencode(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef %i.f, i64 noundef 751) #18 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = load i16, ptr %i.n, align 8, !tbaa !33
  %i.p = load i64, ptr %i.b, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.t = load i8, ptr %i.s, align 1, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.v = load i32, ptr %i.u, align 8, !tbaa !15   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = add nsw i32 %i.v, -2
  %spec.select = select i1 %i.w, i32 %i.x, i32 0
  %i.y = zext i8 %i.t to i32
  %i.z = and i16 %i.o, 8
  %.not = icmp eq i16 %i.z, 0
  %i.aa = select i1 %.not, ptr @.str.24, ptr @.str.23
  %i.ab = trunc i64 %i.k to i32
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 4096, ptr noundef nonnull @.str.22, i64 noundef %i.i, i32 noundef %i.ab, i64 noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aa, i64 noundef %i.p, i32 noundef %i.r, i32 noundef %i.y, i32 noundef %spec.select) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_logger_log_item_get(ptr nofree noundef writeonly captures(none) initializes((32, 39), (40, 48)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef captures(none) %3) #15 {
bb.a:
  %i.a = load i32, ptr %3, align 8                ; 11 uses
  %i.b = icmp ult i32 %i.a, 41
  br i1 %i.b, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load i32, ptr %i.d, align 4, !tbaa !15
  br label %.thread33

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext nneg i32 %i.a to i64
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i
  %i.k = add nuw nsw i32 %i.a, 8                  ; 2 uses
  store i32 %i.k, ptr %3, align 8
  %i.l = load i32, ptr %i.j, align 4, !tbaa !15   ; 6 uses
  %i.m = icmp samesign ult i32 %i.a, 33
  br i1 %i.m, label %bb.c, label %.thread33

.thread33:                                        ; preds = %bb.b, %.thread
  %i.n = phi i32 [ %i.f, %.thread ], [ %i.l, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.o, align 8
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !52
  br label %.thread36

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.k to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %i.w = add nuw nsw i32 %i.a, 16                 ; 2 uses
  store i32 %i.w, ptr %3, align 8
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !52   ; 5 uses
  %i.y = icmp samesign ult i32 %i.a, 25
  br i1 %i.y, label %bb.d, label %.thread36

.thread36:                                        ; preds = %bb.c, %.thread33
  %i.z = phi ptr [ %i.r, %.thread33 ], [ %i.x, %bb.c ]
  %i.aa = phi i32 [ %i.n, %.thread33 ], [ %i.l, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.ab, align 8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !15
  br label %.thread39

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = zext nneg i32 %i.w to i64
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = add nuw nsw i32 %i.a, 24                ; 2 uses
  store i32 %i.aj, ptr %3, align 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !15 ; 4 uses
  %i.al = icmp samesign ult i32 %i.a, 17
  br i1 %i.al, label %bb.e, label %.thread39

.thread39:                                        ; preds = %bb.d, %.thread36
  %i.am = phi i32 [ %i.ae, %.thread36 ], [ %i.ak, %bb.d ]
  %i.an = phi i32 [ %i.aa, %.thread36 ], [ %i.l, %bb.d ]
  %i.ao = phi ptr [ %i.z, %.thread36 ], [ %i.x, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !15
  br label %.thread41

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = zext nneg i32 %i.aj to i64
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  %i.ax = or disjoint i32 %i.a, 32                ; 3 uses
  store i32 %i.ax, ptr %3, align 8
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !15 ; 3 uses
  %i.az = icmp samesign ult i32 %i.ax, 41
  br i1 %i.az, label %bb.f, label %.thread41

.thread41:                                        ; preds = %bb.e, %.thread39
  %i.ba = phi i32 [ %i.as, %.thread39 ], [ %i.ay, %bb.e ]
  %i.bb = phi ptr [ %i.ao, %.thread39 ], [ %i.x, %bb.e ]
  %i.bc = phi i32 [ %i.an, %.thread39 ], [ %i.l, %bb.e ]
  %i.bd = phi i32 [ %i.am, %.thread39 ], [ %i.ak, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.be, align 8
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !15
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = zext nneg i32 %i.ax to i64
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.bk
  %i.bm = add nuw nsw i32 %i.a, 40
  store i32 %i.bm, ptr %3, align 8
  %i.bn = icmp eq i32 %i.a, 0
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !15 ; 2 uses
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 40
  store i32 48, ptr %3, align 8
  br label %bb.i

bb.h:                                             ; preds = %.thread41, %bb.f
  %i.bs = phi i32 [ %i.bh, %.thread41 ], [ %i.bo, %bb.f ]
  %i.bt = phi i32 [ %i.bd, %.thread41 ], [ %i.ak, %bb.f ]
  %i.bu = phi i32 [ %i.bc, %.thread41 ], [ %i.l, %bb.f ]
  %i.bv = phi ptr [ %i.bb, %.thread41 ], [ %i.x, %bb.f ]
  %i.bw = phi i32 [ %i.ba, %.thread41 ], [ %i.ay, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %i.bx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ca = phi i32 [ %i.bo, %bb.g ], [ %i.bs, %bb.h ]
  %i.cb = phi i32 [ %i.ak, %bb.g ], [ %i.bt, %bb.h ] ; 3 uses
  %i.cc = phi i32 [ %i.l, %bb.g ], [ %i.bu, %bb.h ]
  %i.cd = phi ptr [ %i.x, %bb.g ], [ %i.bv, %bb.h ]
  %i.ce = phi i32 [ %i.ay, %bb.g ], [ %i.bw, %bb.h ]
  %i.cf = phi ptr [ %i.br, %bb.g ], [ %i.by, %bb.h ]
  %i.cg = trunc i32 %i.ca to i8
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cj = trunc i32 %i.cc to i8
  store i8 %i.cj, ptr %i.ci, align 4, !tbaa !32
  %i.ck = trunc i32 %i.cb to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ce, ptr %i.cm, align 4, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 %i.cg, ptr %i.cn, align 2, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = sext i32 %i.cb to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.co, ptr align 1 %i.cd, i64 %i.cp, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ch, ptr %i.cq, align 4, !tbaa !15
  %i.cr = add i32 %i.cb, 12
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_logger_parse_ige(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca [751 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.e = load i8, ptr %i.d, align 1, !tbaa !32
  %i.f = zext i8 %i.e to i64
  %i.g = call zeroext i1 @uriencode(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef %i.f, i64 noundef 751) #18 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  %i.n = load i8, ptr %i.b, align 4, !tbaa !32
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @__const._logger_parse_ige.was_found_map, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.s = load i8, ptr %i.r, align 2, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = add nsw i32 %i.w, -2
  %spec.select = select i1 %i.x, i32 %i.y, i32 0
  %i.z = zext i8 %i.s to i32
  %i.aa = trunc i64 %i.k to i32
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 4096, ptr noundef nonnull @.str.29, i64 noundef %i.i, i32 noundef %i.aa, i64 noundef %i.m, ptr noundef nonnull %i.a, ptr noundef %i.q, i32 noundef %i.z, i32 noundef %i.u, i32 noundef %spec.select) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ab
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_logger_log_item_store(ptr nofree noundef writeonly captures(none) initializes((32, 50), (52, 60)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef captures(none) %3) #14 {
bb.a:
  %i.a = load i32, ptr %3, align 8                ; 11 uses
  %i.b = icmp ult i32 %i.a, 41
  br i1 %i.b, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load i32, ptr %i.d, align 4, !tbaa !15
  br label %.thread47

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext nneg i32 %i.a to i64
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i
  %i.k = add nuw nsw i32 %i.a, 8                  ; 2 uses
  store i32 %i.k, ptr %3, align 8
  %i.l = load i32, ptr %i.j, align 4, !tbaa !15   ; 6 uses
  %i.m = icmp samesign ult i32 %i.a, 33
  br i1 %i.m, label %bb.c, label %.thread47

.thread47:                                        ; preds = %bb.b, %.thread
  %i.n = phi i32 [ %i.f, %.thread ], [ %i.l, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.o, align 8
  %i.r = load i32, ptr %i.p, align 4, !tbaa !15
  br label %.thread50

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.k to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %i.w = add nuw nsw i32 %i.a, 16                 ; 2 uses
  store i32 %i.w, ptr %3, align 8
  %i.x = load i32, ptr %i.v, align 4, !tbaa !15   ; 5 uses
  %i.y = icmp samesign ult i32 %i.a, 25
  br i1 %i.y, label %bb.d, label %.thread50

.thread50:                                        ; preds = %bb.c, %.thread47
  %i.z = phi i32 [ %i.r, %.thread47 ], [ %i.x, %bb.c ]
  %i.aa = phi i32 [ %i.n, %.thread47 ], [ %i.l, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.ab, align 8
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !52
  br label %.thread53

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = zext nneg i32 %i.w to i64
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = add nuw nsw i32 %i.a, 24                ; 2 uses
  store i32 %i.aj, ptr %3, align 8
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !52 ; 4 uses
  %i.al = icmp samesign ult i32 %i.a, 17
  br i1 %i.al, label %bb.e, label %.thread53

.thread53:                                        ; preds = %bb.d, %.thread50
  %i.am = phi ptr [ %i.ae, %.thread50 ], [ %i.ak, %bb.d ]
  %i.an = phi i32 [ %i.aa, %.thread50 ], [ %i.l, %bb.d ]
  %i.ao = phi i32 [ %i.z, %.thread50 ], [ %i.x, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !15
  br label %.thread55

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = zext nneg i32 %i.aj to i64
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  %i.ax = or disjoint i32 %i.a, 32                ; 3 uses
  store i32 %i.ax, ptr %3, align 8
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !15 ; 3 uses
  %i.az = icmp samesign ult i32 %i.ax, 41
  br i1 %i.az, label %bb.f, label %.thread55

.thread55:                                        ; preds = %bb.e, %.thread53
  %i.ba = phi i32 [ %i.as, %.thread53 ], [ %i.ay, %bb.e ]
  %i.bb = phi i32 [ %i.ao, %.thread53 ], [ %i.x, %bb.e ]
  %i.bc = phi i32 [ %i.an, %.thread53 ], [ %i.l, %bb.e ]
  %i.bd = phi ptr [ %i.am, %.thread53 ], [ %i.ak, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.be, align 8
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !15
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = zext nneg i32 %i.ax to i64
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.bk
  %i.bm = add nuw nsw i32 %i.a, 40
  store i32 %i.bm, ptr %3, align 8
  %i.bn = icmp eq i32 %i.a, 0
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !15 ; 2 uses
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 40
  store i32 48, ptr %3, align 8
  br label %bb.i

bb.h:                                             ; preds = %.thread55, %bb.f
  %i.bs = phi i32 [ %i.bh, %.thread55 ], [ %i.bo, %bb.f ]
  %i.bt = phi ptr [ %i.bd, %.thread55 ], [ %i.ak, %bb.f ]
  %i.bu = phi i32 [ %i.bc, %.thread55 ], [ %i.l, %bb.f ]
  %i.bv = phi i32 [ %i.bb, %.thread55 ], [ %i.x, %bb.f ]
  %i.bw = phi i32 [ %i.ba, %.thread55 ], [ %i.ay, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr %i.bz, ptr %i.bx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ca = phi i32 [ %i.bs, %bb.h ], [ %i.bo, %bb.g ]
  %i.cb = phi ptr [ %i.bt, %bb.h ], [ %i.ak, %bb.g ]
  %i.cc = phi i32 [ %i.bu, %bb.h ], [ %i.l, %bb.g ]
  %i.cd = phi i32 [ %i.bv, %bb.h ], [ %i.x, %bb.g ]
  %i.ce = phi i32 [ %i.bw, %bb.h ], [ %i.ay, %bb.g ] ; 3 uses
  %i.cf = phi ptr [ %i.by, %bb.h ], [ %i.br, %bb.g ]
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !15 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 8      ; 2 uses
  store ptr %i.cj, ptr %i.ch, align 8
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !15
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = getelementptr i8, ptr %i.ci, i64 16
  store ptr %i.cn, ptr %i.cm, align 8
  %i.co = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.cc, ptr %i.cp, align 4, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cd, ptr %i.cq, align 4, !tbaa !15
  %i.cr = trunc i32 %i.ce to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.cr, ptr %i.cs, align 4, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ca, ptr %i.ct, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %i.cl, ptr %i.cu, align 1, !tbaa !32
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = load volatile i32, ptr @current_time, align 4, !tbaa !15
  %i.cw = sub i32 %i.cg, %i.cv
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi i32 [ %i.cw, %bb.j ], [ 0, %bb.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sink, ptr %i.cx, align 4, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cz = sext i32 %i.ce to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cy, ptr align 1 %i.cb, i64 %i.cz, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.co, ptr %i.da, align 4, !tbaa !15
  %i.db = add i32 %i.ce, 24
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_logger_parse_ise(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca [751 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15   ; 2 uses
  %i.d = icmp slt i32 %i.c, 9
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [8 x i8], ptr @__const._logger_parse_ise.cmd_map, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.g, %bb.b ], [ @.str.30, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i8, ptr %i.j, align 4, !tbaa !32
  %i.l = zext i8 %i.k to i64
  %i.m = call zeroext i1 @uriencode(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, i64 noundef %i.l, i64 noundef 751) #18 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19
  %i.t = load i32, ptr %i.h, align 4, !tbaa !15
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr @__const._logger_parse_ise.status_map, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = add nsw i32 %i.ae, -2
  %spec.select = select i1 %i.af, i32 %i.ag, i32 0
  %i.ah = zext i8 %i.aa to i32
  %i.ai = trunc i64 %i.q to i32
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 4096, ptr noundef nonnull @.str.43, i64 noundef %i.o, i32 noundef %i.ai, i64 noundef %i.s, ptr noundef nonnull %i.a, ptr noundef %i.w, ptr noundef %.0, i32 noundef %i.y, i32 noundef %i.ah, i32 noundef %i.ac, i32 noundef %spec.select) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.aj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_logger_log_conn_event(ptr nofree noundef writeonly captures(none) initializes((32, 48)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef captures(none) %3) #15 {
bb.a:
  %i.a = load i32, ptr %3, align 8                ; 10 uses
  %i.b = icmp ult i32 %i.a, 41
  br i1 %i.b, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !109
  br label %.thread25

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext nneg i32 %i.a to i64
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i
  %i.k = add nuw nsw i32 %i.a, 8                  ; 2 uses
  store i32 %i.k, ptr %3, align 8
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !109  ; 5 uses
  %i.m = icmp samesign ult i32 %i.a, 33
  br i1 %i.m, label %bb.c, label %.thread25

.thread25:                                        ; preds = %bb.b, %.thread
  %i.n = phi ptr [ %i.f, %.thread ], [ %i.l, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.o, align 8
  %i.r = load i32, ptr %i.p, align 4, !tbaa !15
  br label %.thread28

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext nneg i32 %i.k to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %i.w = add nuw nsw i32 %i.a, 16                 ; 2 uses
  store i32 %i.w, ptr %3, align 8
  %i.x = load i32, ptr %i.v, align 4, !tbaa !15   ; 4 uses
  %i.y = icmp samesign ult i32 %i.a, 25
  br i1 %i.y, label %bb.d, label %.thread28

.thread28:                                        ; preds = %bb.c, %.thread25
  %i.z = phi i32 [ %i.r, %.thread25 ], [ %i.x, %bb.c ]
  %i.aa = phi ptr [ %i.n, %.thread25 ], [ %i.l, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.ab, align 8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !15
  br label %.thread31

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = zext nneg i32 %i.w to i64
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = add nuw nsw i32 %i.a, 24                ; 2 uses
  store i32 %i.aj, ptr %3, align 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !15 ; 3 uses
  %i.al = icmp samesign ult i32 %i.a, 17
  br i1 %i.al, label %bb.e, label %.thread31

.thread31:                                        ; preds = %bb.d, %.thread28
  %i.am = phi i32 [ %i.ae, %.thread28 ], [ %i.ak, %bb.d ]
  %i.an = phi ptr [ %i.aa, %.thread28 ], [ %i.l, %bb.d ]
  %i.ao = phi i32 [ %i.z, %.thread28 ], [ %i.x, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !15
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = zext nneg i32 %i.aj to i64
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  %i.ax = or disjoint i32 %i.a, 32                ; 3 uses
  store i32 %i.ax, ptr %3, align 8
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !15 ; 2 uses
  %i.az = icmp samesign ult i32 %i.ax, 41
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = zext nneg i32 %i.ax to i64
  %i.bd = getelementptr i8, ptr %i.bb, i64 %i.bc
  %i.be = add nuw nsw i32 %i.a, 40
  store i32 %i.be, ptr %3, align 8
  br label %bb.h

bb.g:                                             ; preds = %.thread31, %bb.e
  %i.bf = phi i32 [ %i.as, %.thread31 ], [ %i.ay, %bb.e ]
  %i.bg = phi i32 [ %i.ao, %.thread31 ], [ %i.x, %bb.e ]
  %i.bh = phi ptr [ %i.an, %.thread31 ], [ %i.l, %bb.e ]
  %i.bi = phi i32 [ %i.am, %.thread31 ], [ %i.ak, %bb.e ]
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store ptr %i.bl, ptr %i.bj, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bm = phi i32 [ %i.ay, %bb.f ], [ %i.bf, %bb.g ]
  %i.bn = phi i32 [ %i.x, %bb.f ], [ %i.bg, %bb.g ]
  %i.bo = phi ptr [ %i.l, %bb.f ], [ %i.bh, %bb.g ]
  %i.bp = phi i32 [ %i.ak, %bb.f ], [ %i.bi, %bb.g ]
  %i.bq = phi ptr [ %i.bd, %bb.f ], [ %i.bk, %bb.g ]
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = zext i32 %i.bn to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 4 %i.bo, i64 %i.bu, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.br, ptr %i.bv, align 4, !tbaa !54
  store i32 %i.bp, ptr %i.bs, align 4, !tbaa !55
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bm, ptr %i.bw, align 4, !tbaa !56
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 40, ptr %i.bx, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_logger_parse_cne(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.c = load i16, ptr %i.b, align 4, !tbaa !57
  switch i16 %i.c, label %_logger_util_addr_endpoint.exit [
    i16 2, label %bb.b
    i16 10, label %bb.c
    i16 0, label %bb.d
    i16 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 63) #18 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.g = load i16, ptr %i.f, align 2, !tbaa !60
  %rev.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.g)
  br label %_logger_util_addr_endpoint.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = call ptr @inet_ntop(i32 noundef 10, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 63) #18 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.k = load i16, ptr %i.j, align 2, !tbaa !61
  %rev.i14.i = call noundef i16 @llvm.bswap.i16(i16 %i.k)
  br label %_logger_util_addr_endpoint.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.48, i64 noundef 5, i1 false) #18
  br label %_logger_util_addr_endpoint.exit

_logger_util_addr_endpoint.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i16 [ 0, %bb.a ], [ %rev.i.i, %bb.b ], [ %rev.i14.i, %bb.c ], [ 0, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19
  %i.t = zext i16 %.0 to i32
  %i.u = load i32, ptr %i.l, align 4, !tbaa !55
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr @__const._logger_parse_cce.transport_map, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !54
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 4096, ptr noundef nonnull @.str.47, i64 noundef %i.n, i32 noundef %i.q, i64 noundef %i.s, ptr noundef nonnull %i.a, i32 noundef %i.t, ptr noundef %i.x, i32 noundef %i.z) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.aa
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_logger_parse_cce(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.c = load i16, ptr %i.b, align 4, !tbaa !57
  switch i16 %i.c, label %_logger_util_addr_endpoint.exit [
    i16 2, label %bb.b
    i16 10, label %bb.c
    i16 0, label %bb.d
    i16 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 63) #18 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.g = load i16, ptr %i.f, align 2, !tbaa !60
  %rev.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.g)
  br label %_logger_util_addr_endpoint.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = call ptr @inet_ntop(i32 noundef 10, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 63) #18 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.k = load i16, ptr %i.j, align 2, !tbaa !61
  %rev.i14.i = call noundef i16 @llvm.bswap.i16(i16 %i.k)
  br label %_logger_util_addr_endpoint.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.48, i64 noundef 5, i1 false) #18
  br label %_logger_util_addr_endpoint.exit

_logger_util_addr_endpoint.exit:                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i16 [ 0, %bb.a ], [ %rev.i.i, %bb.b ], [ %rev.i14.i, %bb.c ], [ 0, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19
  %i.t = zext i16 %.0 to i32
  %i.u = load i32, ptr %i.l, align 4, !tbaa !55
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr @__const._logger_parse_cce.transport_map, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !56
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr @__const._logger_parse_cce.reason_map, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !54
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 4096, ptr noundef nonnull @.str.53, i64 noundef %i.n, i32 noundef %i.q, i64 noundef %i.s, ptr noundef nonnull %i.a, i32 noundef %i.t, ptr noundef %i.x, ptr noundef %i.ac, i32 noundef %i.ae) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_logger_log_item_deleted(ptr nofree noundef writeonly captures(none) initializes((32, 46)) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) #16 {
bb.a:
  %i.a = load i32, ptr %3, align 8                ; 3 uses
  %i.b = icmp ult i32 %i.a, 41
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext nneg i32 %i.a to i64
  %i.f = getelementptr i8, ptr %i.d, i64 %i.e
  %i.g = add nuw nsw i32 %i.a, 8
  store i32 %i.g, ptr %3, align 8
  br label %bb.d

end_hunk_1
