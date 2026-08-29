Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/virtio-snd?download=true
inline.NumInlined: 203
inline.NumDeleted: 59
begin_hunk_0_@virtio_snd_process_cmdq:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 696
  store atomic i8 1, ptr %i.c monotonic, align 8
  %i.p = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not2233 = icmp eq ptr %i.p, null
  br i1 %.not2233, label %qemu_lockable_auto_unlock.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.ca
  %i.q = phi ptr [ %i.if, %bb.ca ], [ %i.p, %bb.b ] ; 32 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %.not65.i = icmp eq i32 %i.v, 0
  br i1 %.not65.i, label %iov_to_buf.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %.not21.i.i = icmp ult i64 %i.y, 4
  br i1 %.not21.i.i, label %iov_to_buf.exit.i, label %iov_to_buf.exit.thread.i

iov_to_buf.exit.thread.i:                         ; preds = %bb.c
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = load i32, ptr %i.z, align 1
  store i32 %i.aa, ptr %i.w, align 8
  br label %bb.f

iov_to_buf.exit.i:                                ; preds = %bb.c, %.lr.ph
  %i.ab = call i64 @iov_to_buf_full(ptr noundef %i.t, i32 noundef %i.v, i64 noundef 0, ptr noundef nonnull %i.w, i64 noundef 4) #10 ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 4
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %iov_to_buf.exit.i
  %i.ac = load i32, ptr @qemu_loglevel, align 4
  %i.ad = and i32 %i.ac, 2048
  %.not66.i = icmp eq i32 %i.ad, 0
  br i1 %.not66.i, label %process_cmd.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.process_cmd, i64 noundef %i.ab, i64 noundef 4) #10
  br label %process_cmd.exit

bb.f:                                             ; preds = %iov_to_buf.exit.i, %iov_to_buf.exit.thread.i
  %i.ae = load i32, ptr %i.w, align 8             ; 4 uses
  switch i32 %i.ae, label %bb.o [
    i32 1, label %print_code.exit.i
    i32 2, label %bb.g
    i32 256, label %bb.h
    i32 257, label %bb.i
    i32 258, label %bb.j
    i32 259, label %bb.k
    i32 260, label %bb.l
    i32 261, label %bb.m
    i32 512, label %bb.n
  ]

bb.g:                                             ; preds = %bb.f
  br label %print_code.exit.i

bb.h:                                             ; preds = %bb.f
  br label %print_code.exit.i

bb.i:                                             ; preds = %bb.f
  br label %print_code.exit.i

bb.j:                                             ; preds = %bb.f
  br label %print_code.exit.i

bb.k:                                             ; preds = %bb.f
  br label %print_code.exit.i

bb.l:                                             ; preds = %bb.f
  br label %print_code.exit.i

bb.m:                                             ; preds = %bb.f
  br label %print_code.exit.i

bb.n:                                             ; preds = %bb.f
  br label %print_code.exit.i

bb.o:                                             ; preds = %bb.f
  br label %print_code.exit.i

print_code.exit.i:                                ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i32.i = phi ptr [ @.str.61, %bb.o ], [ @.str.60, %bb.n ], [ @.str.55, %bb.g ], [ @.str.56, %bb.h ], [ @.str.57, %bb.i ], [ @.str.58, %bb.j ], [ @.str.59, %bb.k ], [ @.str.35, %bb.l ], [ @.str.36, %bb.m ], [ @.str.54, %bb.f ]
  %i.af = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i24 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i24, label %trace_virtio_snd_handle_code.exit.i, label %bb.p, !prof !7

bb.p:                                             ; preds = %print_code.exit.i
  %i.ag = load i16, ptr @_TRACE_VIRTIO_SND_HANDLE_CODE_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not1.i.i, label %trace_virtio_snd_handle_code.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr @qemu_loglevel, align 4
  %i.ai = and i32 %i.ah, 32768
  %.not2.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not2.i.i, label %trace_virtio_snd_handle_code.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.30, i32 noundef %i.ae, ptr noundef nonnull %.0.i32.i) #10
  br label %trace_virtio_snd_handle_code.exit.i

trace_virtio_snd_handle_code.exit.i:              ; preds = %bb.r, %bb.q, %bb.p, %print_code.exit.i
  switch i32 %i.ae, label %bb.bt [
    i32 1, label %bb.s
    i32 2, label %bb.s
    i32 256, label %bb.v
    i32 260, label %bb.am
    i32 261, label %bb.an
    i32 257, label %bb.ao
    i32 258, label %bb.aw
    i32 259, label %bb.az
    i32 512, label %bb.bn
  ]

