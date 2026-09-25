Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/client?download=true
inline.NumInlined: 45
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ClientBenchmarkConnections:bb.a
  %i.g = load i32, ptr @lng_index, align 4, !tbaa !10
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [40 x i8], ptr @client_bench_conmsg, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.k = icmp sgt i32 %4, 0
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = icmp sgt i32 %10, 3                      ; 2 uses
  %.not77 = icmp eq i32 %8, 0
  %or.cond = and i1 %i.f, %i.m
  %or.cond.not = xor i1 %or.cond, true
  %i.n = add nsw i32 %4, -1
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.p = sub nsw i32 %4, %i.e
  %i.q = sitofp i32 %i.p to double                ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.k, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.u = zext i1 %i.f to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.t
  %i.v = phi i32 [ %i.bx, %bb.t ], [ %i.u, %.split.us.preheader ] ; 2 uses
  %.068108.us = phi ptr [ %.2.us, %bb.t ], [ null, %.split.us.preheader ]
  %i.w = icmp eq i32 %i.v, 0                      ; 3 uses
  %i.x = select i1 %i.f, i1 %i.w, i1 false        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.y = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #21
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.split110.us, label %current_time.exit.us

current_time.exit.us:                             ; preds = %.split.us
  %i.aa = load i64, ptr %13, align 8, !tbaa !34
  %i.ab = sitofp i64 %i.aa to double
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !35
  %i.ad = sitofp i64 %i.ac to double
  %i.ae = fdiv double %i.ad, 1.000000e+06
  %i.af = fadd double %i.ae, %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %or.cond3.us = select i1 %or.cond.not, i1 true, i1 %i.w
  br label %bb.b

