Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gvdevice_xlib?download=true
inline.NumInlined: 50
inline.NumDeleted: 26
begin_hunk_0_@xlib_finalize:bb.a
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
  %i.ch = srem i32 %.084, 64
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci                    ; 3 uses
  %i.ck = xor i64 %i.cj, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cv = srem i32 %i.m, 64
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = sdiv i32 %i.m, 64
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cz ; 2 uses
  %i.db = add nsw i32 %.085, 1
  br label %bb.ad

bb.r:                                             ; preds = %.lr.ph, %init_window.exit
  %.075147 = phi ptr [ %0, %.lr.ph ], [ %i.ht, %init_window.exit ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.dc = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 15 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.11, i64 26, i64 1, ptr %i.de) #22 ; 0 uses
  br label %init_window.exit

bb.t:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %.075147, i64 576 ; 8 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.075147, i64 580 ; 6 uses
  %i.dh = load <2 x i32>, ptr %i.df, align 8, !tbaa !40
  %i.di = uitofp <2 x i32> %i.dh to <2 x double>
  %i.dj = fdiv nsz <2 x double> <double 4.800000e+02, double 3.250000e+02>, %i.di ; 2 uses
  %i.dk = extractelement <2 x double> %i.dj, i64 0
  %i.dl = extractelement <2 x double> %i.dj, i64 1
  %i.dm = call nsz double @llvm.minnum.f64(double %i.dk, double %i.dl) ; 2 uses
  %i.dn = fcmp olt double %i.dm, 1.000000e+00
  br i1 %i.dn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %.075147, i64 480 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !65
  %i.dq = fmul double %i.dm, %i.dp
  store double %i.dq, ptr %i.do, align 8, !tbaa !65
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 480, ptr %i.df, align 8, !tbaa !66
  store i32 325, ptr %i.dg, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %.075147, i64 736 ; 2 uses
  store ptr %i.dc, ptr %i.dr, align 8, !tbaa !68
  %i.ds = getelementptr inbounds nuw i8, ptr %.075147, i64 664
  store i8 0, ptr %i.ds, align 8, !tbaa !69
  %i.dt = getelementptr inbounds nuw i8, ptr %.075147, i64 665 ; 4 uses
  store i8 1, ptr %i.dt, align 1, !tbaa !70
  %i.du = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.dv = getelementptr inbounds [128 x i8], ptr %i.du, i64 %i.bp ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !74
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !76
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !77 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !78
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 88
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !79
  store i64 %i.ed, ptr %i.bq, align 8, !tbaa !81
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !82
  store i64 %i.ef, ptr %i.br, align 8, !tbaa !83
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !84 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 48 ; 2 uses
  store i32 %i.eh, ptr %i.ei, align 8, !tbaa !85
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !86
  %i.el = call i64 @XCreateWindow(ptr noundef nonnull %i.d, i64 noundef %i.ek, i32 noundef 0, i32 noundef 0, i32 noundef 480, i32 noundef 325, i32 noundef 0, i32 noundef %i.eh, i32 noundef 1, ptr noundef %i.ea, i64 noundef 10, ptr noundef nonnull %3) #19
  store i64 %i.el, ptr %i.dc, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10)
  %i.em = call ptr @XAllocSizeHints() #19         ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load <2 x i32>, ptr %i.df, align 8, !tbaa !40
  store <2 x i32> %i.eo, ptr %i.en, align 8, !tbaa !40
  %i.ep = call ptr @XAllocClassHint() #19         ; 3 uses
  store <2 x ptr> <ptr @.str.13, ptr @.str.14>, ptr %i.ep, align 8, !tbaa !88
  %i.eq = call ptr @XAllocWMHints() #19           ; 4 uses
  store i64 1, ptr %i.eq, align 8, !tbaa !90
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i32 1, ptr %i.er, align 8, !tbaa !91
  %i.es = load i64, ptr %i.dc, align 8, !tbaa !87
  %.val.i.i = load i8, ptr %i.bs, align 1, !tbaa !44 ; 3 uses
  switch i8 %.val.i.i, label %agxblen.exit.i.i.i [
    i8 -1, label %bb.w
    i8 31, label %agxbclear.exit.thread.i.i
  ]

