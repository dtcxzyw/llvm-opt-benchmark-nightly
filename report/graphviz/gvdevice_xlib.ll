Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvdevice_xlib?download=true
inline.NumInlined: 50
inline.NumDeleted: 26
begin_hunk_0_@xlib_finalize:bb.a
  %i.l = icmp eq ptr %i.d, null
  br i1 %i.l, label %bb.bx, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @XConnectionNumber(ptr noundef nonnull %i.d) #19 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 5 uses
  %.not = icmp eq ptr %i.o, null                  ; 2 uses
  br i1 %.not, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !63
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.s = load i8, ptr %i.o, align 1, !tbaa !44
  %.not91 = icmp eq i8 %i.s, 47
  br i1 %.not91, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @getcwd(ptr noundef null, i64 noundef 0) #19 ; 2 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !62
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %i.t, ptr noundef %i.u)
  tail call void @free(ptr noundef %i.t) #19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 31
  %.val.i.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !44
  br label %agxbput.exit

bb.h:                                             ; preds = %bb.f
  %i.v = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #23 ; 7 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 31 ; 4 uses
  br i1 %i.w, label %agxblen.exit.i.i100, label %agxblen.exit.i.i

agxblen.exit.i.i:                                 ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.z = icmp ugt i64 %i.v, 31
  br i1 %i.z, label %bb.i, label %.thread194

bb.i:                                             ; preds = %agxblen.exit.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %6, i64 noundef %i.v)
  %.val.i25.pre.i.i = load i8, ptr %i.x, align 1, !tbaa !44 ; 2 uses
  %.not.i26.i.i = icmp eq i8 %.val.i25.pre.i.i, -1
  br i1 %.not.i26.i.i, label %agxbput.exit.thread201, label %.thread194

.thread194:                                       ; preds = %agxblen.exit.i.i, %bb.i
  %.val.i25.i.i197 = phi i8 [ %.val.i25.pre.i.i, %bb.i ], [ 0, %agxblen.exit.i.i ]
  %i.aa = zext i8 %.val.i25.i.i197 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.o, i64 %i.v, i1 false)
  %i.ac = trunc i64 %i.v to i8
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !44
  %i.ae = add i8 %i.ad, %i.ac                     ; 2 uses
  store i8 %i.ae, ptr %i.x, align 1, !tbaa !44
  br label %agxbput.exit

agxbput.exit.thread201:                           ; preds = %bb.i
  %i.af = load i64, ptr %i.y, align 8, !tbaa !44  ; 2 uses
  %i.ag = load ptr, ptr %6, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull readonly align 1 %i.o, i64 %i.v, i1 false)
  %i.ai = add i64 %i.af, %i.v
  store i64 %i.ai, ptr %i.y, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 31
  br label %bb.j

