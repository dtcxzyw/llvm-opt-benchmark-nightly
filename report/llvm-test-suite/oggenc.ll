inline.NumInlined: 678
inline.NumDeleted: 90
begin_hunk_0_@aiff_open:bb.a
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.60, i64 47, i64 1, ptr %i.l) #67 ; 0 uses
  br label %seek_forward.exit

bb.e:                                             ; preds = %bb.c
  %i.n = zext i32 %i.j to i64                     ; 3 uses
  %i.o = alloca i8, i64 %i.n, align 16            ; 20 uses
  %i.p = call i64 @fread(ptr noundef nonnull %i.o, i64 noundef 1, i64 noundef %i.n, ptr noundef %0)
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = tail call i64 @fwrite(ptr nonnull @.str.61, i64 47, i64 1, ptr %i.r) #67 ; 0 uses
  br label %seek_forward.exit

bb.g:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.o, align 16
  %i.u = zext i8 %i.t to i16
  %i.v = shl nuw i16 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = or disjoint i16 %i.v, %i.y               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.ab = load i8, ptr %i.aa, align 2
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw i32 %i.ac, 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 16
  %i.ai = or disjoint i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 8
  %i.an = or disjoint i32 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.at = load i8, ptr %i.as, align 2
  %i.au = zext i8 %i.at to i16
  %i.av = shl nuw i16 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 7
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i16
  %i.az = or disjoint i16 %i.av, %i.ay            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bb = load i8, ptr %i.ba, align 8             ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = and i32 %i.bd, 32512
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.be, %i.bh            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.bk = load i8, ptr %i.bj, align 2             ; 2 uses
  %i.bl = icmp eq i32 %i.bi, 32767
  br i1 %i.bl, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp sgt i8 %i.bk, -1
  br i1 %.not.i, label %bb.i, label %read_IEEE80.exit

bb.i:                                             ; preds = %bb.h
  %.not19.i = icmp eq i8 %i.bb, 0
  %..i = select i1 %.not19.i, double +inf, double -inf
  br label %read_IEEE80.exit

bb.j:                                             ; preds = %bb.g
  %i.bm = zext i8 %i.bk to i64
  %i.bn = shl nuw nsw i64 %i.bm, 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 11
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 16
  %i.bs = or disjoint i64 %i.br, %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.bu = load i8, ptr %i.bt, align 4
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 8
  %i.bx = or disjoint i64 %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 13
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = or disjoint i64 %i.bx, %i.ca
  %i.cc = uitofp nneg i64 %i.cb to double
  %i.cd = tail call double @ldexp(double noundef %i.cc, i32 noundef 32) #65
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.cf = load i32, ptr %i.ce, align 2
  %i.cg = tail call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = fadd double %i.cd, %i.ch
  %i.cj = add nsw i32 %i.bi, -16446
  %i.ck = tail call double @ldexp(double noundef %i.ci, i32 noundef %i.cj) #65
  br label %read_IEEE80.exit

read_IEEE80.exit:                                 ; preds = %bb.h, %bb.i, %bb.j
  %.0.i = phi double [ %i.ck, %bb.j ], [ %..i, %bb.i ], [ +inf, %bb.h ]
  %i.cl = fptosi double %.0.i to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i16 1, ptr %i.cm, align 8
  br i1 %.not50, label %bb.k, label %bb.q

bb.k:                                             ; preds = %read_IEEE80.exit
  %i.cn = icmp ult i32 %i.j, 22
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.co = load ptr, ptr @stderr, align 8
  %i.cp = tail call i64 @fwrite(ptr nonnull @.str.62, i64 34, i64 1, ptr %i.co) #67 ; 0 uses
  br label %seek_forward.exit

bb.m:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.o, i64 18 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 1
  %i.cs = icmp ne i32 %i.cr, 1162760014
  %i.ct = zext i1 %i.cs to i32
  %.not51 = icmp eq i32 %i.ct, 0
  br i1 %.not51, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = load i32, ptr %i.cq, align 1
  %i.cv = icmp ne i32 %i.cu, 1953984371
  %i.cw = zext i1 %i.cv to i32
  %.not53 = icmp eq i32 %i.cw, 0
  br i1 %.not53, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 0, ptr %i.cm, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cx = load ptr, ptr @stderr, align 8
  %i.cy = load i8, ptr %i.cq, align 2
  %i.cz = zext i8 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 19
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.de = load i8, ptr %i.dd, align 4
  %i.df = zext i8 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 21
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = zext i8 %i.dh to i32
  %i.dj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str.65, i32 noundef %i.cz, i32 noundef %i.dc, i32 noundef %i.df, i32 noundef %i.di) #68 ; 0 uses
  br label %seek_forward.exit

