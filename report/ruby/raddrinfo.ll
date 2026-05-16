inline.NumInlined: 312
inline.NumDeleted: 57
begin_hunk_0_@rsock_inspect_sockaddr:bb.a
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !46
  %i.u = zext i8 %i.t to i32
  %i.v = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.17, i32 noundef %i.u) #17 ; 0 uses
  %i.w = icmp ugt i32 %1, 6
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.y = load i8, ptr %i.x, align 2, !tbaa !46
  %i.z = zext i8 %i.y to i32
  %i.aa = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.17, i32 noundef %i.z) #17 ; 0 uses
  %.not207 = icmp eq i32 %1, 7
  br i1 %.not207, label %.thread229, label %.thread187

.thread229:                                       ; preds = %bb.j
  %i.ab = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  br label %bb.l

.thread187:                                       ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !46
  %i.ae = zext i8 %i.ad to i32
  %i.af = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.17, i32 noundef %i.ae) #17 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %.thread185, %bb.i
  %i.ag = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  %i.ah = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.18, i64 noundef 2) #17 ; 0 uses
  br i1 %i.l, label %bb.l, label %.thread188

bb.l:                                             ; preds = %.thread229, %.thread187, %bb.k
  %i.ai = load i16, ptr %i.f, align 2, !tbaa !76  ; 2 uses
  %.not181 = icmp eq i16 %i.ai, 0
  br i1 %.not181, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.aj = zext i16 %rev.i to i32
  %i.ak = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.19, i32 noundef %i.aj) #17 ; 0 uses
  br label %bb.n

.thread188:                                       ; preds = %bb.k
  %i.al = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.20, i64 noundef 2) #17 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.m
  %.not182 = icmp eq i32 %1, 16
  br i1 %.not182, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.thread188, %bb.n
  %i.am = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef 16) #17 ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.an = icmp ult i32 %1, 28
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.22, i32 noundef %1) #17 ; 0 uses
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.ap = call i32 @getnameinfo(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef null, i32 noundef 0, i32 noundef 3) #17 ; 2 uses
  %.not179 = icmp eq i32 %i.ap, 0
  br i1 %.not179, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.ap) #19
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.aq = load i16, ptr %i.f, align 2, !tbaa !73  ; 2 uses
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull %i.a) #17 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %rev.i183 = call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.at = zext i16 %rev.i183 to i32
  %i.au = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a, i32 noundef %i.at) #17 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not180 = icmp eq i32 %1, 28
  br i1 %.not180, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = add i32 %1, -28
  %i.aw = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.24, i32 noundef %i.av) #17 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

bb.z:                                             ; preds = %bb.e
  %i.ax = icmp ugt i32 %1, 2
  br i1 %i.ax, label %.lr.ph242, label %unixsocket_len.exit

bb.aa:                                            ; preds = %.lr.ph242
  %i.ay = icmp sgt i64 %.0.idx.i240, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ay, label %.lr.ph242, label %unixsocket_len.exit, !llvm.loop !80

.lr.ph242:                                        ; preds = %bb.z, %bb.aa
  %indvar = phi i64 [ %indvar.next, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %.0.idx.i240 = phi i64 [ %.0.add.i, %bb.aa ], [ %i.e, %bb.z ] ; 3 uses
  %.0.add.i = add nsw i64 %.0.idx.i240, -1        ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.add.i
  %i.az = load i8, ptr %.ptr.i, align 1, !tbaa !46
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.aa, label %.thread232, !llvm.loop !80

unixsocket_len.exit:                              ; preds = %bb.aa, %bb.z
  %i.bb = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.26, i64 noundef 27) #17 ; 0 uses
  br label %.loopexit

.thread232:                                       ; preds = %.lr.ph242
  %i.bc = getelementptr i8, ptr %0, i64 %.0.idx.i240 ; 3 uses
  %i.bd = icmp ult ptr %i.f, %i.bc
  br i1 %i.bd, label %.lr.ph211.preheader, label %._crit_edge.thread

.lr.ph211.preheader:                              ; preds = %.thread232
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
  %.0210 = phi ptr [ %i.f, %.lr.ph211.preheader.new ], [ %i.bu, %.critedge ] ; 3 uses
  %.0165209 = phi i1 [ false, %.lr.ph211.preheader.new ], [ %i.bt, %.critedge ]
  %niter = phi i64 [ 0, %.lr.ph211.preheader.new ], [ %niter.next.1, %.critedge ]
  br i1 %.0165209, label %.critedge, label %.lr.ph211.1

.lr.ph211.1:                                      ; preds = %.lr.ph211
  %i.bi = load i8, ptr %.0210, align 1, !tbaa !46 ; 2 uses
  %i.bj = sext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -127
  %i.bl = icmp ult i32 %i.bk, -95
  %i.bm = icmp eq i8 %i.bi, 32
  %spec.select243 = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %spec.select243, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph211.1
  %i.bn = getelementptr inbounds nuw i8, ptr %.0210, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !46  ; 2 uses
  %i.bp = sext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -127
  %i.br = icmp ult i32 %i.bq, -95
  %i.bs = icmp eq i8 %i.bo, 32
  %spec.select243.1 = select i1 %i.br, i1 true, i1 %i.bs
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph211, %bb.ab, %.lr.ph211.1
  %i.bt = phi i1 [ %spec.select243.1, %bb.ab ], [ true, %.lr.ph211.1 ], [ true, %.lr.ph211 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0210, i64 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.lr.ph211, !llvm.loop !101

._crit_edge.unr-lcssa:                            ; preds = %.critedge
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph211.epil.preheader

.lr.ph211.epil.preheader:                         ; preds = %._crit_edge.unr-lcssa, %.lr.ph211.preheader
  %.0210.epil.init = phi ptr [ %i.f, %.lr.ph211.preheader ], [ %i.bu, %._crit_edge.unr-lcssa ]
  %.0165209.epil.init = phi i1 [ false, %.lr.ph211.preheader ], [ %i.bt, %._crit_edge.unr-lcssa ]
  %lcmp.mod247 = trunc i64 %i.bf to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  br i1 %.0165209.epil.init, label %.critedge252, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph211.epil.preheader
  %i.bv = load i8, ptr %.0210.epil.init, align 1, !tbaa !46 ; 2 uses
  %i.bw = sext i8 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, -127
  %i.by = icmp ult i32 %i.bx, -95
  %i.bz = icmp eq i8 %i.bv, 32
  %spec.select243.epil = select i1 %i.by, i1 true, i1 %i.bz
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ac, %._crit_edge.unr-lcssa
  %.lcssa = phi i1 [ %i.bt, %._crit_edge.unr-lcssa ], [ %spec.select243.epil, %bb.ac ]
  br i1 %.lcssa, label %.critedge252, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread232, %._crit_edge
  %.0.lcssa237 = phi ptr [ %i.bc, %._crit_edge ], [ %i.f, %.thread232 ]
  %i.ca = load i8, ptr %i.f, align 2, !tbaa !46
  %.not176 = icmp eq i8 %i.ca, 47
  br i1 %.not176, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.thread
  %i.cb = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.27, i64 noundef 5) #17 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.thread
  %i.cc = ptrtoint ptr %.0.lcssa237 to i64
  %i.cd = sub i64 %i.cc, %i.g
  %i.ce = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull %i.f, i64 noundef %i.cd) #17 ; 0 uses
  br label %.loopexit

.critedge252:                                     ; preds = %.lr.ph211.epil.preheader, %._crit_edge
  %i.cf = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.28, i64 noundef 4) #17 ; 0 uses
  br label %.lr.ph215

