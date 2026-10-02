Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@wav_open:bb.a
  %i.r = sub nsw i32 %.01115.i, %i.w              ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %seek_forward.exit.thread73, !llvm.loop !3

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.01115.i = phi i32 [ %i.r, %bb.k ], [ %i.n, %bb.j ] ; 2 uses
  %i.t = tail call i32 @llvm.umin.i32(i32 %.01115.i, i32 1024)
  %i.u = zext nneg i32 %i.t to i64
  %i.v = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.u, ptr noundef %0)
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %.not14.i = icmp eq i32 %i.w, 0
  br i1 %.not14.i, label %seek_forward.exit, label %bb.k

seek_forward.exit.thread73:                       ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %seek_forward.exit.thread

seek_forward.exit:                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %bb.y

seek_forward.exit.thread:                         ; preds = %bb.i, %seek_forward.exit.thread73, %bb.h
  %i.x = load i16, ptr %i.b, align 16             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ad = load i16, ptr %i.ac, align 4            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.af = load i16, ptr %i.ae, align 2            ; 5 uses
  %i.ag = call fastcc i32 @find_wav_chunk(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef %i.c)
  %.not65 = icmp eq i32 %i.ag, 0
  br i1 %.not65, label %bb.y, label %bb.l

bb.l:                                             ; preds = %seek_forward.exit.thread
  switch i16 %i.x, label %bb.n [
    i16 1, label %bb.m
    i16 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ah = sdiv i16 %i.af, 8
  %i.ai = sext i16 %i.ah to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr @stderr, align 8
  %fwrite66 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 88, i64 1, ptr %i.aj) #64 ; 0 uses
  br label %bb.y

bb.o:                                             ; preds = %bb.l, %bb.m
  %wav_ieee_read.sink = phi ptr [ @wav_read, %bb.m ], [ @wav_ieee_read, %bb.l ]
  %.0 = phi i32 [ %i.ai, %bb.m ], [ 4, %bb.l ]    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %wav_ieee_read.sink, ptr %i.ak, align 8
  %i.al = sext i16 %i.ad to i32                   ; 2 uses
  %i.am = sext i16 %i.z to i32                    ; 2 uses
  %i.an = mul nsw i32 %.0, %i.am
  %i.ao = icmp eq i32 %i.an, %i.al
  %i.ap = sext i16 %i.af to i32
  %i.aq = shl nsw i32 %.0, 3
  %i.ar = icmp eq i32 %i.aq, %i.ap
  %or.cond = select i1 %i.ao, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  switch i16 %i.af, label %bb.q [
    i16 24, label %bb.r
    i16 16, label %bb.r
    i16 8, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.as = icmp eq i16 %i.af, 32
  %i.at = icmp eq i16 %i.x, 3
  %or.cond13 = and i1 %i.at, %i.as
  br i1 %or.cond13, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.q
  %i.au = sext i32 %i.ab to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.am, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i16 0, ptr %i.az, align 8
  store i16 %i.z, ptr %i.d, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.af, ptr %i.ba, align 2
  %i.bb = load i32, ptr %i.c, align 4             ; 2 uses
  %.not68 = icmp eq i32 %i.bb, 0
  br i1 %.not68, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = udiv i32 %i.bb, %i.al
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.bd, ptr %i.be, align 8
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.bf = tail call i64 @ftell(ptr noundef %0)    ; 2 uses
  %i.bg = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.bi, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bj = tail call i64 @ftell(ptr noundef %0)
  %i.bk = sub nsw i64 %i.bj, %i.bf
  %i.bl = sext i16 %i.ad to i64
  %i.bm = sdiv i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.bf, i32 noundef 0) ; 0 uses
  %.pre = load i64, ptr %i.bn, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s
  %i.bp = phi i64 [ 0, %bb.u ], [ %.pre, %bb.v ], [ %i.bd, %bb.s ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.d, ptr %i.br, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.q, %bb.o
  %i.bs = load ptr, ptr @stderr, align 8
  %fwrite67 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 92, i64 1, ptr %i.bs) #64 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %seek_forward.exit, %seek_forward.exit.thread, %bb.a, %bb.x, %bb.w, %bb.n, %bb.g, %bb.c
  %.056 = phi i32 [ 0, %bb.c ], [ 0, %bb.g ], [ 1, %bb.w ], [ 0, %bb.x ], [ 0, %bb.n ], [ 0, %seek_forward.exit ], [ 0, %bb.a ], [ 0, %seek_forward.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  ret i32 %.056
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
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
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
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.59, i64 44, i64 1, ptr %i.h) #64 ; 0 uses
  br label %seek_forward.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.b, align 4              ; 3 uses
  %i.j = icmp ult i32 %i.i, 18
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8
  %fwrite61 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 47, i64 1, ptr %i.k) #64 ; 0 uses
  br label %seek_forward.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64                     ; 3 uses
  %i.m = alloca i8, i64 %i.l, align 16            ; 17 uses
  %i.n = call i64 @fread(ptr noundef nonnull %i.m, i64 noundef 1, i64 noundef %i.l, ptr noundef %0)
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8
  %fwrite60 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 47, i64 1, ptr %i.p) #64 ; 0 uses
  br label %seek_forward.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.m, align 16
  %i.r = zext i8 %i.q to i16
  %i.s = shl nuw i16 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i16
  %i.w = or disjoint i16 %i.s, %i.v               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %4 = load i32, ptr %i.x, align 2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = zext i8 %i.z to i16
  %i.ab = shl nuw i16 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i16
  %i.af = or disjoint i16 %i.ab, %i.ae            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ah = load i8, ptr %i.ag, align 8             ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = and i32 %i.aj, 32512
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ak, %i.an            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.aq = load i8, ptr %i.ap, align 2             ; 2 uses
  %i.ar = icmp eq i32 %i.ao, 32767
  br i1 %i.ar, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp sgt i8 %i.aq, -1
  br i1 %.not.i, label %bb.i, label %read_IEEE80.exit