bb.b:                                             ; preds = %current_time.exit.us, %bb.s
  %.0106.us = phi double [ %i.af, %current_time.exit.us ], [ %.1.us, %bb.s ]
  %.169105.us = phi ptr [ %.068108.us, %current_time.exit.us ], [ %.2.us, %bb.s ] ; 4 uses
  %.071104.us = phi i32 [ 0, %current_time.exit.us ], [ %i.bh, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ag = icmp eq i32 %.071104.us, %i.e
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ah = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #21
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.split112.us, label %current_time.exit82.us

current_time.exit82.us:                           ; preds = %bb.c
  %i.aj = load i64, ptr %12, align 8, !tbaa !34
  %i.ak = sitofp i64 %i.aj to double
  %i.al = load i64, ptr %i.l, align 8, !tbaa !35
  %i.am = sitofp i64 %i.al to double
  %i.an = fdiv double %i.am, 1.000000e+06
  %i.ao = fadd double %i.an, %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.d

bb.d:                                             ; preds = %current_time.exit82.us, %bb.b
  %.1.us = phi double [ %i.ao, %current_time.exit82.us ], [ %.0106.us, %bb.b ] ; 2 uses
  %i.ap = call ptr @wolfSSL_new(ptr noundef nonnull %0) #21 ; 13 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.split114.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %.not77, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = call i32 @wolfSSL_NoKeyShares(ptr noundef nonnull %i.ap) #21 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call fastcc void @SetKeyShare(ptr noundef %i.ap, i32 noundef %9, i32 noundef %6, ptr noundef %7, i32 noundef 1)
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.as = call i32 @wolfSSL_set_session(ptr noundef nonnull %i.ap, ptr noundef %.169105.us) #21 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  call fastcc void @tcp_connect(ptr noundef %i.b, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %i.ap)
  %i.at = load i32, ptr %i.b, align 4, !tbaa !10  ; 3 uses
  %i.au = call i32 @wolfSSL_set_fd(ptr noundef nonnull %i.ap, i32 noundef %i.at) #21
  %.not78.us = icmp eq i32 %i.au, 1
  br i1 %.not78.us, label %.preheader.us, label %.split116.us

.preheader.us:                                    ; preds = %bb.k, %bb.l
  %i.av = call i32 @wolfSSL_connect(ptr noundef nonnull %i.ap) #21
  %.not79.us = icmp eq i32 %i.av, 1
  br i1 %.not79.us, label %.critedge81.us, label %bb.l

bb.l:                                             ; preds = %.preheader.us
  %i.aw = call i32 @wolfSSL_get_error(ptr noundef nonnull %i.ap, i32 noundef 0) #21
  %i.ax = icmp eq i32 %i.aw, -108
  br i1 %i.ax, label %.preheader.us, label %.critedge, !llvm.loop !61

.critedge81.us:                                   ; preds = %.preheader.us
  br i1 %or.cond3.us, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.critedge81.us
  %i.ay = call i32 @wolfSSL_write(ptr noundef nonnull %i.ap, ptr noundef nonnull @kHttpGetMsg, i32 noundef 28) #21
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %.split118.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = call i32 @wolfSSL_read(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a, i32 noundef 255) #21
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %.split120.us, label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge81.us
  %i.bc = call i32 @wolfSSL_shutdown(ptr noundef nonnull %i.ap) #21 ; 0 uses
  %i.bd = icmp eq i32 %.071104.us, %i.n
  %or.cond5.us = and i1 %i.f, %i.bd
  br i1 %or.cond5.us, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %.not80.us = icmp eq ptr %.169105.us, null
  br i1 %.not80.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @wolfSSL_SESSION_free(ptr noundef nonnull %.169105.us) #21
  %.pre.pre = load i32, ptr %i.b, align 4, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre = phi i32 [ %.pre.pre, %bb.q ], [ %i.at, %bb.p ]
  %i.be = call ptr @wolfSSL_get1_session(ptr noundef nonnull %i.ap) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.bf = phi i32 [ %.pre, %bb.r ], [ %i.at, %bb.o ]
  %.2.us = phi ptr [ %i.be, %bb.r ], [ %.169105.us, %bb.o ] ; 4 uses
  call void @wolfSSL_free(ptr noundef nonnull %i.ap) #21
  %i.bg = call i32 @close(i32 noundef %i.bf) #21  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.bh = add nuw nsw i32 %.071104.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, %4
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !62

current_time.exit83.us:                           ; preds = %._crit_edge.us
  %i.bi = load i64, ptr %11, align 8, !tbaa !34
  %i.bj = sitofp i64 %i.bi to double
  %i.bk = load i64, ptr %i.o, align 8, !tbaa !35
  %i.bl = sitofp i64 %i.bk to double
  %i.bm = fdiv double %i.bl, 1.000000e+06
  %i.bn = fadd double %i.bm, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bo = fsub double %i.bn, %.1.us
  %i.bp = fdiv double %i.bo, %i.q
  %i.bq = fmul double %i.bp, 1.000000e+03         ; 2 uses
  br i1 %i.x, label %.thread, label %bb.t

.thread:                                          ; preds = %current_time.exit83.us
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.188, ptr noundef %i.br, double noundef %i.bq, ptr noundef %i.bs) ; 0 uses
  br label %.split124.us

bb.t:                                             ; preds = %current_time.exit83.us
  %i.bu = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.188, ptr noundef %i.bu, double noundef %i.bq, ptr noundef %i.bv) ; 0 uses
  %i.bx = add nsw i32 %i.v, -1
  br i1 %i.w, label %.split124.us, label %.split.us, !llvm.loop !63

._crit_edge.us:                                   ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.by = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #21
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %.split122.us, label %current_time.exit83.us

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.ca = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #21
  %i.cb = icmp slt i32 %i.ca, 0                   ; 2 uses
  br i1 %i.f, label %.split.split.preheader, label %.split.split.us

.split.split.preheader:                           ; preds = %.split
  br i1 %i.cb, label %.split110.us, label %current_time.exit

.split.split.us:                                  ; preds = %.split
  br i1 %i.cb, label %.split110.us, label %current_time.exit.us125

current_time.exit.us125:                          ; preds = %.split.split.us
  %i.cc = load i64, ptr %13, align 8, !tbaa !34
  %i.cd = load i64, ptr %i.j, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.ce = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #21
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %.split122.us, label %current_time.exit83.us126