bb.s:                                             ; preds = %trace_virtio_snd_handle_code.exit.i, %trace_virtio_snd_handle_code.exit.i
  %i.aj = load i32, ptr @qemu_loglevel, align 4
  %i.ak = and i32 %i.aj, 1024
  %.not68.i = icmp eq i32 %i.ak, 0
  br i1 %.not68.i, label %bb.u, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 32770, ptr %i.al, align 4
  br label %bb.bu

bb.v:                                             ; preds = %trace_virtio_snd_handle_code.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !18
  %i.am = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %.not92.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not92.i.i, label %iov_to_buf.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %.not21.i.i.i = icmp ult i64 %i.as, 16
  br i1 %.not21.i.i.i, label %iov_to_buf.exit.i.i, label %iov_to_buf.exit.thread.i.i

iov_to_buf.exit.thread.i.i:                       ; preds = %bb.w
  %i.at = load ptr, ptr %i.ao, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %i.at, i64 noundef 16, i1 noundef false) #10
  br label %bb.aa

iov_to_buf.exit.i.i:                              ; preds = %bb.w, %bb.v
  %i.au = call i64 @iov_to_buf_full(ptr noundef %i.ao, i32 noundef %i.aq, i64 noundef 0, ptr noundef nonnull %2, i64 noundef 16) #10 ; 2 uses
  %.not.i33.i = icmp eq i64 %i.au, 16
  br i1 %.not.i33.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %iov_to_buf.exit.i.i
  %i.av = load i32, ptr @qemu_loglevel, align 4
  %i.aw = and i32 %i.av, 2048
  %.not93.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not93.i.i, label %bb.z, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.virtio_snd_handle_pcm_info, i64 noundef %i.au, i64 noundef 16) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 32769, ptr %i.ax, align 4
  br label %virtio_snd_handle_pcm_info.exit.i

bb.aa:                                            ; preds = %iov_to_buf.exit.i.i, %iov_to_buf.exit.thread.i.i
  %i.ay = load i32, ptr %i.l, align 4             ; 7 uses
  %i.az = load i32, ptr %i.m, align 4             ; 8 uses
  %i.ba = load i32, ptr %i.n, align 4             ; 2 uses
  %i.bb = load i32, ptr %i.i, align 4             ; 2 uses
  %i.bc = icmp ugt i32 %i.ay, %i.bb
  br i1 %i.bc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bd = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ay, i32 %i.az)
  %i.be = extractvalue { i32, i1 } %i.bd, 1
  %i.bf = add i32 %i.az, %i.ay
  %i.bg = icmp ugt i32 %i.bf, %i.bb
  %or.cond.i.i = or i1 %i.be, %i.bg
  br i1 %or.cond.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.31, i32 noundef %i.ay, i32 noundef %i.az) #10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 32769, ptr %i.bh, align 4
  br label %virtio_snd_handle_pcm_info.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.bi = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ba, i32 %i.az) ; 2 uses
  %i.bj = extractvalue { i32, i1 } %i.bi, 1
  %3 = extractvalue { i32, i1 } %i.bi, 0
  %i.bk = icmp ugt i32 %3, -5
  %or.cond81.i.i = or i1 %i.bj, %i.bk
  %.pre111.i.i = load ptr, ptr %i.q, align 8      ; 3 uses
  br i1 %or.cond81.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre111.i.i, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre111.i.i, i64 16
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = call i64 @iov_size(ptr noundef %i.bm, i32 noundef %i.bo) #10
  %4 = mul i32 %i.ba, %i.az
  %i.bq = zext i32 %4 to i64
  %i.br = add nuw nsw i64 %i.bq, 4
  %i.bs = icmp ult i64 %i.bp, %i.br
  br i1 %i.bs, label %._crit_edge.i.i, label %bb.ag

._crit_edge.i.i:                                  ; preds = %bb.ae
  %.pre110.i.i = load ptr, ptr %i.q, align 8
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i, %bb.ad
  %i.bt = phi ptr [ %.pre110.i.i, %._crit_edge.i.i ], [ %.pre111.i.i, %bb.ad ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = call i64 @iov_size(ptr noundef %i.bv, i32 noundef %i.bx) #10
  %i.bz = zext i32 %i.az to i64
  %i.ca = shl nuw nsw i64 %i.bz, 5
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.32, i64 noundef %i.by, i64 noundef %i.ca) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 32769, ptr %i.cb, align 4
  br label %virtio_snd_handle_pcm_info.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.cc = zext i32 %i.az to i64                   ; 4 uses
  %i.cd = call noalias ptr @g_malloc0_n(i64 noundef %i.cc, i64 noundef 32) #11 ; 5 uses
  %.not7894.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not7894.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %i.ce = load i32, ptr @trace_events_enabled_count, align 4 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i, !prof !7

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %i.cg = load i32, ptr %i.i, align 4
  %i.ch = call i32 @llvm.usub.sat.i32(i32 %i.cg, i32 %i.ay)
  %wide.trip.count105.i.i = zext i32 %i.ch to i64
  br label %trace_virtio_snd_handle_pcm_info.exit.us.i.i