bb.i:                                             ; preds = %bb.h
  %.not19.i = icmp eq i8 %i.ah, 0
  %..i = select i1 %.not19.i, double +inf, double -inf
  br label %read_IEEE80.exit

bb.j:                                             ; preds = %bb.g
  %i.as = zext i8 %i.aq to i64
  %i.at = shl nuw nsw i64 %i.as, 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 11
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 16
  %i.ay = or disjoint i64 %i.ax, %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 8
  %i.bd = or disjoint i64 %i.ay, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 13
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bd, %i.bg
  %i.bi = uitofp nneg i64 %i.bh to double
  %i.bj = tail call double @ldexp(double noundef %i.bi, i32 noundef 32) #62
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %i.bl = load i32, ptr %i.bk, align 2
  %i.bm = tail call i32 @llvm.bswap.i32(i32 %i.bl)
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fadd double %i.bj, %i.bn
  %i.bp = add nsw i32 %i.ao, -16446
  %i.bq = tail call double @ldexp(double noundef %i.bo, i32 noundef %i.bp) #62
  br label %read_IEEE80.exit

read_IEEE80.exit:                                 ; preds = %bb.h, %bb.i, %bb.j
  %.0.i = phi double [ %i.bq, %bb.j ], [ %..i, %bb.i ], [ +inf, %bb.h ]
  %i.br = fptosi double %.0.i to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i16 1, ptr %i.bs, align 8
  br i1 %.not50, label %bb.k, label %bb.q

bb.k:                                             ; preds = %read_IEEE80.exit
  %i.bt = icmp ult i32 %i.i, 22
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr @stderr, align 8
  %fwrite59 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 34, i64 1, ptr %i.bu) #64 ; 0 uses
  br label %seek_forward.exit

bb.m:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 18 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 1
  %i.bx = icmp ne i32 %i.bw, 1162760014
  %i.by = zext i1 %i.bx to i32
  %.not51 = icmp eq i32 %i.by, 0
  br i1 %.not51, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load i32, ptr %i.bv, align 1
  %i.ca = icmp ne i32 %i.bz, 1953984371
  %i.cb = zext i1 %i.ca to i32
  %.not53 = icmp eq i32 %i.cb, 0
  br i1 %.not53, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 0, ptr %i.bs, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr @stderr, align 8
  %i.cd = load i8, ptr %i.bv, align 2
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 19
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.cj = load i8, ptr %i.ci, align 4
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32
  %i.co = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.65, i32 noundef %i.ce, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cn) #65 ; 0 uses
  br label %seek_forward.exit

