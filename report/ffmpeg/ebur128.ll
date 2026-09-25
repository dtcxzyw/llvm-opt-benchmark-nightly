Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ebur128?download=true
inline.NumInlined: 20
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 17
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
  %i.p = icmp samesign ult i64 %i.o, %i.e
  br i1 %i.p, label %.lr.ph.i, label %.loopexit, !llvm.loop !49

.loopexit.sink.split.i:                           ; preds = %bb.f, %bb.e
  %.sink41.i = phi i64 [ 4, %bb.e ], [ 8, %bb.f ]
  %.sink.i = phi i32 [ 2, %bb.e ], [ 3, %bb.f ]
  %.sink39.i = phi i64 [ 8, %bb.e ], [ 12, %bb.f ]
  %.sink38.i = phi i64 [ 12, %bb.e ], [ 16, %bb.f ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink41.i
  store i32 %.sink.i, ptr %i.q, align 4, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink39.i
  store i32 4, ptr %i.r, align 4, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink38.i
  store i32 5, ptr %i.s, align 4, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.d, %.loopexit.sink.split.i
  %i.t = tail call noalias ptr @av_calloc(i64 noundef %i.e, i64 noundef 8) #12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !29
  %.not62 = icmp eq ptr %i.t, null
  br i1 %.not62, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.v, align 8, !tbaa !50
  %i.w = add i64 %1, 5
  %i.x = udiv i64 %i.w, 10                        ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !30
  store i32 %3, ptr %i.a, align 8, !tbaa !31
  %i.z = and i32 %3, 3
  %i.aa = icmp eq i32 %i.z, 3
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ab = tail call i64 @llvm.umax.i64(i64 %2, i64 3000)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ac = and i32 %3, 1
  %.not63 = icmp eq i32 %i.ac, 0
  br i1 %.not63, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = tail call i64 @llvm.umax.i64(i64 %2, i64 400)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sink = phi i64 [ %i.ad, %bb.r ], [ %i.ab, %bb.p ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i64 %.sink, ptr %i.ae, align 8, !tbaa !51
  %i.af = mul i64 %.sink, %1
  %i.ag = udiv i64 %i.af, 1000                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = urem i64 %i.ag, %i.x                    ; 2 uses
  %.not64 = icmp eq i64 %i.ai, 0
  %i.aj = sub nsw i64 %i.x, %i.ai
  %i.ak = select i1 %.not64, i64 0, i64 %i.aj
  %storemerge = add nsw i64 %i.ag, %i.ak          ; 2 uses
  store i64 %storemerge, ptr %i.ah, align 8, !tbaa !32
  %i.al = shl nuw nsw i64 %i.e, 3
  %i.am = tail call noalias ptr @av_calloc(i64 noundef %storemerge, i64 noundef %i.al) #12 ; 2 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !33
  %.not65 = icmp eq ptr %i.am, null
  br i1 %.not65, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = uitofp nsz i64 %1 to double
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store double 1.000000e+00, ptr %i.as, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.au = insertelement <2 x double> poison, double %i.an, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv nsz <2 x double> <double f0x405DF39763FA798B, double f0x40B4A4141DBAF1BA>, %i.av
  %i.ax = tail call nsz <2 x double> @llvm.tan.v2f64(<2 x double> %i.aw) ; 10 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 1 ; 2 uses
  %i.az = fdiv nsz <2 x double> %i.ax, <double f0x3FE002ADD8D38A3C, double f0x3FE6A12DF668776C> ; 3 uses
  %i.ba = fadd nsz <2 x double> %i.az, splat (double 1.000000e+00)
  %i.bb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ax, <2 x double> %i.ba) ; 4 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 1
  %i.bd = extractelement <2 x double> %i.az, i64 1
  %i.be = fsub nsz double 1.000000e+00, %i.bd
  %i.bf = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.be, i64 1
  %i.bg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ax, <2 x double> %i.bf)
  %i.bh = fmul nsz <2 x double> %i.bg, <double 2.000000e+00, double 1.000000e+00>
  %i.bi = fdiv nsz <2 x double> %i.bh, %i.bb      ; 3 uses
  %4 = extractelement <2 x double> %i.az, i64 0
  %i.bj = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bj, <2 x double> <double f0xBFF95B9B16BF11C6, double -1.000000e+00>) ; 2 uses
  %5 = shufflevector <2 x double> %i.ax, <2 x double> %i.bk, <2 x i32> <i32 1, i32 2>
  %i.bl = fmul nsz <2 x double> %5, <double f0x3FF423B88EE23B99, double 2.000000e+00> ; 2 uses
  %i.bm = extractelement <2 x double> %i.bk, i64 1
  %6 = fmul nsz double %i.bm, 2.000000e+00
  %i.bn = extractelement <2 x double> %i.bl, i64 0
  %7 = fdiv nsz double %i.bn, f0x3FE6A12DF668776C ; 2 uses
  %8 = fsub nsz double 1.000000e+00, %4
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %i.bo = insertelement <2 x double> %9, double %7, i64 1
  %10 = fadd nsz <2 x double> %i.bo, <double -0.000000e+00, double f0x3FF95B9B16BF11C6>
  %i.bp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ax, <2 x double> %10) ; 2 uses
  %11 = insertelement <2 x double> %i.bp, double %6, i64 1
  %i.bq = fdiv nsz <2 x double> %11, %i.bb        ; 3 uses
  %12 = extractelement <2 x double> %i.bp, i64 1
  %13 = fdiv nsz double %12, %i.bc                ; 3 uses
  %14 = fsub nsz double f0x3FF95B9B16BF11C6, %7
  %15 = tail call nsz double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %14)
  %i.br = insertelement <2 x double> %i.bl, double %15, i64 0
  %i.bs = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fdiv nsz <2 x double> %i.br, %i.bs      ; 4 uses
  store double %13, ptr %i.ao, align 8, !tbaa !35
  %i.bu = extractelement <2 x double> %i.bt, i64 1 ; 2 uses
  %i.bv = tail call nsz double @llvm.fmuladd.f64(double %13, double -2.000000e+00, double %i.bu)
  store double %i.bv, ptr %i.ap, align 8, !tbaa !35
  %i.bw = fmul nsz double %i.bu, 2.000000e+00
  %16 = fsub nsz double %13, %i.bw
  %17 = extractelement <2 x double> %i.bt, i64 0  ; 2 uses
  %18 = fmul nsz double %17, 2.000000e+00
  %i.bx = insertelement <2 x double> poison, double %16, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %18, i64 1 ; 2 uses
  %i.bz = fadd nsz <2 x double> %i.bt, %i.by
  %i.ca = fsub nsz <2 x double> %i.bt, %i.by
  %i.cb = shufflevector <2 x double> %i.bz, <2 x double> %i.ca, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cb, ptr %i.aq, align 8, !tbaa !35
  store double %17, ptr %i.ar, align 8, !tbaa !35
  %i.cc = extractelement <2 x double> %i.bi, i64 0 ; 2 uses
  %i.cd = extractelement <2 x double> %i.bq, i64 1 ; 2 uses
  %i.ce = fmul nsz double %i.cd, %i.cc
  %i.cf = extractelement <2 x double> %i.bq, i64 0 ; 3 uses
  %i.cg = fadd nsz double %i.cf, %i.ce
  %i.ch = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x double> %i.ch, double %i.cg, i64 1
  %i.cj = fadd nsz <2 x double> %i.bi, %i.ci
  store <2 x double> %i.cj, ptr %i.at, align 8, !tbaa !35
  %i.ck = extractelement <2 x double> %i.bi, i64 1 ; 2 uses
  %i.cl = fmul nsz double %i.ck, %i.cc
  %i.cm = tail call nsz double @llvm.fmuladd.f64(double %i.cd, double %i.cf, double %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store double %i.cm, ptr %i.cn, align 8, !tbaa !35
  %i.co = fmul nsz double %i.ck, %i.cf
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store double %i.co, ptr %i.cp, align 8, !tbaa !35
  %i.cq = getelementptr i8, ptr %i.b, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.cq, i8 0, i64 200, i1 false), !tbaa !35
  %i.cr = tail call noalias ptr @av_mallocz(i64 noundef 8000) #12 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !36
  %.not66 = icmp eq ptr %i.cr, null
  br i1 %.not66, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = tail call noalias ptr @av_mallocz(i64 noundef 8000) #12 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !37
  %.not67 = icmp eq ptr %i.ct, null
  br i1 %.not67, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store i64 0, ptr %i.cv, align 8, !tbaa !38
  %i.cw = load i64, ptr %i.y, align 8, !tbaa !30
  %i.cx = shl i64 %i.cw, 2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !39
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.cz, align 8, !tbaa !40
  %i.da = tail call i32 @pthread_once(ptr noundef nonnull @histogram_init, ptr noundef nonnull @init_histogram) #12
  %.not68 = icmp eq i32 %i.da, 0
  br i1 %.not68, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = tail call ptr @av_malloc_array(i64 noundef %i.e, i64 noundef 8) #12 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !41
  %.not69 = icmp eq ptr %i.db, null
  br i1 %.not69, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !37
  tail call void @av_free(ptr noundef %i.dd) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %i.de = load ptr, ptr %i.cs, align 8, !tbaa !36
  tail call void @av_free(ptr noundef %i.de) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %bb.y
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !33
  tail call void @av_free(ptr noundef %i.df) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.s, %bb.q, %bb.z
  %i.dg = load ptr, ptr %i.u, align 8, !tbaa !29
  tail call void @av_free(ptr noundef %i.dg) #12
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %bb.aa
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !26
  tail call void @av_free(ptr noundef %i.dh) #12
  br label %ebur128_init_channel_map.exit

