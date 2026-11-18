Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ebur128?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@histogram_init = internal global i32 0, align 4
@histogram_energies = internal unnamed_addr global [1000 x double] zeroinitializer, align 16
@histogram_energy_boundaries = internal unnamed_addr global [1001 x double] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define ptr @ff_ebur128_init(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @av_malloc(i64 noundef 24) #12 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @av_malloc(i64 noundef 376) #12 ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !19
  %.not60 = icmp eq ptr %i.b, null
  br i1 %.not60, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.d, align 4, !tbaa !20
  %i.e = zext i32 %0 to i64                       ; 5 uses
  %i.f = tail call ptr @av_malloc_array(i64 noundef %i.e, i64 noundef 4) #12 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %ebur128_init_channel_map.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %0, label %.lr.ph.preheader.i [
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 0, label %.loopexit
  ]

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.f, align 4, !tbaa !27
  br label %.loopexit.sink.split.i

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %i.f, align 4, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 2, ptr %i.m, align 4, !tbaa !27
  br label %.loopexit.sink.split.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.035.i = phi i64 [ %i.o, %bb.n ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  switch i64 %.035.i, label %bb.m [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
    i64 5, label %bb.l
  ]

bb.g:                                             ; preds = %.lr.ph.i
  store i32 1, ptr %i.f, align 4, !tbaa !27
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph.i
  store i32 2, ptr %i.l, align 4, !tbaa !27
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph.i
  store i32 3, ptr %i.k, align 4, !tbaa !27
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph.i
  store i32 0, ptr %i.j, align 4, !tbaa !27
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  store i32 4, ptr %i.i, align 4, !tbaa !27
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.i
  store i32 5, ptr %i.h, align 4, !tbaa !27
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.035.i
  store i32 0, ptr %i.n, align 4, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %i.o = add nuw nsw i64 %.035.i, 1               ; 2 uses
  %4 = icmp samesign ult i64 %i.o, %i.e
  br i1 %4, label %.lr.ph.i, label %.loopexit, !llvm.loop !49

.loopexit.sink.split.i:                           ; preds = %bb.f, %bb.e
  %.sink41.i = phi i64 [ 4, %bb.e ], [ 8, %bb.f ]
  %.sink.i = phi i32 [ 2, %bb.e ], [ 3, %bb.f ]
  %.sink39.i = phi i64 [ 8, %bb.e ], [ 12, %bb.f ]
  %.sink38.i = phi i64 [ 12, %bb.e ], [ 16, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink41.i
  store i32 %.sink.i, ptr %i.p, align 4, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink39.i
  store i32 4, ptr %i.q, align 4, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink38.i
  store i32 5, ptr %i.r, align 4, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.d, %.loopexit.sink.split.i
  %i.s = tail call noalias ptr @av_calloc(i64 noundef %i.e, i64 noundef 8) #12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !29
  %.not62 = icmp eq ptr %i.s, null
  br i1 %.not62, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.u, align 8, !tbaa !50
  %i.v = add i64 %1, 5
  %i.w = udiv i64 %i.v, 10                        ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !30
  store i32 %3, ptr %i.a, align 8, !tbaa !31
  %i.y = and i32 %3, 3
  %i.z = icmp eq i32 %i.y, 3
  br i1 %i.z, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aa = tail call i64 @llvm.umax.i64(i64 %2, i64 3000)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ab = and i32 %3, 1
  %.not63 = icmp eq i32 %i.ab, 0
  br i1 %.not63, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = tail call i64 @llvm.umax.i64(i64 %2, i64 400)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sink = phi i64 [ %i.ac, %bb.r ], [ %i.aa, %bb.p ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i64 %.sink, ptr %i.ad, align 8, !tbaa !51
  %i.ae = mul i64 %.sink, %1
  %i.af = udiv i64 %i.ae, 1000                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = urem i64 %i.af, %i.w                    ; 2 uses
  %.not64 = icmp eq i64 %i.ah, 0
  %i.ai = sub nsw i64 %i.w, %i.ah
  %i.aj = select i1 %.not64, i64 0, i64 %i.ai
  %storemerge = add nsw i64 %i.af, %i.aj          ; 2 uses
  store i64 %storemerge, ptr %i.ag, align 8, !tbaa !32
  %i.ak = shl nuw nsw i64 %i.e, 3
  %i.al = tail call noalias ptr @av_calloc(i64 noundef %storemerge, i64 noundef %i.ak) #12 ; 2 uses
  store ptr %i.al, ptr %i.b, align 8, !tbaa !33
  %.not65 = icmp eq ptr %i.al, null
  br i1 %.not65, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = uitofp nsz i64 %1 to double
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store double 1.000000e+00, ptr %i.ar, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.at = insertelement <2 x double> poison, double %i.am, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fdiv nsz <2 x double> <double f0x405DF39763FA798B, double f0x40B4A4141DBAF1BA>, %i.au
  %i.aw = tail call nsz <2 x double> @llvm.tan.v2f64(<2 x double> %i.av) ; 10 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1 ; 2 uses
  %i.ay = fdiv nsz <2 x double> %i.aw, <double f0x3FE002ADD8D38A3C, double f0x3FE6A12DF668776C> ; 3 uses
  %i.az = fadd nsz <2 x double> %i.ay, splat (double 1.000000e+00)
  %i.ba = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.aw, <2 x double> %i.az) ; 4 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 1
  %i.bc = extractelement <2 x double> %i.ay, i64 1
  %i.bd = fsub nsz double 1.000000e+00, %i.bc
  %i.be = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.bd, i64 1
  %i.bf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.aw, <2 x double> %i.be)
  %i.bg = fmul nsz <2 x double> %i.bf, <double 2.000000e+00, double 1.000000e+00>
  %i.bh = fdiv nsz <2 x double> %i.bg, %i.ba      ; 3 uses
  %i.bi = extractelement <2 x double> %i.ay, i64 0
  %i.bj = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bj, <2 x double> <double f0xBFF95B9B16BF11C6, double -1.000000e+00>) ; 2 uses
  %i.bl = shufflevector <2 x double> %i.aw, <2 x double> %i.bk, <2 x i32> <i32 1, i32 3>
  %i.bm = fmul nsz <2 x double> %i.bl, <double f0x3FF423B88EE23B99, double 2.000000e+00> ; 2 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0
  %i.bo = fdiv nsz double %i.bn, f0x3FE6A12DF668776C ; 2 uses
  %i.bp = fsub nsz double 1.000000e+00, %i.bi
  %i.bq = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bo, i64 1
  %i.bs = fadd nsz <2 x double> %i.br, <double -0.000000e+00, double f0x3FF95B9B16BF11C6>
  %i.bt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.aw, <2 x double> %i.bs) ; 2 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.bv = fdiv nsz <2 x double> %i.bu, %i.ba      ; 3 uses
  %i.bw = extractelement <2 x double> %i.bt, i64 1
  %i.bx = fdiv nsz double %i.bw, %i.bb            ; 3 uses
  %i.by = extractelement <2 x double> %i.bk, i64 0
  %i.bz = fmul nsz double %i.by, 2.000000e+00
  %i.ca = fsub nsz double f0x3FF95B9B16BF11C6, %i.bo
  %i.cb = tail call nsz double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.ca)
  %i.cc = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.bz, i64 1
  %i.ce = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fdiv nsz <2 x double> %i.cd, %i.ce      ; 4 uses
  store double %i.bx, ptr %i.an, align 8, !tbaa !35
  %i.cg = extractelement <2 x double> %i.cf, i64 1 ; 2 uses
  %i.ch = tail call nsz double @llvm.fmuladd.f64(double %i.bx, double -2.000000e+00, double %i.cg)
  store double %i.ch, ptr %i.ao, align 8, !tbaa !35
  %i.ci = fmul nsz double %i.cg, 2.000000e+00
  %i.cj = fsub nsz double %i.bx, %i.ci
  %i.ck = extractelement <2 x double> %i.cf, i64 0 ; 2 uses
  %i.cl = fmul nsz double %i.ck, 2.000000e+00
  %i.cm = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cl, i64 1 ; 2 uses
  %i.co = fadd nsz <2 x double> %i.cf, %i.cn
  %i.cp = fsub nsz <2 x double> %i.cf, %i.cn
  %i.cq = shufflevector <2 x double> %i.co, <2 x double> %i.cp, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cq, ptr %i.ap, align 8, !tbaa !35
  store double %i.ck, ptr %i.aq, align 8, !tbaa !35
  %i.cr = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.cs = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  %i.ct = fmul nsz double %i.cs, %i.cr
  %i.cu = extractelement <2 x double> %i.bv, i64 0 ; 3 uses
  %i.cv = fadd nsz double %i.cu, %i.ct
  %i.cw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cx = insertelement <2 x double> %i.cw, double %i.cv, i64 1
  %i.cy = fadd nsz <2 x double> %i.bh, %i.cx
  store <2 x double> %i.cy, ptr %i.as, align 8, !tbaa !35
  %i.cz = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.da = fmul nsz double %i.cz, %i.cr
  %i.db = tail call nsz double @llvm.fmuladd.f64(double %i.cs, double %i.cu, double %i.da)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store double %i.db, ptr %i.dc, align 8, !tbaa !35
  %i.dd = fmul nsz double %i.cz, %i.cu
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store double %i.dd, ptr %i.de, align 8, !tbaa !35
  %i.df = getelementptr i8, ptr %i.b, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.df, i8 0, i64 200, i1 false), !tbaa !35
  %i.dg = tail call noalias ptr @av_mallocz(i64 noundef 8000) #12 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 2 uses
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !36
  %.not66 = icmp eq ptr %i.dg, null
  br i1 %.not66, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = tail call noalias ptr @av_mallocz(i64 noundef 8000) #12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !37
  %.not67 = icmp eq ptr %i.di, null
  br i1 %.not67, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store i64 0, ptr %i.dk, align 8, !tbaa !38
  %i.dl = load i64, ptr %i.x, align 8, !tbaa !30
  %i.dm = shl i64 %i.dl, 2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.do, align 8, !tbaa !40
  %i.dp = tail call i32 @pthread_once(ptr noundef nonnull @histogram_init, ptr noundef nonnull @init_histogram) #12
  %.not68 = icmp eq i32 %i.dp, 0
  br i1 %.not68, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dq = tail call ptr @av_malloc_array(i64 noundef %i.e, i64 noundef 8) #12 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !41
  %.not69 = icmp eq ptr %i.dq, null
  br i1 %.not69, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !37
  tail call void @av_free(ptr noundef %i.ds) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %i.dt = load ptr, ptr %i.dh, align 8, !tbaa !36
  tail call void @av_free(ptr noundef %i.dt) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %bb.y
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !33
  tail call void @av_free(ptr noundef %i.du) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.s, %bb.q, %bb.z
  %i.dv = load ptr, ptr %i.t, align 8, !tbaa !29
  tail call void @av_free(ptr noundef %i.dv) #12
  br label %bb.ab

end_hunk_0