agxbput.exit:                                     ; preds = %.thread194, %bb.g
  %.val.i = phi i8 [ %.val.i.pre, %bb.g ], [ %i.ae, %.thread194 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 31 ; 3 uses
  switch i8 %.val.i, label %agxblen.exit.i.i100 [
    i8 -1, label %bb.j
    i8 31, label %agxbclear.exit.thread.i
  ]

agxblen.exit.i.i100:                              ; preds = %bb.h, %agxbput.exit
  %i.al = phi ptr [ %i.ak, %agxbput.exit ], [ %i.x, %bb.h ]
  %.val.i200 = phi i8 [ %.val.i, %agxbput.exit ], [ 0, %bb.h ] ; 2 uses
  %i.am = zext i8 %.val.i200 to i64
  br label %agxbsizeof.exit.i.i99

bb.j:                                             ; preds = %agxbput.exit.thread201, %agxbput.exit
  %i.an = phi ptr [ %i.aj, %agxbput.exit.thread201 ], [ %i.ak, %agxbput.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !44
  br label %agxbsizeof.exit.i.i99

agxbsizeof.exit.i.i99:                            ; preds = %bb.j, %agxblen.exit.i.i100
  %i.as = phi ptr [ %i.an, %bb.j ], [ %i.al, %agxblen.exit.i.i100 ] ; 6 uses
  %.val.i199 = phi i8 [ -1, %bb.j ], [ %.val.i200, %agxblen.exit.i.i100 ]
  %.0.i20.i.i = phi i64 [ %i.ap, %bb.j ], [ %i.am, %agxblen.exit.i.i100 ]
  %.0.i14.i.i = phi i64 [ %i.ar, %bb.j ], [ 31, %agxblen.exit.i.i100 ]
  %.not.i5.i = icmp ult i64 %.0.i20.i.i, %.0.i14.i.i
  br i1 %.not.i5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %agxbsizeof.exit.i.i99
  call fastcc void @agxbmore(ptr noundef nonnull %6, i64 noundef 1)
  %.val.i15.pre.i.i = load i8, ptr %i.as, align 1, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %agxbsizeof.exit.i.i99
  %.val.i15.i.i = phi i8 [ %.val.i15.pre.i.i, %bb.k ], [ %.val.i199, %agxbsizeof.exit.i.i99 ] ; 2 uses
  %.not.i16.i.i = icmp eq i8 %.val.i15.i.i, -1
  br i1 %.not.i16.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = zext i8 %.val.i15.i.i to i64
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 %i.at
  store i8 0, ptr %i.au, align 1, !tbaa !44
  %i.av = load i8, ptr %i.as, align 1, !tbaa !44
  %i.aw = add i8 %i.av, 1                         ; 2 uses
  store i8 %i.aw, ptr %i.as, align 1, !tbaa !44
  br label %agxbputc.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !44
  %i.az = load ptr, ptr %6, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !44
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !44
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !44
  %.val.i6.pr.i = load i8, ptr %i.as, align 1, !tbaa !44
  br label %agxbputc.exit.i

agxbputc.exit.i:                                  ; preds = %bb.n, %bb.m
  %.val.i8.pr.i = phi i8 [ %.val.i6.pr.i, %bb.n ], [ %i.aw, %bb.m ]
  %.not.i7.i = icmp eq i8 %.val.i8.pr.i, -1
  br i1 %.not.i7.i, label %bb.o, label %agxbclear.exit.thread.i

agxbclear.exit.thread.i:                          ; preds = %agxbputc.exit.i, %agxbput.exit
  %i.bd = phi ptr [ %i.as, %agxbputc.exit.i ], [ %i.ak, %agxbput.exit ] ; 2 uses
  store i8 0, ptr %i.bd, align 1, !tbaa !44
  br label %agxbuse.exit

bb.o:                                             ; preds = %agxbputc.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !44
  %i.bf = load ptr, ptr %6, align 8, !tbaa !44
  br label %agxbuse.exit

agxbuse.exit:                                     ; preds = %agxbclear.exit.thread.i, %bb.o
  %i.bg = phi ptr [ %i.as, %bb.o ], [ %i.bd, %agxbclear.exit.thread.i ]
  %i.bh = phi ptr [ %i.bf, %bb.o ], [ %6, %agxbclear.exit.thread.i ] ; 2 uses
  %i.bi = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.bh, i32 noundef 47) #23
  store i8 0, ptr %i.bi, align 1, !tbaa !44
  %i.bj = call i32 @inotify_add_watch(i32 noundef %i.i, ptr noundef nonnull %i.bh, i32 noundef 2) #19
  %.val98 = load i8, ptr %i.bg, align 1, !tbaa !44
  %i.bk = icmp eq i8 %.val98, -1
  br i1 %i.bk, label %bb.p, label %agxbfree.exit

bb.p:                                             ; preds = %agxbuse.exit
  %.val = load ptr, ptr %6, align 8
  call void @free(ptr noundef %.val) #19
  br label %agxbfree.exit

agxbfree.exit:                                    ; preds = %agxbuse.exit, %bb.p
  %i.bl = call noundef i32 @llvm.smax.i32(i32 %i.i, i32 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.lr.ph

bb.q:                                             ; preds = %bb.d
  %i.bm = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 0, i32 noundef 1030, i32 noundef 0) #19 ; 2 uses
  %i.bn = tail call noundef i32 @llvm.smax.i32(i32 %i.bm, i32 %i.m)
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %agxbfree.exit, %bb.e
  %.085 = phi i32 [ %i.bl, %agxbfree.exit ], [ %i.m, %bb.e ], [ %i.bn, %bb.q ]
  %.084 = phi i32 [ 0, %agxbfree.exit ], [ 0, %bb.e ], [ %i.bm, %bb.q ] ; 2 uses
  %.077 = phi i32 [ %i.bj, %agxbfree.exit ], [ 0, %bb.e ], [ 0, %bb.q ]
  %.076 = phi i1 [ true, %agxbfree.exit ], [ false, %bb.e ], [ false, %bb.q ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 232 ; 2 uses
  %i.bp = sext i32 %i.f to i64                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 31 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.r

.preheader131:                                    ; preds = %init_window.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false), !tbaa !64
  %i.bw = lshr i32 %i.i, 6
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bx ; 3 uses
  %i.bz = and i32 %i.i, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw i64 1, %i.ca                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ce = sdiv i32 %.084, 64
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cf ; 5 uses
  %7 = srem i32 %.084, 64
  %i.ch = zext nneg i32 %7 to i64
  %i.ci = shl nuw i64 1, %i.ch                    ; 3 uses
  %i.cj = xor i64 %i.ci, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %8 = srem i32 %i.m, 64
  %i.cu = zext nneg i32 %8 to i64
  %i.cv = shl nuw i64 1, %i.cu
  %9 = sdiv i32 %i.m, 64
  %i.cw = sext i32 %9 to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cw ; 2 uses
  %i.cy = add nsw i32 %.085, 1
  br label %bb.ad

bb.r:                                             ; preds = %.lr.ph, %init_window.exit
  %.075147 = phi ptr [ %0, %.lr.ph ], [ %i.hq, %init_window.exit ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 15 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.11, i64 26, i64 1, ptr %i.db) #22 ; 0 uses
  br label %init_window.exit

bb.t:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %.075147, i64 576 ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.075147, i64 580 ; 6 uses
  %i.de = load <2 x i32>, ptr %i.dc, align 8, !tbaa !40
  %i.df = uitofp nsz <2 x i32> %i.de to <2 x double>
  %i.dg = fdiv nsz <2 x double> <double 4.800000e+02, double 3.250000e+02>, %i.df ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 0
  %i.di = extractelement <2 x double> %i.dg, i64 1
  %i.dj = call nsz double @llvm.minnum.f64(double %i.dh, double %i.di) ; 2 uses
  %i.dk = fcmp olt double %i.dj, 1.000000e+00
  br i1 %i.dk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %.075147, i64 480 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !65
  %i.dn = fmul double %i.dj, %i.dm
  store double %i.dn, ptr %i.dl, align 8, !tbaa !65
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 480, ptr %i.dc, align 8, !tbaa !66
  store i32 325, ptr %i.dd, align 4, !tbaa !67
  %i.do = getelementptr inbounds nuw i8, ptr %.075147, i64 736 ; 2 uses
  store ptr %i.cz, ptr %i.do, align 8, !tbaa !68
  %i.dp = getelementptr inbounds nuw i8, ptr %.075147, i64 664
  store i8 0, ptr %i.dp, align 8, !tbaa !69
  %i.dq = getelementptr inbounds nuw i8, ptr %.075147, i64 665 ; 4 uses
  store i8 1, ptr %i.dq, align 1, !tbaa !70
  %i.dr = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.ds = getelementptr inbounds [128 x i8], ptr %i.dr, i64 %i.bp ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !74
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !76
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !77 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !78
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 88
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !79
  store i64 %i.ea, ptr %i.bq, align 8, !tbaa !81
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !82
  store i64 %i.ec, ptr %i.br, align 8, !tbaa !83
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !84 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 2 uses
  store i32 %i.ee, ptr %i.ef, align 8, !tbaa !85
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !86
  %i.ei = call i64 @XCreateWindow(ptr noundef nonnull %i.d, i64 noundef %i.eh, i32 noundef 0, i32 noundef 0, i32 noundef 480, i32 noundef 325, i32 noundef 0, i32 noundef %i.ee, i32 noundef 1, ptr noundef %i.dx, i64 noundef 10, ptr noundef nonnull %3) #19
  store i64 %i.ei, ptr %i.cz, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10)
  %i.ej = call ptr @XAllocSizeHints() #19         ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load <2 x i32>, ptr %i.dc, align 8, !tbaa !40
  store <2 x i32> %i.el, ptr %i.ek, align 8, !tbaa !40
  %i.em = call ptr @XAllocClassHint() #19         ; 3 uses
  store <2 x ptr> <ptr @.str.13, ptr @.str.14>, ptr %i.em, align 8, !tbaa !88
  %i.en = call ptr @XAllocWMHints() #19           ; 4 uses
  store i64 1, ptr %i.en, align 8, !tbaa !90
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i32 1, ptr %i.eo, align 8, !tbaa !91
  %i.ep = load i64, ptr %i.cz, align 8, !tbaa !87
  %.val.i.i = load i8, ptr %i.bs, align 1, !tbaa !44 ; 3 uses
  switch i8 %.val.i.i, label %agxblen.exit.i.i.i [
    i8 -1, label %bb.w
    i8 31, label %agxbclear.exit.thread.i.i
  ]

