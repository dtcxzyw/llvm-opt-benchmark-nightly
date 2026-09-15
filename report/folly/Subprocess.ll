Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Subprocess?download=true
inline.NumInlined: 2346
inline.NumDeleted: 1250
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5folly10Subprocess12prepareChildERKNS0_12SpawnRawArgsE:bb.a
bb.b:                                             ; preds = %bb.c
  %i.a = load ptr, ptr @_ZN5folly6detail15subprocess_libc15pthread_sigmaskE, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = tail call noundef i32 %i.a(i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef null) #48 ; 2 uses
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %bb.d, label %.thread245

bb.c:                                             ; preds = %bb.a, %bb.c
  %.0147250 = phi i32 [ 1, %bb.a ], [ %i.f, %bb.c ] ; 2 uses
  %i.d = load ptr, ptr @_ZN5folly6detail15subprocess_libc6signalE, align 8, !tbaa !113
  %i.e = tail call noundef ptr %i.d(i32 noundef %.0147250, ptr noundef null) #48 ; 0 uses
  %i.f = add nuw nsw i32 %.0147250, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, 65
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1444

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_ZN5folly10Subprocess25prepareChildDoLinuxCGroupERKNS0_12SpawnRawArgsE(ptr noundef nonnull align 8 dereferenceable(320) %0) ; 2 uses
  %.not164.not = icmp eq i32 %i.g, 0
  br i1 %.not164.not, label %.preheader, label %.thread245

.preheader:                                       ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !236
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %.0127251 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.h ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !234
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %.0127251 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !247
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = tail call i32 @setrlimit(i32 noundef %i.m, ptr noundef nonnull %i.n) #48
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1447 ; 2 uses
  %.not165 = icmp eq ptr %i.r, null
  %i.s = tail call ptr @__errno_location() #55
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33   ; 2 uses
  br i1 %.not165, label %.thread245, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.t, ptr %i.r, align 4, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.u = add nuw i64 %.0127251, 1                 ; 2 uses
  %i.v = load i64, ptr %i.h, align 8, !tbaa !236
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %._crit_edge, !llvm.loop !1445

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.x = load ptr, ptr %0, align 8, !tbaa !213    ; 2 uses
  %.not166 = icmp eq ptr %i.x, null
  br i1 %.not166, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.y = tail call i32 @chdir(ptr noundef nonnull %i.x) #48
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %.thread245.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !215 ; 3 uses
  %.not167 = icmp eq ptr %i.ab, null
  br i1 %.not167, label %.thread196, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call i32 @sched_setaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %i.ab) #48
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.l, label %.thread196

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202 ; 2 uses
  %.not168 = icmp eq ptr %i.af, null
  %i.ag = tail call ptr @__errno_location() #55
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33 ; 2 uses
  br i1 %.not168, label %.thread245, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !33
  br label %.thread196

.thread196:                                       ; preds = %bb.k, %bb.m, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !226 ; 2 uses
  %.not169 = icmp eq ptr %i.aj, null
  br i1 %.not169, label %.thread200, label %bb.n

bb.n:                                             ; preds = %.thread196
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !33
  %i.al = tail call noundef i64 (i64, ...) @syscall(i64 noundef 119, i32 noundef -1, i32 noundef %i.ak, i32 noundef -1) #48
  %.not170 = icmp eq i64 %i.al, 0
  br i1 %.not170, label %.thread200, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !226
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !205 ; 2 uses
  %.not171.not = icmp eq ptr %i.ao, null
  %i.ap = tail call ptr @__errno_location() #55
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !33 ; 2 uses
  br i1 %.not171.not, label %.thread245, label %.thread204

.thread204:                                       ; preds = %bb.o
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !33
  br label %.thread200

.thread200:                                       ; preds = %.thread196, %bb.n, %.thread204
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !224 ; 2 uses
  %.not172 = icmp eq ptr %i.as, null
  br i1 %.not172, label %.thread208, label %bb.p