.lr.ph215:                                        ; preds = %.critedge252, %.lr.ph215
  %.0164213 = phi ptr [ %i.cg, %.lr.ph215 ], [ %i.f, %.critedge252 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0164213, i64 1 ; 2 uses
  %i.ch = load i8, ptr %.0164213, align 1, !tbaa !46
  %i.ci = zext i8 %i.ch to i32
  %i.cj = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.29, i32 noundef %i.ci) #17 ; 0 uses
  %exitcond220.not = icmp eq ptr %i.cg, %i.bc
  br i1 %exitcond220.not, label %.loopexit, label %.lr.ph215, !llvm.loop !102

bb.af:                                            ; preds = %bb.e
  %i.ck = tail call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.31, i64 noundef 6) #17 ; 0 uses
  %i.cl = icmp ugt i32 %1, 3
  br i1 %i.cl, label %bb.ag, label %.thread195

bb.ag:                                            ; preds = %bb.af
  %i.cm = tail call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.30) #17 ; 0 uses
  %i.cn = load i16, ptr %i.f, align 2, !tbaa !103
  %rev.i184 = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.co = zext i16 %rev.i184 to i32
  %i.cp = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.33, i32 noundef %i.co) #17 ; 0 uses
  %i.cq = icmp ugt i32 %1, 7
  br i1 %i.cq, label %bb.ah, label %.thread195

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cr = tail call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.32) #17 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !105
  %i.cu = call ptr @if_indextoname(i32 noundef %i.ct, ptr noundef nonnull %i.b) #17
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cw = load i32, ptr %i.cs, align 4, !tbaa !105
  %i.cx = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.34, i32 noundef %i.cw) #17 ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.cy = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.b) #17 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.cz = icmp ugt i32 %1, 9
  br i1 %i.cz, label %bb.al, label %.thread195

bb.al:                                            ; preds = %bb.ak
  %i.da = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.32) #17 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !106
  %i.dd = zext i16 %i.dc to i32
  %i.de = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.36, i32 noundef %i.dd) #17 ; 0 uses
  %.not205 = icmp eq i32 %1, 10
  br i1 %.not205, label %.thread195, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.df = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull @.str.32) #17 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !107 ; 2 uses
  switch i8 %i.dh, label %bb.as [
    i8 0, label %bb.an
    i8 1, label %bb.ao
    i8 2, label %bb.ap
    i8 3, label %bb.aq
    i8 4, label %bb.ar
  ]

bb.an:                                            ; preds = %bb.am
  %i.di = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.37, i64 noundef 4) #17 ; 0 uses
  br label %.thread195

bb.ao:                                            ; preds = %bb.am
  %i.dj = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.38, i64 noundef 9) #17 ; 0 uses
  br label %.thread195

bb.ap:                                            ; preds = %bb.am
  %i.dk = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.39, i64 noundef 9) #17 ; 0 uses
  br label %.thread195

bb.aq:                                            ; preds = %bb.am
  %i.dl = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.40, i64 noundef 9) #17 ; 0 uses
  br label %.thread195

bb.ar:                                            ; preds = %bb.am
  %i.dm = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.41, i64 noundef 8) #17 ; 0 uses
  br label %.thread195

bb.as:                                            ; preds = %bb.am
  %i.dn = zext i8 %i.dh to i32
  %i.do = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.42, i32 noundef %i.dn) #17 ; 0 uses
  br label %.thread195

.thread195:                                       ; preds = %bb.af, %bb.ag, %bb.ak, %bb.an, %bb.ap, %bb.ar, %bb.as, %bb.aq, %bb.ao, %bb.al
  %.3 = phi ptr [ @.str.32, %bb.an ], [ @.str.32, %bb.ao ], [ @.str.32, %bb.ap ], [ @.str.32, %bb.aq ], [ @.str.32, %bb.ar ], [ @.str.32, %bb.as ], [ @.str.32, %bb.al ], [ @.str.32, %bb.ak ], [ @.str.32, %bb.ag ], [ @.str.30, %bb.af ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 4 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !108
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nuw nsw i32 %i.dr, 12
  %.not = icmp eq i32 %1, %i.ds
  br i1 %.not, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.thread195
  %i.dt = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull %.3) #17 ; 0 uses
  %i.du = icmp ugt i32 %1, 11
  br i1 %i.du, label %bb.au, label %.thread199

bb.au:                                            ; preds = %bb.at
  %i.dv = load i8, ptr %i.dp, align 1, !tbaa !108
  %i.dw = zext i8 %i.dv to i32
  %i.dx = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.43, i32 noundef %i.dw) #17 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread195
  %.4 = phi ptr [ @.str.32, %bb.au ], [ %.3, %.thread195 ] ; 2 uses
  %i.dy = icmp ugt i32 %1, 12
  br i1 %i.dy, label %bb.aw, label %.thread202

bb.aw:                                            ; preds = %bb.av
  %i.dz = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef nonnull %.4) #17 ; 0 uses
  %i.ea = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.44, i64 noundef 6) #17 ; 0 uses
  %i.eb = load i8, ptr %i.dp, align 1, !tbaa !108 ; 2 uses
  %i.ec = zext i8 %i.eb to i32
  %i.ed = zext i8 %i.eb to i64
  %i.ee = add nuw nsw i64 %i.ed, 12
  %i.ef = icmp samesign ugt i64 %i.ee, %i.e
  %i.eg = add i32 %1, -12
  %spec.select = select i1 %i.ef, i32 %i.eg, i32 %i.ec ; 3 uses
  %.not216 = icmp eq i32 %spec.select, 0
  br i1 %.not216, label %.thread202, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw
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
  br i1 %exitcond.not, label %.thread202, label %.peel.next, !llvm.loop !109

.thread202:                                       ; preds = %.peel.next, %.lr.ph, %bb.aw, %bb.av
  %.5204 = phi ptr [ %.4, %bb.av ], [ @.str.32, %bb.aw ], [ @.str.32, %.lr.ph ], [ @.str.32, %.peel.next ]
  %i.er = load i8, ptr %i.dp, align 1, !tbaa !108
  %i.es = zext i8 %i.er to i32
  %i.et = add nuw nsw i32 %i.es, 12
  %.not174 = icmp eq i32 %i.et, %1
  br i1 %.not174, label %bb.ax, label %.thread199

.thread199:                                       ; preds = %bb.at, %.thread202
  %.5201 = phi ptr [ %.5204, %.thread202 ], [ @.str.32, %bb.at ]
  %i.eu = call i64 @rb_str_cat_cstr(i64 noundef %2, ptr noundef %.5201) #17 ; 0 uses
  %i.ev = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.48, i32 noundef %1, i32 noundef 20) #17 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.thread199, %.thread202
  %i.ew = call i64 @rb_str_cat(i64 noundef %2, ptr noundef nonnull @.str.49, i64 noundef 1) #17 ; 0 uses
  br label %.loopexit

