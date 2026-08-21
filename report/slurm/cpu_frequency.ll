Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/cpu_frequency?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0_@_cpu_freq_setup_data:bb.a
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca [100 x i8], align 16              ; 6 uses
  %i.c = alloca [4096 x i8], align 16             ; 4 uses
  %2 = alloca %struct.stat, align 8               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, -2
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 312), align 8 ; 2 uses
  store i32 %i.g, ptr %i.d, align 4
  %i.h = icmp eq i32 %i.g, -2
  br i1 %i.h, label %_cpu_freq_current_state.exit.thread, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.i = load ptr, ptr @cpufreq, align 8
  %i.j = sext i32 %1 to i64                       ; 23 uses
  %i.k = getelementptr inbounds [332 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i8, ptr %i.l, align 2, !range !25, !noundef !26
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_cpu_freq_current_state.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.o = load i32, ptr @_cpu_freq_current_state.freq_file, align 4
  switch i32 %i.o, label %bb.e [
    i32 -1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 4096, ptr noundef nonnull @.str.100, i32 noundef range(i32 -2147483648, 65535) %1, ptr noundef nonnull @.str.103) #10 ; 0 uses
  %i.q = call i32 @stat(ptr noundef nonnull %i.c, ptr noundef nonnull %2) #10
  %i.r = icmp eq i32 %i.q, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br i1 %i.r, label %.thread.i, label %.thread21.i

.thread.i:                                        ; preds = %bb.d
  store i32 0, ptr @_cpu_freq_current_state.freq_file, align 4
  br label %bb.f

.thread21.i:                                      ; preds = %bb.d
  store i32 1, ptr @_cpu_freq_current_state.freq_file, align 4
  br label %bb.e

bb.e:                                             ; preds = %.thread21.i, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i, %bb.c
  %.str.104.sink.i = phi ptr [ @.str.104, %bb.e ], [ @.str.103, %bb.c ], [ @.str.103, %.thread.i ]
  %i.s = tail call fastcc i32 @_cpu_freq_get_scaling_freq(i32 noundef range(i32 -2147483648, 65535) %1, ptr noundef nonnull %.str.104.sink.i) ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_cpu_freq_current_state.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr @cpufreq, align 8
  %i.v = getelementptr inbounds [332 x i8], ptr %i.u, i64 %i.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 308
  store i32 %i.s, ptr %i.w, align 4
  %i.x = tail call fastcc i32 @_cpu_freq_get_scaling_freq(i32 noundef range(i32 -2147483648, 65535) %1, ptr noundef nonnull @.str.48) ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_cpu_freq_current_state.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @cpufreq, align 8
  %i.aa = getelementptr inbounds [332 x i8], ptr %i.z, i64 %i.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 316
  store i32 %i.x, ptr %i.ab, align 4
  %i.ac = tail call fastcc i32 @_cpu_freq_get_scaling_freq(i32 noundef range(i32 -2147483648, 65535) %1, ptr noundef nonnull @.str.47) ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_cpu_freq_current_state.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr @cpufreq, align 8
  %i.af = getelementptr inbounds [332 x i8], ptr %i.ae, i64 %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 324
  store i32 %i.ac, ptr %i.ag, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str.105, i32 noundef range(i32 -2147483648, 65535) %1) #10 ; 0 uses
  %i.ai = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6) ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__._cpu_freq_get_cur_gov) #10 ; 0 uses
  br label %_cpu_freq_get_cur_gov.exit.i

bb.k:                                             ; preds = %bb.i
  %i.al = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 100, ptr noundef nonnull %i.ai)
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.107, ptr noundef nonnull @__func__._cpu_freq_get_cur_gov) #10 ; 0 uses
  %i.ao = call i32 @fclose(ptr noundef nonnull %i.ai) ; 0 uses
  br label %_cpu_freq_get_cur_gov.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #11
  %i.aq = icmp ugt i64 %i.ap, 23
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__._cpu_freq_get_cur_gov) #10 ; 0 uses
  %i.as = call i32 @fclose(ptr noundef nonnull %i.ai) ; 0 uses
  br label %_cpu_freq_get_cur_gov.exit.i