agxblen.exit.i.i.i:                               ; preds = %bb.v
  %i.et = zext i8 %.val.i.i to i64
  br label %agxbsizeof.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.eu = load i64, ptr %i.bt, align 8, !tbaa !44
  %i.ev = load i64, ptr %i.bu, align 8, !tbaa !44
  br label %agxbsizeof.exit.i.i.i

agxbsizeof.exit.i.i.i:                            ; preds = %bb.w, %agxblen.exit.i.i.i
  %.0.i20.i.i.i = phi i64 [ %i.eu, %bb.w ], [ %i.et, %agxblen.exit.i.i.i ]
  %.0.i14.i.i.i = phi i64 [ %i.ev, %bb.w ], [ 31, %agxblen.exit.i.i.i ]
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
  %i.ew = load i64, ptr %i.bt, align 8, !tbaa !44
  %i.ex = load ptr, ptr %4, align 8, !tbaa !44
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store i8 0, ptr %i.ey, align 1, !tbaa !44
  br label %bb.z

agxbputc.exit.i.i:                                ; preds = %bb.y
  %i.ez = zext i8 %.val.i6.pr.i.i to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 %i.ez
  store i8 0, ptr %i.fa, align 1, !tbaa !44
  %i.fb = load i8, ptr %i.bs, align 1, !tbaa !44
  %i.fc = add i8 %i.fb, 1                         ; 2 uses
  store i8 %i.fc, ptr %i.bs, align 1, !tbaa !44
  %i.fd = icmp eq i8 %i.fc, -1
  br i1 %i.fd, label %bb.z, label %agxbclear.exit.thread.i.i

agxbclear.exit.thread.i.i:                        ; preds = %agxbputc.exit.i.i, %bb.v
  store i8 0, ptr %i.bs, align 1, !tbaa !44
  br label %agxbuse.exit.i

bb.z:                                             ; preds = %agxbputc.exit.i.i, %agxbputc.exit.i.thread.i
  store i64 0, ptr %i.bt, align 8, !tbaa !44
  %i.fe = load ptr, ptr %4, align 8, !tbaa !44
  br label %agxbuse.exit.i

agxbuse.exit.i:                                   ; preds = %bb.z, %agxbclear.exit.thread.i.i
  %i.ff = phi ptr [ %i.fe, %bb.z ], [ %4, %agxbclear.exit.thread.i.i ]
  call void @Xutf8SetWMProperties(ptr noundef nonnull %i.d, i64 noundef %i.es, ptr noundef %i.ff, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.em, ptr noundef nonnull %i.eq, ptr noundef nonnull %i.ep) #19
  %i.fg = call i32 @XFree(ptr noundef nonnull %i.eq) #19 ; 0 uses
  %i.fh = call i32 @XFree(ptr noundef nonnull %i.ep) #19 ; 0 uses
  %i.fi = call i32 @XFree(ptr noundef nonnull %i.em) #19 ; 0 uses
  %.val83.i = load i8, ptr %i.bs, align 1, !tbaa !44
  %i.fj = icmp eq i8 %.val83.i, -1
  br i1 %i.fj, label %bb.aa, label %agxbfree.exit.i

bb.aa:                                            ; preds = %agxbuse.exit.i
  %.val.i101 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.val.i101) #19
  br label %agxbfree.exit.i

agxbfree.exit.i:                                  ; preds = %bb.aa, %agxbuse.exit.i
  %i.fk = load i64, ptr %i.dc, align 8, !tbaa !87
  %i.fl = load i32, ptr %i.df, align 8, !tbaa !66
  %i.fm = load i32, ptr %i.dg, align 4, !tbaa !67
  %i.fn = load i32, ptr %i.ei, align 8, !tbaa !85
  %i.fo = call i64 @XCreatePixmap(ptr noundef nonnull %i.d, i64 noundef %i.fk, i32 noundef %i.fl, i32 noundef %i.fm, i32 noundef %i.fn) #19 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !92
  %i.fq = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.fr = getelementptr inbounds [128 x i8], ptr %i.fq, i64 %i.bp
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 88
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !79
  store i64 %i.ft, ptr %i.bv, align 8, !tbaa !94
  %i.fu = call ptr @XCreateGC(ptr noundef nonnull %i.d, i64 noundef %i.fo, i64 noundef 4, ptr noundef nonnull %2) #19
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !95
  %i.fw = load ptr, ptr %i.dr, align 8, !tbaa !68 ; 8 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.075147, i64 667 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !96, !range !97, !noundef !98
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %.thread.i111, label %bb.ab