agxblen.exit.i.i.i:                               ; preds = %bb.v
  %i.eq = zext i8 %.val.i.i to i64
  br label %agxbsizeof.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.er = load i64, ptr %i.bt, align 8, !tbaa !44
  %i.es = load i64, ptr %i.bu, align 8, !tbaa !44
  br label %agxbsizeof.exit.i.i.i

agxbsizeof.exit.i.i.i:                            ; preds = %bb.w, %agxblen.exit.i.i.i
  %.0.i20.i.i.i = phi i64 [ %i.er, %bb.w ], [ %i.eq, %agxblen.exit.i.i.i ]
  %.0.i14.i.i.i = phi i64 [ %i.es, %bb.w ], [ 31, %agxblen.exit.i.i.i ]
  %.not.i5.i.i = icmp ult i64 %.0.i20.i.i.i, %.0.i14.i.i.i
  br i1 %.not.i5.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %agxbsizeof.exit.i.i.i
  call fastcc void @agxbmore(ptr noundef nonnull %4, i64 noundef 1)
  %.val.i15.pre.i.i.i = load i8, ptr %i.bs, align 1, !tbaa !44
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %agxbsizeof.exit.i.i.i
  %.val.i6.pr.i.i = phi i8 [ %.val.i15.pre.i.i.i, %bb.x ], [ %.val.i.i, %agxbsizeof.exit.i.i.i ] ; 2 uses
  %.not.i16.i.i.i = icmp eq i8 %.val.i6.pr.i.i, -1
  br i1 %.not.i16.i.i.i, label %agxbputc.exit.i.thread.i, label %agxbputc.exit.i.i