bb.o:                                             ; preds = %bb.m
  %i.at = load ptr, ptr @cpufreq, align 8
  %i.au = getelementptr inbounds [332 x i8], ptr %i.at, i64 %i.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 260
  %i.aw = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(1) %i.b) #10 ; 0 uses
  %i.ax = call i32 @fclose(ptr noundef nonnull %i.ai) ; 0 uses
  %i.ay = load ptr, ptr @cpufreq, align 8         ; 3 uses
  %i.az = getelementptr inbounds [332 x i8], ptr %i.ay, i64 %i.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 260 ; 2 uses
  %i.bb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #11 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.be = add i64 %i.bb, 4294967295
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp eq i8 %i.bh, 10
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %i.bg, align 1
  %.pre.i = load ptr, ptr @cpufreq, align 8
  br label %bb.r

_cpu_freq_get_cur_gov.exit.i:                     ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_cpu_freq_current_state.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.bj = phi ptr [ %.pre.i, %bb.q ], [ %i.ay, %bb.p ], [ %i.ay, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bk = getelementptr inbounds [332 x i8], ptr %i.bj, i64 %i.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 1, ptr %i.bl, align 2
  br label %_cpu_freq_current_state.exit

_cpu_freq_current_state.exit:                     ; preds = %bb.r, %.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp eq i32 %i.bn, -2
  br i1 %i.bo, label %bb.s, label %.thread63

bb.s:                                             ; preds = %_cpu_freq_current_state.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bq = load i32, ptr %i.bp, align 8            ; 2 uses
  %.not = icmp eq i32 %i.bq, -2
  %.pr = load i32, ptr %i.d, align 4              ; 4 uses
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i32 %.pr, label %.thread61 [
    i32 -2, label %bb.u
    i32 -2139095040, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.br = call i32 @_cpu_freq_freqspec_num(i32 noundef %i.bq, i32 noundef %1)
  %i.bs = load ptr, ptr @cpufreq, align 8
  %i.bt = getelementptr inbounds [332 x i8], ptr %i.bs, i64 %i.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 312
  store i32 %i.br, ptr %i.bu, align 4
  br label %_cpu_freq_govspec_string.exit55

bb.v:                                             ; preds = %bb.s
  %i.bv = icmp eq i32 %.pr, -2139095040
  br i1 %i.bv, label %bb.w, label %thread-pre-split59

.thread63:                                        ; preds = %_cpu_freq_current_state.exit
  %.pr64 = load i32, ptr %i.d, align 4            ; 2 uses
  %i.bw = icmp eq i32 %.pr64, -2139095040
  br i1 %i.bw, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.t, %.thread63, %bb.v
  %i.bx = load ptr, ptr @cpufreq, align 8
  %i.by = getelementptr inbounds [332 x i8], ptr %i.bx, i64 %i.j ; 2 uses
  %i.bz = load i8, ptr %i.by, align 4
  %i.ca = and i8 %i.bz, 16
  %.not15.i = icmp eq i8 %i.ca, 0
  br i1 %.not15.i, label %_cpu_freq_govspec_string.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.cb, ptr noundef nonnull align 1 dereferenceable(10) @.str.15, i64 10, i1 false) #10
  br label %_cpu_freq_govspec_string.exit

_cpu_freq_govspec_string.exit:                    ; preds = %bb.w, %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp eq i32 %i.cd, -2
  br i1 %i.ce, label %_cpu_freq_current_state.exit.thread, label %bb.y

bb.y:                                             ; preds = %_cpu_freq_govspec_string.exit
  %i.cf = call i32 @_cpu_freq_freqspec_num(i32 noundef %i.cd, i32 noundef %1) ; 3 uses
  %i.cg = load ptr, ptr @cpufreq, align 8
  %i.ch = getelementptr inbounds [332 x i8], ptr %i.cg, i64 %i.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 312
  store i32 %i.cf, ptr %i.ci, align 4
  %i.cj = load ptr, ptr @cpufreq, align 8
  %i.ck = getelementptr inbounds [332 x i8], ptr %i.cj, i64 %i.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 320
  store i32 %i.cf, ptr %i.cl, align 4
  %i.cm = load ptr, ptr @cpufreq, align 8
  %i.cn = getelementptr inbounds [332 x i8], ptr %i.cm, i64 %i.j
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 328
  store i32 %i.cf, ptr %i.co, align 4
  br label %_cpu_freq_current_state.exit.thread

bb.z:                                             ; preds = %.thread63
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %.not51 = icmp eq i32 %i.cq, -2
  br i1 %.not51, label %thread-pre-split59, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = call i32 @_cpu_freq_freqspec_num(i32 noundef %i.bn, i32 noundef %1)
  %i.cs = load ptr, ptr @cpufreq, align 8
  %i.ct = getelementptr inbounds [332 x i8], ptr %i.cs, i64 %i.j
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 320
  store i32 %i.cr, ptr %i.cu, align 4
  %i.cv = load i32, ptr %i.cp, align 8
  %i.cw = call i32 @_cpu_freq_freqspec_num(i32 noundef %i.cv, i32 noundef %1)
  %i.cx = load ptr, ptr @cpufreq, align 8
  %i.cy = getelementptr inbounds [332 x i8], ptr %i.cx, i64 %i.j
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 328
  store i32 %i.cw, ptr %i.cz, align 4
  %.pr60.pre = load i32, ptr %i.d, align 4
  br label %thread-pre-split59

thread-pre-split59:                               ; preds = %bb.aa, %bb.z, %bb.v
  %i.da = phi i32 [ %.pr, %bb.v ], [ %.pr64, %bb.z ], [ %.pr60.pre, %bb.aa ] ; 2 uses
  %.not52 = icmp eq i32 %i.da, -2
  br i1 %.not52, label %_cpu_freq_govspec_string.exit55, label %.thread61

.thread61:                                        ; preds = %bb.t, %thread-pre-split59
  %i.db = phi i32 [ %i.da, %thread-pre-split59 ], [ %.pr, %bb.t ] ; 2 uses
  %i.dc = icmp sgt i32 %i.db, -1
  br i1 %i.dc, label %_cpu_freq_govspec_string.exit55, label %bb.ab

bb.ab:                                            ; preds = %.thread61
  %i.dd = add nsw i32 %i.db, 2143289344           ; 2 uses
  %i.de = call i32 @llvm.fshl.i32(i32 %i.dd, i32 %i.dd, i32 10)
  switch i32 %i.de, label %_cpu_freq_govspec_string.exit55 [
    i32 31, label %bb.ac
    i32 15, label %bb.ae
    i32 7, label %bb.ag
    i32 3, label %bb.ai
    i32 1, label %bb.ak
    i32 0, label %bb.am
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.df = load ptr, ptr @cpufreq, align 8
  %i.dg = getelementptr inbounds [332 x i8], ptr %i.df, i64 %i.j ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 4
  %i.di = and i8 %i.dh, 1
  %.not19.i = icmp eq i8 %i.di, 0
  br i1 %.not19.i, label %_cpu_freq_govspec_string.exit55, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.dj, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, i64 13, i1 false) #10
  br label %_cpu_freq_govspec_string.exit55

bb.ae:                                            ; preds = %bb.ab
  %i.dk = load ptr, ptr @cpufreq, align 8
  %i.dl = getelementptr inbounds [332 x i8], ptr %i.dk, i64 %i.j ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 4
  %i.dn = and i8 %i.dm, 2
  %.not18.i = icmp eq i8 %i.dn, 0
  br i1 %.not18.i, label %_cpu_freq_govspec_string.exit55, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.do, ptr noundef nonnull align 1 dereferenceable(9) @.str.9, i64 9, i1 false) #10
  br label %_cpu_freq_govspec_string.exit55

