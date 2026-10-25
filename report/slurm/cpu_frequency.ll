Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/cpu_frequency?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0_@cpu_freq_verify_govlist:bb.a

bb.h:                                             ; preds = %bb.f
  %i.n = load i32, ptr %1, align 4
  %i.o = or i32 %i.n, %i.k
  store i32 %i.o, ptr %1, align 4
  %i.p = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.b) #10 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.i, label %.preheader, !llvm.loop !36

bb.i:                                             ; preds = %bb.h
  call void @slurm_xfree(ptr noundef nonnull %i.a) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  %.010 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.g ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @cpu_freq_verify_cmdline(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8
  %i.d = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.e = insertelement <4 x ptr> %i.d, ptr %1, i64 1
  %i.f = insertelement <4 x ptr> %i.e, ptr %2, i64 2
  %i.g = insertelement <4 x ptr> %i.f, ptr %3, i64 3
  %i.h = icmp eq <4 x ptr> %i.g, splat (ptr null)
  %i.i = bitcast <4 x i1> %i.h to i4
  %.not142.a = icmp eq i4 %i.i, 0
  br i1 %.not142.a, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  store i32 -2, ptr %1, align 4
  store i32 -2, ptr %2, align 4
  store i32 -2, ptr %3, align 4
  %i.j = tail call ptr @xstrchr(ptr noundef nonnull %0, i32 noundef 58) #10 ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @xstrchr(ptr noundef nonnull %0, i32 noundef 45) #10 ; 3 uses
  %.not85 = icmp eq ptr %i.k, null
  br i1 %.not85, label %bb.g, label %bb.e

.thread:                                          ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = tail call ptr @xstrdup(ptr noundef nonnull %i.l) #10 ; 3 uses
  store ptr %i.m, ptr %i.c, align 8
  %i.n = tail call ptr @xstrchr(ptr noundef nonnull %0, i32 noundef 45) #10 ; 3 uses
  %.not8595 = icmp eq ptr %i.n, null
  %i.o = ptrtoint ptr %0 to i64                   ; 2 uses
  br i1 %.not8595, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.p, %i.o
  %i.r = tail call ptr @xstrndup(ptr noundef nonnull %0, i64 noundef %i.q) #10 ; 2 uses
  store ptr %i.r, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.t = ptrtoint ptr %i.j to i64
  %i.u = xor i64 %i.p, -1
  %i.v = add i64 %i.u, %i.t
  %i.w = tail call ptr @xstrndup(ptr noundef nonnull %i.s, i64 noundef %i.v) #10 ; 2 uses
  store ptr %i.w, ptr %i.b, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.x = ptrtoint ptr %i.k to i64
  %i.y = ptrtoint ptr %0 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = tail call ptr @xstrndup(ptr noundef nonnull %0, i64 noundef %i.z) #10 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ac = tail call ptr @xstrdup(ptr noundef nonnull %i.ab) #10 ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8
  br label %bb.h

bb.f:                                             ; preds = %.thread
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = sub i64 %i.ad, %i.o
  %i.af = tail call ptr @xstrndup(ptr noundef nonnull %0, i64 noundef %i.ae) #10 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ag = tail call ptr @xstrdup(ptr noundef nonnull %0) #10 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e
  %i.ah = phi ptr [ null, %bb.f ], [ null, %bb.g ], [ %i.w, %bb.d ], [ %i.ac, %bb.e ] ; 4 uses
  %i.ai = phi ptr [ %i.m, %bb.f ], [ null, %bb.g ], [ %i.m, %bb.d ], [ null, %bb.e ] ; 9 uses
  %i.aj = phi ptr [ %i.af, %bb.f ], [ %i.ag, %bb.g ], [ %i.r, %bb.d ], [ %i.aa, %bb.e ] ; 4 uses
  %i.ak = tail call fastcc i32 @_cpu_freq_check_gov(ptr noundef %i.aj, i32 noundef 0) ; 2 uses
  %.not86 = icmp eq i32 %i.ak, 0
  br i1 %.not86, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not87 = icmp eq ptr %i.ai, null
  br i1 %.not87, label %.thread128, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.77, ptr noundef %i.aj, ptr noundef nonnull %i.ai) #10 ; 0 uses
  br label %.thread124thread-pre-split

bb.k:                                             ; preds = %bb.h
  %i.am = tail call fastcc i32 @_cpu_freq_check_freq(ptr noundef %i.aj) ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread124thread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.am, ptr %2, align 4
  %.not88.not = icmp eq ptr %i.ah, null
  br i1 %.not88.not, label %.thread116, label %bb.m

