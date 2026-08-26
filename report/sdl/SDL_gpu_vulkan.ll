Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_gpu_vulkan?download=true
inline.NumInlined: 321
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@VULKAN_INTERNAL_DeterminePhysicalDevice:bb.a
    i32 -8, label %bb.j
    i32 -10, label %bb.k
    i32 -4, label %bb.l
    i32 -9, label %bb.m
    i32 -1000001004, label %bb.n
    i32 -1000000000, label %bb.o
    i32 -1000255000, label %bb.p
    i32 1000001003, label %bb.q
    i32 -1000000001, label %bb.r
    i32 -1000012000, label %bb.s
  ]

bb.d:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.e:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.f:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.g:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.h:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.i:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.j:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.k:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.l:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.m:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.n:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.o:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.p:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.q:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.r:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.s:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

bb.t:                                             ; preds = %bb.c
  br label %VkErrorMessages.exit

VkErrorMessages.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i = phi ptr [ @.str.74, %bb.t ], [ @.str.73, %bb.s ], [ @.str.58, %bb.d ], [ @.str.59, %bb.e ], [ @.str.60, %bb.f ], [ @.str.61, %bb.g ], [ @.str.62, %bb.h ], [ @.str.63, %bb.i ], [ @.str.64, %bb.j ], [ @.str.65, %bb.k ], [ @.str.66, %bb.l ], [ @.str.67, %bb.m ], [ @.str.68, %bb.n ], [ @.str.69, %bb.o ], [ @.str.70, %bb.p ], [ @.str.71, %bb.q ], [ @.str.72, %bb.r ], [ @.str.57, %bb.c ]
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.14, ptr noundef nonnull %.0.i) #13
  br label %bb.u

bb.u:                                             ; preds = %VkErrorMessages.exit, %bb.b
  switch i32 %i.f, label %bb.al [
    i32 -1, label %VkErrorMessages.exit69
    i32 -2, label %bb.v
    i32 -12, label %bb.w
    i32 -1000069000, label %bb.x
    i32 -3, label %bb.y
    i32 -6, label %bb.z
    i32 -7, label %bb.aa
    i32 -8, label %bb.ab
    i32 -10, label %bb.ac
    i32 -4, label %bb.ad
    i32 -9, label %bb.ae
    i32 -1000001004, label %bb.af
    i32 -1000000000, label %bb.ag
    i32 -1000255000, label %bb.ah
    i32 1000001003, label %bb.ai
    i32 -1000000001, label %bb.aj
    i32 -1000012000, label %bb.ak
  ]

bb.v:                                             ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.w:                                             ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.x:                                             ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.y:                                             ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.z:                                             ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.aa:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.ab:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.ac:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.ad:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.ae:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.af:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.ag:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.ah:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.ai:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.aj:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.ak:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

bb.al:                                            ; preds = %bb.u
  br label %VkErrorMessages.exit69

VkErrorMessages.exit69:                           ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al
  %.0.i68 = phi ptr [ @.str.74, %bb.al ], [ @.str.73, %bb.ak ], [ @.str.58, %bb.v ], [ @.str.59, %bb.w ], [ @.str.60, %bb.x ], [ @.str.61, %bb.y ], [ @.str.62, %bb.z ], [ @.str.63, %bb.aa ], [ @.str.64, %bb.ab ], [ @.str.65, %bb.ac ], [ @.str.66, %bb.ad ], [ @.str.67, %bb.ae ], [ @.str.68, %bb.af ], [ @.str.69, %bb.ag ], [ @.str.70, %bb.ah ], [ @.str.71, %bb.ai ], [ @.str.72, %bb.aj ], [ @.str.57, %bb.u ]
  %i.j = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.14, ptr noundef nonnull %.0.i68) #13 ; 0 uses
  br label %._crit_edge.thread

bb.am:                                            ; preds = %bb.a
  %i.k = load i32, ptr %i.a, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void (i32, ptr, ...) @SDL_LogInfo_REAL(i32 noundef 9, ptr noundef nonnull @.str.75) #13
  br label %._crit_edge.thread

bb.ao:                                            ; preds = %bb.am
  %i.m = zext i32 %i.k to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = alloca i8, i64 %i.n, align 16            ; 3 uses
  %i.p = mul nuw nsw i64 %i.m, 6
  %i.q = alloca i8, i64 %i.p, align 16            ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8
  %i.t = call i32 %i.r(ptr noundef %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o) #13
  switch i32 %i.t, label %bb.bf [
    i32 5, label %.thread
    i32 0, label %.preheader
    i32 -1, label %VkErrorMessages.exit71
    i32 -2, label %bb.ap
    i32 -12, label %bb.aq
    i32 -1000069000, label %bb.ar
    i32 -3, label %bb.as
    i32 -6, label %bb.at
    i32 -7, label %bb.au
    i32 -8, label %bb.av
    i32 -10, label %bb.aw
    i32 -4, label %bb.ax
    i32 -9, label %bb.ay
    i32 -1000001004, label %bb.az
    i32 -1000000000, label %bb.ba
    i32 -1000255000, label %bb.bb
    i32 1000001003, label %bb.bc
    i32 -1000000001, label %bb.bd
    i32 -1000012000, label %bb.be
  ]

.thread:                                          ; preds = %bb.ao
  call void (i32, ptr, ...) @SDL_LogWarn_REAL(i32 noundef 9, ptr noundef nonnull @.str.76) #13
  br label %.preheader

.preheader:                                       ; preds = %bb.ao, %.thread
  %i.u = load i32, ptr %i.a, align 4
  %.not97 = icmp eq i32 %i.u, 0
  br i1 %.not97, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1405 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 532
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1406
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 260
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 3 uses
  br label %bb.bg

bb.ap:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.aq:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.ar:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.as:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.at:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.au:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.av:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.aw:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.ax:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.ay:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.az:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.ba:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.bb:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.bc:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.bd:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.be:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

bb.bf:                                            ; preds = %bb.ao
  br label %VkErrorMessages.exit71

VkErrorMessages.exit71:                           ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf
  %.0.i70 = phi ptr [ @.str.74, %bb.bf ], [ @.str.73, %bb.be ], [ @.str.58, %bb.ap ], [ @.str.59, %bb.aq ], [ @.str.60, %bb.ar ], [ @.str.61, %bb.as ], [ @.str.62, %bb.at ], [ @.str.63, %bb.au ], [ @.str.64, %bb.av ], [ @.str.65, %bb.aw ], [ @.str.66, %bb.ax ], [ @.str.67, %bb.ay ], [ @.str.68, %bb.az ], [ @.str.69, %bb.ba ], [ @.str.70, %bb.bb ], [ @.str.71, %bb.bc ], [ @.str.72, %bb.bd ], [ @.str.57, %bb.ao ]
  call void (i32, ptr, ...) @SDL_LogWarn_REAL(i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef nonnull %.0.i70) #13
  br label %._crit_edge.thread

