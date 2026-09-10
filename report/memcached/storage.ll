Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/storage?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@storage_write_thread:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.hu = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.hu, label %bb.f, label %bb.e, !llvm.loop !193

bb.ai:                                            ; preds = %.preheader.preheader
  %i.hv = call i32 @pthread_cond_signal(ptr noundef nonnull @storage_compact_cond) #21 ; 0 uses
  %i.hw = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 124), align 4, !tbaa !194
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.preheader.preheader
  %.6 = phi i32 [ %i.hw, %bb.ai ], [ %i.aq, %.preheader.preheader ]
  %i.hx = call i32 @usleep(i32 noundef %.663) #21 ; 0 uses
  %i.hy = add i32 %.663, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.e
  %.764 = phi i32 [ %i.hy, %bb.aj ], [ %.663, %bb.e ]
  %.7 = phi i32 [ %.6, %bb.aj ], [ %.5, %bb.e ]
  %i.hz = call i32 @pthread_mutex_lock(ptr noundef nonnull @storage_write_plock) #21 ; 0 uses
  br label %bb.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #9

declare void @thread_setname(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @storage_compact_pause() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @storage_compact_plock) #21 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @storage_compact_resume() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @storage_compact_plock) #21 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @start_storage_compact_thread(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_init(ptr noundef nonnull @storage_compact_plock, ptr noundef null) #21 ; 0 uses
  %i.b = tail call i32 @pthread_cond_init(ptr noundef nonnull @storage_compact_cond, ptr noundef null) #21 ; 0 uses
  %i.c = tail call i32 @pthread_create(ptr noundef nonnull @storage_compact_tid, ptr noundef null, ptr noundef nonnull @storage_compact_thread, ptr noundef %0) #21 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !110
  %i.e = tail call ptr @strerror(i32 noundef %i.c) #21
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.36, ptr noundef %i.e) #25 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr @storage_compact_tid, align 8, !tbaa !111
  tail call void @thread_setname(i64 noundef %i.g, ptr noundef nonnull @.str.37) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @storage_compact_thread(ptr noundef %0) #10 {
bb.a:
  %1 = alloca %struct._obj_io, align 8            ; 10 uses
  %2 = alloca %struct.extstore_stats, align 8     ; 9 uses
  %3 = alloca [6 x %struct.__storage_buk], align 16 ; 43 uses
  %4 = alloca %struct.storage_compact_wrap, align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = tail call ptr @logger_create() #21       ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !110
  %fwrite56 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 56, i64 1, ptr %i.c) #26 ; 0 uses
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 296), align 8, !tbaa !117
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #24 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !110
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.108, i64 65, i64 1, ptr %i.h) #26 ; 0 uses
  tail call void @abort() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.j = call i32 @pthread_mutex_init(ptr noundef nonnull %i.i, ptr noundef null) #21 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 5 uses
  store i8 0, ptr %i.k, align 8, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 105 ; 6 uses
  store i8 0, ptr %i.l, align 1, !tbaa !120
  store ptr %4, ptr %4, align 8, !tbaa !206
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.m, align 8, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.f, ptr %i.n, align 8, !tbaa !208
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 296), align 8, !tbaa !117
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.o, ptr %i.p, align 8, !tbaa !209
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 0, ptr %i.q, align 4, !tbaa !210
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_storage_compact_cb, ptr %i.r, align 8, !tbaa !211
  %i.s = call i32 @pthread_mutex_lock(ptr noundef nonnull @storage_compact_plock) #21 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 260
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 316
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 84 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 312 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 148
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 204
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 106 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.e
  %.sroa.0.0 = phi i8 [ 0, %bb.e ], [ %.sroa.0.0.be, %.loopexit.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @extstore_get_stats(ptr noundef %0, ptr noundef nonnull %2) #21
  %i.bt = load i64, ptr %i.v, align 8, !tbaa !40
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.ay, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ab, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ag, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 -1, i64 16, i1 false)
  %i.bv = and i8 %.sroa.0.0, -2                   ; 2 uses
  %i.bw = load i64, ptr %i.ak, align 8, !tbaa !41
  %i.bx = uitofp i64 %i.bw to double
  %i.by = load double, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 312), align 8, !tbaa !121 ; 2 uses
  %i.bz = fmul double %i.by, %i.bx
  %i.ca = fptoui double %i.bz to i64              ; 2 uses
  %i.cb = load i16, ptr %i.al, align 4, !tbaa !116
  %i.cc = and i16 %i.cb, 2
  %.not.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.preheader.i
  %i.cd = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 17, ptr noundef null, double noundef %i.by, i64 noundef %i.ca) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.preheader.i
  %i.ce = load i64, ptr %i.am, align 8, !tbaa !24
  %i.cf = call noalias ptr @calloc(i64 noundef %i.ce, i64 noundef 32) #23
  store ptr %i.cf, ptr %i.an, align 8, !tbaa !25
  call void @extstore_get_page_data(ptr noundef %0, ptr noundef nonnull %2) #21
  %i.cg = load i64, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %.not131.i = icmp eq i64 %i.cg, 0
  %.pre.i = load i64, ptr %i.ak, align 8          ; 2 uses
  %.pre145.i = load ptr, ptr %i.an, align 8, !tbaa !25 ; 2 uses
  br i1 %.not131.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.g
  call void @free(ptr noundef %.pre145.i) #21
  %5 = load i32, ptr %i.ao, align 8, !tbaa !213   ; 2 uses
  %.not100.i = icmp eq i32 %5, 0                  ; 2 uses
  br i1 %.not100.i, label %bb.s, label %bb.p

