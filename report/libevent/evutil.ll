Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evutil?download=true
inline.NumInlined: 93
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@evutil_inet_pton:bb.a
  %i.p = load i32, ptr %i.b, align 4              ; 2 uses
  %i.q = icmp ugt i32 %i.p, 255
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.c, align 4              ; 2 uses
  %i.s = icmp ugt i32 %i.r, 255
  br i1 %i.s, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.d, align 4              ; 2 uses
  %i.u = icmp ugt i32 %i.t, 255
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = shl nuw i32 %i.n, 24
  %i.w = shl nuw nsw i32 %i.p, 16
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = shl nuw nsw i32 %i.r, 8
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = or disjoint i32 %i.z, %i.t
  %i.ab = call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  store i32 %i.ab, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.g
  %.0107 = phi i32 [ 1, %bb.g ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ae

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.ac = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 46) #23 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq ptr %i.ac, null                 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.pn = phi ptr [ %i.ac, %bb.l ], [ %.0, %bb.n ] ; 3 uses
  %.0 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 3 uses
  %.not128 = icmp ult ptr %.0, %1
  br i1 %.not128, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i8, ptr %.0, align 1
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = lshr i32 %i.ah, 5
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @EVUTIL_ISDIGIT_TABLE, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.ah, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %i.an, %i.al
  %.not129 = icmp eq i32 %i.ao, 0
  br i1 %.not129, label %.critedge, label %bb.m, !llvm.loop !7

.critedge:                                        ; preds = %bb.m, %bb.n
  %i.ap = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.pn, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #21
  %.not130 = icmp eq i32 %i.ap, 4
  br i1 %.not130, label %bb.o, label %.critedge136

bb.o:                                             ; preds = %.critedge
  %i.aq = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 255
  %i.as = load i32, ptr %i.h, align 4             ; 2 uses
  %i.at = icmp ugt i32 %i.as, 255
  %or.cond = select i1 %i.ar, i1 true, i1 %i.at
  %i.au = load i32, ptr %i.i, align 4             ; 2 uses
  %i.av = icmp ugt i32 %i.au, 255
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.av
  %i.aw = load i32, ptr %i.j, align 4             ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, 255
  %or.cond7 = select i1 %or.cond5, i1 true, i1 %i.ax
  br i1 %or.cond7, label %.critedge136, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = shl nuw nsw i32 %i.aq, 8
  %i.az = or disjoint i32 %i.ay, %i.as
  %i.ba = trunc nuw i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i16 %i.ba, ptr %i.bb, align 4
  %i.bc = shl nuw nsw i32 %i.au, 8
  %i.bd = or disjoint i32 %i.bc, %i.aw
  %i.be = trunc nuw i32 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  store i16 %i.be, ptr %i.bf, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.197 = phi i32 [ 2, %bb.p ], [ 0, %bb.k ]
  %.1 = phi ptr [ %.pn, %bb.p ], [ %i.af, %bb.k ] ; 3 uses
  %i.bg = icmp ult ptr %1, %.1
  br i1 %i.bg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q, %bb.aa
  %.2151 = phi i32 [ %.4, %bb.aa ], [ %.197, %bb.q ] ; 3 uses
  %.098150 = phi i32 [ %.2100, %bb.aa ], [ 0, %bb.q ] ; 7 uses
  %.0102149 = phi i32 [ %.1103, %bb.aa ], [ -1, %bb.q ] ; 2 uses
  %.0112148 = phi ptr [ %.2114, %bb.aa ], [ %1, %bb.q ] ; 7 uses
  %i.bh = icmp sgt i32 %.098150, 7
  br i1 %i.bh, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.bi = load i8, ptr %.0112148, align 1         ; 2 uses
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = lshr i32 %i.bj, 5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @EVUTIL_ISXDIGIT_TABLE, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = and i32 %i.bj, 31
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = and i32 %i.bp, %i.bn
  %.not131 = icmp eq i32 %i.bq, 0
  br i1 %.not131, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  %i.br = call i64 @__isoc23_strtol(ptr noundef nonnull %.0112148, ptr noundef nonnull %i.l, i32 noundef 16) #21 ; 2 uses
  %i.bs = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0112148, i64 4
  %i.bu = icmp ugt ptr %i.bs, %i.bt
  %i.bv = icmp eq ptr %i.bs, %.0112148
  %or.cond140 = or i1 %i.bu, %i.bv
  %or.cond9 = icmp ugt i64 %i.br, 65536
  %or.cond141 = select i1 %or.cond140, i1 true, i1 %or.cond9
  br i1 %or.cond141, label %.critedge139, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = trunc i64 %i.br to i16
  %i.bx = sext i32 %.098150 to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.bx
  store i16 %i.bw, ptr %i.by, align 2
  %i.bz = load i8, ptr %i.bs, align 1
  %.not132 = icmp eq i8 %i.bz, 58
  %.not133 = icmp eq ptr %i.bs, %.1
  %or.cond137 = or i1 %.not133, %.not132
  br i1 %or.cond137, label %bb.u, label %.critedge139