bb.bg:                                            ; preds = %.lr.ph, %bb.bz
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bz ] ; 4 uses
  %.095 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.bz ] ; 6 uses
  %.05294 = phi i32 [ 0, %.lr.ph ], [ %.254, %bb.bz ] ; 3 uses
  %.05593 = phi i32 [ -1, %.lr.ph ], [ %.257, %bb.bz ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [6 x i8], ptr %i.q, i64 %indvars.iv ; 4 uses
  %i.am = call fastcc zeroext i8 @VULKAN_INTERNAL_IsDeviceSuitable(ptr noundef %0, ptr noundef %1, ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %i.b)
  %.not67 = icmp eq i8 %i.am, 0
  br i1 %.not67, label %bb.bz, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.an = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.ao = load i8, ptr %i.v, align 1, !range !3, !noundef !4
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = select i1 %i.ap, ptr @VULKAN_INTERNAL_GetDeviceRank.DEVICE_PRIORITY_LOWPOWER, ptr @VULKAN_INTERNAL_GetDeviceRank.DEVICE_PRIORITY_HIGHPERFORMANCE
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.as = load i8, ptr %i.ar, align 2             ; 2 uses
  %.not.i = icmp eq i8 %i.as, 0
  br i1 %.not.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.au = load i8, ptr %i.at, align 2
  %.not56.i = icmp eq i8 %i.au, 0
  br i1 %.not56.i, label %bb.bm, label %.thread71.i

.thread71.i:                                      ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %3, i8 0, i64 536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 1000059001, ptr %2, align 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %3, i8 0, i64 536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 1000059001, ptr %2, align 8
  store ptr %3, ptr %i.w, align 8
  store i32 1000196000, ptr %3, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2
  %i.av = icmp eq i8 %.pre.i, 0
  br i1 %i.av, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread71.i
  %i.aw = phi ptr [ %i.at, %.thread71.i ], [ %.phi.trans.insert.i, %bb.bj ]
  %.04774.i = phi ptr [ %i.w, %.thread71.i ], [ %i.x, %bb.bj ]
  store ptr %4, ptr %.04774.i, align 8
  store i32 1000530000, ptr %4, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ax = phi ptr [ %i.aw, %bb.bk ], [ %.phi.trans.insert.i, %bb.bj ]
  %.148.i = phi ptr [ %i.y, %bb.bk ], [ %i.x, %bb.bj ]
  store ptr null, ptr %.148.i, align 8
  %i.ay = load ptr, ptr %i.z, align 8
  call void %i.ay(ptr noundef %i.an, ptr noundef nonnull %2) #13, !inline_history !25
  %.not59.i = icmp ne i8 %i.as, 0
  %7 = load i8, ptr %i.aa, align 4
  %8 = icmp eq i8 %7, 0
  %i.az = load i8, ptr %i.ax, align 1
  %9 = icmp eq i8 %i.az, 0
  %10 = load i32, ptr %i.ab, align 8
  %11 = icmp eq i32 %10, 0
  %or.cond.not65.i = select i1 %9, i1 true, i1 %11 ; 2 uses
  %i.ba = load i32, ptr %i.ac, align 8
  %.046.i = select i1 %or.cond.not65.i, i32 %i.ba, i32 3
  %.not62.i = and i1 %.not59.i, %or.cond.not65.i
  %or.cond.i = select i1 %.not62.i, i1 %8, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bb = load ptr, ptr %i.ad, align 8
  call void %i.bb(ptr noundef %i.an, ptr noundef nonnull %5) #13, !inline_history !25
  %i.bc = load i32, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.147.i = phi i32 [ %.046.i, %bb.bl ], [ %i.bc, %bb.bm ] ; 2 uses
  %.2.i = phi i1 [ %or.cond.i, %bb.bl ], [ false, %bb.bm ]
  %i.bd = load i8, ptr %i.af, align 2, !range !3, !noundef !4
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = add i32 %.147.i, -4
  %or.cond6.i = icmp ult i32 %i.bf, -3
  %or.cond61.i = select i1 %i.be, i1 %or.cond6.i, i1 false
  %brmerge.i = select i1 %or.cond61.i, i1 true, i1 %.2.i
  br i1 %brmerge.i, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.bg = zext i32 %.147.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64
  %i.bk = mul nuw nsw i64 %i.bj, 1000000          ; 3 uses
  %i.bl = icmp ult i64 %.095, %i.bk
  br i1 %i.bl, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.bm = icmp ugt i64 %.095, %i.bk
  br i1 %i.bm, label %bb.bz, label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.074 = phi i64 [ %.095, %bb.bp ], [ %i.bk, %bb.bo ] ; 2 uses
  %i.bn = load i8, ptr %i.v, align 1, !range !3, !noundef !4
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.by, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.bp = load ptr, ptr %i.ag, align 8
  call void %i.bp(ptr noundef %i.an, ptr noundef nonnull %6) #13, !inline_history !25
  %i.bq = load i32, ptr %i.ah, align 4            ; 4 uses
  %.not65.i = icmp eq i32 %i.bq, 0
  br i1 %.not65.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.br
  %wide.trip.count.i = zext i32 %i.bq to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bw, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.bw ] ; 3 uses
  %.04464.i = phi i64 [ 0, %.lr.ph.i.new ], [ %.145.i.1, %bb.bw ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.bw ]
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.i ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bt = and i32 %.sroa.4.0.copyload.i, 1
  %.not60.i = icmp eq i32 %i.bt, 0
  br i1 %.not60.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.sroa.0.0.copyload.i = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %.sroa.0.0.copyload.i, %.04464.i
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.145.i = phi i64 [ %i.bu, %bb.bt ], [ %.04464.i, %bb.bs ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.i ; 2 uses
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.sroa.4.0.copyload.i.1 = load i32, ptr %.sroa.4.0..sroa_idx.i.1, align 8
  %i.bw = and i32 %.sroa.4.0.copyload.i.1, 1
  %.not60.i.1 = icmp eq i32 %i.bw, 0
  br i1 %.not60.i.1, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.bx, align 8
  %i.by = add i64 %.sroa.0.0.copyload.i.1, %.145.i
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.145.i.1 = phi i64 [ %i.by, %bb.bv ], [ %.145.i, %bb.bu ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.bs, !llvm.loop !26

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.bw
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.04464.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %.145.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod108 = trunc i32 %i.bq to i1
  call void @llvm.assume(i1 %lcmp.mod108)
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.i.epil.init ; 2 uses
  %.sroa.4.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.4.0.copyload.i.epil = load i32, ptr %.sroa.4.0..sroa_idx.i.epil, align 8
  %i.ca = and i32 %.sroa.4.0.copyload.i.epil, 1
  %.not60.i.epil = icmp eq i32 %i.ca, 0
  br i1 %.not60.i.epil, label %._crit_edge.loopexit.i, label %bb.bx

bb.bx:                                            ; preds = %.epil.preheader
  %.sroa.0.0.copyload.i.epil = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %.sroa.0.0.copyload.i.epil, %.04464.i.epil.init
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.epil.preheader, %bb.bx, %._crit_edge.loopexit.i.unr-lcssa
  %.145.i.lcssa = phi i64 [ %.145.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.cb, %bb.bx ], [ %.04464.i.epil.init, %.epil.preheader ]
  %i.cc = lshr i64 %.145.i.lcssa, 20
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.br
  %.044.lcssa.i = phi i64 [ 0, %bb.br ], [ %i.cc, %._crit_edge.loopexit.i ]
  %i.cd = add nuw nsw i64 %.044.lcssa.i, %.074
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.by

bb.by:                                            ; preds = %bb.bq, %._crit_edge.i
  %.175.ph = phi i64 [ %i.cd, %._crit_edge.i ], [ %.074, %bb.bq ]
  %i.ce = load i32, ptr %i.b, align 4
  %i.cf = trunc nuw i64 %indvars.iv to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bn, %bb.bp, %bb.by, %bb.bg
  %.257 = phi i32 [ %.05593, %bb.bg ], [ %i.cf, %bb.by ], [ %.05593, %bb.bp ], [ %.05593, %bb.bn ] ; 3 uses
  %.254 = phi i32 [ %.05294, %bb.bg ], [ %i.ce, %bb.by ], [ %.05294, %bb.bp ], [ %.05294, %bb.bn ] ; 2 uses
  %.2 = phi i64 [ %.095, %bb.bg ], [ %.175.ph, %bb.by ], [ %.095, %bb.bp ], [ %.095, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load i32, ptr %i.a, align 4
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp samesign ult i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %bb.bg, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.bz
  %.not65 = icmp eq i32 %.257, -1
  br i1 %.not65, label %._crit_edge.thread, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.ck = sext i32 %.257 to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [6 x i8], ptr %i.q, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cj, ptr noundef nonnull align 2 dereferenceable(6) %i.cl, i64 6, i1 false)
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ck
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1984
  store i32 %.254, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 1000059001, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1418
  %i.cs = load i8, ptr %i.cr, align 2
  %.not66 = icmp eq i8 %i.cs, 0
  br i1 %.not66, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  store i32 1000196000, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr null, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ct, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef %i.cn, ptr noundef nonnull %i.cq) #13
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void %i.da(ptr noundef %i.cn, ptr noundef nonnull %i.db) #13
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = load ptr, ptr %i.co, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1440
  call void %i.dd(ptr noundef %i.de, ptr noundef nonnull %i.df) #13
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge, %bb.cd, %VkErrorMessages.exit71, %bb.an, %VkErrorMessages.exit69
  %.060 = phi i8 [ 0, %VkErrorMessages.exit69 ], [ 0, %bb.an ], [ 0, %VkErrorMessages.exit71 ], [ 1, %bb.cd ], [ 0, %._crit_edge ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i8 %.060
}

declare i32 @SDL_setenv_unsafe_REAL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SDL_Vulkan_GetVkGetInstanceProcAddr_REAL() local_unnamed_addr #2

declare ptr @SDL_GetError_REAL() local_unnamed_addr #2

declare zeroext i1 @SDL_HasProperty_REAL(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SDL_GetPointerProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @VULKAN_INTERNAL_TryAddDeviceFeatures_Vulkan_11(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 8
  switch i32 %i.a, label %VULKAN_INTERNAL_AddDeviceFeatures.exit [
    i32 1000059000, label %vector.memcheck
    i32 1000083000, label %bb.b
    i32 1000053001, label %bb.c
    i32 1000145001, label %bb.d
    i32 1000156004, label %bb.e
    i32 1000063000, label %bb.f
end_hunk_0
begin_hunk_1_@VULKAN_ReleaseSampler:bb.a
bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2160 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = tail call ptr @SDL_realloc_REAL(ptr noundef %i.j, i64 noundef %i.l) #17 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8
  %.pre15 = load i32, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi i32 [ %i.d, %._crit_edge ], [ %.pre15, %bb.b ]
  %i.o = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %bb.b ]
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  store ptr %1, ptr %i.q, align 8
  %i.r = load i32, ptr %i.c, align 8
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.a, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.t) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_ReleaseBuffer(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call fastcc void @VULKAN_INTERNAL_ReleaseBufferContainer(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_ReleaseTransferBuffer(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call fastcc void @VULKAN_INTERNAL_ReleaseBufferContainer(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_ReleaseShader(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = add i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2220 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not = icmp ult i32 %i.e, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = tail call ptr @SDL_realloc_REAL(ptr noundef %i.j, i64 noundef %i.l) #17 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8
  %.pre15 = load i32, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi i32 [ %i.d, %._crit_edge ], [ %.pre15, %bb.b ]
  %i.o = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %bb.b ]
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  store ptr %1, ptr %i.q, align 8
  %i.r = load i32, ptr %i.c, align 8
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.a, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.t) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_ReleaseComputePipeline(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2200 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = add i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2204 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not = icmp ult i32 %i.e, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = tail call ptr @SDL_realloc_REAL(ptr noundef %i.j, i64 noundef %i.l) #17 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8
  %.pre15 = load i32, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi i32 [ %i.d, %._crit_edge ], [ %.pre15, %bb.b ]
  %i.o = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %bb.b ]
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  store ptr %1, ptr %i.q, align 8
  %i.r = load i32, ptr %i.c, align 8
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.a, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.t) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_ReleaseGraphicsPipeline(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = add i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2188 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not = icmp ult i32 %i.e, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext i32 %i.h to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = tail call ptr @SDL_realloc_REAL(ptr noundef %i.j, i64 noundef %i.l) #17 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8
  %.pre15 = load i32, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi i32 [ %i.d, %._crit_edge ], [ %.pre15, %bb.b ]
  %i.o = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %bb.b ]
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  store ptr %1, ptr %i.q, align 8
  %i.r = load i32, ptr %i.c, align 8
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.a, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.t) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_BeginRenderPass(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %4 = alloca %struct.VkFramebufferCreateInfo, align 8 ; 12 uses
  %i.b = alloca [17 x ptr], align 16              ; 8 uses
  %5 = alloca %struct.FramebufferHashTableKey, align 8 ; 13 uses
  %6 = alloca %struct.VkRenderPassBeginInfo, align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 10 uses
  %.not218 = icmp eq i32 %2, 0                    ; 5 uses
  br i1 %.not218, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %2, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.0155204 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %.0157203 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %.1156.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = lshr i32 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i32, ptr %i.m, align 8
  %i.o = lshr i32 %i.n, %i.k
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %.0155204)
  %.1156 = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %.0157203)
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = lshr i32 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = load i32, ptr %i.x, align 8
  %i.z = lshr i32 %i.y, %i.v
  %spec.select.1 = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %spec.select) ; 3 uses
  %.1156.1 = tail call i32 @llvm.umin.i32(i32 %i.z, i32 %.1156) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !74

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0155204.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0157203.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %.1156.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod269 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = lshr i32 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = lshr i32 %i.ai, %i.af
  %spec.select.epil = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %.0155204.epil.init)
  %.1156.epil = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %.0157203.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0157.lcssa.a = phi i32 [ -1, %bb.a ], [ %.1156.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1156.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %.0155.lcssa.a = phi i32 [ -1, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %.not = icmp eq ptr %3, null                    ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ak = load ptr, ptr %3, align 8               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.ao = load i8, ptr %i.an, align 2
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = lshr i32 %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = lshr i32 %i.as, %i.ap
  %spec.select182 = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 %.0155.lcssa.a)
  %.2.a = tail call i32 @llvm.umin.i32(i32 %i.at, i32 %.0157.lcssa.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.3160 = phi i32 [ %.2.a, %bb.b ], [ %.0157.lcssa.a, %._crit_edge ] ; 4 uses
  %.3 = phi i32 [ %spec.select182, %bb.b ], [ %.0155.lcssa.a, %._crit_edge ] ; 4 uses
  br i1 %.not218, label %._crit_edge211, label %.lr.ph210

.lr.ph210:                                        ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2600 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2604 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %wide.trip.count225 = zext i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph210, %bb.p
  %indvars.iv222 = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next223, %bb.p ] ; 2 uses
  %i.bb = phi <2 x i32> [ zeroinitializer, %.lr.ph210 ], [ %i.en, %bb.p ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv222 ; 9 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = icmp eq i32 %i.be, 2
  br i1 %i.bf, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bh = load i32, ptr %i.bg, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bi = phi i32 [ %i.bh, %bb.e ], [ 0, %bb.d ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bm = load i8, ptr %i.bl, align 8, !range !3, !noundef !4
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = tail call fastcc ptr @VULKAN_INTERNAL_PrepareTextureSubresourceForWrite(ptr noundef %i.d, ptr noundef nonnull %0, ptr noundef nonnull %i.bd, i32 noundef %i.bi, i32 noundef %i.bk, i1 noundef zeroext %i.bn, i32 noundef 7) ; 2 uses
  %i.bp = load i32, ptr %i.av, align 8
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bq
  store ptr %i.bo, ptr %i.br, align 8
  %i.bs = load i32, ptr %i.av, align 8
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.av, align 8
  %i.bu = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bv = load i32, ptr %i.aw, align 8            ; 5 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph254, label %._crit_edge255

.lr.ph254:                                        ; preds = %bb.f
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = load ptr, ptr %i.ax, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.bz = trunc nuw i64 %i.cb to i32
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %bb.h, label %._crit_edge255, !llvm.loop !67

bb.h:                                             ; preds = %.lr.ph254, %bb.g
  %indvars.iv.i252 = phi i64 [ %i.bx, %.lr.ph254 ], [ %i.cb, %bb.g ]
  %i.cb = add nsw i64 %indvars.iv.i252, -1        ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp eq ptr %i.cd, %i.bu
  br i1 %i.ce, label %VULKAN_INTERNAL_TrackTexture.exit, label %bb.g, !llvm.loop !67

._crit_edge255:                                   ; preds = %bb.g, %bb.f
  %i.cf = load i32, ptr %i.ay, align 4
  %i.cg = icmp eq i32 %i.bv, %i.cf
  %.pre.i = load ptr, ptr %i.ax, align 8          ; 2 uses
  br i1 %i.cg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge255
  %i.ch = add nsw i32 %i.bv, 1                    ; 2 uses
  store i32 %i.ch, ptr %i.ay, align 4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = shl nsw i64 %i.ci, 3
  %i.ck = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.cj) #17 ; 2 uses
  store ptr %i.ck, ptr %i.ax, align 8
  %.pre22.i = load i32, ptr %i.aw, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge255
  %i.cl = phi i32 [ %.pre22.i, %bb.i ], [ %i.bv, %._crit_edge255 ]
  %i.cm = phi ptr [ %i.ck, %bb.i ], [ %.pre.i, %._crit_edge255 ]
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn
  store ptr %i.bu, ptr %i.co, align 8
  %i.cp = load i32, ptr %i.aw, align 8
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.aw, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 100
  %i.cs = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.cr, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackTexture.exit

VULKAN_INTERNAL_TrackTexture.exit:                ; preds = %bb.h, %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add <2 x i32> %i.bb, splat (i32 1)
  %i.cw = add i32 %i.cu, -2
  %i.cx = icmp ult i32 %i.cw, 2
  br i1 %i.cx, label %bb.k, label %bb.p

bb.k:                                             ; preds = %VULKAN_INTERNAL_TrackTexture.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.bc, i64 52
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.bc, i64 57
  %i.df = load i8, ptr %i.de, align 1, !range !3, !noundef !4
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = tail call fastcc ptr @VULKAN_INTERNAL_PrepareTextureSubresourceForWrite(ptr noundef %i.d, ptr noundef nonnull %0, ptr noundef %i.cz, i32 noundef %i.db, i32 noundef %i.dd, i1 noundef zeroext %i.dg, i32 noundef 7) ; 2 uses
  %i.di = load i32, ptr %i.ba, align 8
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.dj
  store ptr %i.dh, ptr %i.dk, align 8
  %i.dl = load i32, ptr %i.ba, align 8
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.ba, align 8
  %i.dn = load ptr, ptr %i.dh, align 8            ; 3 uses
  %i.do = load i32, ptr %i.aw, align 8            ; 5 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %bb.k
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = load ptr, ptr %i.ax, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.ds = trunc nuw i64 %i.du to i32
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %bb.m, label %._crit_edge259, !llvm.loop !67

bb.m:                                             ; preds = %.lr.ph258, %bb.l
  %indvars.iv.i184256 = phi i64 [ %i.dq, %.lr.ph258 ], [ %i.du, %bb.l ]
  %i.du = add nsw i64 %indvars.iv.i184256, -1     ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = icmp eq ptr %i.dw, %i.dn
  br i1 %i.dx, label %VULKAN_INTERNAL_TrackTexture.exit187, label %bb.l, !llvm.loop !67

._crit_edge259:                                   ; preds = %bb.l, %bb.k
  %i.dy = load i32, ptr %i.ay, align 4
  %i.dz = icmp eq i32 %i.do, %i.dy
  %.pre.i185 = load ptr, ptr %i.ax, align 8       ; 2 uses
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge259
  %i.ea = add nsw i32 %i.do, 1                    ; 2 uses
  store i32 %i.ea, ptr %i.ay, align 4
  %i.eb = sext i32 %i.ea to i64
  %i.ec = shl nsw i64 %i.eb, 3
  %i.ed = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i185, i64 noundef %i.ec) #17 ; 2 uses
  store ptr %i.ed, ptr %i.ax, align 8
  %.pre22.i186 = load i32, ptr %i.aw, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge259
  %i.ee = phi i32 [ %.pre22.i186, %bb.n ], [ %i.do, %._crit_edge259 ]
  %i.ef = phi ptr [ %i.ed, %bb.n ], [ %.pre.i185, %._crit_edge259 ]
  %i.eg = sext i32 %i.ee to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eg
  store ptr %i.dn, ptr %i.eh, align 8
  %i.ei = load i32, ptr %i.aw, align 8
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.aw, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 100
  %i.el = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.ek, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackTexture.exit187

VULKAN_INTERNAL_TrackTexture.exit187:             ; preds = %bb.m, %bb.o
  %i.em = add <2 x i32> %i.bb, splat (i32 2)
  br label %bb.p

bb.p:                                             ; preds = %VULKAN_INTERNAL_TrackTexture.exit, %VULKAN_INTERNAL_TrackTexture.exit187
  %i.en = phi <2 x i32> [ %i.em, %VULKAN_INTERNAL_TrackTexture.exit187 ], [ %i.cv, %VULKAN_INTERNAL_TrackTexture.exit ] ; 3 uses
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next223, %wide.trip.count225
  br i1 %exitcond226.not, label %._crit_edge211.loopexit, label %bb.d, !llvm.loop !75

._crit_edge211.loopexit:                          ; preds = %bb.p
  %i.eo = extractelement <2 x i32> %i.en, i64 1
  %i.ep = zext i32 %i.eo to i64
  %i.eq = extractelement <2 x i32> %i.en, i64 0
  br label %._crit_edge211

._crit_edge211:                                   ; preds = %._crit_edge211.loopexit, %bb.c
  %.0157.lcssa = phi i64 [ 0, %bb.c ], [ %i.ep, %._crit_edge211.loopexit ]
  %.0155.lcssa = phi i32 [ 0, %bb.c ], [ %i.eq, %._crit_edge211.loopexit ] ; 2 uses
  br i1 %.not, label %.split, label %.split170

.split170:                                        ; preds = %._crit_edge211
  %i.er = load ptr, ptr %3, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 31
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.ew = load i8, ptr %i.ev, align 2
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ez = load i8, ptr %i.ey, align 4, !range !3, !noundef !4
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = tail call fastcc ptr @VULKAN_INTERNAL_PrepareTextureSubresourceForWrite(ptr noundef %i.d, ptr noundef nonnull %0, ptr noundef %i.er, i32 noundef %i.eu, i32 noundef %i.ex, i1 noundef zeroext %i.fa, i32 noundef 8) ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %i.fb, ptr %i.fc, align 8
  %i.fd = load ptr, ptr %i.fb, align 8            ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 2600 ; 4 uses
  %i.ff = load i32, ptr %i.fe, align 8            ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 3 uses
  %i.fh = icmp sgt i32 %i.ff, 0
  br i1 %i.fh, label %.lr.ph261, label %._crit_edge262

.lr.ph261:                                        ; preds = %.split170
  %i.fi = zext nneg i32 %i.ff to i64
  %i.fj = load ptr, ptr %i.fg, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.fk = trunc nuw i64 %i.fm to i32
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %bb.r, label %._crit_edge262, !llvm.loop !67

bb.r:                                             ; preds = %.lr.ph261, %bb.q
  %indvars.iv.i188260 = phi i64 [ %i.fi, %.lr.ph261 ], [ %i.fm, %bb.q ]
  %i.fm = add nsw i64 %indvars.iv.i188260, -1     ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = icmp eq ptr %i.fo, %i.fd
  br i1 %i.fp, label %VULKAN_INTERNAL_TrackTexture.exit191, label %bb.q, !llvm.loop !67

._crit_edge262:                                   ; preds = %bb.q, %.split170
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 2604 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = icmp eq i32 %i.ff, %i.fr
  %.pre.i189 = load ptr, ptr %i.fg, align 8       ; 2 uses
  br i1 %i.fs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge262
  %i.ft = add nsw i32 %i.ff, 1                    ; 2 uses
  store i32 %i.ft, ptr %i.fq, align 4
  %i.fu = sext i32 %i.ft to i64
  %i.fv = shl nsw i64 %i.fu, 3
  %i.fw = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i189, i64 noundef %i.fv) #17 ; 2 uses
  store ptr %i.fw, ptr %i.fg, align 8
  %.pre22.i190 = load i32, ptr %i.fe, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge262
  %i.fx = phi i32 [ %.pre22.i190, %bb.s ], [ %i.ff, %._crit_edge262 ]
  %i.fy = phi ptr [ %i.fw, %bb.s ], [ %.pre.i189, %._crit_edge262 ]
  %i.fz = sext i32 %i.fx to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.fz
  store ptr %i.fd, ptr %i.ga, align 8
  %i.gb = load i32, ptr %i.fe, align 8
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %i.fe, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fd, i64 100
  %i.ge = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.gd, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackTexture.exit191