bb.ay:                                            ; preds = %bb.e
  %i.ex = zext i16 %i.j to i32
  %i.ey = tail call i64 @rsock_intern_family(i32 noundef %i.ex) #17 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fa = load i16, ptr %0, align 8, !tbaa !46
  %i.fb = zext i16 %i.fa to i32
  %i.fc = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.50, i32 noundef %i.fb) #17 ; 0 uses
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  %i.fd = tail call ptr @rb_id2name(i64 noundef %i.ey) #17
  %i.fe = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %2, ptr noundef nonnull @.str.51, ptr noundef %i.fd) #17 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph215, %bb.az, %bb.ba, %unixsocket_len.exit, %bb.ae, %bb.n, %bb.o, %bb.d, %bb.ax, %bb.y, %bb.f, %bb.b
  ret i64 %2
}

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @if_indextoname(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @rsock_addrinfo_inspect_sockaddr(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.9, i64 noundef 0) #17 ; 2 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %inspect_sockaddr.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.104) #19
  unreachable

inspect_sockaddr.exit:                            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !97
  %i.g = tail call i64 @rsock_inspect_sockaddr(ptr noundef nonnull %i.d, i32 noundef %i.f, i64 noundef %i.a) ; 0 uses
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @rsock_sockaddr_string_value(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile i64, ptr %0, align 8, !tbaa !38 ; 2 uses
  %i.b = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %addrinfo_to_sockaddr.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

addrinfo_to_sockaddr.exit:                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !97
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i64 @rb_str_new(ptr noundef nonnull %i.e, i64 noundef %i.h) #17
  store volatile i64 %i.i, ptr %0, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %addrinfo_to_sockaddr.exit, %bb.a
  %i.j = tail call i64 @rb_string_value(ptr noundef nonnull %0) #17 ; 0 uses
  %i.k = load volatile i64, ptr %0, align 8, !tbaa !38
  ret i64 %i.k
}

declare i32 @rb_typeddata_is_kind_of(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_to_sockaddr(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !97
  %i.f = zext i32 %i.e to i64
  %i.g = tail call i64 @rb_str_new(ptr noundef nonnull %i.c, i64 noundef %i.f) #17
  ret i64 %i.g
}

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @rsock_sockaddr_string_value_with_addrinfo(ptr noundef %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile i64, ptr %0, align 8, !tbaa !38 ; 3 uses
  store i64 4, ptr %1, align 8, !tbaa !38
  %i.b = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %addrinfo_to_sockaddr.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

addrinfo_to_sockaddr.exit:                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !97
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i64 @rb_str_new(ptr noundef nonnull %i.e, i64 noundef %i.h) #17
  store volatile i64 %i.i, ptr %0, align 8, !tbaa !38
  store i64 %i.a, ptr %1, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %addrinfo_to_sockaddr.exit, %bb.a
  %i.j = tail call i64 @rb_string_value(ptr noundef nonnull %0) #17 ; 0 uses
  %i.k = load volatile i64, ptr %0, align 8, !tbaa !38
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define ptr @rsock_sockaddr_string_value_ptr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile i64, ptr %0, align 8, !tbaa !38 ; 2 uses
  %i.b = tail call i32 @rb_typeddata_is_kind_of(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %rsock_sockaddr_string_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %addrinfo_to_sockaddr.exit.i

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

addrinfo_to_sockaddr.exit.i:                      ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
end_hunk_0
begin_hunk_1_@addrinfo_initialize:bb.a

init_addrinfo_getaddrinfo.exit:                   ; preds = %.lr.ph.i.i, %bb.aj
  call void @ruby_xfree(ptr noundef nonnull %i.ch) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.ap

bb.ak:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.du = call i64 @rb_ary_entry(i64 noundef %i.ar, i64 noundef 1) #20
  store i64 %i.du, ptr %i.g, align 8, !tbaa !38
  %i.dv = call i64 @rb_string_value(ptr noundef nonnull %i.g) #17 ; 0 uses
  %i.dw = load i64, ptr %i.g, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.dw, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dx = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !38
  %i.dz = inttoptr i64 %i.dy to ptr               ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !47 ; 5 uses
  %i.ec = icmp ugt i64 %i.eb, 108
  br i1 %i.ec, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ed = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ed, ptr noundef nonnull @.str.112, i64 noundef %i.eb, i64 noundef 108) #19
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.2..2..2..sroa_idx69 = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(108) %.2..2..2..sroa_idx69, i8 0, i64 108, i1 false)
  store i16 1, ptr %3, align 2, !tbaa !141
  %i.ee = load i64, ptr %i.dz, align 8, !tbaa !44
  %i.ef = and i64 %i.ee, 8192
  %.not.i.i38 = icmp eq i64 %i.ef, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %.not.i6.i = icmp eq i64 %i.eb, 0               ; 2 uses
  br i1 %.not.i.i38, label %RSTRING_PTR.exit.i, label %RSTRING_PTR.exit.thread.i

RSTRING_PTR.exit.i:                               ; preds = %bb.am
  br i1 %.not.i6.i, label %init_unix_addrinfo.exit, label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.thread.i:                        ; preds = %bb.am
  br i1 %.not.i6.i, label %init_unix_addrinfo.exit, label %bb.an

bb.an:                                            ; preds = %RSTRING_PTR.exit.thread.i
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !46
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.an, %RSTRING_PTR.exit.i
  %.sink.i = phi ptr [ %i.eh, %bb.an ], [ %i.eg, %RSTRING_PTR.exit.i ] ; 2 uses
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.2..2..2..sroa_idx, ptr readonly align 1 %.sink.i, i64 %i.eb, i1 false)
  %i.ei = load i8, ptr %.sink.i, align 1, !tbaa !46
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %RSTRING_LENINT.exit.i.i, label %init_unix_addrinfo.exit

RSTRING_LENINT.exit.i.i:                          ; preds = %RSTRING_PTR.exit.i.i
  %i.ek = trunc nuw nsw i64 %i.eb to i32
  %i.el = add nuw nsw i32 %i.ek, 2
  br label %init_unix_addrinfo.exit

init_unix_addrinfo.exit:                          ; preds = %RSTRING_PTR.exit.i, %RSTRING_PTR.exit.thread.i, %RSTRING_PTR.exit.i.i, %RSTRING_LENINT.exit.i.i
  %.0.i.i40 = phi i32 [ 110, %RSTRING_PTR.exit.i.i ], [ %i.el, %RSTRING_LENINT.exit.i.i ], [ 2, %RSTRING_PTR.exit.thread.i ], [ 2, %RSTRING_PTR.exit.i ] ; 2 uses
  %i.em = zext nneg i32 %.0.i.i40 to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.en, ptr noundef nonnull readonly align 2 dereferenceable(1) %3, i64 %i.em, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %.0.i.i40, ptr %i.eo, align 4, !tbaa !97
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 1, ptr %i.ep, align 8, !tbaa !98
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 1, ptr %i.eq, align 4, !tbaa !99
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 0, ptr %i.er, align 8, !tbaa !100
  store i64 4, ptr %i.k, align 8, !tbaa !38
  store i64 4, ptr %i.j, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.ap

bb.ao:                                            ; preds = %bb.v
  %i.es = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.es, ptr noundef nonnull @.str.109) #19
  unreachable

bb.ap:                                            ; preds = %init_unix_addrinfo.exit, %init_addrinfo_getaddrinfo.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.aw

bb.aq:                                            ; preds = %bb.r
  %i.et = call i64 @rb_string_value(ptr noundef nonnull %i.b) #17 ; 0 uses
  %i.eu = load i64, ptr %i.b, align 8, !tbaa !38
  %i.ev = inttoptr i64 %i.eu to ptr               ; 3 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !44
  %i.ex = and i64 %i.ew, 8192
  %.not.i41 = icmp eq i64 %i.ex, 0
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 2 uses
  br i1 %.not.i41, label %RSTRING_PTR.exit42, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46
  br label %RSTRING_PTR.exit42

RSTRING_PTR.exit42:                               ; preds = %bb.aq, %bb.ar
  %i.fa = phi ptr [ %i.ez, %bb.ar ], [ %i.ey, %bb.aq ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !47 ; 6 uses
  %i.fd = add i64 %i.fc, 2147483648
  %.not.i.i43 = icmp ult i64 %i.fd, 4294967296
  br i1 %.not.i.i43, label %RSTRING_LENINT.exit, label %bb.as

bb.as:                                            ; preds = %RSTRING_PTR.exit42
  call void @rb_out_of_int(i64 noundef %i.fc) #22
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit42
  %i.fe = trunc nsw i64 %i.fc to i32
  %i.ff = icmp ugt i64 %i.fc, 2048
  br i1 %i.ff, label %bb.at, label %bb.au

bb.at:                                            ; preds = %RSTRING_LENINT.exit
  %i.fg = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fg, ptr noundef nonnull @.str.102) #19
  unreachable

bb.au:                                            ; preds = %RSTRING_LENINT.exit
  %.not.i.i44 = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i44, label %init_addrinfo.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr readonly align 1 %i.fa, i64 %i.fc, i1 false)
  br label %init_addrinfo.exit