bb.q:                                             ; preds = %bb.m, %bb.o, %read_IEEE80.exit
  %i.cp = call fastcc i32 @find_aiff_chunk(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef %i.b)
  %.not54 = icmp eq i32 %i.cp, 0
  br i1 %.not54, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = load ptr, ptr @stderr, align 8
  %fwrite55 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 42, i64 1, ptr %i.cq) #64 ; 0 uses
  br label %seek_forward.exit

bb.s:                                             ; preds = %bb.q
  %i.cr = load i32, ptr %i.b, align 4
  %i.cs = icmp ult i32 %i.cr, 8
  br i1 %i.cs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ct = load ptr, ptr @stderr, align 8
  %fwrite58 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 45, i64 1, ptr %i.ct) #64 ; 0 uses
  br label %seek_forward.exit

bb.u:                                             ; preds = %bb.s
  %i.cu = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %i.cv = icmp ult i64 %i.cu, 8
  br i1 %i.cv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr @stderr, align 8
  %fwrite57 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 44, i64 1, ptr %i.cw) #64 ; 0 uses
  br label %seek_forward.exit

bb.w:                                             ; preds = %bb.u
  %6 = load i32, ptr %i.c, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)      ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %8 = load i32, ptr %i.cx, align 4
  %i.cy = icmp eq i32 %8, 0
  br i1 %i.cy, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  switch i16 %i.af, label %bb.aa [
    i16 16, label %bb.y
    i16 8, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.cz = sext i32 %i.br to i64
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %i.cz, ptr %i.da, align 8
  %i.db = sext i16 %i.w to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.db, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr @wav_read, ptr %i.dd, align 8
  %i.de = sext i32 %5 to i64                      ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %0, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.dh, align 8
  store i16 %i.w, ptr %i.d, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.af, ptr %i.di, align 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.de, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.d, ptr %i.dk, align 8
  %i.dl = sext i32 %7 to i64
  %i.dm = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.dl, i32 noundef 1)
  %.not.i62 = icmp eq i32 %i.dm, 0
  br i1 %.not.i62, label %seek_forward.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.dn = icmp sgt i32 %7, 0
  br i1 %i.dn, label %.lr.ph.i, label %.sink.split.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.i
  %.01115.i = phi i32 [ %i.ds, %.lr.ph.i ], [ %7, %bb.z ] ; 2 uses
  %i.do = tail call i32 @llvm.umin.i32(i32 %.01115.i, i32 1024)
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.dp, ptr noundef %0)
  %i.dr = trunc i64 %i.dq to i32                  ; 2 uses
  %.not14.i = icmp ne i32 %i.dr, 0
  %i.ds = sub nsw i32 %.01115.i, %i.dr            ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  %or.cond = select i1 %.not14.i, i1 %i.dt, i1 false
  br i1 %or.cond, label %.lr.ph.i, label %.sink.split.i, !llvm.loop !3

.sink.split.i:                                    ; preds = %.lr.ph.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %seek_forward.exit

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.du = load ptr, ptr @stderr, align 8
  %fwrite56 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 92, i64 1, ptr %i.du) #64 ; 0 uses
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
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.174, i64 38, i64 1, ptr %i.i) #64 ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %.critedge.backedge
  %i.j = load i8, ptr %i.e, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw i32 %i.k, 24
  %i.m = load i8, ptr %i.f, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 16
  %i.p = or disjoint i32 %i.o, %i.l
  %i.q = load i8, ptr %i.g, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = or disjoint i32 %i.p, %i.s
  %i.u = load i8, ptr %i.h, align 1
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = or disjoint i32 %i.t, %i.v               ; 3 uses
  store i32 %i.w, ptr %2, align 4
  %i.x = load i32, ptr %i.b, align 1
  %i.y = load i32, ptr %1, align 1
  %i.z = icmp ne i32 %i.x, %i.y
  %i.aa = zext i1 %i.z to i32
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = and i32 %i.v, 1
  %.not7 = icmp eq i32 %i.ab, 0
  br i1 %.not7, label %thread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i32 %i.w, 1                         ; 2 uses
  store i32 %i.ac, ptr %2, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c, %bb.d
  %i.ad = phi i32 [ %i.ac, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.ae, i32 noundef 1)
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %.critedge.backedge, label %bb.e