bb.q:                                             ; preds = %bb.m, %bb.o, %read_IEEE80.exit
  %i.dk = call fastcc i32 @find_aiff_chunk(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef %i.b)
  %.not54 = icmp eq i32 %i.dk, 0
  br i1 %.not54, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dl = load ptr, ptr @stderr, align 8
  %i.dm = tail call i64 @fwrite(ptr nonnull @.str.67, i64 42, i64 1, ptr %i.dl) #67 ; 0 uses
  br label %seek_forward.exit

bb.s:                                             ; preds = %bb.q
  %i.dn = load i32, ptr %i.b, align 4
  %i.do = icmp ult i32 %i.dn, 8
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = load ptr, ptr @stderr, align 8
  %i.dq = tail call i64 @fwrite(ptr nonnull @.str.68, i64 45, i64 1, ptr %i.dp) #67 ; 0 uses
  br label %seek_forward.exit

bb.u:                                             ; preds = %bb.s
  %i.dr = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %i.ds = icmp ult i64 %i.dr, 8
  br i1 %i.ds, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dt = load ptr, ptr @stderr, align 8
  %i.du = tail call i64 @fwrite(ptr nonnull @.str.69, i64 44, i64 1, ptr %i.dt) #67 ; 0 uses
  br label %seek_forward.exit

bb.w:                                             ; preds = %bb.u
  %i.dv = load i8, ptr %i.c, align 1
  %i.dw = zext i8 %i.dv to i32
  %i.dx = shl nuw i32 %i.dw, 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = zext i8 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 16
  %i.ec = or disjoint i32 %i.eb, %i.dx
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 8
  %i.eh = or disjoint i32 %i.ec, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = zext i8 %i.ej to i32
  %i.el = or disjoint i32 %i.eh, %i.ek            ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %4 = load i32, ptr %i.em, align 1
  %i.en = icmp eq i32 %4, 0
  br i1 %i.en, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  switch i16 %i.az, label %bb.aa [
    i16 16, label %bb.y
    i16 8, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.eo = sext i32 %i.cl to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %i.eo, ptr %i.ep, align 8
  %i.eq = sext i16 %i.z to i32
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.eq, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @wav_read, ptr %i.es, align 8
  %i.et = sext i32 %i.ar to i64                   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.et, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %0, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ew, align 8
  store i16 %i.z, ptr %i.d, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.az, ptr %i.ex, align 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.et, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.d, ptr %i.ez, align 8
  %i.fa = sext i32 %i.el to i64
  %i.fb = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.fa, i32 noundef 1)
  %.not.i55 = icmp eq i32 %i.fb, 0
  br i1 %.not.i55, label %seek_forward.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #65
  %i.fc = icmp sgt i32 %i.el, 0
  br i1 %i.fc, label %.lr.ph.i, label %.sink.split.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.i
  %.01215.i = phi i32 [ %i.fh, %.lr.ph.i ], [ %i.el, %bb.z ] ; 2 uses
  %i.fd = tail call i32 @llvm.umin.i32(i32 %.01215.i, i32 1024)
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.fe, ptr noundef %0)
  %i.fg = trunc i64 %i.ff to i32                  ; 2 uses
  %.not14.i = icmp ne i32 %i.fg, 0
  %i.fh = sub nsw i32 %.01215.i, %i.fg            ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  %or.cond = select i1 %.not14.i, i1 %i.fi, i1 false
  br i1 %or.cond, label %.lr.ph.i, label %.sink.split.i, !llvm.loop !24

.sink.split.i:                                    ; preds = %.lr.ph.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #65
  br label %seek_forward.exit

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.fj = load ptr, ptr @stderr, align 8
  %i.fk = tail call i64 @fwrite(ptr nonnull @.str.70, i64 92, i64 1, ptr %i.fj) #67 ; 0 uses
  br label %seek_forward.exit