ebur128_init_channel_map.exit:                    ; preds = %bb.c, %bb.ab
  tail call void @av_free(ptr noundef nonnull %i.b) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.b, %ebur128_init_channel_map.exit
  tail call void @av_free(ptr noundef nonnull %i.a) #12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.a, %bb.w
  %.0 = phi ptr [ %i.a, %bb.w ], [ null, %bb.a ], [ null, %bb.ac ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @init_histogram() #3 {
vector.ph:
  store double f0x3E7F791EC6E1D5B7, ptr @histogram_energy_boundaries, align 16, !tbaa !35
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %i.a = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.b = fdiv nsz <2 x double> %i.a, splat (double 1.000000e+01)
  %i.c = fadd nsz <2 x double> %i.b, splat (double -6.995000e+01)
  %i.d = fadd nsz <2 x double> %i.c, splat (double 6.910000e-01)
  %i.e = fdiv nsz <2 x double> %i.d, splat (double 1.000000e+01)
  %i.f = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> splat (double 1.000000e+01), <2 x double> %i.e)
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @histogram_energies, i64 %index
  store <2 x double> %i.f, ptr %i.g, align 16, !tbaa !35
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.h = uitofp nneg <2 x i32> %vec.ind.next to <2 x double>
  %i.i = fdiv nsz <2 x double> %i.h, splat (double 1.000000e+01)
  %i.j = fadd nsz <2 x double> %i.i, splat (double -6.995000e+01)
  %i.k = fadd nsz <2 x double> %i.j, splat (double 6.910000e-01)
  %i.l = fdiv nsz <2 x double> %i.k, splat (double 1.000000e+01)
  %i.m = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> splat (double 1.000000e+01), <2 x double> %i.l)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @histogram_energies, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x double> %i.m, ptr %i.o, align 16, !tbaa !35
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add <2 x i32> %vec.ind, splat (i32 4)
  %i.p = icmp eq i64 %index.next.1, 1000
  br i1 %i.p, label %vector.body16, label %vector.body, !llvm.loop !52