.critedge.backedge:                               ; preds = %thread-pre-split, %.critedge.critedge
  %i.ag = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %i.ah = icmp ult i64 %i.ag, 8
  br i1 %i.ah, label %.critedge._crit_edge, label %bb.b

bb.e:                                             ; preds = %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.ai = icmp sgt i32 %i.ad, 0
  br i1 %i.ai, label %.lr.ph.i, label %.critedge.critedge

bb.f:                                             ; preds = %.lr.ph.i
  %i.aj = sub nsw i32 %.01115.i, %i.ao            ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i, label %.critedge.critedge, !llvm.loop !3

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.01115.i = phi i32 [ %i.aj, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %i.al = tail call i32 @llvm.umin.i32(i32 %.01115.i, i32 1024)
  %i.am = zext nneg i32 %i.al to i64
  %i.an = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.am, ptr noundef %0)
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %.not14.i = icmp eq i32 %i.ao, 0
  br i1 %.not14.i, label %.sink.split.i, label %bb.f

.sink.split.i:                                    ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.sink.split.i, %.critedge._crit_edge
  %.0 = phi i32 [ 0, %.critedge._crit_edge ], [ 0, %.sink.split.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i64 -9223372036854775808, 4294967296) i64 @wav_read(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2
  %i.c = sdiv i16 %i.b, 8
  %i.d = sext i16 %i.c to i32                     ; 2 uses
end_hunk_0
begin_hunk_1_@dradbg:bb.a
  %i.agq = zext nneg i32 %0 to i64                ; 2 uses
  %scevgep1699 = getelementptr i8, ptr %5, i64 4
  %i.agr = add nsw i32 %2, -1
  %i.ags = zext i32 %i.agr to i64
  %i.agt = mul nuw nsw i64 %i.agq, %i.ags
  %i.agu = shl i64 %i.agt, 2
  %i.agv = add nsw i32 %0, -3
  %i.agw = lshr i32 %i.agv, 1
  %i.agx = zext nneg i32 %i.agw to i64
  %i.agy = shl nuw nsw i64 %i.agx, 3              ; 2 uses
  %i.agz = add i64 %i.agu, %i.agy
  %i.aha = add i64 %i.agz, 12                     ; 2 uses
  %scevgep1701 = getelementptr i8, ptr %5, i64 %i.aha
  %scevgep1703 = getelementptr i8, ptr %9, i64 4
  %i.ahb = getelementptr i8, ptr %9, i64 %i.agy
  %scevgep1705 = getelementptr i8, ptr %i.ahb, i64 12
  %scevgep1707 = getelementptr i8, ptr %7, i64 4
  %scevgep1709 = getelementptr i8, ptr %7, i64 %i.aha
  %i.ahc = add nsw i32 %0, -3                     ; 2 uses
  %i.ahd = lshr i32 %i.ahc, 1
  %narrow1751 = add nuw i32 %i.ahd, 1
  %i.ahe = zext i32 %narrow1751 to i64            ; 2 uses
  %min.iters.check1719 = icmp ult i32 %i.ahc, 6
  %n.vec1721 = and i64 %i.ahe, 4294967292         ; 4 uses
  %i.ahf = shl nuw nsw i64 %n.vec1721, 1          ; 2 uses
  %i.ahg = trunc nuw i64 %n.vec1721 to i32
  %i.ahh = shl i32 %i.ahg, 1
  %i.ahi = or disjoint i32 %i.ahh, 2
  %cmp.n1739 = icmp eq i64 %n.vec1721, %i.ahe
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge854
  %indvars.iv1147 = phi i32 [ -1, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1148, %._crit_edge854 ] ; 3 uses
  %indvars.iv1141 = phi i32 [ %i.d, %.preheader.lr.ph.preheader ], [ %indvars.iv.next1142, %._crit_edge854 ] ; 3 uses
  %.10625855 = phi i32 [ 1, %.preheader.lr.ph.preheader ], [ %i.ajb, %._crit_edge854 ]
  %i.ahj = sext i32 %indvars.iv1141 to i64
  %i.ahk = shl nsw i64 %i.ahj, 2                  ; 4 uses
  %scevgep1700 = getelementptr i8, ptr %scevgep1699, i64 %i.ahk ; 2 uses
  %scevgep1702 = getelementptr i8, ptr %scevgep1701, i64 %i.ahk ; 2 uses
  %i.ahl = sext i32 %indvars.iv1147 to i64
  %i.ahm = shl nsw i64 %i.ahl, 2                  ; 2 uses
  %scevgep1704 = getelementptr i8, ptr %scevgep1703, i64 %i.ahm
  %scevgep1706 = getelementptr i8, ptr %scevgep1705, i64 %i.ahm
  %scevgep1708 = getelementptr i8, ptr %scevgep1707, i64 %i.ahk
  %scevgep1710 = getelementptr i8, ptr %scevgep1709, i64 %i.ahk
  %i.ahn = sext i32 %indvars.iv1141 to i64
  %i.aho = sext i32 %indvars.iv1147 to i64        ; 3 uses
  %bound01711 = icmp ult ptr %scevgep1700, %scevgep1706
  %bound11712 = icmp ult ptr %scevgep1704, %scevgep1702
  %found.conflict1713 = and i1 %bound01711, %bound11712
  %bound01714 = icmp ult ptr %scevgep1700, %scevgep1710
  %bound11715 = icmp ult ptr %scevgep1708, %scevgep1702
  %found.conflict1716 = and i1 %bound01714, %bound11715
  %conflict.rdx1717 = or i1 %found.conflict1713, %found.conflict1716
  %i.ahp = add nsw i64 %i.ahf, %i.aho
  %invariant.gep1846 = getelementptr [4 x i8], ptr %9, i64 %i.aho
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge851
  %indvars.iv1143 = phi i64 [ %i.ahn, %.preheader.lr.ph ], [ %indvars.iv.next1144, %._crit_edge851 ] ; 4 uses
  %.10614852 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aja, %._crit_edge851 ]
  %brmerge1852 = select i1 %min.iters.check1719, i1 true, i1 %conflict.rdx1717
  br i1 %brmerge1852, label %scalar.ph1718.preheader, label %vector.ph1720

