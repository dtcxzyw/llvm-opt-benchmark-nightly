inline.NumInlined: 157
inline.NumDeleted: 65
begin_hunk_0_@opj_j2k_read_sot:bb.a
  %.pre192 = load i32, ptr %i.d, align 8, !tbaa !228
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w
  %i.cn = load i32, ptr %i.d, align 8, !tbaa !228 ; 2 uses
  %.not167 = icmp eq i32 %i.cn, %i.bv
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8
  %i.cq = select i1 %.not167, i8 0, i8 4
  %i.cr = and i8 %i.cp, -5
  %i.cs = or disjoint i8 %i.cr, %i.cq
  store i8 %i.cs, ptr %i.co, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ct = phi i32 [ %i.cn, %bb.ac ], [ %.pre192, %bb.ab ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 8 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !211
  %i.cy = zext i32 %i.ct to i64
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %i.cx, i64 %i.cy ; 3 uses
  store i32 %i.ct, ptr %i.cz, align 8, !tbaa !417
  %i.da = load i32, ptr %i.c, align 4, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 %i.da, ptr %i.db, align 4, !tbaa !235
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !9
  %.not170 = icmp eq i32 %i.dd, 0
  %.pre194 = load i32, ptr %i.b, align 4, !tbaa !3 ; 2 uses
  br i1 %.not170, label %bb.ae, label %.thread187

bb.ae:                                            ; preds = %bb.ad
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !236
  %i.dg = icmp ugt i32 %.pre194, %i.df
  br i1 %i.dg, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.dh = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @.str.186, i32 noundef %i.ct) #21 ; 0 uses
  store i32 1, ptr %i.dc, align 8, !tbaa !9
  %.pre193 = load i32, ptr %i.b, align 4, !tbaa !3
  br label %.thread187

.thread187:                                       ; preds = %bb.ad, %bb.af
  %i.di = phi i32 [ %.pre193, %bb.af ], [ %.pre194, %bb.ad ] ; 2 uses
  %.not172 = icmp eq i32 %i.di, 0
  %i.dj = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !211 ; 2 uses
  %i.dm = load i32, ptr %i.d, align 8, !tbaa !228
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [56 x i8], ptr %i.dl, i64 %i.dn ; 5 uses
  br i1 %.not172, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %.thread187
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %i.di, ptr %i.dp, align 4, !tbaa !236
  %i.dq = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !418
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !217 ; 2 uses
  %.not177 = icmp eq ptr %i.dt, null
  %i.du = zext i32 %i.dq to i64                   ; 2 uses
  br i1 %.not177, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dv = call ptr @opj_calloc(i64 noundef %i.du, i64 noundef 24) #21 ; 2 uses
  %i.dw = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !211
  %i.dz = load i32, ptr %i.d, align 8, !tbaa !228
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [56 x i8], ptr %i.dy, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr %i.dv, ptr %i.ec, align 8, !tbaa !217
  %.not178 = icmp eq ptr %i.dv, null
  br i1 %.not178, label %bb.ai, label %bb.ar

bb.ai:                                            ; preds = %bb.ah
  %i.ed = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.187) #21 ; 0 uses
  br label %bb.ar

bb.aj:                                            ; preds = %bb.ag
  %i.ee = mul nuw nsw i64 %i.du, 24
  %i.ef = call ptr @opj_realloc(ptr noundef nonnull %i.dt, i64 noundef %i.ee) #21 ; 2 uses
  %.not179.not = icmp eq ptr %i.ef, null
  %i.eg = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !211
  %i.ej = load i32, ptr %i.d, align 8, !tbaa !228
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [56 x i8], ptr %i.ei, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  br i1 %.not179.not, label %.thread189, label %bb.ak

.thread189:                                       ; preds = %bb.aj
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !217
  call void @opj_free(ptr noundef %i.en) #21
  %i.eo = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !211
  %i.er = load i32, ptr %i.d, align 8, !tbaa !228
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [56 x i8], ptr %i.eq, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr null, ptr %i.eu, align 8, !tbaa !217
  %i.ev = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.187) #21 ; 0 uses
  br label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ef, ptr %i.em, align 8, !tbaa !217
  br label %bb.ar