VULKAN_INTERNAL_TrackTexture.exit191:             ; preds = %bb.r, %bb.t
  %i.gf = add i32 %.0155.lcssa, 1
  br label %.split

.split:                                           ; preds = %._crit_edge211, %VULKAN_INTERNAL_TrackTexture.exit191
  %.sink = phi ptr [ %3, %VULKAN_INTERNAL_TrackTexture.exit191 ], [ null, %._crit_edge211 ]
  %.2168 = phi i32 [ %i.gf, %VULKAN_INTERNAL_TrackTexture.exit191 ], [ %.0155.lcssa, %._crit_edge211 ] ; 2 uses
  %i.gg = tail call fastcc ptr @VULKAN_INTERNAL_FetchRenderPass(ptr noundef %i.d, ptr noundef %1, i32 noundef %2, ptr noundef %.sink) ; 3 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.cg, label %bb.u

bb.u:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.b, i8 0, i64 136, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %5, i8 0, i64 160, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 %2, ptr %i.gi, align 8
  br i1 %.not218, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 3 uses
  %wide.trip.count.i = zext i32 %2 to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv.i192 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv.i192 ; 6 uses
  %i.gm = load ptr, ptr %i.gl, align 8            ; 3 uses
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = icmp eq i32 %i.gn, 2                    ; 2 uses
  br i1 %i.go, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.gq = load i32, ptr %i.gp, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gr = phi i32 [ %i.gq, %bb.w ], [ 0, %bb.v ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gt = load i32, ptr %i.gs, align 8            ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gm, i64 24
  %.val111.i = load i32, ptr %i.gu, align 8
  %i.gv = getelementptr i8, ptr %i.gm, i64 40
  %.val112.i = load ptr, ptr %i.gv, align 8
  %i.gw = getelementptr i8, ptr %.val112.i, i64 88
  %.val112.val.i = load ptr, ptr %i.gw, align 8
  %i.gx = mul i32 %.val111.i, %i.gr
  %i.gy = add i32 %i.gx, %i.gt
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [40 x i8], ptr %.val112.val.i, i64 %i.gz
  br i1 %i.go, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = zext i32 %i.hc to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.he = phi i64 [ %i.hd, %bb.y ], [ 0, %bb.x ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.he
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i192
  store ptr %i.hi, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8            ; 3 uses
  %.not101.i = icmp eq ptr %i.hl, null
  br i1 %.not101.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = getelementptr i8, ptr %i.hl, i64 24
  %.val109.i = load i32, ptr %i.ho, align 8
  %i.hp = getelementptr i8, ptr %i.hl, i64 40
  %.val110.i = load ptr, ptr %i.hp, align 8
  %i.hq = getelementptr i8, ptr %.val110.i, i64 88
  %.val110.val.i = load ptr, ptr %i.hq, align 8
  %i.hr = mul i32 %.val109.i, %i.hn
  %i.hs = add i32 %i.hr, %i.gt
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [40 x i8], ptr %.val110.val.i, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = load i32, ptr %i.gk, align 8
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.hz
  store ptr %i.hx, ptr %i.ia, align 8
  %i.ib = load i32, ptr %i.gk, align 8
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr %i.gk, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i192, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.v, !llvm.loop !76

._crit_edge.i:                                    ; preds = %bb.ab, %bb.u
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i
  %i.id = load ptr, ptr %3, align 8               ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 31
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = zext i8 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.ii = load i8, ptr %i.ih, align 2
  %i.ij = zext i8 %i.ii to i32
  %i.ik = getelementptr i8, ptr %i.id, i64 24
  %.val107.i = load i32, ptr %i.ik, align 8
  %i.il = getelementptr i8, ptr %i.id, i64 40
  %.val108.i = load ptr, ptr %i.il, align 8
  %i.im = getelementptr i8, ptr %.val108.i, i64 88
  %.val108.val.i = load ptr, ptr %i.im, align 8
  %i.in = mul i32 %.val107.i, %i.ig
  %i.io = add i32 %i.in, %i.ij
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [40 x i8], ptr %.val108.val.i, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = load ptr, ptr %i.ir, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i
  %.sink.i = phi ptr [ %i.is, %bb.ac ], [ null, %._crit_edge.i ]
  %i.it = getelementptr inbounds nuw i8, ptr %5, i64 144
  store ptr %.sink.i, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 2 uses
  store i32 %.3, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 %.3160, ptr %i.iv, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.d, i64 2288 ; 3 uses
  %i.ix = load ptr, ptr %i.iw, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.ix) #13
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 2056 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.iz, ptr noundef nonnull %5, ptr noundef nonnull %i.a) #13
  br i1 %i.ja, label %VULKAN_INTERNAL_FetchFramebuffer.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jb = call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #13 ; 2 uses
  store ptr %i.jb, ptr %i.a, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.jc, i32 noundef 0) #13 ; 0 uses
  br i1 %.not218, label %._crit_edge120.i, label %.lr.ph119.preheader.i