.lr.ph.i:                                         ; preds = %bb.g, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %bb.g ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %.pre145.i, i64 %indvars.iv.i ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !30
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [56 x i8], ptr %3, i64 %i.ck ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !213
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !213
  %i.cp = load i64, ptr %i.ch, align 8, !tbaa !28 ; 4 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !214
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 8, !tbaa !214
  br label %bb.o

bb.i:                                             ; preds = %.lr.ph.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 36 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !215
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !215
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !216, !range !75, !noundef !76
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !217
  %i.dc = icmp ult i64 %i.cp, %i.db
  br i1 %i.dc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.de = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.de, ptr %i.dd, align 8, !tbaa !218
  store i64 %i.cp, ptr %i.da, align 8, !tbaa !217
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !29 ; 2 uses
  %i.dh = sub i64 %.pre.i, %i.dg
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = icmp ult i64 %i.dg, %i.ca
  br i1 %i.dj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cl, i64 44 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !219
  %i.dm = icmp ult i32 %i.dl, %i.di
  br i1 %i.dm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.do = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !220
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.cp, ptr %i.dp, align 8, !tbaa !221
  store i32 %i.di, ptr %i.dk, align 4, !tbaa !219
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i, %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cg
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !203

bb.p:                                             ; preds = %._crit_edge.i
  %i.dq = or i8 %i.bv, 2                          ; 3 uses
  %i.dr = load i32, ptr %i.ap, align 16, !tbaa !214
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dt = load i64, ptr %i.aq, align 8, !tbaa !217 ; 2 uses
  %.not101.i = icmp eq i64 %i.dt, -1
  br i1 %.not101.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.du = load i32, ptr %i.ar, align 8, !tbaa !218
  call void @extstore_evict_page(ptr noundef %0, i32 noundef %i.du, i64 noundef %i.dt) #21
  br label %bb.ay

