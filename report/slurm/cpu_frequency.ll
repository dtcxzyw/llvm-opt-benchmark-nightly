Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/cpu_frequency?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0_@cpu_freq_cgroup_validate:bb.a
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.40, ptr noundef %i.bc, ptr noundef %1) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bd = load i16, ptr @cpu_freq_count, align 2
  %.not29 = icmp eq i16 %i.bd, 0
  br i1 %.not29, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %bb.q, %bb.aa
  %.039 = phi i16 [ %.24154, %bb.aa ], [ -1, %bb.q ] ; 3 uses
  %.036 = phi i16 [ %.355, %bb.aa ], [ -1, %bb.q ] ; 4 uses
  %.035 = phi i16 [ %.049.i57, %bb.aa ], [ 0, %bb.q ] ; 2 uses
  %.0 = phi ptr [ %.256, %bb.aa ], [ %1, %bb.q ]  ; 8 uses
  %i.be = icmp eq i16 %.039, -1
  br i1 %i.be, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.preheader
  %i.bf = load i8, ptr %.0, align 1               ; 2 uses
  switch i8 %i.bf, label %bb.t [
    i8 0, label %_cpu_freq_next_cpu.exit.thread
    i8 44, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.bg, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bh = phi i8 [ %.pre.i, %bb.s ], [ %i.bf, %bb.r ] ; 2 uses
  %.0.i = phi ptr [ %i.bg, %bb.s ], [ %.0, %bb.r ] ; 2 uses
  %i.bi = tail call ptr @__ctype_b_loc() #12
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = sext i8 %i.bh to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = and i16 %i.bm, 2048
  %.not5815.i = icmp eq i16 %i.bn, 0
  br i1 %.not5815.i, label %_cpu_freq_next_cpu.exit.thread48, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %bb.t, %.lr.ph19.i
  %i.bo = phi i8 [ %i.bu, %.lr.ph19.i ], [ %i.bh, %bb.t ]
  %.117.i = phi ptr [ %i.bt, %.lr.ph19.i ], [ %.0.i, %bb.t ]
  %.04516.i = phi i16 [ %i.bs, %.lr.ph19.i ], [ 0, %bb.t ]
  %i.bp = sext i8 %i.bo to i16
  %i.bq = mul i16 %.04516.i, 10
  %i.br = add nsw i16 %i.bp, -48
  %i.bs = add i16 %i.br, %i.bq                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.117.i, i64 1 ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1             ; 2 uses
  %i.bv = sext i8 %i.bu to i64
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = and i16 %i.bx, 2048
  %.not58.i = icmp eq i16 %i.by, 0
  br i1 %.not58.i, label %_cpu_freq_next_cpu.exit, label %.lr.ph19.i, !llvm.loop !29

bb.u:                                             ; preds = %.preheader
  %i.bz = icmp eq i16 %.036, -1
  br i1 %i.bz, label %bb.v, label %._crit_edge12.i

bb.v:                                             ; preds = %bb.u
  %i.ca = load i8, ptr %.0, align 1
  switch i8 %i.ca, label %._crit_edge12.i [
    i8 45, label %.preheader.i
    i8 44, label %.preheader1.i
    i8 0, label %_cpu_freq_next_cpu.exit.thread
  ]

.preheader1.i:                                    ; preds = %bb.v
  %i.cb = tail call ptr @__ctype_b_loc() #12
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.32.i = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.cd = load i8, ptr %.32.i, align 1            ; 2 uses
  %i.ce = sext i8 %i.cd to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = and i16 %i.cg, 2048
  %.not3.i = icmp eq i16 %i.ch, 0
  br i1 %.not3.i, label %_cpu_freq_next_cpu.exit.thread48, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.v
  %i.ci = tail call ptr @__ctype_b_loc() #12
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.27.i = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.ck = load i8, ptr %.27.i, align 1            ; 2 uses
  %i.cl = sext i8 %i.ck to i64
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = and i16 %i.cn, 2048
  %.not568.i = icmp eq i16 %i.co, 0
  br i1 %.not568.i, label %._crit_edge12.i, label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.preheader.i, %.lr.ph11.i
  %i.cp = phi i8 [ %i.cu, %.lr.ph11.i ], [ %i.ck, %.preheader.i ]
  %.210.i = phi ptr [ %.2.i, %.lr.ph11.i ], [ %.27.i, %.preheader.i ]
  %.1469.i = phi i16 [ %i.ct, %.lr.ph11.i ], [ 0, %.preheader.i ]
  %i.cq = sext i8 %i.cp to i16
  %i.cr = mul i16 %.1469.i, 10
  %i.cs = add nsw i16 %i.cq, -48
  %i.ct = add i16 %i.cs, %i.cr                    ; 2 uses
  %.2.i = getelementptr inbounds nuw i8, ptr %.210.i, i64 1 ; 3 uses
  %i.cu = load i8, ptr %.2.i, align 1             ; 2 uses
  %i.cv = sext i8 %i.cu to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = and i16 %i.cx, 2048
  %.not56.i = icmp eq i16 %i.cy, 0
  br i1 %.not56.i, label %._crit_edge12.i, label %.lr.ph11.i, !llvm.loop !30

.lr.ph.i:                                         ; preds = %.preheader1.i, %.lr.ph.i
  %i.cz = phi i8 [ %i.de, %.lr.ph.i ], [ %i.cd, %.preheader1.i ]
  %.35.i = phi ptr [ %.3.i, %.lr.ph.i ], [ %.32.i, %.preheader1.i ]
  %.2474.i = phi i16 [ %i.dd, %.lr.ph.i ], [ 0, %.preheader1.i ]
  %i.da = sext i8 %i.cz to i16
  %i.db = mul i16 %.2474.i, 10
  %i.dc = add nsw i16 %i.da, -48
  %i.dd = add i16 %i.dc, %i.db                    ; 3 uses
  %.3.i = getelementptr inbounds nuw i8, ptr %.35.i, i64 1 ; 3 uses
  %i.de = load i8, ptr %.3.i, align 1             ; 2 uses
  %i.df = sext i8 %i.de to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = and i16 %i.dh, 2048
  %.not.i = icmp eq i16 %i.di, 0
  br i1 %.not.i, label %_cpu_freq_next_cpu.exit, label %.lr.ph.i, !llvm.loop !31

._crit_edge12.i:                                  ; preds = %.lr.ph11.i, %.preheader.i, %bb.v, %bb.u
  %.137 = phi i16 [ -1, %bb.v ], [ %.036, %bb.u ], [ 0, %.preheader.i ], [ %i.ct, %.lr.ph11.i ] ; 4 uses
  %.1 = phi ptr [ %.0, %bb.v ], [ %.0, %bb.u ], [ %.27.i, %.preheader.i ], [ %.2.i, %.lr.ph11.i ]
  %i.dj = zext i16 %.035 to i32                   ; 2 uses
  %i.dk = icmp ult i16 %.035, %.137
  br i1 %i.dk, label %bb.w, label %bb.y

bb.w:                                             ; preds = %._crit_edge12.i
  %i.dl = zext i16 %.137 to i32                   ; 2 uses
  %i.dm = add nuw nsw i32 %i.dj, 1                ; 2 uses
  %i.dn = icmp eq i32 %i.dm, %i.dl
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge12.i
  %.140 = phi i16 [ -1, %bb.x ], [ %.039, %bb.w ], [ %.039, %._crit_edge12.i ]
  %.238 = phi i16 [ -1, %bb.x ], [ %.137, %bb.w ], [ %.137, %._crit_edge12.i ]
  %.348.i = phi i32 [ %i.dl, %bb.x ], [ %i.dm, %bb.w ], [ %i.dj, %._crit_edge12.i ]
  %i.do = trunc nuw i32 %.348.i to i16
  br label %_cpu_freq_next_cpu.exit

_cpu_freq_next_cpu.exit:                          ; preds = %.lr.ph.i, %.lr.ph19.i, %bb.y
  %.241 = phi i16 [ %.140, %bb.y ], [ %i.bs, %.lr.ph19.i ], [ %i.dd, %.lr.ph.i ]
  %.3 = phi i16 [ %.238, %bb.y ], [ %.036, %.lr.ph19.i ], [ -1, %.lr.ph.i ]
  %.2 = phi ptr [ %.1, %bb.y ], [ %i.bt, %.lr.ph19.i ], [ %.3.i, %.lr.ph.i ]
  %.049.i = phi i16 [ %i.do, %bb.y ], [ %i.bs, %.lr.ph19.i ], [ %i.dd, %.lr.ph.i ] ; 3 uses
  %i.dp = zext i16 %.049.i to i32
  %.not30 = icmp eq i16 %.049.i, -1
  br i1 %.not30, label %_cpu_freq_next_cpu.exit.thread, label %_cpu_freq_next_cpu.exit.thread48

_cpu_freq_next_cpu.exit.thread48:                 ; preds = %bb.t, %.preheader1.i, %_cpu_freq_next_cpu.exit
  %i.dq = phi i32 [ %i.dp, %_cpu_freq_next_cpu.exit ], [ 0, %.preheader1.i ], [ 0, %bb.t ] ; 2 uses
  %.049.i57 = phi i16 [ %.049.i, %_cpu_freq_next_cpu.exit ], [ 0, %.preheader1.i ], [ 0, %bb.t ] ; 2 uses
  %.256 = phi ptr [ %.2, %_cpu_freq_next_cpu.exit ], [ %.32.i, %.preheader1.i ], [ %.0.i, %bb.t ]
  %.355 = phi i16 [ %.3, %_cpu_freq_next_cpu.exit ], [ -1, %.preheader1.i ], [ %.036, %bb.t ]
  %.24154 = phi i16 [ %.241, %_cpu_freq_next_cpu.exit ], [ 0, %.preheader1.i ], [ 0, %bb.t ]
  %i.dr = load i16, ptr @cpu_freq_count, align 2  ; 2 uses
  %.not31 = icmp ult i16 %.049.i57, %i.dr
  br i1 %.not31, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_cpu_freq_next_cpu.exit.thread48
  %i.ds = zext i16 %i.dr to i32
  %i.dt = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.41, i32 noundef %i.dq, i32 noundef %i.ds) #10 ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %_cpu_freq_next_cpu.exit.thread48
  tail call fastcc void @_cpu_freq_setup_data(ptr noundef %0, i32 noundef %i.dq)
  br label %.preheader, !llvm.loop !32