.lr.ph119.preheader.i:                            ; preds = %bb.ae
  %wide.trip.count126.i = zext i32 %2 to i64
  br label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.ak, %.lr.ph119.preheader.i
  %indvars.iv123.i = phi i64 [ 0, %.lr.ph119.preheader.i ], [ %indvars.iv.next124.i, %bb.ak ] ; 2 uses
  %.092117.i = phi i32 [ 0, %.lr.ph119.preheader.i ], [ %.1.i, %bb.ak ] ; 3 uses
  %i.je = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv123.i ; 8 uses
  %i.jf = load ptr, ptr %i.je, align 8            ; 3 uses
  %i.jg = load i32, ptr %i.jf, align 8
  %i.jh = icmp eq i32 %i.jg, 2                    ; 2 uses
  br i1 %i.jh, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph119.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  %i.jj = load i32, ptr %i.ji, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph119.i
  %i.jk = phi i32 [ %i.jj, %bb.af ], [ 0, %.lr.ph119.i ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jm = load i32, ptr %i.jl, align 8
  %i.jn = getelementptr i8, ptr %i.jf, i64 24
  %.val105.i = load i32, ptr %i.jn, align 8
  %i.jo = getelementptr i8, ptr %i.jf, i64 40
  %.val106.i = load ptr, ptr %i.jo, align 8
  %i.jp = getelementptr i8, ptr %.val106.i, i64 88
  %.val106.val.i = load ptr, ptr %i.jp, align 8
  %i.jq = mul i32 %.val105.i, %i.jk
  %i.jr = add i32 %i.jq, %i.jm
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [40 x i8], ptr %.val106.val.i, i64 %i.js
  br i1 %i.jh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ju = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = zext i32 %i.jv to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.jx = phi i64 [ %i.jw, %bb.ah ], [ 0, %bb.ag ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jx
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = zext i32 %.092117.i to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kc
  store ptr %i.kb, ptr %i.kd, align 8
  %i.ke = add i32 %.092117.i, 1                   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.je, i64 36
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = and i32 %i.kg, -2
  %switch.i = icmp eq i32 %i.kh, 2
  br i1 %switch.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ki = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.kj = load ptr, ptr %i.ki, align 8            ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.je, i64 52
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.kn = load i32, ptr %i.km, align 8
  %i.ko = getelementptr i8, ptr %i.kj, i64 24
  %.val103.i = load i32, ptr %i.ko, align 8
  %i.kp = getelementptr i8, ptr %i.kj, i64 40
  %.val104.i = load ptr, ptr %i.kp, align 8
  %i.kq = getelementptr i8, ptr %.val104.i, i64 88
  %.val104.val.i = load ptr, ptr %i.kq, align 8
  %i.kr = mul i32 %.val103.i, %i.kl
  %i.ks = add i32 %i.kr, %i.kn
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [40 x i8], ptr %.val104.val.i, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = zext i32 %i.ke to i64
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ky
  store ptr %i.kx, ptr %i.kz, align 8
  %i.la = add i32 %.092117.i, 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1.i = phi i32 [ %i.la, %bb.aj ], [ %i.ke, %bb.ai ] ; 2 uses
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond127.not.i = icmp eq i64 %indvars.iv.next124.i, %wide.trip.count126.i
  br i1 %exitcond127.not.i, label %._crit_edge120.i, label %.lr.ph119.i, !llvm.loop !77

._crit_edge120.i:                                 ; preds = %bb.ak, %bb.ae
  %.092.lcssa.i = phi i32 [ 0, %bb.ae ], [ %.1.i, %bb.ak ] ; 3 uses
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge120.i
  %i.lb = load ptr, ptr %3, align 8               ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 31
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = zext i8 %i.ld to i32
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.lg = load i8, ptr %i.lf, align 2
  %i.lh = zext i8 %i.lg to i32
  %i.li = getelementptr i8, ptr %i.lb, i64 24
  %.val.i = load i32, ptr %i.li, align 8
  %i.lj = getelementptr i8, ptr %i.lb, i64 40
  %.val102.i = load ptr, ptr %i.lj, align 8
  %i.lk = getelementptr i8, ptr %.val102.i, i64 88
  %.val102.val.i = load ptr, ptr %i.lk, align 8
  %i.ll = mul i32 %.val.i, %i.le
  %i.lm = add i32 %i.ll, %i.lh
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [40 x i8], ptr %.val102.val.i, i64 %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = zext i32 %.092.lcssa.i to i64
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lr
  store ptr %i.lq, ptr %i.ls, align 8
  %i.lt = add i32 %.092.lcssa.i, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge120.i
  %.2.i = phi i32 [ %i.lt, %bb.al ], [ %.092.lcssa.i, %._crit_edge120.i ]
  store i32 37, ptr %4, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.lu, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.lv, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.gg, ptr %i.lw, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.2.i, ptr %i.lx, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.b, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ma = load <2 x i32>, ptr %i.iu, align 8
  store <2 x i32> %i.ma, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 1, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 2840
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 1392
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = load ptr, ptr %i.a, align 8
  %i.mh = call i32 %i.md(ptr noundef %i.mf, ptr noundef nonnull %4, ptr noundef null, ptr noundef %i.mg) #13, !inline_history !78 ; 3 uses
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.mj = call noalias ptr @SDL_malloc_REAL(i64 noundef 160) #13 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.mj, ptr noundef nonnull align 8 dereferenceable(160) %5, i64 160, i1 false)
  %i.mk = load ptr, ptr %i.iy, align 8
  %i.ml = load ptr, ptr %i.a, align 8
  %i.mm = call zeroext i1 @SDL_InsertIntoHashTable(ptr noundef %i.mk, ptr noundef nonnull %i.mj, ptr noundef %i.ml, i1 noundef zeroext true) #13 ; 0 uses
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit

bb.ao:                                            ; preds = %bb.am
  %i.mn = load ptr, ptr %i.a, align 8
  call void @SDL_free_REAL(ptr noundef %i.mn) #13
  %i.mo = load ptr, ptr %i.iw, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.mo) #13
  %i.mp = getelementptr inbounds nuw i8, ptr %i.d, i64 1404
  %i.mq = load i8, ptr %i.mp, align 4, !range !3, !noundef !4
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.ap, label %bb.bh

bb.ap:                                            ; preds = %bb.ao
  switch i32 %i.mh, label %bb.bg [
    i32 -1, label %VkErrorMessages.exit.i
    i32 -2, label %bb.aq
    i32 -12, label %bb.ar
    i32 -1000069000, label %bb.as
    i32 -3, label %bb.at
    i32 -6, label %bb.au
    i32 -7, label %bb.av
    i32 -8, label %bb.aw
    i32 -10, label %bb.ax
    i32 -4, label %bb.ay
    i32 -9, label %bb.az
    i32 -1000001004, label %bb.ba
    i32 -1000000000, label %bb.bb
    i32 -1000255000, label %bb.bc
    i32 1000001003, label %bb.bd
    i32 -1000000001, label %bb.be
    i32 -1000012000, label %bb.bf
  ]

bb.aq:                                            ; preds = %bb.ap
end_hunk_1
begin_hunk_2_@VULKAN_BeginRenderPass:bb.a
  ]