bb.ag:                                            ; preds = %bb.ab
  %i.dp = load ptr, ptr @cpufreq, align 8
  %i.dq = getelementptr inbounds [332 x i8], ptr %i.dp, i64 %i.j ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 4
  %i.ds = and i8 %i.dr, 4
  %.not17.i = icmp eq i8 %i.ds, 0
  br i1 %.not17.i, label %_cpu_freq_govspec_string.exit55, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dt, ptr noundef nonnull align 1 dereferenceable(12) @.str.11, i64 12, i1 false) #10
  br label %_cpu_freq_govspec_string.exit55

bb.ai:                                            ; preds = %bb.ab
  %i.du = load ptr, ptr @cpufreq, align 8
  %i.dv = getelementptr inbounds [332 x i8], ptr %i.du, i64 %i.j ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 4
  %i.dx = and i8 %i.dw, 8
  %.not16.i = icmp eq i8 %i.dx, 0
  br i1 %.not16.i, label %_cpu_freq_govspec_string.exit55, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.dy, ptr noundef nonnull align 1 dereferenceable(10) @.str.13, i64 10, i1 false) #10
  br label %_cpu_freq_govspec_string.exit55

bb.ak:                                            ; preds = %bb.ab
  %i.dz = load ptr, ptr @cpufreq, align 8
  %i.ea = getelementptr inbounds [332 x i8], ptr %i.dz, i64 %i.j ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 4
  %i.ec = and i8 %i.eb, 16
  %.not15.i54 = icmp eq i8 %i.ec, 0
  br i1 %.not15.i54, label %_cpu_freq_govspec_string.exit55, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ed, ptr noundef nonnull align 1 dereferenceable(10) @.str.15, i64 10, i1 false) #10
  br label %_cpu_freq_govspec_string.exit55