bb.s:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i
  %.sroa.0.3 = phi i8 [ %i.bv, %._crit_edge.i ], [ %i.dq, %bb.q ], [ %i.dq, %bb.p ] ; 2 uses
  %i.dv = load i32, ptr %i.as, align 16, !tbaa !213 ; 2 uses
  %.not102.i = icmp eq i32 %i.dv, 0               ; 2 uses
  br i1 %.not102.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = or i8 %.sroa.0.3, 4                     ; 3 uses
  %i.dx = load i32, ptr %i.at, align 8, !tbaa !214
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dz = load i64, ptr %i.au, align 16, !tbaa !217 ; 2 uses
  %.not103.i = icmp eq i64 %i.dz, -1
  br i1 %.not103.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ea = load i32, ptr %i.av, align 16, !tbaa !218
  call void @extstore_evict_page(ptr noundef %0, i32 noundef %i.ea, i64 noundef %i.dz) #21
  br label %bb.ay

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.0.4 = phi i8 [ %.sroa.0.3, %bb.s ], [ %i.dw, %bb.u ], [ %i.dw, %bb.t ] ; 5 uses
  %i.eb = load i32, ptr %i.aw, align 8, !tbaa !213 ; 2 uses
  %i.ec = load i32, ptr %i.ax, align 4, !tbaa !215
  %i.ed = load i32, ptr %i.ay, align 16, !tbaa !214 ; 3 uses
  %i.ee = add i32 %i.ed, %i.ec
  %i.ef = icmp eq i32 %i.eb, %i.ee
  br i1 %i.ef, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.au, %bb.as, %bb.ar, %bb.al, %bb.af, %bb.w
  call void @__assert_fail(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.1, i32 noundef 875, ptr noundef nonnull @__PRETTY_FUNCTION__.storage_compact_check) #22
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.eg = icmp ne i32 %i.eb, 0
  %i.eh = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 300), align 4 ; 5 uses
  %i.ei = icmp ult i32 %i.ed, %i.eh
  %or.cond113.i = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond113.i, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ej = load i64, ptr %i.w, align 16, !tbaa !221 ; 2 uses
  %.not104.i = icmp eq i64 %i.ej, -1
  br i1 %.not104.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.av, %bb.at, %bb.an, %bb.ah, %bb.z
  %.sroa.0.8 = phi i8 [ %.sroa.0.7, %bb.av ], [ %.sroa.0.7, %bb.at ], [ %.sroa.0.6, %bb.an ], [ %.sroa.0.5, %bb.ah ], [ %.sroa.0.4, %bb.z ]
  %.lcssa136.i = phi ptr [ %i.ai, %bb.av ], [ %i.ag, %bb.at ], [ %i.ab, %bb.an ], [ %i.y, %bb.ah ], [ %3, %bb.z ]
  %.lcssa.i = phi i64 [ %i.gl, %bb.av ], [ %i.gf, %bb.at ], [ %i.fp, %bb.an ], [ %i.fc, %bb.ah ], [ %i.ej, %bb.z ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa136.i, i64 4
  br label %bb.aw

bb.ab:                                            ; preds = %bb.z
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 304), align 8, !tbaa !122
  %i.em = icmp ult i32 %i.ed, %i.el
  br i1 %i.em, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.en = load i64, ptr %i.x, align 8, !tbaa !217 ; 2 uses
  %.not105.i = icmp eq i64 %i.en, -1
  br i1 %.not105.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 320), align 8, !tbaa !123, !range !75, !noundef !76
  %spec.select = or i8 %i.eo, %.sroa.0.4          ; 3 uses
  %i.ep = and i8 %spec.select, 7
  %or.cond110.i = icmp eq i8 %i.ep, 0
  br i1 %or.cond110.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.aq, %bb.ak, %bb.ad
  %.lcssa137.i = phi ptr [ %3, %bb.ad ], [ %i.y, %bb.ak ], [ %i.ab, %bb.aq ]
  %.lcssa134.i = phi i8 [ %spec.select, %bb.ad ], [ %spec.select93, %bb.ak ], [ %spec.select95, %bb.aq ] ; 2 uses
  %.lcssa133.i = phi i64 [ %i.en, %bb.ad ], [ %i.ff, %bb.ak ], [ %i.fs, %bb.aq ]
  %i.eq = shl i8 %.lcssa134.i, 1
  %i.er = and i8 %i.eq, 8
  %i.es = and i8 %.lcssa134.i, -9
  %i.et = or disjoint i8 %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %.lcssa137.i, i64 8
  br label %bb.aw

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y
  %.sroa.0.5 = phi i8 [ %.sroa.0.4, %bb.ac ], [ %spec.select, %bb.ad ], [ %.sroa.0.4, %bb.ab ], [ %.sroa.0.4, %bb.y ] ; 5 uses
  %i.ev = load i32, ptr %i.az, align 16, !tbaa !213 ; 2 uses
  %i.ew = load i32, ptr %i.ba, align 4, !tbaa !215
  %i.ex = load i32, ptr %i.bb, align 8, !tbaa !214 ; 3 uses
  %i.ey = add i32 %i.ex, %i.ew
  %i.ez = icmp eq i32 %i.ev, %i.ey
  br i1 %i.ez, label %bb.ag, label %bb.x

