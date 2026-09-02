Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_write?download=true
inline.NumInlined: 97
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 28
begin_hunk_0_@stbiw__write_flush:bb.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.c(ptr noundef %i.e, ptr noundef nonnull %i.f, i32 noundef %i.b) #25
  store i32 0, ptr %i.a, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__putc(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !17
  %i.b = load ptr, ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  call void %i.b(ptr noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__write1(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %i.c, 1
  %i.e = icmp ult i64 %i.d, 65
  br i1 %i.e, label %stbiw__write_flush.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.f(ptr noundef %i.h, ptr noundef nonnull %i.i, i32 noundef %i.b) #25, !inline_history !20
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 0, %bb.b ], [ %i.b, %bb.a ]    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = add nsw i32 %i.j, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !19
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  store i8 %1, ptr %i.n, align 1, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__write3(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %i.c, 3
  %i.e = icmp ult i64 %i.d, 65
  br i1 %i.e, label %stbiw__write_flush.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.f(ptr noundef %i.h, ptr noundef nonnull %i.i, i32 noundef %i.b) #25, !inline_history !20
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 0, %bb.b ], [ %i.b, %bb.a ]    ; 2 uses
  %i.k = add nsw i32 %i.j, 3
  store i32 %i.k, ptr %i.a, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m ; 3 uses
  store i8 %1, ptr %i.n, align 1, !tbaa !17
  %i.o = getelementptr i8, ptr %i.n, i64 1
  store i8 %2, ptr %i.o, align 1, !tbaa !17
  %i.p = getelementptr i8, ptr %i.n, i64 2
  store i8 %3, ptr %i.p, align 1, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbiw__write_pixel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr i8, ptr %5, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = add nsw i64 %i.i, 1
  %i.k = icmp ult i64 %i.j, 65
  br i1 %i.k, label %stbiw__write1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.l(ptr noundef %i.n, ptr noundef nonnull %i.o, i32 noundef %i.h) #25, !inline_history !21
  br label %stbiw__write1.exit

stbiw__write1.exit:                               ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = add nsw i32 %i.p, 1
  store i32 %i.r, ptr %i.g, align 8, !tbaa !19
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %i.s
  store i8 %i.f, ptr %i.t, align 1, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %stbiw__write1.exit, %bb.a
  switch i32 %2, label %bb.n [
    i32 2, label %bb.e
    i32 1, label %bb.e
    i32 4, label %bb.j
    i32 3, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not33 = icmp eq i32 %4, 0
  %i.u = load i8, ptr %5, align 1, !tbaa !17      ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !19   ; 5 uses
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i64 %i.x, 3
  %i.z = icmp ult i64 %i.y, 65
  br i1 %i.z, label %stbiw__write3.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %0, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.aa(ptr noundef %i.ac, ptr noundef nonnull %i.ad, i32 noundef %i.w) #25, !inline_history !35
  br label %stbiw__write3.exit

stbiw__write3.exit:                               ; preds = %bb.f, %bb.g
  %i.ae = phi i32 [ 0, %bb.g ], [ %i.w, %bb.f ]   ; 2 uses
  %i.af = add nsw i32 %i.ae, 3
  store i32 %i.af, ptr %i.v, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah ; 3 uses
  store i8 %i.u, ptr %i.ai, align 1, !tbaa !17
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  store i8 %i.u, ptr %i.aj, align 1, !tbaa !17
  %i.ak = getelementptr i8, ptr %i.ai, i64 2
  store i8 %i.u, ptr %i.ak, align 1, !tbaa !17
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.al = add nsw i64 %i.x, 1
  %i.am = icmp ult i64 %i.al, 65
  br i1 %i.am, label %stbiw__write1.exit34, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %0, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.an(ptr noundef %i.ap, ptr noundef nonnull %i.aq, i32 noundef %i.w) #25, !inline_history !21
  br label %stbiw__write1.exit34

stbiw__write1.exit34:                             ; preds = %bb.h, %bb.i
  %i.ar = phi i32 [ 0, %bb.i ], [ %i.w, %bb.h ]   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = add nsw i32 %i.ar, 1
  store i32 %i.at, ptr %i.v, align 8, !tbaa !19
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  store i8 %i.u, ptr %i.av, align 1, !tbaa !17
  br label %bb.n

bb.j:                                             ; preds = %bb.d
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %6 = zext i8 %i.ax to i32                       ; 3 uses
  %i.ay = load i8, ptr %5, align 1, !tbaa !17
  %i.az = xor i8 %i.ay, -1
  %.neg46 = zext i8 %i.az to i32
  %.neg47 = mul nuw nsw i32 %.neg46, %6
  %.lhs.trunc = trunc nuw i32 %.neg47 to i16
  %i.ba = udiv i16 %.lhs.trunc, 255
  %.zext = trunc i16 %i.ba to i8
  %i.bb = xor i8 %.zext, -1
  store i8 %i.bb, ptr %i.a, align 1, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 1
  %7 = load i8, ptr %i.bc, align 1, !tbaa !17
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, %6
  %.lhs.trunc40 = trunc nuw i32 %9 to i16
  %10 = udiv i16 %.lhs.trunc40, 255
  %11 = trunc i16 %10 to i8                       ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !17
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !17
  %15 = xor i8 %14, -1
  %.neg = zext i8 %15 to i32
  %.neg48 = mul nuw nsw i32 %.neg, %6
  %.lhs.trunc44 = trunc nuw i32 %.neg48 to i16
  %16 = udiv i16 %.lhs.trunc44, 255
  %.zext45 = trunc i16 %16 to i8
  %i.bd = xor i8 %.zext45, -1
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !17
  %i.bf = sub nsw i32 1, %1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  %i.bj = sext i32 %1 to i64
  %i.bk = getelementptr i8, ptr %i.a, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !19 ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = add nsw i64 %i.bp, 3
  %i.br = icmp ult i64 %i.bq, 65
  br i1 %i.br, label %.thread, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.bs = load ptr, ptr %0, align 8, !tbaa !15
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.bs(ptr noundef %i.bu, ptr noundef nonnull %i.bv, i32 noundef %i.bo) #25, !inline_history !35
  br label %.thread

.thread:                                          ; preds = %bb.k, %.preheader
  %i.bw = phi i32 [ 0, %bb.k ], [ %i.bo, %.preheader ] ; 2 uses
  %i.bx = add nsw i32 %i.bw, 3
  store i32 %i.bx, ptr %i.bn, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = sext i32 %i.bw to i64
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 %i.bz ; 3 uses
  store i8 %i.bi, ptr %i.ca, align 1, !tbaa !17
  %i.cb = getelementptr i8, ptr %i.ca, i64 1
  store i8 %11, ptr %i.cb, align 1, !tbaa !17
  %i.cc = getelementptr i8, ptr %i.ca, i64 2
  store i8 %i.bm, ptr %i.cc, align 1, !tbaa !17
  br label %bb.q

bb.l:                                             ; preds = %bb.j, %bb.d
  %i.cd = sub nsw i32 1, %1
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %5, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !17
  %i.cj = sext i32 %1 to i64
  %i.ck = getelementptr i8, ptr %5, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !19 ; 3 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = add nsw i64 %i.cp, 3
  %i.cr = icmp ult i64 %i.cq, 65
  br i1 %i.cr, label %stbiw__write3.exit36, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = load ptr, ptr %0, align 8, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.cs(ptr noundef %i.cu, ptr noundef nonnull %i.cv, i32 noundef %i.co) #25, !inline_history !35
  br label %stbiw__write3.exit36

stbiw__write3.exit36:                             ; preds = %bb.l, %bb.m
  %i.cw = phi i32 [ 0, %bb.m ], [ %i.co, %bb.l ]  ; 2 uses
  %i.cx = add nsw i32 %i.cw, 3
  store i32 %i.cx, ptr %i.cn, align 8, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = sext i32 %i.cw to i64
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 %i.cz ; 3 uses
  store i8 %i.cg, ptr %i.da, align 1, !tbaa !17
  %i.db = getelementptr i8, ptr %i.da, i64 1
  store i8 %i.ci, ptr %i.db, align 1, !tbaa !17
  %i.dc = getelementptr i8, ptr %i.da, i64 2
  store i8 %i.cm, ptr %i.dc, align 1, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %stbiw__write3.exit, %stbiw__write1.exit34, %stbiw__write3.exit36, %bb.d
  %i.dd = icmp sgt i32 %3, 0
  br i1 %i.dd, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.de = sext i32 %2 to i64
  %i.df = getelementptr i8, ptr %5, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 -1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !19 ; 3 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = add nsw i64 %i.dk, 1
  %i.dm = icmp ult i64 %i.dl, 65
  br i1 %i.dm, label %stbiw__write1.exit37, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = load ptr, ptr %0, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.dn(ptr noundef %i.dp, ptr noundef nonnull %i.dq, i32 noundef %i.dj) #25, !inline_history !21
  br label %stbiw__write1.exit37

stbiw__write1.exit37:                             ; preds = %bb.o, %bb.p
  %i.dr = phi i32 [ 0, %bb.p ], [ %i.dj, %bb.o ]  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dt = add nsw i32 %i.dr, 1
  store i32 %i.dt, ptr %i.di, align 8, !tbaa !19
  %i.du = sext i32 %i.dr to i64
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 %i.du
  store i8 %i.dh, ptr %i.dv, align 1, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %.thread, %stbiw__write1.exit37, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define void @stbiw__write_pixels(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.b = icmp slt i32 %4, 1
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !12
  %.not = icmp eq i32 %i.c, 0
  %i.d = sub nsw i32 0, %2
  %spec.select = select i1 %.not, i32 %2, i32 %i.d ; 3 uses
  %i.e = icmp slt i32 %spec.select, 0             ; 2 uses
  %i.f = add nsw i32 %4, -1
  %.027 = select i1 %i.e, i32 %i.f, i32 0         ; 2 uses
  %.026 = select i1 %i.e, i32 -1, i32 %4          ; 2 uses
  %i.g = icmp sgt i32 %3, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.g, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %bb.b
  %i.k = sext i32 %5 to i64
  %i.l = zext nneg i32 %.027 to i64
  %i.m = sext i32 %spec.select to i64
  %i.n = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %stbiw__write_flush.exit.us
  %indvars.iv36 = phi i64 [ %i.l, %.preheader.us.preheader ], [ %indvars.iv.next37, %stbiw__write_flush.exit.us ] ; 2 uses
  %i.o = mul nsw i64 %indvars.iv36, %i.n
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.p = add nsw i64 %indvars.iv, %i.o
  %i.q = mul nsw i64 %i.p, %i.k
  %i.r = getelementptr inbounds i8, ptr %6, i64 %i.q
  call void @stbiw__write_pixel(ptr noundef %0, i32 noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %i.r)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !36

bb.d:                                             ; preds = %._crit_edge.us
  %i.s = load ptr, ptr %0, align 8, !tbaa !15
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !16
  call void %i.s(ptr noundef %i.t, ptr noundef nonnull %i.j, i32 noundef %i.x) #25, !inline_history !20
  store i32 0, ptr %i.h, align 8, !tbaa !19
  br label %stbiw__write_flush.exit.us

stbiw__write_flush.exit.us:                       ; preds = %bb.d, %._crit_edge.us
  %i.u = load ptr, ptr %0, align 8, !tbaa !15
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !16
  call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef %8) #25
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, %i.m ; 2 uses
  %i.w = trunc nsw i64 %indvars.iv.next37 to i32
  %.not31.us = icmp eq i32 %.026, %i.w
  br i1 %.not31.us, label %.loopexit, label %.preheader.us, !llvm.loop !37

._crit_edge.us:                                   ; preds = %bb.c
  %i.x = load i32, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not.i.us = icmp eq i32 %i.x, 0
  br i1 %.not.i.us, label %stbiw__write_flush.exit.us, label %bb.d

.preheader:                                       ; preds = %bb.b, %stbiw__write_flush.exit
  %.133 = phi i32 [ %i.ad, %stbiw__write_flush.exit ], [ %.027, %bb.b ]
  %i.y = load i32, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %stbiw__write_flush.exit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.z = load ptr, ptr %0, align 8, !tbaa !15
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !16
  call void %i.z(ptr noundef %i.aa, ptr noundef nonnull %i.j, i32 noundef %i.y) #25, !inline_history !20
  store i32 0, ptr %i.h, align 8, !tbaa !19
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %.preheader, %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !15
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !16
  call void %i.ab(ptr noundef %i.ac, ptr noundef nonnull %i.a, i32 noundef %8) #25
  %i.ad = add nsw i32 %.133, %spec.select         ; 2 uses
  %.not31 = icmp eq i32 %i.ad, %.026
  br i1 %.not31, label %.loopexit, label %.preheader, !llvm.loop !37

.loopexit:                                        ; preds = %stbiw__write_flush.exit, %stbiw__write_flush.exit.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbiw__outfile(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(none) %10, ...) local_unnamed_addr #5 {
bb.a:
  %11 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = or i32 %4, %3
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.va_start.p0(ptr nonnull %11)
  call void @stbiw__writefv(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %11)
  call void @llvm.va_end.p0(ptr nonnull %11)
  call void @stbiw__write_pixels(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
end_hunk_0