bb.am:                                            ; preds = %bb.ab
  %i.ee = load ptr, ptr @cpufreq, align 8
  %i.ef = getelementptr inbounds [332 x i8], ptr %i.ee, i64 %i.j ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 4
  %i.eh = and i8 %i.eg, 32
  %.not.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i, label %_cpu_freq_govspec_string.exit55, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ei, ptr noundef nonnull align 1 dereferenceable(10) @.str.17, i64 10, i1 false) #10
  br label %_cpu_freq_govspec_string.exit55

_cpu_freq_govspec_string.exit55:                  ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.thread61, %thread-pre-split59, %bb.u
  %i.ej = load ptr, ptr @cpufreq, align 8         ; 2 uses
  %i.ek = getelementptr inbounds [332 x i8], ptr %i.ej, i64 %i.j ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 312
  %i.em = load i32, ptr %i.el, align 4            ; 4 uses
  %.not53 = icmp eq i32 %i.em, -2
  br i1 %.not53, label %_cpu_freq_current_state.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %_cpu_freq_govspec_string.exit55
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 316
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = icmp ult i32 %i.em, %i.eo
  br i1 %i.ep, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 320
  store i32 %i.em, ptr %i.eq, align 4
  %.pre = load ptr, ptr @cpufreq, align 8         ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [332 x i8], ptr %.pre, i64 %i.j
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 312
  %.pre70 = load i32, ptr %.phi.trans.insert69, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.er = phi i32 [ %.pre70, %bb.ap ], [ %i.em, %bb.ao ] ; 2 uses
  %i.es = phi ptr [ %.pre, %bb.ap ], [ %i.ej, %bb.ao ]
  %i.et = getelementptr inbounds [332 x i8], ptr %i.es, i64 %i.j ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 324
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = icmp ugt i32 %i.er, %i.ev
  br i1 %i.ew, label %bb.ar, label %_cpu_freq_current_state.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 328
  store i32 %i.er, ptr %i.ex, align 4
  br label %_cpu_freq_current_state.exit.thread