vector.body16:                                    ; preds = %vector.body, %vector.body16
  %index17 = phi i64 [ %index.next19.1, %vector.body16 ], [ 0, %vector.body ] ; 3 uses
  %vec.ind18 = phi <2 x i32> [ %vec.ind.next20.1, %vector.body16 ], [ <i32 1, i32 2>, %vector.body ] ; 3 uses
  %i.q = uitofp nneg <2 x i32> %vec.ind18 to <2 x double>
  %i.r = fdiv nsz <2 x double> %i.q, splat (double 1.000000e+01)
  %i.s = fadd nsz <2 x double> %i.r, splat (double -7.000000e+01)
  %i.t = fadd nsz <2 x double> %i.s, splat (double 6.910000e-01)
  %i.u = fdiv nsz <2 x double> %i.t, splat (double 1.000000e+01)
  %i.v = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> splat (double 1.000000e+01), <2 x double> %i.u)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @histogram_energy_boundaries, i64 %index17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <2 x double> %i.v, ptr %i.x, align 8, !tbaa !35
  %vec.ind.next20 = add <2 x i32> %vec.ind18, splat (i32 2)
  %i.y = uitofp nneg <2 x i32> %vec.ind.next20 to <2 x double>
  %i.z = fdiv nsz <2 x double> %i.y, splat (double 1.000000e+01)
  %i.aa = fadd nsz <2 x double> %i.z, splat (double -7.000000e+01)
  %i.ab = fadd nsz <2 x double> %i.aa, splat (double 6.910000e-01)
  %i.ac = fdiv nsz <2 x double> %i.ab, splat (double 1.000000e+01)
  %i.ad = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> splat (double 1.000000e+01), <2 x double> %i.ac)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @histogram_energy_boundaries, i64 %index17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store <2 x double> %i.ad, ptr %i.af, align 8, !tbaa !35
  %index.next19.1 = add nuw nsw i64 %index17, 4   ; 2 uses
  %vec.ind.next20.1 = add <2 x i32> %vec.ind18, splat (i32 4)
  %i.ag = icmp eq i64 %index.next19.1, 1000
  br i1 %i.ag, label %middle.block21, label %vector.body16, !llvm.loop !53

middle.block21:                                   ; preds = %vector.body16
  ret void
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @av_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ff_ebur128_destroy(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  tail call void @av_free(ptr noundef %i.e) #12
  %i.f = load ptr, ptr %0, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  tail call void @av_free(ptr noundef %i.j) #12
  %i.k = load ptr, ptr %0, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  tail call void @av_free(ptr noundef %i.n) #12
  %i.o = load ptr, ptr %0, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  tail call void @av_free(ptr noundef %i.s) #12
  %i.t = load ptr, ptr %0, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
end_hunk_0