init_addrinfo.exit:                               ; preds = %bb.au, %bb.av
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %i.fe, ptr %i.fi, align 4, !tbaa !97
  %i.fj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.ah, ptr %i.fj, align 8, !tbaa !98
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %i.ak, ptr %i.fk, align 4, !tbaa !99
  %i.fl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.aq, ptr %i.fl, align 8, !tbaa !100
  store i64 4, ptr %i.k, align 8, !tbaa !38
  store i64 4, ptr %i.j, align 8, !tbaa !38
  br label %bb.aw

bb.aw:                                            ; preds = %init_addrinfo.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_inspect(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 11 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.e = tail call ptr @rb_obj_classname(i64 noundef %0) #17
  %i.f = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.113, ptr noundef %i.e) #17 ; 13 uses
  %i.g = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %inspect_sockaddr.exit

bb.c:                                             ; preds = %get_addrinfo.exit
  %i.h = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.104) #19
  unreachable

inspect_sockaddr.exit:                            ; preds = %get_addrinfo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %i.l = tail call i64 @rsock_inspect_sockaddr(ptr noundef nonnull %i.i, i32 noundef %i.k, i64 noundef %i.f) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !98   ; 3 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %inspect_sockaddr.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !97
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %ai_get_afamily.exit, label %.critedge

ai_get_afamily.exit:                              ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.s = load i16, ptr %i.r, align 8, !tbaa !77
  %i.t = zext i16 %i.s to i32
  %i.u = icmp eq i32 %i.n, %i.t
  br i1 %i.u, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.d, %ai_get_afamily.exit
  %i.v = tail call i64 @rsock_intern_protocol_family(i32 noundef %i.n) #17 ; 2 uses
  %.not61 = icmp eq i64 %i.v, 0
  br i1 %.not61, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.w = tail call ptr @rb_id2name(i64 noundef %i.v) #17
  %i.x = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.114, ptr noundef %i.w) #17 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.y = load i32, ptr %i.m, align 8, !tbaa !98
  %i.z = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.115, i32 noundef %i.y) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %ai_get_afamily.exit
  %.pr = load i32, ptr %i.m, align 8, !tbaa !98   ; 6 uses
  switch i32 %.pr, label %.thread [
    i32 10, label %bb.h
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !99 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !100
  switch i32 %i.ae, label %bb.k [
    i32 0, label %bb.j
    i32 6, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.af = tail call i64 @rb_str_cat(i64 noundef %i.f, ptr noundef nonnull @.str.116, i64 noundef 4) #17 ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %bb.i, %bb.h
  switch i32 %.pr, label %.thread [
    i32 10, label %bb.l
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ag = icmp eq i32 %i.ab, 2
  br i1 %i.ag, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !100
  switch i32 %i.ai, label %.thread [
    i32 0, label %bb.n
    i32 17, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.aj = tail call i64 @rb_str_cat(i64 noundef %i.f, ptr noundef nonnull @.str.117, i64 noundef 4) #17 ; 0 uses
  br label %bb.v

.thread:                                          ; preds = %inspect_sockaddr.exit, %bb.g, %bb.m, %bb.k, %bb.l
  %i.ak = phi i32 [ %.pr, %bb.l ], [ %.pr, %bb.g ], [ %.pr, %bb.m ], [ %.pr, %bb.k ], [ 0, %inspect_sockaddr.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !99 ; 2 uses
  %.not62 = icmp eq i32 %i.am, 0
  br i1 %.not62, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.an = tail call i64 @rsock_intern_socktype(i32 noundef %i.am) #17 ; 2 uses
  %.not63 = icmp eq i64 %i.an, 0
  br i1 %.not63, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call ptr @rb_id2name(i64 noundef %i.an) #17
  %i.ap = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.114, ptr noundef %i.ao) #17 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !99
  %i.ar = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.118, i32 noundef %i.aq) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !100 ; 3 uses
  %.not64 = icmp eq i32 %i.at, 0
  br i1 %.not64, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %i.ak, label %bb.u [
    i32 10, label %bb.t
    i32 2, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.au = tail call i64 @rsock_intern_ipproto(i32 noundef %i.at) #17 ; 2 uses
  %.not65 = icmp eq i64 %i.au, 0
  br i1 %.not65, label %._crit_edge, label %.thread67

._crit_edge:                                      ; preds = %bb.t
  %.pre = load i32, ptr %i.as, align 8, !tbaa !100
  br label %bb.u

.thread67:                                        ; preds = %bb.t
  %i.av = tail call ptr @rb_id2name(i64 noundef %i.au) #17
  %i.aw = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.114, ptr noundef %i.av) #17 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge, %bb.s
  %i.ax = phi i32 [ %.pre, %._crit_edge ], [ %i.at, %bb.s ]
  %i.ay = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.119, i32 noundef %i.ax) #17 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.thread67, %bb.n, %bb.u, %bb.r, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !94 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4
  br i1 %i.bb, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !38
  %i.bc = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #17
  %i.bd = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.114, ptr noundef %i.bc) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.be = load i64, ptr %i.c, align 8, !tbaa !92  ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4
  br i1 %i.bf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.be, ptr %i.b, align 8, !tbaa !38
  %i.bg = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #17
  %i.bh = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.120, ptr noundef %i.bg) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bi = call i64 @rb_str_cat(i64 noundef %i.f, ptr noundef nonnull @.str.121, i64 noundef 1) #17 ; 0 uses
  ret i64 %i.f
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_s_getaddrinfo(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call i32 @rb_keyword_given_p() #17
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_hash_dup(i64 noundef %i.f) #17
  %i.i = add nsw i32 %0, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.188.i = phi i64 [ 4, %bb.a ], [ %i.h, %bb.b ]
  %.1.i = phi i32 [ %0, %bb.a ], [ %i.i, %bb.b ]  ; 8 uses
  %i.j = icmp samesign ult i32 %.1.i, 2
  br i1 %i.j, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.k = load i64, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %.not29 = icmp eq i32 %.1.i, 2
  br i1 %.not29, label %.preheader.1, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !38
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.d
  %i.p = phi i64 [ %i.o, %bb.d ], [ 4, %.preheader.preheader ]
  %.286.i = phi i32 [ 3, %bb.d ], [ 2, %.preheader.preheader ] ; 4 uses
  %i.q = icmp samesign ult i32 %.286.i, %.1.i
  br i1 %i.q, label %bb.e, label %.preheader.2

bb.e:                                             ; preds = %.preheader.1
end_hunk_1
begin_hunk_2_@addrinfo_s_getaddrinfo:rb_scan_args_n_opt.exit
  %i.bf = call i64 @rb_ary_push(i64 noundef %i.aq, i64 noundef %i.be) #17 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02631.i, i64 40
  %.026.i = load ptr, ptr %i.bg, align 8, !tbaa !52 ; 2 uses
  %.not.i1 = icmp eq ptr %.026.i, null
  br i1 %.not.i1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !143

._crit_edge.i:                                    ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !10
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %bb.m, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i
  call void @freeaddrinfo(ptr noundef nonnull %i.ao) #17
  br label %addrinfo_list_new.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %i.ao, %._crit_edge.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !19
  call void @ruby_xfree(ptr noundef %i.bm) #17
  call void @ruby_xfree(ptr noundef nonnull %.014.i.i) #17
  %.not12.i.i = icmp eq ptr %i.bk, null
  br i1 %.not12.i.i, label %addrinfo_list_new.exit, label %.lr.ph.i.i, !llvm.loop !20

addrinfo_list_new.exit:                           ; preds = %.lr.ph.i.i, %bb.j, %bb.m
  call void @ruby_xfree(ptr noundef nonnull %i.an) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.aq
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @addrinfo_s_ip(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i64 @addrinfo_firstonly_new(i64 noundef %1, i64 noundef 4, i64 noundef 1, i64 noundef 1, i64 noundef 1) ; 2 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !100
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_s_tcp(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @addrinfo_firstonly_new(i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 3, i64 noundef 13)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_s_udp(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @addrinfo_firstonly_new(i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 5, i64 noundef 35)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_s_unix(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.sockaddr_un, align 2        ; 6 uses
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !38
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = icmp eq i32 %0, 2
  br i1 %i.f, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #19
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.g = icmp eq i64 %i.e, 4
  br i1 %i.g, label %rb_scan_args_set.exit.thread, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.h = tail call i32 @rsock_socktype_arg(i64 noundef %i.e) #17
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader, %rb_scan_args_set.exit, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ 1, %rb_scan_args_set.exit ], [ 1, %.preheader ]
  %i.i = load i64, ptr @rb_cAddrinfo, align 8, !tbaa !38
  %i.j = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.i, ptr noundef null, ptr noundef nonnull @addrinfo_type) #17 ; 2 uses
  %i.k = tail call noalias noundef nonnull dereferenceable(2080) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2080) #21 ; 9 uses
  store i64 4, ptr %i.k, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 4, ptr %i.l, align 8, !tbaa !94
  %i.m = inttoptr i64 %i.j to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.k, ptr %i.n, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.o = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !38
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47   ; 5 uses
  %i.t = icmp ugt i64 %i.s, 108
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit.thread
  %i.u = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.112, i64 noundef %i.s, i64 noundef 108) #19
  unreachable

bb.f:                                             ; preds = %rb_scan_args_set.exit.thread
  %.2..2..2..sroa_idx17 = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(108) %.2..2..2..sroa_idx17, i8 0, i64 108, i1 false)
  store i16 1, ptr %3, align 2, !tbaa !141
  %i.v = load i64, ptr %i.q, align 8, !tbaa !44
  %i.w = and i64 %i.v, 8192
  %.not.i.i = icmp eq i64 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.not.i6.i = icmp eq i64 %i.s, 0                ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %RSTRING_PTR.exit.thread.i