seek_forward.exit:                                ; preds = %.sink.split.i, %bb.y, %bb.aa, %bb.v, %bb.t, %bb.r, %bb.p, %bb.l, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.b ], [ 0, %bb.aa ], [ 0, %bb.r ], [ 1, %bb.y ], [ 1, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #65
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local double @read_IEEE80(ptr noundef readonly captures(none) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = zext i8 %i.a to i32
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = and i32 %i.c, 32512
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = icmp eq i32 %i.h, 32767
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp sgt i8 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not19 = icmp eq i8 %i.a, 0
  %. = select i1 %.not19, double +inf, double -inf
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = zext i8 %i.j to i64
  %i.m = shl nuw nsw i64 %i.l, 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 16
  %i.r = or disjoint i64 %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = or disjoint i64 %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = or disjoint i64 %i.w, %i.z
  %i.ab = uitofp nneg i64 %i.aa to double
  %i.ac = tail call double @ldexp(double noundef %i.ab, i32 noundef 32) #65
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = sitofp i32 %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = add nsw i32 %i.h, -16446
  %i.aj = tail call double @ldexp(double noundef %i.ah, i32 noundef %i.ai) #65
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi double [ %i.aj, %bb.d ], [ %., %bb.c ], [ +inf, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @find_aiff_chunk(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #13 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [8 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #65
  %i.c = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %i.d = icmp ult i64 %i.c, 8
  br i1 %i.d, label %.critedge._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  br label %bb.b

.critedge.critedge:                               ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #65
  br label %.critedge.backedge

.critedge._crit_edge:                             ; preds = %.critedge.backedge, %bb.a
  %i.i = load ptr, ptr @stderr, align 8
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.174, i64 38, i64 1, ptr %i.i) #67 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %.critedge.backedge
  %i.k = load i8, ptr %i.e, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw i32 %i.l, 24
  %i.n = load i8, ptr %i.f, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 16
  %i.q = or disjoint i32 %i.p, %i.m
  %i.r = load i8, ptr %i.g, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = or disjoint i32 %i.q, %i.t
  %i.v = load i8, ptr %i.h, align 1
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = or disjoint i32 %i.u, %i.w               ; 3 uses
  store i32 %i.x, ptr %2, align 4
  %i.y = load i32, ptr %i.b, align 1
  %i.z = load i32, ptr %1, align 1
  %i.aa = icmp ne i32 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = and i32 %i.w, 1
  %.not7 = icmp eq i32 %i.ac, 0
  br i1 %.not7, label %thread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = add i32 %i.x, 1                         ; 2 uses
  store i32 %i.ad, ptr %2, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c, %bb.d
  %i.ae = phi i32 [ %i.ad, %bb.d ], [ %i.x, %bb.c ] ; 3 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.af, i32 noundef 1)
  %.not.i = icmp eq i32 %i.ag, 0
end_hunk_0
begin_hunk_1_@dradbg:bb.a
  %i.ahy = shl nsw i64 %i.ahx, 2                  ; 4 uses
  %scevgep1721 = getelementptr i8, ptr %scevgep1720, i64 %i.ahy ; 2 uses
  %scevgep1723 = getelementptr i8, ptr %scevgep1722, i64 %i.ahy ; 2 uses
  %i.ahz = sext i32 %indvars.iv1121 to i64
  %i.aia = shl nsw i64 %i.ahz, 2                  ; 2 uses
  %scevgep1725 = getelementptr i8, ptr %scevgep1724, i64 %i.aia
  %scevgep1727 = getelementptr i8, ptr %scevgep1726, i64 %i.aia
  %scevgep1729 = getelementptr i8, ptr %scevgep1728, i64 %i.ahy
  %scevgep1731 = getelementptr i8, ptr %scevgep1730, i64 %i.ahy
  %i.aib = sext i32 %indvars.iv1121 to i64        ; 3 uses
  br i1 %brmerge1200, label %._crit_edge847, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.n
  %i.aic = sext i32 %indvars.iv1125 to i64
  %bound01732 = icmp ult ptr %scevgep1721, %scevgep1727
  %bound11733 = icmp ult ptr %scevgep1725, %scevgep1723
  %found.conflict1734 = and i1 %bound01732, %bound11733
  %bound01735 = icmp ult ptr %scevgep1721, %scevgep1731
  %bound11736 = icmp ult ptr %scevgep1729, %scevgep1723
  %found.conflict1737 = and i1 %bound01735, %bound11736
  %conflict.rdx1738 = or i1 %found.conflict1734, %found.conflict1737
  %i.aid = add nsw i64 %i.aht, %i.aib
  %invariant.gep1862 = getelementptr [4 x i8], ptr %9, i64 %i.aib
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge844.us
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %._crit_edge844.us ], [ %i.aic, %.preheader.us.preheader ] ; 4 uses
  %.10553846.us = phi i32 [ %i.ajq, %._crit_edge844.us ], [ 0, %.preheader.us.preheader ]
  %brmerge1868 = select i1 %min.iters.check1740, i1 true, i1 %conflict.rdx1738
  br i1 %brmerge1868, label %scalar.ph1739.preheader, label %vector.ph1741

vector.ph1741:                                    ; preds = %.preheader.us
  %i.aie = add i64 %indvars.iv1127, %i.aht
  %invariant.op1864 = add i64 %indvars.iv1127, 1
  br label %vector.body1744

vector.body1744:                                  ; preds = %vector.body1744, %vector.ph1741
  %index1745 = phi i64 [ 0, %vector.ph1741 ], [ %index.next1759, %vector.body1744 ] ; 2 uses
  %i.aif = shl i64 %index1745, 1                  ; 2 uses
  %gep1863 = getelementptr [4 x i8], ptr %invariant.gep1862, i64 %i.aif
  %i.aig = getelementptr i8, ptr %gep1863, i64 4  ; 2 uses
  %wide.vec1746 = load <8 x float>, ptr %i.aig, align 4, !alias.scope !1248 ; 2 uses
  %.reass1865 = add i64 %i.aif, %invariant.op1864 ; 2 uses
  %i.aih = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1865 ; 2 uses
  %wide.vec1749 = load <8 x float>, ptr %i.aih, align 4, !alias.scope !1251 ; 2 uses
  %i.aii = fmul <8 x float> %wide.vec1746, %wide.vec1749
  %i.aij = shufflevector <8 x float> %i.aii, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aik = fmul <8 x float> %wide.vec1746, %wide.vec1749
  %i.ail = shufflevector <8 x float> %i.aik, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aim = fsub <4 x float> %i.aij, %i.ail
  %i.ain = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1865
  %wide.vec1752 = load <8 x float>, ptr %i.aig, align 4, !alias.scope !1248 ; 2 uses
  %strided.vec1753 = shufflevector <8 x float> %wide.vec1752, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1754 = shufflevector <8 x float> %wide.vec1752, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1755 = load <8 x float>, ptr %i.aih, align 4, !alias.scope !1251 ; 2 uses
  %strided.vec1756 = shufflevector <8 x float> %wide.vec1755, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1757 = shufflevector <8 x float> %wide.vec1755, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aio = fmul <4 x float> %strided.vec1753, %strided.vec1757
  %i.aip = fmul <4 x float> %strided.vec1754, %strided.vec1756
  %i.aiq = fadd <4 x float> %i.aio, %i.aip
  %interleaved.vec1758 = shufflevector <4 x float> %i.aim, <4 x float> %i.aiq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1758, ptr %i.ain, align 4, !alias.scope !1253, !noalias !1255
  %index.next1759 = add nuw i64 %index1745, 4     ; 2 uses
  %i.air = icmp eq i64 %index.next1759, %n.vec1743
  br i1 %i.air, label %middle.block1760, label %vector.body1744, !llvm.loop !1256

middle.block1760:                                 ; preds = %vector.body1744
  br i1 %cmp.n1761, label %._crit_edge844.us, label %scalar.ph1739.preheader

scalar.ph1739.preheader:                          ; preds = %.preheader.us, %middle.block1760
  %indvars.iv1129.ph = phi i64 [ %i.aie, %middle.block1760 ], [ %indvars.iv1127, %.preheader.us ]
  %indvars.iv1123.ph = phi i64 [ %i.aid, %middle.block1760 ], [ %i.aib, %.preheader.us ]
  %.7841.us.ph = phi i32 [ %i.ahw, %middle.block1760 ], [ 2, %.preheader.us ]
  br label %scalar.ph1739

scalar.ph1739:                                    ; preds = %scalar.ph1739.preheader, %scalar.ph1739
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %scalar.ph1739 ], [ %indvars.iv1129.ph, %scalar.ph1739.preheader ] ; 2 uses
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %scalar.ph1739 ], [ %indvars.iv1123.ph, %scalar.ph1739.preheader ] ; 2 uses
  %.7841.us = phi i32 [ %i.ajo, %scalar.ph1739 ], [ %.7841.us.ph, %scalar.ph1739.preheader ]
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, 2 ; 2 uses
  %indvars.iv.next1130 = add nsw i64 %indvars.iv1129, 2 ; 3 uses
  %i.ais = getelementptr [4 x i8], ptr %9, i64 %indvars.iv1123
  %i.ait = getelementptr i8, ptr %i.ais, i64 4    ; 2 uses
  %i.aiu = load float, ptr %i.ait, align 4
  %i.aiv = add nsw i64 %indvars.iv1129, 1         ; 2 uses
  %i.aiw = getelementptr inbounds [4 x i8], ptr %7, i64 %i.aiv ; 2 uses
  %i.aix = load float, ptr %i.aiw, align 4
  %i.aiy = fmul float %i.aiu, %i.aix
  %i.aiz = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next1124 ; 2 uses
  %i.aja = load float, ptr %i.aiz, align 4
  %i.ajb = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1130 ; 2 uses
  %i.ajc = load float, ptr %i.ajb, align 4
  %i.ajd = fmul float %i.aja, %i.ajc
  %i.aje = fsub float %i.aiy, %i.ajd
  %i.ajf = getelementptr inbounds [4 x i8], ptr %5, i64 %i.aiv
  store float %i.aje, ptr %i.ajf, align 4
  %i.ajg = load float, ptr %i.ait, align 4
  %i.ajh = load float, ptr %i.ajb, align 4
  %i.aji = fmul float %i.ajg, %i.ajh
  %i.ajj = load float, ptr %i.aiz, align 4
  %i.ajk = load float, ptr %i.aiw, align 4
  %i.ajl = fmul float %i.ajj, %i.ajk
  %i.ajm = fadd float %i.aji, %i.ajl
  %i.ajn = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1130
  store float %i.ajm, ptr %i.ajn, align 4
  %i.ajo = add nuw nsw i32 %.7841.us, 2           ; 2 uses
  %i.ajp = icmp slt i32 %i.ajo, %0
  br i1 %i.ajp, label %scalar.ph1739, label %._crit_edge844.us, !llvm.loop !1257

