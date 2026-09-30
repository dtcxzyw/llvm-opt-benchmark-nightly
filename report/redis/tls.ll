Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/tls?download=true
inline.NumInlined: 33
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tlsHandleEvent:bb.a
bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = load i32, ptr %i.e, align 8, !tbaa !64
  %i.o = tail call i32 @SSL_set_fd(ptr noundef %i.m, i32 noundef %i.n) #16 ; 0 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !77
  %i.q = or i32 %i.p, 4
  store i32 %i.q, ptr %i.i, align 8, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = tail call i32 @SSL_connect(ptr noundef %i.s) #16 ; 2 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %i.v = call fastcc i32 @handleSSLReturnCode(ptr noundef nonnull %0, i32 noundef %i.t, ptr noundef %i.a)
  %.not82.not = icmp eq i32 %i.v, 0
  br i1 %.not82.not, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.w = load i32, ptr %i.a, align 4, !tbaa !15
  tail call fastcc void @registerSSLEvent(ptr noundef nonnull %0, i32 noundef %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  store i32 5, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  store i32 3, ptr %i.c, align 8, !tbaa !67
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !74  ; 2 uses
  %i.ab = add i16 %i.aa, 1
  store i16 %i.ab, ptr %i.z, align 2, !tbaa !74
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void %i.y(ptr noundef nonnull %0) #16, !inline_history !1
  %.pre.i = load i16, ptr %i.z, align 2, !tbaa !74
  %i.ac = add i16 %.pre.i, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = phi i16 [ %i.ac, %bb.k ], [ %i.aa, %bb.j ] ; 2 uses
  store i16 %i.ad, ptr %i.z, align 2, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !75
  %i.ag = and i16 %i.af, 1
  %.not9.i = icmp eq i16 %i.ag, 0
  br i1 %.not9.i, label %callHandler.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not10.i = icmp eq i16 %i.ad, 0
  br i1 %.not10.i, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr %0, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !72
  tail call void %i.aj(ptr noundef nonnull %0) #16, !inline_history !2
  br label %.critedge

callHandler.exit:                                 ; preds = %bb.l
  store ptr null, ptr %i.x, align 8, !tbaa !73
  br label %tlsPendingAdd.exit

bb.o:                                             ; preds = %bb.a
  tail call void @ERR_clear_error() #16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = tail call i32 @SSL_accept(ptr noundef %i.al) #16 ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !15
  %i.ao = call fastcc i32 @handleSSLReturnCode(ptr noundef nonnull %0, i32 noundef %i.am, ptr noundef %i.b)
  %.not78.not = icmp eq i32 %i.ao, 0
  br i1 %.not78.not, label %.thread113, label %bb.q

.thread113:                                       ; preds = %bb.p
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !15
  tail call fastcc void @registerSSLEvent(ptr noundef nonnull %0, i32 noundef %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.critedge

bb.q:                                             ; preds = %bb.p
  store i32 5, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  store i32 3, ptr %i.c, align 8, !tbaa !67
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !74 ; 2 uses
  %i.au = add i16 %i.at, 1
  store i16 %i.au, ptr %i.as, align 2, !tbaa !74
  %.not.i85 = icmp eq ptr %i.ar, null
  br i1 %.not.i85, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void %i.ar(ptr noundef nonnull %0) #16, !inline_history !1
  %.pre.i86 = load i16, ptr %i.as, align 2, !tbaa !74
  %i.av = add i16 %.pre.i86, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.aw = phi i16 [ %i.av, %bb.t ], [ %i.at, %bb.s ] ; 2 uses
  store i16 %i.aw, ptr %i.as, align 2, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !75
  %i.az = and i16 %i.ay, 1
  %.not9.i87 = icmp eq i16 %i.az, 0
  br i1 %.not9.i87, label %callHandler.exit90, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not10.i88 = icmp eq i16 %i.aw, 0
  br i1 %.not10.i88, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ba = load ptr, ptr %0, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !72
  tail call void %i.bc(ptr noundef nonnull %0) #16, !inline_history !2
  br label %.critedge

callHandler.exit90:                               ; preds = %bb.u
  store ptr null, ptr %i.aq, align 8, !tbaa !73
  br label %tlsPendingAdd.exit

bb.x:                                             ; preds = %bb.a
  %i.bd = and i32 %1, 1
  %.not = icmp eq i32 %i.bd, 0                    ; 3 uses
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !78
  %.not70 = icmp eq ptr %i.bf, null
  %i.bg = and i32 %1, 2
  %.not71138 = icmp eq i32 %i.bg, 0               ; 2 uses
  br i1 %.not70, label %.thread137, label %.thread116

bb.z:                                             ; preds = %bb.x
  %i.bh = and i32 %1, 2
  %.not71 = icmp eq i32 %i.bh, 0
  br i1 %.not71, label %callHandler.exit108, label %bb.aa

.thread137:                                       ; preds = %bb.y
  br i1 %.not71138, label %.thread118, label %bb.aa

bb.aa:                                            ; preds = %.thread137, %bb.z
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !77
  %i.bk = trunc i32 %i.bj to i1
  br label %bb.ab

.thread116:                                       ; preds = %bb.y
  br i1 %.not71138, label %.thread118, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread116
  %i.bl = phi i1 [ true, %.thread116 ], [ %i.bk, %bb.aa ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !79
  %.not73 = icmp ne ptr %i.bn, null               ; 2 uses
  %brmerge = or i1 %.not, %.not73
  br i1 %brmerge, label %bb.ac, label %.thread118

.thread118:                                       ; preds = %.thread137, %.thread116, %bb.ab
  %i.bo = phi i1 [ %i.bl, %bb.ab ], [ true, %.thread116 ], [ false, %.thread137 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !77
  %i.br = and i32 %i.bq, 2
  %i.bs = icmp ne i32 %i.br, 0
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread118
  %i.bt = phi i1 [ %i.bl, %bb.ab ], [ %i.bo, %.thread118 ] ; 2 uses
  %i.bu = phi i1 [ %.not73, %bb.ab ], [ %i.bs, %.thread118 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !119 ; 3 uses
  %i.bx = and i16 %i.bw, 2                        ; 2 uses
  %i.by = icmp eq i16 %i.bx, 0
  %or.cond = select i1 %i.by, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.ad, label %callHandler.exit96

bb.ad:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !77
  %i.cb = and i32 %i.ca, -2
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !77
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !78 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !74 ; 2 uses
  %i.cg = add i16 %i.cf, 1
  store i16 %i.cg, ptr %i.ce, align 2, !tbaa !74
  %.not.i91 = icmp eq ptr %i.cd, null
  br i1 %.not.i91, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void %i.cd(ptr noundef nonnull %0) #16, !inline_history !1
  %.pre.i92 = load i16, ptr %i.ce, align 2, !tbaa !74
  %i.ch = add i16 %.pre.i92, -1
  %.pre = load i16, ptr %i.bv, align 4, !tbaa !75
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ci = phi i16 [ %.pre, %bb.ae ], [ %i.bw, %bb.ad ] ; 2 uses
  %i.cj = phi i16 [ %i.ch, %bb.ae ], [ %i.cf, %bb.ad ] ; 2 uses
  store i16 %i.cj, ptr %i.ce, align 2, !tbaa !74
  %i.ck = and i16 %i.ci, 1
  %.not9.i93 = icmp eq i16 %i.ck, 0
  br i1 %.not9.i93, label %callHandler.exit96, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not10.i94 = icmp eq i16 %i.cj, 0
  br i1 %.not10.i94, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.cl = load ptr, ptr %0, align 8, !tbaa !76
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !72
  tail call void %i.cn(ptr noundef nonnull %0) #16, !inline_history !2
  br label %.critedge

callHandler.exit96:                               ; preds = %bb.af, %bb.ac
  %2 = phi i16 [ 0, %bb.af ], [ %i.bx, %bb.ac ]
  %i.co = phi i16 [ %i.ci, %bb.af ], [ %i.bw, %bb.ac ] ; 2 uses
  br i1 %i.bu, label %bb.ai, label %callHandler.exit102

bb.ai:                                            ; preds = %callHandler.exit96
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !77
  %i.cr = and i32 %i.cq, -3
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !77
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !79 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !74 ; 2 uses
  %i.cw = add i16 %i.cv, 1
  store i16 %i.cw, ptr %i.cu, align 2, !tbaa !74
  %.not.i97 = icmp eq ptr %i.ct, null
  br i1 %.not.i97, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void %i.ct(ptr noundef nonnull %0) #16, !inline_history !1
  %.pre.i98 = load i16, ptr %i.cu, align 2, !tbaa !74
  %i.cx = add i16 %.pre.i98, -1
  %.pre125 = load i16, ptr %i.bv, align 4, !tbaa !75
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cy = phi i16 [ %.pre125, %bb.aj ], [ %i.co, %bb.ai ] ; 2 uses
  %i.cz = phi i16 [ %i.cx, %bb.aj ], [ %i.cv, %bb.ai ] ; 2 uses
  store i16 %i.cz, ptr %i.cu, align 2, !tbaa !74
  %i.da = and i16 %i.cy, 1
  %.not9.i99 = icmp eq i16 %i.da, 0
  br i1 %.not9.i99, label %callHandler.exit102, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not10.i100 = icmp eq i16 %i.cz, 0
  br i1 %.not10.i100, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.db = load ptr, ptr %0, align 8, !tbaa !76
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !72
  tail call void %i.dd(ptr noundef nonnull %0) #16, !inline_history !2
  br label %.critedge

callHandler.exit102:                              ; preds = %bb.ak, %callHandler.exit96
  %i.de = phi i16 [ %i.cy, %bb.ak ], [ %i.co, %callHandler.exit96 ]
  %.not126 = icmp ne i16 %2, 0
  %or.cond5 = select i1 %.not126, i1 %i.bt, i1 false
  br i1 %or.cond5, label %bb.an, label %callHandler.exit108

bb.an:                                            ; preds = %callHandler.exit102
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !77
  %i.dh = and i32 %i.dg, -2
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !77
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !78 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !74 ; 2 uses
  %i.dm = add i16 %i.dl, 1
  store i16 %i.dm, ptr %i.dk, align 2, !tbaa !74
  %.not.i103 = icmp eq ptr %i.dj, null
  br i1 %.not.i103, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void %i.dj(ptr noundef nonnull %0) #16, !inline_history !1
  %.pre.i104 = load i16, ptr %i.dk, align 2, !tbaa !74
  %i.dn = add i16 %.pre.i104, -1
  %.pre127 = load i16, ptr %i.bv, align 4, !tbaa !75
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.do = phi i16 [ %.pre127, %bb.ao ], [ %i.de, %bb.an ]
  %i.dp = phi i16 [ %i.dn, %bb.ao ], [ %i.dl, %bb.an ] ; 2 uses
  store i16 %i.dp, ptr %i.dk, align 2, !tbaa !74
  %i.dq = and i16 %i.do, 1
  %.not9.i105 = icmp eq i16 %i.dq, 0
  br i1 %.not9.i105, label %callHandler.exit108, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not10.i106 = icmp eq i16 %i.dp, 0
  br i1 %.not10.i106, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %i.dr = load ptr, ptr %0, align 8, !tbaa !76
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !72
  tail call void %i.dt(ptr noundef nonnull %0) #16, !inline_history !2
  br label %.critedge

callHandler.exit108:                              ; preds = %bb.z, %bb.ap, %callHandler.exit102
  br i1 %.not, label %tlsPendingAdd.exit, label %bb.as

bb.as:                                            ; preds = %callHandler.exit108
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !25
  %i.dw = tail call i32 @SSL_pending(ptr noundef %i.dv) #16
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !65
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !71
  %.not.i109 = icmp eq ptr %i.eb, null
  br i1 %.not.i109, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ec = tail call ptr @listCreate() #16
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !65
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !71
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !70
  %.not8.i = icmp eq ptr %i.eg, null
  br i1 %.not8.i, label %bb.aw, label %tlsPendingAdd.exit

bb.aw:                                            ; preds = %bb.av
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !65
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !71 ; 2 uses
  %i.ek = tail call ptr @listAddNodeTail(ptr noundef %i.ej, ptr noundef nonnull %0) #16 ; 0 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !81
  store ptr %i.em, ptr %i.ef, align 8, !tbaa !70
  br label %tlsPendingAdd.exit

bb.ax:                                            ; preds = %bb.as
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !70 ; 2 uses
  %.not77 = icmp eq ptr %i.eo, null
  br i1 %.not77, label %tlsPendingAdd.exit, label %tlsPendingRemove.exit

tlsPendingRemove.exit:                            ; preds = %bb.ax
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !71
  tail call void @listDelNode(ptr noundef %i.es, ptr noundef nonnull %i.eo) #16
  store ptr null, ptr %i.en, align 8, !tbaa !70
  br label %tlsPendingAdd.exit

tlsPendingAdd.exit:                               ; preds = %bb.aw, %bb.av, %tlsPendingRemove.exit, %bb.ax, %callHandler.exit108, %bb.a, %callHandler.exit90, %callHandler.exit
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !65
  %.not84 = icmp eq ptr %i.eu, null
  br i1 %.not84, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %tlsPendingAdd.exit
  tail call fastcc void @updateSSLEvent(ptr noundef nonnull %0)
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %bb.aq, %bb.am, %bb.al, %bb.ah, %bb.ag, %bb.w, %bb.v, %bb.n, %bb.m, %.thread113, %.thread, %tlsPendingAdd.exit, %bb.ay
  ret void
}

declare void @ERR_clear_error() local_unnamed_addr #2

declare i32 @anetGetError(i32 noundef) local_unnamed_addr #2

declare i32 @SSL_set_fd(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 4, 2) i32 @handleSSLReturnCode(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 1) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = tail call i32 @SSL_get_error(ptr noundef %i.b, i32 noundef %1) #16 ; 2 uses
  switch i32 %i.c, label %bb.i [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %2, align 4, !tbaa !15
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !15
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #18    ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.e, ptr %i.f, align 4, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @zfree(ptr noundef nonnull %i.h) #16
  %.pre = load i32, ptr %i.d, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi i32 [ %.pre, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %.not15 = icmp eq i32 %i.i, 0
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #16
  %i.k = tail call noalias ptr @zstrdup(ptr noundef %i.j) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.l = phi ptr [ %i.k, %bb.g ], [ null, %bb.f ]
  store ptr %i.l, ptr %i.g, align 8, !tbaa !69
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %updateTLSError.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @zfree(ptr noundef nonnull %i.o) #16
  br label %updateTLSError.exit

updateTLSError.exit:                              ; preds = %bb.i, %bb.j
  %i.p = tail call noalias dereferenceable_or_null(512) ptr @zmalloc(i64 noundef 512) #19
  store ptr %i.p, ptr %i.n, align 8, !tbaa !69
  %i.q = tail call i64 @ERR_get_error() #16
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !69
  tail call void @ERR_error_string_n(i64 noundef %i.q, ptr noundef %i.r, i64 noundef 512) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %updateTLSError.exit, %bb.h
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.c, %updateTLSError.exit ], [ 5, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @registerSSLEvent(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
end_hunk_0
