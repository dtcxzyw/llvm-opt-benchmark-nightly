inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 206
begin_hunk_0_@wav_open:bb.a
  %i.u = sub nsw i32 %.01215.i, %i.z              ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %seek_forward.exit.thread69, !llvm.loop !24

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.01215.i = phi i32 [ %i.u, %bb.k ], [ %i.q, %bb.j ] ; 2 uses
  %i.w = tail call i32 @llvm.umin.i32(i32 %.01215.i, i32 1024)
  %i.x = zext nneg i32 %i.w to i64
  %i.y = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.x, ptr noundef %0)
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %.not14.i = icmp eq i32 %i.z, 0
  br i1 %.not14.i, label %seek_forward.exit, label %bb.k

seek_forward.exit.thread69:                       ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %seek_forward.exit.thread

seek_forward.exit:                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %bb.y

seek_forward.exit.thread:                         ; preds = %bb.i, %seek_forward.exit.thread69, %bb.h
  %i.aa = load i16, ptr %i.b, align 16            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ag = load i16, ptr %i.af, align 4            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.ai = load i16, ptr %i.ah, align 2            ; 5 uses
  %i.aj = call fastcc i32 @find_wav_chunk(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef %i.c)
  %.not65 = icmp eq i32 %i.aj, 0
  br i1 %.not65, label %bb.y, label %bb.l

bb.l:                                             ; preds = %seek_forward.exit.thread
  switch i16 %i.aa, label %bb.n [
    i16 1, label %bb.m
    i16 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ak = sdiv i16 %i.ai, 8
  %i.al = sext i16 %i.ak to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.am = load ptr, ptr @stderr, align 8
  %i.an = tail call i64 @fwrite(ptr nonnull @.str.78, i64 88, i64 1, ptr %i.am) #64 ; 0 uses
  br label %bb.y

bb.o:                                             ; preds = %bb.l, %bb.m
  %wav_ieee_read.sink = phi ptr [ @wav_read, %bb.m ], [ @wav_ieee_read, %bb.l ]
  %.056 = phi i32 [ %i.al, %bb.m ], [ 4, %bb.l ]  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %wav_ieee_read.sink, ptr %i.ao, align 8
  %i.ap = sext i16 %i.ag to i32                   ; 2 uses
  %i.aq = sext i16 %i.ac to i32                   ; 2 uses
  %i.ar = mul nsw i32 %.056, %i.aq
  %i.as = icmp eq i32 %i.ar, %i.ap
  %i.at = sext i16 %i.ai to i32
  %i.au = shl nsw i32 %.056, 3
  %i.av = icmp eq i32 %i.au, %i.at
  %or.cond = select i1 %i.as, i1 %i.av, i1 false
  br i1 %or.cond, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  switch i16 %i.ai, label %bb.q [
    i16 24, label %bb.r
    i16 16, label %bb.r
    i16 8, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.aw = icmp eq i16 %i.ai, 32
  %i.ax = icmp eq i16 %i.aa, 3
  %or.cond13 = and i1 %i.ax, %i.aw
  br i1 %or.cond13, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.q
  %i.ay = sext i32 %i.ae to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.aq, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i16 0, ptr %i.bd, align 8
  store i16 %i.ac, ptr %i.d, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.ai, ptr %i.be, align 2
  %i.bf = load i32, ptr %i.c, align 4             ; 2 uses
  %.not66 = icmp eq i32 %i.bf, 0
  br i1 %.not66, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = udiv i32 %i.bf, %i.ap
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.bh, ptr %i.bi, align 8
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.bj = tail call i64 @ftell(ptr noundef %0)    ; 2 uses
  %i.bk = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.bm, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bn = tail call i64 @ftell(ptr noundef %0)
  %i.bo = sub nsw i64 %i.bn, %i.bj
  %i.bp = sext i16 %i.ag to i64
  %i.bq = sdiv i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8
  %i.bs = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.bj, i32 noundef 0) ; 0 uses
  %.pre = load i64, ptr %i.br, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s
  %i.bt = phi i64 [ 0, %bb.u ], [ %.pre, %bb.v ], [ %i.bh, %bb.s ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.d, ptr %i.bv, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.q, %bb.o
  %i.bw = load ptr, ptr @stderr, align 8
  %i.bx = tail call i64 @fwrite(ptr nonnull @.str.79, i64 92, i64 1, ptr %i.bw) #64 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %seek_forward.exit, %seek_forward.exit.thread, %bb.a, %bb.x, %bb.w, %bb.n, %bb.g, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.g ], [ 1, %bb.w ], [ 0, %bb.x ], [ 0, %bb.n ], [ 0, %seek_forward.exit ], [ 0, %bb.a ], [ 0, %seek_forward.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @wav_close(ptr noundef captures(none) %0) #18 {
bb.a:
  tail call void @free(ptr noundef %0) #62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @aiff_id(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #17 {
bb.a:
  %i.a = icmp slt i32 %1, 12
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1297239878
  %i.d = zext i1 %i.c to i32
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i16, ptr %i.e, align 1
  %i.g = xor i16 %i.f, 18753
  %i.h = getelementptr i8, ptr %i.e, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i16
  %i.k = xor i16 %i.j, 70
  %i.l = or i16 %i.g, %i.k
  %i.m = icmp ne i16 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %.not7 = icmp eq i32 %i.n, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.p, 67
  %switch.selectcmp.case2 = icmp eq i8 %i.p, 70
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.q = zext i1 %switch.selectcmp to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @aiff_open(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 %3) #13 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 3 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [8 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #62
  %i.d = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #69 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.f = load i8, ptr %i.e, align 1
  %.not50 = icmp eq i8 %i.f, 67
  %i.g = call fastcc i32 @find_aiff_chunk(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %i.b)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8
  %i.i = tail call i64 @fwrite(ptr nonnull @.str.59, i64 44, i64 1, ptr %i.h) #64 ; 0 uses
  br label %seek_forward.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.b, align 4              ; 3 uses
  %i.k = icmp ult i32 %i.j, 18
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.60, i64 47, i64 1, ptr %i.l) #64 ; 0 uses
  br label %seek_forward.exit

bb.e:                                             ; preds = %bb.c
  %i.n = zext i32 %i.j to i64                     ; 3 uses
  %i.o = alloca i8, i64 %i.n, align 16            ; 20 uses
  %i.p = call i64 @fread(ptr noundef nonnull %i.o, i64 noundef 1, i64 noundef %i.n, ptr noundef %0)
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = tail call i64 @fwrite(ptr nonnull @.str.61, i64 47, i64 1, ptr %i.r) #64 ; 0 uses
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
  %i.cd = tail call double @ldexp(double noundef %i.cc, i32 noundef 32) #62
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.cf = load i32, ptr %i.ce, align 2
  %i.cg = tail call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = fadd double %i.cd, %i.ch
  %i.cj = add nsw i32 %i.bi, -16446
  %i.ck = tail call double @ldexp(double noundef %i.ci, i32 noundef %i.cj) #62
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
  %i.cp = tail call i64 @fwrite(ptr nonnull @.str.62, i64 34, i64 1, ptr %i.co) #64 ; 0 uses
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
  %i.dj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str.65, i32 noundef %i.cz, i32 noundef %i.dc, i32 noundef %i.df, i32 noundef %i.di) #65 ; 0 uses
  br label %seek_forward.exit