bb.ag:                                            ; preds = %bb.af
  %i.fa = icmp ne i32 %i.ev, 0
  %i.fb = icmp ult i32 %i.ex, %i.eh
  %or.cond113.1.i = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond113.1.i, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.fc = load i64, ptr %i.z, align 8, !tbaa !221 ; 2 uses
  %.not104.1.i = icmp eq i64 %i.fc, -1
  br i1 %.not104.1.i, label %bb.ai, label %bb.aa

bb.ai:                                            ; preds = %bb.ah
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 304), align 8, !tbaa !122
  %i.fe = icmp ult i32 %i.ex, %i.fd
  br i1 %i.fe, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ff = load i64, ptr %i.aa, align 16, !tbaa !217 ; 2 uses
  %.not105.1.i = icmp eq i64 %i.ff, -1
  br i1 %.not105.1.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 320), align 8, !tbaa !123, !range !75, !noundef !76
  %spec.select93 = or i8 %i.fg, %.sroa.0.5        ; 3 uses
  %i.fh = and i8 %spec.select93, 7
  %or.cond110.1.i = icmp eq i8 %i.fh, 0
  br i1 %or.cond110.1.i, label %bb.al, label %bb.ae

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag
  %.sroa.0.6 = phi i8 [ %.sroa.0.5, %bb.aj ], [ %spec.select93, %bb.ak ], [ %.sroa.0.5, %bb.ai ], [ %.sroa.0.5, %bb.ag ] ; 5 uses
  %i.fi = load i32, ptr %i.bc, align 8, !tbaa !213 ; 2 uses
  %i.fj = load i32, ptr %i.bd, align 4, !tbaa !215
  %i.fk = load i32, ptr %i.be, align 16, !tbaa !214 ; 3 uses
  %i.fl = add i32 %i.fk, %i.fj
  %i.fm = icmp eq i32 %i.fi, %i.fl
  br i1 %i.fm, label %bb.am, label %bb.x

bb.am:                                            ; preds = %bb.al
  %i.fn = icmp ne i32 %i.fi, 0
  %i.fo = icmp ult i32 %i.fk, %i.eh
  %or.cond113.2.i = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %or.cond113.2.i, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.fp = load i64, ptr %i.ac, align 16, !tbaa !221 ; 2 uses
  %.not104.2.i = icmp eq i64 %i.fp, -1
  br i1 %.not104.2.i, label %bb.ao, label %bb.aa