bb.bi:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bj:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bk:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bl:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bm:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bn:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bo:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bp:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bq:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.br:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bs:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bt:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bu:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bv:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bw:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.bx:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

bb.by:                                            ; preds = %bb.bh
  br label %VULKAN_INTERNAL_FetchFramebuffer.exit.thread

VULKAN_INTERNAL_FetchFramebuffer.exit.thread:     ; preds = %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by
  %.0.i113.i = phi ptr [ @.str.74, %bb.by ], [ @.str.73, %bb.bx ], [ @.str.58, %bb.bi ], [ @.str.59, %bb.bj ], [ @.str.60, %bb.bk ], [ @.str.61, %bb.bl ], [ @.str.62, %bb.bm ], [ @.str.63, %bb.bn ], [ @.str.64, %bb.bo ], [ @.str.65, %bb.bp ], [ @.str.66, %bb.bq ], [ @.str.67, %bb.br ], [ @.str.68, %bb.bs ], [ @.str.69, %bb.bt ], [ @.str.70, %bb.bu ], [ @.str.71, %bb.bv ], [ @.str.72, %bb.bw ], [ @.str.57, %bb.bh ]
  %i.ms = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.268, ptr noundef nonnull %.0.i113.i) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.cg

VULKAN_INTERNAL_FetchFramebuffer.exit:            ; preds = %bb.ad, %bb.an
  %i.mt = load ptr, ptr %i.iw, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.mt) #13
  %.0.i = load ptr, ptr %i.a, align 8             ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.mu = icmp eq ptr %.0.i, null
  br i1 %i.mu, label %bb.cg, label %bb.bz