._crit_edge844.us:                                ; preds = %scalar.ph1739, %middle.block1760
  %indvars.iv.next1128 = add i64 %indvars.iv1127, %i.ahe
  %i.ajq = add nuw nsw i32 %.10553846.us, 1       ; 2 uses
  %exitcond1135.not = icmp eq i32 %i.ajq, %2
  br i1 %exitcond1135.not, label %._crit_edge847, label %.preheader.us, !llvm.loop !1258

._crit_edge847:                                   ; preds = %._crit_edge844.us, %bb.n
  %i.ajr = add nuw nsw i32 %.10850, 1             ; 2 uses
  %indvars.iv.next1122 = add i32 %indvars.iv1121, %0
  %indvars.iv.next1126 = add i32 %indvars.iv1125, %i.f
  %exitcond1136.not = icmp eq i32 %i.ajr, %1
  br i1 %exitcond1136.not, label %.critedge, label %bb.n, !llvm.loop !1259

.critedge:                                        ; preds = %._crit_edge834, %._crit_edge847, %.preheader653, %._crit_edge782
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @icomp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load i32, ptr %i.a, align 4
  %i.c = load ptr, ptr %1, align 8
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 %i.b, %i.d
  ret i32 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #51

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptosi.sat.i8.f64(double) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fptosi.sat.i16.f64(double) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #64

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bitreverse.v2i32(<2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.rint.v4f32(<4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { mustprogress nofree norecurse nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nofree norecurse nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #52 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nofree norecurse nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #58 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #59 = { nofree norecurse nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #60 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #61 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #62 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #63 = { nofree nounwind }
attributes #64 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #65 = { nounwind }
attributes #66 = { nounwind willreturn memory(read) }
attributes #67 = { cold }
attributes #68 = { cold nounwind }
attributes #69 = { nounwind allocsize(1) }
attributes #70 = { cold noreturn nounwind }
attributes #71 = { noreturn nounwind }
attributes #72 = { nounwind allocsize(0) }
attributes #73 = { nounwind willreturn memory(none) }
attributes #74 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = distinct !{null}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = !{ptr @vorbis_analysis}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !6, !61}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!63}
!63 = distinct !{!63, !64}
!64 = distinct !{!64, !"LVerDomain"}
!65 = !{!66}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !6, !61}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !6, !61}
!74 = !{!75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = !{!78}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !6, !61}
!80 = distinct !{!80, !6}
!81 = distinct !{!81, !6}
!82 = distinct !{!82, !6}
!83 = distinct !{!83, !6}
!84 = distinct !{!84, !6}
!85 = distinct !{!85, !6}
!86 = distinct !{!86, !6}
!87 = distinct !{!87, !6}
!88 = distinct !{!88, !6}
end_hunk_1