bb.al:                                            ; preds = %.thread187
  %i.ew = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !217 ; 2 uses
  %.not173 = icmp eq ptr %i.ex, null
  br i1 %.not173, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 10, ptr %i.ey, align 8, !tbaa !418
  %i.ez = call ptr @opj_calloc(i64 noundef 10, i64 noundef 24) #21 ; 3 uses
  %i.fa = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !211 ; 2 uses
  %i.fd = load i32, ptr %i.d, align 8, !tbaa !228
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr inbounds nuw [56 x i8], ptr %i.fc, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store ptr %i.ez, ptr %i.fg, align 8, !tbaa !217
  %.not174 = icmp eq ptr %i.ez, null
  br i1 %.not174, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i32 0, ptr %i.fh, align 8, !tbaa !418
  %i.fi = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.187) #21 ; 0 uses
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am, %bb.al
  %.pre-phi = phi i64 [ %i.fe, %bb.am ], [ %i.dn, %bb.al ]
  %i.fj = phi ptr [ %i.ez, %bb.am ], [ %i.ex, %bb.al ]
  %i.fk = phi ptr [ %i.fc, %bb.am ], [ %i.dl, %bb.al ]
  %i.fl = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.fm = getelementptr inbounds nuw [56 x i8], ptr %i.fk, i64 %.pre-phi
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !418
  %.not175 = icmp ult i32 %i.fl, %i.fo
  br i1 %.not175, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fp = add i32 %i.fl, 1                        ; 2 uses
  store i32 %i.fp, ptr %i.fn, align 8, !tbaa !418
  %i.fq = zext i32 %i.fp to i64
  %i.fr = mul nuw nsw i64 %i.fq, 24
  %i.fs = call ptr @opj_realloc(ptr noundef nonnull %i.fj, i64 noundef %i.fr) #21 ; 2 uses
  %.not176.not = icmp eq ptr %i.fs, null
  %i.ft = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !211
  %i.fw = load i32, ptr %i.d, align 8, !tbaa !228
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %i.fv, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  br i1 %.not176.not, label %.thread190, label %bb.aq

