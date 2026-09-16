Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/raddrinfo?download=true
inline.NumInlined: 312
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@rsock_inspect_sockaddr:bb.a
  %i.p = load i8, ptr %i.o, align 4, !tbaa !46
  %i.q = zext i8 %i.p to i32
  %i.r = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.15, i32 noundef %i.q) #17 ; 0 uses
  %.not206 = icmp eq i32 %1, 5
  br i1 %.not206, label %.thread185, label %bb.i

.thread185:                                       ; preds = %bb.h, %.thread
  %i.s = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !46
  %i.v = zext i8 %i.u to i32
  %i.w = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.17, i32 noundef %i.v) #17 ; 0 uses
  %i.x = icmp ugt i32 %1, 6
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.z = load i8, ptr %i.y, align 2, !tbaa !46
  %i.aa = zext i8 %i.z to i32
  %i.ab = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.17, i32 noundef %i.aa) #17 ; 0 uses
  %.not207 = icmp eq i32 %1, 7
  br i1 %.not207, label %.thread231, label %.thread187

.thread231:                                       ; preds = %bb.j
  %i.ac = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  br label %bb.l

.thread187:                                       ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !46
  %i.af = zext i8 %i.ae to i32
  %i.ag = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.17, i32 noundef %i.af) #17 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %.thread185, %bb.i
  %i.ah = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  %i.ai = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  br i1 %i.m, label %bb.l, label %.thread188

bb.l:                                             ; preds = %.thread231, %.thread187, %bb.k
  %i.aj = load i16, ptr %i.f, align 2, !tbaa !71  ; 2 uses
  %.not181 = icmp eq i16 %i.aj, 0
  br i1 %.not181, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.ak = zext i16 %rev.i to i32
  %i.al = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.19, i32 noundef %i.ak) #17 ; 0 uses
  br label %bb.n

.thread188:                                       ; preds = %bb.k
  %i.am = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.20, i64 noundef 2) #17 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.m
  %.not182 = icmp eq i32 %1, 16
  br i1 %.not182, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.thread188, %bb.n
  %i.an = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef 16) #17 ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ao = icmp ult i32 %1, 28
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ap = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.22, i32 noundef %1) #17 ; 0 uses
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.aq = call i32 @getnameinfo(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef null, i32 noundef 0, i32 noundef 3) #17 ; 2 uses
  %.not179 = icmp eq i32 %i.aq, 0
  br i1 %.not179, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.aq) #19
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ar = load i16, ptr %i.f, align 2, !tbaa !68  ; 2 uses
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull %i.a) #17 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %rev.i183 = call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.au = zext i16 %rev.i183 to i32
  %i.av = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a, i32 noundef %i.au) #17 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not180 = icmp eq i32 %1, 28
  br i1 %.not180, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = add i32 %1, -28
  %i.ax = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.24, i32 noundef %i.aw) #17 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph239
  %i.ay = icmp sgt i64 %.0.idx.i238, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ay, label %.lr.ph239, label %.preheader._crit_edge, !llvm.loop !2

.lr.ph239:                                        ; preds = %.preheader.preheader, %.preheader
  %indvar = phi i64 [ %indvar.next, %.preheader ], [ 0, %.preheader.preheader ] ; 3 uses
  %.0.idx.i238 = phi i64 [ %.0.add.i, %.preheader ], [ %i.e, %.preheader.preheader ] ; 6 uses
  %.0.add.i = add nsw i64 %.0.idx.i238, -1        ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.add.i
  %i.az = load i8, ptr %.ptr.i, align 1, !tbaa !46
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %.preheader, label %unixsocket_len.exit, !llvm.loop !2

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.bb = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.26, i64 noundef 27) #17 ; 0 uses
  br label %.loopexit

unixsocket_len.exit:                              ; preds = %.lr.ph239
  %i.bc = getelementptr i8, ptr %0, i64 %.0.idx.i238
  %i.bd = icmp ult ptr %i.f, %i.bc
  br i1 %i.bd, label %.lr.ph211.preheader, label %._crit_edge.thread

.lr.ph211.preheader:                              ; preds = %unixsocket_len.exit
  %i.be = add nsw i64 %i.e, -2
  %i.bf = sub i64 %i.be, %indvar                  ; 3 uses
  %i.bg = add nsw i64 %i.e, -3
  %xtraiter = and i64 %i.bf, 1
  %i.bh = icmp eq i64 %i.bg, %indvar
  br i1 %i.bh, label %.lr.ph211.epil.preheader, label %.lr.ph211.preheader.new