bb.p:                                             ; preds = %.thread200
  %i.at = load i32, ptr %i.as, align 4, !tbaa !33
  %i.au = tail call noundef i64 (i64, ...) @syscall(i64 noundef 106, i32 noundef %i.at) #48
  %.not173 = icmp eq i64 %i.au, 0
  br i1 %.not173, label %.thread208, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !224
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !205 ; 2 uses
  %.not174.not = icmp eq ptr %i.ax, null
  %i.ay = tail call ptr @__errno_location() #55
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !33 ; 2 uses
  br i1 %.not174.not, label %.thread245, label %.thread212

.thread212:                                       ; preds = %bb.q
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !33
  br label %.thread208

.thread208:                                       ; preds = %.thread200, %bb.p, %.thread212
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !225 ; 2 uses
  %.not175 = icmp eq ptr %i.bb, null
  br i1 %.not175, label %.thread216, label %bb.r

bb.r:                                             ; preds = %.thread208
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !33
  %i.bd = tail call noundef i64 (i64, ...) @syscall(i64 noundef 117, i32 noundef -1, i32 noundef %i.bc, i32 noundef -1) #48
  %.not176 = icmp eq i64 %i.bd, 0
  br i1 %.not176, label %.thread216, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !225
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !205 ; 2 uses
  %.not177.not = icmp eq ptr %i.bg, null
  %i.bh = tail call ptr @__errno_location() #55
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !33 ; 2 uses
  br i1 %.not177.not, label %.thread245, label %.thread220

.thread220:                                       ; preds = %bb.s
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !33
  br label %.thread216

.thread216:                                       ; preds = %.thread208, %bb.r, %.thread220
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !223 ; 2 uses
  %.not178 = icmp eq ptr %i.bk, null
  br i1 %.not178, label %.thread224, label %bb.t

bb.t:                                             ; preds = %.thread216
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !33
  %i.bm = tail call noundef i64 (i64, ...) @syscall(i64 noundef 105, i32 noundef %i.bl) #48
  %.not179 = icmp eq i64 %i.bm, 0
  br i1 %.not179, label %.thread224, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !223
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !205 ; 2 uses
  %.not180.not = icmp eq ptr %i.bp, null
  %i.bq = tail call ptr @__errno_location() #55
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33 ; 2 uses
  br i1 %.not180.not, label %.thread245, label %.thread228

.thread228:                                       ; preds = %bb.u
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !33
  br label %.thread224

.thread224:                                       ; preds = %.thread216, %bb.t, %.thread228
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bt = tail call noundef ptr @_ZNK5folly6detail23SubprocessFdActionsList5beginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #48 ; 2 uses
  %i.bu = tail call noundef ptr @_ZNK5folly6detail23SubprocessFdActionsList3endEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #48 ; 2 uses
  %.not181252 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not181252, label %._crit_edge255, label %.lr.ph254

.lr.ph254:                                        ; preds = %.thread224, %.thread236
  %.0126253 = phi ptr [ %i.cq, %.thread236 ], [ %i.bt, %.thread224 ] ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %.0126253, align 4 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0126253, i64 4
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 6 uses
  %i.bv = icmp eq i32 %.sroa.9.0.copyload, -5
  br i1 %i.bv, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.lr.ph254
  %i.bw = load ptr, ptr @_ZN5folly6detail15subprocess_libc4openE, align 8, !tbaa !113
  %i.bx = tail call noundef i32 (ptr, i32, ...) %i.bw(ptr noundef nonnull @.str.65, i32 noundef 524290) ; 3 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %.thread245.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = load ptr, ptr @_ZN5folly6detail15subprocess_libc4dup2E, align 8, !tbaa !113
  %i.ca = tail call noundef i32 %i.bz(i32 noundef %i.bx, i32 noundef %.sroa.0.0.copyload) #48
  %i.cb = icmp eq i32 %i.ca, -1
  %i.cc = load ptr, ptr @_ZN5folly6detail15subprocess_libc5closeE, align 8, !tbaa !113
  %i.cd = tail call noundef i32 %i.cc(i32 noundef %i.bx) ; 0 uses
  br i1 %i.cb, label %.thread245.sink.split, label %.thread236