.thread128:                                       ; preds = %bb.i
  store i32 %i.ak, ptr %3, align 4
  %.not88129.not = icmp eq ptr %i.ah, null
  br i1 %.not88129.not, label %.thread116.thread, label %bb.m

bb.m:                                             ; preds = %.thread128, %bb.l
  %i.ao = icmp eq ptr %i.ai, null
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 312), align 8
  %i.aq = icmp eq i32 %i.ap, -2
  %or.cond7 = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond7, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.78) #10 ; 0 uses
  br label %.thread124thread-pre-split

bb.o:                                             ; preds = %bb.m
  %i.as = tail call fastcc i32 @_cpu_freq_check_freq(ptr noundef nonnull %i.ah) ; 3 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.thread124thread-pre-split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i32, ptr %2, align 4
  store i32 %i.au, ptr %1, align 4
  store i32 %i.as, ptr %2, align 4
  %i.av = load i32, ptr %1, align 4
  %i.aw = icmp ult i32 %i.as, %i.av
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.79, ptr noundef %i.aj, ptr noundef nonnull %i.ah) #10 ; 0 uses
  br label %.thread124thread-pre-split

bb.r:                                             ; preds = %bb.p
  %.not89.not = icmp eq ptr %i.ai, null
  br i1 %.not89.not, label %bb.aa, label %bb.s

.thread116:                                       ; preds = %bb.l
  %.not89117.not = icmp eq ptr %i.ai, null
  br i1 %.not89117.not, label %.thread116.thread, label %bb.s

bb.s:                                             ; preds = %.thread116, %bb.r
  %.not88130 = phi i1 [ false, %.thread116 ], [ true, %bb.r ]
  %i.ay = tail call fastcc i32 @_cpu_freq_check_gov(ptr noundef nonnull %i.ai, i32 noundef 0) ; 4 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.80, ptr noundef nonnull %i.ai) #10 ; 0 uses
  br label %.thread124thread-pre-split

bb.u:                                             ; preds = %bb.s
  %i.bb = icmp eq i32 %i.ay, -2139095040          ; 2 uses
  br i1 %.not88130, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.bb, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.81, ptr noundef nonnull %i.ai) #10 ; 0 uses
  br label %.thread124thread-pre-split

bb.x:                                             ; preds = %bb.u
  br i1 %i.bb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bd = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.82, ptr noundef nonnull %i.ai) #10 ; 0 uses
  br label %.thread124thread-pre-split

bb.z:                                             ; preds = %bb.x, %bb.v
  store i32 %i.ay, ptr %3, align 4
  br label %.thread124

bb.aa:                                            ; preds = %bb.r
  %.pre = load i32, ptr %3, align 4               ; 2 uses
  %i.be = icmp eq i32 %.pre, -2
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 312), align 8 ; 3 uses
  %i.bg = icmp ne i32 %i.bf, -2
  %or.cond9 = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond9, label %.sink.split, label %.thread124

.thread116.thread:                                ; preds = %.thread128, %.thread116
  %.pre123 = load i32, ptr %3, align 4            ; 2 uses
  %.not141 = icmp eq i32 %.pre123, -2
  br i1 %.not141, label %.sink.split, label %.thread124

.thread124thread-pre-split:                       ; preds = %bb.j, %bb.n, %bb.q, %bb.t, %bb.w, %bb.y, %bb.k, %bb.o
  %.pr.pr = load i32, ptr %3, align 4
  br label %.thread124

.thread124:                                       ; preds = %.thread124thread-pre-split, %bb.z, %bb.aa, %.thread116.thread
  %.pr = phi i32 [ %.pr.pr, %.thread124thread-pre-split ], [ %i.ay, %bb.z ], [ %.pre, %bb.aa ], [ %.pre123, %.thread116.thread ] ; 3 uses
  %.0.ph = phi i32 [ -1, %.thread124thread-pre-split ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %.thread116.thread ] ; 2 uses
  %.not93 = icmp eq i32 %.pr, -2
  br i1 %.not93, label %bb.ad, label %bb.ab