vector.ph1720:                                    ; preds = %.preheader
  %i.ahq = add i64 %indvars.iv1143, %i.ahf
  %invariant.op1848 = add nuw i64 %indvars.iv1143, 1
  br label %vector.body1722

vector.body1722:                                  ; preds = %vector.body1722, %vector.ph1720
  %index1723 = phi i64 [ 0, %vector.ph1720 ], [ %index.next1737, %vector.body1722 ] ; 2 uses
  %i.ahr = shl i64 %index1723, 1                  ; 2 uses
  %gep1847 = getelementptr [4 x i8], ptr %invariant.gep1846, i64 %i.ahr
  %i.ahs = getelementptr i8, ptr %gep1847, i64 4  ; 2 uses
  %wide.vec1724 = load <8 x float>, ptr %i.ahs, align 4, !alias.scope !1256 ; 2 uses
  %strided.vec1725 = shufflevector <8 x float> %wide.vec1724, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1726 = shufflevector <8 x float> %wide.vec1724, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %.reass1849 = add nuw i64 %i.ahr, %invariant.op1848 ; 2 uses
  %i.aht = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1849 ; 2 uses
  %wide.vec1727 = load <8 x float>, ptr %i.aht, align 4, !alias.scope !1257 ; 2 uses
  %strided.vec1728 = shufflevector <8 x float> %wide.vec1727, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1729 = shufflevector <8 x float> %wide.vec1727, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ahu = fmul <4 x float> %strided.vec1725, %strided.vec1728
  %i.ahv = fmul <4 x float> %strided.vec1726, %strided.vec1729
  %i.ahw = fsub <4 x float> %i.ahu, %i.ahv
  %i.ahx = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1849
  %wide.vec1730 = load <8 x float>, ptr %i.ahs, align 4, !alias.scope !1256 ; 2 uses
  %strided.vec1731 = shufflevector <8 x float> %wide.vec1730, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1732 = shufflevector <8 x float> %wide.vec1730, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1733 = load <8 x float>, ptr %i.aht, align 4, !alias.scope !1257 ; 2 uses
  %strided.vec1734 = shufflevector <8 x float> %wide.vec1733, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1735 = shufflevector <8 x float> %wide.vec1733, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ahy = fmul <4 x float> %strided.vec1731, %strided.vec1735
  %i.ahz = fmul <4 x float> %strided.vec1732, %strided.vec1734
  %i.aia = fadd <4 x float> %i.ahy, %i.ahz
  %interleaved.vec1736 = shufflevector <4 x float> %i.ahw, <4 x float> %i.aia, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1736, ptr %i.ahx, align 4, !alias.scope !1258, !noalias !1259
  %index.next1737 = add nuw i64 %index1723, 4     ; 2 uses
  %i.aib = icmp eq i64 %index.next1737, %n.vec1721
  br i1 %i.aib, label %middle.block1738, label %vector.body1722, !llvm.loop !1226