bb.u:                                             ; preds = %bb.t
  %i.ca = add nsw i32 %.2151, 1
  %i.cb = add nsw i32 %.098150, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  br label %bb.aa

bb.v:                                             ; preds = %bb.r
  %i.cd = icmp eq i8 %i.bi, 58                    ; 2 uses
  %i.ce = icmp sgt i32 %.098150, 0
  %or.cond11 = and i1 %i.cd, %i.ce
  %i.cf = icmp eq i32 %.0102149, -1               ; 2 uses
  %or.cond13 = select i1 %or.cond11, i1 %i.cf, i1 false
  br i1 %or.cond13, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %.0112148, i64 1
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.ch = icmp eq i32 %.098150, 0
  %or.cond15 = and i1 %i.cd, %i.ch
  br i1 %or.cond15, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %.0112148, i64 1
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = icmp eq i8 %i.cj, 58
  %or.cond17 = select i1 %i.ck, i1 %i.cf, i1 false
  br i1 %or.cond17, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %.0112148, i64 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.u, %bb.w, %bb.z
  %.2114 = phi ptr [ %i.cc, %bb.u ], [ %i.cg, %bb.w ], [ %i.cl, %bb.z ] ; 2 uses
  %.1103 = phi i32 [ %.0102149, %bb.u ], [ %.098150, %bb.w ], [ 0, %bb.z ] ; 6 uses
  %.2100 = phi i32 [ %i.cb, %bb.u ], [ %.098150, %bb.w ], [ 0, %bb.z ]
  %.4 = phi i32 [ %i.ca, %bb.u ], [ %.2151, %bb.w ], [ %.2151, %bb.z ] ; 5 uses
  %i.cm = icmp ult ptr %.2114, %.1
  br i1 %i.cm, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.aa
  %i.cn = icmp sgt i32 %.4, 8
  br i1 %i.cn, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.co = icmp eq i32 %.4, 8
  %i.cp = icmp ne i32 %.1103, -1
  %or.cond190 = xor i1 %i.co, %i.cp
  br i1 %or.cond190, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.cq = icmp sgt i32 %.1103, -1
  br i1 %i.cq, label %bb.ad, label %.loopexit.loopexit

bb.ad:                                            ; preds = %bb.ac
  %.neg = select i1 %.not, i32 0, i32 -2
  %i.cr = sub nsw i32 %.neg, %.1103
  %i.cs = add i32 %i.cr, %.4                      ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  br i1 %i.ct, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.ad
  %i.cu = sub nsw i32 8, %.4                      ; 2 uses
  %i.cv = add nuw nsw i32 %i.cu, %.1103
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cw
  %i.cy = zext nneg i32 %.1103 to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cy ; 2 uses
  %i.da = shl nuw i32 %i.cs, 1
  %i.db = zext i32 %i.da to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cx, ptr nonnull align 2 %i.cz, i64 %i.db, i1 false)
  %i.dc = zext nneg i32 %i.cu to i64
  %i.dd = shl nuw nsw i64 %i.dc, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cz, i8 0, i64 %i.dd, i1 false)
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.thread, %bb.ac
  %i.de = load i16, ptr %i.f, align 16            ; 2 uses
  %i.df = lshr i16 %i.de, 8
  %i.dg = trunc nuw i16 %i.df to i8
  store i8 %i.dg, ptr %2, align 1
  %i.dh = trunc i16 %i.de to i8
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.dh, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.dk = load i16, ptr %i.dj, align 2            ; 2 uses
  %i.dl = lshr i16 %i.dk, 8
  %i.dm = trunc nuw i16 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.dm, ptr %i.dn, align 1
  %i.do = trunc i16 %i.dk to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dr = load i16, ptr %i.dq, align 4            ; 2 uses
  %i.ds = lshr i16 %i.dr, 8
  %i.dt = trunc nuw i16 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = trunc i16 %i.dr to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.dv, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.dy = load i16, ptr %i.dx, align 2            ; 2 uses
  %i.dz = lshr i16 %i.dy, 8
  %i.ea = trunc nuw i16 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.ea, ptr %i.eb, align 1
  %i.ec = trunc i16 %i.dy to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.ec, ptr %i.ed, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ef = load i16, ptr %i.ee, align 8            ; 2 uses
  %i.eg = lshr i16 %i.ef, 8
  %i.eh = trunc nuw i16 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.eh, ptr %i.ei, align 1
  %i.ej = trunc i16 %i.ef to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.ej, ptr %i.ek, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.em = load i16, ptr %i.el, align 2            ; 2 uses
  %i.en = lshr i16 %i.em, 8
  %i.eo = trunc nuw i16 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = trunc i16 %i.em to i8
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 11
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.et = load i16, ptr %i.es, align 4            ; 2 uses
  %i.eu = lshr i16 %i.et, 8
  %i.ev = trunc nuw i16 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %i.ev, ptr %i.ew, align 1
  %i.ex = trunc i16 %i.et to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %i.ex, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.fa = load i16, ptr %i.ez, align 2            ; 2 uses
  %i.fb = lshr i16 %i.fa, 8
  %i.fc = trunc nuw i16 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i8 %i.fc, ptr %i.fd, align 1
  %i.fe = trunc i16 %i.fa to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 15
  store i8 %i.fe, ptr %i.ff, align 1
  br label %.loopexit