.lr.ph211.preheader.new:                          ; preds = %.lr.ph211.preheader
  %unroll_iter = and i64 %i.bf, -2
  br label %.lr.ph211

.lr.ph211:                                        ; preds = %.critedge, %.lr.ph211.preheader.new
  %.0163210 = phi i1 [ false, %.lr.ph211.preheader.new ], [ %i.bt, %.critedge ]
  %.0165209 = phi ptr [ %i.f, %.lr.ph211.preheader.new ], [ %i.bu, %.critedge ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph211.preheader.new ], [ %niter.next.1, %.critedge ]
  br i1 %.0163210, label %.critedge, label %.lr.ph211.1

.lr.ph211.1:                                      ; preds = %.lr.ph211
  %i.bi = load i8, ptr %.0165209, align 1, !tbaa !46 ; 2 uses
  %i.bj = sext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -127
  %i.bl = icmp ult i32 %i.bk, -95
  %i.bm = icmp eq i8 %i.bi, 32
  %spec.select240 = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %spec.select240, label %.critedge, label %bb.z

bb.z:                                             ; preds = %.lr.ph211.1
  %i.bn = getelementptr inbounds nuw i8, ptr %.0165209, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !46  ; 2 uses
  %i.bp = sext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -127
  %i.br = icmp ult i32 %i.bq, -95
  %i.bs = icmp eq i8 %i.bo, 32
  %spec.select240.1 = select i1 %i.br, i1 true, i1 %i.bs
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph211, %bb.z, %.lr.ph211.1
  %i.bt = phi i1 [ %spec.select240.1, %bb.z ], [ true, %.lr.ph211.1 ], [ true, %.lr.ph211 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0165209, i64 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.lr.ph211, !llvm.loop !104

._crit_edge.unr-lcssa:                            ; preds = %.critedge
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph211.epil.preheader

.lr.ph211.epil.preheader:                         ; preds = %._crit_edge.unr-lcssa, %.lr.ph211.preheader
  %.0163210.epil.init = phi i1 [ false, %.lr.ph211.preheader ], [ %i.bt, %._crit_edge.unr-lcssa ]
  %.0165209.epil.init = phi ptr [ %i.f, %.lr.ph211.preheader ], [ %i.bu, %._crit_edge.unr-lcssa ]
  %lcmp.mod244 = trunc i64 %i.bf to i1
  tail call void @llvm.assume(i1 %lcmp.mod244)
  br i1 %.0163210.epil.init, label %.lr.ph215.preheader.critedge, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph211.epil.preheader
  %i.bv = load i8, ptr %.0165209.epil.init, align 1, !tbaa !46 ; 2 uses
  %i.bw = sext i8 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -127
  %i.by = icmp ult i32 %i.bx, -95
  %i.bz = icmp eq i8 %i.bv, 32
  %spec.select240.epil = select i1 %i.by, i1 true, i1 %i.bz
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa, %._crit_edge.unr-lcssa
  %.lcssa = phi i1 [ %i.bt, %._crit_edge.unr-lcssa ], [ %spec.select240.epil, %bb.aa ]
  %smax = tail call i64 @llvm.smax.i64(i64 %.0.idx.i238, i64 2)
  %scevgep = getelementptr i8, ptr %0, i64 %smax
  br i1 %.lcssa, label %.lr.ph215.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %unixsocket_len.exit, %._crit_edge
  %.0165.lcssa235 = phi ptr [ %scevgep, %._crit_edge ], [ %i.f, %unixsocket_len.exit ]
  %i.ca = load i8, ptr %i.f, align 2, !tbaa !46
  %.not176 = icmp eq i8 %i.ca, 47
  br i1 %.not176, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread
  %i.cb = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.27, i64 noundef 5) #17 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.thread
  %i.cc = ptrtoint ptr %.0165.lcssa235 to i64
  %i.cd = sub i64 %i.cc, %i.g
  %i.ce = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull %i.f, i64 noundef %i.cd) #17 ; 0 uses
  br label %.loopexit