.thread190:                                       ; preds = %bb.ap
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !217
  call void @opj_free(ptr noundef %i.ga) #21
  %i.gb = load ptr, ptr %i.cu, align 8, !tbaa !45
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !211
  %i.ge = load i32, ptr %i.d, align 8, !tbaa !228
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [56 x i8], ptr %i.gd, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store ptr null, ptr %i.gh, align 8, !tbaa !217
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 0, ptr %i.gi, align 8, !tbaa !418
  %i.gj = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.187) #21 ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.fs, ptr %i.fz, align 8, !tbaa !217
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ae, %bb.ao, %bb.ah, %bb.ak, %bb.aq, %.thread190, %.thread189, %bb.an, %bb.ai, %bb.u, %bb.s, %bb.p, %bb.k, %bb.g, %bb.d, %bb.b
  %.2 = phi i32 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.b ], [ 0, %.thread189 ], [ 0, %bb.ai ], [ 0, %.thread190 ], [ 0, %bb.an ], [ 0, %bb.k ], [ 1, %bb.aq ], [ 1, %bb.ak ], [ 1, %bb.ah ], [ 1, %bb.ao ], [ 1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_read_cod(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = icmp eq i32 %i.f, 16
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = load i32, ptr %i.j, align 8, !tbaa !228
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [5696 x i8], ptr %i.i, i64 %i.l
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.m, %bb.b ], [ %i.o, %bb.c ] ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5688 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = or i8 %i.r, 1
  store i8 %i.s, ptr %i.q, align 8
  %i.t = icmp ult i32 %2, 5
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.188) #21 ; 0 uses
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  tail call void @opj_read_bytes_LE(ptr noundef %1, ptr noundef nonnull %i.p, i32 noundef 1) #21
  %i.v = load i32, ptr %i.p, align 8, !tbaa !296
  %.not = icmp ult i32 %i.v, 8
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.189) #21 ; 0 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @opj_read_bytes_LE(ptr noundef nonnull %i.x, ptr noundef nonnull %i.b, i32 noundef 1) #21
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.z = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !297
  %i.ab = icmp sgt i32 %i.z, 4
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.190) #21 ; 0 uses
  store i32 -1, ptr %i.aa, align 4, !tbaa !297
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  call void @opj_read_bytes_LE(ptr noundef nonnull %i.y, ptr noundef nonnull %i.ad, i32 noundef 2) #21
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !90 ; 3 uses
  %i.af = add i32 %i.ae, -65536
  %or.cond = icmp ult i32 %i.af, -65535
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.191, i32 noundef %i.ae) #21 ; 0 uses
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !9  ; 2 uses
  %.not51 = icmp eq i32 %i.aj, 0
  %spec.select = select i1 %.not51, i32 %i.ae, i32 %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %spec.select, ptr %i.ak, align 4, !tbaa !424
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  call void @opj_read_bytes_LE(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.al, i32 noundef 1) #21
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.an = load i32, ptr %i.al, align 8, !tbaa !99
  %i.ao = icmp ugt i32 %i.an, 1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.192) #21 ; 0 uses
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %4 = load i32, ptr %i.a, align 4, !tbaa !3
  %i.aq = add i32 %4, -5
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !57 ; 3 uses
  %.not55 = icmp eq i32 %i.as, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.at = load i32, ptr %i.p, align 8, !tbaa !296
  %i.au = and i32 %i.at, 1                        ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 5600
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !109 ; 5 uses
  %wide.trip.count = zext i32 %i.as to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ax = icmp ult i32 %i.as, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.o ]
  %i.ay = getelementptr inbounds nuw [1080 x i8], ptr %i.aw, i64 %indvars.iv
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !122
  %i.az = getelementptr inbounds nuw [1080 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1080
  store i32 %i.au, ptr %i.ba, align 4, !tbaa !122
  %i.bb = getelementptr inbounds nuw [1080 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2160
  store i32 %i.au, ptr %i.bc, align 4, !tbaa !122
  %i.bd = getelementptr inbounds nuw [1080 x i8], ptr %i.aw, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3240
  store i32 %i.au, ptr %i.be, align 4, !tbaa !122
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.o, !llvm.loop !425

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod58)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.p ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.bf = getelementptr inbounds nuw [1080 x i8], ptr %i.aw, i64 %indvars.iv.epil
  store i32 %i.au, ptr %i.bf, align 4, !tbaa !122
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.p, !llvm.loop !426

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.p, %bb.n
  %i.bg = call fastcc i32 @opj_j2k_read_SPCod_SPCoc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.am, ptr noundef %i.a, ptr noundef %3)
  %.not52 = icmp eq i32 %i.bg, 0
  br i1 %.not52, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.bh = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.188) #21 ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %._crit_edge
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !3
  %.not53 = icmp eq i32 %i.bi, 0
  br i1 %.not53, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.188) #21 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call fastcc void @opj_j2k_copy_tile_component_parameters(ptr noundef nonnull %0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.m, %bb.k, %bb.g, %bb.e
  %.048 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.s ], [ 1, %bb.t ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_read_coc(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = icmp eq i32 %i.d, 16
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = load i32, ptr %i.h, align 8, !tbaa !228
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [5696 x i8], ptr %i.g, i64 %i.j
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !57
  %i.s = icmp ult i32 %i.r, 257
  %i.t = select i1 %i.s, i32 1, i32 2             ; 4 uses
  %.not = icmp ugt i32 %2, %i.t
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.200) #21 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %.neg = xor i32 %i.t, -1
  %i.v = add i32 %2, %.neg
  store i32 %i.v, ptr %i.a, align 4, !tbaa !3
  call void @opj_read_bytes_LE(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.t) #21
  %i.w = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.x = load i32, ptr %i.q, align 8, !tbaa !57
  %.not27 = icmp ult i32 %i.w, %i.x
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.201) #21 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 5600
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109
  %i.ad = zext i32 %i.w to i64
  %i.ae = getelementptr inbounds nuw [1080 x i8], ptr %i.ac, i64 %i.ad
  call void @opj_read_bytes_LE(ptr noundef nonnull %i.aa, ptr noundef %i.ae, i32 noundef 1) #21
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ah = call fastcc i32 @opj_j2k_read_SPCod_SPCoc(ptr noundef nonnull %0, i32 noundef %i.ag, ptr noundef nonnull %i.af, ptr noundef %i.a, ptr noundef %3)
  %.not28 = icmp eq i32 %i.ah, 0
  br i1 %.not28, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.200) #21 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !3
  %.not29 = icmp eq i32 %i.aj, 0
  br i1 %.not29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.200) #21 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i, %bb.g, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %bb.i ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opj_j2k_read_rgn(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %i.g = icmp ult i32 %i.f, 257
  %. = select i1 %i.g, i32 1, i32 2               ; 3 uses
  %i.h = add nuw nsw i32 %., 2
  %.not = icmp eq i32 %2, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.202) #21 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !9
  %i.l = icmp eq i32 %i.k, 16
  br i1 %i.l, label %bb.d, label %bb.e
end_hunk_0