trace_virtio_snd_handle_pcm_info.exit.us.i.i:     ; preds = %bb.ah, %.lr.ph.split.us.i.i
  %indvars.iv102.i.i = phi i64 [ %indvars.iv.next103.i.i, %bb.ah ], [ 0, %.lr.ph.split.us.i.i ] ; 4 uses
  %i.ci = trunc nuw i64 %indvars.iv102.i.i to i32
  %i.cj = add i32 %i.ay, %i.ci                    ; 3 uses
  %exitcond106.not.i.i = icmp eq i64 %indvars.iv102.i.i, %wide.trip.count105.i.i
  br i1 %exitcond106.not.i.i, label %virtio_snd_pcm_get_stream.exit.thread.i.i, label %virtio_snd_pcm_get_stream.exit.us.i.i

virtio_snd_pcm_get_stream.exit.us.i.i:            ; preds = %trace_virtio_snd_handle_pcm_info.exit.us.i.i
  %i.ck = load ptr, ptr %i.j, align 8
  %i.cl = zext i32 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8            ; 4 uses
  %.not77.us.i.i = icmp eq ptr %i.cn, null
  br i1 %.not77.us.i.i, label %virtio_snd_pcm_get_stream.exit.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %virtio_snd_pcm_get_stream.exit.us.i.i
  %.sroa.9.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.13.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.co = load i64, ptr %.sroa.13.0..sroa_idx.us.i.i, align 8
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %indvars.iv102.i.i ; 4 uses
  %i.cq = load <2 x i32>, ptr %i.cn, align 8
  %.sroa.9.0..sroa_idx24.us.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load <2 x i64>, ptr %.sroa.9.0..sroa_idx.us.i.i, align 8
  store <2 x i32> %i.cq, ptr %i.cp, align 8
  store <2 x i64> %i.cr, ptr %.sroa.9.0..sroa_idx24.us.i.i, align 8
  %.sroa.13.0..sroa_idx28.us.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %i.co, ptr %.sroa.13.0..sroa_idx28.us.i.i, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cs, i8 noundef 0, i64 noundef 5, i1 noundef false) #10
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %exitcond108.not.i.i = icmp eq i64 %indvars.iv.next103.i.i, %i.cc
  br i1 %exitcond108.not.i.i, label %.critedge.i.i, label %trace_virtio_snd_handle_pcm_info.exit.us.i.i, !llvm.loop !22

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.al
  %i.ct = phi i32 [ %i.cz, %bb.al ], [ %i.ce, %.lr.ph.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.al ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.cu = trunc nuw i64 %indvars.iv.i.i to i32
  %i.cv = add i32 %i.ay, %i.cu                    ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i, label %trace_virtio_snd_handle_pcm_info.exit.i.i, label %bb.ai, !prof !7

bb.ai:                                            ; preds = %.lr.ph.split.i.i
  %i.cw = load i16, ptr @_TRACE_VIRTIO_SND_HANDLE_PCM_INFO_DSTATE, align 2
  %.not1.i.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not1.i.i.i, label %trace_virtio_snd_handle_pcm_info.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = load i32, ptr @qemu_loglevel, align 4
  %i.cy = and i32 %i.cx, 32768
  %.not2.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not2.i.i.i, label %trace_virtio_snd_handle_pcm_info.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.34, i32 noundef %i.cv) #10
  %.pre.i.i = load i32, ptr @trace_events_enabled_count, align 4
  br label %trace_virtio_snd_handle_pcm_info.exit.i.i

trace_virtio_snd_handle_pcm_info.exit.i.i:        ; preds = %bb.ak, %bb.aj, %bb.ai, %.lr.ph.split.i.i
  %i.cz = phi i32 [ 0, %.lr.ph.split.i.i ], [ %i.ct, %bb.ai ], [ %i.ct, %bb.aj ], [ %.pre.i.i, %bb.ak ]
  %i.da = load i32, ptr %i.i, align 4
  %.not.i82.i.i = icmp ult i32 %i.cv, %i.da
  br i1 %.not.i82.i.i, label %virtio_snd_pcm_get_stream.exit.i.i, label %virtio_snd_pcm_get_stream.exit.thread.i.i

virtio_snd_pcm_get_stream.exit.i.i:               ; preds = %trace_virtio_snd_handle_pcm_info.exit.i.i
  %i.db = load ptr, ptr %i.j, align 8
  %i.dc = zext i32 %i.cv to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8            ; 4 uses
  %.not77.i.i = icmp eq ptr %i.de, null
  br i1 %.not77.i.i, label %virtio_snd_pcm_get_stream.exit.thread.i.i, label %bb.al