.lr.ph215.preheader.critedge:                     ; preds = %.lr.ph211.epil.preheader
  %smax.c = tail call i64 @llvm.smax.i64(i64 %.0.idx.i238, i64 2)
  %scevgep.c = getelementptr i8, ptr %0, i64 %smax.c ; 0 uses
  br label %.lr.ph215.preheader

.lr.ph215.preheader:                              ; preds = %.lr.ph215.preheader.critedge, %._crit_edge
  %i.cf = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.28, i64 noundef 4) #17 ; 0 uses
  %smax221 = tail call i64 @llvm.smax.i64(i64 %.0.idx.i238, i64 2)
  %scevgep222 = getelementptr i8, ptr %0, i64 %smax221
  br label %.lr.ph215

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %.lr.ph215
  %.0164213 = phi ptr [ %i.cg, %.lr.ph215 ], [ %i.f, %.lr.ph215.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0164213, i64 1 ; 2 uses
  %i.ch = load i8, ptr %.0164213, align 1, !tbaa !46
  %i.ci = zext i8 %i.ch to i32
  %i.cj = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.29, i32 noundef %i.ci) #17 ; 0 uses
  %exitcond223.not = icmp eq ptr %i.cg, %scevgep222
  br i1 %exitcond223.not, label %.loopexit, label %.lr.ph215, !llvm.loop !105

bb.ad:                                            ; preds = %bb.e
  %i.ck = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.31, i64 noundef 6) #17 ; 0 uses
  %i.cl = icmp ugt i32 %1, 3
  br i1 %i.cl, label %bb.ae, label %.thread195

bb.ae:                                            ; preds = %bb.ad
  %i.cm = tail call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.30) #17 ; 0 uses
  %i.cn = load i16, ptr %i.f, align 2, !tbaa !108
  %rev.i184 = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.co = zext i16 %rev.i184 to i32
  %i.cp = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.33, i32 noundef %i.co) #17 ; 0 uses
  %i.cq = icmp ugt i32 %1, 7
  br i1 %i.cq, label %bb.af, label %.thread195

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cr = tail call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.32) #17 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !109
  %i.cu = call ptr @if_indextoname(i32 noundef %i.ct, ptr noundef nonnull %i.b) #17
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cw = load i32, ptr %i.cs, align 4, !tbaa !109
  %i.cx = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.34, i32 noundef %i.cw) #17 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.cy = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.b) #17 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.cz = icmp ugt i32 %1, 9
  br i1 %i.cz, label %bb.aj, label %.thread195

bb.aj:                                            ; preds = %bb.ai
  %i.da = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.32) #17 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !110
  %i.dd = zext i16 %i.dc to i32
  %i.de = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.36, i32 noundef %i.dd) #17 ; 0 uses
  %.not205 = icmp eq i32 %1, 10
  br i1 %.not205, label %.thread195, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.32) #17 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !111 ; 2 uses
  switch i8 %i.dh, label %bb.aq [
    i8 0, label %bb.al
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.ao
    i8 4, label %bb.ap
  ]

bb.al:                                            ; preds = %bb.ak
  %i.di = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.37, i64 noundef 4) #17 ; 0 uses
  br label %.thread195

bb.am:                                            ; preds = %bb.ak
  %i.dj = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.38, i64 noundef 9) #17 ; 0 uses
  br label %.thread195

bb.an:                                            ; preds = %bb.ak
  %i.dk = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.39, i64 noundef 9) #17 ; 0 uses
  br label %.thread195

bb.ao:                                            ; preds = %bb.ak
  %i.dl = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.40, i64 noundef 9) #17 ; 0 uses
  br label %.thread195

bb.ap:                                            ; preds = %bb.ak
  %i.dm = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.41, i64 noundef 8) #17 ; 0 uses
  br label %.thread195

bb.aq:                                            ; preds = %bb.ak
  %i.dn = zext i8 %i.dh to i32
  %i.do = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.42, i32 noundef %i.dn) #17 ; 0 uses
  br label %.thread195