.critedge136:                                     ; preds = %bb.o, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %.loopexit

.critedge139:                                     ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.y, %.lr.ph, %bb.q, %.loopexit.loopexit, %bb.ad, %._crit_edge, %bb.ab, %.critedge139, %.critedge136, %bb.i
  %.7 = phi i32 [ 0, %.critedge136 ], [ 0, %bb.i ], [ 0, %.critedge139 ], [ 0, %bb.q ], [ 0, %bb.ab ], [ 0, %._crit_edge ], [ -1, %bb.ad ], [ 1, %.loopexit.loopexit ], [ 0, %.lr.ph ], [ 0, %bb.y ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %.loopexit, %bb.h
  %.8 = phi i32 [ %.0107, %bb.h ], [ %.7, %.loopexit ], [ -1, %bb.a ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define void @evutil_adjust_hints_for_addrconfig_(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %1 = alloca %struct.sockaddr_in, align 4        ; 6 uses
  %2 = alloca %struct.sockaddr_in, align 4        ; 8 uses
  %3 = alloca %struct.sockaddr_in6, align 4       ; 7 uses
  %4 = alloca %struct.sockaddr_in6, align 4       ; 8 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = load i32, ptr %0, align 8
  %i.j = and i32 %i.i, 32
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %.not8 = icmp eq i32 %i.l, 0
  br i1 %.not8, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i32 16, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i32 28, ptr %i.h, align 4
  %.b.i = load i1, ptr @have_checked_interfaces, align 4
  br i1 %.b.i, label %evutil_check_interfaces.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i1 true, ptr @have_checked_interfaces, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store ptr null, ptr %i.f, align 8
  %i.m = call i32 @getifaddrs(ptr noundef nonnull %i.f) #21
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %.07.i.i = load ptr, ptr %i.f, align 8          ; 2 uses
  %.not8.i.i = icmp eq ptr %.07.i.i, null
  br i1 %.not8.i.i, label %evutil_check_ifaddrs.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %evutil_found_ifaddr.exit.i.i
  %.09.i.i = phi ptr [ %.0.i.i, %evutil_found_ifaddr.exit.i.i ], [ %.07.i.i, %.preheader.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 5 uses
  %.not6.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i, label %evutil_found_ifaddr.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.q = load i16, ptr %i.p, align 2
  switch i16 %i.q, label %evutil_found_ifaddr.exit.i.i [
    i16 2, label %bb.f
    i16 10, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = call noundef i32 @llvm.bswap.i32(i32 %i.s) ; 3 uses
  %i.u = icmp ne i32 %i.s, 0
  %i.v = icmp slt i32 %i.t, 2130706432
  %or.cond.not8.i.not17.i.i.i = and i1 %i.u, %i.v
  %i.w = and i32 %i.t, -65536
  %.not.i.i.i.i = icmp ne i32 %i.w, -1442971648
  %or.cond5.i.not14.i.i.i = and i1 %or.cond.not8.i.not17.i.i.i, %.not.i.i.i.i
  %i.x = and i32 %i.t, -268435456
  %i.y = icmp ne i32 %i.x, -536870912
  %narrow.i.not.i.i.i = and i1 %i.y, %or.cond5.i.not14.i.i.i
  br i1 %narrow.i.not.i.i.i, label %bb.g, label %evutil_found_ifaddr.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr @event_debug_logging_mask_, align 4
  %.not8.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not8.i.i.i, label %evutil_v6addr_is_local_.exit.thread.sink.split.i.i.i, label %evutil_v6addr_is_local_.exit.thread.sink.split.sink.split.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %.not.i9.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i9.i.i.i, label %evutil_found_ifaddr.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i8, ptr %i.aa, align 2             ; 2 uses
  %i.af = and i8 %i.ae, -2
  %i.ag = icmp eq i8 %i.af, -4
  br i1 %i.ag, label %evutil_found_ifaddr.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %i.ae, label %evutil_v6addr_is_local_.exit.thread11.i.i.i [
    i8 -2, label %bb.k
    i8 -1, label %evutil_found_ifaddr.exit.i.i
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %i.ai = load i8, ptr %i.ah, align 1
  %or.cond.i.i.i.i = icmp slt i8 %i.ai, 0
  br i1 %or.cond.i.i.i.i, label %evutil_found_ifaddr.exit.i.i, label %evutil_v6addr_is_local_.exit.thread11.i.i.i

evutil_v6addr_is_local_.exit.thread11.i.i.i:      ; preds = %bb.k, %bb.j
  %i.aj = load i32, ptr @event_debug_logging_mask_, align 4
  %.not6.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not6.i.i.i, label %evutil_v6addr_is_local_.exit.thread.sink.split.i.i.i, label %evutil_v6addr_is_local_.exit.thread.sink.split.sink.split.i.i.i

evutil_v6addr_is_local_.exit.thread.sink.split.sink.split.i.i.i: ; preds = %evutil_v6addr_is_local_.exit.thread11.i.i.i, %bb.g
  %.str.33.sink.i.i.i = phi ptr [ @.str.32, %bb.g ], [ @.str.33, %evutil_v6addr_is_local_.exit.thread11.i.i.i ]
  %had_ipv6_address.sink.ph.i.i.i = phi ptr [ @had_ipv4_address, %bb.g ], [ @had_ipv6_address, %evutil_v6addr_is_local_.exit.thread11.i.i.i ]
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull %.str.33.sink.i.i.i) #21
  br label %evutil_v6addr_is_local_.exit.thread.sink.split.i.i.i

evutil_v6addr_is_local_.exit.thread.sink.split.i.i.i: ; preds = %evutil_v6addr_is_local_.exit.thread.sink.split.sink.split.i.i.i, %evutil_v6addr_is_local_.exit.thread11.i.i.i, %bb.g
  %had_ipv6_address.sink.i.i.i = phi ptr [ @had_ipv4_address, %bb.g ], [ @had_ipv6_address, %evutil_v6addr_is_local_.exit.thread11.i.i.i ], [ %had_ipv6_address.sink.ph.i.i.i, %evutil_v6addr_is_local_.exit.thread.sink.split.sink.split.i.i.i ]
  store i1 true, ptr %had_ipv6_address.sink.i.i.i, align 1
  br label %evutil_found_ifaddr.exit.i.i

evutil_found_ifaddr.exit.i.i:                     ; preds = %evutil_v6addr_is_local_.exit.thread.sink.split.i.i.i, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %.lr.ph.i.i
  %.0.i.i = load ptr, ptr %.09.i.i, align 8       ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !9

._crit_edge.loopexit.i.i:                         ; preds = %evutil_found_ifaddr.exit.i.i
  %.pre.i.i = load ptr, ptr %i.f, align 8
  br label %evutil_check_ifaddrs.exit.thread.i

evutil_check_ifaddrs.exit.thread.i:               ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %i.ak = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ null, %.preheader.i.i ]
  call void @freeifaddrs(ptr noundef %i.ak) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %evutil_check_interfaces.exit

bb.l:                                             ; preds = %bb.d
  call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, i8 0, i64 12, i1 false)
  store i16 2, ptr %1, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 13568, ptr %i.am, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.an = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #21
  %.not134.i.i = icmp eq i32 %i.an, 4
  br i1 %.not134.i.i, label %bb.m, label %evutil_inet_pton.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ap = icmp ugt i32 %i.ao, 255
  br i1 %i.ap, label %evutil_inet_pton.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 255
  br i1 %i.ar, label %evutil_inet_pton.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i32, ptr %i.c, align 4             ; 2 uses
  %i.at = icmp ugt i32 %i.as, 255
  br i1 %i.at, label %evutil_inet_pton.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i32, ptr %i.d, align 4             ; 2 uses
  %i.av = icmp ugt i32 %i.au, 255
  br i1 %i.av, label %evutil_inet_pton.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = shl nuw i32 %i.ao, 24
  %i.ax = shl nuw nsw i32 %i.aq, 16
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = shl nuw nsw i32 %i.as, 8
  %i.ba = or disjoint i32 %i.ay, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.au
  %i.bc = call noundef i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %i.bc, ptr %i.al, align 4
  br label %evutil_inet_pton.exit.i

evutil_inet_pton.exit.i:                          ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
end_hunk_0