.thread.i111:                                     ; preds = %agxbfree.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !92
  %i.gc = call i32 @XFreePixmap(ptr noundef nonnull %i.d, i64 noundef %i.gb) #19 ; 0 uses
  %i.gd = load i64, ptr %i.fw, align 8, !tbaa !87
  %i.ge = load i32, ptr %i.df, align 8, !tbaa !66
  %i.gf = load i32, ptr %i.dg, align 4, !tbaa !67
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !85
  %i.gi = call i64 @XCreatePixmap(ptr noundef nonnull %i.d, i64 noundef %i.gd, i32 noundef %i.ge, i32 noundef %i.gf, i32 noundef %i.gh) #19 ; 2 uses
  store i64 %i.gi, ptr %i.ga, align 8, !tbaa !92
  store i8 0, ptr %i.fx, align 1, !tbaa !96
  store i8 1, ptr %i.dt, align 1, !tbaa !70
  br label %bb.ac

bb.ab:                                            ; preds = %agxbfree.exit.i
  %.pre.i110 = load i8, ptr %i.dt, align 1, !tbaa !70, !range !97
  %i.gj = trunc nuw i8 %.pre.i110 to i1
  br i1 %i.gj, label %._crit_edge169, label %update_display.exit112

._crit_edge169:                                   ; preds = %bb.ab
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %.pre = load i64, ptr %.phi.trans.insert170, align 8, !tbaa !92
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge169, %.thread.i111
  %i.gk = phi i64 [ %.pre, %._crit_edge169 ], [ %i.gi, %.thread.i111 ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !95
  %i.go = load i32, ptr %i.df, align 8, !tbaa !66
  %i.gp = load i32, ptr %i.dg, align 4, !tbaa !67
  %i.gq = call i32 @XFillRectangle(ptr noundef nonnull %i.d, i64 noundef %i.gk, ptr noundef %i.gn, i32 noundef 0, i32 noundef 0, i32 noundef %i.go, i32 noundef %i.gp) #19 ; 0 uses
  %i.gr = load i64, ptr %i.gl, align 8, !tbaa !92
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !78
  %i.gu = load i32, ptr %i.df, align 8, !tbaa !66
  %i.gv = load i32, ptr %i.dg, align 4, !tbaa !67
  %i.gw = call ptr @cairo_xlib_surface_create(ptr noundef nonnull %i.d, i64 noundef %i.gr, ptr noundef %i.gt, i32 noundef %i.gu, i32 noundef %i.gv) #19 ; 2 uses
  %i.gx = call ptr @cairo_create(ptr noundef %i.gw) #19
  %i.gy = getelementptr inbounds nuw i8, ptr %.075147, i64 256
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !99
  %i.gz = getelementptr inbounds nuw i8, ptr %.075147, i64 264
  store i8 1, ptr %i.gz, align 8, !tbaa !100
end_hunk_0
begin_hunk_1_@xlib_finalize:bb.a
  %i.jo = call i32 @feof(ptr noundef %i.jn) #19
  %.not.i103 = icmp eq i32 %i.jo, 0
  br i1 %.not.i103, label %.thread123, label %bb.au

.thread123:                                       ; preds = %bb.at
  %i.jp = load ptr, ptr %i.cc, align 8, !tbaa !101
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !107
  %i.js = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.jt = load ptr, ptr %i.cd, align 8, !tbaa !108
  call void %i.jr(ptr noundef %0, ptr noundef %i.js, ptr noundef %i.jt) #19, !inline_history !55
  %i.ju = add nuw nsw i32 %.181, 1
  %.pre171 = load i64, ptr %i.cg, align 8, !tbaa !64
  br label %.thread

bb.au:                                            ; preds = %bb.at
  %i.jv = load i64, ptr %i.cg, align 8, !tbaa !64
  %i.jw = and i64 %i.jv, %i.ck
  store i64 %i.jw, ptr %i.cg, align 8, !tbaa !64
  %i.jx = add nsw i32 %.181, -1
  br label %bb.av

.thread:                                          ; preds = %bb.as, %.thread123
  %i.jy = phi i64 [ %.pre171, %.thread123 ], [ %i.jl, %bb.as ]
  %.282121 = phi i32 [ %i.ju, %.thread123 ], [ %.181, %bb.as ]
  %i.jz = or i64 %i.jy, %i.cj
  store i64 %i.jz, ptr %i.cg, align 8, !tbaa !64
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread, %bb.ar
  %.383 = phi i32 [ %.282121, %.thread ], [ %i.jx, %bb.au ], [ %.181, %bb.ar ]
  %.4 = phi i1 [ true, %.thread ], [ false, %bb.au ], [ false, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.ka = call i32 @XPending(ptr noundef nonnull %i.d) #19
  %.not54.i = icmp eq i32 %i.ka, 0
  br i1 %.not54.i, label %handle_xlib_events.exit.thread, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %bb.av, %..loopexit_crit_edge.i
  %.055.i = phi i32 [ %.1.i105, %..loopexit_crit_edge.i ], [ 0, %bb.av ] ; 10 uses
  %i.kb = call i32 @XNextEvent(ptr noundef nonnull %i.d, ptr noundef nonnull %1) #19 ; 0 uses
  %i.kc = load i64, ptr %i.cl, align 8, !tbaa !44 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bp, %.lr.ph.i104
  %.03553.i = phi ptr [ %0, %.lr.ph.i104 ], [ %i.oj, %bb.bp ] ; 19 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.03553.i, i64 736
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !68 ; 4 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !87
  %i.kg = icmp eq i64 %i.kc, %i.kf
  br i1 %i.kg, label %bb.ax, label %bb.bp

bb.ax:                                            ; preds = %bb.aw
  %i.kh = load i32, ptr %1, align 8, !tbaa !44
  switch i32 %i.kh, label %..loopexit_crit_edge.i [
    i32 4, label %bb.ay
    i32 6, label %bb.az
    i32 5, label %bb.bb
    i32 2, label %bb.bh
    i32 22, label %bb.bj
    i32 12, label %bb.bl
    i32 33, label %bb.bm
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ki = load <2 x i32>, ptr %i.ct, align 8, !tbaa !44
  %i.kj = sitofp <2 x i32> %i.ki to <2 x double>  ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.03553.i, i64 208
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !101
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !109
  %i.ko = load i32, ptr %i.cs, align 4, !tbaa !44
  %i.kp = extractelement <2 x double> %i.kj, i64 0
  %i.kq = extractelement <2 x double> %i.kj, i64 1
  call void %i.kn(ptr noundef nonnull %.03553.i, i32 noundef %i.ko, double %i.kp, double %i.kq) #19, !inline_history !56
  %i.kr = add nsw i32 %.055.i, 1
  br label %..loopexit_crit_edge.i

bb.az:                                            ; preds = %bb.ax
  %i.ks = getelementptr inbounds nuw i8, ptr %.03553.i, i64 669
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !110
  %.not40.i = icmp eq i8 %i.kt, 0
  br i1 %.not40.i, label %..loopexit_crit_edge.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ku = load <2 x i32>, ptr %i.ct, align 8, !tbaa !44
  %i.kv = sitofp <2 x i32> %i.ku to <2 x double>  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.03553.i, i64 208
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !101
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !111
  %i.la = extractelement <2 x double> %i.kv, i64 0
  %i.lb = extractelement <2 x double> %i.kv, i64 1
  call void %i.kz(ptr noundef nonnull %.03553.i, double %i.la, double %i.lb) #19, !inline_history !56
  %i.lc = add nsw i32 %.055.i, 1
  br label %..loopexit_crit_edge.i

bb.bb:                                            ; preds = %bb.ax
  %i.ld = load <2 x i32>, ptr %i.ct, align 8, !tbaa !44
  %i.le = sitofp <2 x i32> %i.ld to <2 x double>  ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.03553.i, i64 208
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !101
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !112
  %i.lj = load i32, ptr %i.cs, align 4, !tbaa !44
  %i.lk = extractelement <2 x double> %i.le, i64 0
  %i.ll = extractelement <2 x double> %i.le, i64 1
  call void %i.li(ptr noundef nonnull %.03553.i, i32 noundef %i.lj, double %i.lk, double %i.ll) #19, !inline_history !56
  %i.lm = getelementptr inbounds nuw i8, ptr %.03553.i, i64 728
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !113 ; 3 uses
  %.not39.i = icmp eq ptr %i.ln, null
  br i1 %.not39.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !44
  %i.lp = icmp ne i8 %i.lo, 0
  %i.lq = load i32, ptr %i.cs, align 4
  %i.lr = icmp eq i32 %i.lq, 1
  %or.cond.i = select i1 %i.lp, i1 %i.lr, i1 false
  br i1 %or.cond.i, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.browser_show.exec_argv, i64 24, i1 false)
  store ptr %i.ln, ptr %i.cu, align 8, !tbaa !88
  %i.ls = call i32 @fork() #19
  switch i32 %i.ls, label %browser_show.exit.i [
    i32 -1, label %bb.be
    i32 0, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %i.lt = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.lu = tail call ptr @__errno_location() #24
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !40
  %i.lw = call ptr @strerror(i32 noundef %i.lv) #19
  %i.lx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lt, ptr noundef nonnull @.str.21, ptr noundef %i.lw) #20 ; 0 uses
  br label %browser_show.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.ly = call i32 @execvp(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a) #19 ; 0 uses
  %i.lz = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ma = load ptr, ptr %i.a, align 16, !tbaa !88
  %i.mb = tail call ptr @__errno_location() #24
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !40
  %i.md = call ptr @strerror(i32 noundef %i.mc) #19
  %i.me = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lz, ptr noundef nonnull @.str.22, ptr noundef %i.ma, ptr noundef %i.md) #20 ; 0 uses
  br label %browser_show.exit.i

browser_show.exit.i:                              ; preds = %bb.bf, %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bg

bb.bg:                                            ; preds = %browser_show.exit.i, %bb.bc, %bb.bb
  %i.mf = add nsw i32 %.055.i, 1
  br label %..loopexit_crit_edge.i

bb.bh:                                            ; preds = %bb.ax
  %.val.i108 = load i32, ptr %i.cs, align 4
  %i.mg = getelementptr inbounds nuw i8, ptr %.03553.i, i64 760
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !38
  %i.mi = getelementptr inbounds nuw i8, ptr %.03553.i, i64 752
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !37 ; 2 uses
  %.not2.not.i.i = icmp eq i64 %i.mj, 0
  br i1 %.not2.not.i.i, label %handle_keypress.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bh, %bb.bi
  %.0113.i.i = phi i64 [ %i.mo, %bb.bi ], [ 0, %bb.bh ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 %.0113.i.i
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !44
  %i.mm = zext i8 %i.ml to i32
  %i.mn = icmp eq i32 %.val.i108, %i.mm
  br i1 %i.mn, label %handle_keypress.exit.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i
  %i.mo = add nuw i64 %.0113.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.mo, %i.mj
  br i1 %exitcond.not.i.i, label %handle_keypress.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !57

handle_keypress.exit.i:                           ; preds = %.lr.ph.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %.03553.i, i64 744
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !42
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.mq, i64 %.0113.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !114
  %i.mu = call i32 %i.mt(ptr noundef nonnull %.03553.i) #19, !inline_history !58
  %.not48.i = icmp eq i32 %i.mu, 0
  br i1 %.not48.i, label %handle_keypress.exit.thread.i, label %handle_xlib_events.exit.thread128

handle_xlib_events.exit.thread128:                ; preds = %handle_keypress.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %.loopexit

handle_keypress.exit.thread.i:                    ; preds = %bb.bi, %handle_keypress.exit.i, %bb.bh
  %i.mv = add nsw i32 %.055.i, 1
  br label %..loopexit_crit_edge.i

bb.bj:                                            ; preds = %bb.ax
  %i.mw = getelementptr inbounds nuw i8, ptr %.03553.i, i64 576 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.03553.i, i64 580
  %i.my = load <2 x i32>, ptr %i.cn, align 8, !tbaa !40 ; 3 uses
  %i.mz = sitofp <2 x i32> %i.my to <2 x double>
  %i.na = load <2 x i32>, ptr %i.mw, align 8, !tbaa !40 ; 3 uses
  %i.nb = uitofp <2 x i32> %i.na to <2 x double>  ; 2 uses
  %i.nc = fsub nsz <2 x double> %i.mz, %i.nb
  %i.nd = fdiv nsz <2 x double> %i.nc, %i.nb      ; 2 uses
  %i.ne = extractelement <2 x double> %i.nd, i64 0
  %i.nf = extractelement <2 x double> %i.nd, i64 1
  %i.ng = call nsz double @llvm.minnum.f64(double %i.ne, double %i.nf)
  %i.nh = fadd double %i.ng, 1.000000e+00
  %i.ni = getelementptr inbounds nuw i8, ptr %.03553.i, i64 480 ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !65
  %i.nk = fmul double %i.nj, %i.nh
  store double %i.nk, ptr %i.ni, align 8, !tbaa !65
  %i.nl = extractelement <2 x i32> %i.my, i64 0   ; 2 uses
  %i.nm = extractelement <2 x i32> %i.na, i64 0
  %i.nn = icmp ugt i32 %i.nl, %i.nm
  %i.no = extractelement <2 x i32> %i.my, i64 1   ; 2 uses
  %i.np = extractelement <2 x i32> %i.na, i64 1
  %i.nq = icmp ugt i32 %i.no, %i.np
  %or.cond.i.i = select i1 %i.nn, i1 true, i1 %i.nq
  br i1 %or.cond.i.i, label %bb.bk, label %handle_configure_notify.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.nr = getelementptr inbounds nuw i8, ptr %.03553.i, i64 667
  store i8 1, ptr %i.nr, align 1, !tbaa !96
  br label %handle_configure_notify.exit.i

handle_configure_notify.exit.i:                   ; preds = %bb.bk, %bb.bj
  store i32 %i.nl, ptr %i.mw, align 8, !tbaa !66
  store i32 %i.no, ptr %i.mx, align 4, !tbaa !67
  %i.ns = getelementptr inbounds nuw i8, ptr %.03553.i, i64 665
  store i8 1, ptr %i.ns, align 1, !tbaa !70
  %i.nt = add nsw i32 %.055.i, 1
  br label %..loopexit_crit_edge.i

bb.bl:                                            ; preds = %bb.ax
  %i.nu = getelementptr i8, ptr %i.ke, i64 16
  %.035.val43.val.i = load i64, ptr %i.nu, align 8, !tbaa !92
  %i.nv = getelementptr i8, ptr %i.ke, i64 24
  %.035.val43.val44.i = load ptr, ptr %i.nv, align 8, !tbaa !95
  %i.nw = load ptr, ptr %i.co, align 8, !tbaa !116
  %i.nx = load i32, ptr %i.cp, align 8, !tbaa !117 ; 2 uses
  %i.ny = load i32, ptr %i.cq, align 4, !tbaa !118 ; 2 uses
  %i.nz = load i32, ptr %i.cm, align 8, !tbaa !119
  %i.oa = load i32, ptr %i.cr, align 4, !tbaa !120
  %i.ob = call i32 @XCopyArea(ptr noundef %i.nw, i64 noundef %.035.val43.val.i, i64 noundef %i.kc, ptr noundef %.035.val43.val44.i, i32 noundef %i.nx, i32 noundef %i.ny, i32 noundef %i.nz, i32 noundef %i.oa, i32 noundef %i.nx, i32 noundef %i.ny) #19 ; 0 uses
  %i.oc = add nsw i32 %.055.i, 1
  br label %..loopexit_crit_edge.i

bb.bm:                                            ; preds = %bb.ax
  %.val45.i = load i32, ptr %i.cm, align 8, !tbaa !122
  %i.od = icmp eq i32 %.val45.i, 32
  br i1 %i.od, label %bb.bn, label %handle_client_message.exit.i

bb.bn:                                            ; preds = %bb.bm
  %.val46.i = load i64, ptr %i.cn, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !105
  %i.og = icmp eq i64 %.val46.i, %i.of
  br i1 %i.og, label %bb.bo, label %handle_client_message.exit.i

bb.bo:                                            ; preds = %bb.bn
  call fastcc void @graphviz_exit(i32 noundef 0) #25
  unreachable

handle_client_message.exit.i:                     ; preds = %bb.bn, %bb.bm
  %i.oh = add nsw i32 %.055.i, 1
  br label %..loopexit_crit_edge.i

bb.bp:                                            ; preds = %bb.aw
  %i.oi = getelementptr inbounds nuw i8, ptr %.03553.i, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !106 ; 2 uses
  %.not38.i = icmp eq ptr %i.oj, null
  br i1 %.not38.i, label %..loopexit_crit_edge.i, label %bb.aw, !llvm.loop !59

..loopexit_crit_edge.i:                           ; preds = %bb.bp, %handle_client_message.exit.i, %bb.bl, %handle_configure_notify.exit.i, %handle_keypress.exit.thread.i, %bb.bg, %bb.ba, %bb.az, %bb.ay, %bb.ax
  %.1.i105 = phi i32 [ %.055.i, %bb.ax ], [ %i.kr, %bb.ay ], [ %i.lc, %bb.ba ], [ %.055.i, %bb.az ], [ %i.mf, %bb.bg ], [ %i.mv, %handle_keypress.exit.thread.i ], [ %i.nt, %handle_configure_notify.exit.i ], [ %i.oc, %bb.bl ], [ %i.oh, %handle_client_message.exit.i ], [ %.055.i, %bb.bp ] ; 3 uses
  %i.ok = call i32 @XPending(ptr noundef nonnull %i.d) #19
  %.not.i106 = icmp eq i32 %i.ok, 0
  br i1 %.not.i106, label %handle_xlib_events.exit, label %.lr.ph.i104, !llvm.loop !60

handle_xlib_events.exit.thread:                   ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.bq

handle_xlib_events.exit:                          ; preds = %..loopexit_crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.ol = icmp slt i32 %.1.i105, 0
  br i1 %i.ol, label %.loopexit, label %bb.bq

bb.bq:                                            ; preds = %handle_xlib_events.exit.thread, %handle_xlib_events.exit
  %.036.i127 = phi i32 [ 0, %handle_xlib_events.exit.thread ], [ %.1.i105, %handle_xlib_events.exit ]
  %i.om = load i64, ptr %i.da, align 8, !tbaa !64
  %i.on = or i64 %i.om, %i.cx
  store i64 %i.on, ptr %i.da, align 8, !tbaa !64
  %i.oo = sub nsw i32 0, %.036.i127
  %.not95 = icmp eq i32 %.383, %i.oo
  br i1 %.not95, label %bb.bt, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.bq, %update_display.exit
  %.1151 = phi ptr [ %i.qk, %update_display.exit ], [ %0, %bb.bq ] ; 14 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.1151, i64 736
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !68 ; 8 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.1151, i64 667 ; 2 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !96, !range !97, !noundef !98
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %.thread.i, label %bb.br

.thread.i:                                        ; preds = %.lr.ph152
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 16 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !92
  %i.ow = call i32 @XFreePixmap(ptr noundef nonnull %i.d, i64 noundef %i.ov) #19 ; 0 uses
  %i.ox = load i64, ptr %i.oq, align 8, !tbaa !87
  %i.oy = getelementptr inbounds nuw i8, ptr %.1151, i64 576
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !66
  %i.pa = getelementptr inbounds nuw i8, ptr %.1151, i64 580
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !67
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !85
  %i.pe = call i64 @XCreatePixmap(ptr noundef nonnull %i.d, i64 noundef %i.ox, i32 noundef %i.oz, i32 noundef %i.pb, i32 noundef %i.pd) #19 ; 2 uses
  store i64 %i.pe, ptr %i.ou, align 8, !tbaa !92
  store i8 0, ptr %i.or, align 1, !tbaa !96
  %i.pf = getelementptr inbounds nuw i8, ptr %.1151, i64 665
  store i8 1, ptr %i.pf, align 1, !tbaa !70
  br label %bb.bs

bb.br:                                            ; preds = %.lr.ph152
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.1151, i64 665
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !70, !range !97
  %i.pg = trunc nuw i8 %.pre.i to i1
  br i1 %i.pg, label %._crit_edge172, label %update_display.exit

._crit_edge172:                                   ; preds = %bb.br
  %.phi.trans.insert173 = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %.pre174 = load i64, ptr %.phi.trans.insert173, align 8, !tbaa !92
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge172, %.thread.i
  %i.ph = phi i64 [ %.pre174, %._crit_edge172 ], [ %i.pe, %.thread.i ]
  %i.pi = getelementptr inbounds nuw i8, ptr %.1151, i64 665
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oq, i64 16 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oq, i64 24 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !95
  %i.pm = getelementptr inbounds nuw i8, ptr %.1151, i64 576 ; 3 uses
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !66
  %i.po = getelementptr inbounds nuw i8, ptr %.1151, i64 580 ; 3 uses
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !67
  %i.pq = call i32 @XFillRectangle(ptr noundef nonnull %i.d, i64 noundef %i.ph, ptr noundef %i.pl, i32 noundef 0, i32 noundef 0, i32 noundef %i.pn, i32 noundef %i.pp) #19 ; 0 uses
  %i.pr = load i64, ptr %i.pj, align 8, !tbaa !92
  %i.ps = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !78
  %i.pu = load i32, ptr %i.pm, align 8, !tbaa !66
  %i.pv = load i32, ptr %i.po, align 4, !tbaa !67
  %i.pw = call ptr @cairo_xlib_surface_create(ptr noundef nonnull %i.d, i64 noundef %i.pr, ptr noundef %i.pt, i32 noundef %i.pu, i32 noundef %i.pv) #19 ; 2 uses
  %i.px = call ptr @cairo_create(ptr noundef %i.pw) #19
  %i.py = getelementptr inbounds nuw i8, ptr %.1151, i64 256
  store ptr %i.px, ptr %i.py, align 8, !tbaa !99
  %i.pz = getelementptr inbounds nuw i8, ptr %.1151, i64 264
  store i8 1, ptr %i.pz, align 8, !tbaa !100
  %i.qa = getelementptr inbounds nuw i8, ptr %.1151, i64 208
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !101
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !103
  call void %i.qc(ptr noundef nonnull %.1151) #19, !inline_history !51
  call void @cairo_surface_destroy(ptr noundef %i.pw) #19
  %i.qd = load i64, ptr %i.pj, align 8, !tbaa !92
  %i.qe = load i64, ptr %i.oq, align 8, !tbaa !87
  %i.qf = load ptr, ptr %i.pk, align 8, !tbaa !95
  %i.qg = load i32, ptr %i.pm, align 8, !tbaa !66
  %i.qh = load i32, ptr %i.po, align 4, !tbaa !67
  %i.qi = call i32 @XCopyArea(ptr noundef nonnull %i.d, i64 noundef %i.qd, i64 noundef %i.qe, ptr noundef %i.qf, i32 noundef 0, i32 noundef 0, i32 noundef %i.qg, i32 noundef %i.qh, i32 noundef 0, i32 noundef 0) #19 ; 0 uses
  store i8 0, ptr %i.pi, align 1, !tbaa !70
  br label %update_display.exit

update_display.exit:                              ; preds = %bb.br, %bb.bs
  %i.qj = getelementptr inbounds nuw i8, ptr %.1151, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !106 ; 2 uses
  %.not96 = icmp eq ptr %i.qk, null
  br i1 %.not96, label %._crit_edge, label %.lr.ph152, !llvm.loop !61

._crit_edge:                                      ; preds = %update_display.exit
  %i.ql = call i32 @XFlush(ptr noundef nonnull %i.d) #19 ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge, %bb.bq
  %i.qm = call i32 @select(i32 noundef %i.db, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null) #19
  %i.qn = icmp slt i32 %i.qm, 0
  br i1 %i.qn, label %bb.bu, label %bb.ad

bb.bu:                                            ; preds = %bb.bt
  %i.qo = load ptr, ptr @stderr, align 8, !tbaa !10
  %fwrite = call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %i.qo) #22 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %handle_xlib_events.exit, %handle_file_events.exit, %handle_xlib_events.exit.thread128, %handle_file_events.exit.thread, %bb.bu
  br i1 %.076, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.loopexit
  %i.qp = call i32 @inotify_rm_watch(i32 noundef %i.i, i32 noundef %.077) #19 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.loopexit
  %i.qq = call i32 @XCloseDisplay(ptr noundef nonnull %i.d) #19 ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !41
end_hunk_1