bb.ao:                                            ; preds = %bb.an
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 304), align 8, !tbaa !122
  %i.fr = icmp ult i32 %i.fk, %i.fq
  br i1 %i.fr, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fs = load i64, ptr %i.ad, align 8, !tbaa !217 ; 2 uses
  %.not105.2.i = icmp eq i64 %i.fs, -1
  br i1 %.not105.2.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ft = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 320), align 8, !tbaa !123, !range !75, !noundef !76
  %spec.select95 = or i8 %i.ft, %.sroa.0.6        ; 3 uses
  %i.fu = and i8 %spec.select95, 7
  %or.cond110.2.i = icmp eq i8 %i.fu, 0
  br i1 %or.cond110.2.i, label %bb.ar, label %bb.ae

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.sroa.0.7 = phi i8 [ %.sroa.0.6, %bb.ap ], [ %spec.select95, %bb.aq ], [ %.sroa.0.6, %bb.ao ], [ %.sroa.0.6, %bb.am ] ; 3 uses
  %i.fv = load i32, ptr %i.bf, align 16, !tbaa !213
  %i.fw = load i32, ptr %i.bg, align 4, !tbaa !215
  %i.fx = load i32, ptr %i.bh, align 8, !tbaa !214
  %i.fy = add i32 %i.fx, %i.fw
  %i.fz = icmp eq i32 %i.fv, %i.fy
  br i1 %i.fz, label %bb.as, label %bb.x

bb.as:                                            ; preds = %bb.ar
  %i.ga = load i32, ptr %i.t, align 4, !tbaa !215
  %i.gb = load i32, ptr %i.ap, align 16, !tbaa !214 ; 2 uses
  %i.gc = add i32 %i.gb, %i.ga
  %i.gd = icmp eq i32 %5, %i.gc
  br i1 %i.gd, label %bb.at, label %bb.x

bb.at:                                            ; preds = %bb.as
  %i.ge = icmp uge i32 %i.gb, %i.eh
  %or.cond113.4.not182.i = select i1 %.not100.i, i1 true, i1 %i.ge
  %i.gf = load i64, ptr %i.ah, align 16           ; 2 uses
  %.not104.4.i = icmp eq i64 %i.gf, -1
  %or.cond.i = select i1 %or.cond113.4.not182.i, i1 true, i1 %.not104.4.i
  br i1 %or.cond.i, label %bb.au, label %bb.aa

bb.au:                                            ; preds = %bb.at
  %i.gg = load i32, ptr %i.u, align 4, !tbaa !215
  %i.gh = load i32, ptr %i.at, align 8, !tbaa !214 ; 2 uses
  %i.gi = add i32 %i.gh, %i.gg
  %i.gj = icmp eq i32 %i.dv, %i.gi
  br i1 %i.gj, label %bb.av, label %bb.x

bb.av:                                            ; preds = %bb.au
  %i.gk = icmp uge i32 %i.gh, %i.eh
  %or.cond113.5.not185.i = select i1 %.not102.i, i1 true, i1 %i.gk
  %i.gl = load i64, ptr %i.aj, align 8            ; 2 uses
  %.not104.5.i = icmp eq i64 %i.gl, -1
  %or.cond179.i = select i1 %or.cond113.5.not185.i, i1 true, i1 %.not104.5.i
  br i1 %or.cond179.i, label %bb.ay, label %bb.aa

bb.aw:                                            ; preds = %bb.ae, %bb.aa
  %.385 = phi i64 [ %.lcssa.i, %bb.aa ], [ %.lcssa133.i, %bb.ae ] ; 5 uses
  %.377.in = phi ptr [ %i.ek, %bb.aa ], [ %i.eu, %bb.ae ]
  %.sroa.0.12 = phi i8 [ %.sroa.0.8, %bb.aa ], [ %i.et, %bb.ae ] ; 2 uses
  %.377 = load i32, ptr %.377.in, align 4, !tbaa !18 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.gm = load i16, ptr %i.al, align 4, !tbaa !116
  %i.gn = and i16 %i.gm, 2
  %.not52 = icmp eq i16 %i.gn, 0
  br i1 %.not52, label %.lr.ph, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 12, ptr noundef null, i32 noundef %.377, i64 noundef %.385) #21 ; 0 uses
  br label %.lr.ph