current_time.exit83.us126:                        ; preds = %current_time.exit.us125
  %14 = sitofp i64 %i.cc to double
  %15 = sitofp i64 %i.cd to double
  %16 = load i64, ptr %11, align 8, !tbaa !34
  %i.cg = sitofp i64 %16 to double
  %17 = load i64, ptr %i.o, align 8, !tbaa !35
  %i.ch = sitofp i64 %17 to double
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %15, i64 1
  %i.ck = fdiv <2 x double> %i.cj, splat (double 1.000000e+06)
  %i.cl = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %14, i64 1
  %i.cn = fadd <2 x double> %i.ck, %i.cm          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %shift = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.cn, %shift
  %i.co = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cp = fdiv double %i.co, %i.q
  %i.cq = fmul double %i.cp, 1.000000e+03
  %i.cr = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.cs = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.188, ptr noundef %i.cr, double noundef %i.cq, ptr noundef %i.cs) ; 0 uses
  br label %.split124.us.thread

.split110.us:                                     ; preds = %current_time.exit83, %.split.us, %.split.split.us, %.split.split.preheader
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.195) #26
  unreachable

current_time.exit:                                ; preds = %.split.split.preheader
  %i.cu = load i64, ptr %13, align 8, !tbaa !34
  %i.cv = load i64, ptr %i.j, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.cw = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #21
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %.split122.us, label %current_time.exit83

.split112.us:                                     ; preds = %bb.c
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.195) #26
  unreachable

.split114.us:                                     ; preds = %bb.d
  call fastcc void @err_sys(ptr noundef nonnull @.str.60) #26
  unreachable

.split116.us:                                     ; preds = %bb.k
  call fastcc void @err_sys(ptr noundef nonnull @.str.61) #26
  unreachable

.critedge:                                        ; preds = %bb.l
  call fastcc void @err_sys(ptr noundef nonnull @.str.185) #26
  unreachable

.split118.us:                                     ; preds = %bb.m
  call fastcc void @err_sys(ptr noundef nonnull @.str.186) #26
  unreachable

.split120.us:                                     ; preds = %bb.n
  call fastcc void @err_sys(ptr noundef nonnull @.str.187) #26
  unreachable

.split122.us:                                     ; preds = %current_time.exit, %current_time.exit.1, %._crit_edge.us, %current_time.exit.us125
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.195) #26
  unreachable

current_time.exit83:                              ; preds = %current_time.exit
  %i.cy = load i64, ptr %11, align 8, !tbaa !34
  %i.cz = load i64, ptr %i.o, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.da = sitofp i64 %i.cv to double
  %i.db = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dc = sitofp i64 %i.cz to double
  %i.dd = insertelement <2 x double> %i.db, double %i.dc, i64 1
  %i.de = fdiv <2 x double> %i.dd, splat (double 1.000000e+06)
  %i.df = sitofp i64 %i.cu to double
  %i.dg = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dh = sitofp i64 %i.cy to double
  %i.di = insertelement <2 x double> %i.dg, double %i.dh, i64 1
  %i.dj = fadd <2 x double> %i.de, %i.di          ; 2 uses
  %shift16 = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17 = fsub <2 x double> %shift16, %i.dj
  %i.dk = extractelement <2 x double> %foldExtExtBinop17, i64 0
  %i.dl = fdiv double %i.dk, %i.q
  %i.dm = fmul double %i.dl, 1.000000e+03
  %i.dn = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.do = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.dp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.188, ptr noundef %i.dn, double noundef %i.dm, ptr noundef %i.do) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.dq = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #21
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %.split110.us, label %current_time.exit.1

current_time.exit.1:                              ; preds = %current_time.exit83
  %i.ds = load i64, ptr %13, align 8, !tbaa !34
  %i.dt = load i64, ptr %i.j, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.du = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #21
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %.split122.us, label %current_time.exit83.1