middle.block1738:                                 ; preds = %vector.body1722
  br i1 %cmp.n1739, label %._crit_edge851, label %scalar.ph1718.preheader

scalar.ph1718.preheader:                          ; preds = %.preheader, %middle.block1738
  %indvars.iv1149.ph = phi i64 [ %i.ahp, %middle.block1738 ], [ %i.aho, %.preheader ]
  %indvars.iv1145.ph = phi i64 [ %i.ahq, %middle.block1738 ], [ %indvars.iv1143, %.preheader ]
  %.7633848.ph = phi i32 [ %i.ahi, %middle.block1738 ], [ 2, %.preheader ]
  br label %scalar.ph1718

scalar.ph1718:                                    ; preds = %scalar.ph1718.preheader, %scalar.ph1718
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %scalar.ph1718 ], [ %indvars.iv1149.ph, %scalar.ph1718.preheader ] ; 2 uses
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %scalar.ph1718 ], [ %indvars.iv1145.ph, %scalar.ph1718.preheader ] ; 2 uses
  %.7633848 = phi i32 [ %i.aiy, %scalar.ph1718 ], [ %.7633848.ph, %scalar.ph1718.preheader ]
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, 2 ; 2 uses
  %indvars.iv.next1146 = add nuw nsw i64 %indvars.iv1145, 2 ; 3 uses
  %i.aic = getelementptr [4 x i8], ptr %9, i64 %indvars.iv1149
  %i.aid = getelementptr i8, ptr %i.aic, i64 4    ; 2 uses
  %i.aie = load float, ptr %i.aid, align 4
  %i.aif = add nuw nsw i64 %indvars.iv1145, 1     ; 2 uses
  %i.aig = getelementptr inbounds [4 x i8], ptr %7, i64 %i.aif ; 2 uses
  %i.aih = load float, ptr %i.aig, align 4
  %i.aii = fmul float %i.aie, %i.aih
  %i.aij = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next1150 ; 2 uses
  %i.aik = load float, ptr %i.aij, align 4
  %i.ail = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1146 ; 2 uses
  %i.aim = load float, ptr %i.ail, align 4
  %i.ain = fmul float %i.aik, %i.aim
  %i.aio = fsub float %i.aii, %i.ain
  %i.aip = getelementptr inbounds [4 x i8], ptr %5, i64 %i.aif
  store float %i.aio, ptr %i.aip, align 4
  %i.aiq = load float, ptr %i.aid, align 4
  %i.air = load float, ptr %i.ail, align 4
  %i.ais = fmul float %i.aiq, %i.air
  %i.ait = load float, ptr %i.aij, align 4
  %i.aiu = load float, ptr %i.aig, align 4
  %i.aiv = fmul float %i.ait, %i.aiu
  %i.aiw = fadd float %i.ais, %i.aiv
  %i.aix = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1146
  store float %i.aiw, ptr %i.aix, align 4
  %i.aiy = add nuw nsw i32 %.7633848, 2           ; 2 uses
  %i.aiz = icmp slt i32 %i.aiy, %0
  br i1 %i.aiz, label %scalar.ph1718, label %._crit_edge851, !llvm.loop !1227