bb.ay:                                            ; preds = %bb.av, %bb.v, %bb.r, %.loopexit
  %.sroa.0.12.ph = phi i8 [ %i.dq, %bb.r ], [ %i.dw, %bb.v ], [ %.sroa.0.7, %bb.av ], [ %.sroa.0.0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.gp = call i32 @pthread_cond_wait(ptr noundef nonnull @storage_compact_cond, ptr noundef nonnull @storage_compact_plock) #21 ; 0 uses
  br label %.loopexit.backedge

.lr.ph:                                           ; preds = %bb.aw, %bb.ax
  %i.gq = trunc i64 %.385 to i32
  %i.gr = trunc i32 %.377 to i16
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.12 to i32 ; 3 uses
  %i.gs = and i32 %.sroa.0.0.insert.ext, 8
  %.not186.i = icmp eq i32 %i.gs, 0
  %i.gt = select i1 %.not186.i, i32 1, i32 5      ; 2 uses
  %i.gu = and i32 %.sroa.0.0.insert.ext, 2
  %.not191.i = icmp ne i32 %i.gu, 0
  %i.gv = and i32 %.sroa.0.0.insert.ext, 1
  %.not192.i = icmp eq i32 %i.gv, 0
  br label %bb.az

bb.az:                                            ; preds = %bb.cp, %.lr.ph
  %.299 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.cp ] ; 7 uses
  %i.gw = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #21 ; 0 uses
  %i.gx = zext i32 %.299 to i64
  %i.gy = icmp ule i64 %.pre.i, %i.gx             ; 2 uses
  %i.gz = load i8, ptr %i.k, align 8, !range !75
  %i.ha = trunc nuw i8 %i.gz to i1                ; 2 uses
  %or.cond = select i1 %i.gy, i1 true, i1 %i.ha
  %i.hb = load i8, ptr %i.l, align 1, !range !75
  %i.hc = trunc nuw i8 %i.hb to i1                ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.hc
  br i1 %or.cond5, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %i.gq, ptr %i.bi, align 4, !tbaa !222
  store i16 %i.gr, ptr %i.bj, align 8, !tbaa !223
  store i32 %.299, ptr %i.bk, align 4, !tbaa !224
  store ptr null, ptr %i.bl, align 8, !tbaa !225
  store i8 1, ptr %i.l, align 1, !tbaa !120
  store i8 0, ptr %i.bm, align 2, !tbaa !124
  %i.hd = call i32 @extstore_submit_bg(ptr noundef %0, ptr noundef nonnull %4) #21 ; 0 uses
  br label %bb.cp

bb.bb:                                            ; preds = %bb.az
  %i.he = load i8, ptr %i.bm, align 2, !tbaa !124, !range !75, !noundef !76
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.hg = load i16, ptr %i.al, align 4, !tbaa !116
  %i.hh = and i16 %i.hg, 2
  %.not55 = icmp eq i16 %i.hh, 0
  br i1 %.not55, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hi = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 13, ptr noundef null, i32 noundef %.377) #21 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  store i8 0, ptr %i.k, align 8, !tbaa !119
  store i8 0, ptr %i.l, align 1, !tbaa !120
  br label %.thread143

bb.bf:                                            ; preds = %bb.bb
  %or.cond8 = select i1 %i.hc, i1 %i.ha, i1 false
  br i1 %or.cond8, label %bb.bg, label %bb.cl