bb.q:                                             ; preds = %bb.m, %bb.o, %read_IEEE80.exit
  %i.dk = call fastcc i32 @find_aiff_chunk(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef %i.b)
  %.not54 = icmp eq i32 %i.dk, 0
  br i1 %.not54, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dl = load ptr, ptr @stderr, align 8
  %i.dm = tail call i64 @fwrite(ptr nonnull @.str.67, i64 42, i64 1, ptr %i.dl) #64 ; 0 uses
  br label %seek_forward.exit

bb.s:                                             ; preds = %bb.q
  %i.dn = load i32, ptr %i.b, align 4
  %i.do = icmp ult i32 %i.dn, 8
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = load ptr, ptr @stderr, align 8
  %i.dq = tail call i64 @fwrite(ptr nonnull @.str.68, i64 45, i64 1, ptr %i.dp) #64 ; 0 uses
  br label %seek_forward.exit

bb.u:                                             ; preds = %bb.s
  %i.dr = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %i.ds = icmp ult i64 %i.dr, 8
  br i1 %i.ds, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dt = load ptr, ptr @stderr, align 8
  %i.du = tail call i64 @fwrite(ptr nonnull @.str.69, i64 44, i64 1, ptr %i.dt) #64 ; 0 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %seek_forward.exit

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.fj = load ptr, ptr @stderr, align 8
  %i.fk = tail call i64 @fwrite(ptr nonnull @.str.70, i64 92, i64 1, ptr %i.fj) #64 ; 0 uses
  br label %seek_forward.exit

seek_forward.exit:                                ; preds = %.sink.split.i, %bb.y, %bb.aa, %bb.v, %bb.t, %bb.r, %bb.p, %bb.l, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.b ], [ 0, %bb.aa ], [ 0, %bb.r ], [ 1, %bb.y ], [ 1, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local double @read_IEEE80(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #20 {
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
  %i.ac = tail call double @ldexp(double noundef %i.ab, i32 noundef 32) #62
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = sitofp i32 %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = add nsw i32 %i.h, -16446
  %i.aj = tail call double @ldexp(double noundef %i.ah, i32 noundef %i.ai) #62
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi double [ %i.aj, %bb.d ], [ %., %bb.c ], [ +inf, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @find_aiff_chunk(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #13 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = alloca [8 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %.critedge.backedge

.critedge._crit_edge:                             ; preds = %.critedge.backedge, %bb.a
  %i.i = load ptr, ptr @stderr, align 8
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.174, i64 38, i64 1, ptr %i.i) #64 ; 0 uses
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