virtio_snd_pcm_get_stream.exit.thread.i.i:        ; preds = %virtio_snd_pcm_get_stream.exit.i.i, %trace_virtio_snd_handle_pcm_info.exit.i.i, %virtio_snd_pcm_get_stream.exit.us.i.i, %trace_virtio_snd_handle_pcm_info.exit.us.i.i
  %.us-phi.i.i = phi i32 [ %i.cj, %virtio_snd_pcm_get_stream.exit.us.i.i ], [ %i.cj, %trace_virtio_snd_handle_pcm_info.exit.us.i.i ], [ %i.cv, %trace_virtio_snd_handle_pcm_info.exit.i.i ], [ %i.cv, %virtio_snd_pcm_get_stream.exit.i.i ]
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.33, i32 noundef %.us-phi.i.i) #10
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 32769, ptr %i.df, align 4
  br label %virtio_snd_handle_pcm_info.exit.i

bb.al:                                            ; preds = %virtio_snd_pcm_get_stream.exit.i.i
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i64, ptr %.sroa.13.0..sroa_idx.i.i, align 8
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %indvars.iv.i.i ; 4 uses
  %i.di = load <2 x i32>, ptr %i.de, align 8
  %.sroa.9.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load <2 x i64>, ptr %.sroa.9.0..sroa_idx.i.i, align 8
  store <2 x i32> %i.di, ptr %i.dh, align 8
  store <2 x i64> %i.dj, ptr %.sroa.9.0..sroa_idx24.i.i, align 8
  %.sroa.13.0..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i64 %i.dg, ptr %.sroa.13.0..sroa_idx28.i.i, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dk, i8 noundef 0, i64 noundef 5, i1 noundef false) #10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.cc
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.split.i.i, !llvm.loop !23

.critedge.i.i:                                    ; preds = %bb.al, %bb.ah, %bb.ag
  %i.dl = shl nuw nsw i64 %i.cc, 5                ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 32768, ptr %i.dn, align 4
  %i.do = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call i64 @iov_from_buf_full(ptr noundef %i.ds, i32 noundef %i.dq, i64 noundef 4, ptr noundef %i.cd, i64 noundef %i.dl) #10 ; 0 uses
  br label %virtio_snd_handle_pcm_info.exit.i

virtio_snd_handle_pcm_info.exit.i:                ; preds = %.critedge.i.i, %virtio_snd_pcm_get_stream.exit.thread.i.i, %bb.af, %bb.ac, %bb.z
  %.088.i.i = phi ptr [ null, %bb.ac ], [ null, %bb.af ], [ %i.cd, %virtio_snd_pcm_get_stream.exit.thread.i.i ], [ null, %bb.z ], [ %i.cd, %.critedge.i.i ]
  call void @g_free(ptr noundef %.088.i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.bu

bb.am:                                            ; preds = %trace_virtio_snd_handle_code.exit.i
  call fastcc void @virtio_snd_handle_pcm_start_stop(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i1 noundef zeroext true)
  br label %bb.bu

bb.an:                                            ; preds = %trace_virtio_snd_handle_code.exit.i
  call fastcc void @virtio_snd_handle_pcm_start_stop(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i1 noundef zeroext false)
  br label %bb.bu

bb.ao:                                            ; preds = %trace_virtio_snd_handle_code.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.du = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8            ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  %.not10.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not10.i.i, label %iov_to_buf.exit.i39.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = load i64, ptr %i.dz, align 8
  %.not21.i.i34.i = icmp ult i64 %i.ea, 24
  br i1 %.not21.i.i34.i, label %iov_to_buf.exit.i39.i, label %iov_to_buf.exit.thread.i35.i

iov_to_buf.exit.thread.i35.i:                     ; preds = %bb.ap
  %i.eb = load ptr, ptr %i.dw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(24) %i.eb, i64 noundef 24, i1 noundef false) #10
  br label %bb.as

iov_to_buf.exit.i39.i:                            ; preds = %bb.ap, %bb.ao
  %i.ec = call i64 @iov_to_buf_full(ptr noundef %i.dw, i32 noundef %i.dy, i64 noundef 0, ptr noundef nonnull %1, i64 noundef 24) #10 ; 2 uses
  %.not.i40.i = icmp eq i64 %i.ec, 24
  br i1 %.not.i40.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %iov_to_buf.exit.i39.i
  %i.ed = load i32, ptr @qemu_loglevel, align 4
  %i.ee = and i32 %i.ed, 2048
  %.not11.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not11.i.i, label %virtio_snd_handle_pcm_set_params.exit.i, label %bb.ar, !prof !7

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.virtio_snd_handle_pcm_set_params, i64 noundef %i.ec, i64 noundef 24) #10
  br label %virtio_snd_handle_pcm_set_params.exit.i

end_hunk_0