._crit_edge851:                                   ; preds = %scalar.ph1718, %middle.block1738
  %indvars.iv.next1144 = add i64 %indvars.iv1143, %i.agq
  %i.aja = add nuw nsw i32 %.10614852, 1          ; 2 uses
  %exitcond1155.not = icmp eq i32 %i.aja, %2
  br i1 %exitcond1155.not, label %._crit_edge854, label %.preheader, !llvm.loop !1228

._crit_edge854:                                   ; preds = %._crit_edge851
  %i.ajb = add nuw nsw i32 %.10625855, 1          ; 2 uses
  %indvars.iv.next1142 = add i32 %indvars.iv1141, %i.d
  %indvars.iv.next1148 = add i32 %indvars.iv1147, %0
  %exitcond1156.not = icmp eq i32 %i.ajb, %1
  br i1 %exitcond1156.not, label %.critedge, label %.preheader.lr.ph, !llvm.loop !1229

.critedge:                                        ; preds = %._crit_edge840, %._crit_edge854, %.lr.ph859, %.lr.ph845, %bb.h, %bb.j, %._crit_edge786.split
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @icomp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load i32, ptr %i.a, align 4
  %i.c = load ptr, ptr %1, align 8
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 %i.b, %i.d
  ret i32 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #60

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
declare i32 @llvm.bswap.i32(i32) #30

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
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptosi.sat.i8.f64(double) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fptosi.sat.i16.f64(double) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #61

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #30

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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.rint.v4f32(<4 x float>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #32 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #51 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #58 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #59 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #60 = { nofree nounwind }
attributes #61 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #62 = { nounwind }
attributes #63 = { nounwind willreturn memory(read) }
attributes #64 = { cold }
attributes #65 = { cold nounwind }
attributes #66 = { nounwind allocsize(1) }
attributes #67 = { cold noreturn nounwind }
attributes #68 = { noreturn nounwind }
attributes #69 = { nounwind allocsize(0) }
attributes #70 = { nounwind willreturn memory(none) }
attributes #71 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !{!0, !42}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{!3, !42}
!4 = distinct !{!4, !42}
!5 = distinct !{!5, !42}
!6 = distinct !{!6, !42}
!7 = distinct !{!7, !42}
!8 = distinct !{!8, !42}
!9 = distinct !{!9, !42}
!10 = distinct !{!10, !42}
!11 = distinct !{!11, !42}
!12 = distinct !{!12, !42}
!13 = distinct !{!13, !42}
!14 = distinct !{!14, !42}
!15 = distinct !{!15, !42}
!16 = distinct !{!16, !42}
!17 = distinct !{null}
!18 = distinct !{!18, !42}
!19 = distinct !{!19, !42}
!20 = distinct !{!20, !42}
!21 = distinct !{!21, !42}
!22 = distinct !{!22, !42}
!23 = distinct !{!23, !42}
!24 = distinct !{!24, !42}
!25 = distinct !{!25, !42}
!26 = distinct !{!26, !42}
!27 = distinct !{!27, !42}
!28 = distinct !{!28, !42}
!29 = distinct !{!29, !42}
!30 = distinct !{!30, !42}
!31 = distinct !{!31, !42}
!32 = distinct !{!32, !42}
!33 = distinct !{!33, !42}
!34 = distinct !{!34, !42}
!35 = distinct !{!35, !42}
!36 = distinct !{null}
!37 = distinct !{!37, !42}
!38 = !{i32 8, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"llvm.loop.peeled.count", i32 1}
!47 = !{!"llvm.loop.unswitch.partial.disable"}
!48 = !{ptr @oggpackB_write, ptr @oggpack_write}
!49 = distinct !{null}
!50 = distinct !{!50, !42}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, !42}
!53 = distinct !{!53, !42}
!54 = distinct !{!54, !42}
!55 = distinct !{!55, !42}
!56 = distinct !{!56, !42}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42}
!59 = distinct !{!59, !42}
!60 = distinct !{!60, !43}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !42}
!63 = !{ptr @vorbis_analysis}
!64 = distinct !{!64, !42}
!65 = distinct !{!65, !42}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !42}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !42}
!70 = distinct !{!70, !42}
!71 = distinct !{!71, !42}
!72 = distinct !{!72, !42}
!73 = distinct !{!73, !42}
!74 = distinct !{!74, !42}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !42}
end_hunk_1