bb.x:                                             ; preds = %.lr.ph254
  %i.ce = icmp ne i32 %.sroa.9.0.copyload, %.sroa.0.0.copyload
  %i.cf = icmp ne i32 %.sroa.9.0.copyload, -6
  %or.cond = and i1 %i.ce, %i.cf
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr @_ZN5folly6detail15subprocess_libc4dup2E, align 8, !tbaa !113
  %i.ch = tail call noundef i32 %i.cg(i32 noundef %.sroa.9.0.copyload, i32 noundef %.sroa.0.0.copyload) #48
  %i.ci = icmp eq i32 %i.ch, -1
  br i1 %i.ci, label %.thread245.sink.split, label %.thread236

bb.z:                                             ; preds = %bb.x
  %1 = icmp eq i32 %.sroa.9.0.copyload, %.sroa.0.0.copyload
  %2 = icmp eq i32 %.sroa.9.0.copyload, -6
  %or.cond19 = or i1 %1, %2
  br i1 %or.cond19, label %bb.aa, label %.thread236

bb.aa:                                            ; preds = %bb.z
  %i.cj = load ptr, ptr @_ZN5folly6detail15subprocess_libc5fcntlE, align 8, !tbaa !113
  %i.ck = tail call noundef i32 (i32, i32, ...) %i.cj(i32 noundef %.sroa.0.0.copyload, i32 noundef 1) ; 3 uses
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %.thread245.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = and i32 %i.ck, -2                       ; 2 uses
  %.not182 = icmp eq i32 %i.cm, %i.ck
  br i1 %.not182, label %.thread236, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = load ptr, ptr @_ZN5folly6detail15subprocess_libc5fcntlE, align 8, !tbaa !113
  %i.co = tail call noundef i32 (i32, i32, ...) %i.cn(i32 noundef %.sroa.0.0.copyload, i32 noundef 2, i32 noundef %i.cm)
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %.thread245.sink.split, label %.thread236

.thread236:                                       ; preds = %bb.w, %bb.ab, %bb.ac, %bb.y, %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %.0126253, i64 8 ; 2 uses
  %.not181 = icmp eq ptr %i.cq, %i.bu
  br i1 %.not181, label %._crit_edge255, label %.lr.ph254

._crit_edge255:                                   ; preds = %.thread236, %.thread224
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !214, !range !171, !noundef !172
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge255
  tail call void @_ZN5folly10Subprocess17closeInheritedFdsERKNS0_12SpawnRawArgsE(ptr noundef nonnull align 8 dereferenceable(320) %0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge255
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !220 ; 2 uses
  %.not183 = icmp eq i32 %i.cv, 0
  br i1 %.not183, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = sext i32 %i.cv to i64
  %i.cx = load ptr, ptr @_ZN5folly6detail15subprocess_libc5prctlE, align 8, !tbaa !113
  %i.cy = tail call noundef i32 (i32, ...) %i.cx(i32 noundef 1, i64 noundef %i.cw, i32 noundef 0, i32 noundef 0, i32 noundef 0) #48
  %.not184 = icmp eq i32 %i.cy, -1
  br i1 %.not184, label %.thread245.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !221, !range !171, !noundef !172
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dc = tail call i32 @setpgrp() #48
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %.thread245.sink.split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !231
  %.not259 = icmp eq i64 %i.df, 0
  br i1 %.not259, label %.thread245, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph258, %bb.aj
  %.0125256 = phi i64 [ 0, %.lr.ph258 ], [ %i.dn, %bb.aj ] ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !229
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.0125256
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !53
  %i.dk = load ptr, ptr @_ZN5folly6detail15subprocess_libc7sprintfE, align 8, !tbaa !113
  %i.dl = tail call i32 @getpid() #48
  %i.dm = tail call noundef i32 (ptr, ptr, ...) %i.dk(ptr noundef %i.dj, ptr noundef nonnull @.str.66, i32 noundef %i.dl) #48 ; 0 uses
  %i.dn = add nuw i64 %.0125256, 1                ; 2 uses
  %i.do = load i64, ptr %i.de, align 8, !tbaa !231
  %i.dp = icmp ult i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.aj, label %.thread245, !llvm.loop !1446

.thread245.sink.split:                            ; preds = %bb.ac, %bb.aa, %bb.y, %bb.v, %bb.w, %bb.ah, %bb.af, %bb.i
  %i.dq = tail call ptr @__errno_location() #55
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33
  br label %.thread245

.thread245:                                       ; preds = %bb.f, %bb.aj, %.thread245.sink.split, %bb.u, %bb.s, %bb.q, %bb.o, %bb.l, %bb.ai, %bb.d, %bb.b
  %.28 = phi i32 [ %i.az, %bb.q ], [ %i.c, %bb.b ], [ 0, %bb.aj ], [ %i.br, %bb.u ], [ %i.g, %bb.d ], [ %i.aq, %bb.o ], [ %i.ah, %bb.l ], [ 0, %bb.ai ], [ %i.dr, %.thread245.sink.split ], [ %i.bi, %bb.s ], [ %i.t, %bb.f ]
  ret i32 %.28
}