_cpu_freq_current_state.exit.thread:              ; preds = %_cpu_freq_get_cur_gov.exit.i, %bb.g, %bb.f, %bb.h, %_cpu_freq_govspec_string.exit55, %bb.ar, %bb.aq, %_cpu_freq_govspec_string.exit, %bb.b, %bb.y
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @cpu_freq_set(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load i16, ptr @cpu_freq_count, align 2
  %i.c = icmp ne i16 %i.b, 0
  %i.d = load ptr, ptr @cpufreq, align 8
  %i.e = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.ae
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ae ], [ 0, %bb.a ] ; 20 uses
  %i.f = load ptr, ptr @cpufreq, align 8          ; 2 uses
  %i.g = getelementptr inbounds nuw [332 x i8], ptr %i.f, i64 %indvars.iv ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, -2
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, -2
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, -2
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 284
  %i.r = load i8, ptr %i.q, align 4
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.ae, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.u = and i64 %i.t, 2199023255552
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @get_log_level() #10
  %i.w = icmp sgt i32 %i.v, 3
  %.pre87 = load ptr, ptr @cpufreq, align 8       ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [332 x i8], ptr %.pre87, i64 %indvars.iv ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 316
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 308
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 324
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 260
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %i.af, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ad, ptr noundef nonnull %i.ae) #10
  %.pre = load ptr, ptr @cpufreq, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ag = phi ptr [ %.pre87, %bb.f ], [ %.pre, %bb.g ], [ %i.f, %bb.e ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [332 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 328
  %i.aj = load i32, ptr %i.ai, align 4            ; 4 uses
  %.not74 = icmp eq i32 %i.aj, -2
  br i1 %.not74, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 308
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp ugt i32 %i.al, %i.aj
  %i.an = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  br i1 %i.am, label %bb.j, label %._crit_edge93

bb.j:                                             ; preds = %bb.i
  %i.ao = call fastcc i32 @_cpu_freq_set_gov(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull @.str.15)
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = call fastcc i32 @_cpu_freq_set_scaling_freq(ptr noundef %0, i32 noundef %i.an, i32 noundef %i.aj, ptr noundef nonnull @.str.46)
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.ae, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load ptr, ptr @cpufreq, align 8
  %i.at = getelementptr inbounds nuw [332 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 284
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.m, label %._crit_edge93

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 260
  %i.ay = call fastcc i32 @_cpu_freq_set_gov(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull %i.ax)
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.ae, label %._crit_edge93

._crit_edge93:                                    ; preds = %bb.i, %bb.l, %bb.m
  %i.ba = call fastcc i32 @_cpu_freq_set_scaling_freq(ptr noundef %0, i32 noundef %i.an, i32 noundef %i.aj, ptr noundef nonnull @.str.47)
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.ae, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge93
  %.pre88 = load ptr, ptr @cpufreq, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.h
  %i.bc = phi ptr [ %.pre88, %._crit_edge ], [ %i.ag, %bb.h ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [332 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 320
  %i.bf = load i32, ptr %i.be, align 4            ; 4 uses
  %.not75 = icmp eq i32 %i.bf, -2
  br i1 %.not75, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 308
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp ult i32 %i.bh, %i.bf
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  br i1 %i.bi, label %bb.p, label %._crit_edge94

bb.p:                                             ; preds = %bb.o
  %i.bk = call fastcc i32 @_cpu_freq_set_gov(ptr noundef %0, i32 noundef %i.bj, ptr noundef nonnull @.str.15)
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = call fastcc i32 @_cpu_freq_set_scaling_freq(ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bf, ptr noundef nonnull @.str.46)
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.ae, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr @cpufreq, align 8
  %i.bp = getelementptr inbounds nuw [332 x i8], ptr %i.bo, i64 %indvars.iv ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 284
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.s, label %._crit_edge94

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 260
  %i.bu = call fastcc i32 @_cpu_freq_set_gov(ptr noundef %0, i32 noundef %i.bj, ptr noundef nonnull %i.bt)
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %bb.ae, label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.o, %bb.r, %bb.s
  %i.bw = call fastcc i32 @_cpu_freq_set_scaling_freq(ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bf, ptr noundef nonnull @.str.48)
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %bb.ae, label %._crit_edge89

end_hunk_0