current_time.exit83.1:                            ; preds = %current_time.exit.1
  %i.dw = load i64, ptr %11, align 8, !tbaa !34
  %i.dx = load i64, ptr %i.o, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.dy = sitofp i64 %i.dt to double
  %i.dz = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ea = sitofp i64 %i.dx to double
  %i.eb = insertelement <2 x double> %i.dz, double %i.ea, i64 1
  %i.ec = fdiv <2 x double> %i.eb, splat (double 1.000000e+06)
  %i.ed = sitofp i64 %i.ds to double
  %i.ee = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ef = sitofp i64 %i.dw to double
  %i.eg = insertelement <2 x double> %i.ee, double %i.ef, i64 1
  %i.eh = fadd <2 x double> %i.ec, %i.eg          ; 2 uses
  %shift16.1 = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17.1 = fsub <2 x double> %shift16.1, %i.eh
  %i.ei = extractelement <2 x double> %foldExtExtBinop17.1, i64 0
  %i.ej = fdiv double %i.ei, %i.q
  %i.ek = fmul double %i.ej, 1.000000e+03
  %i.el = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.em = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.188, ptr noundef %i.el, double noundef %i.ek, ptr noundef %i.em) ; 0 uses
  br label %.split124.us.thread

.split124.us:                                     ; preds = %bb.t, %.thread
  %.not76 = icmp eq ptr %.2.us, null
  br i1 %.not76, label %.split124.us.thread, label %bb.u

bb.u:                                             ; preds = %.split124.us
  call void @wolfSSL_SESSION_free(ptr noundef nonnull %.2.us) #21
  br label %.split124.us.thread

.split124.us.thread:                              ; preds = %current_time.exit83.us126, %current_time.exit83.1, %bb.u, %.split124.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @ClientBenchmarkThroughput(ptr noundef nonnull %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i64 noundef range(i64 1, 0) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef range(i32 -98, -99) %9, i32 noundef %10) unnamed_addr #11 {
bb.a:
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.fd_set, align 8            ; 6 uses
  %14 = alloca %struct.fd_set, align 8            ; 6 uses
  %15 = alloca %struct.timeval, align 8           ; 6 uses
  %16 = alloca %struct.timeval, align 8           ; 5 uses
  %17 = alloca %struct.timeval, align 8           ; 5 uses
  %18 = alloca %struct.timeval, align 8           ; 5 uses
  %19 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %20 = alloca %struct.WC_RNG, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 -1, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %19, ptr noundef null) #21
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %current_time.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.195) #26
  unreachable

current_time.exit:                                ; preds = %bb.a
  %i.d = load i64, ptr %19, align 8, !tbaa !34
  %i.e = sitofp i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35
  %i.h = sitofp i64 %i.g to double
  %i.i = fdiv nnan double %i.h, 1.000000e+06
  %i.j = fadd nnan double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.k = tail call ptr @wolfSSL_new(ptr noundef nonnull %0) #21 ; 14 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %current_time.exit
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.60) #26
  unreachable

bb.d:                                             ; preds = %current_time.exit
  call fastcc void @tcp_connect(ptr noundef %i.a, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef %i.k)
  %i.m = load i32, ptr %i.a, align 4, !tbaa !10   ; 5 uses
  %i.n = tail call i32 @wolfSSL_set_fd(ptr noundef nonnull %i.k, i32 noundef %i.m) #21
  %.not = icmp eq i32 %i.n, 1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.61) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = icmp sgt i32 %9, 3
  br i1 %i.o, label %bb.g, label %.preheader45

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @SetKeyShare(ptr noundef %i.k, i32 noundef %10, i32 noundef %6, ptr noundef %7, i32 noundef 1)
  br label %.preheader45

.preheader45:                                     ; preds = %bb.g, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.preheader45, %bb.i
  %i.p = tail call i32 @wolfSSL_connect(ptr noundef nonnull %i.k) #21
  %.not130 = icmp eq i32 %i.p, 1
  br i1 %.not130, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @wolfSSL_get_error(ptr noundef nonnull %i.k, i32 noundef 0) #21
  %i.r = icmp eq i32 %i.q, -108
  br i1 %i.r, label %bb.h, label %bb.an, !llvm.loop !64

end_hunk_0