.thread195:                                       ; preds = %bb.ad, %bb.ae, %bb.ai, %bb.al, %bb.an, %bb.ap, %bb.aq, %bb.ao, %bb.am, %bb.aj
  %.3 = phi ptr [ @.str.32, %bb.al ], [ @.str.32, %bb.am ], [ @.str.32, %bb.an ], [ @.str.32, %bb.ao ], [ @.str.32, %bb.ap ], [ @.str.32, %bb.aq ], [ @.str.32, %bb.aj ], [ @.str.32, %bb.ai ], [ @.str.32, %bb.ae ], [ @.str.30, %bb.ad ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 4 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !112
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nuw nsw i32 %i.dr, 12
  %.not = icmp eq i32 %1, %i.ds
  br i1 %.not, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.thread195
  %i.dt = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull %.3) #17 ; 0 uses
  %i.du = icmp ugt i32 %1, 11
  br i1 %i.du, label %bb.as, label %.thread199

bb.as:                                            ; preds = %bb.ar
  %i.dv = load i8, ptr %i.dp, align 1, !tbaa !112
  %i.dw = zext i8 %i.dv to i32
  %i.dx = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.43, i32 noundef %i.dw) #17 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.thread195
  %.4 = phi ptr [ @.str.32, %bb.as ], [ %.3, %.thread195 ] ; 2 uses
  %i.dy = icmp ugt i32 %1, 12
  br i1 %i.dy, label %bb.au, label %.thread202

bb.au:                                            ; preds = %bb.at
  %i.dz = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull %.4) #17 ; 0 uses
  %i.ea = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.44, i64 noundef 6) #17 ; 0 uses
  %i.eb = load i8, ptr %i.dp, align 1, !tbaa !112 ; 2 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = zext i8 %i.eb to i64
  %i.ee = add nuw nsw i64 %i.ed, 12
  %i.ef = icmp samesign ugt i64 %i.ee, %i.e
  %i.eg = add i32 %1, -12
  %spec.select = select i1 %i.ef, i32 %i.eg, i32 %i.ec ; 3 uses
  %.not216 = icmp eq i32 %spec.select, 0
  br i1 %.not216, label %.thread202, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %wide.trip.count = zext i32 %spec.select to i64
  %i.ei = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.45) #17 ; 0 uses
  %i.ej = load i8, ptr %i.eh, align 4, !tbaa !46
  %i.ek = zext i8 %i.ej to i32
  %i.el = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.47, i32 noundef %i.ek) #17 ; 0 uses
  %exitcond.peel.not = icmp eq i32 %spec.select, 1
  br i1 %exitcond.peel.not, label %.thread202, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %.lr.ph ] ; 2 uses
  %i.em = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.46) #17 ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %indvars.iv
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !46
  %i.ep = zext i8 %i.eo to i32
  %i.eq = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.47, i32 noundef %i.ep) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread202, label %.peel.next, !llvm.loop !106

.thread202:                                       ; preds = %.peel.next, %.lr.ph, %bb.au, %bb.at
  %.5204 = phi ptr [ %.4, %bb.at ], [ @.str.32, %bb.au ], [ @.str.32, %.lr.ph ], [ @.str.32, %.peel.next ]
  %i.er = load i8, ptr %i.dp, align 1, !tbaa !112
  %i.es = zext i8 %i.er to i32
  %i.et = add nuw nsw i32 %i.es, 12
  %.not174 = icmp eq i32 %i.et, %1
  br i1 %.not174, label %bb.av, label %.thread199

.thread199:                                       ; preds = %bb.ar, %.thread202
  %.5201 = phi ptr [ %.5204, %.thread202 ], [ @.str.32, %bb.ar ]
  %i.eu = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef %.5201) #17 ; 0 uses
  %i.ev = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.48, i32 noundef %1, i32 noundef 20) #17 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %.thread199, %.thread202
  %i.ew = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.49, i64 noundef 1) #17 ; 0 uses
  br label %.loopexit

bb.aw:                                            ; preds = %bb.e
  %i.ex = zext i16 %i.j to i32
  %i.ey = tail call i64 @rsock_intern_family(i32 noundef %i.ex) #17 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fa = load i16, ptr %0, align 8, !tbaa !46
  %i.fb = zext i16 %i.fa to i32
  %i.fc = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.50, i32 noundef %i.fb) #17 ; 0 uses
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aw
  %i.fd = tail call ptr @rb_id2name(i64 noundef %i.ey) #17
  %i.fe = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.51, ptr noundef %i.fd) #17 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph215, %bb.ax, %bb.ay, %.preheader._crit_edge, %bb.ac, %bb.n, %bb.o, %bb.d, %bb.av, %bb.y, %bb.f, %bb.b
  ret i64 %2
}

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

end_hunk_0