agxbputc.exit.i.thread.i:                         ; preds = %bb.y
  %i.et = load i64, ptr %i.bt, align 8, !tbaa !44
  %i.eu = load ptr, ptr %4, align 8, !tbaa !44
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et
  store i8 0, ptr %i.ev, align 1, !tbaa !44
  br label %bb.z

agxbputc.exit.i.i:                                ; preds = %bb.y
  %i.ew = zext i8 %.val.i6.pr.i.i to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 %i.ew
  store i8 0, ptr %i.ex, align 1, !tbaa !44
  %i.ey = load i8, ptr %i.bs, align 1, !tbaa !44
  %i.ez = add i8 %i.ey, 1                         ; 2 uses
  store i8 %i.ez, ptr %i.bs, align 1, !tbaa !44
  %i.fa = icmp eq i8 %i.ez, -1
  br i1 %i.fa, label %bb.z, label %agxbclear.exit.thread.i.i

agxbclear.exit.thread.i.i:                        ; preds = %agxbputc.exit.i.i, %bb.v
  store i8 0, ptr %i.bs, align 1, !tbaa !44
  br label %agxbuse.exit.i

bb.z:                                             ; preds = %agxbputc.exit.i.i, %agxbputc.exit.i.thread.i
  store i64 0, ptr %i.bt, align 8, !tbaa !44
  %i.fb = load ptr, ptr %4, align 8, !tbaa !44
  br label %agxbuse.exit.i