.sink.split:                                      ; preds = %.thread116.thread, %bb.aa
  %.sink = phi i32 [ %i.bf, %bb.aa ], [ -2139095040, %.thread116.thread ] ; 2 uses
  %.ph141 = phi i32 [ %i.bf, %bb.aa ], [ 8388608, %.thread116.thread ]
  store i32 %.sink, ptr %3, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %.thread124
  %4 = phi i32 [ %.pr, %.thread124 ], [ %.sink, %.sink.split ]
  %.0100 = phi i32 [ %.0.ph, %.thread124 ], [ 0, %.sink.split ]
  %i.bh = phi i32 [ %.pr, %.thread124 ], [ %.ph141, %.sink.split ]
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 316), align 4
  %i.bj = and i32 %i.bh, 2147483647
  %i.bk = and i32 %i.bj, %i.bi
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bm = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.83, ptr noundef nonnull %0) #10 ; 0 uses
  store i32 -2, ptr %3, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %.thread124
  %i.bn = phi i32 [ -2, %bb.ac ], [ %4, %bb.ab ], [ -2, %.thread124 ]
  %.1 = phi i32 [ -1, %bb.ac ], [ %.0100, %bb.ab ], [ %.0.ph, %.thread124 ]
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bp = and i64 %i.bo, 2199023255552
  %.not94 = icmp eq i64 %i.bp, 0
  br i1 %.not94, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bq = load i32, ptr %1, align 4
  %i.br = load i32, ptr %2, align 4
  %i.bs = tail call i32 @cpu_freq_debug(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr noundef null, i32 noundef 0, i32 noundef %i.bn, i32 noundef %i.bq, i32 noundef %i.br, i32 noundef -2) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @slurm_xfree(ptr noundef nonnull %i.a) #10
  call void @slurm_xfree(ptr noundef nonnull %i.b) #10
  call void @slurm_xfree(ptr noundef nonnull %i.c) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af
  %.068 = phi i32 [ %.1, %bb.af ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.068
}

declare ptr @xstrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_cpu_freq_check_freq(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call i32 @xstrncasecmp(ptr noundef %0, ptr noundef nonnull @.str.130, i64 noundef 2) #10
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @xstrncasecmp(ptr noundef %0, ptr noundef nonnull @.str.131, i64 noundef 4) #10
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @xstrncasecmp(ptr noundef %0, ptr noundef nonnull @.str.132, i64 noundef 6) #10
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @xstrncasecmp(ptr noundef %0, ptr noundef nonnull @.str.133, i64 noundef 2) #10
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @xstrncasecmp(ptr noundef %0, ptr noundef nonnull @.str.134, i64 noundef 3) #10
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = call i64 @strtoul(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10) #10
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load i8, ptr %i.m, align 1
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = trunc i64 %i.l to i32                    ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @__errno_location() #12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 22
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.t = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.135, ptr noundef %0) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a, %bb.i
  %.0 = phi i32 [ -2147483646, %bb.e ], [ -2147483647, %bb.a ], [ -2147483644, %bb.b ], [ -2147483645, %bb.d ], [ 0, %bb.i ], [ -2147483644, %bb.c ], [ 0, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_cpu_freq_get_scaling_freq(i32 noundef range(i32 -2147483648, 65535) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str.100, i32 noundef %0, ptr noundef %1) #10 ; 0 uses
  %i.d = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6) ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__._cpu_freq_get_scaling_freq, ptr noundef %1) #10 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.b) #10
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__._cpu_freq_get_scaling_freq, ptr noundef %1) #10 ; 0 uses
  %i.j = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  %i.l = load i32, ptr %i.b, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @_set_cpu_owner_lock(i32 noundef range(i32 -2147483648, 65535) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca [4096 x i8], align 16             ; 10 uses
  store i32 %1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = load ptr, ptr @slurmd_spooldir, align 8
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4096, ptr noundef nonnull @.str.111, ptr noundef %i.c) #10 ; 0 uses
  %i.e = call i32 @mkdir(ptr noundef nonnull %i.b, i32 noundef 448) #10
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #12
  %i.g = load i32, ptr %i.f, align 4
  %.not26 = icmp eq i32 %i.g, 17
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.112, ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr @slurmd_spooldir, align 8
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4096, ptr noundef nonnull @.str.113, ptr noundef %i.i, i32 noundef %0) #10 ; 0 uses
  %i.k = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 66, i32 noundef 384) #10 ; 7 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.114, ptr noundef nonnull @__func__._set_cpu_owner_lock, ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %.loopexit

.preheader:                                       ; preds = %bb.d, %bb.i
  %.0612.i = phi i32 [ %i.s, %bb.i ], [ 0, %bb.d ] ; 2 uses
  %.not.i = icmp eq i32 %.0612.i, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.n = tail call i32 @usleep(i32 noundef 1000) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader
  %i.o = tail call i32 @fd_get_write_lock(i32 noundef range(i32 0, -2147483648) %i.k) #10 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @__errno_location() #12
  %i.r = load i32, ptr %i.q, align 4
  switch i32 %i.r, label %_fd_lock_retry.exit [
    i32 13, label %bb.i
    i32 11, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.s = add nuw nsw i32 %.0612.i, 1              ; 2 uses
end_hunk_0