RSTRING_PTR.exit.i:                               ; preds = %bb.f
  br i1 %.not.i6.i, label %init_unix_addrinfo.exit, label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.thread.i:                        ; preds = %bb.f
  br i1 %.not.i6.i, label %init_unix_addrinfo.exit, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit.thread.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.g, %RSTRING_PTR.exit.i
  %.sink.i = phi ptr [ %i.y, %bb.g ], [ %i.x, %RSTRING_PTR.exit.i ] ; 2 uses
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.2..2..2..sroa_idx, ptr readonly align 1 %.sink.i, i64 %i.s, i1 false)
  %i.z = load i8, ptr %.sink.i, align 1, !tbaa !46
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %RSTRING_LENINT.exit.i.i, label %init_unix_addrinfo.exit

RSTRING_LENINT.exit.i.i:                          ; preds = %RSTRING_PTR.exit.i.i
  %i.ab = trunc nuw nsw i64 %i.s to i32
  %i.ac = add nuw nsw i32 %i.ab, 2
  br label %init_unix_addrinfo.exit

init_unix_addrinfo.exit:                          ; preds = %RSTRING_PTR.exit.i, %RSTRING_PTR.exit.thread.i, %RSTRING_PTR.exit.i.i, %RSTRING_LENINT.exit.i.i
  %.0.i.i = phi i32 [ 110, %RSTRING_PTR.exit.i.i ], [ %i.ac, %RSTRING_LENINT.exit.i.i ], [ 2, %RSTRING_PTR.exit.thread.i ], [ 2, %RSTRING_PTR.exit.i ] ; 2 uses
  %i.ad = zext nneg i32 %.0.i.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull readonly align 2 dereferenceable(1) %3, i64 %i.ad, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store i32 %.0.i.i, ptr %i.af, align 4, !tbaa !97
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 1, ptr %i.ag, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %.0, ptr %i.ah, align 4, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 0, ptr %i.ai, align 8, !tbaa !100
  store i64 4, ptr %i.l, align 8, !tbaa !38
  store i64 4, ptr %i.k, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 131072) i64 @addrinfo_afamily(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %ai_get_afamily.exit

bb.c:                                             ; preds = %get_addrinfo.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %i.h = zext i16 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  br label %ai_get_afamily.exit

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit, %bb.c
  %.0.i.i = phi i64 [ %i.j, %bb.c ], [ 1, %get_addrinfo.exit ]
  ret i64 %.0.i.i
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @addrinfo_pfamily(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !98
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 1
  %i.g = or disjoint i64 %i.f, 1
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @addrinfo_socktype(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 1
  %i.g = or disjoint i64 %i.f, 1
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @addrinfo_protocol(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 1
  %i.g = or disjoint i64 %i.f, 1
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_canonname(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv4_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit, label %ai_get_afamily.exit.thread

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr = freeze i16 %i.g
  %i.h = icmp eq i16 %.fr, 2
  %spec.select = select i1 %i.h, i64 20, i64 0
  br label %ai_get_afamily.exit.thread

ai_get_afamily.exit.thread:                       ; preds = %ai_get_afamily.exit, %get_addrinfo.exit
  %i.i = phi i64 [ 0, %get_addrinfo.exit ], [ %spec.select, %ai_get_afamily.exit ]
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit, label %ai_get_afamily.exit.thread

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr = freeze i16 %i.g
  %i.h = icmp eq i16 %.fr, 10
  %spec.select = select i1 %i.h, i64 20, i64 0
  br label %ai_get_afamily.exit.thread

ai_get_afamily.exit.thread:                       ; preds = %ai_get_afamily.exit, %get_addrinfo.exit
  %i.i = phi i64 [ 0, %get_addrinfo.exit ], [ %spec.select, %ai_get_afamily.exit ]
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_unix_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit, label %ai_get_afamily.exit.thread

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr = freeze i16 %i.g
  %i.h = icmp eq i16 %.fr, 1
  %spec.select = select i1 %i.h, i64 20, i64 0
  br label %ai_get_afamily.exit.thread

ai_get_afamily.exit.thread:                       ; preds = %ai_get_afamily.exit, %get_addrinfo.exit
  %i.i = phi i64 [ 0, %get_addrinfo.exit ], [ %spec.select, %ai_get_afamily.exit ]
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ip_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %ai_get_afamily.exit

bb.c:                                             ; preds = %get_addrinfo.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %i.h = and i16 %i.g, -9
  %i.i = icmp eq i16 %i.h, 2
  %i.j = select i1 %i.i, i64 20, i64 0
  br label %ai_get_afamily.exit

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit, %bb.c
  %.0.i.i = phi i64 [ %i.j, %bb.c ], [ 0, %get_addrinfo.exit ]
  ret i64 %.0.i.i
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @addrinfo_ip_unpack(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !97
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %ai_get_afamily.exit, label %ai_get_afamily.exit.thread

ai_get_afamily.exit.thread:                       ; preds = %get_addrinfo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br label %bb.c

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load i16, ptr %i.h, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.j = and i16 %i.i, -9
  %or.cond = icmp eq i16 %i.j, 2
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ai_get_afamily.exit.thread, %ai_get_afamily.exit
  %i.k = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.124) #19
  unreachable

bb.d:                                             ; preds = %ai_get_afamily.exit
  store i64 7, ptr %i.a, align 8, !tbaa !38
  %i.l = call i64 @addrinfo_getnameinfo(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %0) ; 3 uses
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 1) #20
  store i64 %i.m, ptr %i.b, align 8, !tbaa !38
  %i.n = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #17
  %i.o = call i64 @__isoc23_strtol(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 10) #17, !inline_history !79
  %sext = shl i64 %i.o, 32
  %i.p = ashr exact i64 %sext, 31
  %i.q = or disjoint i64 %i.p, 1
  call void @rb_ary_store(i64 noundef %i.l, i64 noundef 1, i64 noundef %i.q) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.l
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_ip_address(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !97
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %ai_get_afamily.exit, label %ai_get_afamily.exit.thread

ai_get_afamily.exit.thread:                       ; preds = %get_addrinfo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %bb.c

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i16, ptr %i.g, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.i = and i16 %i.h, -9
  %or.cond = icmp eq i16 %i.i, 2
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ai_get_afamily.exit.thread, %ai_get_afamily.exit
  %i.j = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.124) #19
  unreachable

bb.d:                                             ; preds = %ai_get_afamily.exit
  store i64 7, ptr %i.a, align 8, !tbaa !38
  %i.k = call i64 @addrinfo_getnameinfo(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %0)
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.k, i64 noundef 0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.l
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 131072) i64 @addrinfo_ip_port(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97   ; 3 uses
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit, label %ai_get_afamily.exit.thread

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77   ; 2 uses
  %i.h = and i16 %i.g, -9
  %or.cond = icmp eq i16 %i.h, 2
  br i1 %or.cond, label %bb.c, label %ai_get_afamily.exit.thread

ai_get_afamily.exit.thread:                       ; preds = %get_addrinfo.exit, %bb.c, %ai_get_afamily.exit
  %i.i = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.124) #19
  unreachable

bb.c:                                             ; preds = %ai_get_afamily.exit
  switch i16 %i.g, label %ai_get_afamily.exit.thread [
    i16 2, label %bb.d
    i16 10, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %.not10 = icmp eq i32 %i.d, 16
  br i1 %.not10, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.125) #19
  unreachable

bb.f:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.d, 28
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.126) #19
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.m = load i16, ptr %i.l, align 2, !tbaa !46
  %rev.i11 = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.n = zext i16 %rev.i11 to i64
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = or disjoint i64 %i.o, 1
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv4_private_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.not.i = icmp eq i16 %i.g, 2
  br i1 %.not.i, label %bb.c, label %extract_in_addr.exit.thread

bb.c:                                             ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = tail call noundef i32 @llvm.bswap.i32(i32 %i.i) ; 3 uses
  %i.k = and i32 %i.j, -16777216
  %i.l = icmp eq i32 %i.k, 167772160
  %i.m = and i32 %i.j, -1048576
  %i.n = icmp eq i32 %i.m, -1408237568
  %or.cond = or i1 %i.l, %i.n
  %i.o = and i32 %i.j, -65536
  %i.p = icmp eq i32 %i.o, -1062731776
  %or.cond4 = or i1 %i.p, %or.cond
  %spec.select = select i1 %or.cond4, i64 20, i64 0
  br label %extract_in_addr.exit.thread

extract_in_addr.exit.thread:                      ; preds = %get_addrinfo.exit.i, %ai_get_afamily.exit.i, %bb.c
  %.0 = phi i64 [ %spec.select, %bb.c ], [ 0, %ai_get_afamily.exit.i ], [ 0, %get_addrinfo.exit.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv4_loopback_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %bb.c

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.not.i = icmp eq i16 %i.g, 2
  br i1 %.not.i, label %extract_in_addr.exit, label %bb.c

extract_in_addr.exit:                             ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %.mask = and i32 %i.i, 255
  %i.j = icmp eq i32 %.mask, 127
  %. = select i1 %i.j, i64 20, i64 0
  br label %bb.c

bb.c:                                             ; preds = %get_addrinfo.exit.i, %ai_get_afamily.exit.i, %extract_in_addr.exit
  %i.k = phi i64 [ %., %extract_in_addr.exit ], [ 0, %ai_get_afamily.exit.i ], [ 0, %get_addrinfo.exit.i ]
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv4_multicast_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %bb.c

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.not.i = icmp eq i16 %i.g, 2
  br i1 %.not.i, label %extract_in_addr.exit, label %bb.c

extract_in_addr.exit:                             ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = and i32 %i.i, 240
  %i.k = icmp eq i32 %i.j, 224
  %. = select i1 %i.k, i64 20, i64 0
  br label %bb.c

bb.c:                                             ; preds = %get_addrinfo.exit.i, %ai_get_afamily.exit.i, %extract_in_addr.exit
  %i.l = phi i64 [ %., %extract_in_addr.exit ], [ 0, %ai_get_afamily.exit.i ], [ 0, %get_addrinfo.exit.i ]
  ret i64 %i.l
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_unspecified_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %.critedge

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %.critedge

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %.critedge

.critedge:                                        ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.d, %bb.c, %extract_in6_addr.exit, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0 = phi i64 [ 0, %.critedge ], [ 20, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_loopback_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %.critedge

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %.critedge

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46
  %i.s = icmp eq i32 %i.r, 16777216
  br i1 %i.s, label %bb.f, label %.critedge

.critedge:                                        ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.d, %bb.c, %extract_in6_addr.exit, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0 = phi i64 [ 0, %.critedge ], [ 20, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_multicast_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in6_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %extract_in6_addr.exit.thread

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i8, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %extract_in6_addr.exit.thread

extract_in6_addr.exit.thread:                     ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %extract_in6_addr.exit
  br label %bb.c

bb.c:                                             ; preds = %extract_in6_addr.exit, %extract_in6_addr.exit.thread
  %.0 = phi i64 [ 0, %extract_in6_addr.exit.thread ], [ 20, %extract_in6_addr.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_linklocal_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in6_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %extract_in6_addr.exit.thread

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = and i32 %i.i, 49407
  %i.k = icmp eq i32 %i.j, 33022
  br i1 %i.k, label %bb.c, label %extract_in6_addr.exit.thread

extract_in6_addr.exit.thread:                     ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %extract_in6_addr.exit
  br label %bb.c

bb.c:                                             ; preds = %extract_in6_addr.exit, %extract_in6_addr.exit.thread
  %.0 = phi i64 [ 0, %extract_in6_addr.exit.thread ], [ 20, %extract_in6_addr.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_sitelocal_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in6_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %extract_in6_addr.exit.thread

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = and i32 %i.i, 49407
  %i.k = icmp eq i32 %i.j, 49406
  br i1 %i.k, label %bb.c, label %extract_in6_addr.exit.thread

extract_in6_addr.exit.thread:                     ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %extract_in6_addr.exit
  br label %bb.c

bb.c:                                             ; preds = %extract_in6_addr.exit, %extract_in6_addr.exit.thread
  %.0 = phi i64 [ 0, %extract_in6_addr.exit.thread ], [ 20, %extract_in6_addr.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_unique_local_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in6_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %extract_in6_addr.exit.thread

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i8, ptr %i.h, align 4, !tbaa !46
  %i.j = and i8 %i.i, -2
  %switch = icmp eq i8 %i.j, -4
  br i1 %switch, label %bb.c, label %extract_in6_addr.exit.thread

extract_in6_addr.exit.thread:                     ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %extract_in6_addr.exit
  br label %bb.c

bb.c:                                             ; preds = %extract_in6_addr.exit, %extract_in6_addr.exit.thread
  %.0 = phi i64 [ 0, %extract_in6_addr.exit.thread ], [ 20, %extract_in6_addr.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_v4mapped_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %.critedge

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %.critedge

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  %i.p = icmp eq i32 %i.o, -65536
  br i1 %i.p, label %bb.e, label %.critedge

.critedge:                                        ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.c, %extract_in6_addr.exit, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.0 = phi i64 [ 0, %.critedge ], [ 20, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_v4compat_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %.critedge

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %.critedge

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46
  %i.s = tail call noundef i32 @llvm.bswap.i32(i32 %i.r)
  %i.t = icmp ugt i32 %i.s, 1
  br i1 %i.t, label %bb.f, label %.critedge

.critedge:                                        ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.d, %bb.c, %extract_in6_addr.exit, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0 = phi i64 [ 0, %.critedge ], [ 20, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_mc_nodelocal_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in6_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %extract_in6_addr.exit.thread

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i8, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %extract_in6_addr.exit.thread

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46
  %i.m = and i8 %i.l, 15
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.d, label %extract_in6_addr.exit.thread

extract_in6_addr.exit.thread:                     ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.c, %extract_in6_addr.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %extract_in6_addr.exit.thread
  %.0 = phi i64 [ 0, %extract_in6_addr.exit.thread ], [ 20, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_mc_linklocal_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in6_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %extract_in6_addr.exit.thread

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i8, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %extract_in6_addr.exit.thread

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46
  %i.m = and i8 %i.l, 15
  %i.n = icmp eq i8 %i.m, 2
  br i1 %i.n, label %bb.d, label %extract_in6_addr.exit.thread

extract_in6_addr.exit.thread:                     ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.c, %extract_in6_addr.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %extract_in6_addr.exit.thread
  %.0 = phi i64 [ 0, %extract_in6_addr.exit.thread ], [ 20, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_mc_sitelocal_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in6_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %extract_in6_addr.exit.thread

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i8, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %extract_in6_addr.exit.thread

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46
  %i.m = and i8 %i.l, 15
  %i.n = icmp eq i8 %i.m, 5
  br i1 %i.n, label %bb.d, label %extract_in6_addr.exit.thread

extract_in6_addr.exit.thread:                     ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.c, %extract_in6_addr.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %extract_in6_addr.exit.thread
  %.0 = phi i64 [ 0, %extract_in6_addr.exit.thread ], [ 20, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_mc_orglocal_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in6_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %extract_in6_addr.exit.thread

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i8, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %extract_in6_addr.exit.thread

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46
  %i.m = and i8 %i.l, 15
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %bb.d, label %extract_in6_addr.exit.thread

extract_in6_addr.exit.thread:                     ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.c, %extract_in6_addr.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %extract_in6_addr.exit.thread
  %.0 = phi i64 [ 0, %extract_in6_addr.exit.thread ], [ 20, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @addrinfo_ipv6_mc_global_p(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %get_addrinfo.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit.i:                              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit.i, label %extract_in6_addr.exit.thread

ai_get_afamily.exit.i:                            ; preds = %get_addrinfo.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.fr.i = freeze i16 %i.g
  %.not.i = icmp eq i16 %.fr.i, 10
  br i1 %.not.i, label %extract_in6_addr.exit, label %extract_in6_addr.exit.thread

extract_in6_addr.exit:                            ; preds = %ai_get_afamily.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i8, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %extract_in6_addr.exit.thread

bb.c:                                             ; preds = %extract_in6_addr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.l = load i8, ptr %i.k, align 1, !tbaa !46
  %i.m = and i8 %i.l, 15
  %i.n = icmp eq i8 %i.m, 14
  br i1 %i.n, label %bb.d, label %extract_in6_addr.exit.thread

extract_in6_addr.exit.thread:                     ; preds = %ai_get_afamily.exit.i, %get_addrinfo.exit.i, %bb.c, %extract_in6_addr.exit
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %extract_in6_addr.exit.thread
  %.0 = phi i64 [ 0, %extract_in6_addr.exit.thread ], [ 20, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_ipv6_to_ipv4(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 12 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit, label %.critedge24

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.not = icmp eq i16 %i.g, 10
  br i1 %.not, label %bb.c, label %.critedge24

bb.c:                                             ; preds = %ai_get_afamily.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.critedge24

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %.critedge24

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  %i.p = icmp eq i32 %i.o, -65536
  br i1 %i.p, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %.critedge24

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !46   ; 2 uses
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = icmp ugt i32 %i.v, 1
  br i1 %i.w, label %bb.h, label %.critedge24

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.x = phi i32 [ %.pre, %._crit_edge ], [ %i.u, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !94  ; 4 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !92  ; 4 uses
  %i.ac = load i64, ptr @rb_cAddrinfo, align 8, !tbaa !38
  %i.ad = load <2 x i32>, ptr %i.y, align 4, !tbaa !6
  %i.ae = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.ac, ptr noundef null, ptr noundef nonnull @addrinfo_type) #17 ; 5 uses
  %i.af = tail call noalias noundef nonnull dereferenceable(2080) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2080) #21 ; 11 uses
  store i64 4, ptr %i.af, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = inttoptr i64 %i.ae to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i16 2, ptr %i.aj, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 34
  store i16 0, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  store i32 %i.x, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  store i32 16, ptr %i.ak, align 4, !tbaa !97
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 2, ptr %i.al, align 8, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store <2 x i32> %i.ad, ptr %i.am, align 4, !tbaa !6
  store i64 %i.aa, ptr %i.ag, align 8, !tbaa !38
  %i.an = icmp eq i64 %i.aa, 0
  %i.ao = and i64 %i.aa, 7
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = or i1 %i.an, %i.ap
  br i1 %i.aq, label %rb_obj_write.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_gc_writebarrier(i64 noundef %i.ae, i64 noundef %i.aa) #17
  br label %rb_obj_write.exit.i.i

rb_obj_write.exit.i.i:                            ; preds = %bb.i, %bb.h
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !38
  %i.ar = icmp eq i64 %i.ab, 0
  %i.as = and i64 %i.ab, 7
  %i.at = icmp ne i64 %i.as, 0
  %i.au = or i1 %i.ar, %i.at
  br i1 %i.au, label %.critedge24, label %bb.j

bb.j:                                             ; preds = %rb_obj_write.exit.i.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.ae, i64 noundef %i.ab) #17
  br label %.critedge24

.critedge24:                                      ; preds = %bb.j, %rb_obj_write.exit.i.i, %bb.d, %get_addrinfo.exit, %bb.c, %bb.g, %bb.f, %ai_get_afamily.exit
  %.0 = phi i64 [ 4, %ai_get_afamily.exit ], [ 4, %bb.d ], [ 4, %bb.f ], [ 4, %get_addrinfo.exit ], [ 4, %bb.c ], [ 4, %bb.g ], [ %i.ae, %rb_obj_write.exit.i.i ], [ %i.ae, %bb.j ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_unix_path(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97   ; 3 uses
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %ai_get_afamily.exit, label %ai_get_afamily.exit.thread

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %.not = icmp eq i16 %i.g, 1
  br i1 %.not, label %bb.c, label %ai_get_afamily.exit.thread

ai_get_afamily.exit.thread:                       ; preds = %get_addrinfo.exit, %ai_get_afamily.exit
  %i.h = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.127) #19
  unreachable

bb.c:                                             ; preds = %ai_get_afamily.exit
  %.not19 = icmp eq i32 %i.d, 2
  br i1 %.not19, label %rai_unixsocket_len.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = zext i32 %i.d to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.j = icmp sgt i64 %.0.idx.i.i18, 3
  br i1 %i.j, label %bb.e, label %rai_unixsocket_len.exit.thread, !llvm.loop !80

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.0.idx.i.i18 = phi i64 [ %i.i, %.lr.ph ], [ %.0.add.i.i, %bb.d ] ; 4 uses
  %.0.add.i.i = add nsw i64 %.0.idx.i.i18, -1     ; 2 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0.add.i.i
  %i.k = load i8, ptr %.ptr.i.i, align 1, !tbaa !46
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %rai_unixsocket_len.exit, !llvm.loop !80

rai_unixsocket_len.exit:                          ; preds = %bb.e
  %gepdiff.i.i = add nsw i64 %.0.idx.i.i18, -2    ; 2 uses
  %i.m = icmp samesign ugt i64 %.0.idx.i.i18, 110
  br i1 %i.m, label %bb.f, label %rai_unixsocket_len.exit.thread

bb.f:                                             ; preds = %rai_unixsocket_len.exit
  %i.n = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.129, i64 noundef %gepdiff.i.i, i64 noundef 108) #19
  unreachable

rai_unixsocket_len.exit.thread:                   ; preds = %bb.d, %bb.c, %rai_unixsocket_len.exit
  %gepdiff.i.i15 = phi i64 [ %gepdiff.i.i, %rai_unixsocket_len.exit ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.p = tail call i64 @rb_str_new(ptr noundef nonnull %i.o, i64 noundef %gepdiff.i.i15) #17
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_getnameinfo(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @addrinfo_type) #17 ; 4 uses
  %.not.i10 = icmp eq ptr %i.c, null
  br i1 %.not.i10, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.e = icmp slt i32 %0, 0
  br i1 %i.e, label %bb.d, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.c
  %.not18 = icmp eq i32 %0, 0
  br i1 %.not18, label %rb_scan_args_set.exit.thread, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.f = load i64, ptr %1, align 8, !tbaa !38     ; 4 uses
  %i.g = icmp eq i32 %0, 1
  br i1 %i.g, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %.split.us, %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #19
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %i.h = icmp eq i64 %i.f, 4
  br i1 %i.h, label %rb_scan_args_set.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.i = trunc i64 %i.f to i1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i64 @rb_fix2int(i64 noundef %i.f) #17
  br label %rb_num2int_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.k = tail call i64 @rb_num2int(i64 noundef %i.f) #17
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.j, %bb.f ], [ %i.k, %bb.g ]
  %i.l = trunc i64 %.0.i to i32
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader.split.split, %rb_scan_args_set.exit, %rb_num2int_inline.exit
  %i.m = phi i32 [ %i.l, %rb_num2int_inline.exit ], [ 0, %rb_scan_args_set.exit ], [ 0, %.preheader.split.split ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !99
  %i.p = icmp eq i32 %i.o, 2
  %i.q = or i32 %i.m, 16
  %spec.select = select i1 %i.p, i32 %i.q, i32 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !97
  %i.u = call i32 @rb_getnameinfo(ptr noundef nonnull %i.r, i32 noundef %i.t, ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %i.b, i64 noundef 1024, i32 noundef %spec.select) ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rb_scan_args_set.exit.thread
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.u) #19
  unreachable

bb.i:                                             ; preds = %rb_scan_args_set.exit.thread
  %i.v = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.a) #17
  %i.w = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.b) #17
  %i.x = call i64 @rb_assoc_new(i64 noundef %i.v, i64 noundef %i.w) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.x
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_mdump(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca [1025 x i8], align 16             ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 11 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !97
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %ai_get_afamily.exit

bb.c:                                             ; preds = %get_addrinfo.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load i16, ptr %i.h, align 4, !tbaa !77
  %i.j = zext i16 %i.i to i32
  br label %ai_get_afamily.exit

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit, %bb.c
  %.0.i.i = phi i32 [ %i.j, %bb.c ], [ 0, %get_addrinfo.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !98
  %i.m = tail call i64 @rsock_intern_protocol_family(i32 noundef %i.l) #17 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ai_get_afamily.exit
  %i.o = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  %i.p = load i32, ptr %i.k, align 8, !tbaa !98
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.131, i32 noundef %i.p) #19
  unreachable

bb.e:                                             ; preds = %ai_get_afamily.exit
  %i.q = tail call i64 @rb_id2str(i64 noundef %i.m) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !99   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i64 @rsock_intern_socktype(i32 noundef %i.s) #17 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  %i.x = load i32, ptr %i.r, align 4, !tbaa !99
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.132, i32 noundef %i.x) #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = tail call i64 @rb_id2str(i64 noundef %i.u) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %.039 = phi i64 [ %i.y, %bb.h ], [ 1, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = and i32 %.0.i.i, 65527
  %or.cond = icmp eq i32 %i.ac, 2
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i64 @rsock_intern_ipproto(i32 noundef %i.aa) #17 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  %i.ag = load i32, ptr %i.z, align 8, !tbaa !100
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.af, ptr noundef nonnull @.str.133, i32 noundef %i.ag) #19
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = tail call i64 @rb_id2str(i64 noundef %i.ad) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ai = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.134, i32 noundef %i.aa) #19
  unreachable

bb.o:                                             ; preds = %bb.i, %bb.m
  %.040 = phi i64 [ %i.ah, %bb.m ], [ 1, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !94
  %i.al = load i64, ptr %i.c, align 8, !tbaa !92
  %i.am = tail call i64 @rsock_intern_family(i32 noundef %.0.i.i) #17 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ao = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @.str.135, i32 noundef %.0.i.i) #19
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ap = tail call i64 @rb_id2str(i64 noundef %i.am) #17
  %cond = icmp eq i32 %.0.i.i, 1
  br i1 %cond, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.as = load i32, ptr %i.e, align 4, !tbaa !97  ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.at, i64 2) ; 2 uses
  %i.av = icmp ugt i32 %i.as, 2
  br i1 %i.av, label %.lr.ph, label %rai_unixsocket_len.exit

bb.s:                                             ; preds = %.lr.ph
  %i.aw = icmp sgt i64 %.0.idx.i.i57, 3
  br i1 %i.aw, label %.lr.ph, label %rai_unixsocket_len.exit, !llvm.loop !80

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.0.idx.i.i57 = phi i64 [ %.0.add.i.i, %bb.s ], [ %i.at, %bb.r ] ; 3 uses
  %.0.add.i.i = add nsw i64 %.0.idx.i.i57, -1     ; 2 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0.add.i.i
  %i.ax = load i8, ptr %.ptr.i.i, align 1, !tbaa !46
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.s, label %.rai_unixsocket_len.exit_crit_edge58, !llvm.loop !80

.rai_unixsocket_len.exit_crit_edge58:             ; preds = %.lr.ph
  br label %rai_unixsocket_len.exit, !llvm.loop !80

rai_unixsocket_len.exit:                          ; preds = %bb.s, %.rai_unixsocket_len.exit_crit_edge58, %bb.r
  %.0.idx.lcssa.i.i = phi i64 [ %i.au, %bb.r ], [ %.0.idx.i.i57, %.rai_unixsocket_len.exit_crit_edge58 ], [ %i.au, %bb.s ]
  %gepdiff.i.i = add nsw i64 %.0.idx.lcssa.i.i, -2
  %i.az = tail call i64 @rb_str_new(ptr noundef nonnull %i.aq, i64 noundef %gepdiff.i.i) #17
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bb = load i32, ptr %i.e, align 4, !tbaa !97
  %i.bc = call i32 @getnameinfo(ptr noundef nonnull %i.ba, i32 noundef %i.bb, ptr noundef nonnull %i.a, i32 noundef 1025, ptr noundef nonnull %i.b, i32 noundef 32, i32 noundef 3) #17 ; 2 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @rsock_raise_resolution_error(ptr noundef nonnull @.str.8, i32 noundef %i.bc) #19
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bd = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.a) #17
  %i.be = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.b) #17
  %i.bf = call i64 @rb_assoc_new(i64 noundef %i.bd, i64 noundef %i.be) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %rai_unixsocket_len.exit
  %.0 = phi i64 [ %i.az, %rai_unixsocket_len.exit ], [ %i.bf, %bb.v ]
  %i.bg = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 7, i64 noundef %i.ap, i64 noundef %.0, i64 noundef %i.q, i64 noundef %.039, i64 noundef %.040, i64 noundef %i.ak, i64 noundef %i.al) #17
  ret i64 %i.bg
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @addrinfo_mload(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 23 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %2 = alloca %union.union_sockaddr, align 8      ; 6 uses
  %.sroa.5 = alloca [108 x i8], align 2           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.f = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.106) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_convert_type(i64 noundef %1, i32 noundef 7, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137) #17 ; 7 uses
  %i.i = tail call i64 @rb_ary_entry(i64 noundef %i.h, i64 noundef 0) #20
  store i64 %i.i, ptr %i.a, align 8, !tbaa !38
  %i.j = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !38
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44
  %i.n = and i64 %i.m, 8192
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47
  %i.t = call i32 @rsock_family_to_int(ptr noundef %i.q, i64 noundef %i.s, ptr noundef nonnull %i.b) #17
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %RSTRING_PTR.exit
  %i.v = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.109) #19
end_hunk_2