_cpu_freq_next_cpu.exit.thread:                   ; preds = %bb.v, %bb.r, %_cpu_freq_next_cpu.exit
  tail call void @cpu_freq_set(ptr noundef %0)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.q, %bb.c, %bb.d, %_cpu_freq_next_cpu.exit.thread, %bb.z
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_cpu_freq_freqspec_num(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @cpufreq, align 8          ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 5 uses
  %i.c = getelementptr inbounds [332 x i8], ptr %i.a, i64 %i.b ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 8 uses
  %.not56 = icmp eq i8 %i.e, 0
  br i1 %.not56, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not57 = icmp sgt i32 %0, -1
  br i1 %.not57, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %0, label %.loopexit [
    i32 -2147483647, label %bb.e
    i32 -2147483646, label %bb.f
    i32 -2147483644, label %bb.i
    i32 -2147483645, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq i8 %i.e, 1
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.k = zext i8 %i.e to i64
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.o = and i64 %i.m, 2147483647
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  br label %.loopexit

bb.i:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.e, 1
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = load i32, ptr %i.s, align 4
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.u = zext i8 %i.e to i64
  %i.v = getelementptr i8, ptr %i.c, i64 -4
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %i.u
  %i.x = load i32, ptr %i.w, align 4
  br label %.loopexit

bb.l:                                             ; preds = %bb.d
  %i.y = zext i8 %i.e to i64
  %i.z = getelementptr [4 x i8], ptr %i.c, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  br label %.loopexit

bb.m:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4            ; 3 uses
  %i.ad = icmp ult i32 %0, %i.ac
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.42, i32 noundef %0, i32 noundef %i.ac) #10 ; 0 uses
  %i.af = load ptr, ptr @cpufreq, align 8
  %i.ag = getelementptr inbounds [332 x i8], ptr %i.af, i64 %i.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.aj = zext i8 %i.e to i64
  %i.ak = getelementptr [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = icmp ult i32 %i.al, %0
  br i1 %i.am, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %wide.trip.count = zext i8 %i.e to i64
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.43, i32 noundef %0, i32 noundef %i.al) #10 ; 0 uses
  %i.ao = load ptr, ptr @cpufreq, align 8
  %i.ap = getelementptr inbounds [332 x i8], ptr %i.ao, i64 %i.b ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ap, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  br label %.loopexit

bb.q:                                             ; preds = %bb.s
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !33

bb.r:                                             ; preds = %.preheader, %bb.q
  %indvars.iv64 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.q ]
  %i.av = phi i32 [ %i.ac, %.preheader ], [ %i.ay, %bb.q ]
  %i.aw = icmp eq i32 %0, %i.av
  br i1 %i.aw, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv64, 1 ; 5 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = icmp ult i32 %0, %i.ay
  br i1 %i.az, label %bb.t, label %bb.q, !llvm.loop !33

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call i32 @get_log_level() #10
  %i.bb = icmp sgt i32 %i.ba, 2
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bc = load ptr, ptr @cpufreq, align 8
  %i.bd = getelementptr inbounds [332 x i8], ptr %i.bc, i64 %i.b
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.44, i32 noundef %0, i32 noundef %i.bg) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bh = load ptr, ptr @cpufreq, align 8
  %i.bi = getelementptr inbounds [332 x i8], ptr %i.bh, i64 %i.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next
  %i.bl = load i32, ptr %i.bk, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.r, %bb.d, %bb.a, %bb.b, %bb.v, %bb.p, %bb.n, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e
  %.047 = phi i32 [ -2, %bb.a ], [ %i.g, %bb.e ], [ %i.j, %bb.g ], [ %i.q, %bb.h ], [ %i.t, %bb.j ], [ %i.x, %bb.k ], [ %i.aa, %bb.l ], [ %i.ai, %bb.n ], [ %i.au, %bb.p ], [ -2, %bb.d ], [ %i.bl, %bb.v ], [ -2, %bb.b ], [ -2, %bb.q ], [ %0, %bb.r ]
  ret i32 %.047
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_cpu_freq_set_gov(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -2147483648, 65535) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str.105, i32 noundef %1) #10 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call fastcc i32 @_set_cpu_owner_lock(i32 noundef %1, i32 noundef %i.d) ; 3 uses
  %i.f = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.109) ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @fputs(ptr noundef %2, ptr noundef nonnull %i.f) ; 0 uses
  %i.h = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.f) ; 0 uses
  %i.i = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__._cpu_freq_set_gov) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.c ]
  %i.k = icmp sgt i32 %i.e, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @fd_release_lock(i32 noundef %i.e) #10 ; 0 uses
  %i.m = tail call i32 @close(i32 noundef %i.e) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_cpu_freq_set_scaling_freq(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -2147483648, 65535) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str.100, i32 noundef %1, ptr noundef %3) #10 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call fastcc i32 @_set_cpu_owner_lock(i32 noundef %1, i32 noundef %i.d) ; 3 uses
  %i.f = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.109) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.117, i32 noundef %2) #10 ; 0 uses
  %i.h = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__._cpu_freq_set_scaling_freq, ptr noundef %3) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.c ]
  %i.j = icmp sgt i32 %i.e, -1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @fd_release_lock(i32 noundef %i.e) #10 ; 0 uses
  %i.l = tail call i32 @close(i32 noundef %i.e) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.n = and i64 %i.m, 2199023255552
  %.not22 = icmp eq i64 %i.n, 0
  br i1 %.not22, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call fastcc i32 @_cpu_freq_get_scaling_freq(i32 noundef %1, ptr noundef %3) ; 2 uses
  %.not23 = icmp eq i32 %i.o, %2
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.119, ptr noundef %3, i32 noundef %2, i32 noundef %i.o) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @cpu_freq_debug(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [32 x i8], align 16               ; 9 uses
  %i.c = alloca [32 x i8], align 16               ; 9 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i8 0, ptr %i.a, align 16
  store i8 0, ptr %i.b, align 16
  store i8 0, ptr %i.c, align 16
  store i8 0, ptr %i.d, align 16
  switch i32 %7, label %bb.b [
    i32 -2, label %bb.c
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef %7) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.048 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.a ] ; 3 uses
  %.047 = phi ptr [ @.str.86, %bb.b ], [ @.str.68, %bb.a ], [ @.str.68, %bb.a ] ; 2 uses
  switch i32 %5, label %bb.d [
    i32 -2, label %bb.g
    i32 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i32 %5, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.88, i64 14, i1 false) #10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  call void @cpu_freq_to_string(ptr noundef nonnull %i.g, i32 noundef 19, i32 noundef %5)
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.h = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.89, i32 noundef %5) #10 ; 0 uses
  br label %bb.k
end_hunk_0