agxbuse.exit.i:                                   ; preds = %bb.z, %agxbclear.exit.thread.i.i
  %i.fc = phi ptr [ %i.fb, %bb.z ], [ %4, %agxbclear.exit.thread.i.i ]
  call void @Xutf8SetWMProperties(ptr noundef nonnull %i.d, i64 noundef %i.ep, ptr noundef %i.fc, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.en, ptr noundef nonnull %i.em) #19
  %i.fd = call i32 @XFree(ptr noundef nonnull %i.en) #19 ; 0 uses
  %i.fe = call i32 @XFree(ptr noundef nonnull %i.em) #19 ; 0 uses
  %i.ff = call i32 @XFree(ptr noundef nonnull %i.ej) #19 ; 0 uses
  %.val83.i = load i8, ptr %i.bs, align 1, !tbaa !44
  %i.fg = icmp eq i8 %.val83.i, -1
  br i1 %i.fg, label %bb.aa, label %agxbfree.exit.i

bb.aa:                                            ; preds = %agxbuse.exit.i
  %.val.i101 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.val.i101) #19
  br label %agxbfree.exit.i

agxbfree.exit.i:                                  ; preds = %bb.aa, %agxbuse.exit.i
  %i.fh = load i64, ptr %i.cz, align 8, !tbaa !87
  %i.fi = load i32, ptr %i.dc, align 8, !tbaa !66
  %i.fj = load i32, ptr %i.dd, align 4, !tbaa !67
  %i.fk = load i32, ptr %i.ef, align 8, !tbaa !85
  %i.fl = call i64 @XCreatePixmap(ptr noundef nonnull %i.d, i64 noundef %i.fh, i32 noundef %i.fi, i32 noundef %i.fj, i32 noundef %i.fk) #19 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !92
  %i.fn = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.fo = getelementptr inbounds [128 x i8], ptr %i.fn, i64 %i.bp
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 88
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !79
  store i64 %i.fq, ptr %i.bv, align 8, !tbaa !94
  %i.fr = call ptr @XCreateGC(ptr noundef nonnull %i.d, i64 noundef %i.fl, i64 noundef 4, ptr noundef nonnull %2) #19
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !95
  %i.ft = load ptr, ptr %i.do, align 8, !tbaa !68 ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.075147, i64 667 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !96, !range !97, !noundef !98
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %.thread.i111, label %bb.ab

.thread.i111:                                     ; preds = %agxbfree.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !92
  %i.fz = call i32 @XFreePixmap(ptr noundef nonnull %i.d, i64 noundef %i.fy) #19 ; 0 uses
  %i.ga = load i64, ptr %i.ft, align 8, !tbaa !87
  %i.gb = load i32, ptr %i.dc, align 8, !tbaa !66
  %i.gc = load i32, ptr %i.dd, align 4, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !85
  %i.gf = call i64 @XCreatePixmap(ptr noundef nonnull %i.d, i64 noundef %i.ga, i32 noundef %i.gb, i32 noundef %i.gc, i32 noundef %i.ge) #19 ; 2 uses
  store i64 %i.gf, ptr %i.fx, align 8, !tbaa !92
  store i8 0, ptr %i.fu, align 1, !tbaa !96
  store i8 1, ptr %i.dq, align 1, !tbaa !70
  br label %bb.ac

bb.ab:                                            ; preds = %agxbfree.exit.i
  %.pre.i110 = load i8, ptr %i.dq, align 1, !tbaa !70, !range !97
  %i.gg = trunc nuw i8 %.pre.i110 to i1
  br i1 %i.gg, label %._crit_edge169, label %update_display.exit112

._crit_edge169:                                   ; preds = %bb.ab
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
end_hunk_0