; Function Attrs: disable_sanitizer_instrumentation mustprogress nofree noinline nounwind uwtable
define noundef i32 @_ZN5folly10Subprocess8runChildERKNS0_12SpawnRawArgsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0) local_unnamed_addr #35 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 85
  %i.d = load i8, ptr %i.c, align 1, !tbaa !222, !range !171, !noundef !172
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !239
  %i.h = tail call i32 @execvp(ptr noundef %i.g, ptr noundef %i.b) #48 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !238
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !239
  %i.m = tail call i32 @execve(ptr noundef %i.l, ptr noundef %i.b, ptr noundef %i.j) #48 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = tail call ptr @__errno_location() #55
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33
  ret i32 %i.o
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRiRA15_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(15) %1) local_unnamed_addr #29 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #55
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  tail call void @_ZN5folly24throwSystemErrorExplicitIJRiRA15_KcEEEviDpOT_(i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(15) %1) #49
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitIJRiRA15_KcEEEviDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(15) %2) local_unnamed_addr #29 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  call void @_ZN5folly23makeSystemErrorExplicitIJRiRA15_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::system_error") align 8 %3, i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(15) %2)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly23makeSystemErrorExplicitIJRiRA15_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(15) %3) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.folly::basic_fbstring", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 5 uses
  store i8 23, ptr %i.b, align 1, !tbaa !39, !alias.scope !1450
  store i8 0, ptr %4, align 8, !tbaa !39, !alias.scope !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48, !noalias !1450
  store ptr %4, ptr %i.a, align 8, !tbaa !249, !noalias !1450
  %i.c = load i32, ptr %2, align 4, !tbaa !33, !noalias !1450 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIiA15_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = sub nuw nsw i64 64, %i.f
  %i.h = mul nuw nsw i64 %i.g, 39
  %i.i = lshr i64 %i.h, 7                         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47, !noalias !1450
  %i.l = icmp ule i64 %i.k, %i.e
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %i.i, %i.m
  br label %_ZN5folly6detail15reserveInTargetIiA15_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i

_ZN5folly6detail15reserveInTargetIiA15_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i.i.i = lshr i32 %i.c, 31
  %narrow.i.i.i = add nuw nsw i32 %.lobit.i.i.i.i.i, 15
  %i.o = zext nneg i32 %narrow.i.i.i to i64
  %i.p = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, %i.o
  invoke void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.p, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN5folly6detail15reserveInTargetIiA15_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA15_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZN5folly6detail15reserveInTargetIiA15_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #48, !noalias !1450
  %i.r = load i8, ptr %i.b, align 1, !tbaa !39, !alias.scope !1450
  %i.s = icmp ult i8 %i.r, 64
  br i1 %i.s, label %common.resume, label %bb.d

end_hunk_0