bb.bz:                                            ; preds = %VULKAN_INTERNAL_FetchFramebuffer.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 2680 ; 4 uses
  %i.mw = load i32, ptr %i.mv, align 8            ; 5 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 3 uses
  %i.my = icmp sgt i32 %i.mw, 0
  br i1 %i.my, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %bb.bz
  %i.mz = zext nneg i32 %i.mw to i64
  %i.na = load ptr, ptr %i.mx, align 8
  br label %bb.cb

bb.ca:                                            ; preds = %bb.cb
  %i.nb = trunc nuw i64 %i.nd to i32
  %i.nc = icmp sgt i32 %i.nb, 0
  br i1 %i.nc, label %bb.cb, label %._crit_edge266, !llvm.loop !79

bb.cb:                                            ; preds = %.lr.ph265, %bb.ca
  %indvars.iv.i193263 = phi i64 [ %i.mz, %.lr.ph265 ], [ %i.nd, %bb.ca ]
  %i.nd = add nsw i64 %indvars.iv.i193263, -1     ; 3 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.nd
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = icmp eq ptr %i.nf, %.0.i
  br i1 %i.ng, label %VULKAN_INTERNAL_TrackFramebuffer.exit, label %bb.ca, !llvm.loop !79

._crit_edge266:                                   ; preds = %bb.ca, %bb.bz
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 2684 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4
  %i.nj = icmp eq i32 %i.mw, %i.ni
  %.pre.i194 = load ptr, ptr %i.mx, align 8       ; 2 uses
  br i1 %i.nj, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %._crit_edge266
  %i.nk = add nsw i32 %i.mw, 1                    ; 2 uses
  store i32 %i.nk, ptr %i.nh, align 4
  %i.nl = sext i32 %i.nk to i64
  %i.nm = shl nsw i64 %i.nl, 3
  %i.nn = call ptr @SDL_realloc_REAL(ptr noundef %.pre.i194, i64 noundef %i.nm) #17 ; 2 uses
  store ptr %i.nn, ptr %i.mx, align 8
  %.pre22.i195 = load i32, ptr %i.mv, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge266
  %i.no = phi i32 [ %.pre22.i195, %bb.cc ], [ %i.mw, %._crit_edge266 ]
  %i.np = phi ptr [ %i.nn, %bb.cc ], [ %.pre.i194, %._crit_edge266 ]
  %i.nq = sext i32 %i.no to i64
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.nq
  store ptr %.0.i, ptr %i.nr, align 8
  %i.ns = load i32, ptr %i.mv, align 8
  %i.nt = add nsw i32 %i.ns, 1
  store i32 %i.nt, ptr %i.mv, align 8
  %i.nu = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.nv = call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.nu, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackFramebuffer.exit

VULKAN_INTERNAL_TrackFramebuffer.exit:            ; preds = %bb.cb, %bb.cd
  %i.nw = zext i32 %.2168 to i64
  %i.nx = shl nuw nsw i64 %i.nw, 4
  %i.ny = alloca i8, i64 %i.nx, align 16          ; 5 uses
  br i1 %.not218, label %._crit_edge217, label %.lr.ph216.preheader

.lr.ph216.preheader:                              ; preds = %VULKAN_INTERNAL_TrackFramebuffer.exit
  %wide.trip.count230 = zext i32 %2 to i64        ; 2 uses
  %xtraiter270 = and i64 %wide.trip.count230, 1
  %i.nz = icmp eq i32 %2, 1
  br i1 %i.nz, label %.lr.ph216.epil.preheader, label %.lr.ph216.preheader.new

.lr.ph216.preheader.new:                          ; preds = %.lr.ph216.preheader
  %unroll_iter273 = and i64 %wide.trip.count230, 4294967294
  br label %.lr.ph216

.lr.ph216:                                        ; preds = %.lr.ph216, %.lr.ph216.preheader.new
  %indvars.iv227 = phi i64 [ 0, %.lr.ph216.preheader.new ], [ %indvars.iv.next228.1, %.lr.ph216 ] ; 3 uses
  %.0215 = phi i32 [ 0, %.lr.ph216.preheader.new ], [ %.1.1, %.lr.ph216 ] ; 2 uses
  %niter274 = phi i64 [ 0, %.lr.ph216.preheader.new ], [ %niter274.next.1, %.lr.ph216 ]
  %i.oa = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv227 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = zext nneg i32 %.0215 to i64
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %i.ny, i64 %i.oc
  %i.oe = load <4 x float>, ptr %i.ob, align 8
  store <4 x float> %i.oe, ptr %i.od, align 16
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 36
  %i.og = load i32, ptr %i.of, align 4
  %i.oh = and i32 %i.og, -2
  %or.cond = icmp eq i32 %i.oh, 2
  %.1.v = select i1 %or.cond, i32 2, i32 1
  %.1 = add nuw nsw i32 %.1.v, %.0215             ; 2 uses
  %i.oi = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv227 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 80
  %i.ok = zext nneg i32 %.1 to i64
  %i.ol = getelementptr inbounds nuw [16 x i8], ptr %i.ny, i64 %i.ok
  %i.om = load <4 x float>, ptr %i.oj, align 8
  store <4 x float> %i.om, ptr %i.ol, align 16
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 100
  %i.oo = load i32, ptr %i.on, align 4
  %i.op = and i32 %i.oo, -2
  %or.cond.1 = icmp eq i32 %i.op, 2
  %.1.v.1 = select i1 %or.cond.1, i32 2, i32 1
  %.1.1 = add nuw nsw i32 %.1.v.1, %.1            ; 2 uses
  %indvars.iv.next228.1 = add nuw nsw i64 %indvars.iv227, 2 ; 2 uses
  %niter274.next.1 = add i64 %niter274, 2         ; 2 uses
  %niter274.ncmp.1 = icmp eq i64 %niter274.next.1, %unroll_iter273
  br i1 %niter274.ncmp.1, label %._crit_edge217.loopexit.unr-lcssa, label %.lr.ph216, !llvm.loop !80

._crit_edge217.loopexit.unr-lcssa:                ; preds = %.lr.ph216
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %._crit_edge217, label %.lr.ph216.epil.preheader

.lr.ph216.epil.preheader:                         ; preds = %._crit_edge217.loopexit.unr-lcssa, %.lr.ph216.preheader
  %indvars.iv227.epil.init = phi i64 [ 0, %.lr.ph216.preheader ], [ %indvars.iv.next228.1, %._crit_edge217.loopexit.unr-lcssa ]
  %.0215.epil.init = phi i32 [ 0, %.lr.ph216.preheader ], [ %.1.1, %._crit_edge217.loopexit.unr-lcssa ]
  %lcmp.mod272 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod272)
  %i.oq = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv227.epil.init
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = zext nneg i32 %.0215.epil.init to i64
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.ny, i64 %i.os
  %i.ou = load <4 x float>, ptr %i.or, align 8
  store <4 x float> %i.ou, ptr %i.ot, align 16
  br label %._crit_edge217

._crit_edge217:                                   ; preds = %.lr.ph216.epil.preheader, %._crit_edge217.loopexit.unr-lcssa, %VULKAN_INTERNAL_TrackFramebuffer.exit
  br i1 %.not, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge217
  %i.ov = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ow = load float, ptr %i.ov, align 8
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.ny, i64 %.0157.lcssa ; 2 uses
  store float %i.ow, ptr %i.ox, align 16
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.oz = load i8, ptr %i.oy, align 1
  %i.pa = zext i8 %i.oz to i32
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  store i32 %i.pa, ptr %i.pb, align 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge217
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store i32 43, ptr %6, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.pc, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.gg, ptr %i.pd, align 8
  %i.pe = load ptr, ptr %.0.i, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.pe, ptr %i.pf, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.ny, ptr %i.pg, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %.2168, ptr %i.ph, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.pj = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.3, ptr %i.pj, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %.3160, ptr %i.pk, align 4
  store i32 0, ptr %i.pi, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 0, ptr %i.pl, align 4
  %i.pm = getelementptr inbounds nuw i8, ptr %i.d, i64 2584
  %i.pn = load ptr, ptr %i.pm, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.pp = load ptr, ptr %i.po, align 8
  call void %i.pn(ptr noundef %i.pp, ptr noundef nonnull %6, i32 noundef 0) #13
  %i.pq = uitofp i32 %.3 to float
  %i.pr = uitofp i32 %.3160 to float              ; 2 uses
  %i.ps = load ptr, ptr %i.c, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store float 0.000000e+00, ptr %i.pt, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 520
  store float %i.pq, ptr %i.pu, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 528
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 516
  store float %i.pr, ptr %i.pw, align 4
  %i.px = fneg float %i.pr
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 524
  store float %i.px, ptr %i.py, align 4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ps, i64 2792
  %i.qa = load ptr, ptr %i.pz, align 8
  %i.qb = load ptr, ptr %i.po, align 8
  call void %i.qa(ptr noundef %i.qb, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.pt) #13, !inline_history !81
  %i.qc = load ptr, ptr %i.c, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  store i32 0, ptr %i.qd, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 0, ptr %i.qe, align 4
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %.3, ptr %i.qf, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 %.3160, ptr %i.qg, align 4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qc, i64 2776
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = load ptr, ptr %i.po, align 8
  call void %i.qi(ptr noundef %i.qj, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.qd) #13, !inline_history !82
  %i.qk = load ptr, ptr %i.c, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.ql, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 2760
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = load ptr, ptr %i.po, align 8
  call void %i.qn(ptr noundef %i.qo, ptr noundef nonnull %i.ql) #13, !inline_history !83
  %i.qp = load ptr, ptr %i.c, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i8 0, ptr %i.qq, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 2784
  %i.qs = load ptr, ptr %i.qr, align 8
  %i.qt = load ptr, ptr %i.po, align 8
  call void %i.qs(ptr noundef %i.qt, i32 noundef 3, i32 noundef 0) #13, !inline_history !84
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.cg