bb.bg:                                            ; preds = %bb.bf
  %i.hj = load i16, ptr %i.al, align 4, !tbaa !116
  %i.hk = and i16 %i.hj, 2
  %.not54 = icmp eq i16 %i.hk, 0
  br i1 %.not54, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hl = call i32 (ptr, i32, ptr, ...) @logger_log(ptr noundef nonnull %i.a, i32 noundef 14, ptr noundef null, i32 noundef %.377, i32 noundef %.299) #21 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.hm = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 296), align 8, !tbaa !117
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.cj, %bb.bi
  %.0176.i = phi i64 [ 0, %bb.bi ], [ %i.nf, %bb.cj ] ; 6 uses
  %.0169.i = phi i32 [ 0, %bb.bi ], [ %.4173.i, %bb.cj ] ; 13 uses
  %.0161.i = phi i32 [ 0, %bb.bi ], [ %.5166.i, %bb.cj ] ; 14 uses
  %.0153.i = phi i32 [ 0, %bb.bi ], [ %.5158.i, %bb.cj ] ; 15 uses
  %.0146.i = phi i32 [ 0, %bb.bi ], [ %.5151.i, %bb.cj ] ; 15 uses
  %.0141.i = phi i32 [ 0, %bb.bi ], [ %.2143.i, %bb.cj ] ; 11 uses
  %.0134.i = phi i32 [ 0, %bb.bi ], [ %.4138.i, %bb.cj ] ; 15 uses
  %.0129.i = phi i32 [ 0, %bb.bi ], [ %.4133.i, %bb.cj ] ; 15 uses
  %.0127.i = phi i32 [ 5000, %bb.bi ], [ %.3.i58, %bb.cj ] ; 11 uses
  %i.ho = icmp samesign ult i64 %.0176.i, %i.hn
  br i1 %i.ho, label %bb.bk, label %.thread226.i

bb.bk:                                            ; preds = %bb.bj
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0176.i ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 41 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !12  ; 2 uses
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %.thread226.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ht = zext i8 %i.hr to i32
  %i.hu = add nuw nsw i32 %i.ht, 49
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !18
  %i.hx = add i32 %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 38 ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !14
  %i.ia = zext i16 %i.hz to i32                   ; 2 uses
  %i.ib = lshr i32 %i.ia, 6
  %i.ic = and i32 %i.ib, 4
  %i.id = add i32 %i.hx, %i.ic
  %i.ie = shl nuw nsw i32 %i.ia, 2
  %i.if = and i32 %i.ie, 8
  %i.ig = add i32 %i.id, %i.if                    ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !18 ; 4 uses
  call void @item_lock(i32 noundef %i.ii) #21
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.ik = load i16, ptr %i.hy, align 2, !tbaa !14
  %i.il = shl i16 %i.ik, 2
  %i.im = and i16 %i.il, 8
  %i.in = zext nneg i16 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.in
  %i.ip = load i8, ptr %i.hq, align 1, !tbaa !12
  %i.iq = zext i8 %i.ip to i64
  %i.ir = call ptr @assoc_find(ptr noundef nonnull %i.io, i64 noundef %i.iq, i32 noundef %i.ii) #21 ; 14 uses
  %.not.i57 = icmp eq ptr %i.ir, null
  br i1 %.not.i57, label %bb.cj, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 36 ; 3 uses
  %i.it = load i16, ptr %i.is, align 4, !tbaa !14
  %i.iu = add i16 %i.it, 1
  store i16 %i.iu, ptr %i.is, align 4, !tbaa !14
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 38 ; 5 uses
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !14
  %i.ix = and i16 %i.iw, 128
  %.not187.i = icmp eq i16 %i.ix, 0
  br i1 %.not187.i, label %.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iy = call i32 @item_is_flushed(ptr noundef nonnull %i.ir) #21
  %.not188.i = icmp eq i32 %i.iy, 0
  br i1 %.not188.i, label %bb.bo, label %.thread.i

bb.bo:                                            ; preds = %bb.bn
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 28 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !18 ; 2 uses
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jc = load volatile i32, ptr @current_time, align 4, !tbaa !18
  %i.jd = icmp ugt i32 %i.ja, %i.jc
  br i1 %i.jd, label %bb.bq, label %.thread.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.je = getelementptr inbounds nuw i8, ptr %i.ir, i64 41 ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !12
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jg
end_hunk_0