bb.cg:                                            ; preds = %VULKAN_INTERNAL_FetchFramebuffer.exit.thread, %VULKAN_INTERNAL_FetchFramebuffer.exit, %.split, %bb.cf
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_BindGraphicsPipeline(ptr nofree noundef captures(none) initializes((352, 360)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2608
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.d(ptr noundef %i.f, i32 noundef 0, ptr noundef %i.h) #13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8              ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 3 uses
  %i.m = icmp sgt i32 %i.k, 0
  br i1 %i.m, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %bb.a
  %i.n = zext nneg i32 %i.k to i64
  %i.o = load ptr, ptr %i.l, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.p = trunc nuw i64 %i.r to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %._crit_edge44, !llvm.loop !85

bb.c:                                             ; preds = %.lr.ph43, %bb.b
  %indvars.iv.i41 = phi i64 [ %i.n, %.lr.ph43 ], [ %i.r, %bb.b ]
  %i.r = add nsw i64 %indvars.iv.i41, -1          ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %VULKAN_INTERNAL_TrackGraphicsPipeline.exit, label %bb.b, !llvm.loop !85

._crit_edge44:                                    ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2652 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.k, %i.w
  %.pre.i = load ptr, ptr %i.l, align 8           ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge44
  %i.y = add nsw i32 %i.k, 1                      ; 2 uses
  store i32 %i.y, ptr %i.v, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3
  %i.ab = tail call ptr @SDL_realloc_REAL(ptr noundef %.pre.i, i64 noundef %i.aa) #17 ; 2 uses
  store ptr %i.ab, ptr %i.l, align 8
  %.pre22.i = load i32, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge44
  %i.ac = phi i32 [ %.pre22.i, %bb.d ], [ %i.k, %._crit_edge44 ]
  %i.ad = phi ptr [ %i.ab, %bb.d ], [ %.pre.i, %._crit_edge44 ]
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  store ptr %1, ptr %i.af, align 8
  %i.ag = load i32, ptr %i.j, align 8
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.j, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.ai, i32 noundef 1) #13 ; 0 uses
  br label %VULKAN_INTERNAL_TrackGraphicsPipeline.exit

VULKAN_INTERNAL_TrackGraphicsPipeline.exit:       ; preds = %bb.c, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.an = load i32, ptr %i.am, align 4
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %VULKAN_INTERNAL_TrackGraphicsPipeline.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2464
  br label %bb.f

.preheader:                                       ; preds = %bb.h, %VULKAN_INTERNAL_TrackGraphicsPipeline.exit
  %i.ap = phi ptr [ %i.al, %VULKAN_INTERNAL_TrackGraphicsPipeline.exit ], [ %i.ay, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  %i.ar = load i32, ptr %i.aq, align 4
  %.not35 = icmp eq i32 %i.ar, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2496
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %i.at = phi ptr [ %i.al, %.lr.ph ], [ %i.ay, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = tail call fastcc ptr @VULKAN_INTERNAL_AcquireUniformBufferFromPool(ptr noundef nonnull %0)
  store ptr %i.ax, ptr %i.au, align 8
  %.pre = load ptr, ptr %i.ak, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ay = phi ptr [ %i.at, %bb.f ], [ %.pre, %bb.g ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 52
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %bb.f, label %.preheader, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bd, i8 1, i64 6, i1 false)
  ret void

bb.i:                                             ; preds = %.lr.ph34, %bb.k
  %i.be = phi ptr [ %i.ap, %.lr.ph34 ], [ %i.bj, %bb.k ]
  %indvars.iv37 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next38, %bb.k ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv37 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = tail call fastcc ptr @VULKAN_INTERNAL_AcquireUniformBufferFromPool(ptr noundef nonnull %0)
  store ptr %i.bi, ptr %i.bf, align 8
  %.pre40 = load ptr, ptr %i.ak, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bj = phi ptr [ %i.be, %bb.i ], [ %.pre40, %bb.j ] ; 2 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 68
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next38, %i.bm
  br i1 %i.bn, label %bb.i, label %._crit_edge, !llvm.loop !87
}

; Function Attrs: nounwind uwtable
define internal void @VULKAN_SetViewport(ptr noundef initializes((512, 536)) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load float, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store float %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  store float %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 528
  store float %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load float, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 532
  store float %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.q = load float, ptr %i.p, align 4
  %i.r = fadd float %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 516
  store float %i.r, ptr %i.s, align 4
  %i.t = load float, ptr %i.p, align 4
  %i.u = fneg float %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 524
  store float %i.u, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 2792
end_hunk_2
begin_hunk_3_@VULKAN_INTERNAL_PrepareTextureSubresourceForWrite:bb.a
  %i.ak = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ai, %bb.i ]
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  store ptr %i.y, ptr %i.am, align 8
  store ptr %2, ptr %i.y, align 8
  %i.an = load i32, ptr %i.n, align 4             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %i.an, ptr %i.ao, align 8
  %i.ap = add i32 %i.an, 1
  store i32 %i.ap, ptr %i.n, align 4
  store ptr %i.y, ptr %i.b, align 8
  tail call fastcc void @VULKAN_INTERNAL_TextureTransitionToDefaultUsage(ptr noundef %0, ptr noundef readonly %1, i32 noundef 0, ptr noundef %i.y)
  br label %VULKAN_INTERNAL_CycleActiveTexture.exit

VULKAN_INTERNAL_CycleActiveTexture.exit:          ; preds = %bb.g, %.critedge.i, %bb.j
  %.val = load i32, ptr %i.a, align 8
  %.val16 = load ptr, ptr %i.b, align 8
  %i.aq = getelementptr i8, ptr %.val16, i64 88
  %.val16.val = load ptr, ptr %i.aq, align 8
  %i.ar = mul i32 %.val, %3
  %i.as = add i32 %i.ar, %4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %.val16.val, i64 %i.at
  br label %bb.k

bb.k:                                             ; preds = %VULKAN_INTERNAL_CycleActiveTexture.exit, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %i.au, %VULKAN_INTERNAL_CycleActiveTexture.exit ], [ %i.g, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  tail call fastcc void @VULKAN_INTERNAL_TextureSubresourceTransitionFromDefaultUsage(ptr noundef %0, ptr noundef %1, i32 noundef %6, ptr noundef %.0)
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @VULKAN_INTERNAL_FetchRenderPass(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [17 x %struct.VkAttachmentDescription], align 16 ; 7 uses
  %5 = alloca [8 x %struct.VkAttachmentReference], align 16 ; 5 uses
  %6 = alloca [8 x %struct.VkAttachmentReference], align 16 ; 6 uses
  %7 = alloca %struct.VkAttachmentReference, align 4 ; 6 uses
  %8 = alloca %struct.VkRenderPassCreateInfo, align 8 ; 13 uses
  %9 = alloca %struct.VkSubpassDescription, align 8 ; 14 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %10 = alloca %struct.RenderPassHashTableKey, align 4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %10, i8 0, i64 160, i1 false)
  %.not55 = icmp eq i32 %2, 0                     ; 2 uses
  br i1 %.not55, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 156 ; 2 uses
  store i32 1, ptr %i.c, align 4
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %.thread, label %.thread52

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 100
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 132 ; 3 uses
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_TextureFormat, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %10, i64 %indvars.iv ; 2 uses
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load <2 x i32>, ptr %i.n, align 8
  store <2 x i32> %i.p, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not51 = icmp eq ptr %i.r, null
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_TextureFormat, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = load i32, ptr %i.e, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y
  store i32 %i.w, ptr %i.z, align 4
  %i.aa = load i32, ptr %i.e, align 4
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !191

._crit_edge:                                      ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 156 ; 2 uses
  store i32 1, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_SampleCount, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  store i32 %i.ai, ptr %i.ac, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 96
  store i32 %2, ptr %i.aj, align 4
  %i.ak = icmp eq ptr %3, null
  br i1 %i.ak, label %bb.e, label %._crit_edge57

.thread:                                          ; preds = %._crit_edge.thread
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 96
  store i32 0, ptr %i.al, align 4
  br label %bb.e

.thread52:                                        ; preds = %._crit_edge.thread
  %i.am = load ptr, ptr %3, align 8               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_SampleCount, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4
  store i32 %i.ar, ptr %i.c, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 96
  store i32 0, ptr %i.as, align 4
  br label %bb.f

._crit_edge57:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr %3, align 8
  br label %bb.f

bb.e:                                             ; preds = %.thread, %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 136
  store <4 x i32> <i32 0, i32 2, i32 1, i32 2>, ptr %i.at, align 4
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge57, %.thread52
  %i.au = phi ptr [ %.pre, %._crit_edge57 ], [ %i.am, %.thread52 ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_TextureFormat, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 136
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 140
  %i.bd = load <2 x i32>, ptr %i.bb, align 4
  store <2 x i32> %i.bd, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 148
  store i32 %i.bf, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = load i32, ptr %i.bh, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.bi, %bb.f ], [ 1, %bb.e ]
  %i.bj = phi i1 [ false, %bb.f ], [ true, %bb.e ]
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 152
  store i32 %.sink, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2280 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.bm) #13
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.bo, ptr noundef nonnull %10, ptr noundef nonnull %i.b) #13
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.bl, align 8
  call void @SDL_UnlockMutex_REAL(ptr noundef %i.bq) #13
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  br label %bb.bb

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br i1 %.not55, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 5 uses
  %.07691.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.l ] ; 4 uses
  %.07889.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.179.i, %bb.l ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv.i ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = zext i32 %.07691.i to i64
  %i.bw = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %i.bv ; 6 uses
  store i32 0, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_TextureFormat, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %i.cb, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_SampleCount, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.ch, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_LoadOp, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 %i.cn, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 36
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_StoreOp, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i32 %i.ct, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  store <4 x i32> <i32 2, i32 1, i32 2, i32 2>, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i ; 2 uses
  store i32 %.07691.i, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 2, ptr %i.cx, align 4
  %i.cy = add i32 %.07691.i, 1                    ; 3 uses
  %i.cz = and i32 %i.cq, -2
  %switch.i = icmp eq i32 %i.cz, 2
  br i1 %switch.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = zext i32 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %i.dc ; 6 uses
  store i32 0, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_TextureFormat, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i32 %i.di, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_SampleCount, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 %i.do, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store <4 x i32> <i32 2, i32 0, i32 2, i32 1>, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  store i32 2, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store i32 2, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i ; 2 uses
  store i32 %i.cy, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 2, ptr %i.du, align 4
  %i.dv = add i32 %.07691.i, 2
  %i.dw = add i32 %.07889.i, 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i
  store i32 -1, ptr %i.dx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.179.i = phi i32 [ %i.dw, %bb.j ], [ %.07889.i, %bb.k ] ; 2 uses
  %.1.i = phi i32 [ %i.dv, %bb.j ], [ %i.cy, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !192

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %i.dy = icmp eq i32 %.179.i, 0
  %i.dz = select i1 %i.dy, ptr null, ptr %6
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.i
  %.078.lcssa.i = phi ptr [ null, %bb.i ], [ %i.dz, %._crit_edge.loopexit.i ]
  %.077.lcssa.i = phi i32 [ 0, %bb.i ], [ %.1.i, %._crit_edge.loopexit.i ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.ea, align 4
  store i32 0, ptr %9, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %2, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %5, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i32 0, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr null, ptr %i.eg, align 8
  br i1 %i.bj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  %i.eh = load ptr, ptr %3, align 8               ; 2 uses
  %i.ei = zext i32 %.077.lcssa.i to i64
  %i.ej = getelementptr inbounds nuw [36 x i8], ptr %4, i64 %i.ei ; 9 uses
  store i32 0, ptr %i.ej, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_TextureFormat, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 %i.eo, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 28
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_SampleCount, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 %i.eu, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_LoadOp, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 %i.fa, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_StoreOp, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i32 %i.fg, ptr %i.fh, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_LoadOp, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  store i32 %i.fm, ptr %i.fn, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr @SDLToVK_StoreOp, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i32 %i.fs, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  store i32 3, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store i32 3, ptr %i.fv, align 4
  store i32 %.077.lcssa.i, ptr %7, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 3, ptr %i.fw, align 4
  %i.fx = add i32 %.077.lcssa.i, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %.sink.i = phi ptr [ %7, %bb.m ], [ null, %._crit_edge.i ]
  %.2.i = phi i32 [ %i.fx, %bb.m ], [ %.077.lcssa.i, %._crit_edge.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %.sink.i, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %.078.lcssa.i, ptr %i.fz, align 8
  store i32 38, ptr %8, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %4, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %.2.i, ptr %i.gd, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 1, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %9, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 0, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr null, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call i32 %i.gj(ptr noundef %i.gl, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %i.a) #13, !inline_history !193 ; 3 uses
  %.not85.i = icmp eq i32 %i.gm, 0
  br i1 %.not85.i, label %VULKAN_INTERNAL_CreateRenderPass.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1404
  %i.go = load i8, ptr %i.gn, align 4, !range !3, !noundef !4
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.p, label %bb.ah

bb.p:                                             ; preds = %bb.o
  switch i32 %i.gm, label %bb.ag [
    i32 -1, label %VkErrorMessages.exit.i
    i32 -2, label %bb.q
    i32 -12, label %bb.r
    i32 -1000069000, label %bb.s
    i32 -3, label %bb.t
    i32 -6, label %bb.u
    i32 -7, label %bb.v
    i32 -8, label %bb.w
    i32 -10, label %bb.x
    i32 -4, label %bb.y
    i32 -9, label %bb.z
    i32 -1000001004, label %bb.aa
    i32 -1000000000, label %bb.ab
    i32 -1000255000, label %bb.ac
    i32 1000001003, label %bb.ad
    i32 -1000000001, label %bb.ae
    i32 -1000012000, label %bb.af
  ]

bb.q:                                             ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.r:                                             ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.s:                                             ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.t:                                             ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.u:                                             ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.v:                                             ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.w:                                             ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.x:                                             ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.y:                                             ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.z:                                             ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.aa:                                            ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.ab:                                            ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.ac:                                            ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.ad:                                            ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.ae:                                            ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.af:                                            ; preds = %bb.p
  br label %VkErrorMessages.exit.i

bb.ag:                                            ; preds = %bb.p
  br label %VkErrorMessages.exit.i

VkErrorMessages.exit.i:                           ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.0.i.i = phi ptr [ @.str.74, %bb.ag ], [ @.str.73, %bb.af ], [ @.str.58, %bb.q ], [ @.str.59, %bb.r ], [ @.str.60, %bb.s ], [ @.str.61, %bb.t ], [ @.str.62, %bb.u ], [ @.str.63, %bb.v ], [ @.str.64, %bb.w ], [ @.str.65, %bb.x ], [ @.str.66, %bb.y ], [ @.str.67, %bb.z ], [ @.str.68, %bb.aa ], [ @.str.69, %bb.ab ], [ @.str.70, %bb.ac ], [ @.str.71, %bb.ad ], [ @.str.72, %bb.ae ], [ @.str.57, %bb.p ]
  call void (i32, ptr, ...) @SDL_LogError_REAL(i32 noundef 9, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.275, ptr noundef nonnull %.0.i.i) #13
  br label %bb.ah

bb.ah:                                            ; preds = %VkErrorMessages.exit.i, %bb.o
  switch i32 %i.gm, label %bb.ay [
    i32 -1, label %VULKAN_INTERNAL_CreateRenderPass.exit.thread
    i32 -2, label %bb.ai
    i32 -12, label %bb.aj
    i32 -1000069000, label %bb.ak
    i32 -3, label %bb.al
    i32 -6, label %bb.am
    i32 -7, label %bb.an
    i32 -8, label %bb.ao
    i32 -10, label %bb.ap
    i32 -4, label %bb.aq
    i32 -9, label %bb.ar
    i32 -1000001004, label %bb.as
    i32 -1000000000, label %bb.at
    i32 -1000255000, label %bb.au
    i32 1000001003, label %bb.av
    i32 -1000000001, label %bb.aw
    i32 -1000012000, label %bb.ax
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.aj:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.ak:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.al:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.am:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.an:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.ao:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.ap:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.aq:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.ar:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.as:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.at:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.au:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.av:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.aw:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.ax:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

bb.ay:                                            ; preds = %bb.ah
  br label %VULKAN_INTERNAL_CreateRenderPass.exit.thread

VULKAN_INTERNAL_CreateRenderPass.exit.thread:     ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay
  %.0.i86.i = phi ptr [ @.str.74, %bb.ay ], [ @.str.73, %bb.ax ], [ @.str.58, %bb.ai ], [ @.str.59, %bb.aj ], [ @.str.60, %bb.ak ], [ @.str.61, %bb.al ], [ @.str.62, %bb.am ], [ @.str.63, %bb.an ], [ @.str.64, %bb.ao ], [ @.str.65, %bb.ap ], [ @.str.66, %bb.aq ], [ @.str.67, %bb.ar ], [ @.str.68, %bb.as ], [ @.str.69, %bb.at ], [ @.str.70, %bb.au ], [ @.str.71, %bb.av ], [ @.str.72, %bb.aw ], [ @.str.57, %bb.ah ]
  %i.gq = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.275, ptr noundef nonnull %.0.i86.i) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.az

VULKAN_INTERNAL_CreateRenderPass.exit:            ; preds = %bb.n
  %i.gr = load ptr, ptr %i.a, align 8             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
end_hunk_3
